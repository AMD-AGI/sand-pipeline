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

class DiffRating:
    def __init__(self):
        pass
       

    def _old_prepareData(self, opts):
        sample_size = 500
        K = 3 ## for variance average over k
        self.final_dataset = []

        for dataset_name in opts.datasets:
            if dataset_name == "AMD/SAND-Math":
                print(f"\n\n==> Processing AMD/SAND-Math \n\n")
                data = []
                with open(opts.sandmath_path, 'r') as f:
                    for line in f:
                        record = json.loads(line.strip())
                        data.append(record)

                for seed_value in opts.seeds:
                    random.seed(seed_value)
                    sample_data = random.sample(data, sample_size)
                    for id, record in enumerate(sample_data):
                        for k in range(K):
                            save_record = {
                                'k': k,
                                'id': id,
                                'dataset': 'SAND-Math',
                                'seed': seed_value,
                                'problem': record["problem"],
                                'solution': record["solution"]
                            }
                            self.final_dataset.append(save_record)
                

            elif dataset_name == "GAIR/LIMO":
                print(f"\n\n==> Processing GAIR/LIMO \n\n")
                dataset = ds.load_dataset('GAIR/LIMO', split="train")
                for seed_value in opts.seeds:
                    sample_data = dataset.shuffle(seed_value).select(range(sample_size)) 
                    for id, row in enumerate(sample_data):
                        for k in range(K):
                            save_record = {
                                "k": k,
                                "id": id,
                                "dataset": "LIMO",
                                "seed": seed_value,
                                "problem": row["question"],
                                "solution": row["solution"]
                            }
                            self.final_dataset.append(save_record)
                
            elif dataset_name == "nvidia/Llama-Nemotron-Post-Training-Dataset":
                print(f"\n\n==> Processing nvidia/Llama-Nemotron-Post-Training-Dataset \n\n")
                dataset = ds.load_dataset("nvidia/Llama-Nemotron-Post-Training-Dataset", "SFT", split="math")
                for seed_value in opts.seeds:
                    sample_data = dataset.shuffle(seed_value).select(range(sample_size)) 
                    for id, row in enumerate(sample_data):
                        for k in range(K):
                            save_record = {
                                "k": k,
                                "id": id,
                                "dataset": "Llama-Nemotron-Post-Training-Dataset",
                                "seed": seed_value,
                                "problem": row["input"][-1]["content"],
                                "solution": row["output"]
                            }
                            self.final_dataset.append(save_record)

            elif dataset_name == "AI-MO/NuminaMath-CoT":
                print(f"\n\n==> Processing AI-MO/NuminaMath-CoT \n\n")
                dataset = ds.load_dataset("AI-MO/NuminaMath-CoT", split="train")
                for seed_value in opts.seeds:
                    sample_data = dataset.shuffle(seed_value).select(range(sample_size)) 
                    for id, row in enumerate(sample_data):
                        for k in range(K):
                            save_record = {
                                "k": k,
                                "id": id,
                                "dataset": "NuminaMath-CoT",
                                "seed": seed_value,
                                "problem": row["problem"],
                                "solution": row["solution"]
                            }
                            self.final_dataset.append(save_record)

            elif dataset_name == "open-r1/OpenR1-Math-220k":
                print(f"\n\n==> Processing open-r1/OpenR1-Math-220k \n\n")
                dataset = ds.load_dataset("open-r1/OpenR1-Math-220k", "default", split="train")
                for seed_value in opts.seeds:
                    dataset = dataset.filter(lambda example: example["correctness_count"] == 2)
                    sample_data = dataset.shuffle(seed_value).select(range(sample_size)) 
                    for id, row in enumerate(sample_data):
                        for k in range(K):
                            save_record = {
                                "k": k,
                                "id": id,
                                "dataset": "OpenR1-Math-220k",
                                "seed": seed_value,
                                "problem": row["problem"],
                                "solution": row["solution"]
                            }
                            self.final_dataset.append(save_record)

    def prepareData(self, opts):
        sample_size = 30
        K = 3 ## for variance average over k
        self.final_dataset = []

        print(f"\n\n==> Processing AMD/SAND-Math \n\n")
        data = []
        with open(opts.sandmath_path, 'r') as f:
            for line in f:
                record = json.loads(line.strip())
                data.append(record)
        data.sort(key=lambda row: row["id"], reverse=True)## sort in reverse order base on id
        # data = data[:sample_size]## for testing purpose

        for id, record in enumerate(data):
            for k in range(K):
                new_record = record.copy()
                new_record["k"] = k                
                self.final_dataset.append(new_record)

     

        print(f"Total data length to process:{len(data)} X {K} times ==> {len(self.final_dataset)}")

    def __processPrompts(self, data):

        prompts = []
        for row in data:
            prompt = u.difficulty_prompt.replace('<|question|>', row['problem']).replace('<|solution|>', row['solution'])
            prompts.append(prompt)
        
        return prompts

    def __sendSingleRequest(self, prompt, request_id):
        response, total_tokens, completion_tokens = u.getLocalModelResponse(prompt)
        return request_id, response, total_tokens, completion_tokens

    def rateDifficulty(self, opts):
        batch_size = 500
        max_workers = 128
        # temp_file = "data/may1625/temp_diffrating.jsonl"

        ## Initialize the temp file
        with open(opts.temp_file, "w") as f:
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
            with open(opts.temp_file, "a") as f:
                for i in range(len(chunk)):
                    generated_text = results[i]['response']
                    diff_rating = u.processResponse(generated_text)                    
                    chunk[i]["diff_rating"] = diff_rating
                    chunk[i]["response"] = generated_text
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
    dr = DiffRating()
    dr.prepareData(opts)
    dr.rateDifficulty(opts)
    dr.saveResults(opts)


def getArguments():
    parser = argparse.ArgumentParser()
    parser.add_argument("--config", required=False, help="All arguments required should be in the config yaml config file")
    return parser.parse_args()


if __name__ == "__main__":
    opts = getArguments()

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
