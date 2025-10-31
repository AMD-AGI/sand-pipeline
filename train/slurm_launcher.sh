#!/bin/bash
#SBATCH --job-name=sm_gptoss16k
#SBATCH --nodes=1
#SBATCH --gres=gpu:8  # Request 8 GPUs
#SBATCH --time=5-00:00:00 
#SBATCH --partition=amd-aig-fc
#SBATCH --account=amd-aig-fc
#SBATCH --cpus-per-gpu=12
#SBATCH --exclude=pdfc-aig-000000,pdfc-aig-000001,pdfc-aig-000003,pdfc-aig-000004,pdfc-aig-000005,pdfc-aig-000006,pdfc-aig-000007,pdfc-aig-000008


##SBATCH --nodelist=pdfc-aig-00000E
##,pdfc-aig-00001O,pdfc-aig-00000I



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
export HF_DATASETS_OFFLINE=0
export CACHED_PATH_CACHE_ROOT="/mnt/m2m_nobackup/machaita2/cache/"

if [ ! -d $CACHED_PATH_CACHE_ROOT ]; then
    mkdir -p $CACHED_PATH_CACHE_ROOT
fi

TRAINING_APPTAINER="/shared-aig/machaita/dockers/rocm_pytorch_training_llmafactory_v25_6.sif"
EVAL_APPTAINER="/shared-aig/machaita/dockers/rocm_vllm_dev_limoeval_main.sif"
CONFIG_FILE="examples/train_full/train_sand_math_gptoss16k.yaml" #

EVAL_MODEL_PATH="/mnt/m2m_nobackup/machaita2/saves/sand_math_gptoss16k/Qwen2.5-32B-Instruct"
BLOB_PATH="azurefc_blob:m2mfcinternalzichengblob01/machaita/LLaMA-Factory/saves/sand_math_gptoss16k/Qwen2.5-32B-Instruct"
EVAL_PATH="${EVAL_MODEL_PATH}/eval"
EVAL_OUTPUTS_PATH="${EVAL_PATH}/outputs"
EVAL_COMPLETIONS_PATH="${EVAL_PATH}/completions"



echo "### Launching the training ###"



cd /home/machaita/LLaMA-Factory-2

srun -l apptainer exec --bind /mnt/m2m_nobackup --bind /shared-aig --rocm $TRAINING_APPTAINER llamafactory-cli train $CONFIG_FILE

##rclone copy 
cd $EVAL_MODEL_PATH
echo "####### uploading the checkpoints ###########"
rclone copy $EVAL_MODEL_PATH $BLOB_PATH --transfers 1024 #--exclude "checkpoint-*/**" --transfers 1024

# ## launch the evals

# echo "####### launching the evaluation ###########"

# cd /home/machaita/LIMO/eval


# # Define the number of iterations  
# NUM_ITERATIONS=3  
  
# for ((i=1; i<=NUM_ITERATIONS; i++))  
# do    
#   # Deleting the eval directory if exists  
#   if [ -d "$EVAL_PATH" ]; then    
#     # echo "Deleting eval directory: $EVAL_PATH"    
#     rm -rf "$EVAL_PATH"    
#     # echo "Deleted."       
#   fi  
  
#   # Launch the evals  
#   echo "####### Launching the evaluation for the iteration: $i ###########"  
  
   
#   # srun -l 
#   apptainer exec --bind /mnt/m2m_nobackup --bind /shared-aig --rocm $EVAL_APPTAINER ./eval_1.sh $EVAL_MODEL_PATH $EVAL_OUTPUTS_PATH $EVAL_COMPLETIONS_PATH  
  
# done  

# apptainer exec --bind /mnt/m2m_nobackup --bind /shared-aig --rocm $EVAL_APPTAINER ./eval_2.sh $EVAL_MODEL_PATH $EVAL_OUTPUTS_PATH $EVAL_COMPLETIONS_PATH  

# # srun -l apptainer exec --bind /mnt/m2m_nobackup --bind /shared-aig --rocm $EVAL_APPTAINER ./eval.sh $EVAL_MODEL_PATH $EVAL_OUTPUTS_PATH $EVAL_COMPLETIONS_PATH