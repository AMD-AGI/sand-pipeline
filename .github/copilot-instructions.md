# Reasoning SOTA Pipeline - AI Agent Instructions

## Project Overview

This is a **synthetic data generation, fine-tuning, and evaluation pipeline** for mathematical reasoning tasks. The project is organized into three major components working together to create SOTA reasoning models:

1. **`train/`** - LLaMA Factory fork for model fine-tuning
2. **`pipeline/`** - Data synthesis and preprocessing pipeline
3. **`eval/`** - Mathematical reasoning evaluation framework

## Architecture & Data Flow
reasoning-sota-pipeline
### Component Interaction
```
pipeline/ → [Generate/Filter Data] → train/data/ → [Fine-tune] → trained models → eval/ → [Benchmark Results]
```

### Directory Structure

- **`train/`**: Modified LLaMA Factory (see [train/README.md](../train/README.md))
  - Fine-tuning configs in `examples/train_full/*.yaml`
  - Supports full fine-tuning, LoRA, QLoRA across 100+ models
  - DeepSpeed integration for distributed training (Z3 configs in `cache/`)
  
- **`pipeline/`**: Data generation and quality control
  - Standalone Python scripts (no shared orchestrator currently)
  - Each script is a self-contained stage: `deepseek_solution_generation.py`, `diffrating.py`, `consistency_check_concurrent.py`, etc.
  - Concurrent processing classes: `DiffRating`, `Consistency`, `BranchTagging`
  - Shared utilities in `utills.py` for LLM API calls
  
- **`eval/`**: Math benchmark evaluation (see [eval/readme.md](../eval/readme.md))
  - VLLM-based inference with rule-based grading
  - Benchmarks: MATH, AIME24/25, GPQA, AMC
  - Answer extraction utilities in `utils/parser.py`, `utils/grader.py`

## Critical Workflows

### 1. Data Generation Pipeline

**Key Pattern**: Pipeline stages are run as independent Python scripts with CLI arguments, not through a central orchestrator.

```bash
# Example: Generate solutions with DeepSeek
cd pipeline/
python deepseek_solution_generation.py \
  --sandmath_path /path/to/questions.jsonl \
  --output_file /path/to/solutions.jsonl \
  --max_concurrency 128
```

**Common Classes Across Scripts**:
- `DiffRating`: Solution generation with difficulty rating
- `Consistency`: Multi-model consistency checks
- `BranchTagging`: Categorize by math branch (algebra, geometry, etc.)

**API Integration**: Scripts use `getLLMResponse()` from `utills.py` which calls:
- DeepSeek R1 via OpenAI-compatible API (localhost:8080)
- AMD internal GPT-4o API (for quality checks)
- Always includes `reasoning={"effort": "high"}` for DeepSeek

### 2. Model Fine-Tuning

**Critical**: This project uses LLaMA Factory's configuration-driven approach.

```bash
cd train/
llamafactory-cli train examples/train_full/train_openr1_math_500.yaml
```

**Key Config Parameters** (from `train_openr1_math_500.yaml`):
```yaml
model_name_or_path: /path/to/Qwen2.5-32B-Instruct
stage: sft  # supervised fine-tuning
finetuning_type: full  # or 'lora' for parameter-efficient
deepspeed: examples/deepspeed/ds_z3_config.json
dataset: openr1_math_500  # refers to train/data/dataset_info.json
cutoff_len: 16384  # context window
template: qwen  # chat template type
```

**Dataset Registration**: Add new datasets to `train/data/dataset_info.json` (though currently empty - datasets likely referenced externally)

### 3. Evaluation

**Run Benchmarks via Shell Script**:
```bash
cd eval/
bash eval.sh /path/to/model /path/to/outputs /path/to/completions
```

**Key Evaluation Parameters** (from `eval.sh`):
- `--n_sampling 64`: For pass@k metrics on AIME (64 samples per question)
- `--temperature 0.0`: Greedy decoding for MATH/GPQA
- `--temperature 0.7`: Sampling for AIME/AMC
- `--surround_with_messages`: Apply chat template wrapper

**Answer Formats**: All math problems expect `\boxed{answer}` format. Extract with:
```python
from utils.parser import extract_answer
from utils.grader import check_is_correct

predicted = extract_answer(model_output)
is_correct = check_is_correct(predicted, gold_answer)
```

### 4. Container Execution

**Apptainer/Singularity Pattern** (AMD-specific):
```bash
# Training
apptainer exec --bind /mnt/m2m_nobackup --bind /shared-aig $SIF_FILE \
  llamafactory-cli train $CONFIG_PATH

# Evaluation  
apptainer exec --bind /mnt/m2m_nobackup --rocm $EVAL_APPTAINER \
  ./eval.sh $MODEL_PATH $OUTPUTS $COMPLETIONS
```

**Container Paths**: `.sif` files stored in `/shared-aig/machaita/dockers/` or `/home/machaita/dockers/`

## Project-Specific Conventions

### Data Format Standards

**Training Data (JSONL)**:
```json
{
  "question": "Solve for x: 2x + 5 = 13",
  "solution": "Step 1: Subtract 5...\n\\boxed{4}",
  "diff_rating": 2.5,
  "branch": "elementary algebra"
}
```

**Evaluation Data**:
```json
{
  "problem": "What is 1/4 as a decimal?",
  "answer": "0.25"  // or "\\frac{1}{4}"
}
```

### Difficulty Rating Scale

Use `diff_scale` dictionary from `pipeline/utills.py`:
- **1.0-2.5**: Beginner (AMC 8, MATHCOUNTS)
- **3.0-4.5**: Intermediate (AMC 10/12, AIME 1-9)
- **5.0-7.0**: Olympiad intro (USAJMO, USAMO 1-2)
- **7.5-10.0**: Advanced Olympiad (USAMO/IMO 3/6)

### Math Branches (AIME categories)
From `pipeline/pipeline.py`:
```python
aime_branches = [
    "elementary algebra", "geometry", "trigonometry",
    "number theory", "probability", "combinatorics"
]
```

### Prompting Convention

**Standard Math Prompt** (from `eval/prompts/qwen-instruct/`):
```python
system_prompt = "Please reason step by step, and put your final answer within \\boxed{}."
question_format = "{question}"
```

## Common Development Patterns

### Running Pipeline Scripts with Concurrency

Most pipeline scripts follow this pattern:
```python
class DiffRating:
    def __init__(self):
        self.max_concurrency = 128
        
    def processDataConcurrent(self, data):
        with concurrent.futures.ThreadPoolExecutor(max_workers=self.max_concurrency) as executor:
            futures = [executor.submit(self._process_item, item) for item in data]
            results = [f.result() for f in tqdm(futures)]
```

### Answer Extraction Robustness

The evaluation utilities handle multiple formats:
- Fractions: `\frac{1}{4}` → `0.25`
- Boxed answers: `\boxed{42}` → `42`
- Mixed numbers: `1\frac{1}{2}` → `1.5`

See `eval/utils/math_normalization.py` for normalization logic.

### Checkpoint Management

**Training Output Structure**:
```
/mnt/m2m_nobackup/machaita/saves/
└── <dataset_name>/<model_name>/
    ├── checkpoint-XXX/
    ├── eval/
    │   ├── outputs/
    │   └── completions/
    └── runs/  # wandb logs
```

## Integration Points

### External Dependencies

**LLM APIs**:
- DeepSeek R1: `http://localhost:8080/v1` (OpenAI-compatible)
- AMD GPT-4o: `https://llm-api.amd.com` (requires subscription key in headers)

**Model Repositories**:
- Models stored: `/shared-aig/machaita/models/` or `/mnt/m2m_nobackup/machaita/saves/`
- HuggingFace cache: `/root/.cache/huggingface` (in containers)

### Key Libraries

**Train** (from `train/requirements.txt`):
- transformers 4.41.2-4.49.0 (strict version constraints)
- peft 0.11.1-0.12.0 (LoRA/QLoRA)
- trl 0.8.6-0.9.6 (RLHF)
- deepspeed (distributed training)

**Eval** (from `eval/requirements.txt`):
- vllm (inference engine)
- sympy (symbolic math checking)
- latex2sympy2 (LaTeX parsing)

## Quick Start Commands

```bash
# 1. Generate synthetic data
cd pipeline/
python deepseek_solution_generation.py --sandmath_path data/input.jsonl --output_file data/output.jsonl

# 2. Fine-tune model
cd train/
llamafactory-cli train examples/train_full/train_sand_math.yaml

# 3. Evaluate
cd eval/
bash eval.sh /path/to/trained/model outputs/ completions/
```

## Debugging Tips

- **VLLM OOM**: Reduce `n_sampling` or use `--dtype half`
- **Tokenizer mismatch**: Ensure eval uses same tokenizer as training (`model_name_or_path`)
- **Missing answers**: Check `extract_answer()` handles your format (add cases to `utils/parser.py`)
- **Slow generation**: Check `MAX_CONCURRENCY` in pipeline scripts (default: 128)
- **DeepSpeed failures**: Verify Z3 config paths in YAML (`examples/deepspeed/ds_z3_config.json`)

## Important Files to Reference

- `eval/utils/grader.py` - Answer checking logic
- `pipeline/utills.py` - LLM API wrappers and difficulty scales
- `train/examples/train_full/` - Fine-tuning configs
- `eval/prompts/qwen-instruct/` - Prompt templates per benchmark

## Notes on Codebase State

- `pipeline/src/orchestrator.py` is empty - no central pipeline orchestrator currently
- `train/data/` is empty - datasets registered externally or via absolute paths
- Pipeline stages are loosely coupled - connect them manually via file I/O
- Evaluation metrics computed as pass@k using combinatorial formula (see `eval/eval.py`)
