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


class DiffRating:
    def __init__(self):
        pass

    def prepareData(self, opts):

        self.final_dataset = []

        print(f"\n\n==> Processing AMD/SAND-Math \n\n")

        with open(opts.sandmath_path, 'r') as f:
            for line in f:
                record = json.loads(line.strip())
                if record["diff_rating"] < 6:
                    self.final_dataset.append(record)

        ## existing data
        start = 0
        if os.path.exists(opts.output_file) and opts.start_again.lower() == "no":
            print(f"File exists: {opts.output_file}")
            existing_data = []
            with open(opts.output_file, 'r') as f:
                for line in f:
                    record = json.loads(line.strip())
                    existing_data.append(record)
            start = len(existing_data)

        self.final_dataset = self.final_dataset[start:]
        # self.final_dataset = self.final_dataset[:2] ## sample for testing

        print(f"Total data length having difficulty rating less than 6, to process: {len(self.final_dataset)}")

        ## Preparing metedata
        with open("configs/diff_topics2.yaml", "r") as f:
            metadata = yaml.safe_load(f) 
        
        
        self.concepts = defaultdict(list)

        for branch, values in metadata.items():
            if type(metadata[branch]) == list:
                # print(metadata[branch])
                continue
            
            safe_branch = branch.lower()           
            
            for topic, values in metadata[branch].items():                
                if values["concepts"] is not None:
                    self.concepts[safe_branch] += values["concepts"]

        print(f"All branches: \n {self.concepts.keys()}")
        # print(f" \n tools_concepts: \n {self.concepts.values()} \n\n")


        



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

        diff_hiking_prompt_new = """
        I want you to create an Olympiad-level problem by integrating an advanced concept into a simpler base problem. I will provide two or more advanced concepts, choose the one that allows for the most natural and elegant integration.

        **1. Base Problem:**
        {base_problem}        

        **2. Advanced Concept Options list:**
        {advanced_concept_options}

        **3. Your Task:**

        **a) Evaluate and Choose:** First, analyze the **Core Mechanic** of the base problem. Try which **Advanced Concept Option** can be integrated most seamlessly to create a challenging and elegant new problem. The goal is to avoid a problem that feels forced or artificial.

        **b) Create the Problem:** construct the new Olympiad-level problem. It must:
            i. Have a single, unique numerical answer.
            ii. Be stated concisely, hiding the required solution path.
            iii. Ask for an extremal value (min/max), a count of objects, a sum of solutions, or a similar specific numerical property.

        **c) Provide the Solution:** Finally, provide a detailed, step-by-step solution for the new problem you've created. This is crucial to verify that the problem is well-posed, has the intended difficulty, and the chosen concept is indeed the key to solving it.

        **4. Output Format:** Return the final difficult problem enclosed within `<Q>` and `</Q>` tags and the solution to the problem enclosed within <S> and </S>."""

        diff_hiking_prompt_new_2 = """Act as an expert mathematics Olympiad problem setter. Your task is to take the following base problem and elevate its difficulty to an Olympiad level.

        **1. Base Problem:**
        {base_problem}

        **2. Techniques for Increasing Difficulty (Choose the most natural ones):**

        a) **Obfuscate the Givens:** Rephrase the initial conditions using equivalent but less obvious statements. Instead of giving `a+b`, give `a^2+b^2` or `a^3+b^3`, forcing the solver to work backwards for the elementary symmetric polynomials.

        b) **Generalize the Structure:** Frame the problem within a sequence or a function. For example, if the problem involves roots `x` and `y`, define a sequence `S_n = x^n + y^n` and ask a question about a large or general term. This forces the discovery of a recurrence relation.

        c) **Introduce Elegant Constraints:** Change the domain of the variables. Require that certain parameters must be **integers**, **primes**, or **rational numbers**. This can transform a simple algebra problem into a deep number theory problem.

        d) **Ask an Extremal or Inverse Question:** Instead of asking for a specific value, ask for the **minimum/maximum** possible value of a quantity. Or, ask for the **sum of all possible integer parameters** for which the problem has a solution. This forces an analysis of the conditions for existence (e.g., a discriminant being non-negative or a perfect square).

        **3. Your Task:**
        Apply the most suitable of these techniques to the base problem. Then:

        a) **Create the Final Problem:** State the new, challenging problem. It must be phrased elegantly and have a single, unique numerical answer.
        b) **Provide the Full Solution:** Write a detailed, step-by-step solution to your new problem. 

        **4. Output Format:** Return the final difficult problem enclosed within `<Q>` and `</Q>` tags and the solution to the problem enclosed within <S> and </S>.
        
        """


        prompts = []        
        supporting_concepts = [] 
        advanced_concepts = []
        for row in data:
            # branch = row["branch"].lower() ## branch of the question
            # safe_branch = "_".join(branch.lower().split(" "))
            # ## identify 2 concepts from the other branches
            # candidate_concepts = []
            # for k, v in self.concepts.items():
            #     if k != safe_branch:
            #         candidate_concepts += v
            # # get 2 concepts            
            # advanced_concepts = random.choices(candidate_concepts, k=2)

            prompt = diff_hiking_prompt_new_2.format(base_problem=row["question"])
            prompts.append(prompt)            
            supporting_concepts.append(advanced_concepts)

        
        return prompts, supporting_concepts

    def __sendSingleRequest(self, prompt, request_id):
        response, total_tokens, completion_tokens = getLLMResponse(prompt, max_new_tokens=52000)
        return request_id, response, total_tokens, completion_tokens

    def hikeDifficulty(self, opts):
        batch_size = 2048
        max_workers = 512
        

        # Initialize the temp file
        with open(opts.temp_file, "w") as f:
            pass

        print(f"Starting the difficulty hiking loop")
        pbar = tqdm(total=len(self.final_dataset) // batch_size +1, desc="Steps")
        idx = 0
        while idx < len(self.final_dataset):
            results = {}    
            futures_list = []
            total_completion_tokens = []


            end = min(idx+batch_size, len(self.final_dataset))
            chunk = self.final_dataset[idx:end]
            prompts, supporting_concepts = self.__processPrompts(chunk)

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
                        print(f"Error retrieving result from future: {e}")
                        

            end_time = time.time()
            total_duration = end_time - start_time     
            print(f"Throughput: {round(sum(total_completion_tokens)/total_duration, 2)}")   

            ## store the results to temp folder
            with open(opts.temp_file, "a") as f:
                for i in range(len(chunk)):
                    generated_text = results[i]['response']
                    problem, solution = extract_question_answer_pair(generated_text)                    
                    chunk[i]["new_problem"] = problem
                    chunk[i]["new_solution"] = solution                    
                    chunk[i]["supporting_concepts"] = supporting_concepts[i]


                    json_string = json.dumps(chunk[i])
                    f.write(json_string + "\n")

            idx += batch_size
            pbar.update(1)
            # break

    def saveResults(self, opts):

        # df = pd.read_json(opts.temp_file, lines=True) 
        temp_data = []
        with open(opts.temp_file, "r") as f:
            for line in f:
                record = json.loads(line.strip())
                temp_data.append(record)
        
        mode = 'a' if os.path.exists(opts.output_file) and opts.start_again.lower() == "no" else 'w'
        print(f"Mode: {mode}")
        with open(opts.output_file, mode) as f:
            for record in temp_data:
                json_string = json.dumps(record)
                f.write(json_string + "\n")

        return
        

def main(opts):
    dr = DiffRating()
    dr.prepareData(opts)
    dr.hikeDifficulty(opts)
    dr.saveResults(opts)


def getArguments():
    parser = argparse.ArgumentParser()
    parser.add_argument("--config", required=False, help="All arguments required should be in the config yaml config file")
    parser.add_argument("--sandmath_path", required=False, help="Path to input dataset")
    parser.add_argument("--temp_file", required=False, help="Path to temp file")
    parser.add_argument("--model", required=False, help="Model path or model name")
    parser.add_argument("--start_again", required=False, default='yes', type=str, help="from where to start")
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


## python scripts/deepseek_diffhiking.py --sandmath_path data/generated_qa_128_256_128_consistent_diffrated.jsonl --temp_file data/temp/deepseek_diffhiking_temp.jsonl --output_file data/generated_qa_128_256_128_diffhiked.jsonl

## nohup python scripts/deepseek_diffhiking.py --sandmath_path data/jun1625/aime25.jsonl --temp_file data/temp/deepseek_diffhiking_temp.jsonl --output_file data/jun1625/aime25_diffhiked.jsonl > output.log 2>&1 &

## nohup python scripts/deepseek_diffhiking.py --sandmath_path data/jun1625/nextDataForDiffHiking7_5k.jsonl --temp_file data/temp/deepseek_diffhiking_temp.jsonl --output_file data/jun1625/next7_5DiffHiked.jsonl > output.log 2>&1 &

# nohup python scripts/deepseek_diffhiking.py --sandmath_path data/gptoss/generated_qa_000028_diffrating_stage1.jsonl --temp_file data/temp/deepseek_diffhiking_temp.jsonl --output_file data/gptoss/generated_qa_000028_diffhiked.jsonl > output.log 2>&1 &


