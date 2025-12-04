"""
Script to perform consistency check between two solutions provided for each question in the input data.

Usage:
    python consistencycheck.py --input_files data/generated_qa_math.jsonl \
        --output_file data/consistent_math.jsonl \
        --report_file data/report_math_consistency.jsonl \
        --model meta-llama/Llama-3.3-70B-Instruct
"""

import argparse
import json
from vllm import LLM, SamplingParams
import re
import random
from tqdm import tqdm
import multiprocessing
import torch
import os
import yaml
from types import SimpleNamespace
from transformers import AutoTokenizer

class Consistency:
    def __init__(self):
        self.all_records = None

    def dataReader(self, input_files):
        self.all_records = []
        idx = 1
        for input_filepath in input_files:
            with open(input_filepath, 'r') as f:
                for line in f:
                    record = json.loads(line.strip())
                    record["id"] = idx
                    idx += 1
                    self.all_records.append(record)
        print(f"Total data found: {len(self.all_records)}")
        print(f"If 8 gpus : {len(self.all_records) // 8}")
        print(f"Last one should be: {len(self.all_records) - (len(self.all_records) // 8 * 7) }")    


    def modelInitialization(self, opts):
        self.tokenizer = AutoTokenizer.from_pretrained(opts.model)

    def _process_data(self, chunk):
        prompt = """**Role:** Mathematics Expert  
        **Task:** Compare **only the final answers** from the two expert solutions provided (You need to figure out the final answer from the complete solution given, final answer might be within `\\boxed{{...}}` or might be just saying final answer is).   
        
        **Output Requirements:**  
        1.  Begin with `<C>yes</C>` if the final answers are matching.  
        2.  Begin with `<C>no</C>` if the  final answers differ, or if one or both solutions lack a  final answer.  
        3.  Follow the `<C>` tag with a brief explanation:  
            *   If "yes": State the common final answer.  
            *   If "no": Specify the differing answers (e.g., "Expert 1: `final answer A`, Expert 2: `final answer B`.") or the reason for non-comparison (e.g., "Expert 2 lacks a final answer.").  
        
        **Question:**  
        {}  
        
        **Expert Answer 1:**  
        {}  
        
        **Expert Answer 2:**  
        {}  
        """
        conversations = []
        for record in chunk:
            problem = record["question"]
            solution_1 = " " if record["solution_1"] is None else record["solution_1"].strip().split("</think>")[-1]
            solution_2 = " " if record["solution"] is None else record["solution"]#.strip().split("</think>")[-1]

            conversation = [{
                "role": "user",
                "content": prompt.format(
                    problem,
                    solution_1, 
                    solution_2 
                )
            }]
            conversations.append(conversation)

        prompts = self.tokenizer.apply_chat_template(
                    conversations,
                    tokenize=False,
                    add_generation_prompt=True
                )
        return prompts


    def checking(self, opts, pid, num_processes):
        
        batch_size = opts.batch_size        
        chunk_size = len(self.all_records) // num_processes   
        temp_file = os.path.join(opts.temp_folder, f"temp_consistency_part{pid}.jsonl")  
         
        ## create temp file
        
        with open(temp_file, 'w') as f:
            pass


        if pid == num_processes-1:
            ## this is the last process take extra data if there is
            my_part = self.all_records[pid*chunk_size : ]
            
        else:
            my_part = self.all_records[pid*chunk_size : (pid+1)*chunk_size]
            
        
        os.environ["CUDA_VISIBLE_DEVICES"] = str(pid)
        llm = LLM(
            model=opts.model,
            max_model_len= 62000 ,
            max_num_batched_tokens= 65536, 
            max_num_seqs= 5000, ## lower this if getting OOM
            max_seq_len_to_capture= 62000,
            enable_chunked_prefill=True
            # gpu_memory_utilization= 0.95, 
        )

        sampling_params = SamplingParams(temperature=0.0, max_tokens=62000)      


        i = 0
        while i < len(my_part):
            
            end = min(i + batch_size, len(my_part))
            chunk = my_part[i:end]
            prompts = self._process_data(chunk)
            
            outputs = llm.generate(
                prompts,
                sampling_params=sampling_params
            )

            final_data = []
            for i, output in enumerate(outputs):
                verification_response = self._parseOutput(output.outputs[0].text)
                record = chunk[i]
                record['consistent'] = verification_response.lower() if verification_response is not None else verification_response
                
                final_data.append(record)
            
            self.writeResults(final_data, temp_file)
            final_data = []

            i += batch_size

                

            
    
    def _parseOutput(self, text):
        # Search for the solution/answer part (non-greedy match, dot matches newline)
        s_match = re.search(r"<C>(.*?)</C>", text, re.DOTALL)
        answer = None
        if s_match:
            answer = s_match.group(1).strip() # Extract captured group 1 and strip whitespace

        # Return the tuple only if BOTH parts were successfully found
        if answer is not None:
            return answer
        else:
            # If either the question or the answer tag (or both) was missing
            return None


    def writeResults(self, final_data, temp_file):
        
        with open(temp_file, 'a') as f:
            for record in final_data:
                json.dump(record, f, ensure_ascii=False)
                f.write('\n')

        

def mergeAllFiles(opts):
    total_consistent  = 0    
    all_files = os.listdir(opts.temp_folder)
    all_files = [os.path.join(opts.temp_folder, temp_file) for temp_file in all_files if 'temp_consistency' in temp_file]
    total_data = []

    all_files.sort()
    print(f"Total temp files found: {len(all_files)}")

    
    for temp_file in all_files:
        with open(temp_file, 'r') as f:
            l = 0 ## lines in this file
            for line in f:
                json_record = json.loads(line.strip())                
                total_data.append(json_record)                
                l += 1
            if l== 0:
                print(f"!! warning !! Found a temp file with zero data: {temp_file}")
    
    ## writing to output file
    with open(opts.output_file ,'w') as f:
        for record in total_data:
            if record["consistent"] == "yes":
                total_consistent += 1
                json_string = json.dumps(record)
                f.write(json_string + '\n')
            
    print(f"\n\n###############")
    print(f"Total consitent: {total_consistent} out of {len(total_data)}, ratio: {round(total_consistent/len(total_data) ,2)}")
    print("###############\n\n")
     
    ## Removing the Temp files
    for file_path in all_files:
        if os.path.exists(file_path):  
            if os.path.isfile(file_path): # Ensure it's a file and not a directory  
                os.remove(file_path) 

    ## writing the report

    report_dict = {
        "total_data": len(total_data),
        "consistent": total_consistent,
        "consistency_ratio":round(total_consistent/len(total_data)*100 ,2)
    }

    with open(opts.report_file, 'w') as f:
        json.dump(report_dict, f, indent=4)







def main(opts):
    ## Some housekeeping 

    # Clear or initialize the results file create directory if required    
    
    try:
        with open(opts.output_file, 'w', encoding='utf-8') as f:
             # Clears the file if it exists, does nothing if it doesn't
             pass
        print(f"Results will be saved to: {opts.output_file}")
    except IOError as e:
        print(f"Error initializing results file {opts.output_file}: {e}")

    # Set the start method to 'spawn'  
    multiprocessing.set_start_method('spawn')
    
    num_processes = torch.cuda.device_count() # skipping the 1st GPU 
    

    ## instantiate the object
    consistency = Consistency()
    ## read the input data
    print(f"Loading the data")    
    consistency.dataReader(opts.input_files) 
    ## Initialize the LLM for checking
    print(f"Initializing the Model")
    consistency.modelInitialization(opts)
    ## run the consistency checks
    print(f"Running consistency checks")
    processes = []
    for i in range(num_processes):        
        process = multiprocessing.Process(target=consistency.checking, args=(opts, i, num_processes))
        processes.append(process)
        process.start()

    for process in processes:
        process.join()

    ## Merging all the into final result file
    mergeAllFiles(opts)
    print(f"Consistency check completed. Results saved to {opts.output_file} and report to {opts.report_file}")

def getArgs():
    argparser = argparse.ArgumentParser()
    argparser.add_argument("--config", required=False, help="config file to take all the arguments from")
    argparser.add_argument("--input_files", required=False, nargs='+', help="List of input files")
    argparser.add_argument("--output_file", required=False, default="data/consistent_from5k.jsonl", help="output file to be written results to")
    argparser.add_argument("--report_file", required=False, default="data/consistency_report.jsonl", help="file to write the report")
    argparser.add_argument("--temp_folder", required=False, default="temp", help="Folder to store the temporary files")
    argparser.add_argument("--model", required=False, default="meta-llama/Llama-3.3-70B-Instruct", help="model path to assess the equality of answers")
    argparser.add_argument("--batch_size", required=False, default=1, type=int, help="batch size for processing")
    return argparser.parse_args()


if __name__ == "__main__":

    opts = getArgs()

    if opts.config:

        with open(opts.config, "r") as f:  
            config = yaml.safe_load(f)

        # opts = Config(config)
        run_name_value = config["run_name"]
        opts_dict = {
            "input_files": config["consistency"]["raw_data"],
            "output_file": config["consistency"]["output_file"].format(run_name=run_name_value),
            "report_file": config["consistency"]["report"],
            "temp_folder": config["consistency"]["temp_folder"].format(run_name=run_name_value),
            "model": config["consistency"]["model"],
            "batch_size": config["consistency"].get("batch_size", 1)
        }

        opts = SimpleNamespace(**opts_dict)

    os.makedirs(opts.temp_folder, exist_ok=True)
    os.makedirs(os.path.dirname(opts.output_file), exist_ok=True)
    os.makedirs(os.path.dirname(opts.report_file), exist_ok=True)

    main(opts)


