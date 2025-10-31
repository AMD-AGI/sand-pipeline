import requests
import ast
import re
import json
from tqdm import tqdm
import os
import time 
import datasets as ds

url = "https://llm-api.amd.com"
 #"gemini-pro" #"o1-preview" #"gpt-4o" 
 
headers = {
    "Content-Type": "application/json",
    "Ocp-Apim-Subscription-Key": "fa273d4402b74a9c830c9e9fc4ebfb54"
    }

def getModelResponse(content="", temperature=0.6, max_Tokens=40000, model_name = "gemini-2.5-pro"):
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
    response_dict = ast.literal_eval(response.text)

    return response_dict

    # try:
    #     return response_dict["response"]['content']
    # except KeyError:





def reasoning_efforts(prompt):

    url = 'https://llm-api.amd.com'
    headers = {
        'Ocp-Apim-Subscription-Key': "fa273d4402b74a9c830c9e9fc4ebfb54",#os.getenv("LLM_GATEWAY_KEY"),
        "user": os.getlogin()
    }
    model_api_version = '2024-12-01-preview'
    model_id = 'o3-mini'#'o1'

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
        max_completion_tokens=8192,
        reasoning_effort="high"
    )
    return response.choices[0].message.content

    print('Model: {0}'.format(response.model))
    print('Usage: {0}'.format(response.usage))
    print('{0}: {1}'.format(
        response.choices[0].message.role,
        response.choices[0].message.content)) 





difficulty_prompt = r"""
# ROLE: Expert Math Problem Difficulty Assessor

# TASK:
Analyze the provided math problem and solution to assign a difficulty score based on the provided reference materials.

# REFERENCE MATERIALS:
<difficulty_reference>
## Difficulty Level Descriptions (1.0 - 10.0 Scale)

1.0: Problems strictly for beginner, on the easiest elementary school or middle school levels (MOEMS, MATHCOUNTS School, AMC 8 1-10, AMC 10 1-10, easier AMC 12 1-5, and others that involve standard techniques introduced up to the middle school level), most traditional middle/high school word problems.

1.5: Problems for stronger beginner students, on the level of the middling problems in most middle school contests (AMC 8 11-20, harder AMC 10 1-10, AMC 12 1-5, and those others that force students to apply their school-level knowledge to slightly more challenging problems), traditional middle/high school word problems with more complex problem solving.

2.0: For motivated beginners, harder questions from the previous categories (AMC 8 21-25, MATHCOUNTS Chapter (Sprint 21-30, Target 6-8), MATHCOUNTS States/Nationals, AMC 10 11-15, AMC 12 5-10, easiest AIME 1-3)

2.5: More advanced beginner problems, hardest questions from previous categories (Harder AMC 8 21-25, harder MATHCOUNTS States questions, AMC 10 16-20, AMC 12 11-15, usual AIME 1-3)

3.0: Early intermediate problems that require more creative thinking (harder MATHCOUNTS National questions, AMC 10 21-25, AMC 12 15-20, hardest AIME 1-3, usual AIME 4-6).

3.5: Problems requiring non-trivial insights or synthesis (Harder AMC 10 21-25, harder AMC 12 15-20, usual AIME 4-6, harder AIME 7-9).

4.0: Intermediate-level problems (AMC 12 21-25, hardest AIME 4-6, usual AIME 7-10).

4.5: Strong intermediate problems bridging to Olympiad style (Harder AMC 12 21-25, usual AIME 10-12, easiest USAJMO 1/4).

5.0: More difficult AIME problems (11-13), simple proof-based Olympiad-style problems (early JBMO questions, easier USAJMO 1/4).

5.5: Challenging AIME problems, introductory Olympiad proofs (Hardest AIME 11-13, average USAJMO 1/4, easier USAJMO 2/5).

6.0: High-leveled AIME-styled questions (14/15). Introductory-leveled Olympiad-level questions (harder USAJMO 1/4 and easier USAJMO 2/5, easier USAMO and IMO 1/4).

6.5: Solid introductory Olympiad problems (Average USAJMO 2/5, harder USAJMO 3/6, average USAMO/IMO 1/4).

7.0: Tougher Olympiad-level questions, may require more technical knowledge (harder USAJMO 2/5 and most USAJMO 3/6, extremely hard USAMO and IMO 1/4, easy-medium USAMO and IMO 2/5).

7.5: Strong Olympiad problems (Hardest USAJMO 3/6, medium USAMO/IMO 2/5).

8.0: High-level Olympiad-level questions (medium-hard USAMO and IMO 2/5, easiest USAMO and IMO 3/6).

8.5: Very challenging Olympiad problems (Hard USAMO/IMO 2/5, average USAMO/IMO 3/6).

9.0: Expert Olympiad-level questions (average USAMO and IMO 3/6).

9.5: The hardest problems appearing on Olympiads which the strongest students could reasonably solve (hard USAMO and IMO 3/6).

10.0: Historically hard problems, generally unsuitable for very hard competitions (such as the IMO) due to being exceedingly tedious, long, and difficult (e.g. very few students are capable of solving on a worldwide basis).

## Example Problems by Difficulty Level 

1.0: How many integer values of $x$ satisfy $|x| < 3\pi$? \textit{(2021 Spring AMC 10B, Problem 1)}

1.5: A number is called flippy if its digits alternate between two distinct digits. For example, $2020$ and $37373$ are flippy, but $3883$ and $123123$ are not. How many five-digit flippy numbers are divisible by $15$? \textit{(2020 AMC 8, Problem 19)}

2.0: A fair $6$-sided die is repeatedly rolled until an odd number appears. What is the probability that every even number appears at least once before the first occurrence of an odd number? \textit{(2021 Spring AMC 10B, Problem 18)}

2.5: $A$, $B$, $C$ are three piles of rocks. The mean weight of the rocks in $A$ is $40$ pounds, the mean weight of the rocks in $B$ is $50$ pounds, the mean weight of the rocks in the combined piles $A$ and $B$ is $43$ pounds, and the mean weight of the rocks in the combined piles $A$ and $C$ is $44$ pounds. What is the greatest possible integer value for the mean in pounds of the rocks in the combined piles $B$ and $C$? \textit{(2013 AMC 12A, Problem 16)}

3.0: Triangle $\triangle ABC$ with $AB=50$ and $AC=10$ has area $120$. Let $D$ be the midpoint of $\overline{AB}$, and let $E$ be the midpoint of $\overline{AC}$. The angle bisector of $\angle BAC$ intersects $\overline{DE}$ and $\overline{BC}$ at $F$ and $G$, respectively. What is the area of quadrilateral $FDBG$? \textit{(2018 AMC 10A, Problem 24)}

3.5: Find the number of integer values of $k$ in the closed interval $[-500,500]$ for which the equation $\log(kx)=2\log(x+2)$ has exactly one real solution. \textit{(2017 AIME II, Problem 7)}

4.0: Define a sequence recursively by $x_0=5$ and $x_{n+1}=\frac{x_n^2+5x_n+4}{x_n+6}$ for $n \ge 0$. Let $m$ be least positive integer such that $x_m\leq 4+\frac{1}{2^{20}}$. In which interval does $m$ lie? \\ (A) $[9,26]$ (B) $[27,80]$ (C) $[81,242]$ (D) $[243,728]$ (E) $[729,\infty)$ \\ \textit{(2019 AMC 10B/12B)}

4.5: Find all positive integers $n$ for which $2^n + 12^n + 2011^n$ is a perfect square. \textit{(USAJMO 2011/1)}

5.0: Find all triples $(a, b, c)$ of real numbers such that $a+b+c = \frac{1}{a}+\frac{1}{b}+\frac{1}{c}$ and $a^2+b^2+c^2 = \frac{1}{a^2}+\frac{1}{b^2}+\frac{1}{c^2}$. \textit{(JBMO 2020/1)}

5.5: $\triangle ABC$ has $\angle BAC = 60^{\circ}$, $\angle CBA \leq 90^{\circ}$, $BC=1$, $AC \geq AB$. $H, I, O$ are orthocenter, incenter, circumcenter. Area of pentagon $BCOIH$ is maximized. Find $\angle CBA$. \textit{(2011 AMC 12A, Problem 25)}

6.0: Acute $\triangle ABC$, circumcircle $\omega$, orthocenter $H$. Tangent to circumcircle($\triangle HBC$) at $H$ intersects $\omega$ at $X, Y$. Given $HA=3,HX=2,HY=6.$ Area($\triangle ABC$) = $m\sqrt{n}$ ($n$ square-free). Find $m+n.$ \textit{(2020 AIME I, Problem 15)}

6.5: Rectangles $BCC_1B_2,$ $CAA_1C_2,$ $ABB_1A_2$ erected outside acute $\triangle ABC.$ Given $\angle BC_1C+\angle CA_1A+\angle AB_1B=180^{\circ}.$ Prove lines $B_1C_2,$ $C_1A_2,$ $A_1B_2$ are concurrent. \textit{(USAMO 2021/1)}

7.0: Finite set $\mathcal{S}$ in plane is balanced if $\forall A, B \in \mathcal{S} (A \neq B), \exists C \in \mathcal{S}$ s.t. $AC=BC$. $\mathcal{S}$ is centre-free if $\forall A, B, C \in \mathcal{S}$, no $P \in \mathcal{S}$ exists s.t. $PA=PB=PC$. (a) Show $\forall n\geq 3$, exists balanced set of $n$ points. (b) Find all $n\geq 3$ for which balanced centre-free set of $n$ points exists. \textit{(IMO 2015/1)}

7.5: Find all functions $f : \mathbb{Z} \rightarrow \mathbb{Z}$ such that $xf(2f(y)-x)+y^2f(2x-f(y))=\frac{f(x)^2}{x}+f(yf(y))$ for all $x, y \in \mathbb{Z}, x \neq 0$. \textit{(USAMO 2014/2)}

8.0: Coins of denomination $\frac{1}{n}$ for $n \in \mathbb{Z}^+$. Finite collection with total value $\le 99.5$. Prove it can be split into $\le 100$ groups, each group total value $\le 1$. \textit{(IMO 2014/5)}

8.5: Acute $\triangle ABC, AB\neq AC$. Incenter $I$, incircle $\omega$ tangent to $BC, CA, AB$ at $D, E, F$. Line through $D \perp EF$ meets $\omega$ at $R$. Line $AR$ meets $\omega$ again at $P$. Circumcircles($\triangle PCE$) and ($\triangle PBF$) meet again at $Q$. Prove $DI, PQ$ meet on line through $A \perp AI$. \textit{(IMO 2019/6)}

9.0: $k \in \mathbb{Z}^+$, $\mathcal{S}$ finite set of odd primes. Prove $\exists$ at most one way (up to rotation/reflection) to place elements of $\mathcal{S}$ around circle s.t. product of any two neighbors is $x^2+x+k$ for some $x \in \mathbb{Z}^+$. \textit{(IMO 2022/3)}

9.5: Anti-Pascal triangle: equilateral array, each number $|$difference of two below$|$. Example given. Does there exist one with $2018$ rows containing every integer $1$ to $N = \sum_{i=1}^{2018} i$? \textit{(IMO 2018/3)}

10.0: Prove $\exists c>0$ s.t. for $n>1$ and set $\mathcal{S}$ of $n$ points in plane with pairwise distance $\ge 1$, there exists line $\ell$ separating $\mathcal{S}$ s.t. distance from any point in $\mathcal{S}$ to $\ell$ is $\ge cn^{-1/3}$. (Line $\ell$ separates $\mathcal{S}$ if segment joining two points in $\mathcal{S}$ crosses $\ell$). \textit{(IMO 2020/6)}
</difficulty_reference>

# INSTRUCTIONS:
1.  **Analyze:** Carefully read the provided `Math Problem` and its `Solution`. Identify the core mathematical concepts, required techniques, and the complexity of the argument. Note any particularly clever steps, non-obvious insights, or reliance on advanced theorems.
2.  **Compare:** Compare the analyzed problem to the `Example Problems by Difficulty Level` and the `Difficulty Level Descriptions` provided in the reference materials. Consider where it fits in terms of typical competition level (AMC 8/10/12, AIME, USA(J)MO, IMO) and the type of thinking required.
3.  **Score:** Assign a difficulty score between **1.0 and 10.0**, using increments of **0.5** (e.g., 3.0, 3.5, 4.0). The score must be consistent with the provided reference scale.
4.  **Summarize:** Write a brief paragraph summarizing the problem's core topic and mathematical area(s). Enclose this summary within `<S>` and `</S>` tags.
5.  **Assign Score:** Place the difficulty score assigned in step 3 within `<D>` and `</D>` tags.
6.  **Justify:** Write a paragraph explaining the reasoning behind the assigned difficulty score, explicitly referencing the comparison made in step 2 (e.g., "This problem involves techniques similar to example 3.5..." or "The required insight aligns with the description for level 6.0..."). Mention aspects of the problem or solution (like multi-step reasoning, specific theorems, type of creativity needed) that justify the score. Enclose this justification within `<R>` and `</R>` tags.

# OUTPUT FORMAT:
<S>[Your brief paragraph summarizing the problem.]</S>
<D>[The assigned score, e.g., 4.5]</D>
<R>[Your paragraph justifying the score based on analysis and comparison to references.]</R>

# INPUT PROBLEM & SOLUTION:

## Math Problem:
<|question|>

## Solution:
<|solution|>
"""



def processResponse(text):
    match = re.search(r"<D>(.*?)</D>", text, re.DOTALL)  
    if match:  
        return float(match.group(1).strip())
    else:  
        return 0.0

def writeRecord(record):
    with open(target_file, 'a') as f:
        json_string = json.dumps(record)
        f.write(json_string + "\n")

    print(f"Record appended successfully....to {target_file}")

## --------------------------------------------------
## main script    
## --------------------------------------------------

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
# data_file = os.path.join(SCRIPT_DIR, "data", "generated_qa_pduks-slu000022.jsonl")
# data_file = "data/multilevel_difficulty_output.jsonl"
# data_file = "/dockerx/home/machaita/LIMO/eval/data/aime/test.jsonl"
# target_file = "/dockerx/home/machaita/LIMOSYN/aime_test_diffrated.jsonl"
# target_file = "data/multilevel_difficulty_diffrated.jsonl"

datasets = {
    # 'math500':{'path':'/dockerx/home/machaita/LIMO/eval/data/math/test.jsonl', 'target_file':'/dockerx/home/machaita/LIMOSYN/math500_diffrated.jsonl'},
    # 'gsm8k':{'path':'openai/gsm8k', 'target_file':'/dockerx/home/machaita/LIMOSYN/gsm8k_diffrated.jsonl'},
    # 'omiv2':{'path':'nvidia/OpenMathInstruct-2', 'target_file':'/dockerx/home/machaita/LIMOSYN/omiv2_diffrated.jsonl'},
    # 'mmiqc':{'path':'Vivacem/MMIQC', 'target_file':'/dockerx/home/machaita/LIMOSYN/mmiqc_diffrated.jsonl'},
    'multi': {'path': '/dockerx/home/machaita/LIMOSYN/data/multilevel_difficulty_output.jsonl', 'target_file':'/dockerx/home/machaita/LIMOSYN/data/multilevel_difficulty_diffrated_gpt4o.jsonl'}
}

for dataset_name, dataset_info in datasets.items():
    data = []
    max_retries = 3
    target_file = dataset_info["target_file"]

    if dataset_name == "math500":
        print(f"Detected input file math500")
        with open(dataset_info["path"], "r") as f:
            for line in f:
                record = json.loads(line.strip())
                new_record = {
                    'instruction':record["problem"],
                    'output':record["solution"]
                }
                data.append(new_record)

        
        
    elif dataset_name == "gsm8k":
        print(f"Detected input file gsm8k")
        dataset = ds.load_dataset(dataset_info["path"], "main", split="test").shuffle(seed=41).select(range(500))
        for row in dataset:
            record = {
                'instruction': row['question'],
                'output': row['answer']
            }
            data.append(record)

    elif dataset_name == "omiv2":
        print(f"Detected input file omiv2")
        dataset = ds.load_dataset(dataset_info["path"], split="train_1M")\
            .shuffle(seed=41)\
                .select(range(10000))\
                    .filter(lambda example: example['problem_source'].startswith('augmented'))\
                        .select(range(500))
        for row in dataset:
            record = {
                'instruction': row['problem'],
                'output': row['generated_solution']
            }
            data.append(record)

    elif dataset_name == "mmiqc":
        print(f"Detected input file mmiqc")
        dataset = ds.load_dataset(dataset_info["path"], split="train")\
            .shuffle(seed=41)\
                .select(range(10000))\
                    .filter(lambda example: example['source'].strip() != 'stackexchange-math')\
                        .select(range(500))
        for row in dataset:
            record = {
                'instruction': row['instruction'],
                'output': row['output']
            }
            data.append(record)

    elif dataset_name == "multi":
        print(f"Detected dataset is multi")
        with open(dataset_info["path"], "r") as f:
            for line in f:
                record = json.loads(line.strip())
                data.append(record)







    ## ouput file initialization
    with open(target_file, "w") as f:
        pass

    print(f"Triggering data generaiton for {dataset_name}")
    print(f"Data will be saved to {target_file}")

    ## get the difficulty response
    for i, record in tqdm(enumerate(data), total=len(data), desc=f"{dataset_name} Calls"):
        question = record["instruction"]
        solution = record["output"]
        if question is None:
            question = "Dummy Question"
        if solution is None:
            solution = "Dummy Soluiton"

        prompt = difficulty_prompt.replace('<|question|>',question).replace('<|solution|>', solution)
        for t in range(max_retries):
            try:
                # time.sleep(60/30)
                response = getModelResponse(prompt, model_name="gpt-4o")
                # response = reasoning_efforts(prompt)
                print(response)
                if 'message' in response and 'Rate limit is exceeded.' not in response['message']:
                    break
            except Exception as E:
                print(f"Model calling failed for {i+1} with error: {E}")
                # response = ""
        try:
            if "response" in response and 'content' in response["response"]:
                rating = processResponse(response["response"]["content"])
                data[i]["rating"] = rating
                data[i]["response"] = response
            else:
                raise Exception(f"Response donesn't have answer. Response: {response}")
        except Exception as E:
            print(f"Difficulty score extraction failed for {i+1} with error: {E}")
            data[i]["rating"] = 0.0
            data[i]["response"] = response
        
        writeRecord(data[i])









