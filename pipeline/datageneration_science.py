"""
Synthetic Data Generation Pipeline for Science Problems

Usage:
    python datageneration_science.py --run_name "science" --output_dir "data" \
        --max_concurrency 1024 --batch_size 4096 --max_questions 30000 \
        --model_name "openai/gpt-oss-120b" --port 8080
"""
import argparse
import concurrent.futures
import json
import logging
import os
import re
import time
from openai import OpenAI
from transformers import AutoTokenizer
import pandas as pd
 

## ------ Global Configuration ------
MODEL_NAME = "openai/gpt-oss-120b"
metadata_file = "configs/science_metadata.jsonl"
MAX_QUESTIONS = 5000
BATCH_SIZE = 500
MAX_CONCURRENCY=128
N = 2
OUTPUT_DIR = ""
output_file = None
tmp_q_output_file = None
log_file = None
PORT = 8080
tokenizer = None



## ----------------------------------

## ------ Util functions ------

def getLLMResponse(prompt, temp=1.0, max_new_tokens=42_000):
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
## ----------------------------------

## ------ Data Loaders ------

class Questions:
    def __init__(self, batch_size, end):
        self.batch_size = batch_size
        self.end = end
        self.science_metadata = None
        self.__build_metadata()

    def __build_metadata(self):
        science_metadata_df = pd.read_json(metadata_file, lines=True)
        science_metadata_df["weight"] = round(science_metadata_df["raw_weight"] / science_metadata_df["raw_weight"].sum() * 100)

        self.science_metadata = science_metadata_df

    def __iter__(self):
        self.idx = 0 
        return self

    def __next__(self):

        if self.idx >= self.end:
            raise StopIteration

        batch_size = min(self.batch_size, self.end - self.idx)        


        science_generation_prompt = """Generate a novel science question with a difficulty of a **PhD Qualifying Exam**. This means the question must require the **synthesis of multiple, distinct concepts** and cannot be answered by a simple factual recall.        
        - The question should be primarily focus on `{}` and incorporate a clever mix of elements from `{}`.
        - Question must be of type multiple choice question with 4 options (A, B, C, D) and only one correct answer.
        - The correct answer's position must be randomized and not consistently A.        
        - Also return a solution for verification.

        Your response should be formatted as follows:
        - Final question statement along with options must be enclosed with <Q> and </Q>
        - Reference solution should be enclosed with <S> and </S>."""



        
        b=0
        data = []

        while b < batch_size:
            sample_record = self.science_metadata.sample(weights='weight', n=1).iloc[0]
            primary_branch = sample_record['branch']             
            other_branch = self.science_metadata[(self.science_metadata['branch'] != primary_branch) & (self.science_metadata['subject'] == sample_record['subject'])].sample(n=1).iloc[0]['branch']              

            prompt = science_generation_prompt.format(primary_branch, other_branch)

            record = {
                'branch': primary_branch,
                'prompt': prompt
            }
            data.append(record)            
            b += 1

        self.idx += batch_size
        return data



class Solutions:
    def __init__(self, questions, n):
        self.questions = questions
        self.end = len(self.questions)
        self.n = n
    
    def __iter__(self):
        self.idx = 0 
        
        return self

    def __next__(self):

        if self.idx >= self.end:
            raise StopIteration

        
        data = []

        solution_generation_prompt = """question: {}
        Please reason step by step, and put your final answer option within \\boxed{{}}."""       

        for question in self.questions:            
            for _ in range(self.n):
                prompt = solution_generation_prompt.format(question)
                record = {
                    'prompt': prompt
                }
                data.append(record)


        self.idx += len(self.questions)
        return data

## 
def send_single_request(prompt:str, request_id: int, temp: float, max_tokens:int):
    
    response, total_tokens, completion_tokens = getLLMResponse(prompt, temp=temp, max_new_tokens=max_tokens)
    return request_id, response, total_tokens, completion_tokens

def run_concurrent_requests_threaded(prompts, max_workers, temp, max_tokens):  
    """Creates and runs all API request tasks concurrently using threads."""     
  
    results = {}    
    futures_list = []
    total_completion_tokens = []
    
    
    start_time = time.time()
    # max_workers controls the number of threads in the pool
    with concurrent.futures.ThreadPoolExecutor(max_workers=max_workers) as executor:
        # Submit all tasks to the executor
        for i, prompt in enumerate(prompts):
            # Pass request_id for easier tracking
            future = executor.submit(send_single_request, prompt, i + 1, temp, max_tokens)
            futures_list.append(future)

        # Process results as they complete
        for future in concurrent.futures.as_completed(futures_list):
            try:
                # result() will raise an exception if the worker function raised one
                req_id, result_data, total_tokens, completion_tokens = future.result()
                results[req_id] = {'result_data':result_data, 'completion_tokens':completion_tokens}
                total_completion_tokens.append(completion_tokens)
                          
            except Exception as e:
                logging.error(f"Error retrieving result from future: {e}")
    end_time = time.time()
    total_duration = end_time - start_time

    ## Log throughput results
    logging.info(f"Total tokens generated across all requests: {sum(total_completion_tokens)}")
    logging.info(f"Average tokens generated across all requests: {sum(total_completion_tokens)/len(total_completion_tokens)}")
    logging.info(f"Total duration: {total_duration}")
    logging.info(f"Throughput: {round(sum(total_completion_tokens)/total_duration, 2)}")

    return results



def qaGeneration():
    questions = Questions(BATCH_SIZE, MAX_QUESTIONS)
    total_data_count = 0
    start_time = time.time()
    for s, data in enumerate(questions):        
        current_iteration_start_time = time.time()
        prompts = [record["prompt"] for record in data]
        branches = [record["branch"] for record in data]
        logging.info(f"**[Step{s+1}]**")
        logging.info(f"[QGEN] Generating {len(prompts)} questions")
        
        results = run_concurrent_requests_threaded(prompts, MAX_CONCURRENCY, temp=0.7, max_tokens=42000)
        
        qresults = processQuestionResults(prompts, branches, results)
        questions = [record['question'] for record in qresults]
        
        solutions_prompts = Solutions(questions, n=N)
        
        
        for prompts in solutions_prompts:
            logging.info(f"[AGEN] Generating {len(prompts)} answers")
            prompts = [record["prompt"] for record in prompts]
            results = run_concurrent_requests_threaded(prompts, MAX_CONCURRENCY, temp=0.6, max_tokens=32000)
            results = processSolutionResults(qresults, results, N, prompts)
            saveToFile(results)

        this_loop_data_count = len(results)
        total_data_count += this_loop_data_count       
        end_time = time.time()
        current_iteration_duration = end_time - current_iteration_start_time
        logging.info(f"[Question Generated in Current Loop] {this_loop_data_count}")
        logging.info(f"[Question Generated in total so far] {total_data_count}")
        logging.info(f"[Current Iteration Duration] {current_iteration_duration} seconds")
    
    end_time = time.time()
    total_duration = end_time - start_time
    logging.info(f"[Total Generation Duration] {total_duration} seconds")

def processQuestionResults(prompts, branches, results):
    results_to_send = []
    with open(tmp_q_output_file, 'w') as f:
        for i, prompt in enumerate(prompts):
            generated_text = results.get(i+1, {"result_data":''})["result_data"]
            completion_tokens = results.get(i+1, {"completion_tokens":0})["completion_tokens"]
            question, solution = extract_question_answer_pair(generated_text)
            branch = branches[i]
            record = {                
                'prompt': prompt,
                'branch': branch,
                'question': question,
                'solution': solution,
                'completion_tokens': completion_tokens
            }
            if question is not None:
                results_to_send.append(record)
                json_string = json.dumps(record)
                f.write(json_string + "\n")
    return results_to_send

def processSolutionResults(qresults, results, N, prompts):
    for i in range(len(qresults)):        
        for n in range(N):
            sol_index = int(i*N + n)
            qresults[i][f"solution_{n+1}"] = results.get(sol_index+1, {"result_data":''})["result_data"]
            qresults[i][f"completion_tokens_solution_{n+1}"] = results.get(sol_index+1, {"completion_tokens":0})["completion_tokens"]
            if i==0:
                qresults[i]["prompt_solution"] = prompts[i]


    return qresults

def saveToFile(results):
    with open(output_file, "a") as f:
        for record in results:
            json_string = json.dumps(record)
            f.write(json_string + "\n")



def setVariables(args):
    global MODEL_NAME, PORT, MAX_QUESTIONS, BATCH_SIZE, MAX_CONCURRENCY, N, output_file, tmp_q_output_file, tokenizer

    # Get the absolute path to the directory containing the current script
    SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
    OUTPUT_DIR = args.output_dir

    MODEL_NAME = args.model_name
    PORT = args.port
    MAX_QUESTIONS = args.max_questions
    BATCH_SIZE = args.batch_size
    MAX_CONCURRENCY = args.max_concurrency
    N = args.n
    output_file = os.path.join(SCRIPT_DIR, OUTPUT_DIR, f'generated_qa_{args.run_name}.jsonl')
    tmp_q_output_file = os.path.join(SCRIPT_DIR, OUTPUT_DIR, f'temp_qa_{args.run_name}.jsonl')
    log_file = os.path.join(SCRIPT_DIR, 'logs', f'log_qageneration_{args.run_name}.log')
    
    ## Logging setup
    logging.basicConfig(  
        filename=log_file,           # Log file name  
        filemode='w',                      # Append to log file; use 'w' to overwrite on each run  
        format='%(asctime)s - %(levelname)s - %(message)s',  # Log format with timestamp, level, and message  
        level=logging.INFO                 # Minimum log level to capture  
    ) 

    logging.info("Script started.")
    logging.info(f"Input arguments: MAX_QUESTIONS - {MAX_QUESTIONS}")

    if args.overwrite == "yes":
        with open(output_file, "w") as f:
            pass

    ## Initialize the tokenizer for computing the completion tokens
    tokenizer = AutoTokenizer.from_pretrained(MODEL_NAME)
    logging.info(f"Tokenizer initialized for model: {MODEL_NAME}")


def getArguments():
    

    parser = argparse.ArgumentParser()
    
    parser.add_argument("--max_questions", type=int, default=30000, help="Number of maximum questions to be generated in this run")
    parser.add_argument("--batch_size", type=int, default=4096, help="Batch size to be processed in the each iteration")
    parser.add_argument("--max_concurrency", type=int, default=1024, help="Number of concurrent requests sent to the model endpoint form the batch of prompts")
    parser.add_argument("--n", type=int, default=1, help="number of answers to be generated for each question")
    parser.add_argument("--run_name", default="science", help="Identifier appended to output and log filenames")
    parser.add_argument("--model_name", type=str, default="openai/gpt-oss-120b", help="model to be used for generation")
    parser.add_argument("--port", type=int, default=8080, help="port number for the server")
    parser.add_argument("--output_dir", default="data", help="output data directory to save")
    parser.add_argument("--overwrite", type=str, default="yes", help="overwrite output file if exists")
    
    args = parser.parse_args()

    return args

    




def main():
    args = getArguments()
    setVariables(args) ## to set some global variables
    qaGeneration()
    

if __name__ == "__main__":
    main()