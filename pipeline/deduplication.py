# from datasets import load_dataset
import json
import yaml
from semhash import SemHash
from model2vec import StaticModel

##
input_file = "data/consistent_dc_math.jsonl"
output_file = "data/consistent_dc_dd_math.jsonl"
report_file = "data/report_math_dd.jsonl"
threshold_value = 0.99
question_fields = ["question", "problem", "instruction"]

# Load a dataset to deduplicate
texts = []
with open(input_file, "r") as f:
    for line in f:
        record = json.loads(line.strip())
        texts.append(record)

# static model
# model = StaticModel.from_pretrained("sentence-transformers/all-MiniLM-L6-v2")

# Initialize a SemHash instance
question_field = None
if texts:
    for field in question_fields:
        if field in texts[0]:
            question_field = field
            break
if question_field:
    semhash = SemHash.from_records(records=texts, columns=[question_field])
else:
    raise ValueError("Question field not found in the data")

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

print(f"Deduplicated data written to {output_file}")
print(f"report is written to {report_file}")