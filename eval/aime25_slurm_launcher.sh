#!/bin/bash
#SBATCH --job-name=r1
#SBATCH --nodes=1
#SBATCH --gres=gpu:8  # Request 8 GPUs
#SBATCH --time=5-00:00:00 
#SBATCH --partition=amd-aig-fc
#SBATCH --account=amd-aig-fc
#SBATCH --cpus-per-gpu=12
#SBATCH --nodelist=pdfc-aig-00001B
#SBATCH --exclude=pdfc-aig-00000E,pdfc-aig-00000F




# run_name=$1
# image_name=$2

# master_port=$((20000 + $RANDOM % 40000))
# echo "Master Port: $master_port"
# echo $SLURM_JOB_NODELIST

# head_node=$(scontrol show hostnames "$SLURM_JOB_NODELIST" | head -n 1)

# # head_node_ip=$(srun --nodes=1 --ntasks=1 -w "$head_node" hostname --ip-address)
# head_node_ip=$head_node

# # echo "Head node: $head_node"
# echo "Node IP: $head_node_ip"

export OMP_NUM_THREADS=200
export HSA_FORCE_FINE_GRAIN_PCIE=1
export NCCL_DEBUG=INFO
export NCCL_ENABLE_DMABUF_SUPPORT=1
# export NCCL_DMABUF_ENABLE=1
### set these environment variables if using RoCE interconnect
export NCCL_IB_GID_INDEX=3
export AMD_SERIALIZE_KERNEL=3
### set NIC cards
# export NCCL_IB_HCA=mlx5_an0:1,mlx5_ib0:1,mlx5_ib1:1,mlx5_ib2:1,mlx5_ib3:1,mlx5_ib4:1,mlx5_ib5:1,mlx5_ib6:1,mlx5_ib7:1
export NCCL_IB_HCA=mlx5_ib0:1,mlx5_ib1:1,mlx5_ib2:1,mlx5_ib3:1,mlx5_ib4:1,mlx5_ib5:1,mlx5_ib6:1,mlx5_ib7:1

export NCCL_IB_DISABLE=0
export NCCL_NSOCKS_PERTHREAD=12
# export NCCL_SOCKET_IFNAME=rdma0,rdma1,rdma2,rdma3,rdma4,rdma5,rdma6,rdma7 #ip a
export NCCL_SOCKET_IFNAME=eth0

export TORCH_NCCL_ASYNC_ERROR_HANDLING=1
# export CUDA_DEVICE_MAX_CONNECTIONS=1
# export GPU_MAX_HW_QUEUES=2
# export TORCH_NCCL_HIGH_PRIORITY=1
# export NCCL_PROTO=Simple


export S3_ENDPOINT_URL=https://idhpuomb10ix.compat.objectstorage.us-ashburn-1.oraclecloud.com
# export HF_DATASETS_CACHE="/mnt/m2m_nobackup/datasets/downloads/huggingface/datasets"
# export HF_DATASETS_CACHE="/home/machaita/AMD-OLMo/downloads/huggingface/datasets"
export WANDB_CACHE_DIR="/mnt/m2m_nobackup/machaita/cache/" 
export WANDB_API_KEY=57659ad6eb75b5574f47e5ff84e1efd0385dded5
export HF_HOME="/mnt/m2m_nobackup/machaita/cache/"
# export HF_DATASETS_OFFLINE=0
export CACHED_PATH_CACHE_ROOT="/mnt/m2m_nobackup/machaita/cache/"

if [ ! -d $CACHED_PATH_CACHE_ROOT ]; then
    mkdir -p $CACHED_PATH_CACHE_ROOT
fi


EVAL_APPTAINER="/shared-aig/machaita/dockers/rocm_vllm_dev_limoeval_main.sif"
AZURE_EVAL_MODEL_PATH="machaita/LLaMA-Factory/saves/limo_sandmath1500_seeds_diffhiked_le32k/Qwen2.5-32B-Instruct"
EVAL_MODEL_PATH="/mnt/m2m_nobackup/machaita2/saves/limo_sandmath1500_seeds_diffhiked_le32k/Qwen2.5-32B-Instruct"
EVAL_PATH="${EVAL_MODEL_PATH}/eval"
EVAL_OUTPUTS_PATH="${EVAL_PATH}/outputs"
EVAL_COMPLETIONS_PATH="${EVAL_PATH}/completions"


# ## copy the model checkpoint
# rclone copy azurefc_blob:m2mfcinternalzichengblob01/machaita/LLaMA-Factory/saves/limo_sandmath1500_seeds_diffhiked_le32k/Qwen2.5-32B-Instruct/ /mnt/m2m_nobackup/machaita2/models/limo_sandmath1500_seeds_diffhiked_le32k/Qwen2.5-32B-Instruct/ --exclude "checkpoint-*/**" --transfers 1024


# cd /home/machaita/LIMO/eval  
 
# echo "####### Launching the evaluation for model: SAND-Math ###########"  

# apptainer exec --bind /mnt/m2m_nobackup --bind /shared-aig --rocm $EVAL_APPTAINER ./eval_aime25.sh $EVAL_MODEL_PATH $EVAL_OUTPUTS_PATH $EVAL_COMPLETIONS_PATH  
  
# ###########
# echo "####### Launching the evaluation for model: LIMO32B ###########"  

# EVAL_MODEL_PATH="/mnt/m2m_nobackup/machaita/saves/GAIR/LIMO"
# EVAL_MODEL_PATH_SAVE="/mnt/m2m_nobackup/machaita2/saves/GAIR/LIMO"
# EVAL_PATH="${EVAL_MODEL_PATH_SAVE}/eval"
# EVAL_OUTPUTS_PATH="${EVAL_MODEL_PATH_SAVE}/outputs"
# EVAL_COMPLETIONS_PATH="${EVAL_MODEL_PATH_SAVE}/completions"  

# apptainer exec --bind /mnt/m2m_nobackup --bind /shared-aig --rocm $EVAL_APPTAINER ./eval_aime25.sh $EVAL_MODEL_PATH $EVAL_OUTPUTS_PATH $EVAL_COMPLETIONS_PATH  

###########
# echo "####### Launching the evaluation for model: LGAI-EXAONE/EXAONE-Deep-32B ###########"  

# EVAL_MODEL="LGAI-EXAONE/EXAONE-Deep-32B"
# EVAL_MODEL_PATH="/mnt/m2m_nobackup/machaita/saves/$EVAL_MODEL"
# EVAL_PATH="${EVAL_MODEL_PATH}/eval"
# EVAL_OUTPUTS_PATH="${EVAL_PATH}/outputs"
# EVAL_COMPLETIONS_PATH="${EVAL_PATH}/completions"  

# apptainer exec --bind /mnt/m2m_nobackup --bind /shared-aig --rocm $EVAL_APPTAINER ./eval_aime25.sh $EVAL_MODEL_PATH $EVAL_OUTPUTS_PATH $EVAL_COMPLETIONS_PATH  

###########
echo "####### Launching the evaluation for model: deepseek-ai/DeepSeek-R1-Distill-Qwen-32B ###########"  

EVAL_MODEL="deepseek-ai/DeepSeek-R1-Distill-Qwen-32B"
EVAL_MODEL_PATH="/mnt/m2m_nobackup/machaita/saves/$EVAL_MODEL"
EVAL_PATH="${EVAL_MODEL_PATH}/eval"
EVAL_OUTPUTS_PATH="${EVAL_PATH}/outputs"
EVAL_COMPLETIONS_PATH="${EVAL_PATH}/completions"  

apptainer exec --bind /mnt/m2m_nobackup --bind /shared-aig --rocm $EVAL_APPTAINER ./eval_aime25.sh $EVAL_MODEL_PATH $EVAL_OUTPUTS_PATH $EVAL_COMPLETIONS_PATH  
