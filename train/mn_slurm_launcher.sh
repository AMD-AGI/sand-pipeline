#!/bin/bash
#SBATCH --job-name=test-mn
#SBATCH --nodes=2
#SBATCH --gres=gpu:8  # Request 8 GPUs
#SBATCH --time=5-00:00:00 
#SBATCH --partition=amd-aig-fc
#SBATCH --account=amd-aig-fc
#SBATCH --cpus-per-gpu=12

##SBATCH --exclude=pdfc-aig-00000P
##SBATCH --nodelist=useocpm2m-401-015,useocpm2m-401-022,useocpm2m-401-023,useocpm2m-401-024,useocpm2m-401-025,useocpm2m-401-026
## useocpm2m-401-007,useocpm2m-401-008,useocpm2m-401-027,



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
### set NIC cards
export NCCL_IB_HCA=mlx5_ib0:1,mlx5_ib1:1,mlx5_ib2:1,mlx5_ib3:1,mlx5_ib4:1,mlx5_ib5:1,mlx5_ib6:1,mlx5_ib7:1

export NCCL_IB_DISABLE=0
export NCCL_NSOCKS_PERTHREAD=12
# export NCCL_SOCKET_IFNAME=rdma0,rdma1,rdma2,rdma3,rdma4,rdma5,rdma6,rdma7 #ip a
export NCCL_SOCKET_IFNAME=eth0

export TORCH_NCCL_ASYNC_ERROR_HANDLING=1



export S3_ENDPOINT_URL=https://idhpuomb10ix.compat.objectstorage.us-ashburn-1.oraclecloud.com
# export HF_DATASETS_CACHE="/mnt/m2m_nobackup/datasets/downloads/huggingface/datasets"
# export HF_DATASETS_CACHE="/home/machaita/AMD-OLMo/downloads/huggingface/datasets"
export WANDB_CACHE_DIR="/mnt/m2m_nobackup/machaita/cache/" 
export HF_HOME="/mnt/m2m_nobackup/machaita/cache/"
export HF_DATASETS_OFFLINE=0
export CACHED_PATH_CACHE_ROOT="/mnt/m2m_nobackup/machaita/cache/"

if [ ! -d $CACHED_PATH_CACHE_ROOT ]; then
    mkdir -p $CACHED_PATH_CACHE_ROOT
fi


## multi node settings

export FORCE_TORCHRUN=1
export NNODES=${SLURM_NNODES}
# export NODE_RANK=${SLURM_NODEID}
export MASTER_ADDR=${head_node}
export MASTER_PORT=${master_port}


# export NNODES=${SLURM_NNODES}
# # nproc_per_node=$SLURM_GPUS_ON_NODE
# export RDZV_ID=${SLURM_JOB_ID}
# export RDZV_BACKEND="c10d"
# export RDZV_ENDPOINT=$head_node_ip:$master_port
export WANDB_API_KEY=57659ad6eb75b5574f47e5ff84e1efd0385dded5

TRAINING_APPTAINER="/shared-aig/machaita/dockers/rocm_pytorch_training_llmafactory_v25_6.sif"
EVAL_APPTAINER="/home/machaita/dockers/rocm_vllm_dev_limoeval_main.sif"
CONFIG_FILE="examples/train_full/train_sand_math.yaml"

EVAL_MODEL_PATH="/mnt/m2m_nobackup/machaita2/saves/sand_math_500/Qwen2.5-32B-Instruct" ## should be taken from config file
EVAL_PATH="${EVAL_MODEL_PATH}/eval"
EVAL_OUTPUTS_PATH="${EVAL_PATH}/outputs"
EVAL_COMPLETIONS_PATH="${EVAL_PATH}/completions"



echo "### Launching the training ###"

cd /home/machaita/LLaMA-Factory-2

# srun apptainer exec --bind /mnt/m2m_nobackup --bind /shared-aig --rocm $TRAINING_APPTAINER llamafactory-cli train $CONFIG_FILE

srun --ntasks=$NNODES apptainer exec --bind /mnt/m2m_nobackup --bind /shared-aig --rocm $TRAINING_APPTAINER bash -c "FORCE_TORCHRUN=1 NNODES=$NNODES NODE_RANK=\$SLURM_NODEID MASTER_ADDR=$MASTER_ADDR MASTER_PORT=$MASTER_PORT llamafactory-cli train $CONFIG_FILE"

## Run rclone command on the master node only  
# cd $EVAL_MODEL_PATH
# srun --nodes=1 --ntasks=1 --nodelist="$head_node" --cpus-per-task=4 --exact \
# rclone copy $EVAL_MODEL_PATH azurefc:m2mfcstorageukpublicblob003/machaita/LLaMA-Factory/saves/limo_sandmath1500_seeds/Qwen2.5-32B-Instruct --exclude "checkpoint-*/**" --transfers 1024



