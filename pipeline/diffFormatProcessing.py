import json
import yaml

## configuration file
with open("configs/pipeline_config_may25.yaml", "r") as f:
    config = yaml.safe_load(f)

## Global variables
run_name_value = config["run_name"]
input_file = config["decontamination"]["output_file"].format(run_name=run_name_value)
formatted_filepath = config["difffiltering"]["formatted_filepath"]

## get the data
data = []
with open(input_file, "r") as f:
    for line in f:
        record = json.loads(line)
        formatted_record = {
            'id': record["id"],
            'problem': record["problem"],
            "solution": record["solution"],
            "answer": record["answer"],
            "url": ""
        }
        data.append(formatted_record)

## write it to eval path
with open(formatted_filepath, "w") as f:
    for record in data:
        json_string = json.dumps(record)
        f.write(json_string + "\n")

print(f"Data written successfully: {formatted_filepath}, total data: {len(data)}")




