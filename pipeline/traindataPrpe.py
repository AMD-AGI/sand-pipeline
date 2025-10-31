import json
import yaml
import os
import pandas as pd

with open("configs/pipeline_config_may25.yaml", "r") as f:
    config = yaml.safe_load(f)

## global variables
run_name_value = config["run_name"]
input_file = config["traindata_prep"]["input_file"].format(run_name=run_name_value)
data_budget = 8000
seed = 41
dataset = f"sand_math_{data_budget}_diffdesc" ## for saving purpose

## read the data
df = pd.read_json(input_file, lines=True)
# df = df.sample(frac=1, random_state=seed).reset_index(drop=True)
df["sol_len"] = df["solution"].str.len()
df = df.sort_values(by=["diff_rating", "sol_len"], ascending=[False, False])
sample_df = df[:data_budget]
sample_df = sample_df.sample(frac=1, random_state=seed).reset_index(drop=True)

training_data = []
for idx , row in sample_df.iterrows():
    if len(row["solution"].split("</think>")) == 2:
        solution = row["solution"].split("</think>")[0].replace("<think>","").strip()
        training_record = {
            'instruction': row["problem"],
            'input': '',
            'output': solution,
            'system': "Please reason step by step, and put your final answer within \\boxed{}."
        }
        training_data.append(training_record)

print(f"Training data budget: {data_budget}")
print(f"final training data count: {len(training_data)}")
print(f"Diff rating stats: \n mean: {sample_df['diff_rating'].mean()} \n min: {sample_df['diff_rating'].min()}\n max:{sample_df['diff_rating'].max()}")

## writign into training datasets
traindata_folder = os.path.join("data", run_name_value, "traindata")
os.makedirs(traindata_folder, exist_ok=True)
file = os.path.join(traindata_folder, f"{dataset}.json")

with open(file, 'w') as f:
    json.dump(training_data, f, indent=4)

print(f"Dataset: {dataset}, written to {file}")












