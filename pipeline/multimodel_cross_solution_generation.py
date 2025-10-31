from utills import getModelResponseo3, getModelResponseGemini, getModelResponseDeepSeek, extract_question_answer_pair
import random
import requests
import ast
import re
import json
from tqdm import tqdm
import os
import time 
import openai



solution_generation_prompt = """Answer the math question below. Please reason step-by-step and put your final answer within \\boxed{{}}.
Question:
{}"""

input_file = "data/multimodal/consistent_solutions.jsonl"
output_file = "data/multimodal/generated_cross_solutions.jsonl"
overwrite = True
# number_of_gens = 2
max_retries = 5

models = {
    'o3': getModelResponseo3,
    'deepseek_r1': getModelResponseDeepSeek,
    'gemini_2.5_pro': getModelResponseGemini
}

questions_data = []


if overwrite:
    with open(output_file, 'w') as f:
        pass

with open(input_file, 'r') as f:
    for line in f:
        record = json.loads(line.strip())
        if record["consistent"] == 'yes':
            questions_data.append(record)

print(f"Total consistent questions: {len(questions_data)}")

pbar = tqdm(total=len(questions_data), desc="Solutions")
for record in questions_data:
    model = record["model"]
    # if model != "deepseek_r1": #not in models.keys():
    #     pbar.update(1)
    #     continue
    problem = record["problem"]
    for cross_model in models.keys():
        if cross_model != model and cross_model != "deepseek_r1":
            time.sleep(60/25) ## to enforce 25 requests per sec
            prompt = solution_generation_prompt.format(problem)
            t = 0
            solution = None
            while t < max_retries:
                try:
                    solution = models[cross_model](prompt)
                    break
                except:
                    t += 1
            record[f"{cross_model}_solution"] = solution

    ## append record    
    with open(output_file, 'a') as f:
        json_string = json.dumps(record)
        f.write(json_string + "\n")

    pbar.update(1)

    