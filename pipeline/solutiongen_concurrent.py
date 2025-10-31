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
import multiprocessing

class DiffRating:
    def __init__(self):
        self.seeds = [11, 12, 41]
        self.datasets = ["meta-math/MetaMathQA", "nvidia/OpenMathInstruct-2"]
       

    def prepareDataSynthetic(self, opts):
        sample_size = 500
        K = 3 ## for variance average over k
        self.final_dataset = []

        for dataset_name in self.datasets:
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

            elif dataset_name == "nvidia/OpenMathInstruct-2":
                print(f"\n\n==> Processing nvidia/OpenMathInstruct-2 \n\n")
                dataset = ds.load_dataset("nvidia/OpenMathInstruct-2", split="train_1M")
                for seed_value in self.seeds:                    
                    sample_data = dataset.shuffle(seed_value).select(range(sample_size)) 
                    for id, row in enumerate(sample_data):
                        for k in range(K):
                            save_record = {
                                "k": k,
                                "id": id,
                                "dataset": "OpenMathInstruct-2",
                                "seed": seed_value,
                                "problem": row["problem"],
                                "solution": row["generated_solution"],
                                "answer": row["expected_answer"]
                            }
                            self.final_dataset.append(save_record)

            elif dataset_name == "meta-math/MetaMathQA":
                print(f"\n\n==> Processing meta-math/MetaMathQA \n\n")
                dataset = ds.load_dataset("meta-math/MetaMathQA", split="train")
                for seed_value in self.seeds:                    
                    sample_data = dataset.shuffle(seed_value).select(range(sample_size)) 
                    for id, row in enumerate(sample_data):
                        for k in range(K):
                            save_record = {
                                "k": k,
                                "id": id,
                                "dataset": "MetaMathQA",
                                "seed": seed_value,
                                "problem": row["query"],
                                "solution": row["response"],
                                "answer": row["response"]
                            }
                            self.final_dataset.append(save_record)                            

            elif dataset_name == "zwhe99/DeepMath-103K":
                print(f"\n\n==> Processing zwhe99/DeepMath-103K \n\n")
                dataset = ds.load_dataset("zwhe99/DeepMath-103K", split="train")
                for seed_value in opts.seeds:                    
                    sample_data = dataset.shuffle(seed_value).select(range(sample_size)) 
                    for id, row in enumerate(sample_data):
                        for k in range(K):
                            save_record = {
                                "k": k,
                                "id": id,
                                "dataset": "DeepMath-103K",
                                "seed": seed_value,
                                "problem": row["question"],
                                "solution": row["r1_solution_1"]
                            }
                            self.final_dataset.append(save_record)

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

        with open(opts.sandmath_path, "r") as f:
            for line in f:
                record = json.loads(line.strip())
                self.final_dataset.append(record)

        # data = data[:8]    
        print(f"Source data is: {len(self.final_dataset)}")
        



    def load_tokenizer(self, opts):
        self.tokenizer = AutoTokenizer.from_pretrained(opts.model)
        # self.sampling_params = SamplingParams(temperature=0.0, max_tokens=16000)

    def __processPrompts(self, data):

        solution_generation_prompt = """Answer the given mathematics question below. Please reason step by step, and put your final answer within \\boxed{{}}.
        Question:
        {}
        """

        conversations = []
        for row in data:            
            prompt =  solution_generation_prompt.format(row["problem"])
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

    def generate(self, opts, data, gpu):
        os.environ["CUDA_VISIBLE_DEVICES"] = str(gpu)
        temp_file = f"{opts.temp_file_prefix}_{gpu}.jsonl"
       
            
        prompts = self.__processPrompts(data)

        llm = LLM(
            model=opts.model,
            max_model_len= 16000 ,
            max_num_batched_tokens= 65536,
            max_num_seqs= 1024,
            max_seq_len_to_capture= 16000,
            # gpu_memory_utilization= 0.95, 
            # tensor_parallel_size=8
        )  

        sampling_params = SamplingParams(temperature=0.6, max_tokens=16000)

        outputs = llm.generate(
                prompts,
                sampling_params=sampling_params
        )

        ## store the results to temp folder
        with open(temp_file, "w") as f:
            for i in range(len(data)):
                generated_text = outputs[i].outputs[0].text
                # diff_rating = u.processResponse(generated_text)
                data[i]["generated_solution"] = generated_text

                json_string = json.dumps(data[i])
                f.write(json_string + "\n")

        print(f"Data written to temp file")
        
            

    def generateSolutions(self, opts):
        
        # batch_size = 10000
        # max_workers = 256
        # temp_file = "data/may1625/temp_diffrating.jsonl"
        # model Initialization
        if "CUDA_VISIBLE_DEVICES" not in os.environ:
            available_gpus = ['0','1','2','3','4','5','6','7']    
        else:
            available_gpus = os.environ['CUDA_VISIBLE_DEVICES'].split(',')
        available_gpus.sort()

        per_gpu_data_size = len(self.final_dataset) // len(available_gpus)

        print(f"Per gpu data size: {per_gpu_data_size}")
        
               
        processes = []
        for i, gpu in enumerate(available_gpus):
            gpu_batch = self.final_dataset[i*per_gpu_data_size: (i+1)*per_gpu_data_size]
            if i == len(available_gpus) -1:
                gpu_batch += self.final_dataset[(i+1)*per_gpu_data_size: ]

            process = multiprocessing.Process(target=self.generate, args=(opts, gpu_batch, gpu))
            processes.append(process)
            process.start()

        for process in processes:
            process.join()  
        

        
    def saveResults(self, opts):

        temp_dir = "/".join(opts.temp_file_prefix.split("/")[:-1])
        prefix = opts.temp_file_prefix.split("/")[-1]
        print(f"Attempting to read temp files from the directory: {temp_dir}, with prefix: {prefix}")
        
        temp_files = [os.path.join(temp_dir, file) for file in os.listdir(temp_dir) if prefix in file]
        temp_files.sort()
        print(f"Temp fles found \n\n: {temp_files}\n\n")

        dfs = [pd.read_json(file, orient="records", lines=True) for file in temp_files]
        df = pd.concat(dfs)

        
        
        df.to_json(opts.output_file, orient="records", lines=True) 
        print(f"Results are saved")

        

        # remove temp files
        for file in temp_files:
            if os.path.isfile(file):
                os.remove(file)
        return 

        rating_counts = df.groupby("diff_rating", as_index=False).agg({'id':'count'}).rename(columns={'id':'count'})
        plt.figure(figsize=(12,4))
        sns.barplot(data=rating_counts, x="diff_rating", y="count")
        plt.xlabel('Rating')
        plt.ylabel('Count')          
        plt.tight_layout()        
        plt.savefig("data/may1625/figures/limo_diffratings.png", format='png', dpi=300, bbox_inches='tight')
        print(f"Plot saved")
        
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
    

    dr = DiffRating()
    dr.prepareData(opts)
    # dr.prepareDataSynthetic(opts)
    dr.load_tokenizer(opts)
    dr.generateSolutions(opts)
    dr.saveResults(opts)


def getArguments():
    parser = argparse.ArgumentParser()
    parser.add_argument("--config", required=False, help="All arguments required should be in the config yaml config file")
    parser.add_argument("--sandmath_path", required=False, help="Path of the SANDMath data")
    parser.add_argument("--model", required=False, help="model to be used to rate the questions difficulty")
    parser.add_argument("--output_file", required=False, help="file to save")
    parser.add_argument("--temp_file_prefix", required=False, help="file to save")
    # parser.add_argument("--seeds", required=False, ,help="file to save")
    return parser.parse_args()


if __name__ == "__main__":
    # Set the start method to 'spawn'  
    multiprocessing.set_start_method('spawn')


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
## python scripts/diffrating_concurrent.py --sandmath_path data/may1625/difffiltered_diffrated_agg_withbranch.jsonl --model /dockerx/mnt/m2m_nobackup/machaita2/models/meta-llama/Llama-3.3-70B-Instruct --output_file data/may1625/difffiltered_diffratedllama_agg_withbranch.jsonl --temp_file_prefix data/temp/tmp_llama_diffrating
## python diffrating.py --model /dockerx/mnt/m2m_nobackup/machaita2/models/meta-llama/Llama-3.3-70B-Instruct --output_file data/jun1625/synthetic_datasets_diffratings.jsonl
## nohup python scripts/solutiongen_concurrent.py --model /dockerx/mnt/m2m_nobackup/machaita2/models/deepseek-ai/DeepSeek-R1-Distill-Qwen-32B --sandmath_path data/jun1625/synthetic_datasets_diffratings.jsonl --output_file data/jun1625/synthetic_datasets_diffratings_solutions.jsonl --temp_file_prefix data/temp/tmp_solutions > output.log 2>&1 &
