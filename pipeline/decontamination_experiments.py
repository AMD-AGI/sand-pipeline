"""
get the data from deduplicaiton output (data/may1625/deduplicated.jsonl) approx records should be 16285
run the decontaminaiton experiments with different embeddigns model and judge models

Candidate embeddign models:
----------------------------
sentence-transformers/paraphrase-multilingual-MiniLM-L12-v2
Alibaba-NLP/gte-Qwen2-1.5B-instruct
Qwen/Qwen3-Embedding-0.6B
BAAI/bge-m3  (568M)
NovaSearch/stella_en_1.5B_v5  (dunzhang/stella_en_1.5B_v5)
"""

import json
import yaml
# import seaborn as sns
# import matplotlib.pyplot as plt
import os
from sentence_transformers import SentenceTransformer
import torch
# from vllm import LLM, SamplingParams
from tqdm import tqdm
from argparse import ArgumentParser
from transformers import AutoModelForCausalLM, AutoTokenizer
import re
import time
from collections import defaultdict
import pandas as pd
import openai
import random



embedding_models = [
    'sentence-transformers/paraphrase-multilingual-MiniLM-L12-v2',
    'Alibaba-NLP/gte-Qwen2-1.5B-instruct',
    'dunzhang/stella_en_1.5B_v5'
]

testset_paths = [
    "/dockerx/home/machaita/LIMO/eval/data/aime/test.jsonl",
    "/dockerx/home/machaita/LIMO/eval/data/math/test.jsonl",
    "/dockerx/home/machaita/LIMO/eval/data/amc/test.jsonl",
]

traindata_path = "data/may1625/deduplicated.jsonl"
output_file = "data/may1625/decontamination_experiment_results.jsonl"
contamination_final_file = "data/may1625/decontamination_experiment_final.jsonl"
contamination_data_file = "data/may1625/decontamination_experiment_contaminated.jsonl"
encoding_timings = "data/may1625/encoder_timings.jsonl"
model_name = "/dockerx/mnt/m2m_nobackup/machaita/models/meta-llama/Llama-3.3-70B-Instruct"

llm = None
tokenizer = None
sampling_params = None
similarity_data = []



def prepareData():
    global similarity_data

    test_problems = []
    train_problems = []


    with open(contamination_final_file, "w") as f:
        pass

    with open(encoding_timings, "w") as f:
        pass    

    for path in testset_paths:
        with open(path, 'r') as f:
            for line in f:
                record = json.loads(line)
                test_problems.append(record["problem"])

    with open(traindata_path, 'r') as f:
        for line in f:
            record = json.loads(line.strip())
            problem = record["problem"]        
            train_problems.append(problem)
    
    # train_problems = train_problems[:5] ## for testing purpose

    
    # embedding_model = "sentence-transformers/paraphrase-multilingual-MiniLM-L12-v2"
    for embedding_model in embedding_models:
        ## get the embedding and similarities
        print(f"\n\n ==> embedding_model: {embedding_model} \n\n")

        model = SentenceTransformer(embedding_model)        
        print(f"Encoding the data")
        # Start timing
        start_time = time.perf_counter()
        embeddings_train = model.encode(train_problems, convert_to_tensor=True)
        embeddings_test = model.encode(test_problems, convert_to_tensor=True)
        # End timing
        end_time = time.perf_counter()
        elapsed = end_time - start_time

        print(f" ==> Data encoding took {elapsed:.2f} seconds")
        
        # Compute cosine similarities
        print(f"Computing the similarities")
        similarities = model.similarity(embeddings_train, embeddings_test)
        print(f"Shape of the similarities matrix is: {similarities.shape}")
        ## RELEASE MEMORY
        model = None
        ## packing each train record with k similar problems from test
        for idx_i, train_problem in enumerate(train_problems):
            test_similarities = similarities[idx_i]
            scores, indices = torch.topk(test_similarities, k=5)

            similar_test_problems = []    
            for i, s in zip(indices, scores):
                similar_test_problems.append(
                    {
                        'test_id': i.item(),
                        'problem': test_problems[i],
                        'score': round(s.item(),3)
                    }
                    
                )
            record_to_save = {
                'embedding_model': embedding_model.split("/")[-1],
                'train_id': idx_i,
                'problem': train_problem,
                'similar_test_problems': similar_test_problems
            }
            similarity_data.append(record_to_save)

        ## writing encoding time
        with open(encoding_timings, "a") as f:
            record_to_save = {
                'embedding_model': embedding_model.split("/")[-1],
                'elapsed': elapsed,
                'total_data_encoded': len(train_problems) + len(test_problems)
            }
            json_string = json.dumps(record_to_save)
            f.write(json_string + "\n")
    

    ## save the data

    with open(output_file, "w") as f:
        for record in similarity_data:
            json_string = json.dumps(record)
            f.write(json_string + "\n")

    print(f"Intermediate data seaved")
    ## intermediate data saved


def intializeModel():
    global llm, sampling_params, tokenizer

    tokenizer = AutoTokenizer.from_pretrained(model_name)

    llm = LLM(
        model= model_name, 
        max_model_len= 12000,
        max_num_batched_tokens= 65536,
        max_num_seqs= 1024,
        max_seq_len_to_capture= 12000,
        gpu_memory_utilization= 0.95,  
        tensor_parallel_size = 8      
    )
    sampling_params = SamplingParams(temperature=0.0, max_tokens=12000)



def extract_question_response(text):
    # Find all question contents (non-greedy match, dot matches newline)
    # re.findall returns a list of all captured group matches

    all_questions = re.findall(r"<Q>(.*?)</Q>", text, re.DOTALL)
    matching_question = None
    if all_questions:
        # Get the last item from the list and strip whitespace
        matching_question = all_questions[-1].strip()

    # Find all solution/answer contents (non-greedy match, dot matches newline)
    all_answers = re.findall(r"<C>(.*?)</C>", text, re.DOTALL)
    last_answer = None
    if all_answers:
        # Get the last item from the list and strip whitespace
        last_answer = all_answers[-1].strip()

    # Return the last found question and answer (either or both could be None)
    return (matching_question, last_answer)

def preparePromps(data):
    contamination_prompt = contamination_prompt = """Determine whether the provided new question is identical to or a paraphrased version of any of the existing questions listed.  
    If it is identical or paraphrased, respond with **<C>yes</C>** and then output the most similar existing question wrapped in <Q> and </Q>.  
    If it is not, respond with **<C>no</C>**.  
    Please ensure your response contains only the required tags and content, with no additional commentary.

    New Question:
    {}

    Existing Questions:
    {}
    """

    prompts = []
    for record in data:
        new_question = record["problem"]
        question_seperator = "\n\n ------------------------------------------------------------- \n\n"
        test_questions = question_seperator.join([d["problem"].strip() for d in record['similar_test_problems'] ])
        prompt = contamination_prompt.format(new_question, test_questions)
        prompt =[{ "role": "user", "content": prompt}]
        prompts.append(prompt)

    processed_prompts = tokenizer.apply_chat_template(
                    prompts,
                    tokenize=False,
                    add_generation_prompt=True
                )


    return processed_prompts

def checkContamination():
    only_contaminated = []    

    b = 0
    batch_size = 5000
    steps = len(similarity_data) // batch_size + 1
    pbar = tqdm(total=steps, desc="steps")

    while b < len(similarity_data):
        start = b
        end = start + batch_size
        end = min(end, len(similarity_data))
        chunk = similarity_data[start:end]
        prompts = preparePromps(chunk)
        outputs = llm.generate(prompts, sampling_params=sampling_params)
        ## write the result to temp file
        with open(contamination_final_file, 'a') as f:
            for i, output in enumerate(outputs):
                question, contamination = extract_question_response(output.outputs[0].text)
                chunk[i]["contaminated"] = contamination
                chunk[i]["most_similar_question"] = question
                chunk[i]["prompt"] = prompts[i]
                json_string = json.dumps(chunk[i])
                f.write(json_string + "\n")

                if contamination and contamination.lower() == "yes":
                    only_contaminated.append(chunk[i])

        b += batch_size
        pbar.update(1)


    ## writing the only contaminated to seperate file

    with open(contamination_data_file, "w") as f:
        for record in only_contaminated:
            json_string = json.dumps(record)
            f.write(json_string + "\n")

    print(f"Only contaminated data also saved..")


def get_completion(prompt, model_id="o4-mini", max_tokens=68000, n=1):

    url = "https://llm-api.amd.com"
    openai.api_base = url
    openai.api_key = "dummy"    
    openai.api_type = 'azure'    
    openai.api_version = "2024-12-01-preview"
    headers = {"Ocp-Apim-Subscription-Key": "fa273d4402b74a9c830c9e9fc4ebfb54"}

    client = openai.AzureOpenAI(
        api_key='dummy',
        api_version='dummy',
        base_url='{0}/openai/deployments/{1}'.format(url, model_id),
        default_headers=headers
    )   
       

    response = client.chat.completions.create(
        model=model_id,
        messages=[
            {"role": "user", "content": prompt}
        ],
        # temperature=0.7,            
        max_completion_tokens=max_tokens,
        # reasoning_effort="high",
        stream=False,
        # n=n
    )    

   
    return response.choices[0].message.content


def extract_judge_score(text):

    # Find all solution/answer contents (non-greedy match, dot matches newline)
    all_answers = re.findall(r"<S>(.*?)</S>", text, re.DOTALL)
    last_answer = 0.0
    if all_answers:
        # Get the last item from the list and strip whitespace
        last_answer = float(all_answers[-1].strip())

    # Find all solution/answer contents (non-greedy match, dot matches newline)
    all_explanations = re.findall(r"<E>(.*?)</E>", text, re.DOTALL)
    last_explanation = None
    if all_explanations:
        # Get the last item from the list and strip whitespace
        last_explanation = all_explanations[-1].strip()

    # Return the last found question and answer (either or both could be None)
    return last_answer, last_explanation

def getTopContaminatedByModel():


    input_file = "data/may1625/decontamination_experiment_results.jsonl"
    output_file = "data/may1625/decontamination_experiment_topk_.jsonl"
    k = 30

    records_by_model = defaultdict(list)
    with open(input_file, 'r') as f:
        for line in f:
            record = json.loads(line)
            model = record['embedding_model']
            # Find the highest score among the similar_test_problems
            max_score = max(item['score'] for item in record['similar_test_problems'])
            records_by_model[model].append((max_score, record))

    top_k_by_model = []
    for model, scored_records_list  in records_by_model.items():
        random.seed(41)
        ## sort descending
        # scored_records_list.sort(key=lambda x: x[0], reverse=True)  ## for high confidense ones
        scored_records_list = random.sample(scored_records_list, k=k)  ## for random records
        for tuple_record in scored_records_list[:k]:
            record = tuple_record[1]
            model = record["embedding_model"]
            train_problem = record["problem"]
            test_problem = record["similar_test_problems"][0]["problem"]
            score = record["similar_test_problems"][0]["score"]
            top_k_by_model.append((model, train_problem, test_problem, score))

    print(f"records_by_model keys : {records_by_model.keys()}")
    print(f"Data in the top_k_by_model: {len(top_k_by_model)}")
    topk_df = pd.DataFrame(top_k_by_model, columns=["model", "train_problem", "test_problem", "score"])

    print(f"\n Priinting the head of the dataframe: \n {topk_df.head(4)}\n")

    judge_rating_prompt = """Rate the similarity between the 2 math questions given below, also provide brief explanation for the score.
    Score should be between 0 and 1. Completely dissimilar should be 0 and exactly same and duplicate should be 1.
    Provide the score wrapped is <S> and </S>, and the explanation should be wrapped in <E> and </E>
    Question 1:
    {}

    Question 2:
    {}"""
    max_retries = 3
    judge_scores = []
    judge_explanations = []
    for idx, row in tqdm(topk_df.iterrows(), desc="judgement", total=len(topk_df)):
        response = ''
        prompt = judge_rating_prompt.format(row["train_problem"], row["test_problem"])
        for t in range(max_retries):
            try:
                time.sleep(60/25)
                response = get_completion(prompt)
                break            
            except openai.OpenAIError as e:            
                print(f"Error details: {e}")

        
        judge_score, explanation = extract_judge_score(response)
        judge_scores.append(judge_score)
        judge_explanations.append(explanation)
    
    assert len(judge_scores) == len(topk_df)
    topk_df["judge_score"] = judge_scores
    topk_df["judge_explanation"] = judge_explanations

    ## save to file 
    topk_df.to_json(output_file, orient="records", lines=True)

    print(topk_df.groupby("model")["judge_score"].mean())

    







        







def main():
    # prepareData()
    # intializeModel()
    # checkContamination()
    getTopContaminatedByModel()


if __name__ == "__main__":
    main()
