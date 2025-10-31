MODEL_PATH=$1
OUTPUT_DIR=$2
COMPLETIONS_DIR=$3



echo "#############################################"
echo "###### Starting the AIME25 evaluation ######"
echo "#############################################"

CUDA_VISIBLE_DEVICES='0,1,2,3,4,5,6,7' \
python eval.py \
--model_name_or_path "$MODEL_PATH" \
--data_name "aime25" \
--prompt_type "qwen-instruct" \
--temperature 0.7 \
--start_idx 0 \
--end_idx -1 \
--n_sampling 32 \
--k 1 \
--split "test" \
--max_tokens 32768 \
--seed 0 \
--top_p 1 \
--surround_with_messages \
--output_dir $OUTPUT_DIR \
--completions_save_dir $COMPLETIONS_DIR

