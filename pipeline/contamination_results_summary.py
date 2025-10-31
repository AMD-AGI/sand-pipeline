import json
import os
import matplotlib.pyplot as plt
import seaborn as sns


input_file = "data/decontaminated_with_test.jsonl"

total = 0
contaminated = 0
similarity_scores = []
contaminated_problem = ""
similar_test = None

with open(input_file, 'r') as f:
    for line in f:
        record = json.loads(line)
        max_similarity = 0
        for test_pair in record["similar_test_problems"]:
            max_similarity = max(max_similarity, test_pair["score"])
        similarity_scores.append(max_similarity)

        total += 1
        if record["contamination_result"] == 'yes':
            contaminated += 1
        if max_similarity > 0.9 and record["contamination_result"] == 'no':
            contaminated_problem = record["problem"]
            similar_test = record["similar_test_problems"]

print(f"contaminated / total: {contaminated} / {total} = {contaminated / total}")

print(f"\n\n contaminated problem: {contaminated_problem}")
print(f"\n\n similar test problem: {similar_test}")



# Create a distribution plot  
sns.set(style="whitegrid")  
plt.figure(figsize=(10, 6))  
sns.histplot(similarity_scores, kde=True, color='blue')  
  
# Add title and labels  
# plt.title('Distribution of Accuracies')  
plt.xlabel('Similarity Scores')  
plt.ylabel('Frequency')  
  
# Save the plot as PDF and PNG  
plt.savefig('figures/distribution_of_similarity_scores.pdf')  
plt.savefig('figures/distribution_of_similarity_scores.png')