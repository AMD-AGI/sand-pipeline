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
from transformers import AutoModelForCausalLM, AutoTokenizer
from vllm import LLM, SamplingParams
import torch

class BranchTagging:
    def __init__(self):
        pass
       


    def prepareData(self, opts):
        self.final_dataset = []

        if opts.sandmath_path.split(".")[-1] == "json":
            with open(opts.sandmath_path, "r") as f:
                self.final_dataset = json.load(f)
        else:        
            with open(opts.sandmath_path, "r") as f:
                for line in f:
                    record = json.loads(line.strip())
                    self.final_dataset.append(record)
        print(f"Source data is: {len(self.final_dataset)}")



    def load_tokenizer(self, opts):
        self.tokenizer = AutoTokenizer.from_pretrained(opts.model)
        self.sampling_params = SamplingParams(temperature=0.0, max_tokens=62000)

    def __processPrompts(self, data):

        branch_tagging_prompt = """You are a mathematics expert. You will be given a math question and its solution. 
        Identify the primary branch to which the question belongs. Although a question may involve multiple branches, select only the primary one from this list strictly:  
        - Number Theory  
        - Algebra  
        - Combinatorics  
        - Probability  
        - Geometry  
  
        Output Format:  
        Return exactly the name of the primary branch, wrapped in <B> and </B>, and nothing else.  

        Question:
        {}

        Solution:
        {}
        """

        conversations = []
        for row in data:
            prompt = branch_tagging_prompt.format(row['instruction'], row['output'])
            conversation = [{"role": "user", "content": prompt}]
            conversations.append(conversation)

        prompts = self.tokenizer.apply_chat_template(
                    conversations,
                    tokenize=False,
                    add_generation_prompt=True
                )
        return prompts   
        

    def __sendSingleRequest(self, prompt, request_id):
        response, total_tokens, completion_tokens = u.getLocalModelResponse(prompt)
        return request_id, response, total_tokens, completion_tokens

    def _parseOutput(self, text):
        # Search for the solution/answer part (non-greedy match, dot matches newline)
        s_match = re.search(r"<B>(.*?)</B>", text, re.DOTALL)
        answer = None
        if s_match:
            answer = s_match.group(1).strip() # Extract captured group 1 and strip whitespace

        # Return the tuple only if BOTH parts were successfully found
        if answer is not None:
            return answer
        else:
            # If either the question or the answer tag (or both) was missing
            return None

    def branchTagging(self, opts):
        batch_size = 10000
        # max_workers = 256
        # temp_file = "data/may1625/temp_diffrating.jsonl"
        # model Initialization
        llm = LLM(
            model=opts.model,
            max_model_len= 62000 ,
            max_num_batched_tokens= 65536,
            max_num_seqs= 1024,
            max_seq_len_to_capture= 62000,
            gpu_memory_utilization= 0.95, 
            tensor_parallel_size=torch.cuda.device_count()
        )  

        print(f"Starting the difficulty rating loop")
        pbar = tqdm(total=len(self.final_dataset) // batch_size + 1, desc="steps:")
        idx = 0
        while idx < len(self.final_dataset):

            end = min(idx+batch_size, len(self.final_dataset))
            chunk = self.final_dataset[idx:end]
            prompts = self.__processPrompts(chunk)

            outputs = llm.generate(
                prompts,
                sampling_params=self.sampling_params
            )

            ## store the results to temp folder
            for i in range(len(chunk)):
                generated_text = outputs[i].outputs[0].text
                branch = self._parseOutput(generated_text)
                self.final_dataset[idx+i]["branch"] = branch
                # self.final_dataset[idx+i]["response"] = generated_text

            idx += batch_size
            pbar.update(1)

    def saveResults(self, opts):

        if opts.output_file.split(".")[-1] == "json":
            with open(opts.output_file, "w") as f:
                json.dump(self.final_dataset, f, indent=4)
        else:
            with open(opts.output_file, "w") as f:
                for record in self.final_dataset:
                    json_string = json.dumps(record)
                    f.write(json_string + "\n")

        print(f"!--Done--!")
        return
        ## print some stats

        df = pd.DataFrame(self.final_dataset)
        df_plot_data = df.groupby("branch", as_index=False).agg({'problem':'count'}).rename(columns={'problem':'problem_count'})

        plt.figure(figsize=(6,4))
        sns.barplot(x="branch", y="problem_count", data=df_plot_data)
        plt.xlabel('Branch')
        plt.ylabel('Problem Count')  
        plt.tight_layout()          
        plt.savefig("data/may1625/figures/problems_branch_dist_8k_data.png", format='png', dpi=300, bbox_inches='tight')
        print(f"Plot saved !!")
        print(f"Done !!")


        return 

        # --- 2. Define custom colors for each seed ---  
        seed_palette = {  
            11: "#e31a1c",  # red  
            12: "#1f78b4",  # blue  
            41: "#33a02c"   # green  
        }  
        
        # --- 3. Plot violin plot with seed as hue ---  
        plt.figure(figsize=(12, 10))  
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
        ax.set_xticklabels(ax.get_xticklabels(), rotation=25)  
        
        # --- 5. Labels, title, legend ---  
        ax.set_xlabel("Dataset")  
        ax.set_ylabel("diff_rating")  
        ax.set_title("Distribution of diff_rating by Dataset and Seed")  
        plt.legend(title="Seed", loc="upper right")  
        plt.savefig("data/may1625/figures/diffratings_additional.png")
        plt.savefig("data/may1625/figures/diffratings_additional.pdf")
        


def main(opts):
    dr = BranchTagging()
    dr.prepareData(opts)
    dr.load_tokenizer(opts)
    dr.branchTagging(opts)
    dr.saveResults(opts)


def getArguments():
    parser = argparse.ArgumentParser()
    parser.add_argument("--config", required=False, help="All arguments required should be in the config yaml config file")
    parser.add_argument("--sandmath_path", required=False, help="Path of the SANDMath data")
    parser.add_argument("--model", required=False, help="model to be used to rate the questions difficulty")
    parser.add_argument("--output_file", required=False, help="Path of the output file")
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
            "model": config["diffrating"]["model"]
        }
        opts = SimpleNamespace(**opts_dict)

    main(opts)


## python scripts/branch_tagging.py --sandmath_path /dockerx/home/machaita/LLaMA-Factory-2/data/sand_math_500.json --output_file data/huggingface/sand_math_500.json --model /dockerx/mnt/m2m_nobackup/machaita/models/meta-llama/Llama-3.3-70B-Instruct
## python scripts/branch_tagging.py --sandmath_path /dockerx/home/machaita/LLaMA-Factory-2/data/sandmath1k_seeds.json --output_file data/huggingface/sand_math_base_1000.json --model /dockerx/mnt/m2m_nobackup/machaita/models/meta-llama/Llama-3.3-70B-Instruct
## python scripts/branch_tagging.py --sandmath_path /dockerx/home/machaita/LLaMA-Factory-2/data/sandmath1k_seeds_diffhiked.json --output_file data/huggingface/sand_math_dh_1000.json --model /dockerx/mnt/m2m_nobackup/machaita/models/meta-llama/Llama-3.3-70B-Instruct