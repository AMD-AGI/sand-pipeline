import json
import datasets as ds
import os
from tqdm import tqdm

openr1 = ds.load_dataset("open-r1/OpenR1-Math-220k", "default", split="train")
input_file = "data/may1625/diffratings_agg.jsonl"
openr1_subset = []

with open(input_file, 'r') as f:
    for line in f:
        record = json.loads(line.strip())
        if record["dataset"] == "OpenR1-Math-220k":
            openr1_subset.append(record)

## making the openr1 key value pairs
openr1_dict = {}
for record in tqdm(openr1, desc="OpenR1"):
    problem = record["problem"].strip()
    openr1_dict[problem] = record

openr1_subset_with_solution = []

found_correct_generation = 0
for i, record in tqdm(enumerate(openr1_subset), desc="Mapping"):
    problem = record["problem"].strip()
    record_from_openr1 = openr1_dict[problem]    
    found_correct = False

    for correct, generation in zip(record_from_openr1["correctness_math_verify"], record_from_openr1["generations"]):
        if correct:
            record["solution"] = generation
            openr1_subset_with_solution.append(record)
            found_correct_generation += 1
            found_correct = True
            break

    if not found_correct:
        print(f"{record_from_openr1["correctness_math_verify"]}")

print(f"length of openr1_subset: {len(openr1_subset)}, found correct: {found_correct_generation}, final datset len: {len(openr1_subset_with_solution)}")

with open("data/may1625/diffratings_agg_openr1.jsonl", "w") as f:
    for record in openr1_subset_with_solution:
        json_string = json.dumps(record)
        f.write(json_string + "\n")







