#!/bin/bash

MODEL_PATH=$1
LOG_PREFIX=$2

#create log directory if not exists
mkdir -p logs/${LOG_PREFIX}


echo "#############################################"
echo "###### Starting the AIME24 evaluation ######"
echo "#############################################"

CUDA_VISIBLE_DEVICES='0,1' \
nohup python eval.py \
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
> logs/${LOG_PREFIX}/aime24.log 2>&1 &
# --output_dir $OUTPUT_DIR \
# --completions_save_dir $COMPLETIONS_DIR


echo "#############################################"
echo "###### Starting the AIME25 evaluation ######"
echo "#############################################"

CUDA_VISIBLE_DEVICES='2,3' \
nohup python eval.py \
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
> logs/${LOG_PREFIX}/aime25.log 2>&1 &
# --output_dir $OUTPUT_DIR \
# --completions_save_dir $COMPLETIONS_DIR


echo "#############################################"
echo "###### Starting the MATH500 evaluation ######"
echo "#############################################"

CUDA_VISIBLE_DEVICES='4,5' \
nohup python eval.py \
--model_name_or_path $MODEL_PATH \
--data_name "math" \
--prompt_type "qwen-instruct" \
--temperature 0.7 \
--start_idx 0 \
--end_idx -1 \
--n_sampling 4 \
--k 1 \
--split "test" \
--max_tokens 32768 \
--seed 0 \
--top_p 1 \
--surround_with_messages \
> logs/${LOG_PREFIX}/math500.log 2>&1 &
# --output_dir $OUTPUT_DIR \
# --completions_save_dir $COMPLETIONS_DIR



echo "#############################################"
echo "###### Starting the GPQA evaluation #########"
echo "#############################################"

CUDA_VISIBLE_DEVICES='6,7' \
nohup python eval.py \
--model_name_or_path $MODEL_PATH \
--data_name "gpqa" \
--prompt_type "qwen-instruct" \
--temperature 0.7 \
--start_idx 0 \
--end_idx -1 \
--n_sampling 16 \
--k 1 \
--split "test" \
--max_tokens 32768 \
--seed 0 \
--top_p 1 \
--surround_with_messages \
> logs/${LOG_PREFIX}/gpqa.log 2>&1 &
# --output_dir $OUTPUT_DIR \
# --completions_save_dir $COMPLETIONS_DIR

# wait for all background processes to finish
wait
echo "All evaluations completed."


