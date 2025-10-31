import requests
import ast
import re
import json
from tqdm import tqdm
import os
import time 
import datasets as ds
import openai
import random

url = "https://llm-api.amd.com"
 #"gemini-pro" #"o1-preview" #"gpt-4o" 
 
headers = {
    "Content-Type": "application/json",
    "Ocp-Apim-Subscription-Key": "fa273d4402b74a9c830c9e9fc4ebfb54"
    }

def getModelResponse(content="", temperature=0.6, max_Tokens=32768, model_name = "gemini-2.5-pro"):
    request_body = {
        "model": model_name,
        "messages": [{
            "role": "user",
            "content": content
            }],
        # "temperature": temperature,
        "max_Tokens": max_Tokens
    }
    
    response = requests.post(url = "{0}/api/chat".format(url),
        json= request_body,
        headers = headers)
    
    response_text = response.text    
    # return response_text
    response_dict = ast.literal_eval(response_text)

    return response_dict["response"]['content']



def reasoning_efforts(prompt, model_id):

    url = 'https://llm-api.amd.com'
    headers = {
        'Ocp-Apim-Subscription-Key': "fa273d4402b74a9c830c9e9fc4ebfb54",#os.getenv("LLM_GATEWAY_KEY"),
        "user": os.getlogin()
    }
    model_api_version = '2024-12-01-preview'
    # model_id = 'o3-mini'#'o1'

    client = openai.AzureOpenAI(
        api_key='dummy',
        api_version=model_api_version,
        base_url=url,
        default_headers=headers
        )

    # Update the base url to use the OpenAI deployments API.
    client.base_url = '{0}/openai/deployments/{1}'.format(url, model_id)

    response = client.chat.completions.create(
        model=model_id,
        messages=[
            {"role": "user", "content": prompt}
        ],
        temperature=1,
        n=1,
        stream=False,
        stop=None,
        max_completion_tokens=40000,
        reasoning_effort="high"
    )

    print('Model: {0}'.format(response.model))
    print('Usage: {0}'.format(response.usage))
    print('{0}: {1}'.format(
        response.choices[0].message.role,
        response.choices[0].message.content))  

def getBranch():
    selected_branches = random.sample(aime_branches, 2)
    return selected_branches[0], selected_branches[1]

def writeToFile(record):
    with open(output_file, "a") as f:
        json_string = json.dumps(record)
        f.write(json_string + "\n")

def extract_question_answer_pair(text):
    # Find all question contents (non-greedy match, dot matches newline)
    # re.findall returns a list of all captured group matches

    all_questions = re.findall(r"<Q>(.*?)</Q>", text, re.DOTALL)
    last_question = None
    if all_questions:
        # Get the last item from the list and strip whitespace
        last_question = all_questions[-1].strip()

    # Find all solution/answer contents (non-greedy match, dot matches newline)
    all_answers = re.findall(r"<S>(.*?)</S>", text, re.DOTALL)
    last_answer = None
    if all_answers:
        # Get the last item from the list and strip whitespace
        last_answer = all_answers[-1].strip()

    # Return the last found question and answer (either or both could be None)
    return (last_question, last_answer)

def questionGeneration():
    prompts = {
        'level1':"""Generate a novel, beginner-level math problem and solution. The problem should target elementary or middle school students (e.g., MOEMS, MATHCOUNTS School, AMC 8, AMC 10, AMC 12 at easier levels) and resemble a traditional word problem. It must yield a single non-negative integer as the final answer. Focus primarily on {} and incorporate a blend of elements from {}.

    Format your response as follows:
    <Q> Problem Statement </Q>
    <S> Step-by-step solution ending with the final answer in \\boxed{{}}. </S>""",
        'level3': """Generate a novel math problem and solution similar to, early intermediate problems that require more creative thinking (e.g., harder MATHCOUNTS National questions, AMC 10 21-25, AMC 12 15-20, hardest AIME 1-3, usual AIME 4-6) and resemble a traditional word problem. It must yield a single non-negative integer as the final answer. Focus primarily on {} and incorporate a blend of elements from {}.

    Format your response as follows:
    <Q> Problem Statement </Q>
    <S> Step-by-step solution ending with the final answer in \\boxed{{}}. </S>""",

        'level6': """Generate a novel math problem and solution similar to, high-leveled AIME-styled questions (14/15) or introductory-leveled Olympiad-level questions (harder USAJMO 1/4 and easier USAJMO 2/5, easier USAMO and IMO 1/4) and resemble a traditional word problem. It must yield a single non-negative integer as the final answer. Focus primarily on {} and incorporate a blend of elements from {}.

    Format your response as follows:
    <Q> Problem Statement </Q>
    <S> Step-by-step solution ending with the final answer in \\boxed{{}}. </S>""",
    }

    with open(output_file, "w") as f:
        pass

    for model in models:
        print(f"==> Model: {model}")
        for level in difficulty_level:
            print(f"==> Level: {level}")
            for i in range(target_questions):
                time.sleep(60/25)
                primary_branch, secondary_branch  = getBranch()
                prompt = prompts[level]
                prompt = prompt.format(primary_branch, secondary_branch)
                response = getModelResponse(prompt, model_name=model)
                print(f"{i+1}): {response[:150]} ....")
                question, answer = extract_question_answer_pair(response)
                record = {
                    'model': model,
                    'prompt': prompt,
                    'instruction': question,
                    'output': answer
                }
                writeToFile(record)


## Some global variables


aime_branches = ["elementary algebra", "geometry", "trigonometry", "number theory", "probability", "combinatorics"]

models = ["gpt-4o", "gemini-2.5-pro"]

difficulty_level = ["level1", "level3", "level6"]

target_questions = 3

output_file = "data/multilevel_difficulty_output.jsonl"

if __name__ == "__main__":
    questionGeneration()
