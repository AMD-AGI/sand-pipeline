# from datasets import load_dataset
import json
import yaml
from semhash import SemHash
from model2vec import StaticModel

## config file
with open("configs/pipeline_config_may25.yaml", 'r') as f:
    config = yaml.safe_load(f)    

##
run_name_value = config["run_name"]
input_file = config["answer_extraction"]["output_file"].format(run_name=run_name_value)
output_file = config["deduplication"]["output_file"].format(run_name=run_name_value)
report_file = config["deduplication"]["report"].format(run_name=run_name_value)
threshold_value = config["deduplication"]["threshold"]

# Load a dataset to deduplicate
texts = []
with open(input_file, "r") as f:
    for line in f:
        record = json.loads(line.strip())
        texts.append(record)

# static model
# model = StaticModel.from_pretrained("sentence-transformers/all-MiniLM-L6-v2")

# Initialize a SemHash instance
semhash = SemHash.from_records(records=texts, columns=["problem"])

# Deduplicate the texts
deduplicated_texts = semhash.self_deduplicate(threshold=threshold_value).selected

print(f"Deduplicated text: {len(deduplicated_texts)}")

## writing the deduplicated data
with open(output_file, 'w') as f:
    for row in deduplicated_texts:
        json_string = json.dumps(row)
        f.write(json_string + "\n")
## report 
report_dict = {
        "total_data": len(texts),
        "deduplicated": len(deduplicated_texts),
        "deduplicated_ratio":round(len(deduplicated_texts)/len(texts) ,2)
    }

with open(report_file, 'w') as f:
    json.dump(report_dict, f, indent=4)

print(f"report is written to {report_file}")