"""
Extracts the final in answer in the \\boxed{} useful for RL, also helps in evaluations.
input
-----
jsonl file, with input columns: 

output
------
jsonl file with output columns
"""

import json
import os
import argparse
from tqdm import tqdm
import random
import yaml
from lm_eval.tasks.minerva_math.utils import remove_boxed, last_boxed_only_string

## read the config file
with open('configs/pipeline_config_may25.yaml','r') as f:
    config = yaml.safe_load(f)

## Global variables
run_name_value = config["run_name"]
input_file = "data/jun1625/aime25_diffhiked_solutions_consistent_diffrated.jsonl"
output_file = "data/jun1625/aime25_diffhiked_solutions_consistent_diffrated_withfianlanswer.jsonl"
output_file_sample = config["answer_extraction"]["sample_output_file"].format(run_name=run_name_value)
report_file = config["answer_extraction"]["report"].format(run_name=run_name_value)
# output_file_limo_eval = "data/consistent_withanswer_limoeval_from5k.jsonl"

data = []
total_data = 0
## Functions

##
# get the data

with open(input_file, 'r') as f:
    for line in f:
        total_data += 1
        record = json.loads(line.strip())
        # if record["consistent"] == "yes": ## filterout only consistent 
        data.append(record)

print(f"Total data consistent: {len(data)}")

## extract the anser to each record
final_data = []
for i, record in tqdm(enumerate(data), total=len(data)):
    for k in range(2):
        try:
            answer = remove_boxed(last_boxed_only_string(record[f"solution_{k+1}"]))        
            
            record["answer"] = answer        
            final_data.append(record)
            break

        except TypeError as te:
            print(f"Extraction failed for row:{i}")
        except Exception as e:
            print(f"Extraction failed for row:{i} with error:{e}")

## writing the results to file
with open(output_file, 'w') as f:
    for record in final_data:
        json_string = json.dumps(record)
        f.write(json_string + "\n")

## taking first 5 form the output file and savig into sample file
# with open(output_file, 'r') as of:
#     with open(output_file_sample, 'w') as sf:
#         for ol, line in enumerate(of):
#             # output_record = json.loads(line.strip())
#             # json_string = json.dumps(output_record)
#             sf.write(line)
#             if ol + 1 >= 5:
#                 break


                

# with open(output_file_limo_eval, 'w') as f:
#     for id, record in enumerate(final_data):
#         suffix = random.sample(['1', '2'], 1)[0]
#         record_to_write = {
#             "id": id,
#             "problem": record["question"],
#             "soluiton": record[f"solution_{suffix}"],
#             "answer": str(record[f"answer_{suffix}"]),
#             "url": ""
#         }
#         json_string = json.dumps(record_to_write)
#         f.write(json_string + "\n")

print(f"Answer records /Total record: {len(final_data)} / {total_data} = {round( len(final_data) / total_data, 2)}")

## writing the report

# report_dict = {
#     "total_data": total_data,
#     "consistent": len(data),
#     "final_consistent": len(final_data),
#     "consistency_ratio":round(len(final_data)/total_data ,2)
# }

# with open(report_file, 'w') as f:
#     json.dump(report_dict, f, indent=4)