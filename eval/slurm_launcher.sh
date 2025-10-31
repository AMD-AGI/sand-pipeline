#!/bin/bash
#SBATCH --job-name=ai25_eval_gptoss16k_ckpt1
#SBATCH --nodes=1
#SBATCH --gres=gpu:8  # Request 8 GPUs
#SBATCH --time=5-00:00:00 
#SBATCH --partition=amd-aig-fc
#SBATCH --account=amd-aig-fc
#SBATCH --cpus-per-gpu=12
#SBATCH --nodelist=pdfc-aig-000020
#SBATCH --exclude=pdfc-aig-00000P,pdfc-aig-00000Z,pdfc-aig-00000N




run_name=$1
image_name=$2

master_port=$((20000 + $RANDOM % 40000))
echo "Master Port: $master_port"
echo $SLURM_JOB_NODELIST

head_node=$(scontrol show hostnames "$SLURM_JOB_NODELIST" | head -n 1)

# head_node_ip=$(srun --nodes=1 --ntasks=1 -w "$head_node" hostname --ip-address)
head_node_ip=$head_node

# echo "Head node: $head_node"
echo "Node IP: $head_node_ip"

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
export WANDB_CACHE_DIR="/mnt/m2m_nobackup/machaita2/cache/" 
export WANDB_API_KEY=57659ad6eb75b5574f47e5ff84e1efd0385dded5
export HF_HOME="/mnt/m2m_nobackup/machaita2/cache/"
# export HF_DATASETS_OFFLINE=0
export CACHED_PATH_CACHE_ROOT="/mnt/m2m_nobackup/machaita2/cache/"

if [ ! -d $CACHED_PATH_CACHE_ROOT ]; then
    mkdir -p $CACHED_PATH_CACHE_ROOT
fi


EVAL_APPTAINER="/shared-aig/machaita/dockers/rocm_vllm_dev_limoeval_main.sif"
# AZURE_EVAL_MODEL_PATH="machaita/LLaMA-Factory/saves/limo_sandmath1500_seeds_r2/Qwen2.5-32B-Instruct/"
EVAL_CHECKPOINT_PATH="/mnt/blob/machaita/LLaMA-Factory/saves/sand_math_gptoss16k/Qwen2.5-32B-Instruct/checkpoint-2156"
SAVE_PATH_PREFIX="/mnt/m2m_nobackup/machaita2/saves/sand_math_gptoss16k/Qwen2.5-32B-Instruct/checkpoint-2156"

EVAL_PATH="${SAVE_PATH_PREFIX}/eval"
EVAL_OUTPUTS_PATH="${SAVE_PATH_PREFIX}/outputs"
EVAL_COMPLETIONS_PATH="${SAVE_PATH_PREFIX}/completions"


## copy the model checkpoint
# rclone copy azurefc:m2mfcstorageukpublicblob003/$AZURE_EVAL_MODEL_PATH $EVAL_MODEL_PATH --exclude "checkpoint-*/**" --transfers 1024



# Define the number of iterations  
NUM_ITERATIONS=1
  
for ((i=1; i<=NUM_ITERATIONS; i++))  
do    
  # Deleting the eval directory if exists  
  if [ -d "$EVAL_PATH" ]; then    
    # echo "Deleting eval directory: $EVAL_PATH"    
    rm -rf "$EVAL_PATH"    
    # echo "Deleted."       
  fi  
  
  # Launch the evals  
  echo "####### Launching the evaluation for the iteration: $i ###########"  
  
  cd /home/machaita/LIMO/eval  
  
  # srun -l 
  # ./eval_1.sh
  apptainer exec --bind /mnt --bind /shared-aig --rocm $EVAL_APPTAINER ./eval.sh $EVAL_CHECKPOINT_PATH $EVAL_OUTPUTS_PATH $EVAL_COMPLETIONS_PATH  
  
done  

# apptainer exec --bind /mnt/m2m_nobackup --bind /shared-aig --rocm $EVAL_APPTAINER ./eval_2.sh $EVAL_MODEL_PATH $EVAL_OUTPUTS_PATH $EVAL_COMPLETIONS_PATH



