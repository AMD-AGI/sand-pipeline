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


##config file 
with open("configs/pipeline_config_may25.yaml", "r") as f:
    config = yaml.safe_load(f)

## GLobal 
run_name_value = config["run_name"]
model_name = config["decontamination"]["model_name"]
embedding_model = config["decontamination"]["embedding_model"]
temp_dir = config["decontamination"]["temp_dir"].format(run_name=run_name_value)
input_path = config["deduplication"]["output_file"].format(run_name=run_name_value) ## previous module output file is this module input
output_file = config["decontamination"]["output_file"].format(run_name=run_name_value)
contaminated_output_file = config["decontamination"]["contaminated_data_file"].format(run_name=run_name_value)
test_set_paths = config["decontamination"]["test_sets"]
figure_path = config["decontamination"]["figure_path"].format(run_name=run_name_value)
report_path = config["decontamination"]["report"].format(run_name=run_name_value)
k = 5
batch_size = 10000
temp_file = "temp_dedup.jsonl"
train_data = []
train_problems = []
test_problems = []

os.makedirs(os.path.dirname(figure_path),exist_ok=True)

def findSimilarities():
    global train_data, train_problems, test_problems

    ## read the test problems
    # test_problems = []
    for path in test_set_paths:
        with open(path, 'r') as f:
            for line in f:
                record = json.loads(line)
                test_problems.append(record["problem"])

    ## Get the SAND-MATH problems
    # train_data = []
    # train_problems = []
    with open(input_path, 'r') as f:
        for line in f:
            record = json.loads(line.strip())
            problem = record["problem"]
            train_data.append(record)
            train_problems.append(problem)


    ## get the embedding and similarities
    model = SentenceTransformer(embedding_model)
    # model = SentenceTransformer('Alibaba-NLP/gte-Qwen2-7B-instruct')
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

        # print(f"Train Problem: {train_record["problem"]}")
        # print(f"Test Problems: {train_data[idx_i]["similar_test_problems"]}")

    print(f"Printing one sample record form train data\n\n {train_data[0]} \n\n")

## now get the similarity check. -----------------------------------------------------------------

def prepare_prompts(dataset, tokenizer):
    contamination_prompt = """Determine whether the provided new question is identical to or a paraphrased version of any of the existing questions listed. 
    If it is identical or paraphrased, respond with **yes** otherwise, respond with **no**. 
    Please ensure your response is only yes or no, with no additional commentary.

    New Question:
    {}

    Existing Questions:
    {}
    """
    question_seperator_string = "-----------------------------------------------------"

    prompts = []
    for record in dataset:
        train_question = record["problem"]
        existing_questions = ""
        for test_record in record["similar_test_problems"]:
            existing_questions += (test_record["problem"] + " \n " + question_seperator_string)

        prompt = contamination_prompt.format(train_question, existing_questions)
        prompt =[{ "role": "user", "content": prompt}]
        prompts.append(prompt)

    processed_prompts = tokenizer.apply_chat_template(
                    prompts,
                    tokenize=False,
                    add_generation_prompt=True
                )


    return processed_prompts

def target_function(llm, sampling_params, subset, temp_dir, batch_size):

    
    
    
    ## Initialize the temp directory
    temp_file_name = os.path.join(temp_dir, temp_file) 
    with open(temp_file_name, "w") as f:
        pass

    idx=0
    pbar = tqdm(total=len(subset)//batch_size+1, desc="steps:")
    while idx < len(subset):
        end = min(idx+batch_size, len(subset))
        prompts = subset[idx:end]
        outputs = llm.generate(prompts, sampling_params=sampling_params)
        ## write the result to temp file
        with open(temp_file_name, 'a') as f:
            for i, output in enumerate(outputs):
                record = {
                    "prompt": prompts[i],
                    "generated_text": output.outputs[0].text                
                }
                json_string = json.dumps(record)
                f.write(json_string + "\n")

        idx += batch_size
        pbar.update(1)


def resultsMerger(dataset):
    temp_files = os.listdir(temp_dir)
    temp_files = [file for file in temp_files if 'temp_dedup' in file]
    temp_files.sort()
    temp_files = [os.path.join(temp_dir, file) for file in temp_files]

    print(f"\n Data will be read from: {temp_files} \n")
    ti = 0 ## training data index
    contaminated_example = []
    with open(output_file, 'w') as of:
        for file in temp_files:
            with open(file, 'r') as rf:
                for line in rf: # for each line in result file
                    result_record = json.loads(line.strip())
                    contamination_status = "UNK"
                    if 'yes' in result_record["generated_text"].lower():
                        contamination_status = 'yes'
                    elif 'no' in result_record["generated_text"].lower():
                        contamination_status = 'no'
    
                    dataset[ti]["prompt"] = result_record["prompt"]
                    dataset[ti]["contamination_result"] = contamination_status
                    dataset[ti]["generated_text"] = result_record["generated_text"]

                    json_string = json.dumps(dataset[ti])
                    of.write(json_string + "\n")
                    ## jsut for testing purpose
                    if len(contaminated_example) < 2 and contamination_status == 'yes':
                        contaminated_example.append(dataset[ti])

                    ti += 1
                    


    print(f"Data written successfully to: {output_file}")
    print(f" #### Some examples ####")
    for exp in contaminated_example:
        print(f"\n {exp} \n")

    ## Removing the temp files
    for file in temp_files:
        try:  
            os.remove(file)  
        except FileNotFoundError:  
            pass


def executer(llm, sampling_params, tokenizer, dataset):   


    ## prepare prompts
    prompts = prepare_prompts(dataset, tokenizer)    
    target_function(llm, sampling_params, prompts, temp_dir, batch_size)
    resultsMerger(dataset)


def decontaminationTest():
    """ Inputs are vllm model , dataset list """
    # Model initilaization
    tokenizer = AutoTokenizer.from_pretrained(model_name)
    llm = LLM(
        model= model_name, 
        max_model_len= 42000 ,
        max_num_batched_tokens= 65536,
        max_num_seqs= 1024,
        max_seq_len_to_capture= 42000,
        gpu_memory_utilization= 0.95,  
        tensor_parallel_size = 8      
    )
    sampling_params = SamplingParams(temperature=0.0, max_tokens=42000)

    executer(llm, sampling_params, tokenizer, train_data)

def plotDistributions(similarity_scores):
    # Create a distribution plot  
    sns.set(style="whitegrid")  
    plt.figure(figsize=(10, 6))  
    sns.histplot(similarity_scores, kde=True, color='blue')  
    
    # Add title and labels  
    # plt.title('Distribution of Accuracies')  
    plt.xlabel('Similarity Scores')  
    plt.ylabel('Frequency')  
    
    # Save the plot as PDF and PNG  
    plt.savefig(f'{figure_path}.pdf')  
    plt.savefig(f'{figure_path}.png')
    print(f"Figures are written to {figure_path}")

def populateSummaries():
    similarity_scores = []
    total = 0
    contaminated = 0

    decontaminated_data = []
    contaminated_data = []
    with open(output_file, 'r') as f:
        for line in f:
            total += 1
            record = json.loads(line.strip())
            if record["contamination_result"] != "no":
                contaminated += 1
                contaminated_data.append(record)
            else:
                decontaminated_data.append(record)

            ## gettign the similarities
            max_similarity = 0
            for row in record["similar_test_problems"]:
                max_similarity = max(max_similarity, row["score"])

            similarity_scores.append(max_similarity)

    ## you have the decontaminated data , write it back
    with open(output_file, 'w') as f:
        for row in decontaminated_data:
            json_string = json.dumps(row)
            f.write(json_string + "\n")

    with open(contaminated_output_file, 'w') as f:
        for row in contaminated_data:
            json_string = json.dumps(row)
            f.write(json_string + "\n")


    ## graph time
    plotDistributions(similarity_scores)

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



