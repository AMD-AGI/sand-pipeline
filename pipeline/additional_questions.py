"""
additional questions filateraiton

take random sample and save as json lines files

run qwen 32 evaluation

run classification

sort by length

take 83 per branch out of 6 branches
"""
import json
import pandas as pd
import datasets as ds
from vllm import LLM, SamplingParams
from transformers import AutoModelForCausalLM, AutoTokenizer
from lm_eval.tasks.minerva_math.utils import (
    get_unnormalized_answer,
    is_equiv,
    last_boxed_only_string,
    normalize_final_answer,
)
from lm_eval.tasks.minerva_math.utils import remove_boxed
import re
import os

##-------------------global variables-------------------##
llm = None
tokenizer = None


def getData():
    dataset_path = "open-r1/OpenR1-Math-220k"
    directory = "data2/open-r1"
    save_path = f"{directory}/OpenR1-Math-Rand-5k.jsonl"

    dataset = ds.load_dataset(dataset_path, 'all', split="train")
    # Get a list of unique problem_type values  
    problem_types = dataset.unique("problem_type")  
    print("Unique problem types:", problem_types)

    # Create an empty list to store subsets  
    subsets = []  
  
    # For each unique problem type, filter and select up to 1000 random rows  
    for pt in problem_types:  
        # Filter the dataset to only include rows with the current problem_type  
        filtered_subset = dataset.filter(lambda example: example["problem_type"] == pt)  
      
        # Shuffle and then select 1000 rows (if there are fewer than 1000, it will select as many as available)  
        filtered_subset = filtered_subset.shuffle(seed=41)  
        sample_size = min(5000, len(filtered_subset))  
        sampled_subset = filtered_subset.select(range(sample_size))  
        
        subsets.append(sampled_subset)  
        print(f"Selected {sample_size} examples for problem type: {pt}")  
  
    # Concatenate all the subsets into one dataset  
    final_dataset = ds.concatenate_datasets(subsets)
    
    
    # Save the subset as a JSONL file    
    # os.makedirs(directory, exist_ok=True)
    final_dataset.to_json(save_path, orient="records", lines=True)  
    print("Random 5k samples are saved to disk")
    return save_path

def getVllmModelObject(model_name="/home/machaita/hf_models/Qwen/Qwen2.5-32B-Instruct"):
    # global llm, tokenizer
    llm = LLM(
        model=model_name, 
        max_model_len=16000,
        max_num_batched_tokens=65536,
        max_num_seqs=4096,
        max_seq_len_to_capture=16000,
        gpu_memory_utilization=0.99,
        tensor_parallel_size=8
    )  

    tokenizer = AutoTokenizer.from_pretrained(model_name)

    return tokenizer, llm

def prepare_prompts_soluitons(data, tokenizer):
    system_prompt = """You are given with a mathmatics question. Think step by step and put the final answer in a box.
    Question:
    {}
    """   
    prompts = []
    for i in range(len(data)):
        question = data[i]["problem"]
        prompts.append([{"role": "user", "content": system_prompt.format(question)}])
        
    prompts_templated = tokenizer.apply_chat_template(
                    prompts,
                    tokenize=False,
                    add_generation_prompt=True
                )

    return prompts_templated

def prepare_prompts_eval(data, tokenizer):
    system_prompt = """You are given with a groundtruth final answer and student solution for a mathmatics question.
    You need to say wether student answer is correct or not comparing with the ground truth answer. Focus mostly on the final answer part of student solution.
    Your response should be just `correct` or `wrong` represented with <C></C> nothing else.
    Question:
    {}

    Ground Truth:
    {}

    Student Solution:
    {}
    """
    prompts = []
    for i in range(len(data)):
        question = data[i]["problem"]
        answer = data[i]["answer"]
        predicted_answer = data[i]["predicted_generation"]
        prompts.append([{"role": "user", "content": system_prompt.format(question, answer, predicted_answer)}])
        
    prompts_templated = tokenizer.apply_chat_template(
                    prompts,
                    tokenize=False,
                    add_generation_prompt=True
                )

    return prompts_templated

def prepare_prompts_tagging(data, tokenizer):
    system_prompt = """Given a question and answer pick one of the mathematics branch it is most releant to from this list.
    You must respond only one branch and also strictly form this list only. ["elementary algebra", "geometry", "trigonometry", "number theory", "probability", "combinatorics"]

    Your response should be only one mathematics branch represented with <B> and </B>

    Question:
    {}

    Answer:
    {}

    """
    prompts = []
    for i in range(len(data)):
        question = data[i]["problem"]
        answer = data[i]["predicted_generation"]
        # predicted_answer = data[i]["predicted_answer"]
        prompts.append([{"role": "user", "content": system_prompt.format(question, answer)}])
        
    prompts_templated = tokenizer.apply_chat_template(
                    prompts,
                    tokenize=False,
                    add_generation_prompt=True
                )

    return prompts_templated



def letTheModelAnswer(llm, tokenizer, dataset:str):
    ##------Some variables-----------
    BATCH_SIZE = 4096
    sampling_params = SamplingParams(temperature=0.0, max_tokens=8192)

    ## read the dataset  and the questions from it    
    data = []
    with open(dataset, 'r') as f:
        for line in f:
            record = json.loads(line.strip())            
            data.append(record)

    ## iterate over batches
    print(f"******************Total questions to answer: {len(data)}*****************")
    start = 0    
    while start < len(data):
        print(f"[--] Processing start:{start} for total {len(data)}")        
        end = min(start+BATCH_SIZE, len(data))
        chunk = data[start:end]
        prompts = prepare_prompts_soluitons(chunk, tokenizer)
        ## call the llm
        outputs = llm.generate(prompts, sampling_params)        

        ## save the predictions
        for i, output in enumerate(outputs):
            data[start+i]["prompt"] = prompts[i]
            data[start+i]["predicted_generation"] = output.outputs[0].text

        start += BATCH_SIZE

    ## save the results
    save_path = f"{dataset.split('.')[0]}_predictions.jsonl"
    with open(save_path, 'w') as f:
        for record in data:
            json_string = json.dumps(record)
            f.write(json_string + "\n")

    return save_path

def extract_correctness(text):
    
    # Search for the question part (non-greedy match, dot matches newline)
    c_match = re.search(r"<C>(.*?)</C>", text, re.DOTALL)
    correcness = None
    if c_match:
        correcness = c_match.group(1).strip() # Extract captured group 1 and strip whitespace
    
    # Return the tuple only if BOTH parts were successfully found
    if correcness :
        return correcness
    else:
        # If either the question or the answer tag (or both) was missing
        return None
def extract_branch(text):
    
    # Search for the question part (non-greedy match, dot matches newline)
    b_match = re.search(r"<B>(.*?)</B>", text, re.DOTALL)
    branch = None
    if b_match:
        branch = b_match.group(1).strip() # Extract captured group 1 and strip whitespace
    
    # Return the tuple only if BOTH parts were successfully found
    if branch :
        return branch
    else:
        # If either the question or the answer tag (or both) was missing
        return None


def extractAnswer(dataset:list):
    no_answers = 0
    for i in range(len(dataset)):
        try:
            dataset[i]["predicted_answer"] = normalize_final_answer(remove_boxed(last_boxed_only_string(dataset[i]["predicted_generation"])))
        except Exception as e:
            # print(f"Example {i+1} has no answer")
            dataset[i]["predicted_answer"] = "NO ANSWER"
            no_answers += 1
    print(f"--[update]: Out of all {len(dataset)} there are {no_answers} no answers--")

    return dataset

def evalSolutions(llm, tokenizer, dataset:str):
    ##-------Some variables------------
    BATCH_SIZE = 4096
    sampling_params = SamplingParams(temperature=0.0, max_tokens=16000)
    ## read the data
    data = []
    with open(dataset, 'r') as f:
        for line in f:
            record = json.loads(line.strip())
            data.append(record)
    data = extractAnswer(data) ## adds a new column with extracted answer from predicted solution
    start = 0
    while start < len(data) :        
        end = min(start+BATCH_SIZE, len(data))
        chunk = data[start:end]
        prompts = prepare_prompts_eval(chunk, tokenizer)
        outputs = llm.generate(prompts, sampling_params)

        
        ## extract the correcness from the LLM gudge 
        for i, output in enumerate(outputs):
            data[start+i]["correctness_prompt"] = prompts[i]
            data[start+i]["correctness"] = extract_correctness(output.outputs[0].text)

        start += BATCH_SIZE
    ## save the results
    # save_path = f"{dataset.split('.')[0]}_predictions.jsonl"
    with open(dataset, 'w') as f:
        for record in data:
            json_string = json.dumps(record)
            f.write(json_string + "\n")

    return dataset

def branchTagging(llm, tokenizer, dataset:str):
    ##-------Some variables------------
    BATCH_SIZE = 4096
    sampling_params = SamplingParams(temperature=0.0, max_tokens=16000)
    ## read the data
    data = []
    with open(dataset, 'r') as f:
        for line in f:
            record = json.loads(line.strip())
            data.append(record)

    start = 0
    while start < len(data) :
        
        end = min(start+BATCH_SIZE, len(data))
        chunk = data[start:end]
        prompts = prepare_prompts_tagging(chunk, tokenizer)
        outputs = llm.generate(prompts, sampling_params)
        
        ## extract the correcness from the LLM Judge 
        for i, output in enumerate(outputs):
            data[start+i]["branch_prompt"] = prompts[i]
            data[start+i]["branch"] = extract_branch(output.outputs[0].text)

        start += BATCH_SIZE
    ## save the results
    # save_path = f"{dataset.split('.')[0]}_predictions.jsonl"
    with open(dataset, 'w') as f:
        for record in data:
            json_string = json.dumps(record)
            f.write(json_string + "\n")

    return dataset

def printStats(dataset):

    data = []
    with open(dataset, 'r') as f:
        for line in f:
            record = json.loads(line.strip())
            data.append(record)

    branch_counts = {}
    for record in data:
        if record["correctness"] == "wrong":
            if record["problem_type"] not in branch_counts.keys():
                branch_counts[record["problem_type"]] = 0
            branch_counts[record["problem_type"]] += 1
    
    print(f"Branch wise counts: {branch_counts}")

def getData(dataset):
    n = 83    
    output_file_path = "data2/open-r1/open_r1_selected.json"

    data = []
    with open(dataset, 'r') as f:
        for line in f:
            record = json.loads(line.strip())
            data.append(record)

    branches = ['Geometry', 'Algebra', 'Combinatorics', 'Logic and Puzzles', 'Number Theory', 'Calculus']
    final_data = []
    for branch in branches:
        filtered = []
        incorrect = 0
        for record in data:
            if record["problem_type"] == branch and record['correctness'] == "wrong" and record["is_reasoning_complete"][0] and record["correctness_math_verify"][0]:
                filtered.append((len(record["generations"][0]), record))
                if not record["correctness_math_verify"][0]: incorrect += 1
        filtered.sort(key=lambda x: x[0], reverse=True)
        filtered = filtered[:n]
        for _, record in filtered:
            final_data.append(record)
        print(f"For branch {branch}, filtered data: {len(filtered)}, incorrect data: {incorrect}")
    print(f"Total data filtered: {len(final_data)} \n How much it should be : {83 * 6}")
    ## converting into alpaca format
    alpaca_data = []
    for i, record in enumerate(final_data):
        output = record["generations"][0].split("</think>")[0].replace("<think>\n", "")
        new_record = {                
            "instruction": record["problem"],
            "input":"",
            "output": output,
            "system": "Please reason step by step, and put your final answer within \\boxed{}."
        }
        alpaca_data.append(new_record)

    ## writing data to json file
    with open(output_file_path, "w") as f:
        json.dump(alpaca_data, f, indent=2)


    print(f"Alpaca data prepared and saved to disk: {output_file_path}")

        



if __name__ == "__main__":
    # # print(f"\n***********Data sampling step***********\n")
    # dataset = getData()
    # print(f"\n***********get vllm object***********\n")
    # tokenizer, llm = getVllmModelObject()
    # print(f"\n***********Solution generation step***********\n")
    # dataset = letTheModelAnswer(llm, tokenizer, dataset)
    dataset = "/home/machaita/LIMOSYN/data2/open-r1/OpenR1-Math-Rand-5k_predictions.jsonl"
    # print(f"\n***********Runnign evaluations***********\n")
    # dataset = evalSolutions(llm, tokenizer, dataset)
    # # print(f"\n***********Runnign Branch Tagging***********\n")
    # # dataset = branchTagging(llm, tokenizer, dataset)
    # printStats(dataset)
    getData(dataset)



    




        


        

    

            

            






