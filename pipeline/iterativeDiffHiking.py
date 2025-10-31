## Iteratively Improves the difficulty of the question and answer.

import json
import os
import utils as U

# Global variables
input_file = 'aime_hard_diffrated.jsonl'
output_file = 'data/diff_ratings/iterative_diffhike_outputs.jsonl'
batch_size = 5
iters = 3
data = []


## Initializing the output file
# with open(output_file, 'w') as f:
#     pass

## reading the data
with open(input_file, 'r') as f:
    for line in f:
        record = json.loads(line.strip())
        data.append(record)

for b in range(5,len(data),batch_size):
    ## for each btch size of f
    chunk = data[b:b+batch_size]
    for id, record in enumerate(chunk):
        ## for each example
        # baseline example quesiton
        ID = b+id
        print(f"==>ID: {ID}")
        stack = [{
            "diffrating": None,
            "question": record["instruction"],
            "solution": record["output"],            
        }]
        ## getting the diffrating for initial questin
        diff_rating_dict = U.getDifficultyRating(stack[-1]["question"], stack[-1]["solution"])
        stack[-1]["diffrating"] = diff_rating_dict["R1"]
        print(f"  Intial diff rating: {diff_rating_dict["R1"]}")
        for i in range(iters):
            # exit if the current question sufficiently difficult
            if stack[-1]["diffrating"] >= 6.0: 
                print(f"ID:{ID} acheived desired difficulty rating , so breaking the loop")
                break

            ## Process to iteratively making the question difficult
            question = stack[-1]["question"]
            current_diffrating = stack[-1]["diffrating"]
            prompt = U.diff_hiking_prompt.format(current_diffrating, U.diff_scale[str(current_diffrating)], question)
            response = U.getLocalModelResponse(prompt)
            new_question, new_soluiton = U.extract_question_answer_pair(response)
            if new_question is None and new_soluiton is None:
                print(f"ID:{ID} empty question and answer")
                break
            ## Get the difficulty rating for the new question and solution
            diff_rating_dict = U.getDifficultyRating(new_question, new_soluiton)
            new_diff_rating = diff_rating_dict["R1"]
            print(f"  Iter {i} diff rating: {new_diff_rating}")
            new_record = {
                'diffrating': new_diff_rating,
                'question': new_question,
                'solution': new_soluiton,
                'raw_response': response
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

    




