"""
Script to rate the difficulty of the questions in the input file.

Usage:
    python pipeline/diffrating.py --input_file data/consistent_dc_dd_math.json \
        --output_file data/consistent_dc_dd_math_diffrated.json \
        --temp_file_prefix data/temp/tmp_diffrating \
        --model meta-llama/Llama-3.3-70B-Instruct
"""
import json
import yaml
import argparse
from types import SimpleNamespace
import os
import multiprocessing

import pandas as pd
from tqdm import tqdm
from transformers import AutoTokenizer
from vllm import LLM, SamplingParams

import utills as u

class DiffRating:
    def __init__(self):
        self.final_dataset = []    

    def prepareData(self, opts):        
        K = 3 ## for each question rate 3 times and make average

        data = []
        with open(opts.input_file, "r") as f:
            for line in f:
                record = json.loads(line.strip())                
                data.append(record)

        print(f"Source data size: {len(data)}")
        
        for record in data:
            for k in range(K):                
                record_n = record.copy()
                record_n["k"] = k
                self.final_dataset.append(record_n)
        print(f"Source data size after {K} times enumeration: {len(self.final_dataset)}")

    def load_tokenizer(self, opts):
        self.tokenizer = AutoTokenizer.from_pretrained(opts.model)

    def __ratingToBucket(self, rating):
    buckets = list(np.arange(1, 10.1, 0.5)) 
    bucket = 0 
    distance = 100000
    for b in buckets:
        if abs(rating - b) < distance:
            distance = abs(rating - b)
            bucket = b
    return bucket

    def __processPrompts(self, data):

        conversations = []
        for row in tqdm(data, desc="Prompt Processing"):
            solution = ' ' if row["solution_1"] is None else row["solution_1"]
            question = ' ' if row['question'] is None else row['question']
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

    def generate(self, opts, data, gpu):
        os.environ["CUDA_VISIBLE_DEVICES"] = str(gpu)
        temp_file = f"{opts.temp_file_prefix}_{gpu}.jsonl"

        prompts = self.__processPrompts(data)

        llm = LLM(
            model=opts.model,
            max_model_len= 42000 ,
            max_num_batched_tokens= 65536,
            max_num_seqs= 128,
            max_seq_len_to_capture= 42000,
            gpu_memory_utilization= 0.9,
            enable_chunked_prefill=True
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
                data[i]["diff_rating"] = diff_rating                

                json_string = json.dumps(data[i])
                f.write(json_string + "\n")

        print(f"Data written to temp file")

    def rateDifficulty(self, opts):
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
        
        print(f"Attempting to read temp files from the directory: {temp_dir}, with prefix: {prefix}")
        
        temp_files = [os.path.join(temp_dir, file) for file in os.listdir(temp_dir) if prefix in file]
        temp_files.sort()

        print(f"Temp files found \n\n: {temp_files}\n\n")

        dfs = [pd.read_json(file, orient="records", lines=True) for file in temp_files]
        data_df = pd.concat(dfs)

        ratings_df = data_df.groupby(['id', 'question'], as_index=False).agg({'diff_rating': 'mean'})
        other_columns = data_df.drop(columns=['diff_rating', 'k']).drop_duplicates(subset=['id', 'question'])
        final_df = pd.merge(other_columns, ratings_df, on=['id', 'question'], how='inner')
        final_df['diff_rating'] = final_df['diff_rating'].apply(self.__ratingToBucket)
        
        print(f"Total enumerated records: {len(data_df)}")
        print(f"Total final records after averaging diff ratings: {len(final_df)}")
        final_df.to_json(opts.output_file, orient='records', lines=True)

        print(f"Results are saved to {opts.output_file}")

        # remove temp files
        for file in temp_files:
            if os.path.isfile(file):
                os.remove(file)

        print(f"--- Done ---")


def main(opts):
    dr = DiffRating()
    dr.prepareData(opts)
    dr.load_tokenizer(opts)
    dr.rateDifficulty(opts)
    dr.saveResults(opts)


def getArguments():
    parser = argparse.ArgumentParser()
    parser.add_argument("--config", required=False, help="All arguments required should be in the config yaml config file")
    parser.add_argument("--input_file", required=False, help="Path of the input file")
    parser.add_argument("--model", required=False, help="model to be used to rate the questions difficulty")
    parser.add_argument("--output_file", required=False, help="file to save")
    parser.add_argument("--temp_file_prefix", required=False, help="used to store the temporary files")

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

