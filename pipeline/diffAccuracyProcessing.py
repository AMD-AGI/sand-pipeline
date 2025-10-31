import os
import json
import matplotlib.pyplot as plt
import seaborn as sns

## Global variables
input_file_eval = "/dockerx/home/machaita/LIMO/eval/outputs/sand_math/Qwen/Qwen2.5-32B-Instruct/sand_math/test_qwen-instruct_t0.7_k4_s0_e16281.jsonl"
input_file_gold = "/dockerx/home/machaita/LIMO/eval/data/sand_math/test.jsonl"
output_file = "data/may1625/diff_filtered.jsonl"
threshold = 0.5

## Functions

##


eval_records = {}
with open(input_file_eval, 'r') as f:
    for line in f:
        record = json.loads(line)
        eval_records[record["id"]] = record
print(f"Total evaluated records: {len(eval_records)}")

#reading the eval 
final_data = []
with open(input_file_gold, 'r') as f:
    for line in f:
        gold_record = json.loads(line)
        id = gold_record["id"]
        eval_record = eval_records[id]
        
        if gold_record["problem"].strip() != eval_record["question"].strip():
            print(f"!! problem !! , for {id}, questions are not matching")
        acc = sum(eval_record['answers_correctness']) / len(eval_record['answers_correctness'])
        if acc <= threshold:
            final_record = {
                "id": id,
                "problem": gold_record["problem"],
                "answer": gold_record["answer"],
                "solution": gold_record["solution"],
                "acc": acc
            }
            final_data.append(final_record)

print(f"Total data selected at threshold {threshold} is {len(final_data)}")
with open(output_file, "w") as f:
    for record in final_data:
        json_string = json.dumps(record)
        f.write(json_string + "\n")

print(f"Data successfully written to {output_file}")

# ## plotting accuracy distribution plot 
# accs = [record["acc"] for record in final_data]
# # Create a distribution plot  
# sns.set(style="whitegrid")  
# plt.figure(figsize=(10, 6))  
# sns.histplot(accs, kde=True, color='blue')  
  
# # Add title and labels  
# # plt.title('Distribution of Accuracies')  
# plt.xlabel('Accuracy')  
# plt.ylabel('Frequency')  
  
# # Save the plot as PDF and PNG  
# plt.savefig('figures/distribution_of_accuracies.pdf')  
# plt.savefig('figures/distribution_of_accuracies.png')