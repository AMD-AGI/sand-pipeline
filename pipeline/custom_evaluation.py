import json
from vllm import LLM, SamplingParams
from tqdm import tqdm
import openai
import time
import re
from collections import defaultdict
import random


def get_completion(prompt, model_id="o4-mini", max_tokens=68000, n=1):

    url = "https://llm-api.amd.com"
    openai.api_base = url
    openai.api_key = "dummy"    
    openai.api_type = 'azure'    
    openai.api_version = "2024-12-01-preview"
    headers = {"Ocp-Apim-Subscription-Key": "fa273d4402b74a9c830c9e9fc4ebfb54"}  ## Pratiks key LIMO
    # headers = {"Ocp-Apim-Subscription-Key": "471c248fdb454e8b96173c8d25b03593"} ## Key 2 Prakamya SM

    client = openai.AzureOpenAI(
        api_key='dummy',
        api_version='dummy',
        base_url='{0}/openai/deployments/{1}'.format(url, model_id),
        default_headers=headers
    )   
       

    response = client.chat.completions.create(
        model=model_id,
        messages=[
            {"role": "user", "content": prompt}
        ],
        # temperature=0.7,            
        max_completion_tokens=max_tokens,
        reasoning_effort="high",
        stream=False,
        # n=n
    )    

    return response.choices[0].message.content

def customMetricsRating(eval_data):
    custom_rating_prompt = """You are an expert mathematics professor and a meticulous grader. Your task is to evaluate a student's generated solution to a math problem based on a comprehensive rubric.

    Your response must ONLY contain the evaluation scores wrapped in their specific tags. Do not add any other text, explanations, or formatting outside of these tags.

    --- PROBLEM STATEMENT ---
    {problem_statement}

    --- STUDENT'S GENERATED SOLUTION ---
    {generated_solution}

    --- GRADING RUBRIC AND INSTRUCTIONS ---
    Carefully evaluate the "STUDENT'S GENERATED SOLUTION" and provide a rating for each of the following five metrics.

    1.  **Correctness_Score (1-5):** Rates the logical soundness of the process.
        - 5: Flawless reasoning. All steps are logically sound.
        - 4: Overall strategy is correct, but there is a minor logical or calculational error.
        - 3: Contains a significant error, but some parts of the reasoning are correct.
        - 2: Fundamentally wrong approach or multiple significant errors.
        - 1: Completely wrong or nonsensical.

    2.  **Faithfulness_Score (1-5):** Rates if the reasoning avoids hallucinations (invented formulas, unjustified leaps).
        - 5: Perfectly faithful. All information and formulas used are correct and relevant to the problem.
        - 4: Mostly faithful, but with a small, unjustified assumption or leap.
        - 3: Contains a significant unjustified leap, but does not invent facts wholesale.
        - 2: Contains a minor hallucination, such as a slightly incorrect formula or a made-up constant.
        - 1: Contains a major hallucination, such as inventing a non-existent theorem or formula.

    3.  **Clarity_Score (1-5):** Rates how clear and easy to follow the explanation is.
        - 5: Exceptionally clear, well-organized, and easy to follow.
        - 4: Clear and correct, but could be slightly better organized.
        - 3: Mostly understandable, but is missing key steps or justifications.
        - 2: Confusing, poorly structured, or hard to follow.
        - 1: Incoherent or completely absent explanation.

    4.  **Conciseness_Score (1-5):** Rates the efficiency of the solution.
        - 5: Elegant/Optimal. Uses a particularly insightful or clever method.
        - 4: Efficient. Direct and to the point, without unnecessary steps.
        - 3: Standard. Follows a standard method, neither efficient nor inefficient.
        - 2: Slightly Convoluted. Contains unnecessary steps or takes a roundabout path.
        - 1: Highly Convoluted and inefficient.

    5.  **Error_Type (Categorical):** Classify the first major error.
        - "No Error": The solution is correct.
        - "Reasoning Error": A logical flaw (e.g., used the wrong formula).
        - "Hallucination Error": An error due to an invented fact or formula (related to Faithfulness).
        - "Calculation Error": An arithmetic mistake.
        - "Misinterpretation Error": Misunderstood the problem statement.
        - "Minor Error": A typo or formatting issue.

    6.  **Justification (String):** Provide a brief, one-sentence explanation for your ratings.

    --- REQUIRED OUTPUT FORMAT ---
    Provide your ratings by wrapping each value in the following tags. Your entire response should only be these tags.

    <CS>Correctness_Score</CS>
    <FS>Faithfulness_Score</FS>
    <CL>Clarity_Score</CL>
    <CN>Conciseness_Score</CN>
    <E>Error_Type</E>
    <J>Justification</J>"""

    max_tries = 3
    eval_data_with_results = []
    scores_summary = defaultdict(int)
    errortype_summary = defaultdict(int)

    for record in tqdm(eval_data, desc="Expert judging"):        
        prompt = custom_rating_prompt.format(problem_statement=record["problem"], generated_solution=record["response"])
        response = ''
        for t in range(max_tries):
            try:
                time.sleep(60/25)
                response = get_completion(prompt)
                break
            except openai.OpenAIError as e:            
                print(f"Error details: {e}")

        scores = extract_metrics(response)
        for k, v in scores.items():
            if k == "error_type":
                errortype_summary[v] += 1
            elif k != "justification":
                scores_summary[k] += v

            record[k] = v
            

        eval_data_with_results.append(record)
    
    for k in scores_summary.keys():
        scores_summary[k] = scores_summary[k] / len(eval_data)

    for k in errortype_summary.keys():
        errortype_summary[k] = errortype_summary[k] / len(eval_data)        

    return eval_data_with_results, scores_summary, errortype_summary
        



def extract_metrics(text):
    ## correctness score
    all_cs = re.findall(r"<CS>(.*?)</CS>", text, re.DOTALL)
    last_cs = None
    if all_cs:        
        last_cs = int(all_cs[-1].strip())

    ## Faithfullness score
    all_fs = re.findall(r"<FS>(.*?)</FS>", text, re.DOTALL)
    last_fs = None
    if all_fs:        
        last_fs = int(all_fs[-1].strip())

    ## Clarity score
    all_cl = re.findall(r"<CL>(.*?)</CL>", text, re.DOTALL)
    last_cl = None
    if all_cl:        
        last_cl = int(all_cl[-1].strip())

    ## Consiceness score
    all_cn = re.findall(r"<CN>(.*?)</CN>", text, re.DOTALL)
    last_cn = None
    if all_cn:        
        last_cn = int(all_cn[-1].strip())

    ## Error type score
    all_e = re.findall(r"<E>(.*?)</E>", text, re.DOTALL)
    last_e = None
    if all_e:        
        last_e = all_e[-1].strip()

    ## Justification
    all_j = re.findall(r"<J>(.*?)</J>", text, re.DOTALL)
    last_j = None
    if all_j:        
        last_j = all_j[-1].strip()

    return {
        'correctness_score': last_cs,
        'faithfulness_score': last_fs,
        'clarity_score': last_cl,
        'conciseness_score': last_cn,
        'error_type': last_e,
        'justification': last_j
    } 

def main():
    # input_file = "/dockerx/home/machaita/LIMO/eval/outputs/models/limo_sand_math_500/Qwen2.5-32B-Instruct/aime25/test_qwen-instruct_t0.7_k16_s0_e30.jsonl"
    # output_file = "/dockerx/home/machaita/LIMO/eval/outputs/models/limo_sand_math_500/Qwen2.5-32B-Instruct/aime25/custom_metrics_fc.jsonl"
    # metrics_summary_output_file = "/dockerx/home/machaita/LIMO/eval/outputs/models/limo_sand_math_500/Qwen2.5-32B-Instruct/aime25/custom_metrics_summary_fc.json"
    # errortype_summary_output_file = "/dockerx/home/machaita/LIMO/eval/outputs/models/limo_sand_math_500/Qwen2.5-32B-Instruct/aime25/errortype_summary_fc.json"

    input_file = "/dockerx/home/machaita/LIMO/eval/outputs/models/GAIR/LIMO/aime25/test_qwen-instruct_t0.7_k16_s0_e30.jsonl"
    output_file = "/dockerx/home/machaita/LIMO/eval/outputs/models/GAIR/LIMO/aime25/custom_metrics_fc.jsonl"
    metrics_summary_output_file = "/dockerx/home/machaita/LIMO/eval/outputs/models/GAIR/LIMO/aime25/custom_metrics_summary_fc.json"
    errortype_summary_output_file = "/dockerx/home/machaita/LIMO/eval/outputs/models/GAIR/LIMO/aime25/errortype_summary_fc.json"

    eval_data = []
    with open(input_file, "r") as f:
        for line in f:
            record = json.loads(line.strip())
            _id = record["id"]
            problem = record["question"]
            local_pairs = [{"id": _id, "problem": problem, "response": response} for i, response in enumerate(record["generated_responses"]) if not record["answers_correctness"][i]]
            eval_data.extend(local_pairs)
    print(f"Total size of the eval data is: {len(eval_data)}")
    # eval_data = eval_data[:5]
    ## get the custom metrics added

    eval_data_with_results, scores_summary, errortype_summary = customMetricsRating(eval_data)

    ## write the back to the output file
    with open(output_file, "w") as f:
        for record in eval_data_with_results:
            json_string = json.dumps(record)
            f.write(json_string + "\n")

    with open(metrics_summary_output_file, "w") as f:
        json.dump(scores_summary, f, indent=4)

    with open(errortype_summary_output_file, "w") as f:
        json.dump(errortype_summary, f, indent=4)

    print(f"---- Done ---")




if __name__ == "__main__":
    main()