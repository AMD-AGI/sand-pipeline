MODEL_PATH="Qwen/Qwen2.5-3B-Instruct"

echo "###### Starting the AIME_SYN evaluation for MODEL: $MODEL_PATH ######"
CUDA_VISIBLE_DEVICES='0,1,2,3,4,5,6,7' \
python eval.py \
--model_name_or_path $MODEL_PATH \
--data_name "aime_syn" \
--prompt_type "qwen-instruct" \
--temperature 0.7 \
--start_idx 0 \
--end_idx -1 \
--n_sampling 8 \
--k 1 \
--split "test" \
--max_tokens 32768 \
--seed 0 \
--top_p 1 \
--output_dir outputs/difficulty

MODEL_PATH="Qwen/Qwen2.5-7B-Instruct"

echo "###### Starting the AIME_SYN evaluation for MODEL: $MODEL_PATH ######"
CUDA_VISIBLE_DEVICES='0,1,2,3,4,5,6,7' \
python eval.py \
--model_name_or_path $MODEL_PATH \
--data_name "aime_syn" \
--prompt_type "qwen-instruct" \
--temperature 0.7 \
--start_idx 0 \
--end_idx -1 \
--n_sampling 8 \
--k 1 \
--split "test" \
--max_tokens 32768 \
--seed 0 \
--top_p 1 \
--output_dir outputs/difficulty

MODEL_PATH="Qwen/Qwen2.5-14B-Instruct"

echo "###### Starting the AIME_SYN evaluation for MODEL: $MODEL_PATH ######"
CUDA_VISIBLE_DEVICES='0,1,2,3,4,5,6,7' \
python eval.py \
--model_name_or_path $MODEL_PATH \
--data_name "aime_syn" \
--prompt_type "qwen-instruct" \
--temperature 0.7 \
--start_idx 0 \
--end_idx -1 \
--n_sampling 8 \
--k 1 \
--split "test" \
--max_tokens 32768 \
--seed 0 \
--top_p 1 \
--output_dir outputs/difficulty

MODEL_PATH="Qwen/Qwen2.5-32B-Instruct"

echo "###### Starting the AIME_SYN evaluation for MODEL: $MODEL_PATH ######"
CUDA_VISIBLE_DEVICES='0,1,2,3,4,5,6,7' \
python eval.py \
--model_name_or_path $MODEL_PATH \
--data_name "aime_syn" \
--prompt_type "qwen-instruct" \
--temperature 0.7 \
--start_idx 0 \
--end_idx -1 \
--n_sampling 8 \
--k 1 \
--split "test" \
--max_tokens 32768 \
--seed 0 \
--top_p 1 \
--output_dir outputs/difficulty


MODEL_PATH="GAIR/LIMO"

echo "###### Starting the AIME_SYN evaluation for MODEL: $MODEL_PATH ######"
CUDA_VISIBLE_DEVICES='0,1,2,3,4,5,6,7' \
python eval.py \
--model_name_or_path $MODEL_PATH \
--data_name "aime_syn" \
--prompt_type "qwen-instruct" \
--temperature 0.7 \
--start_idx 0 \
--end_idx -1 \
--n_sampling 8 \
--k 1 \
--split "test" \
--max_tokens 32768 \
--seed 0 \
--top_p 1 \
--output_dir outputs/difficulty

MODEL_PATH="LGAI-EXAONE/EXAONE-Deep-32B"

echo "###### Starting the AIME_SYN evaluation for MODEL: $MODEL_PATH ######"
CUDA_VISIBLE_DEVICES='0,1,2,3,4,5,6,7' \
python eval.py \
--model_name_or_path $MODEL_PATH \
--data_name "aime_syn" \
--prompt_type "qwen-instruct" \
--temperature 0.7 \
--start_idx 0 \
--end_idx -1 \
--n_sampling 8 \
--k 1 \
--split "test" \
--max_tokens 32768 \
--seed 0 \
--top_p 1 \
--output_dir outputs/difficulty