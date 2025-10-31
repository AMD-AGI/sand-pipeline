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
import matplotlib.pyplot as plt
import seaborn as sns
from openai import OpenAI
from transformers import AutoTokenizer
from operator import itemgetter



## Some helper functions

tokenizer = AutoTokenizer.from_pretrained("openai/gpt-oss-120b")

def getLLMResponse(prompt, temp=1.0, max_new_tokens=52_000):
    """
    code to invoke the deepseek r1 for answer1 ## 131_072  """    
    
    client = OpenAI(base_url=f"http://localhost:8080/v1", api_key="None", timeout=24 * 60 * 60)

    response = client.responses.create(
        model="openai/gpt-oss-120b",
        input=[
            {"role": "system", "content": "You are a helpful assistant. Respond to the following request without utilizing any tool calls."},
            {"role": "user", "content": prompt},
        ],
        reasoning = {"effort": "high"},
        temperature=1,
        max_output_tokens = max_new_tokens,
        tool_choice='none'
    )
    
    reasoning_responses = []
    for output in response.output:
        if hasattr(output, "text"):
            reasoning_responses.append(output.text)

    final_response = "\n\n".join(reasoning_responses)
    final_response = final_response + "\n</think>\n" + response.output_text
    completion_tokens = len(tokenizer(final_response)["input_ids"])

    return final_response, response.usage.total_tokens, completion_tokens #response.usage.completion_tokens


class DiffRating:
    def __init__(self):
        pass

    def prepareData(self, opts):

        self.final_dataset = []

        print(f"\n\n==> Processing AMD/SAND-Math \n\n")

        with open(opts.sandmath_path, 'r') as f:
            for line in f:
                record = json.loads(line.strip())
                if record["solution"] is None:
                    self.final_dataset.append(record)

        ## Orderign in the descending order of diffrating and takign the 4k quesitons
        # self.final_dataset = sorted(self.final_dataset, key=itemgetter('diff_rating'), reverse=True)
        # self.final_dataset = self.final_dataset[:4000]

        
        # self.final_dataset = self.final_dataset[:2]
        print(f"Total data found: {len(self.final_dataset)}")
        

          



    def __processPrompts(self, data):

        solutiongeneration_prompt = """Question:
        {}

        Please reason step by step, and put your final answer within \\boxed{{}}.
        """       
        K = 1

        prompts = []

        for row in data:
            for _ in range(K):
                prompt = solutiongeneration_prompt.format(row["question"])
                prompts.append(prompt)

        return prompts

    def __sendSingleRequest(self, prompt, request_id):
        response, total_tokens, completion_tokens = getLLMResponse(prompt)
        return request_id, response, total_tokens, completion_tokens

    def rateDifficulty(self, opts):
        batch_size = 4096
        max_workers = 1024
        # temp_file = "data/may1625/temp_diffrating.jsonl"

        ## Initialize the temp file
        with open(opts.temp_file, "w") as f:
            pass

        # print(f"Starting the difficulty hiking loop loop")
        pbar = tqdm(total=len(self.final_dataset) // batch_size+1, desc="Steps")
        idx = 0
        while idx < len(self.final_dataset):
            results = {}    
            futures_list = []
            total_completion_tokens = []


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
                        total_completion_tokens.append(completion_tokens)
                                
                    except Exception as e:
                        # This catches exceptions *not* caught inside send_llm_request
                        # (though good practice is to catch them within the function)
                        print(f"Error retrieving result from future: {e}")
                        # Find which prompt this was associated with (if needed, more complex)

            end_time = time.time()
            total_duration = end_time - start_time     
            print(f"Throughput: {round(sum(total_completion_tokens)/total_duration, 2)}")   

            ## store the results to temp folder
            k = 1 ## if we generatign 2 samples per question for consustency
            with open(opts.temp_file, "a") as f:
                for i in range(len(chunk)):
                    
                    solution_1 = results[i*k]['response']
                    # solution_2 = results[i*k+1]['response']
                    
                    chunk[i]["solution_1"] = solution_1
                    # chunk[i]["solution_2"] = solution_2
                    
                    json_string = json.dumps(chunk[i])
                    f.write(json_string + "\n")

            idx += batch_size
            pbar.update(1)

    def saveResults(self, opts):

        # df = pd.read_json(opts.temp_file, lines=True) 
        temp_data = []
        with open(opts.temp_file, "r") as f:
            for line in f:
                record = json.loads(line.strip())
                temp_data.append(record)
        
        # mode = 'a' if os.path.exists(opts.output_file) and opts.start_again.lower() == "no" else 'w'
        # print(f"Mode: {mode}")
        with open(opts.output_file, 'w') as f:
            for record in temp_data:
                json_string = json.dumps(record)
                f.write(json_string + "\n")
        print(f"Data saved..")
        print(f"!! -- Done -- !!")
        return
        # ===========================

        df.to_json("data/jun1625/diffhiked_by_deepseek.jsonl", orient="records", lines=True)    
        
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
    dr = DiffRating()
    dr.prepareData(opts)
    dr.rateDifficulty(opts)
    dr.saveResults(opts)


def getArguments():
    parser = argparse.ArgumentParser()
    parser.add_argument("--config", required=False, help="All arguments required should be in the config yaml config file")
    parser.add_argument("--sandmath_path", required=False, help="Path to input dataset")
    parser.add_argument("--temp_file", required=False, help="Path to temp file")
    parser.add_argument("--model", required=False, help="Model path or model name")
    parser.add_argument("--start_again", required=False, type=str, help="from where to start")
    parser.add_argument("--output_file", required=False, help="from where to start")
    
    return parser.parse_args()


if __name__ == "__main__":
    opts = getArguments()

    if opts.config:
        with open(opts.config, "r") as f:  
            config = yaml.safe_load(f)

        run_name_value = config["run_name"]
        opts_dict = {
            "sandmath_path": config["diffrating"]["sandmath_path"].format(run_name=run_name_value),
            "seeds": config["diffrating"]["seeds"],
            "datasets": config["diffrating"]["datasets"],
            "temp_file": "data/temp/difffiltered_diffrated_temp.jsonl"
        }
        opts = SimpleNamespace(**opts_dict)

    main(opts)


# nohup python scripts/deepseek_solution_generation.py --sandmath_path data/gptoss/generated_qa_000028_dhadded.jsonl --temp_file data/temp/deepseek_diffhiking_solgen_temp.jsonl --output_file data/gptoss/generated_qa_000028_dhadded_solutions_2.jsonl > output.log 2>&1 &