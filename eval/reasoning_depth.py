import json
import random

def load_jsonl(path: str) -> list[dict]:
    """
    Load a JSON Lines (.jsonl) file into a list of dicts.
    """
    records = []
    with open(path, 'r', encoding='utf-8') as f:
        for line in f:
            records.append(json.loads(line))
    return records

def save_jsonl(path: str, records: list[dict]) -> None:
    """
    Save a list of dicts as a JSON Lines (.jsonl) file.
    """
    with open(path, 'w', encoding='utf-8') as f:
        for rec in records:
            f.write(json.dumps(rec, ensure_ascii=False) + "\n")

def pick_any_correct(responses: list[str], correctness: list[bool]) -> str:
    """
    From `responses`, pick a random response whose corresponding
    `correctness` is True. If none are True, pick the first response
    (or empty string if no responses).
    """
    correct_idxs = [i for i, ok in enumerate(correctness) if ok]
    if correct_idxs:
        idx = random.choice(correct_idxs)
    else:
        idx = 0  # fallback
    return responses[idx] if responses else ""

def main():
    # Paths to your two models' outputs
    baseline_path = "outputs/models/limo_sand_math_500/Qwen2.5-32B-Instruct/aime25/test_qwen-instruct_t0.7_k16_s0_e30.jsonl"
    better_path   = "outputs/models/limo_sandmath1500_seeds_diffhiked_le32k/Qwen2.5-32B-Instruct/aime25/test_qwen-instruct_t0.7_k16_s0_e30.jsonl"
    output_path   = "top10_diff_nodh_vs_dh.jsonl"

    # 1) Load both sets of records
    baseline_recs = load_jsonl(baseline_path)
    better_recs   = load_jsonl(better_path)

    # 2) Index by `id`
    base_map = {rec['id']: rec for rec in baseline_recs}
    better_map = {rec['id']: rec for rec in better_recs}

    # 3) For each common ID, compute pass‐rate and difference
    diffs = []
    for _id, base in base_map.items():
        if _id not in better_map:
            continue
        better = better_map[_id]

        bc = base.get('answers_correctness', [])
        br = better.get('answers_correctness', [])
        if not bc or not br:
            continue

        base_rate   = sum(bc) / len(bc)
        better_rate = sum(br) / len(br)
        diff = better_rate - base_rate

        diffs.append({
            'id': _id,
            'question': base.get('question', ""),
            'base_rec': base,
            'better_rec': better,
            'pass_diff': diff
        })

    # 4) Sort by difference descending, take top 10
    top10 = sorted(diffs, key=lambda x: x['pass_diff'], reverse=True)[:10]

    # 5) Build output records
    out_records = []
    for entry in top10:
        base = entry['base_rec']
        better = entry['better_rec']

        baseline_answer   = pick_any_correct(
            base.get('generated_responses', []),
            base.get('answers_correctness', [])
        )
        bettermodel_answer = pick_any_correct(
            better.get('generated_responses', []),
            better.get('answers_correctness', [])
        )

        out_records.append({
            'id': entry['id'],
            'question': entry['question'],
            'baseline_answer': baseline_answer,
            'bettermodel_answer': bettermodel_answer,
            'baseline_pass_rate': sum(base['answers_correctness']) / len(base['answers_correctness']),
            'better_pass_rate':  sum(better['answers_correctness']) / len(better['answers_correctness']),
            'pass_rate_diff': entry['pass_diff']
        })

    # 6) Save to output file
    save_jsonl(output_path, out_records)
    print(f"Saved top 10 records to {output_path}")

if __name__ == "__main__":
    # Optionally set a seed for reproducibility of random choices
    random.seed(42)
    main()