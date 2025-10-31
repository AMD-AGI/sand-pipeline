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
from transformers import AutoModelForCausalLM, AutoTokenizer
from vllm import LLM, SamplingParams

class DiffRating:
    def __init__(self):
        pass   

    def prepareDataLimo(self, opts):
        self.final_dataset = []
        K = 3

        print(f"\n\n==> Processing GAIR/LIMO \n\n")
        dataset = ds.load_dataset('GAIR/LIMO', split="train")                
        for id, row in enumerate(dataset):
            for k in range(K):
                save_record = {
                    "k": k,
                    "id": id,
                    # "dataset": "LIMO",                    
                    "problem": row["question"],
                    "solution": row["solution"]
                }
                self.final_dataset.append(save_record)

        print(f"Source data after {K} times enumeration: {len(self.final_dataset)}")


    def prepareData(self, opts):
        self.final_dataset = []
        K = 3 ## for each question rate 3 times and make average

        data = []
        with open(opts.sandmath_path, "r") as f:
            for line in f:
                record = json.loads(line.strip())
                data.append(record)
        print(f"Source data is: {len(data)}")
        
        for record in data:
            for k in range(K):
                c_record = record.copy()                
                c_record["k"] = k
                self.final_dataset.append(c_record)
        self.final_dataset = self.final_dataset[:100] ## for sample run
        print(f"Source data after {K} times enumeration: {len(self.final_dataset)}")


            



        



    def load_tokenizer(self, opts):
        self.tokenizer = AutoTokenizer.from_pretrained(opts.model)
        self.sampling_params = SamplingParams(temperature=0.7, max_tokens=62000)

    def __processPrompts(self, data):

        conversations = []
        for row in tqdm(data, desc="Prompt Processing"):
            solution = ' ' if row["solution_2"] is None else row["solution_2"]
            question = ' ' if row['question'] is None else row['question']
            # solution = row["solution_1"][:28000]
            prompt = u.difficulty_prompt.replace('<|question|>', question).replace('<|solution|>', solution)
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

    def rateDifficulty(self, opts):
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
            tensor_parallel_size=8
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
                diff_rating = u.processResponse(generated_text)
                self.final_dataset[idx+i]["diff_rating"] = diff_rating
                # self.final_dataset[idx+i]["new_response"] = generated_text
                # self.final_dataset[idx+i]["prompt"] = prompts[i]

            idx += batch_size
            pbar.update(1)

    def saveResults(self, opts):
        
        # with open(opts.output_file, "w") as f:
        #     for record in self.final_dataset:
        #         json_string = json.dumps(record)
        #         f.write(json_string + "\n")

        df = pd.DataFrame(self.final_dataset)
        
        df.to_json("data/gptoss/generated_qa_31aug2025_consistency_diffrating_explanations.jsonl", orient="records", lines=True)
        print(f"---- Done ----")
        return

       
        


def main(opts):
    dr = DiffRating()
    dr.prepareData(opts)
    # dr.prepareDataLimo(opts)
    dr.load_tokenizer(opts)
    dr.rateDifficulty(opts)
    dr.saveResults(opts)


def getArguments():
    parser = argparse.ArgumentParser()
    parser.add_argument("--config", required=False, help="All arguments required should be in the config yaml config file")
    parser.add_argument("--sandmath_path", required=False, help="Path of the SANDMath data")
    parser.add_argument("--model", required=False, help="model to be used to rate the questions difficulty")
    parser.add_argument("--output_file", required=False, help="file to save")
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


## python diffrating.py --sandmath_path data/jun1625/sandmath_1ksampling.jsonl --model /dockerx/mnt/m2m_nobackup/machaita/models/meta-llama/Llama-3.3-70B-Instruct
## python diffrating.py --sandmath_path data/jun1625/diffhiked_by_deepseek.jsonl --model /dockerx/mnt/m2m_nobackup/machaita/models/meta-llama/Llama-3.3-70B-Instruct --output_file data/jun1625/diffhiked_by_deepseek_diffrated.jsonl
## python diffrating.py --model /dockerx/mnt/m2m_nobackup/machaita2/models/meta-llama/Llama-3.3-70B-Instruct --output_file data/jun1625/limo_diffratings.jsonl



# nohup python scripts/diffrating.py --sandmath_path data/gptoss/generated_qa_31aug2025_consistency.jsonl --model /dockerx/mnt/m2m_nobackup/machaita/models/meta-llama/Llama-3.3-70B-Instruct --output_file data/gptoss/generated_qa_31aug2025_consistency_diffrating.jsonl 


