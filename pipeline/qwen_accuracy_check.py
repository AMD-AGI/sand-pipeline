import json
from vllm import LLM, SamplingParams
from tqdm import tqdm
import openai
import time


def get_completion(prompt, model_id="o4-mini", max_tokens=68000, n=1):

    url = "https://llm-api.amd.com"
    openai.api_base = url
    openai.api_key = "dummy"    
    openai.api_type = 'azure'    
    openai.api_version = "2024-12-01-preview"
    headers = {"Ocp-Apim-Subscription-Key": "fa273d4402b74a9c830c9e9fc4ebfb54"}

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
        # reasoning_effort="high",
        stream=False,
        # n=n
    )    

    return response.choices[0].message.content

def init_llm(model_name: str, available_gpus: list[int]) -> LLM:
    """
    Initialize a vLLM LLM instance with the given model and GPU config.
    """
    return LLM(
        model=model_name,
        tensor_parallel_size=len(available_gpus),
        trust_remote_code=True,
        max_num_seqs=1024,
        max_model_len=32768,
        max_num_batched_tokens=65536,
        max_seq_len_to_capture=32768,
        gpu_memory_utilization=0.95,
        enable_chunked_prefill=True,
    )

def batch_generate(llm: LLM, prompts: list[str], max_tokens: int = 512, temperature: float = 0.0) -> list[str]:
    """
    Generate one completion per prompt, in batch.
    """
    sampling_params = SamplingParams(temperature=temperature, max_tokens=max_tokens)
    outputs = llm.generate(
        prompts,
        sampling_params,
    )
    # outputs.generations is a List[List[Generation]] (one inner list per prompt)
    return [output.outputs[0].text for output in outputs]

def main():
    input_path = "data/gptoss/qa_31aug2025_90sample.jsonl"
    output_path = "data/gptoss/qa_31aug2025_90sample_with_qwen.jsonl"
    model_name = "/dockerx/mnt/m2m_nobackup/machaita/models/Qwen/Qwen2.5-32B-Instruct"
    available_gpus = [0, 1, 2, 3, 4, 5, 6, 7]  # adjust to your setup
    max_retries = 3

    llm = init_llm(model_name, available_gpus)

    # 1) Read all records
    records = []
    with open(input_path, "r") as fin:
        for line in fin:
            rec = json.loads(line)
            records.append({
                "question": rec["question"].strip(),
                "solution": rec["solution"].strip()
            })

    # records = records[:8]
    # 2) Batch-generate Qwen solutions
    questions = [r["question"] for r in records]
    qwen_sols = batch_generate(llm, questions, max_tokens=32768, temperature=0.5)

    # 3) Build judge prompts and batch-generate judgments
    judge_prompts = []
    for rec, qwen_sol in zip(records, qwen_sols):
        prompt = (
            "Determine whether the candidate solution matches the ground-truth solution.\n\n"
            f"Question:\n{rec['question']}\n\n"
            f"Ground-truth solution:\n{rec['solution'].split("</think>")[-1]}\n\n"
            f"Candidate solution:\n{qwen_sol}\n\n"
            "Answer **yes** if they match, **no** otherwise."
        )
        judge_prompts.append(prompt)

    judgements = []
    for prompt in tqdm(judge_prompts, desc="judgement"):
        judgement = None
        for t in range(max_retries):
            try:
                time.sleep(60/25)
                judgement = get_completion(prompt)
                break
            except openai.OpenAIError as e:            
                print(f"Error details: {e}")
        judgements.append(judgement)
        

    # 4) Write out augmented records
    total = len(records)
    match_count = 0
    with open(output_path, "w") as fout:
        for rec, qwen_sol, judgement in zip(records, qwen_sols, judgements):
            is_match = "yes" in judgement.lower()
            match_count += int(is_match)

            out_rec = {
                "question":       rec["question"],
                "solution":       rec["solution"],
                "qwen_solution":  qwen_sol,
                "matching":       judgement,
                "is_match":       is_match,
            }
            fout.write(json.dumps(out_rec) + "\n")

    accuracy = (match_count / total * 100) if total > 0 else 0.0
    print(f"Total samples: {total}")
    print(f"Matches:      {match_count}")
    print(f"Accuracy:     {accuracy:.2f}%")


if __name__ == "__main__":
    main()