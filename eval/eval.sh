

MODEL_PATH=$1
OUTPUT_DIR=$2
COMPLETIONS_DIR=$3

echo "#############################################"
echo "###### Starting the MATH500 evaluation ######"
echo "#############################################"

CUDA_VISIBLE_DEVICES='0,1,2,3,4,5,6,7' \
python eval.py \
--model_name_or_path $MODEL_PATH \
--data_name "math" \
--prompt_type "qwen-instruct" \
--temperature 0.0 \
--start_idx 0 \
--end_idx -1 \
--n_sampling 1 \
--k 1 \
--split "test" \
--max_tokens 32768 \
--seed 0 \
--top_p 1 \
--surround_with_messages \
# --output_dir $OUTPUT_DIR \
# --completions_save_dir $COMPLETIONS_DIR

sleep 20

echo "#############################################"
echo "###### Starting the GPQA evaluation #########"
echo "#############################################"

CUDA_VISIBLE_DEVICES='0,1,2,3,4,5,6,7' \
python eval.py \
--model_name_or_path $MODEL_PATH \
--data_name "gpqa" \
--prompt_type "qwen-instruct" \
--temperature 0.0 \
--start_idx 0 \
--end_idx -1 \
--n_sampling 1 \
--k 1 \
--split "test" \
--max_tokens 32768 \
--seed 0 \
--top_p 1 \
--surround_with_messages \
# --output_dir $OUTPUT_DIR \
# --completions_save_dir $COMPLETIONS_DIR

sleep 20

echo "#############################################"
echo "###### Starting the AIME25 evaluation ######"
echo "#############################################"
# ,1,2,3,4,5,6,7
CUDA_VISIBLE_DEVICES='0,1,2,3,4,5,6,7' \
python eval.py \
--model_name_or_path $MODEL_PATH \
--data_name "aime25" \
--prompt_type "qwen-instruct" \
--temperature 0.7 \
--start_idx 0 \
--end_idx -1 \
--n_sampling 64 \
--k 1 \
--split "test" \
--max_tokens 32768 \
--seed 0 \
--top_p 1 \
--surround_with_messages \
# --output_dir $OUTPUT_DIR \
# --completions_save_dir $COMPLETIONS_DIR


sleep 20


echo "#############################################"
echo "###### Starting the AIME24 evaluation ######"
echo "#############################################"

CUDA_VISIBLE_DEVICES='0,1,2,3,4,5,6,7' \
python eval.py \
--model_name_or_path $MODEL_PATH \
--data_name "aime" \
--prompt_type "qwen-instruct" \
--temperature 0.7 \
--start_idx 0 \
--end_idx -1 \
--n_sampling 64 \
--k 1 \
--split "test" \
--max_tokens 32768 \
--seed 0 \
--top_p 1 \
--surround_with_messages \
# --output_dir $OUTPUT_DIR \
# --completions_save_dir $COMPLETIONS_DIR

sleep 20

# echo "#############################################"
# echo "###### Starting the AMC evaluation ##########"
# echo "#############################################"

# CUDA_VISIBLE_DEVICES='0,1,2,3,4,5,6,7' \
# python eval_concurrent.py \
# --model_name_or_path $MODEL_PATH \
# --data_name "amc" \
# --prompt_type "qwen-instruct" \
# --temperature 0.7 \
# --start_idx 0 \
# --end_idx -1 \
# --n_sampling 64 \
# --k 1 \
# --split "test" \
# --max_tokens 32768 \
# --seed 0 \
# --top_p 1 \
# --surround_with_messages \
# --output_dir $OUTPUT_DIR \
# --completions_save_dir COMPLETIONS_DIR

# sleep 20





# echo "###### Starting the sand_math evaluation ######"
# CUDA_VISIBLE_DEVICES='0,1,2,3,4,5,6,7' \
# python eval.py \
# --model_name_or_path $MODEL_PATH \
# --data_name "sand_math" \
# --prompt_type "qwen-instruct" \
# --temperature 0.7 \
# --start_idx 0 \
# --end_idx -1 \
# --n_sampling 4 \
# --k 1 \
# --split "test" \
# --max_tokens 32768 \
# --seed 0 \
# --top_p 1 \
# --output_dir $OUTPUT_DIR