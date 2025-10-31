import json
import yaml
import argparse
from types import SimpleNamespace
import random
import datasets as ds
import utills as u
import ast
import re
import threading
import queue
import time
import openai
import os
import concurrent.futures  
import requests
from tqdm import tqdm
import logging
import pandas as pd
# import matplotlib.pyplot as plt
# import seaborn as sns

class Solutions:
    def __init__(self):
        pass     

    def prepareData(self, opts):
        sample_size = 30
        self.K = 3 ## number of generations per question
        self.final_dataset = []

        with open(opts.input_file, 'r') as f:
            for line in f:
                record = json.loads(line.strip())
                # if record["model"] == "deepseek_r1":
                self.final_dataset.append(record)
        # self.final_dataset = self.final_dataset[:10]

        print(f"Total data length to process: {len(self.final_dataset)}")

    def __processPrompts(self, data):

        solution_generation_prompt = """Answer the math question below. Please reason step-by-step and put your final answer within \\boxed{{}}.
        Question:
        {}"""

        

        prompts = []
        for row in data:
            for _ in range(self.K):
                prompt = solution_generation_prompt.format(row['problem'])
                prompts.append(prompt)
        
        return prompts

    def __sendSingleRequest(self, prompt, request_id):
        response, total_tokens, completion_tokens = u.getLocalModelResponse(prompt)
        return request_id, response, total_tokens, completion_tokens

    def getSolutions(self, opts):
        batch_size = 500
        max_workers = 128
        # temp_file = "data/may1625/temp_diffrating.jsonl"

        ## Initialize the temp file
        with open(opts.output_file, "w") as f:
            pass

        print(f"Starting the difficulty rating loop")
        pbar = tqdm(total=len(self.final_dataset) // batch_size +1, desc="Steps")
        idx = 0
        while idx < len(self.final_dataset):
            results = {}    
            futures_list = []
            total_total_tokens = []


            end = min(idx+batch_size, len(self.final_dataset))
            chunk = self.final_dataset[idx:end]
            prompts = self.__processPrompts(chunk)

            start_time = time.time()
            with concurrent.futures.ThreadPoolExecutor(max_workers=max_workers) as executor:
                # Submit all tasks to the executor
                for i, prompt in enumerate(prompts):
                    # Pass request_id for easier tracking
                    future = executor.submit(self.__sendSingleRequest, prompt, i)
                    futures_list.append(future)

                # Process results as they complete
                for future in concurrent.futures.as_completed(futures_list):
                    try:
                        # result() will raise an exception if the worker function raised one
                        req_id, response, total_tokens, completion_tokens = future.result()
                        results[req_id] = {'response':response, 'completion_tokens':completion_tokens}
                        total_total_tokens.append(total_tokens)
                                
                    except Exception as e:
                        # This catches exceptions *not* caught inside send_llm_request
                        # (though good practice is to catch them within the function)
                        print(f"Error retrieving result from future: {e}")
                        # Find which prompt this was associated with (if needed, more complex)

            end_time = time.time()
            total_duration = end_time - start_time     
            print(f"Throughput: {round(sum(total_total_tokens)/total_duration, 2)}")   

            ## store the results to temp folder
            with open(opts.output_file, "a") as f:
                for i in range(len(chunk)):                    
                    # solution = results[i]['response'].strip()
                    # diff_rating = u.processResponse(generated_text)           
                    chunk[i]["deepseek_r1_solution"] = results[i]['response'].strip()
                    
                    # chunk[i]["prompt"] = prompts[i]

                    json_string = json.dumps(chunk[i])
                    f.write(json_string + "\n")

            idx += batch_size
            pbar.update(1)

    def saveResults(self, opts):

        df = pd.read_json(opts.temp_file, lines=True)        
        # print(f"\n\n Columns in the temp file is : {df.columns} \n\n")
        df_agg = df.groupby(["id", "problem", "answer", "solution"], as_index=False).agg({"diff_rating":"mean", "k":"count", "acc":"max"})

        df.to_json("data/may1625/difffiltered_diffrated.jsonl", orient="records", lines=True) 
        df_agg.to_json("data/may1625/difffiltered_diffrated_agg.jsonl", orient="records", lines=True) 

        # Optional: set a style  
        sns.set(style="whitegrid")  
        
        # Create a new figure  
        plt.figure(figsize=(6, 8))  
        
        # Plot a vertical box plot of the 'diff_rating' column  
        sns.boxplot(y=df_agg["diff_rating"], color="skyblue")  
        
        # Add labels and title  
        plt.ylabel("Difference in Rating")  
        plt.title("Box Plot of diff_rating")  
        
        # Save the plot to disk  
        output_path = "data/may1625/figures/deepseek_diffratings.png"  
        plt.savefig(output_path, dpi=300, bbox_inches="tight")  
        
        # (Optional) Show the plot in an interactive session  
        # plt.show()  
        
        # Close the figure to free memory  
        plt.close()  
        
        print(f"Box plot saved to {output_path}") 

        return 

        # --- 2. Define custom colors for each seed ---  
        seed_palette = {  
            11: "#e31a1c",  # red  
            12: "#1f78b4",  # blue  
            41: "#33a02c"   # green  
        }  
        
        # --- 3. Plot violin plot with seed as hue ---  
        plt.figure(figsize=(12, 12))  
        ax = sns.violinplot(  
            data=df,  
            x="dataset",        # categorical x-axis (A, B, etc.)  
            y="diff_rating",  
            hue="seed",         # use seed for hue  
            palette=seed_palette,  
            split=False,        # set to True if you want split violins  
            inner="quartile"  
        )  
        
        # --- 4. Rotate x-axis labels by 45° ---  
        ax.set_xticklabels(ax.get_xticklabels(), rotation=45)  
        
        # --- 5. Labels, title, legend ---  
        ax.set_xlabel("Dataset")  
        ax.set_ylabel("diff_rating")  
        ax.set_title("Distribution of diff_rating by Dataset and Seed")  
        plt.legend(title="Seed", loc="upper right")  
        plt.savefig("data/may1625/figures/deepseek_diffratings.png")
        plt.savefig("data/may1625/figures/deepseek_diffratings.pdf")
        


        

def main(opts):
    s = Solutions()
    s.prepareData(opts)
    s.getSolutions(opts)
    # s.saveResults(opts)  # results are already saved


def getArguments():
    parser = argparse.ArgumentParser()
    parser.add_argument("--config", required=False, help="All arguments required should be in the config yaml config file")
    return parser.parse_args()


if __name__ == "__main__":
    # opts = getArguments()

    opts_dict = {
        "input_file": "data/multimodal/generated_cross_solutions.jsonl",
        "output_file": "data/multimodal/generated_cross_solutions_forothers_byr1.jsonl"
    }
    opts = SimpleNamespace(**opts_dict)

    main(opts)
