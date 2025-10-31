import json
import yaml
import os
import pandas as pd

with open("configs/pipeline_config_may25.yaml", "r") as f:
    config = yaml.safe_load(f)

## global variables
run_name_value = config["run_name"]
input_file = config["traindata_prep"]["input_file"].format(run_name=run_name_value)
data_budget = 500



## funcitons
def getSomeCount(dataset, sub_df):
    above_5 = len(sub_df[sub_df["diff_rating"]>=5.0])
    print(f"For {dataset}: >=5.0 is: {above_5}")
##
# read the Data
df = pd.read_json(input_file, lines=True)
## creating training folder
traningdata_folder = "data/may1625/traindata"
os.makedirs(traningdata_folder, exist_ok=True)
#for each dataset collect top 500 records


datasets = list(df["dataset"].unique())
for dataset in datasets:
    final_data = []
    print(f"Processing: {dataset}")
    
    if dataset == "OpenR1-Math-220k":        
        sub_df = pd.read_json("data/may1625/diffratings_agg_openr1.jsonl", lines=True)
    else:
        sub_df = df[df["dataset"] == dataset]
        continue ## to process only "OpenR1-Math-220k" remove it later

    getSomeCount(dataset, sub_df)

    sub_df["solution_len"] = len(sub_df["solution"])
    sub_df = sub_df.sort_values(by=["diff_rating","solution_len"], ascending=[False, False])
    sample_df = sub_df[:data_budget]
    print(f"Some diffs: {sample_df["diff_rating"].to_list()[:10]} ...")
    ## preparing data in alpaca data format
    for idx , row in sample_df.iterrows():
        solution = row["solution"].split("</think>")[0].replace("<think>","").strip()
        final_record = {
            'instruction': row["problem"],
            'input': '',
            'output': solution,
            'system': "Please reason step by step, and put your final answer within \\boxed{}."
        }
        final_data.append(final_record)
    
    print(f"final data count: {len(final_data)}")
    ## writign into training datasets
    file = os.path.join(traningdata_folder, f"{dataset}.json")
    with open(file, 'w') as f:
        json.dump(final_data, f, indent=4)
    print(f"Dataset: {dataset}, written to {file}")












