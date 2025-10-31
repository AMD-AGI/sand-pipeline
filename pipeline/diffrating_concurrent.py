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
import multiprocessing

class DiffRating:
    def __init__(self):
        self.seeds = [11, 12, 41]
        self.datasets = ["zwhe99/DeepMath-103K"]
       

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
                for seed_value in self.seeds:                    
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

    def prepareDataForPaper(self, opts):
        self.final_dataset = []
        K = 3

        data_files = {
            'SAND-Math': "/dockerx/home/machaita/LLaMA-Factory-2/data/sand_math_500.json",
            'Open-R1': "/dockerx/home/machaita/LLaMA-Factory-2/data/openr1_math_500.json",
            'Llama-Nemotron-PTD': "/dockerx/home/machaita/LLaMA-Factory-2/data/llama_nemotron_500.json"
        }
        
        for dataset, path in data_files.items():            
            with open(path, "r") as f:
                data = json.load(f)
                for id, record in enumerate(data):
                    for k in range(K):                        
                        record_to_save = {
                            'id': id,                            
                            'dataset': dataset,
                            'k': k,
                            'problem': record['instruction'],
                            'solution': record['output']
                        }
                        self.final_dataset.append(record_to_save)
                        

        print(f"Total data to e processed: {len(self.final_dataset)}")


            

        

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
                # if record["consistent"] and record["consistent"].lower() == "yes":
                data.append(record)

        # data = data[:32]    
        print(f"Source data is: {len(data)}")
        
        for record in data:
            for k in range(K):                
                record_n = record.copy()
                record_n["k"] = k
                self.final_dataset.append(record_n)
        # self.final_dataset = self.final_dataset[:8] ## for sample run
        print(f"Source data after {K} times enumeration: {len(self.final_dataset)}")




    def load_tokenizer(self, opts):
        self.tokenizer = AutoTokenizer.from_pretrained(opts.model)
        # self.sampling_params = SamplingParams(temperature=0.0, max_tokens=16000)

    def __processPrompts(self, data):

        conversations = []
        for row in tqdm(data, desc="Prompt Processing"):
            solution = ' ' if row["new_solution"] is None else row["new_solution"]
            question = ' ' if row['new_problem'] is None else row['new_problem']
            # solution = row["solution_1"][:28000]
            prompt = u.difficulty_prompt.replace('<|question|>', question).replace('<|solution|>', solution)
            # ─── Truncate prompt to first 32 000 tokens ─────────────────────────────
            # 1. Tokenize without adding special tokens (optional; depends on your tokenizer)
            token_ids = self.tokenizer.encode(
                prompt,
                add_special_tokens=False
            )
            # 2. Slice to max length
            if len(token_ids) > 32000:
                token_ids = token_ids[:32000]
            # 3. Decode back to text
            prompt = self.tokenizer.decode(
                token_ids,
                skip_special_tokens=True,
                clean_up_tokenization_spaces=True
            )
            # ───────────────────────────────────────────────────────────────────────
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
            max_model_len= 42000 ,
            max_num_batched_tokens= 65536,
            max_num_seqs= 64,
            max_seq_len_to_capture= 42000,
            gpu_memory_utilization= 0.9,
            enable_chunked_prefill=True 
            # tensor_parallel_size=8
        )  

        sampling_params = SamplingParams(temperature=0.5, max_tokens=32000)

        outputs = llm.generate(
                prompts,
                sampling_params=sampling_params
        )

        ## store the results to temp folder
        with open(temp_file, "w") as f:
            for i in range(len(data)):
                generated_text = outputs[i].outputs[0].text
                diff_rating = u.processResponse(generated_text)
                data[i]["new_diff_rating"] = diff_rating
                data[i]["new_response"] = generated_text

                json_string = json.dumps(data[i])
                f.write(json_string + "\n")

        print(f"Data written to temp file")
        
            

    def rateDifficulty(self, opts):
        
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
        explanations_file_path = f"{opts.output_file.split(".")[0]}_explanations.jsonl"
        print(f"Attempting to read temp files from the directory: {temp_dir}, with prefix: {prefix}")
        
        temp_files = [os.path.join(temp_dir, file) for file in os.listdir(temp_dir) if prefix in file]
        temp_files.sort()
        print(f"Temp fles found \n\n: {temp_files}\n\n")

        dfs = [pd.read_json(file, orient="records", lines=True) for file in temp_files]
        df = pd.concat(dfs)
        df.to_json(explanations_file_path, orient="records", lines=True)   

        print(f"--- Done ---")  

        return

        diffratings_df = df.groupby("question", as_index=False).agg({'diff_rating':'mean', 'k':'count'})
        cols = ['id', 'prompt', 'branch', 'question', 'solution', 'completion_tokens', 'solution_1', 'completion_tokens_solution_1', 'solution_2', 'completion_tokens_solution_2', 'consistent']        
        df_original_data = df.drop_duplicates(subset=["question"], keep="first").reset_index(drop=True)[cols]
        df_original_data = df_original_data.merge(diffratings_df, on="question")

        
        df_original_data.to_json(opts.output_file, orient="records", lines=True)        
           
        
        print(f"---- Done ----")
        print(f"\n\n------ Some stats -----\n\n")
        print(f"Mean difficulty rating: {df_original_data[df_original_data["diff_rating"] > 0]["diff_rating"].mean()}")
        print(f"Difficulty scores 6 and above")
        print(len(df_original_data[df_original_data["diff_rating"] >= 6]["diff_rating"]) / len(df_original_data))

        return
        
        
        
        df = df.groupby(['id', 'question', 'solution', 'branch', "solution_1", "solution_2", "consistent"], as_index=False).agg({"diff_rating":"mean", "k":"count"})
        df.to_json(opts.output_file, orient="records", lines=True) 
        print(f"Results are saved: {len(df)}")

        

        # remove temp files
        for file in temp_files:
            if os.path.isfile(file):
                os.remove(file)

       


def main(opts):    

    dr = DiffRating()
    dr.prepareData(opts)
    dr.load_tokenizer(opts)
    dr.rateDifficulty(opts)
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



## CUDA_VISIBLE_DEVICES=0 python scripts/diffrating_concurrent.py --sandmath_path data/generated_qa_128_256_128_diffhiked_consistent.jsonl --model /dockerx/root/models/meta-llama/Llama-3.3-70B-Instruct --output_file data/generated_qa_128_256_128_diffhiked_consistent_diffrated.jsonl --temp_file_prefix data/temp/tmp_llama_diffrating

## nohup python scripts/diffrating_concurrent.py --sandmath_path data/gptoss/generated_qa_31aug2025_consistency.jsonl --model /dockerx/mnt/m2m_nobackup/machaita/models/meta-llama/Llama-3.3-70B-Instruct --output_file data/gptoss/generated_qa_31aug2025_consistency_diffrating.jsonl --temp_file_prefix data/temp/tmp_llama_diffrating


# python scripts/diffrating_concurrent.py --sandmath_path data/multimodal/final_generated_solutions.jsonl --model /dockerx/mnt/m2m_nobackup/machaita/models/meta-llama/Llama-3.3-70B-Instruct --output_file data/gptoss/generated_qa_31aug2025_consistency_diffrating.jsonl --temp_file_prefix data/temp/tmp_llama_diffrating

# python scripts/diffrating_concurrent.py --sandmath_path data/multimodal/generated_qa_EXAONE-Deep-32B_consistency.jsonl --model /dockerx/mnt/m2m_nobackup/machaita/models/meta-llama/Llama-3.3-70B-Instruct --output_file data/multimodal/generated_qa_EXAONE-Deep-32B_consistency_diffrating.jsonl --temp_file_prefix data/temp/tmp_llama_diffrating

# python scripts/diffrating_concurrent.py --sandmath_path data/multimodal/generated_qa_QwQ32B_consistency.jsonl --model /dockerx/mnt/m2m_nobackup/machaita/models/meta-llama/Llama-3.3-70B-Instruct --output_file data/multimodal/generated_qa_QwQ32B_consistency_diffrating.jsonl --temp_file_prefix data/temp/tmp_llama_diffrating

# python scripts/diffrating_concurrent.py --sandmath_path data/multimodal/generated_qa_Llama-3.1-405B_consistency.jsonl --model /dockerx/mnt/m2m_nobackup/machaita/models/meta-llama/Llama-3.3-70B-Instruct --output_file data/multimodal/generated_qa_Llama-3.1-405B_consistency_diffrating.jsonl --temp_file_prefix data/temp/tmp_llama_diffrating

# CUDA_VISIBLE_DEVICES=2,3,4,5,6,7 python scripts/diffrating_concurrent.py --sandmath_path data/gptoss/generated_qa_000028.jsonl --model /dockerx/mnt/m2m_nobackup/machaita/models/meta-llama/Llama-3.3-70B-Instruct --output_file data/gptoss/generated_qa_000028_diffrating_stage1.jsonl --temp_file_prefix data/temp/tmp_llama_diffrating

# python scripts/diffrating_concurrent.py --sandmath_path data/gptoss/generated_qa_000012.jsonl --model /dockerx/mnt/m2m_nobackup/machaita/models/meta-llama/Llama-3.3-70B-Instruct --output_file data/gptoss/generated_qa_000012_diffrating_stage1.jsonl --temp_file_prefix data/temp/tmp_llama_diffrating


# python scripts/diffrating_concurrent.py --sandmath_path data/gptoss/generated_qa_000028_diffhiked.jsonl --model /dockerx/mnt/m2m_nobackup/machaita/models/meta-llama/Llama-3.3-70B-Instruct --output_file data/gptoss/generated_qa_000028_diffhiked_diffrating.jsonl --temp_file_prefix data/temp/tmp_llama_diffrating







