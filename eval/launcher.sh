EVAL_APPTAINER="/shared-aig/machaita/dockers/rocm_vllm_dev_limoeval_main.sif"
EVAL_MODEL="LGAI-EXAONE/EXAONE-Deep-32B"
# EVAL_MODEL="deepseek-ai/DeepSeek-R1-Distill-Qwen-32B"
EVAL_MODEL_PATH="/mnt/m2m_nobackup/machaita/saves/$EVAL_MODEL"
EVAL_PATH="${EVAL_MODEL_PATH}/eval"
EVAL_OUTPUTS_PATH="${EVAL_PATH}/outputs"
EVAL_COMPLETIONS_PATH="${EVAL_PATH}/completions"  

apptainer exec --bind /mnt/m2m_nobackup --bind /shared-aig --rocm $EVAL_APPTAINER ./eval.sh $EVAL_MODEL_PATH $EVAL_OUTPUTS_PATH $EVAL_COMPLETIONS_PATH  
