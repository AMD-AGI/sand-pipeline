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

input_file = "data/multimodal/final_generated_questions.jsonl"
output_file = "data/multimodal/generated_soluitons.jsonl"
overwrite = True
number_of_gens = 2
max_retries = 6

models = {
    'o3': getModelResponseo3,
    # 'deepseek_r1': getModelResponseDeepSeek,
    'gemini_2.5_pro': getModelResponseGemini
}

questions_data = []


if overwrite:
    with open(output_file, 'w') as f:
        pass

with open(input_file, 'r') as f:
    for line in f:
        record = json.loads(line.strip())
        questions_data.append(record)

pbar = tqdm(total=len(questions_data), desc="Solutions")
for record in questions_data:
    model = record["model"]
    if model not in models.keys():
        continue
    problem = record["problem"]
    prompt = solution_generation_prompt.format(problem)
    g, t = 0, 0
    solutions = []
    while g < number_of_gens and t < max_retries:
        try:
            solution = models[model](prompt)
            solutions.append(solution)
            g += 1
            t += 1
        except:
            t += 1
            pass

    ## append record
    if len(solutions) == 2:
        with open(output_file, 'a') as f:
            record["solution_1"] = solutions[0]
            record["solution_2"] = solutions[1]
            json_string = json.dumps(record)
            f.write(json_string + "\n")

    pbar.update(1)

    