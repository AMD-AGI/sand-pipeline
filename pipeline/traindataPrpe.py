import json
import argparse
import pandas as pd


def main():
    parser = argparse.ArgumentParser(description='Prepare training data from JSONL file')
    parser.add_argument('--input_file', type=str, required=True,
                        help='Path to input JSONL file')
    parser.add_argument('--output_file', type=str, required=True,
                        help='Path to output JSON file')
    
    args = parser.parse_args()
    
    ## read the data
    df = pd.read_json(args.input_file, lines=True)

    training_data = []
    for idx, row in df.iterrows():
        if len(row["solution_1"].split(" ")) > 500:  # to remove very short solutions and potential incomplete solutions        
            training_record = {
                'instruction': row["question"],
                'input': '',
                'output': row["solution_1"],
                'system': "Please reason step by step, and put your final answer within \\boxed{{}}."
            }
            training_data.append(training_record)

    print(f"final training data count: {len(training_data)}")

    ## writign into training datasets
    with open(args.output_file, 'w') as f:
        json.dump(training_data, f, indent=4)

    print(f"Training data written to {args.output_file}")


if __name__ == "__main__":
    main()












