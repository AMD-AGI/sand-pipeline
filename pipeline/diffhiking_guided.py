"""
Difficulty Hiking Pipeline for Math Problems (Guided)

Usage:
    python diffhiking_guided.py --input_file "data/input.jsonl" --output_file "data/output.jsonl" \
        --temp_file "data/temp.jsonl" --model_name "openai/gpt-oss-120b" --port 8080 \
        --batch_size 2048 --max_workers 512
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
import matplotlib.pyplot as plt
import seaborn as sns
from openai import OpenAI
from transformers import AutoTokenizer
from collections import defaultdict


## ------ Global Configuration ------
MODEL_NAME = "openai/gpt-oss-120b"
PORT = 8080
BATCH_SIZE = 2048
MAX_WORKERS = 512
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
        tool_choice= 'auto' #'none'
    )
    
    reasoning_responses = []
    for output in response.output:
        if hasattr(output, "text"):
            reasoning_responses.append(output.text)

    final_response = "\n\n".join(reasoning_responses)
    final_response = final_response + "\n</think>\n" + response.output_text
    completion_tokens = len(tokenizer(final_response)["input_ids"])

    return final_response, response.usage.total_tokens, completion_tokens #response.usage.completion_tokens

def extract_question_answer_pair(text):
    # Find all question contents (non-greedy match, dot matches newline)
    # re.findall returns a list of all captured group matches
    if len(text.split("</think>"))>1:
        text = text.split("</think>")[-1].strip()

    all_questions = re.findall(r"<Q>(.*?)</Q>", text, re.DOTALL)
    last_question = None
    if all_questions:
        # Get the last item from the list and strip whitespace
        last_question = all_questions[-1].strip()

    # Find all solution/answer contents (non-greedy match, dot matches newline)
    all_answers = re.findall(r"<S>(.*?)</S>", text, re.DOTALL)
    last_answer = None
    if all_answers:
        # Get the last item from the list and strip whitespace
        last_answer = all_answers[-1].strip()

    # Return the last found question and answer (either or both could be None)
    return (last_question, last_answer)


class DiffHikingGuided:
    def __init__(self):
        self.final_dataset = []
        self.df_concepts = None
        self.df_theorems = None

    def prepareData(self, opts):        

        with open(opts.input_file, 'r') as f:
            for line in f:
                record = json.loads(line.strip())
                self.final_dataset.append(record)        
        
        ## for sample run take only 10 records
        # self.final_dataset = self.final_dataset[:10]

        print(f"Total data length to hike difficulty: {len(self.final_dataset)}")

        ## Preparing metedata
        with open("configs/diff_topics.yaml", "r") as f:
            metadata = yaml.safe_load(f) 
        
        
        # 2. Lists to store flattened data
        concepts_data = []
        theorems_data = []

        # 3. Iterate through the nested dictionary structure
        # Structure: Branch -> Topic -> Category -> List of Items
        for branch, topics in metadata.items():
            # branch = "Number Theory"
            if isinstance(topics, dict):
                for topic, contents in topics.items():
                    # contents is the dictionary containing 'tools_concepts' and 'theorems'
                    
                    # Extract Concepts
                    if 'tools_concepts' in contents and contents['tools_concepts']:
                        for concept in contents['tools_concepts']:
                            concepts_data.append({
                                'branch': branch,
                                'concept': concept
                            })

                    # Extract Theorems
                    if 'theorems' in contents and contents['theorems']:
                        for theorem in contents['theorems']:
                            theorems_data.append({
                                'branch': branch,
                                'theorem': theorem
                            })

        # 4. Create DataFrames
        self.df_concepts = pd.DataFrame(concepts_data)
        self.df_theorems = pd.DataFrame(theorems_data)        


        



    def __processPrompts(self, data):
        
        diff_hiking_prompt = """You are an expert math problem crafter specializing in very hard Olympiad level questions. Your task is to transform the original problem provided below into a new problem with a target difficulty of **challenging Olympiad problem** `(IMO Shortlist level)`.

        Central Theorem: {}  
        Supporting Concept/Tool: {}  

        **Transformation Instructions for the New Problem:**

        1.  **Deep Synthesis of Concepts:** The solution to the new problem must *critically depend* on the interplay between the original problem's core theme and the newly introduced **Central Theorem**, **Supporting Concept/Tool**. This synthesis should feel natural and integral to the problem.

        2.  **Reliance on Olympiad-Level Theorem:** The application of **Central Theorem** must be non-trivial, essential for reaching the solution, and demonstrate a deep understanding of the theorem. A superficial application or alternative simpler methods should not suffice.

        3. **Central Theorem must be disguised:** Central Theorem must be cleaverly disguised. Do not use the **Central Theorem** name in the problem.

        4.  **Multiple Non-Trivial Intermediate Steps/Lemmas:** Design the problem so its solution requires at least 2-3 distinct, non-obvious intermediate steps. These steps should logically connect the initial problem setup, any necessary lemmas, the application of **Central Theorem**, **Supporting Concept/Tool**, and the derivation of the final answer.

        5.  **High Degree of Abstraction or Generalization (If Appropriate):** If appropriate, replace concrete numbers from the original with parameters, or frame the question more generally to enhance the conceptual challenge.

        6.  **Clarity and Soundness:** The new problem statement must be clear, unambiguous, and mathematically sound.

        7.  **Answer Format:** The problem must be constructed such that it has a **single final numerical answer.**

        8.  Also Provide an answer to the new difficult question you created for the verification.

        **Output Format:**
        Return the final difficult problem enclosed within `<Q>` and `</Q>` tags and new solution enclosed within <S> and </S>.

        **Original Problem:**
        `{}`"""



        prompts = []        
        supporting_theorems = []
        supporting_concepts = [] 
        
        for row in data:
            branch = row["branch"].lower() ## branch of the question
            
            ## sample one theorem from the same branch, if the record for branch is zero then sample any theorem
            if len(self.df_theorems[self.df_theorems['branch'].str.lower() == branch]) == 0:
                branch = random.choices(self.df_theorems['branch'].unique().tolist(), k=1)[0].lower()
                
            advanced_theorem = random.choices(self.df_theorems[self.df_theorems['branch'].str.lower() == branch]['theorem'].tolist(), k=1)[0]
            
            # sample one concept from any branch
            advanced_concept = random.choices(self.df_concepts['concept'].tolist(), k=1)[0]

            if advanced_theorem is None or advanced_concept is None:
                ## raise the error and terminate the execution
                raise ValueError(f"No theorem or concept found for branch: {branch}")
                
            
            prompt = diff_hiking_prompt.format(advanced_theorem, advanced_concept, row["question"])
            prompts.append(prompt)          
            supporting_theorems.append(advanced_theorem)
            supporting_concepts.append(advanced_concept)

        
        return prompts, supporting_theorems, supporting_concepts

    def __sendSingleRequest(self, prompt, request_id):
        response, total_tokens, completion_tokens = getLLMResponse(prompt, max_new_tokens=52000)
        return request_id, response, total_tokens, completion_tokens

    def hikeDifficulty(self, opts):

        # Initialize the temp file
        with open(opts.temp_file, "w") as f:
            pass

        print(f"Starting the difficulty hiking loop")
        pbar = tqdm(total=len(self.final_dataset) // BATCH_SIZE +1, desc="Steps")
        idx = 0
        while idx < len(self.final_dataset):
            results = {}    
            futures_list = []
            total_completion_tokens = []


            end = min(idx+BATCH_SIZE, len(self.final_dataset))
            chunk = self.final_dataset[idx:end]
            prompts, supporting_theorems, supporting_concepts = self.__processPrompts(chunk)

            start_time = time.time()
            with concurrent.futures.ThreadPoolExecutor(max_workers=MAX_WORKERS) as executor:
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
                        print(f"Error retrieving result from future: {e}")
                        

            end_time = time.time()
            total_duration = end_time - start_time     
            print(f"Throughput: {round(sum(total_completion_tokens)/total_duration, 2)}")   

            ## store the results to temp folder
            with open(opts.temp_file, "a") as f:
                for i in range(len(chunk)):
                    generated_text = results[i]['response']
                    problem, solution = extract_question_answer_pair(generated_text)                    
                    chunk[i]["new_question"] = problem
                    chunk[i]["new_solution"] = solution                    
                    chunk[i]["supporting_theorem"] = supporting_theorems[i]
                    chunk[i]["supporting_concept"] = supporting_concepts[i]


                    json_string = json.dumps(chunk[i])
                    f.write(json_string + "\n")

            idx += BATCH_SIZE
            pbar.update(1)
            # break

    def saveResults(self, opts):

        # df = pd.read_json(opts.temp_file, lines=True) 
        temp_data = []
        with open(opts.temp_file, "r") as f:
            for line in f:
                record = json.loads(line.strip())
                temp_data.append(record)
        
        
        
        with open(opts.output_file, 'w') as f:
            for record in temp_data:
                if record["new_question"] is not None and record["new_solution"] is not None:
                    json_string = json.dumps(record)
                    f.write(json_string + "\n")

        return
        

def main(opts):
    setVariables(opts)  ## to set global variables and initialize tokenizer
    dr = DiffHikingGuided()
    dr.prepareData(opts)
    dr.hikeDifficulty(opts)
    dr.saveResults(opts)


def getArguments():
    parser = argparse.ArgumentParser()
    parser.add_argument("--config", required=False, help="All arguments required should be in the config yaml config file")
    parser.add_argument("--input_file", required=False, help="Path to input dataset")
    parser.add_argument("--temp_file", required=False, help="Path to temp file")
    parser.add_argument("--model_name", type=str, default="openai/gpt-oss-120b", help="Model to be used for generation")
    parser.add_argument("--port", type=int, default=8080, help="Port to be used for the model endpoint")
    parser.add_argument("--batch_size", type=int, default=2048, help="Batch size to be processed in each iteration")
    parser.add_argument("--max_workers", type=int, default=512, help="Number of concurrent requests sent to the model endpoint")
    parser.add_argument("--output_file", required=False, help="file to save")
    
    return parser.parse_args()


def setVariables(args):
    global MODEL_NAME, PORT, BATCH_SIZE, MAX_WORKERS, tokenizer

    MODEL_NAME = args.model_name
    PORT = args.port
    BATCH_SIZE = args.batch_size
    MAX_WORKERS = args.max_workers

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