"""
Solution Generation Pipeline for Math Problems

Usage:
    python solution_generation.py --input_file "data/input.jsonl" --output_file "data/output.jsonl" \
        --temp_file "data/temp.jsonl" --model_name "openai/gpt-oss-120b" --port 8080 \
        --batch_size 4096 --max_workers 1024
"""
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
from openai import OpenAI
from transformers import AutoTokenizer
from operator import itemgetter


## ------ Global Configuration ------
MODEL_NAME = "openai/gpt-oss-120b"
PORT = 8080
BATCH_SIZE = 4096
MAX_WORKERS = 1024
K = 1  # Number of solutions to generate per question
tokenizer = None
## ----------------------------------

def getLLMResponse(prompt, temp=1.0, max_new_tokens=52_000):
    """
    code to invoke the deepseek r1 for answer1 ## 131_072  """    
    
    client = OpenAI(base_url=f"http://localhost:{PORT}/v1", api_key="None", timeout=24 * 60 * 60)

    response = client.responses.create(
        model=MODEL_NAME,
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


class SolutionGeneration:
    def __init__(self):
        self.final_dataset = []

    def prepareData(self, opts):

        with open(opts.input_file, 'r') as f:
            for line in f:
                record = json.loads(line.strip())
                self.final_dataset.append(record)
        print(f"Total questions to generate solutions for: {len(self.final_dataset)}")
        

          



    def __processPrompts(self, data):

        solutiongeneration_prompt = """Question:
        {}

        Please reason step by step, and put your final answer within \\boxed{{}}.
        """       

        prompts = []

        for row in data:
            for _ in range(K):
                prompt = solutiongeneration_prompt.format(row["new_question"])
                prompts.append(prompt)

        return prompts

    def __sendSingleRequest(self, prompt, request_id):
        response, total_tokens, completion_tokens = getLLMResponse(prompt)
        return request_id, response, total_tokens, completion_tokens

    def generateSolutions(self, opts):

        ## Initialize the temp file
        with open(os.path.join(opts.temp_folder, opts.temp_file), "w") as f:
            pass

        print(f"Starting the solution generation loop")
        pbar = tqdm(total=len(self.final_dataset) // BATCH_SIZE+1, desc="Steps")
        idx = 0
        while idx < len(self.final_dataset):
            results = {}    
            futures_list = []
            total_completion_tokens = []


            end = min(idx+BATCH_SIZE, len(self.final_dataset))
            chunk = self.final_dataset[idx:end]
            prompts = self.__processPrompts(chunk)

            start_time = time.time()
            with concurrent.futures.ThreadPoolExecutor(max_workers=MAX_WORKERS) as executor:
                # Submit all tasks to the executor
                for i, prompt in enumerate(prompts):
                    # Pass i as request_id for easier tracking
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
            with open(os.path.join(opts.temp_folder, opts.temp_file), "a") as f:
                for i in range(len(chunk)):
                    for k in range(K):
                        sol_index = int(i*K + k)      
                        solution_1 = results.get(sol_index, {"response":''})['response']
                        chunk[i][f"new_solution_{k+1}"] = solution_1

                    json_string = json.dumps(chunk[i])
                    f.write(json_string + "\n")

            idx += BATCH_SIZE
            pbar.update(1)

    def saveResults(self, opts):

        # df = pd.read_json(opts.temp_file, lines=True) 
        temp_data = []
        with open(os.path.join(opts.temp_folder, opts.temp_file), "r") as f:
            for line in f:
                record = json.loads(line.strip())
                temp_data.append(record)

        with open(opts.output_file, 'w') as f:
            for record in temp_data:                
                json_string = json.dumps(record)
                f.write(json_string + "\n")
        print(f"Data saved..")
        print(f"!! -- Done -- !!")
        
        # check if the temp file exists and if it does, delete it
        if os.path.exists(os.path.join(opts.temp_folder, opts.temp_file)):
            os.remove(os.path.join(opts.temp_folder, opts.temp_file))
        


        

def main(opts):
    setVariables(opts)  ## to set global variables and initialize tokenizer
    sg = SolutionGeneration()
    sg.prepareData(opts)
    sg.generateSolutions(opts)
    sg.saveResults(opts)


def getArguments():
    parser = argparse.ArgumentParser()
    parser.add_argument("--config", required=False, help="All arguments required should be in the config yaml config file")
    parser.add_argument("--input_file", required=False, help="Path to input dataset")
    parser.add_argument("--temp_folder", required=False, default="temp",help="Path to temp folder")
    parser.add_argument("--temp_file", required=False, default="temp_solution_generation.jsonl", help="Path to temp file")
    parser.add_argument("--model_name", type=str, default="openai/gpt-oss-120b", help="Model to be used for generation")
    parser.add_argument("--port", type=int, default=8080, help="Port to be used for the model endpoint")
    parser.add_argument("--batch_size", type=int, default=4096, help="Batch size to be processed in each iteration")
    parser.add_argument("--max_workers", type=int, default=1024, help="Number of concurrent requests sent to the model endpoint")
    parser.add_argument("--k", type=int, default=1, help="Number of solutions to generate per question")
    parser.add_argument("--output_file", required=False, help="file to save")
    
    return parser.parse_args()


def setVariables(args):
    global MODEL_NAME, PORT, BATCH_SIZE, MAX_WORKERS, K, tokenizer

    MODEL_NAME = args.model_name
    PORT = args.port
    BATCH_SIZE = args.batch_size
    MAX_WORKERS = args.max_workers
    K = args.k

    ## Initialize the tokenizer for computing the completion tokens
    tokenizer = AutoTokenizer.from_pretrained(MODEL_NAME)
    print(f"Tokenizer initialized for model: {MODEL_NAME}")


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