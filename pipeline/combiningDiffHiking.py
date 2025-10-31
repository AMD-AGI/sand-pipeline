## Iteratively Improves the difficulty of the question and answer.

import json
import os
import utils as U
import random

# Global variables
input_file = 'aime_hard_diffrated.jsonl'
output_file = 'data/diff_ratings/combining_diffhike_outputs.jsonl'
batch_size = 5
iters = 3   
data = []


# Initializing the output file
with open(output_file, 'w') as f:
    pass

## reading the data
with open(input_file, 'r') as f:
    for line in f:
        record = json.loads(line.strip())
        data.append(record)

for b in range(0,len(data),batch_size):
    ## for each btch size of f
    chunk = data[b:b+batch_size]
    for id, record in enumerate(chunk):
        ## for each example
        # baseline example quesiton
        ID = b+id
        print(f"==>ID: {ID}")
        ## question A and solution
        stack = [{
            "diffrating": None,
            "question": record["instruction"],
            "solution": record["output"],            
        }]
        ## getting the diffrating for initial questin
        diff_rating_dict = U.getDifficultyRating(stack[0]["question"], stack[0]["solution"])
        stack[0]["diffrating"] = diff_rating_dict["R1"]
        print(f"  Intial diff ratings: {stack[0]["diffrating"]}")

        for i in range(iters):
            print(f"  --iter {i}")
            ## question B and solution
            random_record = random.sample(data, 1)[0]
            stack.append({
                "diffrating": None,
                "question": random_record["instruction"],
                "solution": random_record["output"],    
            })
            

            diff_rating_dict = U.getDifficultyRating(stack[-1]["question"], stack[-1]["solution"])
            stack[-1]["diffrating"] = diff_rating_dict["R1"]

            print(f"  Question B diff rating: {stack[-1]["diffrating"]}")

            ## process of question combining
            prompt = U.question_combining_prompt.format(stack[-2]["question"], stack[-2]["solution"], stack[-1]["question"], stack[-1]["solution"])
            response = U.getLocalModelResponse(prompt)
            new_question, new_soluiton = U.extract_question_answer_pair(response)
            if new_question is None and new_soluiton is None:
                    print(f"ID:{ID} empty question and answer")
                    break
            ## Get the difficulty rating for the new question and solution
            diff_rating_dict = U.getDifficultyRating(new_question, new_soluiton)
            new_diff_rating = diff_rating_dict["R1"]
            print(f" new question diff rating: {new_diff_rating}")
            new_record = {
                'diffrating': new_diff_rating,
                'question': new_question,
                'solution': new_soluiton,            
            }
            stack.append(new_record)

        ## Once you out of the loop prepare data to write
        record_to_write = {
            'id': ID,
            'data': stack 
        }

        ## append the record

        with open(output_file, 'a') as f:
            json_string = json.dumps(record_to_write)
            f.write(json_string + "\n")

        print(f"Data saved to file successfully..")

    




