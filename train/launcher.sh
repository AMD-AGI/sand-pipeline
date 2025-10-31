#!/bin/bash
SIF_FILE="/home/machaita/dockers/rocm_pytorch_training_llamafactory_v25_4.sif"
CONFIG_FILE="train_openr1_math_500"
CONFIG_PATH="examples/train_full/$CONFIG_FILE.yaml"
LOG_FILE="${CONFIG_FILE}.log"

cd /dockerx/home/machaita/LLaMA-Factory-2


# apptainer exec --bind /mnt/m2m_nobackup --bind /shared-aig $SIF_FILE 
llamafactory-cli train $CONFIG_PATH 
#> $LOG_FILE 2>&1

