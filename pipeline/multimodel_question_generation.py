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



question_generation_prompt_3 = """Generate one novel math problem and solution with a difficulty level at Olympiad questions. 
        The problem should have a single integer answer.
        The problem should primarily focus on {} and incorporate a clever mix of elements from {}.         
        Solution to the problems should be Step-by-step solution, concluding with the final answer enclosed in \\boxed{{}}.

        Your response should be formatted as follows:
        represent the problem with <Q> and </Q>
        represent the solution with <S> and </S>"""
models = {
    'o3': getModelResponseo3,
    # 'deepseek_r1': getModelResponseDeepSeek,
    'gemini_2.5_pro': getModelResponseGemini
}

per_model_questions = 100
aime_branches = ["elementary algebra", "geometry", "trigonometry", "number theory", "probability", "combinatorics"]
output_file_name = "data/multimodal/generated_questions.jsonl"
max_retries = 5

counts = {}
with open(output_file_name, "r") as f:
    for line in f:
        record = json.loads(line.strip())
        if record['problem'] is not None:
            if record['model'] not in counts:
                counts[record['model']] = 0
            counts[record['model']] += 1

# for key, value in counts.items():
#     counts[key] = per_model_questions - counts[key]

print(f"Current counts: {counts}")



for model, generationFunction in models.items():
    print(f"------------ Model: {model} ---------------")    
    i = counts[model] if model in counts else 0
    print(f"Questions to be generated: { per_model_questions - i}")
    pbar = tqdm(total=per_model_questions - i, desc="Questions")
    while i < per_model_questions:    
        qid = i+1
        branches = random.sample(aime_branches,2)
        pb, sb = branches[0], branches[1]
        prompt = question_generation_prompt_3.format(pb, sb)
        for nt in range(max_retries):
            try:
                response = generationFunction(prompt)
                break
            except: 
                pass
        if nt == max_retries:
            print(f"### ERROR ###: Generation is not working for the model {model}")
            break

        question, solution = extract_question_answer_pair(response)
        if question is None: continue
        record = {
            'model': model,
            'qid': qid,
            'problem': question,
            'solution': solution
        }
        with open(output_file_name, "a") as f:
            json_string = json.dumps(record)
            f.write(json_string + "\n")
        i += 1
        pbar.update(1)


        # print(f"Model: {model}, qid: {qid} is generated and written successfully ")


         




