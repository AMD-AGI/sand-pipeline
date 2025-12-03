"""
 Decontamination pipeline
 Usage:
    python decontamination.py
"""
import json
import yaml
import seaborn as sns
import matplotlib.pyplot as plt
import os
from sentence_transformers import SentenceTransformer
import torch
from vllm import LLM, SamplingParams
from tqdm import tqdm
from argparse import ArgumentParser
from transformers import AutoModelForCausalLM, AutoTokenizer
import multiprocessing
from collections import defaultdict
import pandas as pd


## Global initializations
QUESTION_FIELDS = ["question", "problem", "instruction"]  # Possible field names for questions in test sets and training data
model_name = "meta-llama/Llama-3.3-70B-Instruct"
embedding_model = "sentence-transformers/paraphrase-multilingual-MiniLM-L12-v2"
temp_dir = "data/temp"
temp_file = "temp_decontamination.jsonl"
temp_file_name = os.path.join(temp_dir, temp_file) 
input_path = "data/consistent_math.jsonl"
output_file = "data/consistent_dc_math.jsonl"
contaminated_output_file = "data/contaminated_math.jsonl"
test_set_paths = [
    "/home/LIMO/eval/data/gpqa/test.jsonl",
    "/home/LIMO/eval/data/aime/test.jsonl",
    "/home/LIMO/eval/data/aime25/test.jsonl",
    "/home/LIMO/eval/data/math/test.jsonl"
]
report_path = "data/report_math_dc.jsonl"
k = 5 # number of similar problems to consider
batch_size = 10000

# Global variables for training data and test problems  
train_data = []
train_problems = []
test_problems = []



def findSimilarities():
    global train_data, train_problems, test_problems

    ## read the test problems
    for path in test_set_paths:
        with open(path, 'r') as f:
            question_field = None
            for line in f:
                record = json.loads(line.strip())
                if question_field is None:
                    for field in QUESTION_FIELDS:
                        if field in record:
                            question_field = field
                            break
                if question_field:
                    test_problems.append(record[question_field])

    ## Get the SAND-MATH problems
    if input_path.endswith('.jsonl'):
        input_data = []
        with open(input_path, 'r') as f:
            for line in f:
                record = json.loads(line.strip())
                input_data.append(record)
    elif input_path.endswith('.json'):
        with open(input_path, 'r') as f:
            input_data = json.load(f)
    else:
        raise ValueError("Unsupported input file format. Please use .jsonl or .json files.")

    # Determine question field from first record
    question_field = None
    if input_data:
        for field in QUESTION_FIELDS:
            if field in input_data[0]:
                question_field = field
                break

    for record in input_data:
        if question_field:
            train_data.append(record)
            train_problems.append(record[question_field])


    ## get the embedding and similarities
    model = SentenceTransformer(embedding_model)
    embeddings_train = model.encode(train_problems, convert_to_tensor=True)
    embeddings_test = model.encode(test_problems, convert_to_tensor=True)
    # Compute cosine similarities
    similarities = model.similarity(embeddings_train, embeddings_test)

    ## packing each train record with k similar problems from test
    for idx_i, train_record in enumerate(train_data):
        test_similarities = similarities[idx_i]
        scores, indices = torch.topk(test_similarities, k=k)
        similar_test_problems = []
        
        for i, s in zip(indices, scores):
            similar_test_problems.append(
                {
                    'problem': test_problems[i],
                    'score': round(s.item(),3)
                }
                
            )
        train_data[idx_i]["similar_test_problems"] = similar_test_problems
        train_data[idx_i]["dcqid"] = idx_i

    print(f"Printing one sample record form train data\n\n {train_data[0]} \n\n")
    print(f"Total number of training records with similar test problems: {len(train_data)}")

## now get the similarity check. -----------------------------------------------------------------

def prepare_prompts(tokenizer):
    contamination_prompt_old = """Determine whether the provided new question is identical to or a paraphrased version of the existing question given. 
    If it is identical or paraphrased, respond with **yes** otherwise, respond with **no**. 
    Please ensure your final response is only yes or no, with no additional commentary.

    New Question:
    {}

    Existing Question:
    {}
    """

    train_ids = []
    train_questions = []
    test_questions = []
    prompts = []

    # Determine question field from first record
    question_field = None
    if train_data:
        for field in QUESTION_FIELDS:
            if field in train_data[0]:
                question_field = field
                break

    for record in train_data:
        train_id = record["dcqid"]
        train_question = record[question_field] if question_field else None
        
        for test_record in record["similar_test_problems"]:
            test_question = test_record["problem"]
            prompt = contamination_prompt_old.format(train_question, test_question)
            prompt =[{ "role": "user", "content": prompt}]
            prompts.append(prompt)
            train_ids.append(train_id)
            train_questions.append(train_question)  
            test_questions.append(test_question)

    processed_prompts = tokenizer.apply_chat_template(
                    prompts,
                    tokenize=False,
                    add_generation_prompt=True,
                )


    return train_ids, train_questions, test_questions, processed_prompts

def target_function(llm, sampling_params, train_ids, train_questions, test_questions, prompts, temp_dir, batch_size):   
    
    ## Initialize the temp file    
    with open(temp_file_name, "w") as f:
        pass

    idx=0
    pbar = tqdm(total=len(prompts)//batch_size+1, desc="steps:")
    while idx < len(prompts):
        end = min(idx+batch_size, len(prompts))
        prompts_batch = prompts[idx:end]
        outputs = llm.generate(prompts_batch, sampling_params=sampling_params)
        ## write the result to temp file
        with open(temp_file_name, 'a') as f:
            for i, output in enumerate(outputs):
                contamination_status = "UNK"
                response = output.outputs[0].text 
                response = "" if response is None else response
                if 'yes' in response.lower():
                    contamination_status = 'yes'
                elif 'no' in response.lower():
                    contamination_status = 'no'
                record = {
                    "dcqid": train_ids[idx + i],
                    "question": train_questions[idx + i],
                    "test_question": test_questions[idx + i],
                    "contamination_status": contamination_status,
                    "prompt": prompts_batch[i],
                    "generated_text": output.outputs[0].text                
                }
                json_string = json.dumps(record)
                f.write(json_string + "\n")

        idx += batch_size
        pbar.update(1)


def executer(llm, sampling_params, tokenizer):
    ## prepare prompts
    train_ids, train_questions, test_questions, prompts = prepare_prompts(tokenizer)    
    print(f"## Total number of prompts prepared: {len(prompts)}")
    target_function(llm, sampling_params, train_ids, train_questions, test_questions, prompts, temp_dir, batch_size)


def decontaminationTest():
    """ Inputs are vllm model , dataset list """
    # Model initilaization
    tokenizer = AutoTokenizer.from_pretrained(model_name)
    llm = LLM(
        model= model_name, 
        max_model_len= 40960 ,
        max_num_batched_tokens= 65536,
        max_num_seqs= 2048,
        max_seq_len_to_capture= 40960,
        gpu_memory_utilization= 0.95,  
        tensor_parallel_size = 8,
        enable_chunked_prefill = True
    )
    sampling_params = SamplingParams(temperature=0.6, max_tokens=40960)

    executer(llm, sampling_params, tokenizer)


def populateSummaries():


    ## read the data from the temp_file_name into pandas dataframe
    df = pd.read_json(temp_file_name, lines=True)
    # get the dcqid s where contamination_status is yes
    contaminated_qids = set(df[df["contamination_status"] == "yes"]["dcqid"].tolist())
    # get the unique records form the df for the contaminated qids take the first instance
    contaminated_records = df[(df["dcqid"].isin(contaminated_qids)) & (df["contamination_status"] == "yes")].drop_duplicates(subset=["dcqid"])
    # write these records to the list 
    contaminated_data = []
    for _, row in contaminated_records.iterrows():
        contaminated_data.append(row.to_dict())


    with open(contaminated_output_file, 'w') as f:
        for row in contaminated_data:
            json_string = json.dumps(row)
            f.write(json_string + "\n")

        

    ## now read the original data from the train_data and filter out the contaminated examples
    decontaminated_data = []
    contaminated = 0
    total = len(train_data)

    for record in train_data:
        if record["dcqid"] in contaminated_qids:
            contaminated += 1
        else:
            # drop the keys similar_test_problems and dcqid from the record
            record.pop("similar_test_problems", None)
            record.pop("dcqid", None)
            decontaminated_data.append(record)


    ## you have the decontaminated data , write it back
    with open(output_file, 'w') as f:
        for row in decontaminated_data:
            json_string = json.dumps(row)
            f.write(json_string + "\n")

    ## report 
    report_dict = {
            "total_data": total,
            "contaminated": contaminated,
            "contaminated_ratio":contaminated/total
        }

    with open(report_path, 'w') as f:
        json.dump(report_dict, f, indent=4)

    print(f"contamination report written to: {report_path}")





if __name__ == "__main__":
    findSimilarities()
    decontaminationTest()   
    populateSummaries()     