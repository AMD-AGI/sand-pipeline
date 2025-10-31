nohup: ignoring input
Master Port: 27034

[2025-06-02 06:53:11,311] [INFO] [real_accelerator.py:222:get_accelerator] Setting ds_accelerator to cuda (auto detect)
[INFO|2025-06-02 06:53:16] llamafactory.cli:143 >> Initializing 8 distributed tasks at: 127.0.0.1:28692
[2025-06-02 06:53:31,276] [INFO] [real_accelerator.py:222:get_accelerator] Setting ds_accelerator to cuda (auto detect)
[2025-06-02 06:53:31,276] [INFO] [real_accelerator.py:222:get_accelerator] Setting ds_accelerator to cuda (auto detect)
[2025-06-02 06:53:31,294] [INFO] [real_accelerator.py:222:get_accelerator] Setting ds_accelerator to cuda (auto detect)
[2025-06-02 06:53:31,466] [INFO] [real_accelerator.py:222:get_accelerator] Setting ds_accelerator to cuda (auto detect)
[2025-06-02 06:53:31,467] [INFO] [real_accelerator.py:222:get_accelerator] Setting ds_accelerator to cuda (auto detect)
[2025-06-02 06:53:31,494] [INFO] [real_accelerator.py:222:get_accelerator] Setting ds_accelerator to cuda (auto detect)
[2025-06-02 06:53:31,500] [INFO] [real_accelerator.py:222:get_accelerator] Setting ds_accelerator to cuda (auto detect)
[2025-06-02 06:53:31,606] [INFO] [real_accelerator.py:222:get_accelerator] Setting ds_accelerator to cuda (auto detect)
[2025-06-02 06:53:33,668] [INFO] [comm.py:652:init_distributed] cdb=None
[INFO|2025-06-02 06:53:33] llamafactory.hparams.parser:383 >> Process rank: 7, world size: 8, device: cuda:7, distributed training: True, compute dtype: torch.bfloat16
[2025-06-02 06:53:33,945] [INFO] [comm.py:652:init_distributed] cdb=None
[2025-06-02 06:53:33,971] [INFO] [comm.py:652:init_distributed] cdb=None
[INFO|2025-06-02 06:53:33] llamafactory.hparams.parser:383 >> Process rank: 2, world size: 8, device: cuda:2, distributed training: True, compute dtype: torch.bfloat16
[INFO|2025-06-02 06:53:34] llamafactory.hparams.parser:383 >> Process rank: 3, world size: 8, device: cuda:3, distributed training: True, compute dtype: torch.bfloat16
[2025-06-02 06:53:34,089] [INFO] [comm.py:652:init_distributed] cdb=None
[2025-06-02 06:53:34,097] [INFO] [comm.py:652:init_distributed] cdb=None
[2025-06-02 06:53:34,112] [INFO] [comm.py:652:init_distributed] cdb=None
[INFO|2025-06-02 06:53:34] llamafactory.hparams.parser:383 >> Process rank: 6, world size: 8, device: cuda:6, distributed training: True, compute dtype: torch.bfloat16
[INFO|2025-06-02 06:53:34] llamafactory.hparams.parser:383 >> Process rank: 5, world size: 8, device: cuda:5, distributed training: True, compute dtype: torch.bfloat16
[2025-06-02 06:53:34,156] [INFO] [comm.py:652:init_distributed] cdb=None
[INFO|2025-06-02 06:53:34] llamafactory.hparams.parser:383 >> Process rank: 4, world size: 8, device: cuda:4, distributed training: True, compute dtype: torch.bfloat16
[2025-06-02 06:53:34,214] [INFO] [comm.py:652:init_distributed] cdb=None
[2025-06-02 06:53:34,214] [INFO] [comm.py:683:init_distributed] Initializing TorchBackend in DeepSpeed with backend nccl
[INFO|2025-06-02 06:53:34] llamafactory.hparams.parser:383 >> Process rank: 1, world size: 8, device: cuda:1, distributed training: True, compute dtype: torch.bfloat16
[INFO|2025-06-02 06:53:34] llamafactory.hparams.parser:383 >> Process rank: 0, world size: 8, device: cuda:0, distributed training: True, compute dtype: torch.bfloat16
[INFO|tokenization_utils_base.py:2048] 2025-06-02 06:53:34,300 >> loading file vocab.json
[INFO|tokenization_utils_base.py:2048] 2025-06-02 06:53:34,300 >> loading file merges.txt
[INFO|tokenization_utils_base.py:2048] 2025-06-02 06:53:34,300 >> loading file tokenizer.json
[INFO|tokenization_utils_base.py:2048] 2025-06-02 06:53:34,300 >> loading file added_tokens.json
[INFO|tokenization_utils_base.py:2048] 2025-06-02 06:53:34,300 >> loading file special_tokens_map.json
[INFO|tokenization_utils_base.py:2048] 2025-06-02 06:53:34,300 >> loading file tokenizer_config.json
[INFO|tokenization_utils_base.py:2048] 2025-06-02 06:53:34,300 >> loading file chat_template.jinja
[INFO|tokenization_utils_base.py:2313] 2025-06-02 06:53:34,599 >> Special tokens have been added in the vocabulary, make sure the associated word embeddings are fine-tuned or trained.
[INFO|configuration_utils.py:697] 2025-06-02 06:53:34,617 >> loading configuration file /shared-aig/machaita/models/Qwen/Qwen2.5-32B-Instruct/config.json
[INFO|configuration_utils.py:771] 2025-06-02 06:53:34,618 >> Model config Qwen2Config {
  "_name_or_path": "/shared-aig/machaita/models/Qwen/Qwen2.5-32B-Instruct",
  "architectures": [
    "Qwen2ForCausalLM"
  ],
  "attention_dropout": 0.0,
  "bos_token_id": 151643,
  "eos_token_id": 151645,
  "hidden_act": "silu",
  "hidden_size": 5120,
  "initializer_range": 0.02,
  "intermediate_size": 27648,
  "max_position_embeddings": 32768,
  "max_window_layers": 70,
  "model_type": "qwen2",
  "num_attention_heads": 40,
  "num_hidden_layers": 64,
  "num_key_value_heads": 8,
  "rms_norm_eps": 1e-06,
  "rope_scaling": null,
  "rope_theta": 1000000.0,
  "sliding_window": 131072,
  "tie_word_embeddings": false,
  "torch_dtype": "bfloat16",
  "transformers_version": "4.49.0",
  "use_cache": true,
  "use_sliding_window": false,
  "vocab_size": 152064
}

[INFO|tokenization_utils_base.py:2048] 2025-06-02 06:53:34,635 >> loading file vocab.json
[INFO|tokenization_utils_base.py:2048] 2025-06-02 06:53:34,635 >> loading file merges.txt
[INFO|tokenization_utils_base.py:2048] 2025-06-02 06:53:34,635 >> loading file tokenizer.json
[INFO|tokenization_utils_base.py:2048] 2025-06-02 06:53:34,635 >> loading file added_tokens.json
[INFO|tokenization_utils_base.py:2048] 2025-06-02 06:53:34,635 >> loading file special_tokens_map.json
[INFO|tokenization_utils_base.py:2048] 2025-06-02 06:53:34,635 >> loading file tokenizer_config.json
[INFO|tokenization_utils_base.py:2048] 2025-06-02 06:53:34,635 >> loading file chat_template.jinja
[rank7]:[W602 06:53:34.153230800 ProcessGroupNCCL.cpp:4561] [PG ID 0 PG GUID 0 Rank 7]  using GPU 7 to perform barrier as devices used by this process are currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. Specify device_ids in barrier() to force use of a particular device, or call init_process_group() with a device_id.
[rank3]:[W602 06:53:34.158916754 ProcessGroupNCCL.cpp:4561] [PG ID 0 PG GUID 0 Rank 3]  using GPU 3 to perform barrier as devices used by this process are currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. Specify device_ids in barrier() to force use of a particular device, or call init_process_group() with a device_id.
[rank2]:[W602 06:53:34.163014565 ProcessGroupNCCL.cpp:4561] [PG ID 0 PG GUID 0 Rank 2]  using GPU 2 to perform barrier as devices used by this process are currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. Specify device_ids in barrier() to force use of a particular device, or call init_process_group() with a device_id.
[rank4]:[W602 06:53:34.276798938 ProcessGroupNCCL.cpp:4561] [PG ID 0 PG GUID 0 Rank 4]  using GPU 4 to perform barrier as devices used by this process are currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. Specify device_ids in barrier() to force use of a particular device, or call init_process_group() with a device_id.
[rank6]:[W602 06:53:34.327826438 ProcessGroupNCCL.cpp:4561] [PG ID 0 PG GUID 0 Rank 6]  using GPU 6 to perform barrier as devices used by this process are currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. Specify device_ids in barrier() to force use of a particular device, or call init_process_group() with a device_id.
[rank5]:[W602 06:53:34.345200281 ProcessGroupNCCL.cpp:4561] [PG ID 0 PG GUID 0 Rank 5]  using GPU 5 to perform barrier as devices used by this process are currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. Specify device_ids in barrier() to force use of a particular device, or call init_process_group() with a device_id.
[rank1]:[W602 06:53:34.415912157 ProcessGroupNCCL.cpp:4561] [PG ID 0 PG GUID 0 Rank 1]  using GPU 1 to perform barrier as devices used by this process are currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. Specify device_ids in barrier() to force use of a particular device, or call init_process_group() with a device_id.
[INFO|tokenization_utils_base.py:2313] 2025-06-02 06:53:34,956 >> Special tokens have been added in the vocabulary, make sure the associated word embeddings are fine-tuned or trained.
[INFO|2025-06-02 06:53:34] llamafactory.data.template:143 >> Add <|im_end|> to stop words.
[INFO|2025-06-02 06:53:35] llamafactory.data.loader:143 >> Loading dataset limo.json...
Converting format of dataset (num_proc=64):   0%|          | 0/817 [00:00<?, ? examples/s]Converting format of dataset (num_proc=64):   2%|▏         | 13/817 [00:00<00:06, 124.97 examples/s]Converting format of dataset (num_proc=64):  67%|██████▋   | 546/817 [00:00<00:00, 3043.87 examples/s]Converting format of dataset (num_proc=64): 100%|██████████| 817/817 [00:00<00:00, 2422.97 examples/s]
[INFO|2025-06-02 06:53:36] llamafactory.data.loader:143 >> Loading dataset sand_math_500_diffdesc.json...
Setting num_proc from 64 back to 1 for the train split to disable multiprocessing as it only contains one shard.
Generating train split: 0 examples [00:00, ? examples/s]Generating train split: 493 examples [00:00, 2555.51 examples/s]Generating train split: 493 examples [00:00, 2488.97 examples/s]
Converting format of dataset (num_proc=64):   0%|          | 0/493 [00:00<?, ? examples/s]Converting format of dataset (num_proc=64):   2%|▏         | 8/493 [00:00<00:06, 74.65 examples/s]Converting format of dataset (num_proc=64):  68%|██████▊   | 336/493 [00:00<00:00, 1886.33 examples/s]Converting format of dataset (num_proc=64): 100%|██████████| 493/493 [00:00<00:00, 1495.07 examples/s]
[rank0]:[W602 06:53:38.439749907 ProcessGroupNCCL.cpp:4561] [PG ID 0 PG GUID 0 Rank 0]  using GPU 0 to perform barrier as devices used by this process are currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. Specify device_ids in barrier() to force use of a particular device, or call init_process_group() with a device_id.
pdfc-aig-00000H:2664386:2664386 [0] NCCL INFO NCCL_SOCKET_IFNAME set by environment to eth0
pdfc-aig-00000H:2664386:2664386 [0] NCCL INFO Bootstrap : Using eth0:10.215.224.34<0>
pdfc-aig-00000H:2664386:2664386 [0] NCCL INFO NET/Plugin: No plugin found (librccl-net.so)
pdfc-aig-00000H:2664386:2664386 [0] NCCL INFO NET/Plugin: Plugin load returned 2 : librccl-net.so: cannot open shared object file: No such file or directory : when loading librccl-net.so
pdfc-aig-00000H:2664386:2664386 [0] NCCL INFO NET/Plugin: Using internal network plugin.
pdfc-aig-00000H:2664386:2664386 [0] NCCL INFO Kernel version: 5.15.0-1086-azure
pdfc-aig-00000H:2664386:2664386 [0] NCCL INFO ROCr version 1.14
pdfc-aig-00000H:2664386:2664386 [0] NCCL INFO Dmabuf feature disabled without NCCL_DMABUF_ENABLE=1
RCCL version : 2.21.5-HEAD:eef7b29
HIP version  : 6.3.42131-fa1d09cbd
ROCm version : 6.3.0.0-39-ce2be3b
Hostname     : pdfc-aig-00000H
Librccl path : /opt/rocm/lib/librccl.so.1
pdfc-aig-00000H:2664386:2664386 [0] NCCL INFO Comm config Blocking set to 1
pdfc-aig-00000H:2664389:2664389 [3] NCCL INFO ROCr version 1.14
pdfc-aig-00000H:2664389:2664389 [3] NCCL INFO Dmabuf feature disabled without NCCL_DMABUF_ENABLE=1
pdfc-aig-00000H:2664387:2664387 [1] NCCL INFO ROCr version 1.14
pdfc-aig-00000H:2664387:2664387 [1] NCCL INFO Dmabuf feature disabled without NCCL_DMABUF_ENABLE=1
pdfc-aig-00000H:2664389:2664389 [3] NCCL INFO NCCL_SOCKET_IFNAME set by environment to eth0
pdfc-aig-00000H:2664390:2664390 [4] NCCL INFO ROCr version 1.14
pdfc-aig-00000H:2664390:2664390 [4] NCCL INFO Dmabuf feature disabled without NCCL_DMABUF_ENABLE=1
pdfc-aig-00000H:2664393:2664393 [7] NCCL INFO ROCr version 1.14
pdfc-aig-00000H:2664393:2664393 [7] NCCL INFO Dmabuf feature disabled without NCCL_DMABUF_ENABLE=1
pdfc-aig-00000H:2664387:2664387 [1] NCCL INFO NCCL_SOCKET_IFNAME set by environment to eth0
pdfc-aig-00000H:2664390:2664390 [4] NCCL INFO NCCL_SOCKET_IFNAME set by environment to eth0
pdfc-aig-00000H:2664388:2664388 [2] NCCL INFO ROCr version 1.14
pdfc-aig-00000H:2664393:2664393 [7] NCCL INFO NCCL_SOCKET_IFNAME set by environment to eth0
pdfc-aig-00000H:2664388:2664388 [2] NCCL INFO Dmabuf feature disabled without NCCL_DMABUF_ENABLE=1
pdfc-aig-00000H:2664392:2664392 [6] NCCL INFO ROCr version 1.14
pdfc-aig-00000H:2664392:2664392 [6] NCCL INFO Dmabuf feature disabled without NCCL_DMABUF_ENABLE=1
pdfc-aig-00000H:2664388:2664388 [2] NCCL INFO NCCL_SOCKET_IFNAME set by environment to eth0
pdfc-aig-00000H:2664392:2664392 [6] NCCL INFO NCCL_SOCKET_IFNAME set by environment to eth0
pdfc-aig-00000H:2664391:2664391 [5] NCCL INFO ROCr version 1.14
pdfc-aig-00000H:2664391:2664391 [5] NCCL INFO Dmabuf feature disabled without NCCL_DMABUF_ENABLE=1
pdfc-aig-00000H:2664391:2664391 [5] NCCL INFO NCCL_SOCKET_IFNAME set by environment to eth0
pdfc-aig-00000H:2664387:2664387 [1] NCCL INFO Bootstrap : Using eth0:10.215.224.34<0>
pdfc-aig-00000H:2664389:2664389 [3] NCCL INFO Bootstrap : Using eth0:10.215.224.34<0>
pdfc-aig-00000H:2664388:2664388 [2] NCCL INFO Bootstrap : Using eth0:10.215.224.34<0>
pdfc-aig-00000H:2664390:2664390 [4] NCCL INFO Bootstrap : Using eth0:10.215.224.34<0>
pdfc-aig-00000H:2664393:2664393 [7] NCCL INFO Bootstrap : Using eth0:10.215.224.34<0>
pdfc-aig-00000H:2664392:2664392 [6] NCCL INFO Bootstrap : Using eth0:10.215.224.34<0>
pdfc-aig-00000H:2664391:2664391 [5] NCCL INFO Bootstrap : Using eth0:10.215.224.34<0>
pdfc-aig-00000H:2664393:2664393 [7] NCCL INFO NET/Plugin: No plugin found (librccl-net.so)
pdfc-aig-00000H:2664389:2664389 [3] NCCL INFO NET/Plugin: No plugin found (librccl-net.so)
pdfc-aig-00000H:2664393:2664393 [7] NCCL INFO NET/Plugin: Plugin load returned 2 : librccl-net.so: cannot open shared object file: No such file or directory : when loading librccl-net.so
pdfc-aig-00000H:2664393:2664393 [7] NCCL INFO NET/Plugin: Using internal network plugin.
pdfc-aig-00000H:2664389:2664389 [3] NCCL INFO NET/Plugin: Plugin load returned 2 : librccl-net.so: cannot open shared object file: No such file or directory : when loading librccl-net.so
pdfc-aig-00000H:2664389:2664389 [3] NCCL INFO NET/Plugin: Using internal network plugin.
pdfc-aig-00000H:2664387:2664387 [1] NCCL INFO NET/Plugin: No plugin found (librccl-net.so)
pdfc-aig-00000H:2664387:2664387 [1] NCCL INFO NET/Plugin: Plugin load returned 2 : librccl-net.so: cannot open shared object file: No such file or directory : when loading librccl-net.so
pdfc-aig-00000H:2664387:2664387 [1] NCCL INFO NET/Plugin: Using internal network plugin.
pdfc-aig-00000H:2664388:2664388 [2] NCCL INFO NET/Plugin: No plugin found (librccl-net.so)
pdfc-aig-00000H:2664388:2664388 [2] NCCL INFO NET/Plugin: Plugin load returned 2 : librccl-net.so: cannot open shared object file: No such file or directory : when loading librccl-net.so
pdfc-aig-00000H:2664393:2664393 [7] NCCL INFO Kernel version: 5.15.0-1086-azure
pdfc-aig-00000H:2664389:2664389 [3] NCCL INFO Kernel version: 5.15.0-1086-azure
pdfc-aig-00000H:2664388:2664388 [2] NCCL INFO NET/Plugin: Using internal network plugin.
pdfc-aig-00000H:2664387:2664387 [1] NCCL INFO Kernel version: 5.15.0-1086-azure
pdfc-aig-00000H:2664388:2664388 [2] NCCL INFO Kernel version: 5.15.0-1086-azure
pdfc-aig-00000H:2664392:2664392 [6] NCCL INFO NET/Plugin: No plugin found (librccl-net.so)
pdfc-aig-00000H:2664392:2664392 [6] NCCL INFO NET/Plugin: Plugin load returned 2 : librccl-net.so: cannot open shared object file: No such file or directory : when loading librccl-net.so
pdfc-aig-00000H:2664392:2664392 [6] NCCL INFO NET/Plugin: Using internal network plugin.
pdfc-aig-00000H:2664391:2664391 [5] NCCL INFO NET/Plugin: No plugin found (librccl-net.so)
pdfc-aig-00000H:2664390:2664390 [4] NCCL INFO NET/Plugin: No plugin found (librccl-net.so)
pdfc-aig-00000H:2664391:2664391 [5] NCCL INFO NET/Plugin: Plugin load returned 2 : librccl-net.so: cannot open shared object file: No such file or directory : when loading librccl-net.so
pdfc-aig-00000H:2664390:2664390 [4] NCCL INFO NET/Plugin: Plugin load returned 2 : librccl-net.so: cannot open shared object file: No such file or directory : when loading librccl-net.so
pdfc-aig-00000H:2664391:2664391 [5] NCCL INFO NET/Plugin: Using internal network plugin.
pdfc-aig-00000H:2664392:2664392 [6] NCCL INFO Kernel version: 5.15.0-1086-azure
pdfc-aig-00000H:2664390:2664390 [4] NCCL INFO NET/Plugin: Using internal network plugin.
pdfc-aig-00000H:2664391:2664391 [5] NCCL INFO Kernel version: 5.15.0-1086-azure
pdfc-aig-00000H:2664390:2664390 [4] NCCL INFO Kernel version: 5.15.0-1086-azure
pdfc-aig-00000H:2664393:2664393 [7] NCCL INFO Comm config Blocking set to 1
pdfc-aig-00000H:2664389:2664389 [3] NCCL INFO Comm config Blocking set to 1
pdfc-aig-00000H:2664387:2664387 [1] NCCL INFO Comm config Blocking set to 1
pdfc-aig-00000H:2664392:2664392 [6] NCCL INFO Comm config Blocking set to 1
pdfc-aig-00000H:2664391:2664391 [5] NCCL INFO Comm config Blocking set to 1
pdfc-aig-00000H:2664390:2664390 [4] NCCL INFO Comm config Blocking set to 1
pdfc-aig-00000H:2664388:2664388 [2] NCCL INFO Comm config Blocking set to 1
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO NCCL_IB_DISABLE set by environment to 0.
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO NCCL_IB_DISABLE set by environment to 0.
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO NCCL_IB_DISABLE set by environment to 0.
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO NCCL_IB_DISABLE set by environment to 0.
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO NCCL_IB_DISABLE set by environment to 0.
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO NCCL_IB_DISABLE set by environment to 0.
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO NCCL_SOCKET_IFNAME set by environment to eth0
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO NCCL_SOCKET_IFNAME set by environment to eth0
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO NCCL_SOCKET_IFNAME set by environment to eth0
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO NCCL_SOCKET_IFNAME set by environment to eth0
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO NCCL_IB_DISABLE set by environment to 0.
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO NCCL_SOCKET_IFNAME set by environment to eth0
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO NCCL_SOCKET_IFNAME set by environment to eth0
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO NCCL_IB_HCA set to mlx5_an0:1,mlx5_ib0:1,mlx5_ib1:1,mlx5_ib2:1,mlx5_ib3:1,mlx5_ib4:1,mlx5_ib5:1,mlx5_ib6:1,mlx5_ib7:1
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO NCCL_IB_HCA set to mlx5_an0:1,mlx5_ib0:1,mlx5_ib1:1,mlx5_ib2:1,mlx5_ib3:1,mlx5_ib4:1,mlx5_ib5:1,mlx5_ib6:1,mlx5_ib7:1
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO NCCL_IB_HCA set to mlx5_an0:1,mlx5_ib0:1,mlx5_ib1:1,mlx5_ib2:1,mlx5_ib3:1,mlx5_ib4:1,mlx5_ib5:1,mlx5_ib6:1,mlx5_ib7:1
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO NCCL_IB_HCA set to mlx5_an0:1,mlx5_ib0:1,mlx5_ib1:1,mlx5_ib2:1,mlx5_ib3:1,mlx5_ib4:1,mlx5_ib5:1,mlx5_ib6:1,mlx5_ib7:1
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO NCCL_IB_HCA set to mlx5_an0:1,mlx5_ib0:1,mlx5_ib1:1,mlx5_ib2:1,mlx5_ib3:1,mlx5_ib4:1,mlx5_ib5:1,mlx5_ib6:1,mlx5_ib7:1
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO NCCL_IB_HCA set to mlx5_an0:1,mlx5_ib0:1,mlx5_ib1:1,mlx5_ib2:1,mlx5_ib3:1,mlx5_ib4:1,mlx5_ib5:1,mlx5_ib6:1,mlx5_ib7:1
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO NCCL_IB_DISABLE set by environment to 0.
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO NCCL_SOCKET_IFNAME set by environment to eth0
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO NCCL_IB_HCA set to mlx5_an0:1,mlx5_ib0:1,mlx5_ib1:1,mlx5_ib2:1,mlx5_ib3:1,mlx5_ib4:1,mlx5_ib5:1,mlx5_ib6:1,mlx5_ib7:1
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO NCCL_SOCKET_IFNAME set by environment to eth0
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO NCCL_IB_HCA set to mlx5_an0:1,mlx5_ib0:1,mlx5_ib1:1,mlx5_ib2:1,mlx5_ib3:1,mlx5_ib4:1,mlx5_ib5:1,mlx5_ib6:1,mlx5_ib7:1
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO NET/IB : Using [0]mlx5_ib0:1/IB [1]mlx5_ib1:1/IB [2]mlx5_ib2:1/IB [3]mlx5_ib3:1/IB [4]mlx5_ib4:1/IB [5]mlx5_ib5:1/IB [6]mlx5_ib6:1/IB [7]mlx5_ib7:1/IB [8]mlx5_an0:1/RoCE [RO]; OOB eth0:10.215.224.34<0>
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Found /sys/kernel/mm/memory_peers/amdkfd/version
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO /long_pathname_so_that_rpms_can_package_the_debug_info/src/rccl/build/hipify/src/transport/net_ib.cc:652 -> 2
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Using non-device net plugin version 0
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Using network IB
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO NET/IB : Using [0]mlx5_ib0:1/IB [1]mlx5_ib1:1/IB [2]mlx5_ib2:1/IB [3]mlx5_ib3:1/IB [4]mlx5_ib4:1/IB [5]mlx5_ib5:1/IB [6]mlx5_ib6:1/IB [7]mlx5_ib7:1/IB [8]mlx5_an0:1/RoCE [RO]; OOB eth0:10.215.224.34<0>
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Found /sys/kernel/mm/memory_peers/amdkfd/version
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO /long_pathname_so_that_rpms_can_package_the_debug_info/src/rccl/build/hipify/src/transport/net_ib.cc:652 -> 2
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Using non-device net plugin version 0
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Using network IB
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO [node_id = 5; gpu_id = 54764; unique_id = 1875351247777246069; location_id = 21474836480; bdf = 21474836480; domain = 5; partition = 0], 
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO [node_id = 4; gpu_id = 16561; unique_id = 5072574656748564528; location_id = 17179869184; bdf = 17179869184; domain = 4; partition = 0], 
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO [node_id = 8; gpu_id = 32548; unique_id = 6347306318148548519; location_id = 34359738368; bdf = 34359738368; domain = 8; partition = 0], 
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO [node_id = 7; gpu_id = 48981; unique_id = 9063168802778326309; location_id = 30064771072; bdf = 30064771072; domain = 7; partition = 0], 
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO [node_id = 9; gpu_id = 60025; unique_id = 10157933205503563805; location_id = 38654705664; bdf = 38654705664; domain = 9; partition = 0], 
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO [node_id = 3; gpu_id = 27175; unique_id = 11656133260443653636; location_id = 12884901888; bdf = 12884901888; domain = 3; partition = 0], 
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO [node_id = 6; gpu_id = 10760; unique_id = 12744163373932945746; location_id = 25769803776; bdf = 25769803776; domain = 6; partition = 0], 
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO [node_id = 2; gpu_id = 65402; unique_id = 15152426024349502463; location_id = 8589934592; bdf = 8589934592; domain = 2; partition = 0], 
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO [node_id = 5; gpu_id = 54764; unique_id = 1875351247777246069; location_id = 21474836480; bdf = 21474836480; domain = 5; partition = 0], 
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO [node_id = 4; gpu_id = 16561; unique_id = 5072574656748564528; location_id = 17179869184; bdf = 17179869184; domain = 4; partition = 0], 
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO [node_id = 8; gpu_id = 32548; unique_id = 6347306318148548519; location_id = 34359738368; bdf = 34359738368; domain = 8; partition = 0], 
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO [node_id = 7; gpu_id = 48981; unique_id = 9063168802778326309; location_id = 30064771072; bdf = 30064771072; domain = 7; partition = 0], 
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO [node_id = 9; gpu_id = 60025; unique_id = 10157933205503563805; location_id = 38654705664; bdf = 38654705664; domain = 9; partition = 0], 
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO [node_id = 3; gpu_id = 27175; unique_id = 11656133260443653636; location_id = 12884901888; bdf = 12884901888; domain = 3; partition = 0], 
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO [node_id = 6; gpu_id = 10760; unique_id = 12744163373932945746; location_id = 25769803776; bdf = 25769803776; domain = 6; partition = 0], 
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO [node_id = 2; gpu_id = 65402; unique_id = 15152426024349502463; location_id = 8589934592; bdf = 8589934592; domain = 2; partition = 0], 
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO NET/IB : Using [0]mlx5_ib0:1/IB [1]mlx5_ib1:1/IB [2]mlx5_ib2:1/IB [3]mlx5_ib3:1/IB [4]mlx5_ib4:1/IB [5]mlx5_ib5:1/IB [6]mlx5_ib6:1/IB [7]mlx5_ib7:1/IB [8]mlx5_an0:1/RoCE [RO]; OOB eth0:10.215.224.34<0>
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Found /sys/kernel/mm/memory_peers/amdkfd/version
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO /long_pathname_so_that_rpms_can_package_the_debug_info/src/rccl/build/hipify/src/transport/net_ib.cc:652 -> 2
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Using non-device net plugin version 0
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Using network IB
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO NET/IB : Using [0]mlx5_ib0:1/IB [1]mlx5_ib1:1/IB [2]mlx5_ib2:1/IB [3]mlx5_ib3:1/IB [4]mlx5_ib4:1/IB [5]mlx5_ib5:1/IB [6]mlx5_ib6:1/IB [7]mlx5_ib7:1/IB [8]mlx5_an0:1/RoCE [RO]; OOB eth0:10.215.224.34<0>
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Found /sys/kernel/mm/memory_peers/amdkfd/version
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO /long_pathname_so_that_rpms_can_package_the_debug_info/src/rccl/build/hipify/src/transport/net_ib.cc:652 -> 2
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Using non-device net plugin version 0
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Using network IB
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO [node_id = 5; gpu_id = 54764; unique_id = 1875351247777246069; location_id = 21474836480; bdf = 21474836480; domain = 5; partition = 0], 
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO [node_id = 4; gpu_id = 16561; unique_id = 5072574656748564528; location_id = 17179869184; bdf = 17179869184; domain = 4; partition = 0], 
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO [node_id = 8; gpu_id = 32548; unique_id = 6347306318148548519; location_id = 34359738368; bdf = 34359738368; domain = 8; partition = 0], 
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO [node_id = 7; gpu_id = 48981; unique_id = 9063168802778326309; location_id = 30064771072; bdf = 30064771072; domain = 7; partition = 0], 
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO [node_id = 9; gpu_id = 60025; unique_id = 10157933205503563805; location_id = 38654705664; bdf = 38654705664; domain = 9; partition = 0], 
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO [node_id = 3; gpu_id = 27175; unique_id = 11656133260443653636; location_id = 12884901888; bdf = 12884901888; domain = 3; partition = 0], 
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO [node_id = 6; gpu_id = 10760; unique_id = 12744163373932945746; location_id = 25769803776; bdf = 25769803776; domain = 6; partition = 0], 
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO [node_id = 2; gpu_id = 65402; unique_id = 15152426024349502463; location_id = 8589934592; bdf = 8589934592; domain = 2; partition = 0], 
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO [node_id = 5; gpu_id = 54764; unique_id = 1875351247777246069; location_id = 21474836480; bdf = 21474836480; domain = 5; partition = 0], 
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO [node_id = 4; gpu_id = 16561; unique_id = 5072574656748564528; location_id = 17179869184; bdf = 17179869184; domain = 4; partition = 0], 
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO [node_id = 8; gpu_id = 32548; unique_id = 6347306318148548519; location_id = 34359738368; bdf = 34359738368; domain = 8; partition = 0], 
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO [node_id = 7; gpu_id = 48981; unique_id = 9063168802778326309; location_id = 30064771072; bdf = 30064771072; domain = 7; partition = 0], 
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO [node_id = 9; gpu_id = 60025; unique_id = 10157933205503563805; location_id = 38654705664; bdf = 38654705664; domain = 9; partition = 0], 
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO [node_id = 3; gpu_id = 27175; unique_id = 11656133260443653636; location_id = 12884901888; bdf = 12884901888; domain = 3; partition = 0], 
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO [node_id = 6; gpu_id = 10760; unique_id = 12744163373932945746; location_id = 25769803776; bdf = 25769803776; domain = 6; partition = 0], 
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO [node_id = 2; gpu_id = 65402; unique_id = 15152426024349502463; location_id = 8589934592; bdf = 8589934592; domain = 2; partition = 0], 
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO NET/IB : Using [0]mlx5_ib0:1/IB [1]mlx5_ib1:1/IB [2]mlx5_ib2:1/IB [3]mlx5_ib3:1/IB [4]mlx5_ib4:1/IB [5]mlx5_ib5:1/IB [6]mlx5_ib6:1/IB [7]mlx5_ib7:1/IB [8]mlx5_an0:1/RoCE [RO]; OOB eth0:10.215.224.34<0>
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Found /sys/kernel/mm/memory_peers/amdkfd/version
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO /long_pathname_so_that_rpms_can_package_the_debug_info/src/rccl/build/hipify/src/transport/net_ib.cc:652 -> 2
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Using non-device net plugin version 0
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Using network IB
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO [node_id = 5; gpu_id = 54764; unique_id = 1875351247777246069; location_id = 21474836480; bdf = 21474836480; domain = 5; partition = 0], 
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO [node_id = 4; gpu_id = 16561; unique_id = 5072574656748564528; location_id = 17179869184; bdf = 17179869184; domain = 4; partition = 0], 
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO [node_id = 8; gpu_id = 32548; unique_id = 6347306318148548519; location_id = 34359738368; bdf = 34359738368; domain = 8; partition = 0], 
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO [node_id = 7; gpu_id = 48981; unique_id = 9063168802778326309; location_id = 30064771072; bdf = 30064771072; domain = 7; partition = 0], 
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO [node_id = 9; gpu_id = 60025; unique_id = 10157933205503563805; location_id = 38654705664; bdf = 38654705664; domain = 9; partition = 0], 
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO [node_id = 3; gpu_id = 27175; unique_id = 11656133260443653636; location_id = 12884901888; bdf = 12884901888; domain = 3; partition = 0], 
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO [node_id = 6; gpu_id = 10760; unique_id = 12744163373932945746; location_id = 25769803776; bdf = 25769803776; domain = 6; partition = 0], 
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO [node_id = 2; gpu_id = 65402; unique_id = 15152426024349502463; location_id = 8589934592; bdf = 8589934592; domain = 2; partition = 0], 
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO NET/IB : Using [0]mlx5_ib0:1/IB [1]mlx5_ib1:1/IB [2]mlx5_ib2:1/IB [3]mlx5_ib3:1/IB [4]mlx5_ib4:1/IB [5]mlx5_ib5:1/IB [6]mlx5_ib6:1/IB [7]mlx5_ib7:1/IB [8]mlx5_an0:1/RoCE [RO]; OOB eth0:10.215.224.34<0>
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Found /sys/kernel/mm/memory_peers/amdkfd/version
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO /long_pathname_so_that_rpms_can_package_the_debug_info/src/rccl/build/hipify/src/transport/net_ib.cc:652 -> 2
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Using non-device net plugin version 0
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Using network IB
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO [node_id = 5; gpu_id = 54764; unique_id = 1875351247777246069; location_id = 21474836480; bdf = 21474836480; domain = 5; partition = 0], 
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO [node_id = 4; gpu_id = 16561; unique_id = 5072574656748564528; location_id = 17179869184; bdf = 17179869184; domain = 4; partition = 0], 
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO [node_id = 8; gpu_id = 32548; unique_id = 6347306318148548519; location_id = 34359738368; bdf = 34359738368; domain = 8; partition = 0], 
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO [node_id = 7; gpu_id = 48981; unique_id = 9063168802778326309; location_id = 30064771072; bdf = 30064771072; domain = 7; partition = 0], 
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO [node_id = 9; gpu_id = 60025; unique_id = 10157933205503563805; location_id = 38654705664; bdf = 38654705664; domain = 9; partition = 0], 
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO [node_id = 3; gpu_id = 27175; unique_id = 11656133260443653636; location_id = 12884901888; bdf = 12884901888; domain = 3; partition = 0], 
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO [node_id = 6; gpu_id = 10760; unique_id = 12744163373932945746; location_id = 25769803776; bdf = 25769803776; domain = 6; partition = 0], 
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO [node_id = 2; gpu_id = 65402; unique_id = 15152426024349502463; location_id = 8589934592; bdf = 8589934592; domain = 2; partition = 0], 
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO NET/IB : Using [0]mlx5_ib0:1/IB [1]mlx5_ib1:1/IB [2]mlx5_ib2:1/IB [3]mlx5_ib3:1/IB [4]mlx5_ib4:1/IB [5]mlx5_ib5:1/IB [6]mlx5_ib6:1/IB [7]mlx5_ib7:1/IB [8]mlx5_an0:1/RoCE [RO]; OOB eth0:10.215.224.34<0>
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Found /sys/kernel/mm/memory_peers/amdkfd/version
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO /long_pathname_so_that_rpms_can_package_the_debug_info/src/rccl/build/hipify/src/transport/net_ib.cc:652 -> 2
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Using non-device net plugin version 0
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Using network IB
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO NET/IB : Using [0]mlx5_ib0:1/IB [1]mlx5_ib1:1/IB [2]mlx5_ib2:1/IB [3]mlx5_ib3:1/IB [4]mlx5_ib4:1/IB [5]mlx5_ib5:1/IB [6]mlx5_ib6:1/IB [7]mlx5_ib7:1/IB [8]mlx5_an0:1/RoCE [RO]; OOB eth0:10.215.224.34<0>
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Found /sys/kernel/mm/memory_peers/amdkfd/version
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO /long_pathname_so_that_rpms_can_package_the_debug_info/src/rccl/build/hipify/src/transport/net_ib.cc:652 -> 2
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Using non-device net plugin version 0
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Using network IB
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO [node_id = 5; gpu_id = 54764; unique_id = 1875351247777246069; location_id = 21474836480; bdf = 21474836480; domain = 5; partition = 0], 
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO [node_id = 4; gpu_id = 16561; unique_id = 5072574656748564528; location_id = 17179869184; bdf = 17179869184; domain = 4; partition = 0], 
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO [node_id = 8; gpu_id = 32548; unique_id = 6347306318148548519; location_id = 34359738368; bdf = 34359738368; domain = 8; partition = 0], 
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO [node_id = 7; gpu_id = 48981; unique_id = 9063168802778326309; location_id = 30064771072; bdf = 30064771072; domain = 7; partition = 0], 
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO [node_id = 9; gpu_id = 60025; unique_id = 10157933205503563805; location_id = 38654705664; bdf = 38654705664; domain = 9; partition = 0], 
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO [node_id = 3; gpu_id = 27175; unique_id = 11656133260443653636; location_id = 12884901888; bdf = 12884901888; domain = 3; partition = 0], 
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO [node_id = 6; gpu_id = 10760; unique_id = 12744163373932945746; location_id = 25769803776; bdf = 25769803776; domain = 6; partition = 0], 
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO [node_id = 2; gpu_id = 65402; unique_id = 15152426024349502463; location_id = 8589934592; bdf = 8589934592; domain = 2; partition = 0], 
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO [node_id = 5; gpu_id = 54764; unique_id = 1875351247777246069; location_id = 21474836480; bdf = 21474836480; domain = 5; partition = 0], 
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO [node_id = 4; gpu_id = 16561; unique_id = 5072574656748564528; location_id = 17179869184; bdf = 17179869184; domain = 4; partition = 0], 
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO [node_id = 8; gpu_id = 32548; unique_id = 6347306318148548519; location_id = 34359738368; bdf = 34359738368; domain = 8; partition = 0], 
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO [node_id = 7; gpu_id = 48981; unique_id = 9063168802778326309; location_id = 30064771072; bdf = 30064771072; domain = 7; partition = 0], 
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO [node_id = 9; gpu_id = 60025; unique_id = 10157933205503563805; location_id = 38654705664; bdf = 38654705664; domain = 9; partition = 0], 
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO [node_id = 3; gpu_id = 27175; unique_id = 11656133260443653636; location_id = 12884901888; bdf = 12884901888; domain = 3; partition = 0], 
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO [node_id = 6; gpu_id = 10760; unique_id = 12744163373932945746; location_id = 25769803776; bdf = 25769803776; domain = 6; partition = 0], 
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO [node_id = 2; gpu_id = 65402; unique_id = 15152426024349502463; location_id = 8589934592; bdf = 8589934592; domain = 2; partition = 0], 
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO ncclCommInitRank comm 0x440867a0 rank 1 nranks 8 cudaDev 1 nvmlDev 1 busId 300000 commId 0xbe03cb101208fab4 - Init START
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO ncclCommInitRank comm 0x348d8fc0 rank 2 nranks 8 cudaDev 2 nvmlDev 2 busId 400000 commId 0xbe03cb101208fab4 - Init START
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO ncclCommInitRank comm 0x682daff0 rank 5 nranks 8 cudaDev 5 nvmlDev 5 busId 700000 commId 0xbe03cb101208fab4 - Init START
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO ncclCommInitRank comm 0x3ef1d500 rank 3 nranks 8 cudaDev 3 nvmlDev 3 busId 500000 commId 0xbe03cb101208fab4 - Init START
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO ncclCommInitRank comm 0x5b7e5f00 rank 7 nranks 8 cudaDev 7 nvmlDev 7 busId 900000 commId 0xbe03cb101208fab4 - Init START
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO ncclCommInitRank comm 0x40898840 rank 6 nranks 8 cudaDev 6 nvmlDev 6 busId 800000 commId 0xbe03cb101208fab4 - Init START
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO ncclCommInitRank comm 0x4635db50 rank 4 nranks 8 cudaDev 4 nvmlDev 4 busId 600000 commId 0xbe03cb101208fab4 - Init START
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO ncclCommInitRank comm 0x2e40c290 rank 0 nranks 8 cudaDev 0 nvmlDev 0 busId 200000 commId 0xbe03cb101208fab4 - Init START
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Setting affinity for GPU 1 to ffff,ffffffff
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Setting affinity for GPU 6 to ffffffff,ffff0000,00000000
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Setting affinity for GPU 5 to ffffffff,ffff0000,00000000
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Setting affinity for GPU 4 to ffffffff,ffff0000,00000000
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Setting affinity for GPU 0 to ffff,ffffffff
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Setting affinity for GPU 2 to ffff,ffffffff
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Setting affinity for GPU 7 to ffffffff,ffff0000,00000000
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Setting affinity for GPU 3 to ffff,ffffffff
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO comm 0x40898840 rank 6 nRanks 8 nNodes 1 localRanks 8 localRank 6 MNNVL 0
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO comm 0x682daff0 rank 5 nRanks 8 nNodes 1 localRanks 8 localRank 5 MNNVL 0
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO comm 0x3ef1d500 rank 3 nRanks 8 nNodes 1 localRanks 8 localRank 3 MNNVL 0
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO comm 0x348d8fc0 rank 2 nRanks 8 nNodes 1 localRanks 8 localRank 2 MNNVL 0
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO comm 0x4635db50 rank 4 nRanks 8 nNodes 1 localRanks 8 localRank 4 MNNVL 0
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO comm 0x440867a0 rank 1 nRanks 8 nNodes 1 localRanks 8 localRank 1 MNNVL 0
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO comm 0x2e40c290 rank 0 nRanks 8 nNodes 1 localRanks 8 localRank 0 MNNVL 0
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO comm 0x5b7e5f00 rank 7 nRanks 8 nNodes 1 localRanks 8 localRank 7 MNNVL 0
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO MSCCL: No external scheduler found, using internal implementation
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO MSCCL: No external scheduler found, using internal implementation
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO MSCCL: No external scheduler found, using internal implementation
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO MSCCL: No external scheduler found, using internal implementation
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO MSCCL: No external scheduler found, using internal implementation
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO MSCCL: No external scheduler found, using internal implementation
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO MSCCL: No external scheduler found, using internal implementation
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO MSCCL: No external scheduler found, using internal implementation
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Using MSCCL files from /opt/rocm/lib/../share/rccl/msccl-algorithms
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Using MSCCL files from /opt/rocm/lib/../share/rccl/msccl-algorithms
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Using MSCCL files from /opt/rocm/lib/../share/rccl/msccl-algorithms
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Using MSCCL files from /opt/rocm/lib/../share/rccl/msccl-algorithms
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Using MSCCL files from /opt/rocm/lib/../share/rccl/msccl-algorithms
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Using MSCCL files from /opt/rocm/lib/../share/rccl/msccl-algorithms
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Using MSCCL files from /opt/rocm/lib/../share/rccl/msccl-algorithms
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Using MSCCL files from /opt/rocm/lib/../share/rccl/msccl-algorithms
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Trees [0] 4/-1/-1->3->2 [1] 4/-1/-1->3->2 [2] 6/-1/-1->3->1 [3] 5/-1/-1->3->7 [4] 1/-1/-1->3->0 [5] 5/-1/-1->3->0 [6] 6/-1/-1->3->7 [7] 2/-1/-1->3->4 [8] 2/-1/-1->3->4 [9] 1/-1/-1->3->6 [10] 7/-1/-1->3->5 [11] 0/-1/-1->3->1 [12] 0/-1/-1->3->5 [13] 7/-1/-1->3->6 [14] 4/-1/-1->3->2 [15] 4/-1/-1->3->2 [16] 6/-1/-1->3->1 [17] 5/-1/-1->3->7 [18] 1/-1/-1->3->0 [19] 5/-1/-1->3->0 [20] 6/-1/-1->3->7 [21] 2/-1/-1->3->4 [22] 2/-1/-1->3->4 [23] 1/-1/-1->3->6 [24] 7/-1/-1->3->5 [25] 0/-1/-1->3->1 [26] 0/-1/-1->3->5 [27] 7/-1/-1->3->6 [28] 4/-1/-1->3->2 [29] 4/-1/-1->3->2 [30] 6/-1/-1->3->1 [31] 5/-1/-1->3->7 [32] 1/-1/-1->3->0 [33] 5/-1/-1->3->0 [34] 6/-1/-1->3->7 [35] 2/-1/-1->3->4 [36] 2/-1/-1->3->4 [37] 1/-1/-1->3->6 [38] 7/-1/-1->3->5 [39] 0/-1/-1->3->1 [40] 0/-1/-1->3->5 [41] 7/-1/-1->3->6 [42] 4/-1/-1->3->2 [43] 4/-1/-1->3->2 [44] 6/-1/-1->3->1 [45] 5/-1/-1->3->7 [46] 1/-1/-1->3->0 [47] 5/-1/-1->3->0 [48] 6/-1/-1->3->7 [49] 2/-1/-1->3->4 [50] 2/-1/-1->3->4 [51] 1/-1/-1->3->6 [52] 7/-1/-1->3->5 [53] 0/-1/-1->3->1 [54] 0/-1/-1->3->5 [55] 7/-1/-1->3->6 comm 0x3ef1d500 nRanks 08 busId 500000
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO P2P Chunksize set to 524288
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Trees [0] 7/-1/-1->6->5 [1] -1/-1/-1->6->7 [2] 5/-1/-1->6->3 [3] 1/-1/-1->6->4 [4] -1/-1/-1->6->4 [5] 2/-1/-1->6->1 [6] 2/-1/-1->6->3 [7] 5/-1/-1->6->7 [8] 7/-1/-1->6->-1 [9] 3/-1/-1->6->5 [10] 4/-1/-1->6->1 [11] 4/-1/-1->6->-1 [12] 1/-1/-1->6->2 [13] 3/-1/-1->6->2 [14] 7/-1/-1->6->5 [15] -1/-1/-1->6->7 [16] 5/-1/-1->6->3 [17] 1/-1/-1->6->4 [18] -1/-1/-1->6->4 [19] 2/-1/-1->6->1 [20] 2/-1/-1->6->3 [21] 5/-1/-1->6->7 [22] 7/-1/-1->6->-1 [23] 3/-1/-1->6->5 [24] 4/-1/-1->6->1 [25] 4/-1/-1->6->-1 [26] 1/-1/-1->6->2 [27] 3/-1/-1->6->2 [28] 7/-1/-1->6->5 [29] -1/-1/-1->6->7 [30] 5/-1/-1->6->3 [31] 1/-1/-1->6->4 [32] -1/-1/-1->6->4 [33] 2/-1/-1->6->1 [34] 2/-1/-1->6->3 [35] 5/-1/-1->6->7 [36] 7/-1/-1->6->-1 [37] 3/-1/-1->6->5 [38] 4/-1/-1->6->1 [39] 4/-1/-1->6->-1 [40] 1/-1/-1->6->2 [41] 3/-1/-1->6->2 [42] 7/-1/-1->6->5 [43] -1/-1/-1->6->7 [44] 5/-1/-1->6->3 [45] 1/-1/-1->6->4 [46] -1/-1/-1->6->4 [47] 2/-1/-1->6->1 [48] 2/-1/-1->6->3 [49] 5/-1/-1->6->7 [50] 7/-1/-1->6->-1 [51] 3/-1/-1->6->5 [52] 4/-1/-1->6->1 [53] 4/-1/-1->6->-1 [54] 1/-1/-1->6->2 [55] 3/-1/-1->6->2 comm 0x40898840 nRanks 08 busId 800000
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Trees [0] 2/-1/-1->1->0 [1] 2/-1/-1->1->0 [2] 3/-1/-1->1->4 [3] 7/-1/-1->1->6 [4] 5/-1/-1->1->3 [5] 6/-1/-1->1->5 [6] 7/-1/-1->1->4 [7] 0/-1/-1->1->2 [8] 0/-1/-1->1->2 [9] 4/-1/-1->1->3 [10] 6/-1/-1->1->7 [11] 3/-1/-1->1->5 [12] 5/-1/-1->1->6 [13] 4/-1/-1->1->7 [14] 2/-1/-1->1->0 [15] 2/-1/-1->1->0 [16] 3/-1/-1->1->4 [17] 7/-1/-1->1->6 [18] 5/-1/-1->1->3 [19] 6/-1/-1->1->5 [20] 7/-1/-1->1->4 [21] 0/-1/-1->1->2 [22] 0/-1/-1->1->2 [23] 4/-1/-1->1->3 [24] 6/-1/-1->1->7 [25] 3/-1/-1->1->5 [26] 5/-1/-1->1->6 [27] 4/-1/-1->1->7 [28] 2/-1/-1->1->0 [29] 2/-1/-1->1->0 [30] 3/-1/-1->1->4 [31] 7/-1/-1->1->6 [32] 5/-1/-1->1->3 [33] 6/-1/-1->1->5 [34] 7/-1/-1->1->4 [35] 0/-1/-1->1->2 [36] 0/-1/-1->1->2 [37] 4/-1/-1->1->3 [38] 6/-1/-1->1->7 [39] 3/-1/-1->1->5 [40] 5/-1/-1->1->6 [41] 4/-1/-1->1->7 [42] 2/-1/-1->1->0 [43] 2/-1/-1->1->0 [44] 3/-1/-1->1->4 [45] 7/-1/-1->1->6 [46] 5/-1/-1->1->3 [47] 6/-1/-1->1->5 [48] 7/-1/-1->1->4 [49] 0/-1/-1->1->2 [50] 0/-1/-1->1->2 [51] 4/-1/-1->1->3 [52] 6/-1/-1->1->7 [53] 3/-1/-1->1->5 [54] 5/-1/-1->1->6 [55] 4/-1/-1->1->7 comm 0x440867a0 nRanks 08 busId 300000
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO P2P Chunksize set to 524288
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO P2P Chunksize set to 524288
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Trees [0] -1/-1/-1->7->6 [1] 6/-1/-1->7->5 [2] -1/-1/-1->7->5 [3] 3/-1/-1->7->1 [4] 4/-1/-1->7->2 [5] 4/-1/-1->7->2 [6] 3/-1/-1->7->1 [7] 6/-1/-1->7->-1 [8] 5/-1/-1->7->6 [9] 5/-1/-1->7->-1 [10] 1/-1/-1->7->3 [11] 2/-1/-1->7->4 [12] 2/-1/-1->7->4 [13] 1/-1/-1->7->3 [14] -1/-1/-1->7->6 [15] 6/-1/-1->7->5 [16] -1/-1/-1->7->5 [17] 3/-1/-1->7->1 [18] 4/-1/-1->7->2 [19] 4/-1/-1->7->2 [20] 3/-1/-1->7->1 [21] 6/-1/-1->7->-1 [22] 5/-1/-1->7->6 [23] 5/-1/-1->7->-1 [24] 1/-1/-1->7->3 [25] 2/-1/-1->7->4 [26] 2/-1/-1->7->4 [27] 1/-1/-1->7->3 [28] -1/-1/-1->7->6 [29] 6/-1/-1->7->5 [30] -1/-1/-1->7->5 [31] 3/-1/-1->7->1 [32] 4/-1/-1->7->2 [33] 4/-1/-1->7->2 [34] 3/-1/-1->7->1 [35] 6/-1/-1->7->-1 [36] 5/-1/-1->7->6 [37] 5/-1/-1->7->-1 [38] 1/-1/-1->7->3 [39] 2/-1/-1->7->4 [40] 2/-1/-1->7->4 [41] 1/-1/-1->7->3 [42] -1/-1/-1->7->6 [43] 6/-1/-1->7->5 [44] -1/-1/-1->7->5 [45] 3/-1/-1->7->1 [46] 4/-1/-1->7->2 [47] 4/-1/-1->7->2 [48] 3/-1/-1->7->1 [49] 6/-1/-1->7->-1 [50] 5/-1/-1->7->6 [51] 5/-1/-1->7->-1 [52] 1/-1/-1->7->3 [53] 2/-1/-1->7->4 [54] 2/-1/-1->7->4 [55] 1/-1/-1->7->3 comm 0x5b7e5f00 nRanks 08 busId 900000
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO P2P Chunksize set to 524288
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Trees [0] 5/-1/-1->4->3 [1] 5/-1/-1->4->3 [2] 1/-1/-1->4->2 [3] 6/-1/-1->4->2 [4] 6/-1/-1->4->7 [5] -1/-1/-1->4->7 [6] 1/-1/-1->4->0 [7] 3/-1/-1->4->5 [8] 3/-1/-1->4->5 [9] 2/-1/-1->4->1 [10] 2/-1/-1->4->6 [11] 7/-1/-1->4->6 [12] 7/-1/-1->4->-1 [13] 0/-1/-1->4->1 [14] 5/-1/-1->4->3 [15] 5/-1/-1->4->3 [16] 1/-1/-1->4->2 [17] 6/-1/-1->4->2 [18] 6/-1/-1->4->7 [19] -1/-1/-1->4->7 [20] 1/-1/-1->4->0 [21] 3/-1/-1->4->5 [22] 3/-1/-1->4->5 [23] 2/-1/-1->4->1 [24] 2/-1/-1->4->6 [25] 7/-1/-1->4->6 [26] 7/-1/-1->4->-1 [27] 0/-1/-1->4->1 [28] 5/-1/-1->4->3 [29] 5/-1/-1->4->3 [30] 1/-1/-1->4->2 [31] 6/-1/-1->4->2 [32] 6/-1/-1->4->7 [33] -1/-1/-1->4->7 [34] 1/-1/-1->4->0 [35] 3/-1/-1->4->5 [36] 3/-1/-1->4->5 [37] 2/-1/-1->4->1 [38] 2/-1/-1->4->6 [39] 7/-1/-1->4->6 [40] 7/-1/-1->4->-1 [41] 0/-1/-1->4->1 [42] 5/-1/-1->4->3 [43] 5/-1/-1->4->3 [44] 1/-1/-1->4->2 [45] 6/-1/-1->4->2 [46] 6/-1/-1->4->7 [47] -1/-1/-1->4->7 [48] 1/-1/-1->4->0 [49] 3/-1/-1->4->5 [50] 3/-1/-1->4->5 [51] 2/-1/-1->4->1 [52] 2/-1/-1->4->6 [53] 7/-1/-1->4->6 [54] 7/-1/-1->4->-1 [55] 0/-1/-1->4->1 comm 0x4635db50 nRanks 08 busId 600000
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO P2P Chunksize set to 524288
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Trees [0] 3/-1/-1->2->1 [1] 3/-1/-1->2->1 [2] 4/-1/-1->2->0 [3] 4/-1/-1->2->0 [4] 7/-1/-1->2->5 [5] 7/-1/-1->2->6 [6] 5/-1/-1->2->6 [7] 1/-1/-1->2->3 [8] 1/-1/-1->2->3 [9] 0/-1/-1->2->4 [10] 0/-1/-1->2->4 [11] 5/-1/-1->2->7 [12] 6/-1/-1->2->7 [13] 6/-1/-1->2->5 [14] 3/-1/-1->2->1 [15] 3/-1/-1->2->1 [16] 4/-1/-1->2->0 [17] 4/-1/-1->2->0 [18] 7/-1/-1->2->5 [19] 7/-1/-1->2->6 [20] 5/-1/-1->2->6 [21] 1/-1/-1->2->3 [22] 1/-1/-1->2->3 [23] 0/-1/-1->2->4 [24] 0/-1/-1->2->4 [25] 5/-1/-1->2->7 [26] 6/-1/-1->2->7 [27] 6/-1/-1->2->5 [28] 3/-1/-1->2->1 [29] 3/-1/-1->2->1 [30] 4/-1/-1->2->0 [31] 4/-1/-1->2->0 [32] 7/-1/-1->2->5 [33] 7/-1/-1->2->6 [34] 5/-1/-1->2->6 [35] 1/-1/-1->2->3 [36] 1/-1/-1->2->3 [37] 0/-1/-1->2->4 [38] 0/-1/-1->2->4 [39] 5/-1/-1->2->7 [40] 6/-1/-1->2->7 [41] 6/-1/-1->2->5 [42] 3/-1/-1->2->1 [43] 3/-1/-1->2->1 [44] 4/-1/-1->2->0 [45] 4/-1/-1->2->0 [46] 7/-1/-1->2->5 [47] 7/-1/-1->2->6 [48] 5/-1/-1->2->6 [49] 1/-1/-1->2->3 [50] 1/-1/-1->2->3 [51] 0/-1/-1->2->4 [52] 0/-1/-1->2->4 [53] 5/-1/-1->2->7 [54] 6/-1/-1->2->7 [55] 6/-1/-1->2->5 comm 0x348d8fc0 nRanks 08 busId 400000
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 00/56 :    0   1   2   3   4   5   6   7
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO P2P Chunksize set to 524288
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 01/56 :    0   1   2   3   4   5   7   6
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 02/56 :    0   2   4   1   3   6   5   7
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 03/56 :    0   2   4   6   1   7   3   5
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 04/56 :    0   3   1   5   2   7   4   6
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 05/56 :    0   3   5   1   6   2   7   4
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 06/56 :    0   4   1   7   3   6   2   5
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 07/56 :    0   7   6   5   4   3   2   1
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 08/56 :    0   6   7   5   4   3   2   1
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 09/56 :    0   7   5   6   3   1   4   2
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 10/56 :    0   5   3   7   1   6   4   2
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 11/56 :    0   6   4   7   2   5   1   3
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 12/56 :    0   4   7   2   6   1   5   3
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 13/56 :    0   5   2   6   3   7   1   4
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 14/56 :    0   1   2   3   4   5   6   7
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 15/56 :    0   1   2   3   4   5   7   6
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 16/56 :    0   2   4   1   3   6   5   7
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 17/56 :    0   2   4   6   1   7   3   5
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 18/56 :    0   3   1   5   2   7   4   6
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 19/56 :    0   3   5   1   6   2   7   4
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Trees [0] 6/-1/-1->5->4 [1] 7/-1/-1->5->4 [2] 7/-1/-1->5->6 [3] -1/-1/-1->5->3 [4] 2/-1/-1->5->1 [5] 1/-1/-1->5->3 [6] -1/-1/-1->5->2 [7] 4/-1/-1->5->6 [8] 4/-1/-1->5->7 [9] 6/-1/-1->5->7 [10] 3/-1/-1->5->-1 [11] 1/-1/-1->5->2 [12] 3/-1/-1->5->1 [13] 2/-1/-1->5->-1 [14] 6/-1/-1->5->4 [15] 7/-1/-1->5->4 [16] 7/-1/-1->5->6 [17] -1/-1/-1->5->3 [18] 2/-1/-1->5->1 [19] 1/-1/-1->5->3 [20] -1/-1/-1->5->2 [21] 4/-1/-1->5->6 [22] 4/-1/-1->5->7 [23] 6/-1/-1->5->7 [24] 3/-1/-1->5->-1 [25] 1/-1/-1->5->2 [26] 3/-1/-1->5->1 [27] 2/-1/-1->5->-1 [28] 6/-1/-1->5->4 [29] 7/-1/-1->5->4 [30] 7/-1/-1->5->6 [31] -1/-1/-1->5->3 [32] 2/-1/-1->5->1 [33] 1/-1/-1->5->3 [34] -1/-1/-1->5->2 [35] 4/-1/-1->5->6 [36] 4/-1/-1->5->7 [37] 6/-1/-1->5->7 [38] 3/-1/-1->5->-1 [39] 1/-1/-1->5->2 [40] 3/-1/-1->5->1 [41] 2/-1/-1->5->-1 [42] 6/-1/-1->5->4 [43] 7/-1/-1->5->4 [44] 7/-1/-1->5->6 [45] -1/-1/-1->5->3 [46] 2/-1/-1->5->1 [47] 1/-1/-1->5->3 [48] -1/-1/-1->5->2 [49] 4/-1/-1->5->6 [50] 4/-1/-1->5->7 [51] 6/-1/-1->5->7 [52] 3/-1/-1->5->-1 [53] 1/-1/-1->5->2 [54] 3/-1/-1->5->1 [55] 2/-1/-1->5->-1 comm 0x682daff0 nRanks 08 busId 700000
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 20/56 :    0   4   1   7   3   6   2   5
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 21/56 :    0   7   6   5   4   3   2   1
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO P2P Chunksize set to 524288
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 22/56 :    0   6   7   5   4   3   2   1
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 23/56 :    0   7   5   6   3   1   4   2
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 24/56 :    0   5   3   7   1   6   4   2
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 25/56 :    0   6   4   7   2   5   1   3
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 26/56 :    0   4   7   2   6   1   5   3
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 27/56 :    0   5   2   6   3   7   1   4
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 28/56 :    0   1   2   3   4   5   6   7
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 29/56 :    0   1   2   3   4   5   7   6
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 30/56 :    0   2   4   1   3   6   5   7
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 31/56 :    0   2   4   6   1   7   3   5
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 32/56 :    0   3   1   5   2   7   4   6
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 33/56 :    0   3   5   1   6   2   7   4
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 34/56 :    0   4   1   7   3   6   2   5
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 35/56 :    0   7   6   5   4   3   2   1
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 36/56 :    0   6   7   5   4   3   2   1
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 37/56 :    0   7   5   6   3   1   4   2
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 38/56 :    0   5   3   7   1   6   4   2
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 39/56 :    0   6   4   7   2   5   1   3
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 40/56 :    0   4   7   2   6   1   5   3
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 41/56 :    0   5   2   6   3   7   1   4
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 42/56 :    0   1   2   3   4   5   6   7
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 43/56 :    0   1   2   3   4   5   7   6
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 44/56 :    0   2   4   1   3   6   5   7
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 45/56 :    0   2   4   6   1   7   3   5
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 46/56 :    0   3   1   5   2   7   4   6
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 47/56 :    0   3   5   1   6   2   7   4
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 48/56 :    0   4   1   7   3   6   2   5
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 49/56 :    0   7   6   5   4   3   2   1
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 50/56 :    0   6   7   5   4   3   2   1
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 51/56 :    0   7   5   6   3   1   4   2
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 52/56 :    0   5   3   7   1   6   4   2
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 53/56 :    0   6   4   7   2   5   1   3
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 54/56 :    0   4   7   2   6   1   5   3
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 55/56 :    0   5   2   6   3   7   1   4
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Trees [0] 1/-1/-1->0->-1 [1] 1/-1/-1->0->-1 [2] 2/-1/-1->0->-1 [3] 2/-1/-1->0->-1 [4] 3/-1/-1->0->-1 [5] 3/-1/-1->0->-1 [6] 4/-1/-1->0->-1 [7] -1/-1/-1->0->1 [8] -1/-1/-1->0->1 [9] -1/-1/-1->0->2 [10] -1/-1/-1->0->2 [11] -1/-1/-1->0->3 [12] -1/-1/-1->0->3 [13] -1/-1/-1->0->4 [14] 1/-1/-1->0->-1 [15] 1/-1/-1->0->-1 [16] 2/-1/-1->0->-1 [17] 2/-1/-1->0->-1 [18] 3/-1/-1->0->-1 [19] 3/-1/-1->0->-1 [20] 4/-1/-1->0->-1 [21] -1/-1/-1->0->1 [22] -1/-1/-1->0->1 [23] -1/-1/-1->0->2 [24] -1/-1/-1->0->2 [25] -1/-1/-1->0->3 [26] -1/-1/-1->0->3 [27] -1/-1/-1->0->4 [28] 1/-1/-1->0->-1 [29] 1/-1/-1->0->-1 [30] 2/-1/-1->0->-1 [31] 2/-1/-1->0->-1 [32] 3/-1/-1->0->-1 [33] 3/-1/-1->0->-1 [34] 4/-1/-1->0->-1 [35] -1/-1/-1->0->1 [36] -1/-1/-1->0->1 [37] -1/-1/-1->0->2 [38] -1/-1/-1->0->2 [39] -1/-1/-1->0->3 [40] -1/-1/-1->0->3 [41] -1/-1/-1->0->4 [42] 1/-1/-1->0->-1 [43] 1/-1/-1->0->-1 [44] 2/-1/-1->0->-1 [45] 2/-1/-1->0->-1 [46] 3/-1/-1->0->-1 [47] 3/-1/-1->0->-1 [48] 4/-1/-1->0->-1 [49] -1/-1/-1->0->1 [50] -1/-1/-1->0->1 [51] -1/-1/-1->0->2 [52] -1/-1/-1->0->2 [53] -1/-1/-1->0->3 [54] -1/-1/-1->0->3 [55] -1/-1/-1->0->4 comm 0x2e40c290 nRanks 08 busId 200000
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO P2P Chunksize set to 524288
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 00/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 01/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 14/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 15/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 28/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 29/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 42/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 43/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 00/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 00/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 08/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 02/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 14/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 14/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 22/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 16/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 28/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 28/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 36/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 42/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 30/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 50/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 42/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 44/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 00/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 00/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 01/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 09/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 14/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 14/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 15/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 23/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 28/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 00/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 28/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 29/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 37/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 01/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 42/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 42/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 43/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 14/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 51/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 00/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 15/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 01/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 28/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 29/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 14/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 42/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 15/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 43/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 28/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 29/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 42/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 43/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 01/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 01/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 02/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 04/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 15/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 15/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 18/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 16/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 29/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 29/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 32/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 30/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 43/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 43/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 02/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 46/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 10/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 44/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 02/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 11/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 13/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 03/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 16/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 24/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 16/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 25/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 27/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 17/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 30/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 38/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 30/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 39/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 31/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 41/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 44/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 44/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 52/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 53/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 45/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 55/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 11/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 12/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 25/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 26/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 39/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 40/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 53/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 54/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 00/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 01/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 14/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 15/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 28/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 29/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 42/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 43/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 02/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 03/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 03/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 05/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 16/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 17/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 17/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 03/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 19/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 30/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 31/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 04/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 31/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 33/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 17/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 44/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 45/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 18/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 45/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 47/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 31/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 32/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 45/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 46/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 09/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 04/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 02/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 13/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 05/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 06/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 23/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 16/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 18/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 27/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 20/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 19/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 37/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 06/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 32/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 30/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 11/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 41/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 11/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 34/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 33/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 03/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 12/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 51/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 20/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 44/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 46/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 55/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 25/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 25/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 06/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 03/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 47/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 48/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 26/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 34/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 17/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 12/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 39/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 39/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 17/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 20/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 40/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 48/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 26/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 31/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 53/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 53/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 31/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 34/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 54/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 40/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 45/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 45/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 48/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 54/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 03/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 05/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 06/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 12/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 13/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 04/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 06/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 17/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 10/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 05/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 13/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 19/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 12/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 05/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 20/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 12/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 13/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 11/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 26/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 27/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 18/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 06/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 20/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 31/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 24/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 19/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 27/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 26/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 33/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 19/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 34/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 26/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 27/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 25/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 40/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 32/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 41/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 20/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 34/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 45/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 38/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 33/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 41/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 40/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 47/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 40/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 33/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 48/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 41/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 39/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 54/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 46/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 55/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 48/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 34/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 52/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 47/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 54/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 55/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 54/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 53/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 55/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 47/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 48/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 05/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 04/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 10/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 11/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 10/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 04/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 13/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 13/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 12/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 04/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 02/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 19/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 05/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 18/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 24/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 25/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 05/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 24/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 06/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 18/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 27/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 26/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 27/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 33/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 18/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 16/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 19/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 32/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 38/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 39/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 38/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 19/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 20/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 32/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 41/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 47/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 40/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 32/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 41/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 30/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 33/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 46/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 52/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 53/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 33/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 52/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 34/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 46/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 55/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 54/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 46/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 55/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 44/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 47/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 47/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 48/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 09/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 13/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 23/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 27/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 37/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 41/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 51/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 08/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 10/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 55/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 11/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 09/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 09/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 12/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 22/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 10/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 10/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 24/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 25/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 23/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 23/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 26/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 36/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 24/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 24/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 38/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 08/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 39/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 37/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 37/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 40/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 09/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 50/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 38/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 38/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 52/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 22/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 53/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 51/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 51/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 54/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 52/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 23/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 52/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 36/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 37/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 03/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 50/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 06/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 04/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 10/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 17/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 51/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 09/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 11/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 20/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 18/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 24/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 31/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 23/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 25/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 34/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 32/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 38/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 45/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 37/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 39/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 48/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 46/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 52/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 07/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 51/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 53/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 08/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 21/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 22/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 35/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 36/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 49/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 50/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 01/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 07/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 07/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 07/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 07/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 07/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 08/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 07/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 02/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 08/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 15/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 09/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 08/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 21/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 08/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 07/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 21/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 21/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 21/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 21/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 22/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 21/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 22/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 16/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 29/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 35/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 22/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 23/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 22/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 35/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 21/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 35/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 36/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 35/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 35/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 35/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 36/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 30/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 43/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 49/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 36/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 37/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 36/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 49/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 35/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 49/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 50/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 49/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 49/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 49/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 50/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 44/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 51/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 50/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 50/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 49/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Connected all rings comm 0x348d8fc0 nRanks 08 busId 400000
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Connected all rings comm 0x440867a0 nRanks 08 busId 300000
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Connected all rings comm 0x2e40c290 nRanks 08 busId 200000
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Connected all rings comm 0x3ef1d500 nRanks 08 busId 500000
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Connected all rings comm 0x4635db50 nRanks 08 busId 600000
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Connected all rings comm 0x5b7e5f00 nRanks 08 busId 900000
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Connected all rings comm 0x682daff0 nRanks 08 busId 700000
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Connected all rings comm 0x40898840 nRanks 08 busId 800000
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 07/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 08/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 21/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 22/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 35/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 36/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 49/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 01/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 07/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 02/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 07/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 50/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 08/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 07/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 07/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 15/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 21/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 07/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 16/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 07/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 21/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 22/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 08/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 21/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 08/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 35/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 29/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 30/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 08/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 21/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 21/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 36/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 35/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 35/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 21/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 22/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 22/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 49/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 43/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 44/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 22/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 35/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 35/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 50/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 49/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 49/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 35/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 36/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 36/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 49/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 36/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 49/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 50/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 50/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 49/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 50/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 09/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 10/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 23/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 24/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 37/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 08/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 03/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 38/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 09/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 06/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 22/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 51/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 17/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 23/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 52/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 20/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 36/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 10/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 04/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 31/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 37/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 11/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 09/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 09/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 34/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 50/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 10/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 24/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 10/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 18/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 45/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 51/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 25/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 12/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 23/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 23/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 48/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 38/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 24/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 24/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 32/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 39/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 37/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 37/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 26/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 52/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 46/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 38/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 38/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 53/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 51/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 51/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 40/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 52/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 52/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 54/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 11/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 12/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 25/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 26/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 39/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 40/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 53/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 54/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 05/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 04/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 10/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 04/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 05/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 02/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 19/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 13/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 18/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 06/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 09/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 24/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 18/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 19/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 16/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 13/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 33/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 04/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 32/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 27/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 20/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 23/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 38/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 05/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 33/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 30/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 32/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 27/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 47/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 34/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 18/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 46/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 41/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 37/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 52/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 44/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 19/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 47/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 46/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 41/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 48/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 32/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 55/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 51/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 33/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 55/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 46/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 47/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 13/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 27/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 41/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 06/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 55/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 04/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 20/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 05/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 12/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 12/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 34/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 06/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 03/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 18/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 13/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 48/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 05/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 19/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 06/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 26/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 26/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 10/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 11/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 20/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 17/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 32/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 27/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 13/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 19/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 33/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 20/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 40/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 40/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 24/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 25/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 34/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 31/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 41/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 46/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 27/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 33/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 47/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 34/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 54/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 54/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 38/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 39/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 48/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 45/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 55/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 41/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 47/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 48/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 52/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 53/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 55/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 06/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 09/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 11/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 13/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 20/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 23/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 25/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 34/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 27/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 39/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 37/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 41/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 48/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 02/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 11/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 51/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 53/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 06/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 12/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 03/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 55/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 16/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 25/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 12/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 11/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 04/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 20/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 26/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 17/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 12/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 05/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 30/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 39/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 26/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 25/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 34/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 18/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 40/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 31/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 26/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 44/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 19/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 40/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 53/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 39/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 48/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 32/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 45/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 54/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 40/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 33/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 54/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 53/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 46/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 54/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 47/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 03/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 04/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 17/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 18/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 03/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 31/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 05/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 10/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 32/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 17/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 13/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 45/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 02/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 02/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 24/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 01/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 46/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 19/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 03/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 02/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 03/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 27/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 02/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 16/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 11/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 16/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 38/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 31/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 15/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 17/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 16/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 17/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 41/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 16/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 30/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 25/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 30/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 52/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 29/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 31/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 30/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 31/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 55/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 33/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 30/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 44/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 39/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 44/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 43/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 45/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 45/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 44/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 45/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 44/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 47/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 53/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 00/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 08/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 14/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 22/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 28/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 36/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 42/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 50/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 00/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 00/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 00/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 00/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 01/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 00/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 01/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 14/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 01/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 01/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 09/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 14/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 15/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 14/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 14/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 15/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 14/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 28/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 15/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 15/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 28/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 23/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 29/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 28/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 29/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 28/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 28/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 42/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 42/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 29/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 29/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 37/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 43/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 43/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 42/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 42/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 42/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 43/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 43/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 51/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 00/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 01/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 14/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 15/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 28/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 29/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 42/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 43/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Connected all trees
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO threadThresholds 8/8/64 | 64/8/64 | 256 | 256
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO 56 coll channels, 56 collnet channels, 0 nvls channels, 64 p2p channels, 8 p2p channels per peer
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Connected all trees
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO threadThresholds 8/8/64 | 64/8/64 | 256 | 256
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Connected all trees
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Connected all trees
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO 56 coll channels, 56 collnet channels, 0 nvls channels, 64 p2p channels, 8 p2p channels per peer
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Connected all trees
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO threadThresholds 8/8/64 | 64/8/64 | 256 | 256
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO threadThresholds 8/8/64 | 64/8/64 | 256 | 256
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO 56 coll channels, 56 collnet channels, 0 nvls channels, 64 p2p channels, 8 p2p channels per peer
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO 56 coll channels, 56 collnet channels, 0 nvls channels, 64 p2p channels, 8 p2p channels per peer
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Connected all trees
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO threadThresholds 8/8/64 | 64/8/64 | 256 | 256
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Connected all trees
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO 56 coll channels, 56 collnet channels, 0 nvls channels, 64 p2p channels, 8 p2p channels per peer
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO threadThresholds 8/8/64 | 64/8/64 | 256 | 256
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO 56 coll channels, 56 collnet channels, 0 nvls channels, 64 p2p channels, 8 p2p channels per peer
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Connected all trees
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO threadThresholds 8/8/64 | 64/8/64 | 256 | 256
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO 56 coll channels, 56 collnet channels, 0 nvls channels, 64 p2p channels, 8 p2p channels per peer
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO threadThresholds 8/8/64 | 64/8/64 | 256 | 256
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO 56 coll channels, 56 collnet channels, 0 nvls channels, 64 p2p channels, 8 p2p channels per peer
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 02/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 03/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 02/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 03/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 02/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 03/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 02/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 03/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 01/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 03/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 00/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 00/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 01/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 01/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 02/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 02/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 01/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 03/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 03/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 02/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 03/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 00/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 00/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 01/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 00/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 01/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 01/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 00/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 00/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 02/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 03/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 01/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 03/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 00/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 02/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 02/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 03/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 00/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 00/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 00/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 00/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 01/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 01/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 00/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 01/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 01/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 00/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 02/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 03/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 00/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 02/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 01/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 03/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 01/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 03/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 01/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 00/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 02/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 02/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 01/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 02/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 03/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 03/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 02/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 03/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 00/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 00/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 00/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 00/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 00/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 01/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 01/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 01/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 01/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 00/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 00/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 01/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 02/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 00/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 02/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 02/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 02/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 01/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 01/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 02/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 01/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 03/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 03/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 02/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 02/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 03/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 02/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 03/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 03/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 03/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 00/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 01/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 00/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 02/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 00/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 01/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 00/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 03/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 00/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 01/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 00/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 00/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 02/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 01/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 00/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 01/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 03/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 01/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 01/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 02/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 03/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 01/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 02/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 02/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 03/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 02/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 03/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 03/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 03/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 00/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 00/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 00/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 00/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 00/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 00/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 00/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 00/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 01/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 01/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 01/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 01/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 01/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 01/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 01/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 03/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 02/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 02/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 02/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 02/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 03/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 03/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 02/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 02/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 02/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 02/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 03/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 02/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 01/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 00/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 03/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 03/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 03/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 03/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 02/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 03/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 01/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 03/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 02/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 03/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO MSCCL: Setup connections finished, used 1644743264
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO MSCCL: Setup connections finished, used 1611188832
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO MSCCL: Setup connections finished, used 1583925856
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO MSCCL: Setup connections finished, used 1590217312
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO MSCCL: Setup connections finished, used 1418250848
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO MSCCL: Setup connections finished, used 1644743264
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO MSCCL: Setup connections finished, used 1583925856
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO MSCCL: Setup connections finished, used 1644743264
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO MSCCL: Setup connections finished, used 1644743264
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO MSCCL: Setup connections finished, used 1590217312
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO MSCCL: Setup connections finished, used 1583925856
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO MSCCL: Setup connections finished, used 1583925856
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO MSCCL: Setup connections finished, used 1644743264
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO MSCCL: Setup connections finished, used 1644743264
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO MSCCL: Setup connections finished, used 1611188832
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO MSCCL: Setup connections finished, used 1418250848
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 04/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 05/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 04/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 06/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 05/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 04/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 04/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 04/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 06/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 04/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 05/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 05/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 05/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 05/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 04/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 06/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 06/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 06/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 06/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 05/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 07/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 06/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 04/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 05/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 06/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 05/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 04/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 07/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 06/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 06/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 04/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 05/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 07/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 05/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 07/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 06/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 06/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 07/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 07/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 06/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 07/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 04/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 05/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 06/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 04/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 05/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 05/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 04/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 06/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 06/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 05/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 07/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 07/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 07/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 04/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 05/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 05/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 04/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 06/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 07/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 04/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 06/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 07/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 07/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 06/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 04/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 05/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 07/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 07/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 05/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 07/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 07/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 04/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 04/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 04/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 04/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 04/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 05/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 07/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 05/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 07/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 05/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 06/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 07/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 06/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 07/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 07/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 07/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 04/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 07/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 07/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 06/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 07/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 06/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 06/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 07/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 04/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 07/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 04/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 04/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 05/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 04/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 05/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 06/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 07/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 05/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 06/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 07/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 05/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 07/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 07/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 07/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 04/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 05/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 05/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 04/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 04/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 05/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 06/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 06/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 05/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 05/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 04/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 04/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 07/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 06/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 07/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 07/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 04/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 06/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 05/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 05/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 06/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 07/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 07/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 06/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 06/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 07/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 07/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 07/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 04/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 05/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 04/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 04/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 04/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 04/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 06/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 05/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 04/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 04/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 05/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 05/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 05/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 04/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 05/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 06/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 05/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 06/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 06/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 06/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 05/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 06/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 06/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 06/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO MSCCL: Setup connections finished, used 1760086624
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO MSCCL: Setup connections finished, used 1598605920
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO MSCCL: Setup connections finished, used 1785252448
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO MSCCL: Setup connections finished, used 1598605920
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO MSCCL: Setup connections finished, used 1785252448
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO MSCCL: Setup connections finished, used 1760086624
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO MSCCL: Setup connections finished, used 1785252448
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO MSCCL: Setup connections finished, used 1760086624
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO MSCCL: Setup connections finished, used 1598605920
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO MSCCL: Setup connections finished, used 1598605920
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO MSCCL: Setup connections finished, used 1785252448
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO MSCCL: Setup connections finished, used 1760086624
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO MSCCL: Setup connections finished, used 1598605920
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO MSCCL: Setup connections finished, used 1785252448
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO MSCCL: Setup connections finished, used 1760086624
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO MSCCL: Setup connections finished, used 1598605920
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO MSCCL: Setup connections finished, used 1785252448
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO MSCCL: Setup connections finished, used 1760086624
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO MSCCL: Setup connections finished, used 1598605920
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO MSCCL: Setup connections finished, used 1760086624
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO MSCCL: Setup connections finished, used 1785252448
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 09/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 10/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 17/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 11/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 18/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 16/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 25/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 19/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 26/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 27/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 24/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 18/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 26/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 17/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 15/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 30/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 23/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 13/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 31/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 29/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 15/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 08/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 23/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 12/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 20/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 14/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 22/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 11/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 30/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 27/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 13/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 21/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 12/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 20/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 28/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 17/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 25/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 13/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 15/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 08/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 11/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 21/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 23/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 16/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 19/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 29/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 31/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 24/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 20/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 28/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 14/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 22/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 08/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 10/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 30/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 16/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 26/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 24/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 12/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 28/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 11/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 15/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 19/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 08/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 13/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 09/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 23/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 16/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 21/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 17/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 14/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 10/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 29/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 12/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 18/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 22/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 28/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 15/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 27/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 23/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 30/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 09/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 31/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 21/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 25/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 29/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 14/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 10/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 22/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 16/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 24/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 12/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 20/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 13/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 09/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 31/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 28/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 25/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 21/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 18/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 19/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 29/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 26/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 27/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 14/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 22/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO Channel 13/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x682daff0 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 30/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 23/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 09/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 11/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 10/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 17/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO Channel 31/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x5b7e5f00 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 19/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 18/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO Channel 25/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x440867a0 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO Channel 27/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x3ef1d500 nRanks 08
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO Channel 26/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x348d8fc0 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 12/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO Channel 20/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x4635db50 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 08/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 16/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO Channel 22/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x40898840 nRanks 08
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO Channel 24/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x2e40c290 nRanks 08
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO MSCCL: Setup connections finished, used 1944636000
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO MSCCL: Setup connections finished, used 1950927456
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO MSCCL: Setup connections finished, used 1957218912
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO MSCCL: Setup connections finished, used 1925761632
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO MSCCL: Setup connections finished, used 1739115104
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO MSCCL: Setup connections finished, used 1867041376
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO MSCCL: Setup connections finished, used 1875429984
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO MSCCL: Setup connections finished, used 1885915744
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO MSCCL: Setup connections finished, used 1957218912
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO MSCCL: Setup connections finished, used 1944636000
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO MSCCL: Setup connections finished, used 1950927456
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO MSCCL: Setup connections finished, used 1739115104
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO MSCCL: Setup connections finished, used 1925761632
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO MSCCL: Setup connections finished, used 1875429984
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO MSCCL: Setup connections finished, used 1885915744
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO MSCCL: Setup connections finished, used 1867041376
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO MSCCL: Setup connections finished, used 1950927456
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO MSCCL: Setup connections finished, used 1957218912
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO MSCCL: Setup connections finished, used 1944636000
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO MSCCL: Setup connections finished, used 1739115104
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO MSCCL: Setup connections finished, used 1925761632
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO MSCCL: Initialization finished, localSize 248
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO MSCCL: Initialization finished, localSize 248
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO MSCCL: Setup connections finished, used 1875429984
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO MSCCL: Initialization finished, localSize 248
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO MSCCL: Setup connections finished, used 1885915744
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO MSCCL: Initialization finished, localSize 248
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO MSCCL: Setup connections finished, used 1867041376
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO MSCCL: Initialization finished, localSize 248
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO MSCCL: Initialization finished, localSize 248
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO MSCCL: Initialization finished, localSize 248
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO MSCCL: Initialization finished, localSize 248
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO MSCCL++: Enabled! Msg size threshold=1048576
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO MSCCL++: Enabled! Msg size threshold=1048576
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO MSCCL++: Enabled! Msg size threshold=1048576
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO MSCCL++: Enabled! Msg size threshold=1048576
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO MSCCL++: Enabled! Msg size threshold=1048576
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO MSCCL++: Enabled! Msg size threshold=1048576
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO MSCCL++: Enabled! Msg size threshold=1048576
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO MSCCL++: Enabled! Msg size threshold=1048576
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO TUNER/Plugin: Plugin load returned 11 : librccl-net.so: cannot open shared object file: No such file or directory : when loading librccl-tuner.so
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO TUNER/Plugin: Using internal tuner plugin.
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO TUNER/Plugin: Plugin load returned 11 : librccl-net.so: cannot open shared object file: No such file or directory : when loading librccl-tuner.so
pdfc-aig-00000H:2664387:2666936 [1] NCCL INFO ncclCommInitRank comm 0x440867a0 rank 1 nranks 8 cudaDev 1 nvmlDev 1 busId 300000 commId 0xbe03cb101208fab4 localSize 372 used 1950929504 bytes on core 21 - Init COMPLETE
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO TUNER/Plugin: Using internal tuner plugin.
pdfc-aig-00000H:2664389:2666937 [3] NCCL INFO ncclCommInitRank comm 0x3ef1d500 rank 3 nranks 8 cudaDev 3 nvmlDev 3 busId 500000 commId 0xbe03cb101208fab4 localSize 372 used 1944638048 bytes on core 45 - Init COMPLETE
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO TUNER/Plugin: Plugin load returned 11 : librccl-net.so: cannot open shared object file: No such file or directory : when loading librccl-tuner.so
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO TUNER/Plugin: Plugin load returned 115 : librccl-net.so: cannot open shared object file: No such file or directory : when loading librccl-tuner.so
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO TUNER/Plugin: Using internal tuner plugin.
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO TUNER/Plugin: Using internal tuner plugin.
pdfc-aig-00000H:2664386:2666935 [0] NCCL INFO ncclCommInitRank comm 0x2e40c290 rank 0 nranks 8 cudaDev 0 nvmlDev 0 busId 200000 commId 0xbe03cb101208fab4 localSize 372 used 1739117152 bytes on core 25 - Init COMPLETE
pdfc-aig-00000H:2664392:2666939 [6] NCCL INFO ncclCommInitRank comm 0x40898840 rank 6 nranks 8 cudaDev 6 nvmlDev 6 busId 800000 commId 0xbe03cb101208fab4 localSize 372 used 1885917792 bytes on core 53 - Init COMPLETE
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO TUNER/Plugin: Plugin load returned 11 : librccl-net.so: cannot open shared object file: No such file or directory : when loading librccl-tuner.so
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO TUNER/Plugin: Using internal tuner plugin.
pdfc-aig-00000H:2664393:2666938 [7] NCCL INFO ncclCommInitRank comm 0x5b7e5f00 rank 7 nranks 8 cudaDev 7 nvmlDev 7 busId 900000 commId 0xbe03cb101208fab4 localSize 372 used 1875432032 bytes on core 50 - Init COMPLETE
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO TUNER/Plugin: Plugin load returned 11 : librccl-net.so: cannot open shared object file: No such file or directory : when loading librccl-tuner.so
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO TUNER/Plugin: Using internal tuner plugin.
pdfc-aig-00000H:2664390:2666942 [4] NCCL INFO ncclCommInitRank comm 0x4635db50 rank 4 nranks 8 cudaDev 4 nvmlDev 4 busId 600000 commId 0xbe03cb101208fab4 localSize 372 used 1925763680 bytes on core 71 - Init COMPLETE
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO TUNER/Plugin: Plugin load returned 11 : librccl-net.so: cannot open shared object file: No such file or directory : when loading librccl-tuner.so
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO TUNER/Plugin: Using internal tuner plugin.
pdfc-aig-00000H:2664388:2666941 [2] NCCL INFO ncclCommInitRank comm 0x348d8fc0 rank 2 nranks 8 cudaDev 2 nvmlDev 2 busId 400000 commId 0xbe03cb101208fab4 localSize 372 used 1957220960 bytes on core 34 - Init COMPLETE
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO TUNER/Plugin: Plugin load returned 11 : librccl-net.so: cannot open shared object file: No such file or directory : when loading librccl-tuner.so
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO TUNER/Plugin: Using internal tuner plugin.
pdfc-aig-00000H:2664391:2666940 [5] NCCL INFO ncclCommInitRank comm 0x682daff0 rank 5 nranks 8 cudaDev 5 nvmlDev 5 busId 700000 commId 0xbe03cb101208fab4 localSize 372 used 1867043424 bytes on core 49 - Init COMPLETE
Running tokenizer on dataset (num_proc=64):   0%|          | 0/1310 [00:00<?, ? examples/s]Running tokenizer on dataset (num_proc=64):   2%|▏         | 21/1310 [00:01<01:04, 19.84 examples/s]Running tokenizer on dataset (num_proc=64):   5%|▍         | 63/1310 [00:01<00:18, 67.37 examples/s]Running tokenizer on dataset (num_proc=64):   8%|▊         | 105/1310 [00:01<00:11, 103.62 examples/s]Running tokenizer on dataset (num_proc=64):  13%|█▎        | 168/1310 [00:01<00:07, 143.09 examples/s]Running tokenizer on dataset (num_proc=64):  16%|█▌        | 210/1310 [00:01<00:06, 160.49 examples/s]Running tokenizer on dataset (num_proc=64):  19%|█▉        | 252/1310 [00:02<00:06, 175.25 examples/s]Running tokenizer on dataset (num_proc=64):  22%|██▏       | 294/1310 [00:02<00:05, 183.76 examples/s]Running tokenizer on dataset (num_proc=64):  26%|██▌       | 336/1310 [00:02<00:05, 186.32 examples/s]Running tokenizer on dataset (num_proc=64):  27%|██▋       | 357/1310 [00:02<00:05, 187.85 examples/s]Running tokenizer on dataset (num_proc=64):  29%|██▉       | 378/1310 [00:02<00:04, 186.68 examples/s]Running tokenizer on dataset (num_proc=64):  30%|███       | 399/1310 [00:02<00:04, 187.02 examples/s]Running tokenizer on dataset (num_proc=64):  32%|███▏      | 420/1310 [00:02<00:05, 161.00 examples/s]Running tokenizer on dataset (num_proc=64):  37%|███▋      | 483/1310 [00:03<00:03, 216.51 examples/s]Running tokenizer on dataset (num_proc=64):  40%|████      | 525/1310 [00:03<00:04, 173.50 examples/s]Running tokenizer on dataset (num_proc=64):  45%|████▍     | 588/1310 [00:03<00:03, 206.51 examples/s]Running tokenizer on dataset (num_proc=64):  48%|████▊     | 630/1310 [00:03<00:03, 196.17 examples/s]Running tokenizer on dataset (num_proc=64):  51%|█████     | 670/1310 [00:04<00:03, 197.89 examples/s]Running tokenizer on dataset (num_proc=64):  54%|█████▍    | 710/1310 [00:04<00:02, 203.19 examples/s]Running tokenizer on dataset (num_proc=64):  57%|█████▋    | 750/1310 [00:04<00:03, 179.03 examples/s]Running tokenizer on dataset (num_proc=64):  62%|██████▏   | 810/1310 [00:04<00:02, 213.78 examples/s]Running tokenizer on dataset (num_proc=64):  65%|██████▍   | 850/1310 [00:05<00:02, 164.20 examples/s]Running tokenizer on dataset (num_proc=64):  68%|██████▊   | 890/1310 [00:05<00:02, 151.04 examples/s]Running tokenizer on dataset (num_proc=64):  71%|███████   | 930/1310 [00:05<00:02, 180.78 examples/s]Running tokenizer on dataset (num_proc=64):  74%|███████▍  | 970/1310 [00:05<00:01, 179.34 examples/s]Running tokenizer on dataset (num_proc=64):  77%|███████▋  | 1010/1310 [00:06<00:01, 180.80 examples/s]Running tokenizer on dataset (num_proc=64):  80%|████████  | 1050/1310 [00:06<00:01, 180.99 examples/s]Running tokenizer on dataset (num_proc=64):  82%|████████▏ | 1070/1310 [00:06<00:01, 180.86 examples/s]Running tokenizer on dataset (num_proc=64):  85%|████████▍ | 1110/1310 [00:06<00:00, 216.59 examples/s]Running tokenizer on dataset (num_proc=64):  88%|████████▊ | 1150/1310 [00:06<00:00, 209.84 examples/s]Running tokenizer on dataset (num_proc=64):  91%|█████████ | 1190/1310 [00:06<00:00, 199.45 examples/s]Running tokenizer on dataset (num_proc=64):  94%|█████████▍| 1230/1310 [00:07<00:00, 180.34 examples/s]Running tokenizer on dataset (num_proc=64):  98%|█████████▊| 1290/1310 [00:07<00:00, 218.48 examples/s]Running tokenizer on dataset (num_proc=64): 100%|██████████| 1310/1310 [00:07<00:00, 172.90 examples/s]
training example:
input_ids:
[151644, 8948, 198, 2610, 525, 264, 10950, 17847, 13, 151645, 198, 151644, 872, 198, 9885, 279, 1537, 2326, 18509, 315, 279, 1985, 315, 279, 6785, 19703, 315, 57960, 26888, 90, 16, 24, 24, 20, 92, 87, 61, 35702, 839, 15159, 16, 24, 24, 20, 92, 87, 51185, 87, 61, 17, 2418, 151645, 198, 151644, 77091, 198, 32313, 11, 773, 358, 1184, 311, 1477, 279, 1537, 2326, 18509, 315, 279, 1985, 315, 279, 6785, 19703, 315, 279, 23606, 11995, 248, 7, 16, 24, 24, 20, 8, 353, 856, 13268, 839, 15159, 16, 24, 24, 20, 92, 856, 8, 284, 856, 29456, 13, 88190, 11, 1077, 594, 1490, 13, 5512, 11, 1077, 752, 1430, 311, 3535, 279, 23606, 323, 7071, 700, 1246, 311, 11625, 432, 13, 4710, 785, 23606, 374, 2661, 438, 11995, 248, 7, 16, 24, 24, 20, 8, 353, 856, 13268, 839, 15159, 16, 24, 24, 20, 92, 856, 8, 284, 856, 29456, 13, 2938, 5868, 264, 2699, 16965, 448, 279, 89936, 76, 304, 279, 27690, 13, 10696, 358, 646, 1896, 89936, 1011, 389, 2176, 11067, 311, 39721, 432, 30, 2521, 8365, 18130, 279, 23606, 1667, 5888, 315, 505, 2700, 323, 89936, 1011, 13, 4710, 10061, 752, 19091, 429, 1487, 880, 264, 284, 320, 2261, 264, 24254, 2261, 293, 701, 773, 1487, 15159, 16, 24, 24, 20, 92, 856, 374, 6144, 311, 320, 2261, 856, 24254, 2261, 220, 16, 24, 24, 20, 568, 7281, 11, 856, 9226, 311, 1487, 15159, 16, 24, 24, 20, 92, 856, 646, 387, 58524, 1667, 27690, 10309, 13, 13824, 11, 7196, 358, 646, 3158, 856, 13268, 839, 15159, 16, 24, 24, 20, 92, 856, 8, 438, 384, 47822, 7, 2261, 856, 8, 353, 320, 839, 15159, 16, 24, 24, 20, 92, 856, 96351, 1988, 429, 2578, 537, 387, 10950, 13, 6771, 752, 1744, 21303, 382, 92014, 11, 2474, 279, 23606, 702, 856, 304, 279, 27690, 323, 1083, 856, 52263, 11, 7196, 31334, 10607, 259, 284, 1487, 15159, 16, 24, 24, 20, 92, 856, 1035, 1492, 13, 6771, 752, 1430, 429, 13, 6771, 748, 738, 259, 284, 1487, 15159, 16, 24, 24, 20, 92, 856, 11, 892, 3363, 429, 856, 284, 220, 16, 24, 24, 20, 61, 83, 13, 5005, 31334, 10607, 1182, 1119, 279, 23606, 1447, 144336, 7, 16, 24, 24, 20, 8, 353, 320, 16, 24, 24, 20, 61, 83, 29776, 90, 83, 92, 284, 320, 16, 24, 24, 20, 61, 83, 29776, 17, 271, 50, 70206, 2176, 11067, 1447, 5415, 3108, 25, 11995, 248, 7, 16, 24, 24, 20, 8, 353, 220, 16, 24, 24, 20, 47822, 83, 61, 17, 630, 5979, 3108, 25, 220, 16, 24, 24, 20, 47822, 17, 83, 630, 12549, 220, 16, 24, 24, 20, 374, 264, 6785, 1931, 1372, 11, 582, 646, 3232, 349, 279, 505, 2700, 389, 2176, 11067, 11, 714, 1156, 11, 1077, 594, 3158, 11995, 248, 7, 16, 24, 24, 20, 8, 438, 220, 16, 24, 24, 20, 47822, 16, 14, 17, 7810, 2055, 279, 2115, 3108, 9044, 220, 16, 24, 24, 20, 47822, 16, 14, 17, 92, 353, 220, 16, 24, 24, 20, 47822, 83, 61, 17, 92, 284, 220, 16, 24, 24, 20, 47822, 83, 61, 17, 488, 220, 16, 14, 17, 630, 785, 1290, 3108, 374, 220, 16, 24, 24, 20, 47822, 17, 83, 630, 54815, 11, 2474, 279, 23092, 525, 279, 1852, 323, 6785, 11, 582, 646, 738, 279, 505, 2700, 6144, 1447, 83, 61, 17, 488, 220, 16, 14, 17, 284, 220, 17, 83, 271, 4792, 15491, 9606, 311, 259, 61, 17, 481, 220, 17, 83, 488, 220, 16, 14, 17, 284, 220, 15, 13, 88190, 11, 79151, 23606, 13, 6771, 594, 11625, 369, 259, 1447, 83, 284, 508, 17, 20287, 17946, 7, 19, 481, 220, 17, 7252, 608, 220, 17, 284, 508, 17, 20287, 17946, 7, 17, 7252, 608, 220, 17, 284, 220, 16, 20287, 320, 26888, 7, 17, 5620, 17, 692, 4416, 259, 284, 220, 16, 488, 94825, 248, 17, 5620, 17, 476, 259, 284, 220, 16, 481, 94825, 248, 17, 5620, 17, 271, 3983, 259, 572, 4512, 438, 1487, 15159, 16, 24, 24, 20, 92, 856, 13, 15277, 11, 856, 284, 220, 16, 24, 24, 20, 61, 83, 13, 2055, 279, 1378, 9904, 369, 856, 525, 1447, 87, 16, 284, 220, 16, 24, 24, 20, 47822, 16, 488, 94825, 248, 17, 5620, 17, 92, 323, 856, 17, 284, 220, 16, 24, 24, 20, 47822, 16, 481, 94825, 248, 17, 5620, 17, 630, 54815, 11, 279, 6785, 19703, 525, 856, 16, 323, 856, 17, 438, 3403, 13, 576, 3491, 17064, 369, 279, 1985, 315, 279, 6785, 19703, 11, 892, 374, 856, 16, 353, 856, 17, 382, 10061, 594, 12564, 429, 1985, 1447, 87, 16, 353, 856, 17, 284, 220, 16, 24, 24, 20, 47822, 16, 488, 94825, 248, 17, 5620, 17, 92, 353, 220, 16, 24, 24, 20, 47822, 16, 481, 94825, 248, 17, 5620, 17, 92, 284, 220, 16, 24, 24, 20, 47822, 7, 16, 488, 94825, 248, 17, 5620, 17, 488, 220, 16, 481, 94825, 248, 17, 5620, 17, 9139, 284, 220, 16, 24, 24, 20, 47822, 17, 630, 17949, 279, 505, 2700, 912, 705, 311, 220, 16, 488, 220, 16, 488, 94825, 248, 17, 5620, 17, 481, 94825, 248, 17, 5620, 17, 284, 220, 17, 13, 2055, 279, 1985, 374, 220, 16, 24, 24, 20, 52263, 13, 15277, 11, 279, 1985, 374, 220, 16, 24, 24, 20, 29456, 13, 5005, 582, 1184, 311, 1477, 279, 1537, 2326, 18509, 315, 419, 1985, 382, 4416, 279, 3491, 25271, 311, 24231, 220, 16, 24, 24, 20, 29456, 1463, 220, 16, 15, 15, 15, 13, 2938, 374, 11, 1477, 279, 1537, 2326, 18509, 315, 220, 16, 24, 24, 20, 52263, 382, 1249, 12564, 220, 16, 24, 24, 20, 29456, 1463, 220, 16, 15, 15, 15, 11, 5185, 429, 220, 16, 24, 24, 20, 1463, 220, 16, 15, 15, 15, 374, 220, 24, 24, 20, 13, 2055, 220, 16, 24, 24, 20, 284, 220, 16, 15, 15, 15, 488, 220, 24, 24, 20, 13, 15277, 11, 220, 16, 24, 24, 20, 29456, 284, 320, 16, 15, 15, 15, 488, 220, 24, 24, 20, 8, 29456, 284, 220, 16, 15, 15, 15, 29456, 488, 220, 17, 9, 16, 15, 15, 15, 9, 24, 24, 20, 488, 220, 24, 24, 20, 29456, 382, 46254, 1817, 4647, 59864, 220, 16, 15, 15, 15, 1447, 16, 15, 15, 15, 29456, 1463, 220, 16, 15, 15, 15, 284, 220, 15, 271, 17, 9, 16, 15, 15, 15, 9, 24, 24, 20, 1463, 220, 16, 15, 15, 15, 284, 320, 17, 15, 15, 15, 9, 24, 24, 20, 8, 1463, 220, 16, 15, 15, 15, 13, 8704, 220, 17, 15, 15, 15, 1463, 220, 16, 15, 15, 15, 284, 220, 15, 11, 419, 4647, 374, 1083, 220, 15, 382, 4416, 220, 16, 24, 24, 20, 29456, 1463, 220, 16, 15, 15, 15, 21103, 94, 220, 24, 24, 20, 29456, 1463, 220, 16, 15, 15, 15, 382, 54815, 11, 12564, 220, 24, 24, 20, 29456, 1463, 220, 16, 15, 15, 15, 382, 46254, 220, 24, 24, 20, 29456, 25, 220, 24, 24, 20, 9, 24, 24, 20, 13, 6771, 594, 12564, 419, 382, 9112, 429, 220, 24, 24, 20, 284, 220, 16, 15, 15, 15, 481, 220, 20, 13, 2055, 320, 16, 15, 15, 15, 481, 220, 20, 29776, 17, 284, 220, 16, 15, 15, 15, 29456, 481, 220, 17, 9, 16, 15, 15, 15, 9, 20, 488, 220, 20, 29456, 284, 220, 16, 11, 15, 15, 15, 11, 15, 15, 15, 481, 220, 16, 15, 11, 15, 15, 15, 488, 220, 17, 20, 284, 220, 24, 24, 15, 11, 15, 17, 20, 382, 54815, 11, 220, 24, 24, 20, 29456, 284, 220, 24, 24, 15, 11, 15, 17, 20, 13, 5005, 220, 24, 24, 15, 11, 15, 17, 20, 1463, 220, 16, 15, 15, 15, 374, 220, 15, 17, 20, 13, 2055, 279, 1537, 2326, 18509, 525, 220, 15, 17, 20, 382, 3983, 3783, 11, 1077, 752, 10146, 429, 13, 220, 24, 24, 15, 11, 15, 17, 20, 17779, 553, 220, 16, 15, 15, 15, 374, 220, 24, 24, 15, 448, 264, 26313, 315, 220, 17, 20, 11, 773, 9834, 11, 279, 1537, 2326, 18509, 525, 220, 15, 17, 20, 13, 15277, 11, 220, 16, 24, 24, 20, 29456, 1463, 220, 16, 15, 15, 15, 374, 220, 15, 17, 20, 382, 54815, 11, 279, 1537, 2326, 18509, 315, 279, 1985, 315, 279, 6785, 19703, 525, 220, 15, 17, 20, 382, 3983, 3783, 11, 1077, 752, 1990, 15934, 13, 10696, 358, 1865, 264, 16523, 304, 37614, 220, 24, 24, 20, 52263, 13, 6771, 594, 653, 432, 3019, 553, 3019, 1447, 24, 24, 20, 353, 220, 24, 24, 20, 1447, 5338, 11, 12564, 220, 16, 15, 15, 15, 353, 220, 16, 15, 15, 15, 284, 220, 16, 11, 15, 15, 15, 11, 15, 15, 15, 271, 3136, 2144, 220, 20, 353, 220, 16, 15, 15, 15, 284, 220, 20, 11, 15, 15, 15, 271, 3136, 2144, 220, 20, 353, 220, 16, 15, 15, 15, 284, 220, 20, 11, 15, 15, 15, 271, 2212, 220, 20, 353, 220, 20, 284, 220, 17, 20, 271, 14190, 11, 429, 594, 1667, 279, 14806, 320, 64, 481, 293, 29776, 17, 284, 264, 29456, 481, 220, 17, 370, 488, 293, 29456, 13, 2055, 320, 16, 15, 15, 15, 481, 220, 20, 29776, 17, 284, 220, 16, 15, 15, 15, 29456, 481, 220, 17, 9, 16, 15, 15, 15, 9, 20, 488, 220, 20, 29456, 284, 220, 16, 11, 15, 15, 15, 11, 15, 15, 15, 481, 220, 16, 15, 11, 15, 15, 15, 488, 220, 17, 20, 284, 220, 24, 24, 15, 11, 15, 17, 20, 13, 39970, 13, 2055, 220, 24, 24, 15, 11, 15, 17, 20, 13, 576, 1537, 2326, 18509, 525, 12824, 220, 15, 17, 20, 13, 2055, 220, 15, 17, 20, 13, 15277, 11, 279, 4226, 1265, 387, 220, 15, 17, 20, 13, 1988, 6388, 17516, 525, 5990, 537, 5326, 11, 714, 2474, 279, 3405, 17064, 369, 279, 1537, 2326, 18509, 11, 582, 1184, 311, 2924, 279, 6388, 7168, 13, 2055, 279, 1537, 2326, 18509, 525, 220, 15, 17, 20, 382, 3983, 1077, 752, 7683, 3055, 1549, 13, 82610, 358, 12564, 220, 24, 24, 20, 353, 220, 24, 24, 20, 5961, 1447, 24, 24, 20, 353, 220, 24, 24, 20, 1447, 22524, 432, 1495, 438, 320, 16, 15, 15, 15, 481, 220, 20, 2376, 16, 15, 15, 15, 481, 220, 20, 8, 284, 220, 16, 15, 15, 15, 9, 16, 15, 15, 15, 481, 220, 20, 9, 16, 15, 15, 15, 481, 220, 20, 9, 16, 15, 15, 15, 488, 220, 20, 9, 20, 284, 220, 16, 11, 15, 15, 15, 11, 15, 15, 15, 481, 220, 20, 11, 15, 15, 15, 481, 220, 20, 11, 15, 15, 15, 488, 220, 17, 20, 284, 220, 16, 11, 15, 15, 15, 11, 15, 15, 15, 481, 220, 16, 15, 11, 15, 15, 15, 488, 220, 17, 20, 284, 220, 24, 24, 15, 11, 15, 15, 15, 488, 220, 17, 20, 284, 220, 24, 24, 15, 11, 15, 17, 20, 13, 84194, 11, 429, 594, 4396, 382, 54815, 11, 220, 16, 24, 24, 20, 52263, 374, 220, 16, 24, 24, 20, 9, 16, 24, 24, 20, 13, 1988, 2474, 220, 16, 24, 24, 20, 284, 220, 17, 15, 15, 15, 481, 220, 20, 11, 7196, 12564, 320, 17, 15, 15, 15, 481, 220, 20, 29776, 17, 284, 220, 17, 15, 15, 15, 29456, 481, 220, 17, 9, 17, 15, 15, 15, 9, 20, 488, 220, 20, 29456, 284, 220, 19, 11, 15, 15, 15, 11, 15, 15, 15, 481, 220, 17, 15, 11, 15, 15, 15, 488, 220, 17, 20, 284, 220, 18, 11, 24, 23, 15, 11, 15, 17, 20, 13, 13824, 11, 429, 646, 944, 387, 13, 13824, 11, 220, 17, 15, 15, 15, 29456, 374, 220, 19, 11, 15, 15, 15, 11, 15, 15, 15, 11, 27283, 220, 17, 9, 17, 15, 15, 15, 9, 20, 284, 220, 17, 15, 11, 15, 15, 15, 11, 773, 220, 19, 11, 15, 15, 15, 11, 15, 15, 15, 481, 220, 17, 15, 11, 15, 15, 15, 284, 220, 18, 11, 24, 23, 15, 11, 15, 15, 15, 11, 5519, 220, 17, 20, 374, 220, 18, 11, 24, 23, 15, 11, 15, 17, 20, 13, 2055, 220, 16, 24, 24, 20, 29456, 374, 220, 18, 11, 24, 23, 15, 11, 15, 17, 20, 13, 5005, 279, 1537, 2326, 18509, 525, 220, 15, 17, 20, 13, 2055, 429, 594, 4396, 13, 15277, 11, 279, 1537, 2326, 18509, 525, 220, 15, 17, 20, 382, 54815, 11, 279, 4226, 374, 220, 15, 17, 20, 11, 892, 304, 73664, 1352, 374, 1124, 79075, 90, 15, 17, 20, 92, 382, 3983, 3783, 11, 3331, 389, 13, 6771, 752, 1779, 421, 279, 3491, 374, 12824, 10161, 369, 279, 1985, 315, 279, 6785, 19703, 13, 758, 279, 4024, 23606, 11, 582, 1730, 1378, 6785, 19703, 11, 856, 16, 323, 856, 17, 11, 6693, 1985, 374, 220, 16, 24, 24, 20, 29456, 13, 15277, 11, 862, 1985, 374, 220, 16, 24, 24, 20, 29456, 11, 6693, 1537, 2326, 18509, 525, 220, 15, 17, 20, 11, 438, 582, 1730, 13, 2055, 279, 4226, 374, 220, 15, 17, 20, 13, 1988, 304, 1045, 37597, 11, 979, 4588, 369, 279, 1537, 2326, 18509, 11, 6388, 17516, 525, 5230, 11, 773, 220, 15, 17, 20, 374, 4396, 13, 4354, 11, 7025, 807, 2578, 3270, 432, 438, 220, 17, 20, 11, 714, 2474, 432, 594, 2326, 18509, 11, 220, 15, 17, 20, 374, 8311, 13, 4710, 14190, 11, 714, 1077, 752, 1779, 3055, 1549, 279, 3491, 5114, 25, 330, 9885, 279, 1537, 2326, 18509, 315, 279, 1985, 315, 279, 6785, 19703, 21215, 2055, 9834, 11, 279, 1537, 2326, 18509, 13, 15277, 11, 220, 15, 17, 20, 374, 279, 4396, 4226, 13, 15277, 11, 279, 1590, 4226, 374, 1124, 79075, 90, 15, 17, 20, 92, 382, 334, 19357, 21806, 1019, 59, 79075, 90, 15, 17, 20, 92, 151645, 198]
inputs:
<|im_start|>system
You are a helpful assistant.<|im_end|>
<|im_start|>user
Find the last three digits of the product of the positive roots of $\sqrt{1995}x^{\log_{1995}x}=x^2.$<|im_end|>
<|im_start|>assistant
Okay, so I need to find the last three digits of the product of the positive roots of the equation √(1995) * x^(log_{1995} x) = x². Hmm, let's see. First, let me try to understand the equation and figure out how to solve it. 

The equation is given as √(1995) * x^(log_{1995} x) = x². That looks a bit complicated with the logarithm in the exponent. Maybe I can take logarithms on both sides to simplify it? Or perhaps rewrite the equation using properties of exponents and logarithms. 

Let me recall that log_b a = (ln a)/(ln b), so log_{1995} x is equal to (ln x)/(ln 1995). Also, x raised to log_{1995} x can be rewritten using exponentials. Wait, maybe I can express x^(log_{1995} x) as e^{(ln x) * (log_{1995} x)}. But that might not be helpful. Let me think differently.

Alternatively, since the equation has x in the exponent and also x squared, maybe substituting t = log_{1995} x would help. Let me try that. Let’s set t = log_{1995} x, which means that x = 1995^t. Then substituting back into the equation:

√(1995) * (1995^t)^{t} = (1995^t)^2

Simplify both sides:

Left side: √(1995) * 1995^{t^2}

Right side: 1995^{2t}

Since 1995 is a positive real number, we can equate the exponents on both sides, but first, let's express √(1995) as 1995^{1/2}. So the left side becomes 1995^{1/2} * 1995^{t^2} = 1995^{t^2 + 1/2}

The right side is 1995^{2t}

Therefore, since the bases are the same and positive, we can set the exponents equal:

t^2 + 1/2 = 2t

That simplifies to t^2 - 2t + 1/2 = 0. Hmm, quadratic equation. Let's solve for t:

t = [2 ± sqrt(4 - 2)] / 2 = [2 ± sqrt(2)] / 2 = 1 ± (sqrt(2)/2)

So t = 1 + (√2)/2 or t = 1 - (√2)/2

But t was defined as log_{1995} x. Therefore, x = 1995^t. So the two solutions for x are:

x1 = 1995^{1 + (√2)/2} and x2 = 1995^{1 - (√2)/2}

Therefore, the positive roots are x1 and x2 as above. The problem asks for the product of the positive roots, which is x1 * x2.

Let's compute that product:

x1 * x2 = 1995^{1 + (√2)/2} * 1995^{1 - (√2)/2} = 1995^{(1 + (√2)/2 + 1 - (√2)/2)} = 1995^{2}

Because the exponents add up to 1 + 1 + (√2)/2 - (√2)/2 = 2. So the product is 1995 squared. Therefore, the product is 1995². Then we need to find the last three digits of this product.

So the problem reduces to computing 1995² mod 1000. That is, find the last three digits of 1995 squared.

To compute 1995² mod 1000, note that 1995 mod 1000 is 995. So 1995 = 1000 + 995. Therefore, 1995² = (1000 + 995)² = 1000² + 2*1000*995 + 995².

Compute each term modulo 1000:

1000² mod 1000 = 0

2*1000*995 mod 1000 = (2000*995) mod 1000. Since 2000 mod 1000 = 0, this term is also 0.

So 1995² mod 1000 ≡ 995² mod 1000.

Therefore, compute 995² mod 1000.

Compute 995²: 995*995. Let's compute this.

Note that 995 = 1000 - 5. So (1000 - 5)^2 = 1000² - 2*1000*5 + 5² = 1,000,000 - 10,000 + 25 = 990,025.

Therefore, 995² = 990,025. Then 990,025 mod 1000 is 025. So the last three digits are 025.

But wait, let me verify that. 990,025 divided by 1000 is 990 with a remainder of 25, so yes, the last three digits are 025. Therefore, 1995² mod 1000 is 025.

Therefore, the last three digits of the product of the positive roots are 025.

But wait, let me double-check. Maybe I made a mistake in calculating 995 squared. Let's do it step by step:

995 * 995:

First, compute 1000 * 1000 = 1,000,000

Subtract 5 * 1000 = 5,000

Subtract 5 * 1000 = 5,000

Add 5 * 5 = 25

Wait, that's using the formula (a - b)^2 = a² - 2ab + b². So (1000 - 5)^2 = 1000² - 2*1000*5 + 5² = 1,000,000 - 10,000 + 25 = 990,025. Correct. So 990,025. The last three digits are indeed 025. So 025. Therefore, the answer should be 025. But leading zeros are usually not written, but since the question asks for the last three digits, we need to include the leading zero. So the last three digits are 025.

But let me confirm once again. Suppose I compute 995 * 995 directly:

995 * 995:

Break it down as (1000 - 5)(1000 - 5) = 1000*1000 - 5*1000 - 5*1000 + 5*5 = 1,000,000 - 5,000 - 5,000 + 25 = 1,000,000 - 10,000 + 25 = 990,000 + 25 = 990,025. Yep, that's correct.

Therefore, 1995 squared is 1995*1995. But since 1995 = 2000 - 5, maybe compute (2000 - 5)^2 = 2000² - 2*2000*5 + 5² = 4,000,000 - 20,000 + 25 = 3,980,025. Wait, that can't be. Wait, 2000² is 4,000,000, minus 2*2000*5 = 20,000, so 4,000,000 - 20,000 = 3,980,000, plus 25 is 3,980,025. So 1995² is 3,980,025. Then the last three digits are 025. So that's correct. Therefore, the last three digits are 025.

Therefore, the answer is 025, which in boxed form is \boxed{025}.

But wait, hold on. Let me check if the problem is indeed asking for the product of the positive roots. In the original equation, we found two positive roots, x1 and x2, whose product is 1995². Therefore, their product is 1995², whose last three digits are 025, as we found. So the answer is 025. But in some contexts, when asked for the last three digits, leading zeros are included, so 025 is correct. However, sometimes they might write it as 25, but since it's three digits, 025 is appropriate. 

Wait, but let me check once again the problem statement: "Find the last three digits of the product of the positive roots..." So yes, the last three digits. Therefore, 025 is the correct answer. Therefore, the final answer is \boxed{025}.

**Final Answer**
\boxed{025}<|im_end|>

label_ids:
[-100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, 32313, 11, 773, 358, 1184, 311, 1477, 279, 1537, 2326, 18509, 315, 279, 1985, 315, 279, 6785, 19703, 315, 279, 23606, 11995, 248, 7, 16, 24, 24, 20, 8, 353, 856, 13268, 839, 15159, 16, 24, 24, 20, 92, 856, 8, 284, 856, 29456, 13, 88190, 11, 1077, 594, 1490, 13, 5512, 11, 1077, 752, 1430, 311, 3535, 279, 23606, 323, 7071, 700, 1246, 311, 11625, 432, 13, 4710, 785, 23606, 374, 2661, 438, 11995, 248, 7, 16, 24, 24, 20, 8, 353, 856, 13268, 839, 15159, 16, 24, 24, 20, 92, 856, 8, 284, 856, 29456, 13, 2938, 5868, 264, 2699, 16965, 448, 279, 89936, 76, 304, 279, 27690, 13, 10696, 358, 646, 1896, 89936, 1011, 389, 2176, 11067, 311, 39721, 432, 30, 2521, 8365, 18130, 279, 23606, 1667, 5888, 315, 505, 2700, 323, 89936, 1011, 13, 4710, 10061, 752, 19091, 429, 1487, 880, 264, 284, 320, 2261, 264, 24254, 2261, 293, 701, 773, 1487, 15159, 16, 24, 24, 20, 92, 856, 374, 6144, 311, 320, 2261, 856, 24254, 2261, 220, 16, 24, 24, 20, 568, 7281, 11, 856, 9226, 311, 1487, 15159, 16, 24, 24, 20, 92, 856, 646, 387, 58524, 1667, 27690, 10309, 13, 13824, 11, 7196, 358, 646, 3158, 856, 13268, 839, 15159, 16, 24, 24, 20, 92, 856, 8, 438, 384, 47822, 7, 2261, 856, 8, 353, 320, 839, 15159, 16, 24, 24, 20, 92, 856, 96351, 1988, 429, 2578, 537, 387, 10950, 13, 6771, 752, 1744, 21303, 382, 92014, 11, 2474, 279, 23606, 702, 856, 304, 279, 27690, 323, 1083, 856, 52263, 11, 7196, 31334, 10607, 259, 284, 1487, 15159, 16, 24, 24, 20, 92, 856, 1035, 1492, 13, 6771, 752, 1430, 429, 13, 6771, 748, 738, 259, 284, 1487, 15159, 16, 24, 24, 20, 92, 856, 11, 892, 3363, 429, 856, 284, 220, 16, 24, 24, 20, 61, 83, 13, 5005, 31334, 10607, 1182, 1119, 279, 23606, 1447, 144336, 7, 16, 24, 24, 20, 8, 353, 320, 16, 24, 24, 20, 61, 83, 29776, 90, 83, 92, 284, 320, 16, 24, 24, 20, 61, 83, 29776, 17, 271, 50, 70206, 2176, 11067, 1447, 5415, 3108, 25, 11995, 248, 7, 16, 24, 24, 20, 8, 353, 220, 16, 24, 24, 20, 47822, 83, 61, 17, 630, 5979, 3108, 25, 220, 16, 24, 24, 20, 47822, 17, 83, 630, 12549, 220, 16, 24, 24, 20, 374, 264, 6785, 1931, 1372, 11, 582, 646, 3232, 349, 279, 505, 2700, 389, 2176, 11067, 11, 714, 1156, 11, 1077, 594, 3158, 11995, 248, 7, 16, 24, 24, 20, 8, 438, 220, 16, 24, 24, 20, 47822, 16, 14, 17, 7810, 2055, 279, 2115, 3108, 9044, 220, 16, 24, 24, 20, 47822, 16, 14, 17, 92, 353, 220, 16, 24, 24, 20, 47822, 83, 61, 17, 92, 284, 220, 16, 24, 24, 20, 47822, 83, 61, 17, 488, 220, 16, 14, 17, 630, 785, 1290, 3108, 374, 220, 16, 24, 24, 20, 47822, 17, 83, 630, 54815, 11, 2474, 279, 23092, 525, 279, 1852, 323, 6785, 11, 582, 646, 738, 279, 505, 2700, 6144, 1447, 83, 61, 17, 488, 220, 16, 14, 17, 284, 220, 17, 83, 271, 4792, 15491, 9606, 311, 259, 61, 17, 481, 220, 17, 83, 488, 220, 16, 14, 17, 284, 220, 15, 13, 88190, 11, 79151, 23606, 13, 6771, 594, 11625, 369, 259, 1447, 83, 284, 508, 17, 20287, 17946, 7, 19, 481, 220, 17, 7252, 608, 220, 17, 284, 508, 17, 20287, 17946, 7, 17, 7252, 608, 220, 17, 284, 220, 16, 20287, 320, 26888, 7, 17, 5620, 17, 692, 4416, 259, 284, 220, 16, 488, 94825, 248, 17, 5620, 17, 476, 259, 284, 220, 16, 481, 94825, 248, 17, 5620, 17, 271, 3983, 259, 572, 4512, 438, 1487, 15159, 16, 24, 24, 20, 92, 856, 13, 15277, 11, 856, 284, 220, 16, 24, 24, 20, 61, 83, 13, 2055, 279, 1378, 9904, 369, 856, 525, 1447, 87, 16, 284, 220, 16, 24, 24, 20, 47822, 16, 488, 94825, 248, 17, 5620, 17, 92, 323, 856, 17, 284, 220, 16, 24, 24, 20, 47822, 16, 481, 94825, 248, 17, 5620, 17, 630, 54815, 11, 279, 6785, 19703, 525, 856, 16, 323, 856, 17, 438, 3403, 13, 576, 3491, 17064, 369, 279, 1985, 315, 279, 6785, 19703, 11, 892, 374, 856, 16, 353, 856, 17, 382, 10061, 594, 12564, 429, 1985, 1447, 87, 16, 353, 856, 17, 284, 220, 16, 24, 24, 20, 47822, 16, 488, 94825, 248, 17, 5620, 17, 92, 353, 220, 16, 24, 24, 20, 47822, 16, 481, 94825, 248, 17, 5620, 17, 92, 284, 220, 16, 24, 24, 20, 47822, 7, 16, 488, 94825, 248, 17, 5620, 17, 488, 220, 16, 481, 94825, 248, 17, 5620, 17, 9139, 284, 220, 16, 24, 24, 20, 47822, 17, 630, 17949, 279, 505, 2700, 912, 705, 311, 220, 16, 488, 220, 16, 488, 94825, 248, 17, 5620, 17, 481, 94825, 248, 17, 5620, 17, 284, 220, 17, 13, 2055, 279, 1985, 374, 220, 16, 24, 24, 20, 52263, 13, 15277, 11, 279, 1985, 374, 220, 16, 24, 24, 20, 29456, 13, 5005, 582, 1184, 311, 1477, 279, 1537, 2326, 18509, 315, 419, 1985, 382, 4416, 279, 3491, 25271, 311, 24231, 220, 16, 24, 24, 20, 29456, 1463, 220, 16, 15, 15, 15, 13, 2938, 374, 11, 1477, 279, 1537, 2326, 18509, 315, 220, 16, 24, 24, 20, 52263, 382, 1249, 12564, 220, 16, 24, 24, 20, 29456, 1463, 220, 16, 15, 15, 15, 11, 5185, 429, 220, 16, 24, 24, 20, 1463, 220, 16, 15, 15, 15, 374, 220, 24, 24, 20, 13, 2055, 220, 16, 24, 24, 20, 284, 220, 16, 15, 15, 15, 488, 220, 24, 24, 20, 13, 15277, 11, 220, 16, 24, 24, 20, 29456, 284, 320, 16, 15, 15, 15, 488, 220, 24, 24, 20, 8, 29456, 284, 220, 16, 15, 15, 15, 29456, 488, 220, 17, 9, 16, 15, 15, 15, 9, 24, 24, 20, 488, 220, 24, 24, 20, 29456, 382, 46254, 1817, 4647, 59864, 220, 16, 15, 15, 15, 1447, 16, 15, 15, 15, 29456, 1463, 220, 16, 15, 15, 15, 284, 220, 15, 271, 17, 9, 16, 15, 15, 15, 9, 24, 24, 20, 1463, 220, 16, 15, 15, 15, 284, 320, 17, 15, 15, 15, 9, 24, 24, 20, 8, 1463, 220, 16, 15, 15, 15, 13, 8704, 220, 17, 15, 15, 15, 1463, 220, 16, 15, 15, 15, 284, 220, 15, 11, 419, 4647, 374, 1083, 220, 15, 382, 4416, 220, 16, 24, 24, 20, 29456, 1463, 220, 16, 15, 15, 15, 21103, 94, 220, 24, 24, 20, 29456, 1463, 220, 16, 15, 15, 15, 382, 54815, 11, 12564, 220, 24, 24, 20, 29456, 1463, 220, 16, 15, 15, 15, 382, 46254, 220, 24, 24, 20, 29456, 25, 220, 24, 24, 20, 9, 24, 24, 20, 13, 6771, 594, 12564, 419, 382, 9112, 429, 220, 24, 24, 20, 284, 220, 16, 15, 15, 15, 481, 220, 20, 13, 2055, 320, 16, 15, 15, 15, 481, 220, 20, 29776, 17, 284, 220, 16, 15, 15, 15, 29456, 481, 220, 17, 9, 16, 15, 15, 15, 9, 20, 488, 220, 20, 29456, 284, 220, 16, 11, 15, 15, 15, 11, 15, 15, 15, 481, 220, 16, 15, 11, 15, 15, 15, 488, 220, 17, 20, 284, 220, 24, 24, 15, 11, 15, 17, 20, 382, 54815, 11, 220, 24, 24, 20, 29456, 284, 220, 24, 24, 15, 11, 15, 17, 20, 13, 5005, 220, 24, 24, 15, 11, 15, 17, 20, 1463, 220, 16, 15, 15, 15, 374, 220, 15, 17, 20, 13, 2055, 279, 1537, 2326, 18509, 525, 220, 15, 17, 20, 382, 3983, 3783, 11, 1077, 752, 10146, 429, 13, 220, 24, 24, 15, 11, 15, 17, 20, 17779, 553, 220, 16, 15, 15, 15, 374, 220, 24, 24, 15, 448, 264, 26313, 315, 220, 17, 20, 11, 773, 9834, 11, 279, 1537, 2326, 18509, 525, 220, 15, 17, 20, 13, 15277, 11, 220, 16, 24, 24, 20, 29456, 1463, 220, 16, 15, 15, 15, 374, 220, 15, 17, 20, 382, 54815, 11, 279, 1537, 2326, 18509, 315, 279, 1985, 315, 279, 6785, 19703, 525, 220, 15, 17, 20, 382, 3983, 3783, 11, 1077, 752, 1990, 15934, 13, 10696, 358, 1865, 264, 16523, 304, 37614, 220, 24, 24, 20, 52263, 13, 6771, 594, 653, 432, 3019, 553, 3019, 1447, 24, 24, 20, 353, 220, 24, 24, 20, 1447, 5338, 11, 12564, 220, 16, 15, 15, 15, 353, 220, 16, 15, 15, 15, 284, 220, 16, 11, 15, 15, 15, 11, 15, 15, 15, 271, 3136, 2144, 220, 20, 353, 220, 16, 15, 15, 15, 284, 220, 20, 11, 15, 15, 15, 271, 3136, 2144, 220, 20, 353, 220, 16, 15, 15, 15, 284, 220, 20, 11, 15, 15, 15, 271, 2212, 220, 20, 353, 220, 20, 284, 220, 17, 20, 271, 14190, 11, 429, 594, 1667, 279, 14806, 320, 64, 481, 293, 29776, 17, 284, 264, 29456, 481, 220, 17, 370, 488, 293, 29456, 13, 2055, 320, 16, 15, 15, 15, 481, 220, 20, 29776, 17, 284, 220, 16, 15, 15, 15, 29456, 481, 220, 17, 9, 16, 15, 15, 15, 9, 20, 488, 220, 20, 29456, 284, 220, 16, 11, 15, 15, 15, 11, 15, 15, 15, 481, 220, 16, 15, 11, 15, 15, 15, 488, 220, 17, 20, 284, 220, 24, 24, 15, 11, 15, 17, 20, 13, 39970, 13, 2055, 220, 24, 24, 15, 11, 15, 17, 20, 13, 576, 1537, 2326, 18509, 525, 12824, 220, 15, 17, 20, 13, 2055, 220, 15, 17, 20, 13, 15277, 11, 279, 4226, 1265, 387, 220, 15, 17, 20, 13, 1988, 6388, 17516, 525, 5990, 537, 5326, 11, 714, 2474, 279, 3405, 17064, 369, 279, 1537, 2326, 18509, 11, 582, 1184, 311, 2924, 279, 6388, 7168, 13, 2055, 279, 1537, 2326, 18509, 525, 220, 15, 17, 20, 382, 3983, 1077, 752, 7683, 3055, 1549, 13, 82610, 358, 12564, 220, 24, 24, 20, 353, 220, 24, 24, 20, 5961, 1447, 24, 24, 20, 353, 220, 24, 24, 20, 1447, 22524, 432, 1495, 438, 320, 16, 15, 15, 15, 481, 220, 20, 2376, 16, 15, 15, 15, 481, 220, 20, 8, 284, 220, 16, 15, 15, 15, 9, 16, 15, 15, 15, 481, 220, 20, 9, 16, 15, 15, 15, 481, 220, 20, 9, 16, 15, 15, 15, 488, 220, 20, 9, 20, 284, 220, 16, 11, 15, 15, 15, 11, 15, 15, 15, 481, 220, 20, 11, 15, 15, 15, 481, 220, 20, 11, 15, 15, 15, 488, 220, 17, 20, 284, 220, 16, 11, 15, 15, 15, 11, 15, 15, 15, 481, 220, 16, 15, 11, 15, 15, 15, 488, 220, 17, 20, 284, 220, 24, 24, 15, 11, 15, 15, 15, 488, 220, 17, 20, 284, 220, 24, 24, 15, 11, 15, 17, 20, 13, 84194, 11, 429, 594, 4396, 382, 54815, 11, 220, 16, 24, 24, 20, 52263, 374, 220, 16, 24, 24, 20, 9, 16, 24, 24, 20, 13, 1988, 2474, 220, 16, 24, 24, 20, 284, 220, 17, 15, 15, 15, 481, 220, 20, 11, 7196, 12564, 320, 17, 15, 15, 15, 481, 220, 20, 29776, 17, 284, 220, 17, 15, 15, 15, 29456, 481, 220, 17, 9, 17, 15, 15, 15, 9, 20, 488, 220, 20, 29456, 284, 220, 19, 11, 15, 15, 15, 11, 15, 15, 15, 481, 220, 17, 15, 11, 15, 15, 15, 488, 220, 17, 20, 284, 220, 18, 11, 24, 23, 15, 11, 15, 17, 20, 13, 13824, 11, 429, 646, 944, 387, 13, 13824, 11, 220, 17, 15, 15, 15, 29456, 374, 220, 19, 11, 15, 15, 15, 11, 15, 15, 15, 11, 27283, 220, 17, 9, 17, 15, 15, 15, 9, 20, 284, 220, 17, 15, 11, 15, 15, 15, 11, 773, 220, 19, 11, 15, 15, 15, 11, 15, 15, 15, 481, 220, 17, 15, 11, 15, 15, 15, 284, 220, 18, 11, 24, 23, 15, 11, 15, 15, 15, 11, 5519, 220, 17, 20, 374, 220, 18, 11, 24, 23, 15, 11, 15, 17, 20, 13, 2055, 220, 16, 24, 24, 20, 29456, 374, 220, 18, 11, 24, 23, 15, 11, 15, 17, 20, 13, 5005, 279, 1537, 2326, 18509, 525, 220, 15, 17, 20, 13, 2055, 429, 594, 4396, 13, 15277, 11, 279, 1537, 2326, 18509, 525, 220, 15, 17, 20, 382, 54815, 11, 279, 4226, 374, 220, 15, 17, 20, 11, 892, 304, 73664, 1352, 374, 1124, 79075, 90, 15, 17, 20, 92, 382, 3983, 3783, 11, 3331, 389, 13, 6771, 752, 1779, 421, 279, 3491, 374, 12824, 10161, 369, 279, 1985, 315, 279, 6785, 19703, 13, 758, 279, 4024, 23606, 11, 582, 1730, 1378, 6785, 19703, 11, 856, 16, 323, 856, 17, 11, 6693, 1985, 374, 220, 16, 24, 24, 20, 29456, 13, 15277, 11, 862, 1985, 374, 220, 16, 24, 24, 20, 29456, 11, 6693, 1537, 2326, 18509, 525, 220, 15, 17, 20, 11, 438, 582, 1730, 13, 2055, 279, 4226, 374, 220, 15, 17, 20, 13, 1988, 304, 1045, 37597, 11, 979, 4588, 369, 279, 1537, 2326, 18509, 11, 6388, 17516, 525, 5230, 11, 773, 220, 15, 17, 20, 374, 4396, 13, 4354, 11, 7025, 807, 2578, 3270, 432, 438, 220, 17, 20, 11, 714, 2474, 432, 594, 2326, 18509, 11, 220, 15, 17, 20, 374, 8311, 13, 4710, 14190, 11, 714, 1077, 752, 1779, 3055, 1549, 279, 3491, 5114, 25, 330, 9885, 279, 1537, 2326, 18509, 315, 279, 1985, 315, 279, 6785, 19703, 21215, 2055, 9834, 11, 279, 1537, 2326, 18509, 13, 15277, 11, 220, 15, 17, 20, 374, 279, 4396, 4226, 13, 15277, 11, 279, 1590, 4226, 374, 1124, 79075, 90, 15, 17, 20, 92, 382, 334, 19357, 21806, 1019, 59, 79075, 90, 15, 17, 20, 92, 151645, 198]
labels:
Okay, so I need to find the last three digits of the product of the positive roots of the equation √(1995) * x^(log_{1995} x) = x². Hmm, let's see. First, let me try to understand the equation and figure out how to solve it. 

The equation is given as √(1995) * x^(log_{1995} x) = x². That looks a bit complicated with the logarithm in the exponent. Maybe I can take logarithms on both sides to simplify it? Or perhaps rewrite the equation using properties of exponents and logarithms. 

Let me recall that log_b a = (ln a)/(ln b), so log_{1995} x is equal to (ln x)/(ln 1995). Also, x raised to log_{1995} x can be rewritten using exponentials. Wait, maybe I can express x^(log_{1995} x) as e^{(ln x) * (log_{1995} x)}. But that might not be helpful. Let me think differently.

Alternatively, since the equation has x in the exponent and also x squared, maybe substituting t = log_{1995} x would help. Let me try that. Let’s set t = log_{1995} x, which means that x = 1995^t. Then substituting back into the equation:

√(1995) * (1995^t)^{t} = (1995^t)^2

Simplify both sides:

Left side: √(1995) * 1995^{t^2}

Right side: 1995^{2t}

Since 1995 is a positive real number, we can equate the exponents on both sides, but first, let's express √(1995) as 1995^{1/2}. So the left side becomes 1995^{1/2} * 1995^{t^2} = 1995^{t^2 + 1/2}

The right side is 1995^{2t}

Therefore, since the bases are the same and positive, we can set the exponents equal:

t^2 + 1/2 = 2t

That simplifies to t^2 - 2t + 1/2 = 0. Hmm, quadratic equation. Let's solve for t:

t = [2 ± sqrt(4 - 2)] / 2 = [2 ± sqrt(2)] / 2 = 1 ± (sqrt(2)/2)

So t = 1 + (√2)/2 or t = 1 - (√2)/2

But t was defined as log_{1995} x. Therefore, x = 1995^t. So the two solutions for x are:

x1 = 1995^{1 + (√2)/2} and x2 = 1995^{1 - (√2)/2}

Therefore, the positive roots are x1 and x2 as above. The problem asks for the product of the positive roots, which is x1 * x2.

Let's compute that product:

x1 * x2 = 1995^{1 + (√2)/2} * 1995^{1 - (√2)/2} = 1995^{(1 + (√2)/2 + 1 - (√2)/2)} = 1995^{2}

Because the exponents add up to 1 + 1 + (√2)/2 - (√2)/2 = 2. So the product is 1995 squared. Therefore, the product is 1995². Then we need to find the last three digits of this product.

So the problem reduces to computing 1995² mod 1000. That is, find the last three digits of 1995 squared.

To compute 1995² mod 1000, note that 1995 mod 1000 is 995. So 1995 = 1000 + 995. Therefore, 1995² = (1000 + 995)² = 1000² + 2*1000*995 + 995².

Compute each term modulo 1000:

1000² mod 1000 = 0

2*1000*995 mod 1000 = (2000*995) mod 1000. Since 2000 mod 1000 = 0, this term is also 0.

So 1995² mod 1000 ≡ 995² mod 1000.

Therefore, compute 995² mod 1000.

Compute 995²: 995*995. Let's compute this.

Note that 995 = 1000 - 5. So (1000 - 5)^2 = 1000² - 2*1000*5 + 5² = 1,000,000 - 10,000 + 25 = 990,025.

Therefore, 995² = 990,025. Then 990,025 mod 1000 is 025. So the last three digits are 025.

But wait, let me verify that. 990,025 divided by 1000 is 990 with a remainder of 25, so yes, the last three digits are 025. Therefore, 1995² mod 1000 is 025.

Therefore, the last three digits of the product of the positive roots are 025.

But wait, let me double-check. Maybe I made a mistake in calculating 995 squared. Let's do it step by step:

995 * 995:

First, compute 1000 * 1000 = 1,000,000

Subtract 5 * 1000 = 5,000

Subtract 5 * 1000 = 5,000

Add 5 * 5 = 25

Wait, that's using the formula (a - b)^2 = a² - 2ab + b². So (1000 - 5)^2 = 1000² - 2*1000*5 + 5² = 1,000,000 - 10,000 + 25 = 990,025. Correct. So 990,025. The last three digits are indeed 025. So 025. Therefore, the answer should be 025. But leading zeros are usually not written, but since the question asks for the last three digits, we need to include the leading zero. So the last three digits are 025.

But let me confirm once again. Suppose I compute 995 * 995 directly:

995 * 995:

Break it down as (1000 - 5)(1000 - 5) = 1000*1000 - 5*1000 - 5*1000 + 5*5 = 1,000,000 - 5,000 - 5,000 + 25 = 1,000,000 - 10,000 + 25 = 990,000 + 25 = 990,025. Yep, that's correct.

Therefore, 1995 squared is 1995*1995. But since 1995 = 2000 - 5, maybe compute (2000 - 5)^2 = 2000² - 2*2000*5 + 5² = 4,000,000 - 20,000 + 25 = 3,980,025. Wait, that can't be. Wait, 2000² is 4,000,000, minus 2*2000*5 = 20,000, so 4,000,000 - 20,000 = 3,980,000, plus 25 is 3,980,025. So 1995² is 3,980,025. Then the last three digits are 025. So that's correct. Therefore, the last three digits are 025.

Therefore, the answer is 025, which in boxed form is \boxed{025}.

But wait, hold on. Let me check if the problem is indeed asking for the product of the positive roots. In the original equation, we found two positive roots, x1 and x2, whose product is 1995². Therefore, their product is 1995², whose last three digits are 025, as we found. So the answer is 025. But in some contexts, when asked for the last three digits, leading zeros are included, so 025 is correct. However, sometimes they might write it as 25, but since it's three digits, 025 is appropriate. 

Wait, but let me check once again the problem statement: "Find the last three digits of the product of the positive roots..." So yes, the last three digits. Therefore, 025 is the correct answer. Therefore, the final answer is \boxed{025}.

**Final Answer**
\boxed{025}<|im_end|>

[INFO|configuration_utils.py:697] 2025-06-02 06:53:50,097 >> loading configuration file /shared-aig/machaita/models/Qwen/Qwen2.5-32B-Instruct/config.json
[INFO|configuration_utils.py:771] 2025-06-02 06:53:50,098 >> Model config Qwen2Config {
  "_name_or_path": "/shared-aig/machaita/models/Qwen/Qwen2.5-32B-Instruct",
  "architectures": [
    "Qwen2ForCausalLM"
  ],
  "attention_dropout": 0.0,
  "bos_token_id": 151643,
  "eos_token_id": 151645,
  "hidden_act": "silu",
  "hidden_size": 5120,
  "initializer_range": 0.02,
  "intermediate_size": 27648,
  "max_position_embeddings": 32768,
  "max_window_layers": 70,
  "model_type": "qwen2",
  "num_attention_heads": 40,
  "num_hidden_layers": 64,
  "num_key_value_heads": 8,
  "rms_norm_eps": 1e-06,
  "rope_scaling": null,
  "rope_theta": 1000000.0,
  "sliding_window": 131072,
  "tie_word_embeddings": false,
  "torch_dtype": "bfloat16",
  "transformers_version": "4.49.0",
  "use_cache": true,
  "use_sliding_window": false,
  "vocab_size": 152064
}

[INFO|modeling_utils.py:3979] 2025-06-02 06:53:50,266 >> loading weights file /shared-aig/machaita/models/Qwen/Qwen2.5-32B-Instruct/model.safetensors.index.json
[INFO|modeling_utils.py:4162] 2025-06-02 06:53:50,284 >> Detected DeepSpeed ZeRO-3: activating zero.init() for this model
[2025-06-02 06:53:50,285] [INFO] [config.py:733:__init__] Config mesh_device None world_size = 8
[WARNING|logging.py:329] 2025-06-02 06:53:50,288 >> You are attempting to use Flash Attention 2.0 without specifying a torch dtype. This might lead to unexpected behaviour
[WARNING|logging.py:329] 2025-06-02 06:53:50,290 >> You are attempting to use Flash Attention 2.0 with a model not initialized on GPU. Make sure to move the model to GPU after initializing it on CPU with `model.to('cuda')`.
[INFO|configuration_utils.py:1140] 2025-06-02 06:53:50,300 >> Generate config GenerationConfig {
  "bos_token_id": 151643,
  "eos_token_id": 151645,
  "use_cache": false
}

[2025-06-02 06:53:50,423] [INFO] [config.py:733:__init__] Config mesh_device None world_size = 8
You are attempting to use Flash Attention 2.0 without specifying a torch dtype. This might lead to unexpected behaviour
You are attempting to use Flash Attention 2.0 with a model not initialized on GPU. Make sure to move the model to GPU after initializing it on CPU with `model.to('cuda')`.
[2025-06-02 06:53:50,468] [INFO] [config.py:733:__init__] Config mesh_device None world_size = 8
[2025-06-02 06:53:50,468] [INFO] [config.py:733:__init__] Config mesh_device None world_size = 8
You are attempting to use Flash Attention 2.0 without specifying a torch dtype. This might lead to unexpected behaviour
You are attempting to use Flash Attention 2.0 with a model not initialized on GPU. Make sure to move the model to GPU after initializing it on CPU with `model.to('cuda')`.
You are attempting to use Flash Attention 2.0 without specifying a torch dtype. This might lead to unexpected behaviour
You are attempting to use Flash Attention 2.0 with a model not initialized on GPU. Make sure to move the model to GPU after initializing it on CPU with `model.to('cuda')`.
[2025-06-02 06:53:50,475] [INFO] [config.py:733:__init__] Config mesh_device None world_size = 8
You are attempting to use Flash Attention 2.0 without specifying a torch dtype. This might lead to unexpected behaviour
You are attempting to use Flash Attention 2.0 with a model not initialized on GPU. Make sure to move the model to GPU after initializing it on CPU with `model.to('cuda')`.
[2025-06-02 06:53:50,505] [INFO] [config.py:733:__init__] Config mesh_device None world_size = 8
[2025-06-02 06:53:50,506] [INFO] [config.py:733:__init__] Config mesh_device None world_size = 8
You are attempting to use Flash Attention 2.0 without specifying a torch dtype. This might lead to unexpected behaviour
You are attempting to use Flash Attention 2.0 with a model not initialized on GPU. Make sure to move the model to GPU after initializing it on CPU with `model.to('cuda')`.
You are attempting to use Flash Attention 2.0 without specifying a torch dtype. This might lead to unexpected behaviour
You are attempting to use Flash Attention 2.0 with a model not initialized on GPU. Make sure to move the model to GPU after initializing it on CPU with `model.to('cuda')`.
[2025-06-02 06:53:50,514] [INFO] [config.py:733:__init__] Config mesh_device None world_size = 8
You are attempting to use Flash Attention 2.0 without specifying a torch dtype. This might lead to unexpected behaviour
You are attempting to use Flash Attention 2.0 with a model not initialized on GPU. Make sure to move the model to GPU after initializing it on CPU with `model.to('cuda')`.
[2025-06-02 06:53:50,635] [INFO] [partition_parameters.py:348:__exit__] finished initializing model - num_params = 771, num_elems = 32.76B
Loading checkpoint shards:   0%|          | 0/17 [00:00<?, ?it/s]Loading checkpoint shards:   0%|          | 0/17 [00:00<?, ?it/s]Loading checkpoint shards:   0%|          | 0/17 [00:00<?, ?it/s]Loading checkpoint shards:   0%|          | 0/17 [00:00<?, ?it/s]Loading checkpoint shards:   0%|          | 0/17 [00:00<?, ?it/s]Loading checkpoint shards:   0%|          | 0/17 [00:00<?, ?it/s]Loading checkpoint shards:   0%|          | 0/17 [00:00<?, ?it/s]Loading checkpoint shards:   0%|          | 0/17 [00:00<?, ?it/s]Loading checkpoint shards:   6%|▌         | 1/17 [00:03<01:00,  3.80s/it]Loading checkpoint shards:   6%|▌         | 1/17 [00:03<01:03,  3.97s/it]Loading checkpoint shards:   6%|▌         | 1/17 [00:03<01:02,  3.89s/it]Loading checkpoint shards:   6%|▌         | 1/17 [00:03<01:02,  3.88s/it]Loading checkpoint shards:   6%|▌         | 1/17 [00:03<01:02,  3.88s/it]Loading checkpoint shards:   6%|▌         | 1/17 [00:03<01:01,  3.86s/it]Loading checkpoint shards:   6%|▌         | 1/17 [00:03<01:03,  3.94s/it]Loading checkpoint shards:   6%|▌         | 1/17 [00:04<01:08,  4.28s/it]Loading checkpoint shards:  12%|█▏        | 2/17 [00:08<01:02,  4.15s/it]Loading checkpoint shards:  12%|█▏        | 2/17 [00:08<01:03,  4.21s/it]Loading checkpoint shards:  12%|█▏        | 2/17 [00:08<01:01,  4.13s/it]Loading checkpoint shards:  12%|█▏        | 2/17 [00:08<01:02,  4.15s/it]Loading checkpoint shards:  12%|█▏        | 2/17 [00:08<01:02,  4.16s/it]Loading checkpoint shards:  12%|█▏        | 2/17 [00:08<01:02,  4.19s/it]Loading checkpoint shards:  12%|█▏        | 2/17 [00:08<01:02,  4.20s/it]Loading checkpoint shards:  12%|█▏        | 2/17 [00:08<01:05,  4.35s/it]Loading checkpoint shards:  18%|█▊        | 3/17 [00:12<01:00,  4.29s/it]Loading checkpoint shards:  18%|█▊        | 3/17 [00:12<01:00,  4.30s/it]Loading checkpoint shards:  18%|█▊        | 3/17 [00:12<01:00,  4.30s/it]Loading checkpoint shards:  18%|█▊        | 3/17 [00:12<01:00,  4.31s/it]Loading checkpoint shards:  18%|█▊        | 3/17 [00:12<01:00,  4.36s/it]Loading checkpoint shards:  18%|█▊        | 3/17 [00:12<01:00,  4.33s/it]Loading checkpoint shards:  18%|█▊        | 3/17 [00:12<01:00,  4.33s/it]Loading checkpoint shards:  18%|█▊        | 3/17 [00:13<01:01,  4.40s/it]Loading checkpoint shards:  24%|██▎       | 4/17 [00:17<00:56,  4.35s/it]Loading checkpoint shards:  24%|██▎       | 4/17 [00:17<00:56,  4.35s/it]Loading checkpoint shards:  24%|██▎       | 4/17 [00:17<00:56,  4.35s/it]Loading checkpoint shards:  24%|██▎       | 4/17 [00:17<00:56,  4.35s/it]Loading checkpoint shards:  24%|██▎       | 4/17 [00:17<00:56,  4.38s/it]Loading checkpoint shards:  24%|██▎       | 4/17 [00:17<00:56,  4.36s/it]Loading checkpoint shards:  24%|██▎       | 4/17 [00:17<00:56,  4.37s/it]Loading checkpoint shards:  24%|██▎       | 4/17 [00:17<00:57,  4.40s/it]Loading checkpoint shards:  29%|██▉       | 5/17 [00:21<00:50,  4.24s/it]Loading checkpoint shards:  29%|██▉       | 5/17 [00:21<00:50,  4.24s/it]Loading checkpoint shards:  29%|██▉       | 5/17 [00:21<00:50,  4.24s/it]Loading checkpoint shards:  29%|██▉       | 5/17 [00:21<00:50,  4.25s/it]Loading checkpoint shards:  29%|██▉       | 5/17 [00:21<00:51,  4.26s/it]Loading checkpoint shards:  29%|██▉       | 5/17 [00:21<00:50,  4.25s/it]Loading checkpoint shards:  29%|██▉       | 5/17 [00:21<00:51,  4.25s/it]Loading checkpoint shards:  29%|██▉       | 5/17 [00:21<00:51,  4.28s/it]Loading checkpoint shards:  35%|███▌      | 6/17 [00:25<00:46,  4.18s/it]Loading checkpoint shards:  35%|███▌      | 6/17 [00:25<00:46,  4.21s/it]Loading checkpoint shards:  35%|███▌      | 6/17 [00:25<00:46,  4.18s/it]Loading checkpoint shards:  35%|███▌      | 6/17 [00:25<00:46,  4.19s/it]Loading checkpoint shards:  35%|███▌      | 6/17 [00:25<00:46,  4.20s/it]Loading checkpoint shards:  35%|███▌      | 6/17 [00:25<00:46,  4.19s/it]Loading checkpoint shards:  35%|███▌      | 6/17 [00:25<00:46,  4.19s/it]Loading checkpoint shards:  35%|███▌      | 6/17 [00:25<00:46,  4.21s/it]Loading checkpoint shards:  41%|████      | 7/17 [00:31<00:47,  4.78s/it]Loading checkpoint shards:  41%|████      | 7/17 [00:31<00:47,  4.78s/it]Loading checkpoint shards:  41%|████      | 7/17 [00:31<00:47,  4.78s/it]Loading checkpoint shards:  41%|████      | 7/17 [00:31<00:47,  4.78s/it]Loading checkpoint shards:  41%|████      | 7/17 [00:31<00:47,  4.79s/it]Loading checkpoint shards:  41%|████      | 7/17 [00:31<00:47,  4.79s/it]Loading checkpoint shards:  41%|████      | 7/17 [00:31<00:47,  4.79s/it]Loading checkpoint shards:  41%|████      | 7/17 [00:31<00:48,  4.88s/it]Loading checkpoint shards:  47%|████▋     | 8/17 [00:38<00:51,  5.72s/it]Loading checkpoint shards:  47%|████▋     | 8/17 [00:39<00:51,  5.73s/it]Loading checkpoint shards:  47%|████▋     | 8/17 [00:39<00:51,  5.74s/it]Loading checkpoint shards:  47%|████▋     | 8/17 [00:39<00:51,  5.74s/it]Loading checkpoint shards:  47%|████▋     | 8/17 [00:39<00:51,  5.74s/it]Loading checkpoint shards:  47%|████▋     | 8/17 [00:39<00:51,  5.74s/it]Loading checkpoint shards:  47%|████▋     | 8/17 [00:39<00:51,  5.75s/it]Loading checkpoint shards:  47%|████▋     | 8/17 [00:40<00:54,  6.01s/it]Loading checkpoint shards:  53%|█████▎    | 9/17 [00:47<00:51,  6.48s/it]Loading checkpoint shards:  53%|█████▎    | 9/17 [00:47<00:51,  6.49s/it]Loading checkpoint shards:  53%|█████▎    | 9/17 [00:47<00:51,  6.49s/it]Loading checkpoint shards:  53%|█████▎    | 9/17 [00:47<00:51,  6.49s/it]Loading checkpoint shards:  53%|█████▎    | 9/17 [00:47<00:51,  6.49s/it]Loading checkpoint shards:  53%|█████▎    | 9/17 [00:47<00:51,  6.49s/it]Loading checkpoint shards:  53%|█████▎    | 9/17 [00:47<00:51,  6.49s/it]Loading checkpoint shards:  53%|█████▎    | 9/17 [00:47<00:52,  6.50s/it]Loading checkpoint shards:  59%|█████▉    | 10/17 [00:54<00:48,  6.90s/it]Loading checkpoint shards:  59%|█████▉    | 10/17 [00:54<00:48,  6.90s/it]Loading checkpoint shards:  59%|█████▉    | 10/17 [00:54<00:48,  6.89s/it]Loading checkpoint shards:  59%|█████▉    | 10/17 [00:55<00:48,  6.90s/it]Loading checkpoint shards:  59%|█████▉    | 10/17 [00:55<00:48,  6.90s/it]Loading checkpoint shards:  59%|█████▉    | 10/17 [00:55<00:48,  6.91s/it]Loading checkpoint shards:  59%|█████▉    | 10/17 [00:55<00:48,  6.90s/it]Loading checkpoint shards:  59%|█████▉    | 10/17 [00:55<00:48,  6.86s/it]Loading checkpoint shards:  65%|██████▍   | 11/17 [01:04<00:46,  7.69s/it]Loading checkpoint shards:  65%|██████▍   | 11/17 [01:04<00:46,  7.68s/it]Loading checkpoint shards:  65%|██████▍   | 11/17 [01:04<00:46,  7.68s/it]Loading checkpoint shards:  65%|██████▍   | 11/17 [01:04<00:46,  7.68s/it]Loading checkpoint shards:  65%|██████▍   | 11/17 [01:04<00:46,  7.68s/it]Loading checkpoint shards:  65%|██████▍   | 11/17 [01:04<00:46,  7.68s/it]Loading checkpoint shards:  65%|██████▍   | 11/17 [01:04<00:46,  7.69s/it]Loading checkpoint shards:  65%|██████▍   | 11/17 [01:04<00:45,  7.62s/it]Loading checkpoint shards:  71%|███████   | 12/17 [01:09<00:35,  7.04s/it]Loading checkpoint shards:  71%|███████   | 12/17 [01:10<00:35,  7.03s/it]Loading checkpoint shards:  71%|███████   | 12/17 [01:10<00:35,  7.04s/it]Loading checkpoint shards:  71%|███████   | 12/17 [01:10<00:35,  7.04s/it]Loading checkpoint shards:  71%|███████   | 12/17 [01:10<00:35,  7.04s/it]Loading checkpoint shards:  71%|███████   | 12/17 [01:10<00:35,  7.04s/it]Loading checkpoint shards:  71%|███████   | 12/17 [01:10<00:35,  7.06s/it]Loading checkpoint shards:  71%|███████   | 12/17 [01:10<00:34,  7.00s/it]Loading checkpoint shards:  76%|███████▋  | 13/17 [01:14<00:25,  6.31s/it]Loading checkpoint shards:  76%|███████▋  | 13/17 [01:14<00:25,  6.31s/it]Loading checkpoint shards:  76%|███████▋  | 13/17 [01:14<00:25,  6.30s/it]Loading checkpoint shards:  76%|███████▋  | 13/17 [01:14<00:25,  6.31s/it]Loading checkpoint shards:  76%|███████▋  | 13/17 [01:14<00:25,  6.31s/it]Loading checkpoint shards:  76%|███████▋  | 13/17 [01:14<00:25,  6.31s/it]Loading checkpoint shards:  76%|███████▋  | 13/17 [01:14<00:25,  6.31s/it]Loading checkpoint shards:  76%|███████▋  | 13/17 [01:15<00:25,  6.26s/it]Loading checkpoint shards:  82%|████████▏ | 14/17 [01:20<00:18,  6.06s/it]Loading checkpoint shards:  82%|████████▏ | 14/17 [01:20<00:18,  6.06s/it]Loading checkpoint shards:  82%|████████▏ | 14/17 [01:20<00:18,  6.06s/it]Loading checkpoint shards:  82%|████████▏ | 14/17 [01:20<00:18,  6.06s/it]Loading checkpoint shards:  82%|████████▏ | 14/17 [01:20<00:18,  6.06s/it]Loading checkpoint shards:  82%|████████▏ | 14/17 [01:20<00:18,  6.06s/it]Loading checkpoint shards:  82%|████████▏ | 14/17 [01:20<00:18,  6.06s/it]Loading checkpoint shards:  82%|████████▏ | 14/17 [01:20<00:18,  6.11s/it]Loading checkpoint shards:  88%|████████▊ | 15/17 [01:28<00:13,  6.59s/it]Loading checkpoint shards:  88%|████████▊ | 15/17 [01:27<00:13,  6.60s/it]Loading checkpoint shards:  88%|████████▊ | 15/17 [01:27<00:13,  6.59s/it]Loading checkpoint shards:  88%|████████▊ | 15/17 [01:28<00:13,  6.59s/it]Loading checkpoint shards:  88%|████████▊ | 15/17 [01:28<00:13,  6.60s/it]Loading checkpoint shards:  88%|████████▊ | 15/17 [01:28<00:13,  6.63s/it]Loading checkpoint shards:  88%|████████▊ | 15/17 [01:28<00:13,  6.62s/it]Loading checkpoint shards:  88%|████████▊ | 15/17 [01:28<00:13,  6.57s/it]Loading checkpoint shards:  94%|█████████▍| 16/17 [01:33<00:06,  6.35s/it]Loading checkpoint shards:  94%|█████████▍| 16/17 [01:33<00:06,  6.34s/it]Loading checkpoint shards:  94%|█████████▍| 16/17 [01:33<00:06,  6.34s/it]Loading checkpoint shards:  94%|█████████▍| 16/17 [01:33<00:06,  6.35s/it]Loading checkpoint shards:  94%|█████████▍| 16/17 [01:33<00:06,  6.35s/it]Loading checkpoint shards:  94%|█████████▍| 16/17 [01:33<00:06,  6.36s/it]Loading checkpoint shards:  94%|█████████▍| 16/17 [01:33<00:06,  6.39s/it]Loading checkpoint shards:  94%|█████████▍| 16/17 [01:34<00:06,  6.32s/it]Loading checkpoint shards: 100%|██████████| 17/17 [01:35<00:00,  5.10s/it]Loading checkpoint shards: 100%|██████████| 17/17 [01:35<00:00,  5.64s/it]
Loading checkpoint shards: 100%|██████████| 17/17 [01:35<00:00,  5.10s/it]Loading checkpoint shards: 100%|██████████| 17/17 [01:35<00:00,  5.64s/it]
Loading checkpoint shards: 100%|██████████| 17/17 [01:36<00:00,  5.09s/it]Loading checkpoint shards: 100%|██████████| 17/17 [01:36<00:00,  5.65s/it]
Loading checkpoint shards: 100%|██████████| 17/17 [01:36<00:00,  5.10s/it]Loading checkpoint shards: 100%|██████████| 17/17 [01:36<00:00,  5.65s/it]
Loading checkpoint shards: 100%|██████████| 17/17 [01:35<00:00,  5.10s/it]Loading checkpoint shards: 100%|██████████| 17/17 [01:35<00:00,  5.64s/it]
Loading checkpoint shards: 100%|██████████| 17/17 [01:36<00:00,  5.10s/it]Loading checkpoint shards: 100%|██████████| 17/17 [01:36<00:00,  5.65s/it]
Loading checkpoint shards: 100%|██████████| 17/17 [01:36<00:00,  5.12s/it]Loading checkpoint shards: 100%|██████████| 17/17 [01:36<00:00,  5.65s/it]
Loading checkpoint shards: 100%|██████████| 17/17 [01:39<00:00,  6.09s/it]Loading checkpoint shards: 100%|██████████| 17/17 [01:39<00:00,  5.87s/it]
[INFO|modeling_utils.py:4970] 2025-06-02 06:55:30,483 >> All model checkpoint weights were used when initializing Qwen2ForCausalLM.

[INFO|modeling_utils.py:4978] 2025-06-02 06:55:30,483 >> All the weights of Qwen2ForCausalLM were initialized from the model checkpoint at /shared-aig/machaita/models/Qwen/Qwen2.5-32B-Instruct.
If your task is similar to the task the model of the checkpoint was trained on, you can already use Qwen2ForCausalLM for predictions without further training.
[INFO|configuration_utils.py:1093] 2025-06-02 06:55:30,593 >> loading configuration file /shared-aig/machaita/models/Qwen/Qwen2.5-32B-Instruct/generation_config.json
[INFO|configuration_utils.py:1140] 2025-06-02 06:55:30,593 >> Generate config GenerationConfig {
  "bos_token_id": 151643,
  "do_sample": true,
  "eos_token_id": [
    151645,
    151643
  ],
  "pad_token_id": 151643,
  "repetition_penalty": 1.05,
  "temperature": 0.7,
  "top_k": 20,
  "top_p": 0.8
}

[INFO|2025-06-02 06:55:30] llamafactory.model.model_utils.checkpointing:143 >> Gradient checkpointing enabled.
[INFO|2025-06-02 06:55:30] llamafactory.model.model_utils.attention:143 >> Using FlashAttention-2 for faster training and inference.
[INFO|2025-06-02 06:55:30] llamafactory.model.adapter:143 >> ZeRO3 / FSDP detected, remaining trainable params in float32.
[INFO|2025-06-02 06:55:30] llamafactory.model.adapter:143 >> Fine-tuning method: Full
[INFO|2025-06-02 06:55:30] llamafactory.model.loader:143 >> trainable params: 32,763,876,352 || all params: 32,763,876,352 || trainable%: 100.0000
[INFO|trainer.py:746] 2025-06-02 06:55:30,617 >> Using auto half precision backend
[2025-06-02 06:55:30,995] [INFO] [logging.py:128:log_dist] [Rank 0] DeepSpeed info: version=0.16.2, git-hash=unknown, git-branch=unknown
[2025-06-02 06:55:30,995] [INFO] [config.py:733:__init__] Config mesh_device None world_size = 8
[2025-06-02 06:55:31,009] [INFO] [logging.py:128:log_dist] [Rank 0] DeepSpeed Flops Profiler Enabled: False
[2025-06-02 06:55:31,011] [INFO] [logging.py:128:log_dist] [Rank 0] Using client Optimizer as basic optimizer
[2025-06-02 06:55:31,011] [INFO] [logging.py:128:log_dist] [Rank 0] Removing param_group that has no 'params' in the basic Optimizer
[2025-06-02 06:55:31,051] [INFO] [logging.py:128:log_dist] [Rank 0] DeepSpeed Basic Optimizer = AdamW
[2025-06-02 06:55:31,051] [INFO] [utils.py:59:is_zero_supported_optimizer] Checking ZeRO support for optimizer=AdamW type=<class 'torch.optim.adamw.AdamW'>
[2025-06-02 06:55:31,051] [INFO] [logging.py:128:log_dist] [Rank 0] Creating fp16 ZeRO stage 3 optimizer, MiCS is enabled False, Hierarchical params gather False
[2025-06-02 06:55:31,051] [INFO] [logging.py:128:log_dist] [Rank 0] Creating torch.bfloat16 ZeRO stage 3 optimizer
[2025-06-02 06:55:31,422] [INFO] [utils.py:781:see_memory_usage] Stage 3 initialize beginning
[2025-06-02 06:55:31,423] [INFO] [utils.py:782:see_memory_usage] MA 7.63 GB         Max_MA 11.8 GB         CA 8.04 GB         Max_CA 13 GB 
[2025-06-02 06:55:31,423] [INFO] [utils.py:789:see_memory_usage] CPU Virtual Memory:  used = 73.44 GB, percent = 4.0%
[2025-06-02 06:55:31,426] [INFO] [stage3.py:168:__init__] Reduce bucket size 26214400
[2025-06-02 06:55:31,426] [INFO] [stage3.py:169:__init__] Prefetch bucket size 23592960
[2025-06-02 06:55:31,732] [INFO] [utils.py:781:see_memory_usage] DeepSpeedZeRoOffload initialize [begin]
[2025-06-02 06:55:31,733] [INFO] [utils.py:782:see_memory_usage] MA 7.63 GB         Max_MA 7.63 GB         CA 8.04 GB         Max_CA 8 GB 
[2025-06-02 06:55:31,733] [INFO] [utils.py:789:see_memory_usage] CPU Virtual Memory:  used = 73.44 GB, percent = 4.0%
Parameter Offload: Total persistent parameters: 1119232 in 321 params
[2025-06-02 06:55:32,117] [INFO] [utils.py:781:see_memory_usage] DeepSpeedZeRoOffload initialize [end]
[2025-06-02 06:55:32,118] [INFO] [utils.py:782:see_memory_usage] MA 7.63 GB         Max_MA 7.63 GB         CA 8.04 GB         Max_CA 8 GB 
[2025-06-02 06:55:32,118] [INFO] [utils.py:789:see_memory_usage] CPU Virtual Memory:  used = 73.46 GB, percent = 4.0%
[2025-06-02 06:55:32,366] [INFO] [utils.py:781:see_memory_usage] Before creating fp16 partitions
[2025-06-02 06:55:32,367] [INFO] [utils.py:782:see_memory_usage] MA 7.63 GB         Max_MA 7.63 GB         CA 8.04 GB         Max_CA 8 GB 
[2025-06-02 06:55:32,367] [INFO] [utils.py:789:see_memory_usage] CPU Virtual Memory:  used = 73.48 GB, percent = 4.0%
[2025-06-02 06:55:35,849] [INFO] [utils.py:781:see_memory_usage] After creating fp16 partitions: 5
[2025-06-02 06:55:35,850] [INFO] [utils.py:782:see_memory_usage] MA 7.63 GB         Max_MA 7.63 GB         CA 7.63 GB         Max_CA 8 GB 
[2025-06-02 06:55:35,850] [INFO] [utils.py:789:see_memory_usage] CPU Virtual Memory:  used = 103.36 GB, percent = 5.7%
[2025-06-02 06:55:36,143] [INFO] [utils.py:781:see_memory_usage] Before creating fp32 partitions
[2025-06-02 06:55:36,143] [INFO] [utils.py:782:see_memory_usage] MA 7.63 GB         Max_MA 7.63 GB         CA 7.63 GB         Max_CA 8 GB 
[2025-06-02 06:55:36,143] [INFO] [utils.py:789:see_memory_usage] CPU Virtual Memory:  used = 103.46 GB, percent = 5.7%
[2025-06-02 06:55:36,455] [INFO] [utils.py:781:see_memory_usage] After creating fp32 partitions
[2025-06-02 06:55:36,455] [INFO] [utils.py:782:see_memory_usage] MA 22.89 GB         Max_MA 24.89 GB         CA 26.77 GB         Max_CA 27 GB 
[2025-06-02 06:55:36,455] [INFO] [utils.py:789:see_memory_usage] CPU Virtual Memory:  used = 103.49 GB, percent = 5.7%
[2025-06-02 06:55:38,054] [INFO] [utils.py:781:see_memory_usage] Before initializing optimizer states
[2025-06-02 06:55:38,054] [INFO] [utils.py:782:see_memory_usage] MA 22.89 GB         Max_MA 22.89 GB         CA 26.77 GB         Max_CA 27 GB 
[2025-06-02 06:55:38,055] [INFO] [utils.py:789:see_memory_usage] CPU Virtual Memory:  used = 73.07 GB, percent = 4.0%
[2025-06-02 06:55:38,428] [INFO] [utils.py:781:see_memory_usage] After initializing optimizer states
[2025-06-02 06:55:38,429] [INFO] [utils.py:782:see_memory_usage] MA 22.89 GB         Max_MA 26.88 GB         CA 30.77 GB         Max_CA 31 GB 
[2025-06-02 06:55:38,429] [INFO] [utils.py:789:see_memory_usage] CPU Virtual Memory:  used = 73.14 GB, percent = 4.0%
[2025-06-02 06:55:38,430] [INFO] [stage3.py:528:_setup_for_real_optimizer] optimizer state initialized
[2025-06-02 06:55:39,157] [INFO] [utils.py:781:see_memory_usage] After initializing ZeRO optimizer
[2025-06-02 06:55:39,158] [INFO] [utils.py:782:see_memory_usage] MA 30.57 GB         Max_MA 33.47 GB         CA 38.4 GB         Max_CA 38 GB 
[2025-06-02 06:55:39,158] [INFO] [utils.py:789:see_memory_usage] CPU Virtual Memory:  used = 73.52 GB, percent = 4.0%
[2025-06-02 06:55:39,158] [INFO] [logging.py:128:log_dist] [Rank 0] DeepSpeed Final Optimizer = DeepSpeedZeroOptimizer_Stage3
[2025-06-02 06:55:39,158] [INFO] [logging.py:128:log_dist] [Rank 0] DeepSpeed using configured LR scheduler = None
[2025-06-02 06:55:39,158] [INFO] [logging.py:128:log_dist] [Rank 0] DeepSpeed LR Scheduler = None
[2025-06-02 06:55:39,158] [INFO] [logging.py:128:log_dist] [Rank 0] step=0, skipped=0, lr=[5e-06, 5e-06], mom=[(0.9, 0.999), (0.9, 0.999)]
[2025-06-02 06:55:39,160] [INFO] [config.py:999:print] DeepSpeedEngine configuration:
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   activation_checkpointing_config  {
    "partition_activations": false, 
    "contiguous_memory_optimization": false, 
    "cpu_checkpointing": false, 
    "number_checkpoints": null, 
    "synchronize_checkpoint_boundary": false, 
    "profile": false
}
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   aio_config ................... {'block_size': 1048576, 'queue_depth': 8, 'thread_count': 1, 'single_submit': False, 'overlap_events': True, 'use_gds': False}
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   amp_enabled .................. False
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   amp_params ................... False
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   autotuning_config ............ {
    "enabled": false, 
    "start_step": null, 
    "end_step": null, 
    "metric_path": null, 
    "arg_mappings": null, 
    "metric": "throughput", 
    "model_info": null, 
    "results_dir": "autotuning_results", 
    "exps_dir": "autotuning_exps", 
    "overwrite": true, 
    "fast": true, 
    "start_profile_step": 3, 
    "end_profile_step": 5, 
    "tuner_type": "gridsearch", 
    "tuner_early_stopping": 5, 
    "tuner_num_trials": 50, 
    "model_info_path": null, 
    "mp_size": 1, 
    "max_train_batch_size": null, 
    "min_train_batch_size": 1, 
    "max_train_micro_batch_size_per_gpu": 1.024000e+03, 
    "min_train_micro_batch_size_per_gpu": 1, 
    "num_tuning_micro_batch_sizes": 3
}
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   bfloat16_enabled ............. True
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   bfloat16_immediate_grad_update  False
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   checkpoint_parallel_write_pipeline  False
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   checkpoint_tag_validation_enabled  True
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   checkpoint_tag_validation_fail  False
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   comms_config ................. <deepspeed.comm.config.DeepSpeedCommsConfig object at 0x7f11d0aa05b0>
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   communication_data_type ...... None
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   compression_config ........... {'weight_quantization': {'shared_parameters': {'enabled': False, 'quantizer_kernel': False, 'schedule_offset': 0, 'quantize_groups': 1, 'quantize_verbose': False, 'quantization_type': 'symmetric', 'quantize_weight_in_forward': False, 'rounding': 'nearest', 'fp16_mixed_quantize': False, 'quantize_change_ratio': 0.001}, 'different_groups': {}}, 'activation_quantization': {'shared_parameters': {'enabled': False, 'quantization_type': 'symmetric', 'range_calibration': 'dynamic', 'schedule_offset': 1000}, 'different_groups': {}}, 'sparse_pruning': {'shared_parameters': {'enabled': False, 'method': 'l1', 'schedule_offset': 1000}, 'different_groups': {}}, 'row_pruning': {'shared_parameters': {'enabled': False, 'method': 'l1', 'schedule_offset': 1000}, 'different_groups': {}}, 'head_pruning': {'shared_parameters': {'enabled': False, 'method': 'topk', 'schedule_offset': 1000}, 'different_groups': {}}, 'channel_pruning': {'shared_parameters': {'enabled': False, 'method': 'l1', 'schedule_offset': 1000}, 'different_groups': {}}, 'layer_reduction': {'enabled': False}}
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   curriculum_enabled_legacy .... False
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   curriculum_params_legacy ..... False
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   data_efficiency_config ....... {'enabled': False, 'seed': 1234, 'data_sampling': {'enabled': False, 'num_epochs': 1000, 'num_workers': 0, 'curriculum_learning': {'enabled': False}}, 'data_routing': {'enabled': False, 'random_ltd': {'enabled': False, 'layer_token_lr_schedule': {'enabled': False}}}}
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   data_efficiency_enabled ...... False
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   dataloader_drop_last ......... False
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   disable_allgather ............ False
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   dump_state ................... False
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   dynamic_loss_scale_args ...... None
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   eigenvalue_enabled ........... False
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   eigenvalue_gas_boundary_resolution  1
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   eigenvalue_layer_name ........ bert.encoder.layer
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   eigenvalue_layer_num ......... 0
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   eigenvalue_max_iter .......... 100
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   eigenvalue_stability ......... 1e-06
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   eigenvalue_tol ............... 0.01
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   eigenvalue_verbose ........... False
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   elasticity_enabled ........... False
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   flops_profiler_config ........ {
    "enabled": false, 
    "recompute_fwd_factor": 0.0, 
    "profile_step": 1, 
    "module_depth": -1, 
    "top_modules": 1, 
    "detailed": true, 
    "output_file": null
}
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   fp16_auto_cast ............... None
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   fp16_enabled ................. False
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   fp16_master_weights_and_gradients  False
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   global_rank .................. 0
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   grad_accum_dtype ............. None
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   gradient_accumulation_steps .. 1
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   gradient_clipping ............ 1.0
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   gradient_predivide_factor .... 1.0
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   graph_harvesting ............. False
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   hybrid_engine ................ enabled=False max_out_tokens=512 inference_tp_size=1 release_inference_cache=False pin_parameters=True tp_gather_partition_size=8
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   initial_dynamic_scale ........ 1
[2025-06-02 06:55:39,161] [INFO] [config.py:1003:print]   load_universal_checkpoint .... False
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   loss_scale ................... 1.0
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   memory_breakdown ............. False
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   mics_hierarchial_params_gather  False
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   mics_shard_size .............. -1
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   monitor_config ............... tensorboard=TensorBoardConfig(enabled=False, output_path='', job_name='DeepSpeedJobName') comet=CometConfig(enabled=False, samples_log_interval=100, project=None, workspace=None, api_key=None, experiment_name=None, experiment_key=None, online=None, mode=None) wandb=WandbConfig(enabled=False, group=None, team=None, project='deepspeed') csv_monitor=CSVConfig(enabled=False, output_path='', job_name='DeepSpeedJobName')
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   nebula_config ................ {
    "enabled": false, 
    "persistent_storage_path": null, 
    "persistent_time_interval": 100, 
    "num_of_version_in_retention": 2, 
    "enable_nebula_load": true, 
    "load_path": null
}
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   optimizer_legacy_fusion ...... False
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   optimizer_name ............... None
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   optimizer_params ............. None
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   pipeline ..................... {'stages': 'auto', 'partition': 'best', 'seed_layers': False, 'activation_checkpoint_interval': 0, 'pipe_partitioned': True, 'grad_partitioned': True}
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   pld_enabled .................. False
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   pld_params ................... False
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   prescale_gradients ........... False
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   scheduler_name ............... None
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   scheduler_params ............. None
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   seq_parallel_communication_data_type  torch.float32
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   sparse_attention ............. None
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   sparse_gradients_enabled ..... False
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   steps_per_print .............. inf
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   timers_config ................ enabled=True synchronized=True
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   train_batch_size ............. 16
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   train_micro_batch_size_per_gpu  2
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   use_data_before_expert_parallel_  False
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   use_node_local_storage ....... False
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   wall_clock_breakdown ......... False
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   weight_quantization_config ... None
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   world_size ................... 8
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   zero_allow_untested_optimizer  True
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   zero_config .................. stage=3 contiguous_gradients=True reduce_scatter=True reduce_bucket_size=26214400 use_multi_rank_bucket_allreduce=True allgather_partitions=True allgather_bucket_size=500000000 overlap_comm=False load_from_fp32_weights=True elastic_checkpoint=False offload_param=None offload_optimizer=None sub_group_size=1000000000 cpu_offload_param=None cpu_offload_use_pin_memory=None cpu_offload=None prefetch_bucket_size=23592960 param_persistence_threshold=51200 model_persistence_threshold=9223372036854775807 max_live_parameters=1000000000 max_reuse_distance=1000000000 gather_16bit_weights_on_model_save=True module_granularity_threshold=0 use_all_reduce_for_fetch_params=False stage3_gather_fp16_weights_on_model_save=False ignore_unused_parameters=True legacy_stage1=False round_robin_gradients=False zero_hpz_partition_size=1 zero_quantized_weights=False zero_quantized_nontrainable_weights=False zero_quantized_gradients=False zeropp_loco_param=None mics_shard_size=-1 mics_hierarchical_params_gather=False memory_efficient_linear=True pipeline_loading_checkpoint=False override_module_apply=True
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   zero_enabled ................. True
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   zero_force_ds_cpu_optimizer .. True
[2025-06-02 06:55:39,162] [INFO] [config.py:1003:print]   zero_optimization_stage ...... 3
[2025-06-02 06:55:39,162] [INFO] [config.py:989:print_user_config]   json = {
    "train_batch_size": 16, 
    "train_micro_batch_size_per_gpu": 2, 
    "gradient_accumulation_steps": 1, 
    "gradient_clipping": 1.0, 
    "zero_allow_untested_optimizer": true, 
    "fp16": {
        "enabled": false, 
        "loss_scale": 0, 
        "loss_scale_window": 1000, 
        "initial_scale_power": 16, 
        "hysteresis": 2, 
        "min_loss_scale": 1
    }, 
    "bf16": {
        "enabled": true
    }, 
    "zero_optimization": {
        "stage": 3, 
        "overlap_comm": false, 
        "contiguous_gradients": true, 
        "sub_group_size": 1.000000e+09, 
        "reduce_bucket_size": 2.621440e+07, 
        "stage3_prefetch_bucket_size": 2.359296e+07, 
        "stage3_param_persistence_threshold": 5.120000e+04, 
        "stage3_max_live_parameters": 1.000000e+09, 
        "stage3_max_reuse_distance": 1.000000e+09, 
        "stage3_gather_16bit_weights_on_model_save": true
    }, 
    "steps_per_print": inf
}
[INFO|trainer.py:2405] 2025-06-02 06:55:39,164 >> ***** Running training *****
[INFO|trainer.py:2406] 2025-06-02 06:55:39,164 >>   Num examples = 1,310
[INFO|trainer.py:2407] 2025-06-02 06:55:39,164 >>   Num Epochs = 10
[INFO|trainer.py:2408] 2025-06-02 06:55:39,164 >>   Instantaneous batch size per device = 2
[INFO|trainer.py:2411] 2025-06-02 06:55:39,164 >>   Total train batch size (w. parallel, distributed & accumulation) = 16
[INFO|trainer.py:2412] 2025-06-02 06:55:39,164 >>   Gradient Accumulation steps = 1
[INFO|trainer.py:2413] 2025-06-02 06:55:39,164 >>   Total optimization steps = 820
[INFO|trainer.py:2414] 2025-06-02 06:55:39,166 >>   Number of trainable parameters = 32,763,876,352
[INFO|integration_utils.py:817] 2025-06-02 06:55:39,168 >> Automatic Weights & Biases logging enabled, to disable set os.environ["WANDB_DISABLED"] = "true"
wandb: Currently logged in as: chaitanyamanem to https://api.wandb.ai. Use `wandb login --relogin` to force relogin
wandb: Tracking run with wandb version 0.19.11
wandb: Run data is saved locally in /home/machaita/LLaMA-Factory-2/wandb/run-20250602_065539-5e82kfzv
wandb: Run `wandb offline` to turn off syncing.
wandb: Syncing run limo_sand_math_500_diffdesc
wandb: ⭐️ View project at https://wandb.ai/chaitanyamanem/llamafactory
wandb: 🚀 View run at https://wandb.ai/chaitanyamanem/llamafactory/runs/5e82kfzv
  0%|          | 0/820 [00:00<?, ?it/s]pdfc-aig-00000H:2664386:2678945 [0] NCCL INFO Comm config Blocking set to 1
pdfc-aig-00000H:2664388:2678958 [2] NCCL INFO Comm config Blocking set to 1
pdfc-aig-00000H:2664387:2678957 [1] NCCL INFO Comm config Blocking set to 1
pdfc-aig-00000H:2664389:2678935 [3] NCCL INFO Comm config Blocking set to 1
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Using non-device net plugin version 0
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Using network IB
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Using non-device net plugin version 0
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Using non-device net plugin version 0
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Using network IB
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Using network IB
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Using non-device net plugin version 0
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Using network IB
pdfc-aig-00000H:2664393:2678980 [7] NCCL INFO Comm config Blocking set to 1
pdfc-aig-00000H:2664391:2678965 [5] NCCL INFO Comm config Blocking set to 1
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Using non-device net plugin version 0
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Using network IB
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Using non-device net plugin version 0
pdfc-aig-00000H:2664390:2678936 [4] NCCL INFO Comm config Blocking set to 1
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Using network IB
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Using non-device net plugin version 0
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Using network IB
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO [node_id = 5; gpu_id = 54764; unique_id = 1875351247777246069; location_id = 21474836480; bdf = 21474836480; domain = 5; partition = 0], 
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO [node_id = 4; gpu_id = 16561; unique_id = 5072574656748564528; location_id = 17179869184; bdf = 17179869184; domain = 4; partition = 0], 
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO [node_id = 8; gpu_id = 32548; unique_id = 6347306318148548519; location_id = 34359738368; bdf = 34359738368; domain = 8; partition = 0], 
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO [node_id = 7; gpu_id = 48981; unique_id = 9063168802778326309; location_id = 30064771072; bdf = 30064771072; domain = 7; partition = 0], 
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO [node_id = 9; gpu_id = 60025; unique_id = 10157933205503563805; location_id = 38654705664; bdf = 38654705664; domain = 9; partition = 0], 
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO [node_id = 3; gpu_id = 27175; unique_id = 11656133260443653636; location_id = 12884901888; bdf = 12884901888; domain = 3; partition = 0], 
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO [node_id = 6; gpu_id = 10760; unique_id = 12744163373932945746; location_id = 25769803776; bdf = 25769803776; domain = 6; partition = 0], 
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO [node_id = 2; gpu_id = 65402; unique_id = 15152426024349502463; location_id = 8589934592; bdf = 8589934592; domain = 2; partition = 0], 
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO [node_id = 5; gpu_id = 54764; unique_id = 1875351247777246069; location_id = 21474836480; bdf = 21474836480; domain = 5; partition = 0], 
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO [node_id = 4; gpu_id = 16561; unique_id = 5072574656748564528; location_id = 17179869184; bdf = 17179869184; domain = 4; partition = 0], 
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO [node_id = 8; gpu_id = 32548; unique_id = 6347306318148548519; location_id = 34359738368; bdf = 34359738368; domain = 8; partition = 0], 
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO [node_id = 7; gpu_id = 48981; unique_id = 9063168802778326309; location_id = 30064771072; bdf = 30064771072; domain = 7; partition = 0], 
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO [node_id = 9; gpu_id = 60025; unique_id = 10157933205503563805; location_id = 38654705664; bdf = 38654705664; domain = 9; partition = 0], 
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO [node_id = 3; gpu_id = 27175; unique_id = 11656133260443653636; location_id = 12884901888; bdf = 12884901888; domain = 3; partition = 0], 
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO [node_id = 6; gpu_id = 10760; unique_id = 12744163373932945746; location_id = 25769803776; bdf = 25769803776; domain = 6; partition = 0], 
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO [node_id = 2; gpu_id = 65402; unique_id = 15152426024349502463; location_id = 8589934592; bdf = 8589934592; domain = 2; partition = 0], 
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO [node_id = 5; gpu_id = 54764; unique_id = 1875351247777246069; location_id = 21474836480; bdf = 21474836480; domain = 5; partition = 0], 
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO [node_id = 4; gpu_id = 16561; unique_id = 5072574656748564528; location_id = 17179869184; bdf = 17179869184; domain = 4; partition = 0], 
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO [node_id = 8; gpu_id = 32548; unique_id = 6347306318148548519; location_id = 34359738368; bdf = 34359738368; domain = 8; partition = 0], 
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO [node_id = 7; gpu_id = 48981; unique_id = 9063168802778326309; location_id = 30064771072; bdf = 30064771072; domain = 7; partition = 0], 
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO [node_id = 9; gpu_id = 60025; unique_id = 10157933205503563805; location_id = 38654705664; bdf = 38654705664; domain = 9; partition = 0], 
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO [node_id = 3; gpu_id = 27175; unique_id = 11656133260443653636; location_id = 12884901888; bdf = 12884901888; domain = 3; partition = 0], 
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO [node_id = 6; gpu_id = 10760; unique_id = 12744163373932945746; location_id = 25769803776; bdf = 25769803776; domain = 6; partition = 0], 
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO [node_id = 2; gpu_id = 65402; unique_id = 15152426024349502463; location_id = 8589934592; bdf = 8589934592; domain = 2; partition = 0], 
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO [node_id = 5; gpu_id = 54764; unique_id = 1875351247777246069; location_id = 21474836480; bdf = 21474836480; domain = 5; partition = 0], 
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO [node_id = 4; gpu_id = 16561; unique_id = 5072574656748564528; location_id = 17179869184; bdf = 17179869184; domain = 4; partition = 0], 
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO [node_id = 8; gpu_id = 32548; unique_id = 6347306318148548519; location_id = 34359738368; bdf = 34359738368; domain = 8; partition = 0], 
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO [node_id = 7; gpu_id = 48981; unique_id = 9063168802778326309; location_id = 30064771072; bdf = 30064771072; domain = 7; partition = 0], 
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO [node_id = 9; gpu_id = 60025; unique_id = 10157933205503563805; location_id = 38654705664; bdf = 38654705664; domain = 9; partition = 0], 
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO [node_id = 3; gpu_id = 27175; unique_id = 11656133260443653636; location_id = 12884901888; bdf = 12884901888; domain = 3; partition = 0], 
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO [node_id = 6; gpu_id = 10760; unique_id = 12744163373932945746; location_id = 25769803776; bdf = 25769803776; domain = 6; partition = 0], 
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO [node_id = 2; gpu_id = 65402; unique_id = 15152426024349502463; location_id = 8589934592; bdf = 8589934592; domain = 2; partition = 0], 
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO [node_id = 5; gpu_id = 54764; unique_id = 1875351247777246069; location_id = 21474836480; bdf = 21474836480; domain = 5; partition = 0], 
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO [node_id = 4; gpu_id = 16561; unique_id = 5072574656748564528; location_id = 17179869184; bdf = 17179869184; domain = 4; partition = 0], 
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO [node_id = 8; gpu_id = 32548; unique_id = 6347306318148548519; location_id = 34359738368; bdf = 34359738368; domain = 8; partition = 0], 
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO [node_id = 7; gpu_id = 48981; unique_id = 9063168802778326309; location_id = 30064771072; bdf = 30064771072; domain = 7; partition = 0], 
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO [node_id = 9; gpu_id = 60025; unique_id = 10157933205503563805; location_id = 38654705664; bdf = 38654705664; domain = 9; partition = 0], 
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO [node_id = 3; gpu_id = 27175; unique_id = 11656133260443653636; location_id = 12884901888; bdf = 12884901888; domain = 3; partition = 0], 
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO [node_id = 6; gpu_id = 10760; unique_id = 12744163373932945746; location_id = 25769803776; bdf = 25769803776; domain = 6; partition = 0], 
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO [node_id = 2; gpu_id = 65402; unique_id = 15152426024349502463; location_id = 8589934592; bdf = 8589934592; domain = 2; partition = 0], 
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO [node_id = 5; gpu_id = 54764; unique_id = 1875351247777246069; location_id = 21474836480; bdf = 21474836480; domain = 5; partition = 0], 
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO [node_id = 4; gpu_id = 16561; unique_id = 5072574656748564528; location_id = 17179869184; bdf = 17179869184; domain = 4; partition = 0], 
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO [node_id = 8; gpu_id = 32548; unique_id = 6347306318148548519; location_id = 34359738368; bdf = 34359738368; domain = 8; partition = 0], 
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO [node_id = 7; gpu_id = 48981; unique_id = 9063168802778326309; location_id = 30064771072; bdf = 30064771072; domain = 7; partition = 0], 
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO [node_id = 9; gpu_id = 60025; unique_id = 10157933205503563805; location_id = 38654705664; bdf = 38654705664; domain = 9; partition = 0], 
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO [node_id = 3; gpu_id = 27175; unique_id = 11656133260443653636; location_id = 12884901888; bdf = 12884901888; domain = 3; partition = 0], 
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO [node_id = 6; gpu_id = 10760; unique_id = 12744163373932945746; location_id = 25769803776; bdf = 25769803776; domain = 6; partition = 0], 
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO [node_id = 2; gpu_id = 65402; unique_id = 15152426024349502463; location_id = 8589934592; bdf = 8589934592; domain = 2; partition = 0], 
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO [node_id = 5; gpu_id = 54764; unique_id = 1875351247777246069; location_id = 21474836480; bdf = 21474836480; domain = 5; partition = 0], 
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO [node_id = 4; gpu_id = 16561; unique_id = 5072574656748564528; location_id = 17179869184; bdf = 17179869184; domain = 4; partition = 0], 
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO [node_id = 8; gpu_id = 32548; unique_id = 6347306318148548519; location_id = 34359738368; bdf = 34359738368; domain = 8; partition = 0], 
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO [node_id = 7; gpu_id = 48981; unique_id = 9063168802778326309; location_id = 30064771072; bdf = 30064771072; domain = 7; partition = 0], 
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO [node_id = 9; gpu_id = 60025; unique_id = 10157933205503563805; location_id = 38654705664; bdf = 38654705664; domain = 9; partition = 0], 
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO [node_id = 3; gpu_id = 27175; unique_id = 11656133260443653636; location_id = 12884901888; bdf = 12884901888; domain = 3; partition = 0], 
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO [node_id = 6; gpu_id = 10760; unique_id = 12744163373932945746; location_id = 25769803776; bdf = 25769803776; domain = 6; partition = 0], 
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO [node_id = 2; gpu_id = 65402; unique_id = 15152426024349502463; location_id = 8589934592; bdf = 8589934592; domain = 2; partition = 0], 
pdfc-aig-00000H:2664392:2678947 [6] NCCL INFO Comm config Blocking set to 1
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Using non-device net plugin version 0
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Using network IB
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO [node_id = 5; gpu_id = 54764; unique_id = 1875351247777246069; location_id = 21474836480; bdf = 21474836480; domain = 5; partition = 0], 
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO [node_id = 4; gpu_id = 16561; unique_id = 5072574656748564528; location_id = 17179869184; bdf = 17179869184; domain = 4; partition = 0], 
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO [node_id = 8; gpu_id = 32548; unique_id = 6347306318148548519; location_id = 34359738368; bdf = 34359738368; domain = 8; partition = 0], 
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO [node_id = 7; gpu_id = 48981; unique_id = 9063168802778326309; location_id = 30064771072; bdf = 30064771072; domain = 7; partition = 0], 
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO [node_id = 9; gpu_id = 60025; unique_id = 10157933205503563805; location_id = 38654705664; bdf = 38654705664; domain = 9; partition = 0], 
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO [node_id = 3; gpu_id = 27175; unique_id = 11656133260443653636; location_id = 12884901888; bdf = 12884901888; domain = 3; partition = 0], 
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO [node_id = 6; gpu_id = 10760; unique_id = 12744163373932945746; location_id = 25769803776; bdf = 25769803776; domain = 6; partition = 0], 
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO [node_id = 2; gpu_id = 65402; unique_id = 15152426024349502463; location_id = 8589934592; bdf = 8589934592; domain = 2; partition = 0], 
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO ncclCommInitRank comm 0x7f546b2a9f40 rank 3 nranks 8 cudaDev 3 nvmlDev 3 busId 500000 commId 0xba5618459451c60a - Init START
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO ncclCommInitRank comm 0x7ebda32a7760 rank 4 nranks 8 cudaDev 4 nvmlDev 4 busId 600000 commId 0xba5618459451c60a - Init START
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO ncclCommInitRank comm 0x7eed132a8a20 rank 2 nranks 8 cudaDev 2 nvmlDev 2 busId 400000 commId 0xba5618459451c60a - Init START
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO ncclCommInitRank comm 0x7f37cb2a9990 rank 5 nranks 8 cudaDev 5 nvmlDev 5 busId 700000 commId 0xba5618459451c60a - Init START
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO ncclCommInitRank comm 0x7ef3172a9970 rank 0 nranks 8 cudaDev 0 nvmlDev 0 busId 200000 commId 0xba5618459451c60a - Init START
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO ncclCommInitRank comm 0x7f912f2a9950 rank 6 nranks 8 cudaDev 6 nvmlDev 6 busId 800000 commId 0xba5618459451c60a - Init START
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO ncclCommInitRank comm 0x7eeed72a9790 rank 1 nranks 8 cudaDev 1 nvmlDev 1 busId 300000 commId 0xba5618459451c60a - Init START
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO ncclCommInitRank comm 0x7ec9372a90f0 rank 7 nranks 8 cudaDev 7 nvmlDev 7 busId 900000 commId 0xba5618459451c60a - Init START
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO initialized internal alternative rsmi functionality
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Setting affinity for GPU 7 to ffffffff,ffff0000,00000000
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Setting affinity for GPU 5 to ffffffff,ffff0000,00000000
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Setting affinity for GPU 2 to ffff,ffffffff
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Setting affinity for GPU 6 to ffffffff,ffff0000,00000000
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Setting affinity for GPU 1 to ffff,ffffffff
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Setting affinity for GPU 3 to ffff,ffffffff
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Setting affinity for GPU 4 to ffffffff,ffff0000,00000000
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Setting affinity for GPU 0 to ffff,ffffffff
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO comm 0x7ec9372a90f0 rank 7 nRanks 8 nNodes 1 localRanks 8 localRank 7 MNNVL 0
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO comm 0x7f912f2a9950 rank 6 nRanks 8 nNodes 1 localRanks 8 localRank 6 MNNVL 0
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO comm 0x7f37cb2a9990 rank 5 nRanks 8 nNodes 1 localRanks 8 localRank 5 MNNVL 0
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO comm 0x7eed132a8a20 rank 2 nRanks 8 nNodes 1 localRanks 8 localRank 2 MNNVL 0
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO comm 0x7ebda32a7760 rank 4 nRanks 8 nNodes 1 localRanks 8 localRank 4 MNNVL 0
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO comm 0x7f546b2a9f40 rank 3 nRanks 8 nNodes 1 localRanks 8 localRank 3 MNNVL 0
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO comm 0x7eeed72a9790 rank 1 nRanks 8 nNodes 1 localRanks 8 localRank 1 MNNVL 0
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO comm 0x7ef3172a9970 rank 0 nRanks 8 nNodes 1 localRanks 8 localRank 0 MNNVL 0
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: No external scheduler found, using internal implementation
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: No external scheduler found, using internal implementation
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: No external scheduler found, using internal implementation
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: No external scheduler found, using internal implementation
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: No external scheduler found, using internal implementation
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: No external scheduler found, using internal implementation
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: No external scheduler found, using internal implementation
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: No external scheduler found, using internal implementation
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Using MSCCL files from /opt/rocm/lib/../share/rccl/msccl-algorithms
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Using MSCCL files from /opt/rocm/lib/../share/rccl/msccl-algorithms
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Using MSCCL files from /opt/rocm/lib/../share/rccl/msccl-algorithms
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Using MSCCL files from /opt/rocm/lib/../share/rccl/msccl-algorithms
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Using MSCCL files from /opt/rocm/lib/../share/rccl/msccl-algorithms
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Using MSCCL files from /opt/rocm/lib/../share/rccl/msccl-algorithms
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Using MSCCL files from /opt/rocm/lib/../share/rccl/msccl-algorithms
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Using MSCCL files from /opt/rocm/lib/../share/rccl/msccl-algorithms
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Trees [0] 2/-1/-1->1->0 [1] 2/-1/-1->1->0 [2] 3/-1/-1->1->4 [3] 7/-1/-1->1->6 [4] 5/-1/-1->1->3 [5] 6/-1/-1->1->5 [6] 7/-1/-1->1->4 [7] 0/-1/-1->1->2 [8] 0/-1/-1->1->2 [9] 4/-1/-1->1->3 [10] 6/-1/-1->1->7 [11] 3/-1/-1->1->5 [12] 5/-1/-1->1->6 [13] 4/-1/-1->1->7 [14] 2/-1/-1->1->0 [15] 2/-1/-1->1->0 [16] 3/-1/-1->1->4 [17] 7/-1/-1->1->6 [18] 5/-1/-1->1->3 [19] 6/-1/-1->1->5 [20] 7/-1/-1->1->4 [21] 0/-1/-1->1->2 [22] 0/-1/-1->1->2 [23] 4/-1/-1->1->3 [24] 6/-1/-1->1->7 [25] 3/-1/-1->1->5 [26] 5/-1/-1->1->6 [27] 4/-1/-1->1->7 [28] 2/-1/-1->1->0 [29] 2/-1/-1->1->0 [30] 3/-1/-1->1->4 [31] 7/-1/-1->1->6 [32] 5/-1/-1->1->3 [33] 6/-1/-1->1->5 [34] 7/-1/-1->1->4 [35] 0/-1/-1->1->2 [36] 0/-1/-1->1->2 [37] 4/-1/-1->1->3 [38] 6/-1/-1->1->7 [39] 3/-1/-1->1->5 [40] 5/-1/-1->1->6 [41] 4/-1/-1->1->7 [42] 2/-1/-1->1->0 [43] 2/-1/-1->1->0 [44] 3/-1/-1->1->4 [45] 7/-1/-1->1->6 [46] 5/-1/-1->1->3 [47] 6/-1/-1->1->5 [48] 7/-1/-1->1->4 [49] 0/-1/-1->1->2 [50] 0/-1/-1->1->2 [51] 4/-1/-1->1->3 [52] 6/-1/-1->1->7 [53] 3/-1/-1->1->5 [54] 5/-1/-1->1->6 [55] 4/-1/-1->1->7 comm 0x7eeed72a9790 nRanks 08 busId 300000
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO P2P Chunksize set to 524288
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Trees [0] 3/-1/-1->2->1 [1] 3/-1/-1->2->1 [2] 4/-1/-1->2->0 [3] 4/-1/-1->2->0 [4] 7/-1/-1->2->5 [5] 7/-1/-1->2->6 [6] 5/-1/-1->2->6 [7] 1/-1/-1->2->3 [8] 1/-1/-1->2->3 [9] 0/-1/-1->2->4 [10] 0/-1/-1->2->4 [11] 5/-1/-1->2->7 [12] 6/-1/-1->2->7 [13] 6/-1/-1->2->5 [14] 3/-1/-1->2->1 [15] 3/-1/-1->2->1 [16] 4/-1/-1->2->0 [17] 4/-1/-1->2->0 [18] 7/-1/-1->2->5 [19] 7/-1/-1->2->6 [20] 5/-1/-1->2->6 [21] 1/-1/-1->2->3 [22] 1/-1/-1->2->3 [23] 0/-1/-1->2->4 [24] 0/-1/-1->2->4 [25] 5/-1/-1->2->7 [26] 6/-1/-1->2->7 [27] 6/-1/-1->2->5 [28] 3/-1/-1->2->1 [29] 3/-1/-1->2->1 [30] 4/-1/-1->2->0 [31] 4/-1/-1->2->0 [32] 7/-1/-1->2->5 [33] 7/-1/-1->2->6 [34] 5/-1/-1->2->6 [35] 1/-1/-1->2->3 [36] 1/-1/-1->2->3 [37] 0/-1/-1->2->4 [38] 0/-1/-1->2->4 [39] 5/-1/-1->2->7 [40] 6/-1/-1->2->7 [41] 6/-1/-1->2->5 [42] 3/-1/-1->2->1 [43] 3/-1/-1->2->1 [44] 4/-1/-1->2->0 [45] 4/-1/-1->2->0 [46] 7/-1/-1->2->5 [47] 7/-1/-1->2->6 [48] 5/-1/-1->2->6 [49] 1/-1/-1->2->3 [50] 1/-1/-1->2->3 [51] 0/-1/-1->2->4 [52] 0/-1/-1->2->4 [53] 5/-1/-1->2->7 [54] 6/-1/-1->2->7 [55] 6/-1/-1->2->5 comm 0x7eed132a8a20 nRanks 08 busId 400000
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO P2P Chunksize set to 524288
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Trees [0] 7/-1/-1->6->5 [1] -1/-1/-1->6->7 [2] 5/-1/-1->6->3 [3] 1/-1/-1->6->4 [4] -1/-1/-1->6->4 [5] 2/-1/-1->6->1 [6] 2/-1/-1->6->3 [7] 5/-1/-1->6->7 [8] 7/-1/-1->6->-1 [9] 3/-1/-1->6->5 [10] 4/-1/-1->6->1 [11] 4/-1/-1->6->-1 [12] 1/-1/-1->6->2 [13] 3/-1/-1->6->2 [14] 7/-1/-1->6->5 [15] -1/-1/-1->6->7 [16] 5/-1/-1->6->3 [17] 1/-1/-1->6->4 [18] -1/-1/-1->6->4 [19] 2/-1/-1->6->1 [20] 2/-1/-1->6->3 [21] 5/-1/-1->6->7 [22] 7/-1/-1->6->-1 [23] 3/-1/-1->6->5 [24] 4/-1/-1->6->1 [25] 4/-1/-1->6->-1 [26] 1/-1/-1->6->2 [27] 3/-1/-1->6->2 [28] 7/-1/-1->6->5 [29] -1/-1/-1->6->7 [30] 5/-1/-1->6->3 [31] 1/-1/-1->6->4 [32] -1/-1/-1->6->4 [33] 2/-1/-1->6->1 [34] 2/-1/-1->6->3 [35] 5/-1/-1->6->7 [36] 7/-1/-1->6->-1 [37] 3/-1/-1->6->5 [38] 4/-1/-1->6->1 [39] 4/-1/-1->6->-1 [40] 1/-1/-1->6->2 [41] 3/-1/-1->6->2 [42] 7/-1/-1->6->5 [43] -1/-1/-1->6->7 [44] 5/-1/-1->6->3 [45] 1/-1/-1->6->4 [46] -1/-1/-1->6->4 [47] 2/-1/-1->6->1 [48] 2/-1/-1->6->3 [49] 5/-1/-1->6->7 [50] 7/-1/-1->6->-1 [51] 3/-1/-1->6->5 [52] 4/-1/-1->6->1 [53] 4/-1/-1->6->-1 [54] 1/-1/-1->6->2 [55] 3/-1/-1->6->2 comm 0x7f912f2a9950 nRanks 08 busId 800000
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO P2P Chunksize set to 524288
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Trees [0] -1/-1/-1->7->6 [1] 6/-1/-1->7->5 [2] -1/-1/-1->7->5 [3] 3/-1/-1->7->1 [4] 4/-1/-1->7->2 [5] 4/-1/-1->7->2 [6] 3/-1/-1->7->1 [7] 6/-1/-1->7->-1 [8] 5/-1/-1->7->6 [9] 5/-1/-1->7->-1 [10] 1/-1/-1->7->3 [11] 2/-1/-1->7->4 [12] 2/-1/-1->7->4 [13] 1/-1/-1->7->3 [14] -1/-1/-1->7->6 [15] 6/-1/-1->7->5 [16] -1/-1/-1->7->5 [17] 3/-1/-1->7->1 [18] 4/-1/-1->7->2 [19] 4/-1/-1->7->2 [20] 3/-1/-1->7->1 [21] 6/-1/-1->7->-1 [22] 5/-1/-1->7->6 [23] 5/-1/-1->7->-1 [24] 1/-1/-1->7->3 [25] 2/-1/-1->7->4 [26] 2/-1/-1->7->4 [27] 1/-1/-1->7->3 [28] -1/-1/-1->7->6 [29] 6/-1/-1->7->5 [30] -1/-1/-1->7->5 [31] 3/-1/-1->7->1 [32] 4/-1/-1->7->2 [33] 4/-1/-1->7->2 [34] 3/-1/-1->7->1 [35] 6/-1/-1->7->-1 [36] 5/-1/-1->7->6 [37] 5/-1/-1->7->-1 [38] 1/-1/-1->7->3 [39] 2/-1/-1->7->4 [40] 2/-1/-1->7->4 [41] 1/-1/-1->7->3 [42] -1/-1/-1->7->6 [43] 6/-1/-1->7->5 [44] -1/-1/-1->7->5 [45] 3/-1/-1->7->1 [46] 4/-1/-1->7->2 [47] 4/-1/-1->7->2 [48] 3/-1/-1->7->1 [49] 6/-1/-1->7->-1 [50] 5/-1/-1->7->6 [51] 5/-1/-1->7->-1 [52] 1/-1/-1->7->3 [53] 2/-1/-1->7->4 [54] 2/-1/-1->7->4 [55] 1/-1/-1->7->3 comm 0x7ec9372a90f0 nRanks 08 busId 900000
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO P2P Chunksize set to 524288
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Trees [0] 5/-1/-1->4->3 [1] 5/-1/-1->4->3 [2] 1/-1/-1->4->2 [3] 6/-1/-1->4->2 [4] 6/-1/-1->4->7 [5] -1/-1/-1->4->7 [6] 1/-1/-1->4->0 [7] 3/-1/-1->4->5 [8] 3/-1/-1->4->5 [9] 2/-1/-1->4->1 [10] 2/-1/-1->4->6 [11] 7/-1/-1->4->6 [12] 7/-1/-1->4->-1 [13] 0/-1/-1->4->1 [14] 5/-1/-1->4->3 [15] 5/-1/-1->4->3 [16] 1/-1/-1->4->2 [17] 6/-1/-1->4->2 [18] 6/-1/-1->4->7 [19] -1/-1/-1->4->7 [20] 1/-1/-1->4->0 [21] 3/-1/-1->4->5 [22] 3/-1/-1->4->5 [23] 2/-1/-1->4->1 [24] 2/-1/-1->4->6 [25] 7/-1/-1->4->6 [26] 7/-1/-1->4->-1 [27] 0/-1/-1->4->1 [28] 5/-1/-1->4->3 [29] 5/-1/-1->4->3 [30] 1/-1/-1->4->2 [31] 6/-1/-1->4->2 [32] 6/-1/-1->4->7 [33] -1/-1/-1->4->7 [34] 1/-1/-1->4->0 [35] 3/-1/-1->4->5 [36] 3/-1/-1->4->5 [37] 2/-1/-1->4->1 [38] 2/-1/-1->4->6 [39] 7/-1/-1->4->6 [40] 7/-1/-1->4->-1 [41] 0/-1/-1->4->1 [42] 5/-1/-1->4->3 [43] 5/-1/-1->4->3 [44] 1/-1/-1->4->2 [45] 6/-1/-1->4->2 [46] 6/-1/-1->4->7 [47] -1/-1/-1->4->7 [48] 1/-1/-1->4->0 [49] 3/-1/-1->4->5 [50] 3/-1/-1->4->5 [51] 2/-1/-1->4->1 [52] 2/-1/-1->4->6 [53] 7/-1/-1->4->6 [54] 7/-1/-1->4->-1 [55] 0/-1/-1->4->1 comm 0x7ebda32a7760 nRanks 08 busId 600000
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO P2P Chunksize set to 524288
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Trees [0] 4/-1/-1->3->2 [1] 4/-1/-1->3->2 [2] 6/-1/-1->3->1 [3] 5/-1/-1->3->7 [4] 1/-1/-1->3->0 [5] 5/-1/-1->3->0 [6] 6/-1/-1->3->7 [7] 2/-1/-1->3->4 [8] 2/-1/-1->3->4 [9] 1/-1/-1->3->6 [10] 7/-1/-1->3->5 [11] 0/-1/-1->3->1 [12] 0/-1/-1->3->5 [13] 7/-1/-1->3->6 [14] 4/-1/-1->3->2 [15] 4/-1/-1->3->2 [16] 6/-1/-1->3->1 [17] 5/-1/-1->3->7 [18] 1/-1/-1->3->0 [19] 5/-1/-1->3->0 [20] 6/-1/-1->3->7 [21] 2/-1/-1->3->4 [22] 2/-1/-1->3->4 [23] 1/-1/-1->3->6 [24] 7/-1/-1->3->5 [25] 0/-1/-1->3->1 [26] 0/-1/-1->3->5 [27] 7/-1/-1->3->6 [28] 4/-1/-1->3->2 [29] 4/-1/-1->3->2 [30] 6/-1/-1->3->1 [31] 5/-1/-1->3->7 [32] 1/-1/-1->3->0 [33] 5/-1/-1->3->0 [34] 6/-1/-1->3->7 [35] 2/-1/-1->3->4 [36] 2/-1/-1->3->4 [37] 1/-1/-1->3->6 [38] 7/-1/-1->3->5 [39] 0/-1/-1->3->1 [40] 0/-1/-1->3->5 [41] 7/-1/-1->3->6 [42] 4/-1/-1->3->2 [43] 4/-1/-1->3->2 [44] 6/-1/-1->3->1 [45] 5/-1/-1->3->7 [46] 1/-1/-1->3->0 [47] 5/-1/-1->3->0 [48] 6/-1/-1->3->7 [49] 2/-1/-1->3->4 [50] 2/-1/-1->3->4 [51] 1/-1/-1->3->6 [52] 7/-1/-1->3->5 [53] 0/-1/-1->3->1 [54] 0/-1/-1->3->5 [55] 7/-1/-1->3->6 comm 0x7f546b2a9f40 nRanks 08 busId 500000
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 00/56 :    0   1   2   3   4   5   6   7
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO P2P Chunksize set to 524288
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 01/56 :    0   1   2   3   4   5   7   6
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 02/56 :    0   2   4   1   3   6   5   7
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 03/56 :    0   2   4   6   1   7   3   5
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 04/56 :    0   3   1   5   2   7   4   6
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 05/56 :    0   3   5   1   6   2   7   4
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 06/56 :    0   4   1   7   3   6   2   5
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 07/56 :    0   7   6   5   4   3   2   1
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 08/56 :    0   6   7   5   4   3   2   1
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 09/56 :    0   7   5   6   3   1   4   2
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 10/56 :    0   5   3   7   1   6   4   2
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 11/56 :    0   6   4   7   2   5   1   3
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 12/56 :    0   4   7   2   6   1   5   3
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 13/56 :    0   5   2   6   3   7   1   4
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 14/56 :    0   1   2   3   4   5   6   7
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 15/56 :    0   1   2   3   4   5   7   6
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 16/56 :    0   2   4   1   3   6   5   7
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 17/56 :    0   2   4   6   1   7   3   5
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 18/56 :    0   3   1   5   2   7   4   6
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 19/56 :    0   3   5   1   6   2   7   4
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 20/56 :    0   4   1   7   3   6   2   5
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 21/56 :    0   7   6   5   4   3   2   1
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 22/56 :    0   6   7   5   4   3   2   1
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 23/56 :    0   7   5   6   3   1   4   2
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 24/56 :    0   5   3   7   1   6   4   2
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 25/56 :    0   6   4   7   2   5   1   3
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 26/56 :    0   4   7   2   6   1   5   3
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 27/56 :    0   5   2   6   3   7   1   4
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 28/56 :    0   1   2   3   4   5   6   7
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 29/56 :    0   1   2   3   4   5   7   6
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 30/56 :    0   2   4   1   3   6   5   7
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 31/56 :    0   2   4   6   1   7   3   5
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 32/56 :    0   3   1   5   2   7   4   6
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 33/56 :    0   3   5   1   6   2   7   4
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 34/56 :    0   4   1   7   3   6   2   5
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 35/56 :    0   7   6   5   4   3   2   1
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 36/56 :    0   6   7   5   4   3   2   1
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 37/56 :    0   7   5   6   3   1   4   2
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 38/56 :    0   5   3   7   1   6   4   2
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 39/56 :    0   6   4   7   2   5   1   3
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 40/56 :    0   4   7   2   6   1   5   3
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 41/56 :    0   5   2   6   3   7   1   4
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 42/56 :    0   1   2   3   4   5   6   7
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 43/56 :    0   1   2   3   4   5   7   6
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 44/56 :    0   2   4   1   3   6   5   7
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 45/56 :    0   2   4   6   1   7   3   5
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 46/56 :    0   3   1   5   2   7   4   6
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 47/56 :    0   3   5   1   6   2   7   4
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 48/56 :    0   4   1   7   3   6   2   5
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 49/56 :    0   7   6   5   4   3   2   1
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 50/56 :    0   6   7   5   4   3   2   1
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 51/56 :    0   7   5   6   3   1   4   2
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 52/56 :    0   5   3   7   1   6   4   2
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 53/56 :    0   6   4   7   2   5   1   3
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 54/56 :    0   4   7   2   6   1   5   3
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 55/56 :    0   5   2   6   3   7   1   4
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Trees [0] 6/-1/-1->5->4 [1] 7/-1/-1->5->4 [2] 7/-1/-1->5->6 [3] -1/-1/-1->5->3 [4] 2/-1/-1->5->1 [5] 1/-1/-1->5->3 [6] -1/-1/-1->5->2 [7] 4/-1/-1->5->6 [8] 4/-1/-1->5->7 [9] 6/-1/-1->5->7 [10] 3/-1/-1->5->-1 [11] 1/-1/-1->5->2 [12] 3/-1/-1->5->1 [13] 2/-1/-1->5->-1 [14] 6/-1/-1->5->4 [15] 7/-1/-1->5->4 [16] 7/-1/-1->5->6 [17] -1/-1/-1->5->3 [18] 2/-1/-1->5->1 [19] 1/-1/-1->5->3 [20] -1/-1/-1->5->2 [21] 4/-1/-1->5->6 [22] 4/-1/-1->5->7 [23] 6/-1/-1->5->7 [24] 3/-1/-1->5->-1 [25] 1/-1/-1->5->2 [26] 3/-1/-1->5->1 [27] 2/-1/-1->5->-1 [28] 6/-1/-1->5->4 [29] 7/-1/-1->5->4 [30] 7/-1/-1->5->6 [31] -1/-1/-1->5->3 [32] 2/-1/-1->5->1 [33] 1/-1/-1->5->3 [34] -1/-1/-1->5->2 [35] 4/-1/-1->5->6 [36] 4/-1/-1->5->7 [37] 6/-1/-1->5->7 [38] 3/-1/-1->5->-1 [39] 1/-1/-1->5->2 [40] 3/-1/-1->5->1 [41] 2/-1/-1->5->-1 [42] 6/-1/-1->5->4 [43] 7/-1/-1->5->4 [44] 7/-1/-1->5->6 [45] -1/-1/-1->5->3 [46] 2/-1/-1->5->1 [47] 1/-1/-1->5->3 [48] -1/-1/-1->5->2 [49] 4/-1/-1->5->6 [50] 4/-1/-1->5->7 [51] 6/-1/-1->5->7 [52] 3/-1/-1->5->-1 [53] 1/-1/-1->5->2 [54] 3/-1/-1->5->1 [55] 2/-1/-1->5->-1 comm 0x7f37cb2a9990 nRanks 08 busId 700000
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO P2P Chunksize set to 524288
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Trees [0] 1/-1/-1->0->-1 [1] 1/-1/-1->0->-1 [2] 2/-1/-1->0->-1 [3] 2/-1/-1->0->-1 [4] 3/-1/-1->0->-1 [5] 3/-1/-1->0->-1 [6] 4/-1/-1->0->-1 [7] -1/-1/-1->0->1 [8] -1/-1/-1->0->1 [9] -1/-1/-1->0->2 [10] -1/-1/-1->0->2 [11] -1/-1/-1->0->3 [12] -1/-1/-1->0->3 [13] -1/-1/-1->0->4 [14] 1/-1/-1->0->-1 [15] 1/-1/-1->0->-1 [16] 2/-1/-1->0->-1 [17] 2/-1/-1->0->-1 [18] 3/-1/-1->0->-1 [19] 3/-1/-1->0->-1 [20] 4/-1/-1->0->-1 [21] -1/-1/-1->0->1 [22] -1/-1/-1->0->1 [23] -1/-1/-1->0->2 [24] -1/-1/-1->0->2 [25] -1/-1/-1->0->3 [26] -1/-1/-1->0->3 [27] -1/-1/-1->0->4 [28] 1/-1/-1->0->-1 [29] 1/-1/-1->0->-1 [30] 2/-1/-1->0->-1 [31] 2/-1/-1->0->-1 [32] 3/-1/-1->0->-1 [33] 3/-1/-1->0->-1 [34] 4/-1/-1->0->-1 [35] -1/-1/-1->0->1 [36] -1/-1/-1->0->1 [37] -1/-1/-1->0->2 [38] -1/-1/-1->0->2 [39] -1/-1/-1->0->3 [40] -1/-1/-1->0->3 [41] -1/-1/-1->0->4 [42] 1/-1/-1->0->-1 [43] 1/-1/-1->0->-1 [44] 2/-1/-1->0->-1 [45] 2/-1/-1->0->-1 [46] 3/-1/-1->0->-1 [47] 3/-1/-1->0->-1 [48] 4/-1/-1->0->-1 [49] -1/-1/-1->0->1 [50] -1/-1/-1->0->1 [51] -1/-1/-1->0->2 [52] -1/-1/-1->0->2 [53] -1/-1/-1->0->3 [54] -1/-1/-1->0->3 [55] -1/-1/-1->0->4 comm 0x7ef3172a9970 nRanks 08 busId 200000
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO P2P Chunksize set to 524288
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 00/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 01/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 14/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 15/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 28/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 29/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 00/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 00/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 42/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 01/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 02/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 43/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 14/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 14/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 16/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 15/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 00/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 28/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 28/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 09/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 30/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 29/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 00/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 42/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 14/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 42/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 01/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 00/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 43/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 14/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 44/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 23/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 15/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 08/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 28/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 28/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 37/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 14/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 29/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 42/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 42/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 22/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 43/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 51/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 28/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 36/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 42/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 50/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 02/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 03/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 00/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 16/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 01/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 17/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 14/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 30/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 15/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 31/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 28/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 44/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 29/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 45/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 42/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 10/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 43/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 13/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 01/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 24/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 04/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 27/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 15/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 38/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 18/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 41/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 29/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 52/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 32/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 43/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 55/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 46/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 02/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 02/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 11/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 03/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 16/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 16/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 25/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 17/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 30/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 30/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 39/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 31/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 44/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 44/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 53/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 45/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 00/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 01/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 14/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 15/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 28/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 29/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 42/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 43/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 04/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 05/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 18/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 19/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 32/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 33/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 46/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 47/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 03/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 04/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 01/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 17/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 18/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 02/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 31/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 03/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 15/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 32/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 16/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 05/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 45/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 29/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 46/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 17/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 30/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 19/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 43/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 31/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 44/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 33/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 45/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 47/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 11/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 06/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 12/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 11/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 03/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 25/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 20/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 12/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 26/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 25/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 17/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 39/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 34/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 40/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 26/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 11/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 39/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 53/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 31/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 12/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 48/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 09/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 54/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 02/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 03/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 40/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 53/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 25/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 13/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 06/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 06/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 45/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 26/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 23/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 16/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 17/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 54/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 27/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 39/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 20/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 20/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 37/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 40/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 31/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 30/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 41/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 53/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 34/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 34/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 51/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 54/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 45/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 44/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 55/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 48/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 48/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 03/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 05/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 04/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 12/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 06/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 06/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 05/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 13/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 05/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 12/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 10/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 12/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 13/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 17/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 06/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 19/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 11/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 13/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 18/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 20/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 20/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 26/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 19/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 27/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 19/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 26/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 24/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 26/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 31/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 27/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 20/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 33/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 25/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 32/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 27/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 34/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 40/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 34/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 33/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 41/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 33/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 40/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 38/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 40/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 41/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 45/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 34/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 47/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 39/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 48/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 46/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 41/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 54/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 47/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 48/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 55/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 47/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 54/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 54/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 52/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 48/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 55/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 53/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 55/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 10/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 04/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 02/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 09/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 05/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 13/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 04/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 05/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 06/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 13/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 10/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 11/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 24/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 04/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 18/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 13/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 16/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 23/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 19/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 12/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 27/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 05/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 19/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 18/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 27/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 20/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 24/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 25/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 38/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 32/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 18/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 27/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 37/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 33/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 26/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 30/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 41/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 33/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 19/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 32/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 38/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 41/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 39/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 52/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 46/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 34/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 32/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 41/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 47/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 51/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 40/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 55/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 47/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 44/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 33/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 46/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 52/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 55/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 53/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 48/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 46/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 55/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 54/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 47/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 03/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 10/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 10/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 08/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 06/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 09/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 04/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 11/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 10/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 17/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 11/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 12/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 09/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 09/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 08/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 24/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 23/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 20/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 22/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 24/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 18/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 10/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 09/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 24/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 31/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 25/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 25/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 26/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 23/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 23/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 22/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 37/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 34/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 36/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 38/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 38/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 32/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 24/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 23/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 38/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 45/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 39/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 39/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 40/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 37/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 37/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 36/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 48/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 51/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 50/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 52/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 52/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 46/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 38/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 37/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 53/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 52/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 53/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 54/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 51/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 51/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 50/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 52/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 51/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 07/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 07/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 09/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 08/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 07/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 21/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 07/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 21/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 02/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 08/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 07/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 23/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 08/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 07/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 01/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 22/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 07/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 21/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 08/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 35/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 21/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 08/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 07/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 35/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 22/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 16/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 21/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 37/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 22/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 15/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 21/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 36/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 35/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 21/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 22/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 35/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 49/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 49/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 21/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 22/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 36/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 30/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 35/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 36/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 51/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 50/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 29/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 49/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 35/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 35/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 36/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 49/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 35/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 50/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 36/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 44/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 50/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 49/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 43/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 49/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 49/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 50/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 49/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 50/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Connected all rings comm 0x7ef3172a9970 nRanks 08 busId 200000
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Connected all rings comm 0x7f546b2a9f40 nRanks 08 busId 500000
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Connected all rings comm 0x7ebda32a7760 nRanks 08 busId 600000
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Connected all rings comm 0x7ec9372a90f0 nRanks 08 busId 900000
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Connected all rings comm 0x7f912f2a9950 nRanks 08 busId 800000
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Connected all rings comm 0x7f37cb2a9990 nRanks 08 busId 700000
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 07/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Connected all rings comm 0x7eed132a8a20 nRanks 08 busId 400000
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Connected all rings comm 0x7eeed72a9790 nRanks 08 busId 300000
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 08/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 21/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 22/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 35/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 36/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 07/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 07/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 01/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 07/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 49/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 02/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 08/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 08/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 07/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 50/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 08/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 21/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 21/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 07/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 07/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 15/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 21/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 22/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 22/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 08/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 16/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 21/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 35/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 22/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 35/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 21/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 36/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 35/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 36/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 29/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 21/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 22/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 49/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 36/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 49/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 35/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 30/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 35/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 50/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 49/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 50/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 43/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 35/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 50/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 36/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 49/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 09/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 44/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 49/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 10/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 49/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 50/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 23/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 24/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 37/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 38/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 51/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 52/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 04/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 09/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 09/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 10/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 18/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 23/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 10/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 03/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 23/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 24/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 10/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 08/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 12/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 32/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 06/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 37/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 11/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 09/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 24/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 37/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 17/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 38/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 24/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 26/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 46/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 22/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 20/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 51/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 25/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 38/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 51/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 31/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 23/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 38/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 40/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 52/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 34/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 36/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 52/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 39/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 45/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 37/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 11/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 54/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 52/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 48/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 50/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 12/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 53/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 51/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 25/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 26/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 39/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 40/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 53/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 54/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 02/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 04/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 06/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 05/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 09/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 04/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 04/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 16/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 13/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 10/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 13/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 05/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 05/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 20/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 18/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 19/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 23/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 18/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 18/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 30/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 27/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 24/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 27/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 19/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 19/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 34/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 33/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 32/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 37/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 32/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 32/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 44/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 38/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 41/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 41/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 33/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 33/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 48/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 47/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 46/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 51/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 46/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 52/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 46/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 55/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 55/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 47/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 47/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 13/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 27/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 06/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 41/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 20/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 55/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 34/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 12/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 48/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 05/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 04/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 03/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 05/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 13/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 10/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 11/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 12/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 06/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 26/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 06/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 13/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 19/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 18/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 17/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 27/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 19/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 24/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 25/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 26/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 20/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 40/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 20/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 27/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 33/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 31/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 32/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 41/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 38/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 33/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 39/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 34/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 40/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 54/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 41/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 34/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 47/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 45/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 46/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 55/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 52/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 53/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 47/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 54/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 55/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 48/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 48/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 06/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 09/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 11/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 13/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 20/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 23/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 25/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 34/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 39/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 48/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 03/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 53/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 12/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 11/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 04/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 02/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 11/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 17/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 12/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 05/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 06/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 12/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 26/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 25/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 18/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 16/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 25/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 19/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 26/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 31/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 20/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 26/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 32/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 40/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 30/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 39/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 39/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 45/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 34/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 40/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 33/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 40/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 44/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 54/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 53/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 46/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 53/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 48/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 54/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 47/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 54/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 03/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 04/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 17/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 18/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 31/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 32/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 45/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 03/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 02/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 02/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 05/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 11/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 17/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 03/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 19/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 16/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 16/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 17/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 25/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 30/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 30/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 31/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 39/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 44/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 44/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 45/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 53/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 27/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 37/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 41/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 51/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 55/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 02/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 03/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 16/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 17/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 10/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 30/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 13/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 31/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 31/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 44/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 24/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 33/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 45/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 45/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 27/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 01/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 47/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 38/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 02/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 15/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 41/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 16/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 52/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 29/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 55/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 30/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 43/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 46/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 44/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 00/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 08/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 14/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 22/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 28/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 36/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 42/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 50/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 00/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 00/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 00/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 01/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 01/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 01/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 00/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 14/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 14/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 00/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 14/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 09/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 15/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 15/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 01/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 14/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 28/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 15/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 28/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 14/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 23/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 29/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 28/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 29/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 15/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 28/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 42/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 29/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 42/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 28/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 37/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 43/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 43/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 42/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 29/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 42/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 00/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 43/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 42/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 51/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 01/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 43/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 14/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 15/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 28/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 29/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 42/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 43/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Connected all trees
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Connected all trees
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO threadThresholds 8/8/64 | 64/8/64 | 256 | 256
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO 56 coll channels, 56 collnet channels, 0 nvls channels, 64 p2p channels, 8 p2p channels per peer
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Connected all trees
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO threadThresholds 8/8/64 | 64/8/64 | 256 | 256
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO 56 coll channels, 56 collnet channels, 0 nvls channels, 64 p2p channels, 8 p2p channels per peer
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO threadThresholds 8/8/64 | 64/8/64 | 256 | 256
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Connected all trees
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO 56 coll channels, 56 collnet channels, 0 nvls channels, 64 p2p channels, 8 p2p channels per peer
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Connected all trees
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Connected all trees
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Connected all trees
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO threadThresholds 8/8/64 | 64/8/64 | 256 | 256
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO threadThresholds 8/8/64 | 64/8/64 | 256 | 256
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO threadThresholds 8/8/64 | 64/8/64 | 256 | 256
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Connected all trees
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO 56 coll channels, 56 collnet channels, 0 nvls channels, 64 p2p channels, 8 p2p channels per peer
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO 56 coll channels, 56 collnet channels, 0 nvls channels, 64 p2p channels, 8 p2p channels per peer
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO 56 coll channels, 56 collnet channels, 0 nvls channels, 64 p2p channels, 8 p2p channels per peer
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO threadThresholds 8/8/64 | 64/8/64 | 256 | 256
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO 56 coll channels, 56 collnet channels, 0 nvls channels, 64 p2p channels, 8 p2p channels per peer
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO threadThresholds 8/8/64 | 64/8/64 | 256 | 256
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO 56 coll channels, 56 collnet channels, 0 nvls channels, 64 p2p channels, 8 p2p channels per peer
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 02/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 03/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 02/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 03/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 01/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 01/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 03/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 03/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 02/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 03/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 02/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 03/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 00/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 01/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 00/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 01/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 03/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 00/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 01/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 02/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 03/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 00/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 02/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 03/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 00/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 01/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 02/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 03/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 02/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 03/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 00/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 01/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 02/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 00/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 01/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 00/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 02/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 03/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 00/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 00/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 01/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 01/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 00/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 00/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 02/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 02/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 01/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 01/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 03/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 02/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 03/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 02/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 03/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 00/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 01/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 02/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 00/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 01/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 02/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 00/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 00/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 00/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 01/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 01/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 01/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 03/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 03/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 02/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 00/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 00/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 01/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 00/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 01/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 02/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 00/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 00/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 00/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 01/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 02/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 01/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 01/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 01/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 02/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 03/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 02/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 02/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 00/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 03/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 02/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 03/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 03/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 01/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 03/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 00/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 02/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 01/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 03/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 02/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 03/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 00/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 00/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 01/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 01/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 02/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 00/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 02/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 00/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 01/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 00/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 02/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 00/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 01/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 03/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 01/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 01/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 03/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 02/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 03/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 03/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 00/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 01/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 02/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 00/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 00/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 01/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 01/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 02/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 03/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 00/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 01/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 02/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 03/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 00/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 00/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 03/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 01/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 02/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 03/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 03/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 00/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 00/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 00/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 01/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 01/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 01/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 02/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 02/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 03/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 02/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 02/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 02/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 03/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 03/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 02/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 03/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 03/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 00/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 02/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 01/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 01/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 03/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 03/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 02/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 03/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1418250848
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1590217312
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1583925856
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1583925856
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1418250848
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1644743264
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1611188832
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1590217312
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1583925856
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1644743264
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1583925856
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1644743264
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1644743264
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1611188832
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1644743264
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1644743264
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 04/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 04/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 04/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 04/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 04/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 04/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 04/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 05/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 04/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 05/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 05/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 05/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 05/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 05/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 05/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 06/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 05/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 06/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 06/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 06/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 06/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 06/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 06/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 07/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 06/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 04/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 05/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 04/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 05/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 05/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 04/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 06/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 06/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 06/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 04/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 06/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 04/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 07/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 05/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 05/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 07/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 05/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 07/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 07/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 05/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 06/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 06/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 07/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 06/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 07/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 07/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 07/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 05/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 06/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 04/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 07/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 06/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 04/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 07/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 04/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 05/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 04/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 07/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 06/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 05/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 05/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 07/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 06/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 07/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 07/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 07/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 07/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 04/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 04/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 06/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 04/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 07/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 05/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 06/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 04/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 04/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 07/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 04/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 05/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 07/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 07/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 07/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 07/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 05/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 07/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 07/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 04/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 06/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 04/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 04/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 05/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 07/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 04/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 06/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 05/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 05/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 06/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 06/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 05/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 07/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 07/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 07/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 07/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 06/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 07/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 07/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 07/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 04/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 04/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 04/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 04/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 05/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 05/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 04/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 05/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 05/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 04/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 05/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 06/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 05/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 06/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 06/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 06/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 07/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 06/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 07/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 06/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 07/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 07/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 07/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 07/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 05/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 07/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 06/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 07/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 04/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 04/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 04/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 05/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 05/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 04/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 04/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 04/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 06/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 05/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 06/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 05/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 05/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 05/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 06/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 06/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 06/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 06/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 04/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 05/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 06/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 04/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 05/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 06/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1598605920
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1760086624
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1598605920
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1598605920
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1760086624
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1598605920
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1785252448
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1760086624
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1598605920
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1760086624
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1785252448
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1760086624
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1598605920
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1760086624
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1598605920
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1785252448
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1760086624
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1785252448
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1812515424
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1757989472
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1785252448
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1785252448
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1785252448
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 13/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 30/0 : 6[800000] -> 7[900000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 15/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 09/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 29/0 : 5[700000] -> 6[800000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 10/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 23/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 17/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 12/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 18/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 11/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 16/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 25/0 : 1[300000] -> 2[400000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 31/0 : 7[900000] -> 0[200000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 20/0 : 4[600000] -> 5[700000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 26/0 : 2[400000] -> 3[500000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 24/0 : 0[200000] -> 1[300000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 19/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 27/0 : 3[500000] -> 4[600000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 13/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 15/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 17/0 : 1[300000] -> 3[500000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 18/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 21/0 : 5[700000] -> 7[900000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 11/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 23/0 : 7[900000] -> 1[300000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 14/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 26/0 : 2[400000] -> 4[600000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 08/0 : 0[200000] -> 2[400000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 12/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 27/0 : 3[500000] -> 5[700000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 22/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 20/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 30/0 : 6[800000] -> 0[200000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 28/0 : 4[600000] -> 6[800000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 15/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 13/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 17/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 23/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 21/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 11/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 25/0 : 1[300000] -> 4[600000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 31/0 : 7[900000] -> 2[400000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 19/0 : 3[500000] -> 6[800000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 29/0 : 5[700000] -> 0[200000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 08/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 10/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 20/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 14/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 16/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 26/0 : 2[400000] -> 5[700000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 22/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 28/0 : 4[600000] -> 7[900000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 24/0 : 0[200000] -> 3[500000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 30/0 : 6[800000] -> 1[300000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 13/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 08/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 15/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 10/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 11/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 21/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 16/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 23/0 : 7[900000] -> 3[500000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 12/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 14/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 18/0 : 2[400000] -> 6[800000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 19/0 : 3[500000] -> 7[900000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 24/0 : 0[200000] -> 4[600000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 29/0 : 5[700000] -> 1[300000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 09/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 28/0 : 4[600000] -> 0[200000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 22/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 17/0 : 1[300000] -> 5[700000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 30/0 : 6[800000] -> 2[400000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 15/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 08/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 23/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 27/0 : 3[500000] -> 0[200000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 16/0 : 0[200000] -> 5[700000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 31/0 : 7[900000] -> 4[600000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 21/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 09/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 10/0 : 2[400000] -> 7[900000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 14/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 12/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 29/0 : 5[700000] -> 2[400000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 25/0 : 1[300000] -> 6[800000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 22/0 : 6[800000] -> 3[500000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 28/0 : 4[600000] -> 1[300000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 13/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 16/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 24/0 : 0[200000] -> 6[800000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 31/0 : 7[900000] -> 5[700000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 18/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 21/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 09/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 14/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 19/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 25/0 : 1[300000] -> 7[900000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 29/0 : 5[700000] -> 3[500000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 12/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 26/0 : 2[400000] -> 0[200000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 22/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 27/0 : 3[500000] -> 1[300000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 20/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 30/0 : 6[800000] -> 4[600000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 28/0 : 4[600000] -> 2[400000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO Channel 13/0 : 5[700000] -> 4[600000] via P2P/IPC comm 0x7f37cb2a9990 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 23/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO Channel 31/0 : 7[900000] -> 6[800000] via P2P/IPC comm 0x7ec9372a90f0 nRanks 08
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO Channel 22/0 : 6[800000] -> 5[700000] via P2P/IPC comm 0x7f912f2a9950 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 08/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 11/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 12/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 09/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 19/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 10/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO Channel 20/0 : 4[600000] -> 3[500000] via P2P/IPC comm 0x7ebda32a7760 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 17/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 16/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO Channel 27/0 : 3[500000] -> 2[400000] via P2P/IPC comm 0x7f546b2a9f40 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 18/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO Channel 25/0 : 1[300000] -> 0[200000] via P2P/IPC comm 0x7eeed72a9790 nRanks 08
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO Channel 24/0 : 0[200000] -> 7[900000] via P2P/IPC comm 0x7ef3172a9970 nRanks 08
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO Channel 26/0 : 2[400000] -> 1[300000] via P2P/IPC comm 0x7eed132a8a20 nRanks 08
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1950927456
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1739115104
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1950927456
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1875429984
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1867041376
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1944636000
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1950927456
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1739115104
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1885915744
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1957218912
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1739115104
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1875429984
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1867041376
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1944636000
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1885915744
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1925761632
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1957218912
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1944636000
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1875429984
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1867041376
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1885915744
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1957218912
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1925761632
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1925761632
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1944636000
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1867041376
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1875429984
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1950927456
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1957218912
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1739115104
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1885915744
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1925761632
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1867041376
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1875429984
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1739115104
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1944636000
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1950927456
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1957218912
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1885915744
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1925761632
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1739115104
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1867041376
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1875429984
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1944636000
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1950927456
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1957218912
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1885915744
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1925761632
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1739115104
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1944636000
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1950927456
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1957218912
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1867041376
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1875429984
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1885915744
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1925761632
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1739115104
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1944636000
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1950927456
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1957218912
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1875429984
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1867041376
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1885915744
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1925761632
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1739115104
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1944636000
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1950927456
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1957218912
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1875429984
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1867041376
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1885915744
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1925761632
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1739115104
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1739115104
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1950927456
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1944636000
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1957218912
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1950927456
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1944636000
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1957218912
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1739115104
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1867041376
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1875429984
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1944636000
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1950927456
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1867041376
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1957218912
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1875429984
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1739115104
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1925761632
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1944636000
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1950927456
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1885915744
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1867041376
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1925761632
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1957218912
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1875429984
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1739115104
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1885915744
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1944636000
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1867041376
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1950927456
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL: Setup connections finished, used 1739115104
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1875429984
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1925761632
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1957218912
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1885915744
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL: Setup connections finished, used 1944636000
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL: Setup connections finished, used 1950927456
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL: Setup connections finished, used 1957218912
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1925761632
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1875429984
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1885915744
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL: Setup connections finished, used 1875429984
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1925761632
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1867041376
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1885915744
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL: Setup connections finished, used 1925761632
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL: Setup connections finished, used 1867041376
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL: Setup connections finished, used 1885915744
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO MSCCL++: Enabled! Msg size threshold=1048576
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO MSCCL++: Enabled! Msg size threshold=1048576
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO MSCCL++: Enabled! Msg size threshold=1048576
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO MSCCL++: Enabled! Msg size threshold=1048576
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO MSCCL++: Enabled! Msg size threshold=1048576
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO MSCCL++: Enabled! Msg size threshold=1048576
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO MSCCL++: Enabled! Msg size threshold=1048576
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO MSCCL++: Enabled! Msg size threshold=1048576
pdfc-aig-00000H:2664386:2679067 [0] NCCL INFO ncclCommInitRank comm 0x7ef3172a9970 rank 0 nranks 8 cudaDev 0 nvmlDev 0 busId 200000 commId 0xba5618459451c60a localSize 372 used 1739115104 bytes on core 46 - Init COMPLETE
pdfc-aig-00000H:2664391:2679069 [5] NCCL INFO ncclCommInitRank comm 0x7f37cb2a9990 rank 5 nranks 8 cudaDev 5 nvmlDev 5 busId 700000 commId 0xba5618459451c60a localSize 372 used 1867041376 bytes on core 66 - Init COMPLETE
pdfc-aig-00000H:2664388:2679064 [2] NCCL INFO ncclCommInitRank comm 0x7eed132a8a20 rank 2 nranks 8 cudaDev 2 nvmlDev 2 busId 400000 commId 0xba5618459451c60a localSize 372 used 1957218912 bytes on core 9 - Init COMPLETE
pdfc-aig-00000H:2664393:2679068 [7] NCCL INFO ncclCommInitRank comm 0x7ec9372a90f0 rank 7 nranks 8 cudaDev 7 nvmlDev 7 busId 900000 commId 0xba5618459451c60a localSize 372 used 1875429984 bytes on core 65 - Init COMPLETE
pdfc-aig-00000H:2664387:2679065 [1] NCCL INFO ncclCommInitRank comm 0x7eeed72a9790 rank 1 nranks 8 cudaDev 1 nvmlDev 1 busId 300000 commId 0xba5618459451c60a localSize 372 used 1950927456 bytes on core 30 - Init COMPLETE
pdfc-aig-00000H:2664389:2679066 [3] NCCL INFO ncclCommInitRank comm 0x7f546b2a9f40 rank 3 nranks 8 cudaDev 3 nvmlDev 3 busId 500000 commId 0xba5618459451c60a localSize 372 used 1944636000 bytes on core 32 - Init COMPLETE
pdfc-aig-00000H:2664390:2679070 [4] NCCL INFO ncclCommInitRank comm 0x7ebda32a7760 rank 4 nranks 8 cudaDev 4 nvmlDev 4 busId 600000 commId 0xba5618459451c60a localSize 372 used 1925761632 bytes on core 68 - Init COMPLETE
pdfc-aig-00000H:2664392:2679071 [6] NCCL INFO ncclCommInitRank comm 0x7f912f2a9950 rank 6 nranks 8 cudaDev 6 nvmlDev 6 busId 800000 commId 0xba5618459451c60a localSize 372 used 1885915744 bytes on core 70 - Init COMPLETE
  0%|          | 1/820 [00:33<7:43:10, 33.93s/it]                                                 {'loss': 0.9029, 'grad_norm': 3.0207161496275527, 'learning_rate': 4.999981652304565e-06, 'epoch': 0.01}
  0%|          | 1/820 [00:33<7:43:10, 33.93s/it]  0%|          | 2/820 [00:52<5:36:08, 24.66s/it]                                                 {'loss': 0.8076, 'grad_norm': 2.5130852035964955, 'learning_rate': 4.999926609487568e-06, 'epoch': 0.02}
  0%|          | 2/820 [00:52<5:36:08, 24.66s/it][2025-06-02 06:56:58,630] [WARNING] [stage3.py:2146:step] 1 pytorch allocator cache flushes since last step. this happens when there is high memory pressure and is detrimental to performance. if this is happening frequently consider adjusting settings to reduce memory consumption. If you are unable to make the cache flushes go away consider adding get_accelerator().empty_cache() calls in your training loop to ensure that all ranks flush their caches at the same time
  0%|          | 3/820 [01:17<5:39:50, 24.96s/it]                                                 {'loss': 0.7975, 'grad_norm': 1.6022018512081908, 'learning_rate': 4.9998348723569366e-06, 'epoch': 0.04}
  0%|          | 3/820 [01:17<5:39:50, 24.96s/it]  0%|          | 4/820 [01:43<5:43:07, 25.23s/it]                                                 {'loss': 0.744, 'grad_norm': 1.578538615472289, 'learning_rate': 4.999706442259205e-06, 'epoch': 0.05}
  0%|          | 4/820 [01:43<5:43:07, 25.23s/it]  1%|          | 5/820 [02:05<5:27:41, 24.12s/it]                                                 {'loss': 0.6436, 'grad_norm': 1.3943747824881296, 'learning_rate': 4.999541321079486e-06, 'epoch': 0.06}
  1%|          | 5/820 [02:05<5:27:41, 24.12s/it]  1%|          | 6/820 [02:29<5:26:04, 24.04s/it]                                                 {'loss': 0.7875, 'grad_norm': 1.5643152646470782, 'learning_rate': 4.999339511241458e-06, 'epoch': 0.07}
  1%|          | 6/820 [02:29<5:26:04, 24.04s/it]  1%|          | 7/820 [02:52<5:22:09, 23.78s/it]                                                 {'loss': 0.8049, 'grad_norm': 1.3938734530886352, 'learning_rate': 4.999101015707315e-06, 'epoch': 0.09}
  1%|          | 7/820 [02:52<5:22:09, 23.78s/it]  1%|          | 8/820 [03:26<6:05:51, 27.03s/it]                                                 {'loss': 0.7596, 'grad_norm': 1.2206124716989328, 'learning_rate': 4.9988258379777334e-06, 'epoch': 0.1}
  1%|          | 8/820 [03:26<6:05:51, 27.03s/it]  1%|          | 9/820 [03:48<5:46:08, 25.61s/it]                                                 {'loss': 0.6652, 'grad_norm': 1.1609297988675222, 'learning_rate': 4.998513982091814e-06, 'epoch': 0.11}
  1%|          | 9/820 [03:48<5:46:08, 25.61s/it]  1%|          | 10/820 [04:10<5:30:39, 24.49s/it]                                                  {'loss': 0.78, 'grad_norm': 1.1482678847704515, 'learning_rate': 4.998165452627025e-06, 'epoch': 0.12}
  1%|          | 10/820 [04:10<5:30:39, 24.49s/it]  1%|▏         | 11/820 [04:35<5:29:13, 24.42s/it]                                                  {'loss': 0.5737, 'grad_norm': 0.811327936262873, 'learning_rate': 4.99778025469914e-06, 'epoch': 0.13}
  1%|▏         | 11/820 [04:35<5:29:13, 24.42s/it]  1%|▏         | 12/820 [04:59<5:30:45, 24.56s/it]                                                  {'loss': 0.7471, 'grad_norm': 0.8374359786321212, 'learning_rate': 4.99735839396215e-06, 'epoch': 0.15}
  1%|▏         | 12/820 [04:59<5:30:45, 24.56s/it]  2%|▏         | 13/820 [05:25<5:32:44, 24.74s/it]                                                  {'loss': 0.6207, 'grad_norm': 0.7518274432915626, 'learning_rate': 4.996899876608196e-06, 'epoch': 0.16}
  2%|▏         | 13/820 [05:25<5:32:44, 24.74s/it]  2%|▏         | 14/820 [05:40<4:54:51, 21.95s/it]                                                  {'loss': 0.6819, 'grad_norm': 0.7442184346998388, 'learning_rate': 4.996404709367466e-06, 'epoch': 0.17}
  2%|▏         | 14/820 [05:40<4:54:51, 21.95s/it]  2%|▏         | 15/820 [06:02<4:55:38, 22.03s/it]                                                  {'loss': 0.6342, 'grad_norm': 0.8519704858816681, 'learning_rate': 4.995872899508103e-06, 'epoch': 0.18}
  2%|▏         | 15/820 [06:02<4:55:38, 22.03s/it]  2%|▏         | 16/820 [06:28<5:10:39, 23.18s/it]                                                  {'loss': 0.6413, 'grad_norm': 0.8893070016490201, 'learning_rate': 4.995304454836095e-06, 'epoch': 0.2}
  2%|▏         | 16/820 [06:28<5:10:39, 23.18s/it]  2%|▏         | 17/820 [06:51<5:09:17, 23.11s/it]                                                  {'loss': 0.7665, 'grad_norm': 0.934963987501786, 'learning_rate': 4.994699383695161e-06, 'epoch': 0.21}
  2%|▏         | 17/820 [06:51<5:09:17, 23.11s/it]  2%|▏         | 18/820 [07:14<5:09:08, 23.13s/it]                                                  {'loss': 0.5525, 'grad_norm': 0.7581539237758749, 'learning_rate': 4.994057694966632e-06, 'epoch': 0.22}
  2%|▏         | 18/820 [07:14<5:09:08, 23.13s/it]  2%|▏         | 19/820 [07:37<5:07:03, 23.00s/it]                                                  {'loss': 0.5347, 'grad_norm': 0.6868355374582453, 'learning_rate': 4.993379398069312e-06, 'epoch': 0.23}
  2%|▏         | 19/820 [07:37<5:07:03, 23.00s/it]  2%|▏         | 20/820 [07:59<5:01:34, 22.62s/it]                                                  {'loss': 0.6957, 'grad_norm': 0.7869081526338149, 'learning_rate': 4.992664502959351e-06, 'epoch': 0.24}
  2%|▏         | 20/820 [07:59<5:01:34, 22.62s/it]  3%|▎         | 21/820 [08:22<5:03:29, 22.79s/it]                                                  {'loss': 0.7622, 'grad_norm': 0.7255201166949763, 'learning_rate': 4.991913020130092e-06, 'epoch': 0.26}
  3%|▎         | 21/820 [08:22<5:03:29, 22.79s/it]  3%|▎         | 22/820 [08:44<5:00:03, 22.56s/it]                                                  {'loss': 0.5511, 'grad_norm': 0.7373036256408723, 'learning_rate': 4.991124960611916e-06, 'epoch': 0.27}
  3%|▎         | 22/820 [08:44<5:00:03, 22.56s/it]  3%|▎         | 23/820 [09:08<5:04:58, 22.96s/it]                                                  {'loss': 0.8292, 'grad_norm': 0.7387444287722027, 'learning_rate': 4.990300335972085e-06, 'epoch': 0.28}
  3%|▎         | 23/820 [09:08<5:04:58, 22.96s/it]  3%|▎         | 24/820 [09:26<4:46:18, 21.58s/it]                                                  {'loss': 0.5276, 'grad_norm': 0.7254480075582688, 'learning_rate': 4.989439158314566e-06, 'epoch': 0.29}
  3%|▎         | 24/820 [09:26<4:46:18, 21.58s/it]  3%|▎         | 25/820 [09:51<5:00:12, 22.66s/it]                                                  {'loss': 0.6092, 'grad_norm': 0.6579039904425408, 'learning_rate': 4.988541440279862e-06, 'epoch': 0.3}
  3%|▎         | 25/820 [09:51<5:00:12, 22.66s/it]  3%|▎         | 26/820 [10:17<5:09:59, 23.43s/it]                                                  {'loss': 0.5308, 'grad_norm': 0.5696824450474034, 'learning_rate': 4.9876071950448185e-06, 'epoch': 0.32}
  3%|▎         | 26/820 [10:17<5:09:59, 23.43s/it]  3%|▎         | 27/820 [10:41<5:13:49, 23.74s/it]                                                  {'loss': 0.6539, 'grad_norm': 0.6274928330886675, 'learning_rate': 4.986636436322432e-06, 'epoch': 0.33}
  3%|▎         | 27/820 [10:41<5:13:49, 23.74s/it]  3%|▎         | 28/820 [11:03<5:06:28, 23.22s/it]                                                  {'loss': 0.5578, 'grad_norm': 0.6276069309142411, 'learning_rate': 4.98562917836165e-06, 'epoch': 0.34}
  3%|▎         | 28/820 [11:03<5:06:28, 23.22s/it]  4%|▎         | 29/820 [11:25<5:01:46, 22.89s/it]                                                  {'loss': 0.6251, 'grad_norm': 0.670730955100235, 'learning_rate': 4.984585435947164e-06, 'epoch': 0.35}
  4%|▎         | 29/820 [11:25<5:01:46, 22.89s/it]  4%|▎         | 30/820 [11:46<4:51:21, 22.13s/it]                                                  {'loss': 0.6368, 'grad_norm': 0.6290494487229918, 'learning_rate': 4.983505224399188e-06, 'epoch': 0.37}
  4%|▎         | 30/820 [11:46<4:51:21, 22.13s/it]  4%|▍         | 31/820 [12:07<4:48:11, 21.92s/it]                                                  {'loss': 0.6276, 'grad_norm': 0.7799227833994575, 'learning_rate': 4.982388559573236e-06, 'epoch': 0.38}
  4%|▍         | 31/820 [12:07<4:48:11, 21.92s/it]  4%|▍         | 32/820 [12:29<4:46:27, 21.81s/it]                                                  {'loss': 0.5446, 'grad_norm': 0.7351624419346618, 'learning_rate': 4.9812354578598876e-06, 'epoch': 0.39}
  4%|▍         | 32/820 [12:29<4:46:27, 21.81s/it]  4%|▍         | 33/820 [12:52<4:51:50, 22.25s/it]                                                  {'loss': 0.6692, 'grad_norm': 0.6650031824536481, 'learning_rate': 4.980045936184552e-06, 'epoch': 0.4}
  4%|▍         | 33/820 [12:52<4:51:50, 22.25s/it]  4%|▍         | 34/820 [13:15<4:57:04, 22.68s/it]                                                  {'loss': 0.5252, 'grad_norm': 0.5502371414448457, 'learning_rate': 4.978820012007213e-06, 'epoch': 0.41}
  4%|▍         | 34/820 [13:15<4:57:04, 22.68s/it]  4%|▍         | 35/820 [13:41<5:07:57, 23.54s/it]                                                  {'loss': 0.653, 'grad_norm': 0.545720369829145, 'learning_rate': 4.977557703322178e-06, 'epoch': 0.43}
  4%|▍         | 35/820 [13:41<5:07:57, 23.54s/it]  4%|▍         | 36/820 [14:05<5:10:33, 23.77s/it]                                                  {'loss': 0.5452, 'grad_norm': 0.567954415335574, 'learning_rate': 4.976259028657812e-06, 'epoch': 0.44}
  4%|▍         | 36/820 [14:05<5:10:33, 23.77s/it]  5%|▍         | 37/820 [14:30<5:12:37, 23.96s/it]                                                  {'loss': 0.6087, 'grad_norm': 0.5341489050710325, 'learning_rate': 4.9749240070762626e-06, 'epoch': 0.45}
  5%|▍         | 37/820 [14:30<5:12:37, 23.96s/it]  5%|▍         | 38/820 [14:55<5:18:46, 24.46s/it]                                                  {'loss': 0.6689, 'grad_norm': 0.7325536532281791, 'learning_rate': 4.973552658173186e-06, 'epoch': 0.46}
  5%|▍         | 38/820 [14:55<5:18:46, 24.46s/it]  5%|▍         | 39/820 [15:20<5:18:29, 24.47s/it]                                                  {'loss': 0.6042, 'grad_norm': 0.6470282542204799, 'learning_rate': 4.9721450020774575e-06, 'epoch': 0.48}
  5%|▍         | 39/820 [15:20<5:18:29, 24.47s/it]  5%|▍         | 40/820 [15:43<5:14:27, 24.19s/it]                                                  {'loss': 0.6219, 'grad_norm': 0.5243644026708082, 'learning_rate': 4.970701059450872e-06, 'epoch': 0.49}
  5%|▍         | 40/820 [15:43<5:14:27, 24.19s/it]  5%|▌         | 41/820 [16:06<5:09:06, 23.81s/it]                                                  {'loss': 0.6059, 'grad_norm': 0.5858108961165038, 'learning_rate': 4.9692208514878445e-06, 'epoch': 0.5}
  5%|▌         | 41/820 [16:06<5:09:06, 23.81s/it]  5%|▌         | 42/820 [16:29<5:04:41, 23.50s/it]                                                  {'loss': 0.5765, 'grad_norm': 0.6194035660116313, 'learning_rate': 4.9677043999151e-06, 'epoch': 0.51}
  5%|▌         | 42/820 [16:29<5:04:41, 23.50s/it]  5%|▌         | 43/820 [16:49<4:49:43, 22.37s/it]                                                  {'loss': 0.6562, 'grad_norm': 0.700402264641738, 'learning_rate': 4.966151726991352e-06, 'epoch': 0.52}
  5%|▌         | 43/820 [16:49<4:49:43, 22.37s/it]  5%|▌         | 44/820 [17:14<5:01:51, 23.34s/it]                                                  {'loss': 0.616, 'grad_norm': 0.6582936761353858, 'learning_rate': 4.964562855506976e-06, 'epoch': 0.54}
  5%|▌         | 44/820 [17:14<5:01:51, 23.34s/it]  5%|▌         | 45/820 [17:40<5:09:57, 24.00s/it]                                                  {'loss': 0.6542, 'grad_norm': 0.5942385742737513, 'learning_rate': 4.962937808783675e-06, 'epoch': 0.55}
  5%|▌         | 45/820 [17:40<5:09:57, 24.00s/it]  6%|▌         | 46/820 [18:06<5:16:39, 24.55s/it]                                                  {'loss': 0.6512, 'grad_norm': 0.5584070284634681, 'learning_rate': 4.961276610674141e-06, 'epoch': 0.56}
  6%|▌         | 46/820 [18:06<5:16:39, 24.55s/it]  6%|▌         | 47/820 [18:29<5:11:38, 24.19s/it]                                                  {'loss': 0.6857, 'grad_norm': 0.5569643125266333, 'learning_rate': 4.959579285561697e-06, 'epoch': 0.57}
  6%|▌         | 47/820 [18:29<5:11:38, 24.19s/it]  6%|▌         | 48/820 [18:54<5:14:55, 24.48s/it]                                                  {'loss': 0.6569, 'grad_norm': 0.5582846782478402, 'learning_rate': 4.9578458583599495e-06, 'epoch': 0.59}
  6%|▌         | 48/820 [18:54<5:14:55, 24.48s/it]  6%|▌         | 49/820 [19:22<5:26:25, 25.40s/it]                                                  {'loss': 0.6122, 'grad_norm': 0.5433817778417481, 'learning_rate': 4.956076354512411e-06, 'epoch': 0.6}
  6%|▌         | 49/820 [19:22<5:26:25, 25.40s/it]  6%|▌         | 50/820 [19:44<5:12:20, 24.34s/it]                                                  {'loss': 0.5634, 'grad_norm': 0.5490874046585223, 'learning_rate': 4.954270799992138e-06, 'epoch': 0.61}
  6%|▌         | 50/820 [19:44<5:12:20, 24.34s/it]  6%|▌         | 51/820 [20:09<5:14:43, 24.56s/it]                                                  {'loss': 0.5971, 'grad_norm': 0.49267737986748006, 'learning_rate': 4.952429221301341e-06, 'epoch': 0.62}
  6%|▌         | 51/820 [20:09<5:14:43, 24.56s/it]  6%|▋         | 52/820 [20:32<5:08:32, 24.10s/it]                                                  {'loss': 0.5844, 'grad_norm': 0.5359083839157774, 'learning_rate': 4.950551645470998e-06, 'epoch': 0.63}
  6%|▋         | 52/820 [20:32<5:08:32, 24.10s/it]  6%|▋         | 53/820 [20:54<4:59:54, 23.46s/it]                                                  {'loss': 0.5796, 'grad_norm': 0.5386747591080512, 'learning_rate': 4.948638100060465e-06, 'epoch': 0.65}
  6%|▋         | 53/820 [20:54<4:59:54, 23.46s/it]  7%|▋         | 54/820 [21:16<4:56:08, 23.20s/it]                                                  {'loss': 0.6353, 'grad_norm': 0.5922427694076527, 'learning_rate': 4.9466886131570565e-06, 'epoch': 0.66}
  7%|▋         | 54/820 [21:16<4:56:08, 23.20s/it]  7%|▋         | 55/820 [21:42<5:04:58, 23.92s/it]                                                  {'loss': 0.5655, 'grad_norm': 0.6133854110689532, 'learning_rate': 4.944703213375648e-06, 'epoch': 0.67}
  7%|▋         | 55/820 [21:42<5:04:58, 23.92s/it]  7%|▋         | 56/820 [22:06<5:05:57, 24.03s/it]                                                  {'loss': 0.6334, 'grad_norm': 0.5507417524786203, 'learning_rate': 4.942681929858249e-06, 'epoch': 0.68}
  7%|▋         | 56/820 [22:06<5:05:57, 24.03s/it]  7%|▋         | 57/820 [22:29<4:59:26, 23.55s/it]                                                  {'loss': 0.6051, 'grad_norm': 0.5543701418351119, 'learning_rate': 4.940624792273572e-06, 'epoch': 0.7}
  7%|▋         | 57/820 [22:29<4:59:26, 23.55s/it]  7%|▋         | 58/820 [22:46<4:35:07, 21.66s/it]                                                  {'loss': 0.5832, 'grad_norm': 0.5419506825419375, 'learning_rate': 4.9385318308166065e-06, 'epoch': 0.71}
  7%|▋         | 58/820 [22:46<4:35:07, 21.66s/it]  7%|▋         | 59/820 [23:10<4:42:26, 22.27s/it]                                                  {'loss': 0.5768, 'grad_norm': 0.5605300676724324, 'learning_rate': 4.936403076208168e-06, 'epoch': 0.72}
  7%|▋         | 59/820 [23:10<4:42:26, 22.27s/it]  7%|▋         | 60/820 [23:33<4:44:27, 22.46s/it]                                                  {'loss': 0.5312, 'grad_norm': 0.5634015183368206, 'learning_rate': 4.934238559694448e-06, 'epoch': 0.73}
  7%|▋         | 60/820 [23:33<4:44:27, 22.46s/it]  7%|▋         | 61/820 [23:58<4:55:54, 23.39s/it]                                                  {'loss': 0.6027, 'grad_norm': 0.5640060525974314, 'learning_rate': 4.93203831304656e-06, 'epoch': 0.74}
  7%|▋         | 61/820 [23:58<4:55:54, 23.39s/it]  8%|▊         | 62/820 [24:23<5:02:27, 23.94s/it]                                                  {'loss': 0.6617, 'grad_norm': 0.5645884885156494, 'learning_rate': 4.929802368560066e-06, 'epoch': 0.76}
  8%|▊         | 62/820 [24:23<5:02:27, 23.94s/it]  8%|▊         | 63/820 [24:45<4:54:07, 23.31s/it]                                                  {'loss': 0.6381, 'grad_norm': 0.5972158952905144, 'learning_rate': 4.927530759054511e-06, 'epoch': 0.77}
  8%|▊         | 63/820 [24:45<4:54:07, 23.31s/it]  8%|▊         | 64/820 [25:08<4:52:07, 23.19s/it]                                                  {'loss': 0.5464, 'grad_norm': 0.5138499078500507, 'learning_rate': 4.925223517872934e-06, 'epoch': 0.78}
  8%|▊         | 64/820 [25:08<4:52:07, 23.19s/it]  8%|▊         | 65/820 [25:34<5:00:55, 23.91s/it]                                                  {'loss': 0.4906, 'grad_norm': 0.47787912169940966, 'learning_rate': 4.92288067888138e-06, 'epoch': 0.79}
  8%|▊         | 65/820 [25:34<5:00:55, 23.91s/it]  8%|▊         | 66/820 [25:55<4:51:20, 23.18s/it]                                                  {'loss': 0.4886, 'grad_norm': 0.5169990055142837, 'learning_rate': 4.920502276468408e-06, 'epoch': 0.8}
  8%|▊         | 66/820 [25:55<4:51:20, 23.18s/it]  8%|▊         | 67/820 [26:16<4:43:32, 22.59s/it]                                                  {'loss': 0.6188, 'grad_norm': 0.7460795913013395, 'learning_rate': 4.91808834554458e-06, 'epoch': 0.82}
  8%|▊         | 67/820 [26:16<4:43:32, 22.59s/it]  8%|▊         | 68/820 [26:38<4:41:01, 22.42s/it]                                                  {'loss': 0.6007, 'grad_norm': 0.6146050007894772, 'learning_rate': 4.915638921541952e-06, 'epoch': 0.83}
  8%|▊         | 68/820 [26:38<4:41:01, 22.42s/it]  8%|▊         | 69/820 [27:01<4:43:07, 22.62s/it]                                                  {'loss': 0.5895, 'grad_norm': 0.6594678578918307, 'learning_rate': 4.913154040413551e-06, 'epoch': 0.84}
  8%|▊         | 69/820 [27:01<4:43:07, 22.62s/it]  9%|▊         | 70/820 [27:26<4:49:07, 23.13s/it]                                                  {'loss': 0.5544, 'grad_norm': 0.5436250323780301, 'learning_rate': 4.9106337386328524e-06, 'epoch': 0.85}
  9%|▊         | 70/820 [27:26<4:49:07, 23.13s/it]  9%|▊         | 71/820 [27:52<4:58:49, 23.94s/it]                                                  {'loss': 0.5902, 'grad_norm': 0.5634849085230786, 'learning_rate': 4.908078053193239e-06, 'epoch': 0.87}
  9%|▊         | 71/820 [27:52<4:58:49, 23.94s/it]  9%|▉         | 72/820 [28:15<4:57:21, 23.85s/it]                                                  {'loss': 0.618, 'grad_norm': 0.5448298567449515, 'learning_rate': 4.905487021607462e-06, 'epoch': 0.88}
  9%|▉         | 72/820 [28:15<4:57:21, 23.85s/it]  9%|▉         | 73/820 [28:37<4:50:33, 23.34s/it]                                                  {'loss': 0.6121, 'grad_norm': 0.509413596501859, 'learning_rate': 4.902860681907086e-06, 'epoch': 0.89}
  9%|▉         | 73/820 [28:37<4:50:33, 23.34s/it]  9%|▉         | 74/820 [29:03<5:00:31, 24.17s/it]                                                  {'loss': 0.5449, 'grad_norm': 0.5571558330769935, 'learning_rate': 4.900199072641937e-06, 'epoch': 0.9}
  9%|▉         | 74/820 [29:04<5:00:31, 24.17s/it]  9%|▉         | 75/820 [29:27<4:55:50, 23.83s/it]                                                  {'loss': 0.5723, 'grad_norm': 0.5275731095319596, 'learning_rate': 4.897502232879533e-06, 'epoch': 0.91}
  9%|▉         | 75/820 [29:27<4:55:50, 23.83s/it]  9%|▉         | 76/820 [29:50<4:54:59, 23.79s/it]                                                  {'loss': 0.5072, 'grad_norm': 0.45660157095744763, 'learning_rate': 4.894770202204509e-06, 'epoch': 0.93}
  9%|▉         | 76/820 [29:50<4:54:59, 23.79s/it]  9%|▉         | 77/820 [30:13<4:50:26, 23.45s/it]                                                  {'loss': 0.6009, 'grad_norm': 0.5131428854746722, 'learning_rate': 4.892003020718037e-06, 'epoch': 0.94}
  9%|▉         | 77/820 [30:13<4:50:26, 23.45s/it] 10%|▉         | 78/820 [30:37<4:52:47, 23.68s/it]                                                  {'loss': 0.5368, 'grad_norm': 0.5048331379346004, 'learning_rate': 4.889200729037241e-06, 'epoch': 0.95}
 10%|▉         | 78/820 [30:37<4:52:47, 23.68s/it] 10%|▉         | 79/820 [31:02<4:56:44, 24.03s/it]                                                  {'loss': 0.5494, 'grad_norm': 0.6405386863271665, 'learning_rate': 4.886363368294596e-06, 'epoch': 0.96}
 10%|▉         | 79/820 [31:02<4:56:44, 24.03s/it] 10%|▉         | 80/820 [31:27<4:59:09, 24.26s/it]                                                  {'loss': 0.6266, 'grad_norm': 0.6462072940325537, 'learning_rate': 4.883490980137327e-06, 'epoch': 0.98}
 10%|▉         | 80/820 [31:27<4:59:09, 24.26s/it] 10%|▉         | 81/820 [31:50<4:56:13, 24.05s/it]                                                  {'loss': 0.564, 'grad_norm': 0.5861054804495057, 'learning_rate': 4.880583606726796e-06, 'epoch': 0.99}
 10%|▉         | 81/820 [31:50<4:56:13, 24.05s/it] 10%|█         | 82/820 [32:10<4:38:28, 22.64s/it]                                                  {'loss': 0.5716, 'grad_norm': 0.5903337057007111, 'learning_rate': 4.8776412907378845e-06, 'epoch': 1.0}
 10%|█         | 82/820 [32:10<4:38:28, 22.64s/it][INFO|trainer.py:3942] 2025-06-02 07:28:29,440 >> Saving model checkpoint to /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-82
[INFO|configuration_utils.py:423] 2025-06-02 07:28:29,443 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-82/config.json
[INFO|configuration_utils.py:909] 2025-06-02 07:28:29,444 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-82/generation_config.json
[INFO|modeling_utils.py:3048] 2025-06-02 07:30:39,368 >> The model is bigger than the maximum size per checkpoint (5GB) and is going to be split in 14 checkpoint shards. You can find where each parameters has been saved in the index located at /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-82/model.safetensors.index.json.
[INFO|tokenization_utils_base.py:2500] 2025-06-02 07:30:39,370 >> tokenizer config file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-82/tokenizer_config.json
[INFO|tokenization_utils_base.py:2509] 2025-06-02 07:30:39,370 >> Special tokens file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-82/special_tokens_map.json
[2025-06-02 07:30:39,545] [INFO] [logging.py:128:log_dist] [Rank 0] [Torch] Checkpoint global_step82 is about to be saved!
[2025-06-02 07:30:39,560] [INFO] [logging.py:128:log_dist] [Rank 0] Saving model checkpoint: /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-82/global_step82/zero_pp_rank_0_mp_rank_00_model_states.pt
[2025-06-02 07:30:39,560] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-82/global_step82/zero_pp_rank_0_mp_rank_00_model_states.pt...
[2025-06-02 07:30:44,813] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-82/global_step82/zero_pp_rank_0_mp_rank_00_model_states.pt.
[2025-06-02 07:30:44,818] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-82/global_step82/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt...
[2025-06-02 07:31:45,696] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-82/global_step82/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt.
[2025-06-02 07:31:45,700] [INFO] [engine.py:3572:_save_zero_checkpoint] zero checkpoint saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-82/global_step82/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt
[2025-06-02 07:32:03,388] [INFO] [torch_checkpoint_engine.py:33:commit] [Torch] Checkpoint global_step82 is ready now!
 10%|█         | 83/820 [36:48<20:20:54, 99.40s/it]                                                   {'loss': 0.496, 'grad_norm': 0.5740616183741984, 'learning_rate': 4.874664075358366e-06, 'epoch': 1.01}
 10%|█         | 83/820 [36:48<20:20:54, 99.40s/it] 10%|█         | 84/820 [37:24<16:23:42, 80.19s/it]                                                   {'loss': 0.5762, 'grad_norm': 0.5595053634754218, 'learning_rate': 4.871652004288275e-06, 'epoch': 1.02}
 10%|█         | 84/820 [37:24<16:23:42, 80.19s/it] 10%|█         | 85/820 [37:47<12:52:08, 63.03s/it]                                                   {'loss': 0.675, 'grad_norm': 0.653530094836581, 'learning_rate': 4.868605121739261e-06, 'epoch': 1.04}
 10%|█         | 85/820 [37:47<12:52:08, 63.03s/it] 10%|█         | 86/820 [38:09<10:23:40, 50.98s/it]                                                   {'loss': 0.6437, 'grad_norm': 0.6868977645992892, 'learning_rate': 4.865523472433942e-06, 'epoch': 1.05}
 10%|█         | 86/820 [38:09<10:23:40, 50.98s/it] 11%|█         | 87/820 [38:35<8:49:36, 43.35s/it]                                                   {'loss': 0.6062, 'grad_norm': 0.5911582892505682, 'learning_rate': 4.862407101605248e-06, 'epoch': 1.06}
 11%|█         | 87/820 [38:35<8:49:36, 43.35s/it] 11%|█         | 88/820 [39:00<7:43:31, 37.99s/it]                                                  {'loss': 0.5276, 'grad_norm': 0.5973984183082958, 'learning_rate': 4.859256054995758e-06, 'epoch': 1.07}
 11%|█         | 88/820 [39:00<7:43:31, 37.99s/it] 11%|█         | 89/820 [39:22<6:43:44, 33.14s/it]                                                  {'loss': 0.5105, 'grad_norm': 0.5202592576007536, 'learning_rate': 4.856070378857025e-06, 'epoch': 1.09}
 11%|█         | 89/820 [39:22<6:43:44, 33.14s/it] 11%|█         | 90/820 [39:44<6:02:38, 29.81s/it]                                                  {'loss': 0.5193, 'grad_norm': 0.5003432465496742, 'learning_rate': 4.8528501199489045e-06, 'epoch': 1.1}
 11%|█         | 90/820 [39:44<6:02:38, 29.81s/it] 11%|█         | 91/820 [40:06<5:32:13, 27.34s/it]                                                  {'loss': 0.5272, 'grad_norm': 0.547479505278565, 'learning_rate': 4.849595325538859e-06, 'epoch': 1.11}
 11%|█         | 91/820 [40:06<5:32:13, 27.34s/it] 11%|█         | 92/820 [40:31<5:23:14, 26.64s/it]                                                  {'loss': 0.5638, 'grad_norm': 0.5085844034261108, 'learning_rate': 4.846306043401268e-06, 'epoch': 1.12}
 11%|█         | 92/820 [40:31<5:23:14, 26.64s/it] 11%|█▏        | 93/820 [40:54<5:09:28, 25.54s/it]                                                  {'loss': 0.4534, 'grad_norm': 0.5075280045737289, 'learning_rate': 4.84298232181673e-06, 'epoch': 1.13}
 11%|█▏        | 93/820 [40:54<5:09:28, 25.54s/it] 11%|█▏        | 94/820 [41:15<4:54:29, 24.34s/it]                                                  {'loss': 0.4868, 'grad_norm': 0.5187019482948481, 'learning_rate': 4.839624209571352e-06, 'epoch': 1.15}
 11%|█▏        | 94/820 [41:15<4:54:29, 24.34s/it] 12%|█▏        | 95/820 [41:37<4:43:44, 23.48s/it]                                                  {'loss': 0.6019, 'grad_norm': 0.506794750089701, 'learning_rate': 4.836231755956028e-06, 'epoch': 1.16}
 12%|█▏        | 95/820 [41:37<4:43:44, 23.48s/it] 12%|█▏        | 96/820 [41:59<4:38:05, 23.05s/it]                                                  {'loss': 0.4845, 'grad_norm': 0.517116605091511, 'learning_rate': 4.832805010765724e-06, 'epoch': 1.17}
 12%|█▏        | 96/820 [41:59<4:38:05, 23.05s/it] 12%|█▏        | 97/820 [42:24<4:43:34, 23.53s/it]                                                  {'loss': 0.5338, 'grad_norm': 0.49062830762758974, 'learning_rate': 4.829344024298741e-06, 'epoch': 1.18}
 12%|█▏        | 97/820 [42:24<4:43:34, 23.53s/it] 12%|█▏        | 98/820 [42:49<4:50:39, 24.15s/it]                                                  {'loss': 0.517, 'grad_norm': 0.5376291194197911, 'learning_rate': 4.8258488473559794e-06, 'epoch': 1.2}
 12%|█▏        | 98/820 [42:49<4:50:39, 24.15s/it] 12%|█▏        | 99/820 [43:14<4:53:38, 24.44s/it]                                                  {'loss': 0.5427, 'grad_norm': 0.49800658542684434, 'learning_rate': 4.822319531240194e-06, 'epoch': 1.21}
 12%|█▏        | 99/820 [43:14<4:53:38, 24.44s/it] 12%|█▏        | 100/820 [43:36<4:44:45, 23.73s/it]                                                   {'loss': 0.611, 'grad_norm': 0.6248961462291939, 'learning_rate': 4.8187561277552376e-06, 'epoch': 1.22}
 12%|█▏        | 100/820 [43:36<4:44:45, 23.73s/it] 12%|█▏        | 101/820 [44:02<4:51:55, 24.36s/it]                                                   {'loss': 0.5746, 'grad_norm': 0.4862010503893302, 'learning_rate': 4.815158689205303e-06, 'epoch': 1.23}
 12%|█▏        | 101/820 [44:02<4:51:55, 24.36s/it] 12%|█▏        | 102/820 [44:26<4:48:12, 24.08s/it]                                                   {'loss': 0.444, 'grad_norm': 0.5328415831217566, 'learning_rate': 4.811527268394157e-06, 'epoch': 1.24}
 12%|█▏        | 102/820 [44:26<4:48:12, 24.08s/it] 13%|█▎        | 103/820 [44:52<4:54:33, 24.65s/it]                                                   {'loss': 0.4702, 'grad_norm': 0.49777999037952236, 'learning_rate': 4.807861918624361e-06, 'epoch': 1.26}
 13%|█▎        | 103/820 [44:52<4:54:33, 24.65s/it] 13%|█▎        | 104/820 [45:16<4:52:49, 24.54s/it]                                                   {'loss': 0.546, 'grad_norm': 0.47142313951303105, 'learning_rate': 4.804162693696494e-06, 'epoch': 1.27}
 13%|█▎        | 104/820 [45:16<4:52:49, 24.54s/it] 13%|█▎        | 105/820 [45:39<4:46:25, 24.04s/it]                                                   {'loss': 0.4899, 'grad_norm': 0.49996183484010753, 'learning_rate': 4.800429647908354e-06, 'epoch': 1.28}
 13%|█▎        | 105/820 [45:39<4:46:25, 24.04s/it] 13%|█▎        | 106/820 [46:00<4:36:16, 23.22s/it]                                                   {'loss': 0.5704, 'grad_norm': 0.6794848496229275, 'learning_rate': 4.796662836054176e-06, 'epoch': 1.29}
 13%|█▎        | 106/820 [46:00<4:36:16, 23.22s/it] 13%|█▎        | 107/820 [46:24<4:39:49, 23.55s/it]                                                   {'loss': 0.5542, 'grad_norm': 0.5411943048201857, 'learning_rate': 4.792862313423808e-06, 'epoch': 1.3}
 13%|█▎        | 107/820 [46:24<4:39:49, 23.55s/it] 13%|█▎        | 108/820 [46:49<4:44:47, 24.00s/it]                                                   {'loss': 0.5246, 'grad_norm': 0.5285590175484833, 'learning_rate': 4.789028135801919e-06, 'epoch': 1.32}
 13%|█▎        | 108/820 [46:49<4:44:47, 24.00s/it] 13%|█▎        | 109/820 [47:12<4:39:57, 23.63s/it]                                                   {'loss': 0.5859, 'grad_norm': 0.6455497955748982, 'learning_rate': 4.785160359467166e-06, 'epoch': 1.33}
 13%|█▎        | 109/820 [47:12<4:39:57, 23.63s/it] 13%|█▎        | 110/820 [47:38<4:46:09, 24.18s/it]                                                   {'loss': 0.5411, 'grad_norm': 0.5805877139658555, 'learning_rate': 4.7812590411913755e-06, 'epoch': 1.34}
 13%|█▎        | 110/820 [47:38<4:46:09, 24.18s/it] 14%|█▎        | 111/820 [48:02<4:47:54, 24.36s/it]                                                   {'loss': 0.5206, 'grad_norm': 0.5727214500098584, 'learning_rate': 4.777324238238707e-06, 'epoch': 1.35}
 14%|█▎        | 111/820 [48:02<4:47:54, 24.36s/it] 14%|█▎        | 112/820 [48:18<4:18:11, 21.88s/it]                                                   {'loss': 0.5109, 'grad_norm': 0.6670246831342841, 'learning_rate': 4.773356008364812e-06, 'epoch': 1.37}
 14%|█▎        | 112/820 [48:18<4:18:11, 21.88s/it] 14%|█▍        | 113/820 [48:44<4:30:30, 22.96s/it]                                                   {'loss': 0.6236, 'grad_norm': 0.5651141488046479, 'learning_rate': 4.7693544098159914e-06, 'epoch': 1.38}
 14%|█▍        | 113/820 [48:44<4:30:30, 22.96s/it] 14%|█▍        | 114/820 [49:09<4:39:07, 23.72s/it]                                                   {'loss': 0.6082, 'grad_norm': 0.6261176563864097, 'learning_rate': 4.765319501328332e-06, 'epoch': 1.39}
 14%|█▍        | 114/820 [49:09<4:39:07, 23.72s/it] 14%|█▍        | 115/820 [49:34<4:40:33, 23.88s/it]                                                   {'loss': 0.5509, 'grad_norm': 0.5932756218717617, 'learning_rate': 4.7612513421268546e-06, 'epoch': 1.4}
 14%|█▍        | 115/820 [49:34<4:40:33, 23.88s/it] 14%|█▍        | 116/820 [49:56<4:34:59, 23.44s/it]                                                   {'loss': 0.5398, 'grad_norm': 0.5630645543708983, 'learning_rate': 4.757149991924633e-06, 'epoch': 1.41}
 14%|█▍        | 116/820 [49:56<4:34:59, 23.44s/it] 14%|█▍        | 117/820 [50:21<4:38:06, 23.74s/it]                                                   {'loss': 0.5993, 'grad_norm': 0.5279789571341627, 'learning_rate': 4.753015510921928e-06, 'epoch': 1.43}
 14%|█▍        | 117/820 [50:21<4:38:06, 23.74s/it] 14%|█▍        | 118/820 [50:43<4:33:20, 23.36s/it]                                                   {'loss': 0.5303, 'grad_norm': 0.5171798409599976, 'learning_rate': 4.748847959805297e-06, 'epoch': 1.44}
 14%|█▍        | 118/820 [50:43<4:33:20, 23.36s/it] 15%|█▍        | 119/820 [51:05<4:27:48, 22.92s/it]                                                   {'loss': 0.7105, 'grad_norm': 0.9201903157356315, 'learning_rate': 4.7446473997467095e-06, 'epoch': 1.45}
 15%|█▍        | 119/820 [51:05<4:27:48, 22.92s/it] 15%|█▍        | 120/820 [51:27<4:24:23, 22.66s/it]                                                   {'loss': 0.4712, 'grad_norm': 0.5009271441194985, 'learning_rate': 4.740413892402639e-06, 'epoch': 1.46}
 15%|█▍        | 120/820 [51:27<4:24:23, 22.66s/it] 15%|█▍        | 121/820 [51:51<4:27:28, 22.96s/it]                                                   {'loss': 0.523, 'grad_norm': 0.48089833978842755, 'learning_rate': 4.736147499913172e-06, 'epoch': 1.48}
 15%|█▍        | 121/820 [51:51<4:27:28, 22.96s/it] 15%|█▍        | 122/820 [52:13<4:23:21, 22.64s/it]                                                   {'loss': 0.499, 'grad_norm': 0.4838875843143774, 'learning_rate': 4.731848284901082e-06, 'epoch': 1.49}
 15%|█▍        | 122/820 [52:13<4:23:21, 22.64s/it] 15%|█▌        | 123/820 [52:37<4:30:59, 23.33s/it]                                                   {'loss': 0.508, 'grad_norm': 0.4718197017797161, 'learning_rate': 4.72751631047092e-06, 'epoch': 1.5}
 15%|█▌        | 123/820 [52:37<4:30:59, 23.33s/it] 15%|█▌        | 124/820 [53:01<4:32:19, 23.48s/it]                                                   {'loss': 0.4639, 'grad_norm': 0.5738053807332215, 'learning_rate': 4.723151640208084e-06, 'epoch': 1.51}
 15%|█▌        | 124/820 [53:01<4:32:19, 23.48s/it] 15%|█▌        | 125/820 [53:25<4:34:25, 23.69s/it]                                                   {'loss': 0.5279, 'grad_norm': 0.5313395381399034, 'learning_rate': 4.718754338177887e-06, 'epoch': 1.52}
 15%|█▌        | 125/820 [53:25<4:34:25, 23.69s/it] 15%|█▌        | 126/820 [53:47<4:26:14, 23.02s/it]                                                   {'loss': 0.4905, 'grad_norm': 0.4904051402468043, 'learning_rate': 4.714324468924614e-06, 'epoch': 1.54}
 15%|█▌        | 126/820 [53:47<4:26:14, 23.02s/it] 15%|█▌        | 127/820 [54:09<4:21:29, 22.64s/it]                                                   {'loss': 0.5017, 'grad_norm': 0.5324160100798736, 'learning_rate': 4.70986209747058e-06, 'epoch': 1.55}
 15%|█▌        | 127/820 [54:09<4:21:29, 22.64s/it] 16%|█▌        | 128/820 [54:34<4:30:41, 23.47s/it]                                                   {'loss': 0.5029, 'grad_norm': 0.5185476946604788, 'learning_rate': 4.705367289315172e-06, 'epoch': 1.56}
 16%|█▌        | 128/820 [54:34<4:30:41, 23.47s/it] 16%|█▌        | 129/820 [54:58<4:33:15, 23.73s/it]                                                   {'loss': 0.5611, 'grad_norm': 0.48586446701097497, 'learning_rate': 4.700840110433883e-06, 'epoch': 1.57}
 16%|█▌        | 129/820 [54:58<4:33:15, 23.73s/it] 16%|█▌        | 130/820 [55:22<4:32:04, 23.66s/it]                                                   {'loss': 0.6261, 'grad_norm': 0.5900983607745215, 'learning_rate': 4.696280627277356e-06, 'epoch': 1.59}
 16%|█▌        | 130/820 [55:22<4:32:04, 23.66s/it] 16%|█▌        | 131/820 [55:44<4:25:11, 23.09s/it]                                                   {'loss': 0.4553, 'grad_norm': 0.5767720349346038, 'learning_rate': 4.6916889067703965e-06, 'epoch': 1.6}
 16%|█▌        | 131/820 [55:44<4:25:11, 23.09s/it] 16%|█▌        | 132/820 [56:07<4:23:57, 23.02s/it]                                                   {'loss': 0.446, 'grad_norm': 0.5009923770943371, 'learning_rate': 4.687065016310996e-06, 'epoch': 1.61}
 16%|█▌        | 132/820 [56:07<4:23:57, 23.02s/it] 16%|█▌        | 133/820 [56:31<4:28:02, 23.41s/it]                                                   {'loss': 0.4466, 'grad_norm': 0.48070603950289936, 'learning_rate': 4.682409023769342e-06, 'epoch': 1.62}
 16%|█▌        | 133/820 [56:31<4:28:02, 23.41s/it] 16%|█▋        | 134/820 [56:53<4:22:09, 22.93s/it]                                                   {'loss': 0.4901, 'grad_norm': 0.5815143137180199, 'learning_rate': 4.6777209974868194e-06, 'epoch': 1.63}
 16%|█▋        | 134/820 [56:53<4:22:09, 22.93s/it] 16%|█▋        | 135/820 [57:17<4:26:12, 23.32s/it]                                                   {'loss': 0.5049, 'grad_norm': 0.5230956289514818, 'learning_rate': 4.673001006275013e-06, 'epoch': 1.65}
 16%|█▋        | 135/820 [57:17<4:26:12, 23.32s/it] 17%|█▋        | 136/820 [57:41<4:27:03, 23.43s/it]                                                   {'loss': 0.6166, 'grad_norm': 0.5308760381665836, 'learning_rate': 4.668249119414692e-06, 'epoch': 1.66}
 17%|█▋        | 136/820 [57:41<4:27:03, 23.43s/it] 17%|█▋        | 137/820 [58:07<4:38:07, 24.43s/it]                                                   {'loss': 0.5791, 'grad_norm': 0.5827657926768898, 'learning_rate': 4.663465406654792e-06, 'epoch': 1.67}
 17%|█▋        | 137/820 [58:07<4:38:07, 24.43s/it] 17%|█▋        | 138/820 [58:28<4:24:10, 23.24s/it]                                                   {'loss': 0.5696, 'grad_norm': 0.5282776812686998, 'learning_rate': 4.6586499382113985e-06, 'epoch': 1.68}
 17%|█▋        | 138/820 [58:28<4:24:10, 23.24s/it] 17%|█▋        | 139/820 [58:52<4:28:10, 23.63s/it]                                                   {'loss': 0.5622, 'grad_norm': 0.47161141843494736, 'learning_rate': 4.65380278476671e-06, 'epoch': 1.7}
 17%|█▋        | 139/820 [58:52<4:28:10, 23.63s/it] 17%|█▋        | 140/820 [59:16<4:27:36, 23.61s/it]                                                   {'loss': 0.4253, 'grad_norm': 0.475007970900108, 'learning_rate': 4.648924017468003e-06, 'epoch': 1.71}
 17%|█▋        | 140/820 [59:16<4:27:36, 23.61s/it] 17%|█▋        | 141/820 [59:41<4:33:03, 24.13s/it]                                                   {'loss': 0.5268, 'grad_norm': 0.5098540230265595, 'learning_rate': 4.644013707926587e-06, 'epoch': 1.72}
 17%|█▋        | 141/820 [59:41<4:33:03, 24.13s/it] 17%|█▋        | 142/820 [1:00:02<4:20:34, 23.06s/it]                                                     {'loss': 0.4778, 'grad_norm': 0.5066600248878668, 'learning_rate': 4.6390719282167515e-06, 'epoch': 1.73}
 17%|█▋        | 142/820 [1:00:02<4:20:34, 23.06s/it] 17%|█▋        | 143/820 [1:00:25<4:19:51, 23.03s/it]                                                     {'loss': 0.5186, 'grad_norm': 0.5175730985738229, 'learning_rate': 4.634098750874714e-06, 'epoch': 1.74}
 17%|█▋        | 143/820 [1:00:25<4:19:51, 23.03s/it] 18%|█▊        | 144/820 [1:00:49<4:22:16, 23.28s/it]                                                     {'loss': 0.5709, 'grad_norm': 0.554093999516019, 'learning_rate': 4.629094248897546e-06, 'epoch': 1.76}
 18%|█▊        | 144/820 [1:00:49<4:22:16, 23.28s/it] 18%|█▊        | 145/820 [1:01:12<4:21:14, 23.22s/it]                                                     {'loss': 0.4475, 'grad_norm': 0.5806367748884667, 'learning_rate': 4.624058495742115e-06, 'epoch': 1.77}
 18%|█▊        | 145/820 [1:01:12<4:21:14, 23.22s/it] 18%|█▊        | 146/820 [1:01:36<4:23:57, 23.50s/it]                                                     {'loss': 0.505, 'grad_norm': 0.5487756494771068, 'learning_rate': 4.618991565323987e-06, 'epoch': 1.78}
 18%|█▊        | 146/820 [1:01:36<4:23:57, 23.50s/it] 18%|█▊        | 147/820 [1:01:58<4:18:31, 23.05s/it]                                                     {'loss': 0.5564, 'grad_norm': 0.5445536750622884, 'learning_rate': 4.613893532016363e-06, 'epoch': 1.79}
 18%|█▊        | 147/820 [1:01:58<4:18:31, 23.05s/it] 18%|█▊        | 148/820 [1:02:20<4:14:19, 22.71s/it]                                                     {'loss': 0.4289, 'grad_norm': 0.6733681034230957, 'learning_rate': 4.608764470648971e-06, 'epoch': 1.8}
 18%|█▊        | 148/820 [1:02:20<4:14:19, 22.71s/it] 18%|█▊        | 149/820 [1:02:45<4:21:36, 23.39s/it]                                                     {'loss': 0.4974, 'grad_norm': 0.5276005420573491, 'learning_rate': 4.603604456506977e-06, 'epoch': 1.82}
 18%|█▊        | 149/820 [1:02:45<4:21:36, 23.39s/it] 18%|█▊        | 150/820 [1:03:08<4:21:45, 23.44s/it]                                                     {'loss': 0.5643, 'grad_norm': 0.6449866869408538, 'learning_rate': 4.598413565329876e-06, 'epoch': 1.83}
 18%|█▊        | 150/820 [1:03:08<4:21:45, 23.44s/it] 18%|█▊        | 151/820 [1:03:34<4:29:38, 24.18s/it]                                                     {'loss': 0.5699, 'grad_norm': 0.5754811290606489, 'learning_rate': 4.593191873310377e-06, 'epoch': 1.84}
 18%|█▊        | 151/820 [1:03:34<4:29:38, 24.18s/it] 19%|█▊        | 152/820 [1:03:54<4:13:22, 22.76s/it]                                                     {'loss': 0.436, 'grad_norm': 0.524965758461708, 'learning_rate': 4.587939457093296e-06, 'epoch': 1.85}
 19%|█▊        | 152/820 [1:03:54<4:13:22, 22.76s/it] 19%|█▊        | 153/820 [1:04:16<4:12:02, 22.67s/it]                                                     {'loss': 0.5046, 'grad_norm': 0.504326295862809, 'learning_rate': 4.582656393774416e-06, 'epoch': 1.87}
 19%|█▊        | 153/820 [1:04:16<4:12:02, 22.67s/it] 19%|█▉        | 154/820 [1:04:39<4:12:37, 22.76s/it]                                                     {'loss': 0.5989, 'grad_norm': 0.5077651284373955, 'learning_rate': 4.577342760899368e-06, 'epoch': 1.88}
 19%|█▉        | 154/820 [1:04:39<4:12:37, 22.76s/it] 19%|█▉        | 155/820 [1:05:05<4:22:40, 23.70s/it]                                                     {'loss': 0.6028, 'grad_norm': 0.49036215159765795, 'learning_rate': 4.571998636462487e-06, 'epoch': 1.89}
 19%|█▉        | 155/820 [1:05:05<4:22:40, 23.70s/it] 19%|█▉        | 156/820 [1:05:30<4:26:01, 24.04s/it]                                                     {'loss': 0.578, 'grad_norm': 0.506238849634691, 'learning_rate': 4.566624098905665e-06, 'epoch': 1.9}
 19%|█▉        | 156/820 [1:05:30<4:26:01, 24.04s/it] 19%|█▉        | 157/820 [1:05:54<4:27:42, 24.23s/it]                                                     {'loss': 0.5101, 'grad_norm': 0.5714495950225124, 'learning_rate': 4.5612192271172065e-06, 'epoch': 1.91}
 19%|█▉        | 157/820 [1:05:55<4:27:42, 24.23s/it] 19%|█▉        | 158/820 [1:06:17<4:21:59, 23.75s/it]                                                     {'loss': 0.4486, 'grad_norm': 0.4916649269555678, 'learning_rate': 4.555784100430662e-06, 'epoch': 1.93}
 19%|█▉        | 158/820 [1:06:17<4:21:59, 23.75s/it] 19%|█▉        | 159/820 [1:06:41<4:21:58, 23.78s/it]                                                     {'loss': 0.5001, 'grad_norm': 0.47222617947483453, 'learning_rate': 4.550318798623674e-06, 'epoch': 1.94}
 19%|█▉        | 159/820 [1:06:41<4:21:58, 23.78s/it] 20%|█▉        | 160/820 [1:07:05<4:22:20, 23.85s/it]                                                     {'loss': 0.4899, 'grad_norm': 0.4912211405758234, 'learning_rate': 4.544823401916794e-06, 'epoch': 1.95}
 20%|█▉        | 160/820 [1:07:05<4:22:20, 23.85s/it] 20%|█▉        | 161/820 [1:07:29<4:23:25, 23.98s/it]                                                     {'loss': 0.5849, 'grad_norm': 0.5736479354810106, 'learning_rate': 4.539297990972316e-06, 'epoch': 1.96}
 20%|█▉        | 161/820 [1:07:29<4:23:25, 23.98s/it] 20%|█▉        | 162/820 [1:07:54<4:23:58, 24.07s/it]                                                     {'loss': 0.5461, 'grad_norm': 0.5334365154024493, 'learning_rate': 4.533742646893086e-06, 'epoch': 1.98}
 20%|█▉        | 162/820 [1:07:54<4:23:58, 24.07s/it] 20%|█▉        | 163/820 [1:08:19<4:26:36, 24.35s/it]                                                     {'loss': 0.4833, 'grad_norm': 0.5364089158765729, 'learning_rate': 4.528157451221312e-06, 'epoch': 1.99}
 20%|█▉        | 163/820 [1:08:19<4:26:36, 24.35s/it] 20%|██        | 164/820 [1:08:42<4:22:43, 24.03s/it]                                                     {'loss': 0.4487, 'grad_norm': 0.5464216965617225, 'learning_rate': 4.522542485937369e-06, 'epoch': 2.0}
 20%|██        | 164/820 [1:08:42<4:22:43, 24.03s/it][INFO|trainer.py:3942] 2025-06-02 08:04:42,166 >> Saving model checkpoint to /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-164
[INFO|configuration_utils.py:423] 2025-06-02 08:04:42,169 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-164/config.json
[INFO|configuration_utils.py:909] 2025-06-02 08:04:42,170 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-164/generation_config.json
[INFO|modeling_utils.py:3048] 2025-06-02 08:05:50,973 >> The model is bigger than the maximum size per checkpoint (5GB) and is going to be split in 14 checkpoint shards. You can find where each parameters has been saved in the index located at /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-164/model.safetensors.index.json.
[INFO|tokenization_utils_base.py:2500] 2025-06-02 08:05:50,975 >> tokenizer config file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-164/tokenizer_config.json
[INFO|tokenization_utils_base.py:2509] 2025-06-02 08:05:50,975 >> Special tokens file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-164/special_tokens_map.json
[2025-06-02 08:05:51,127] [INFO] [logging.py:128:log_dist] [Rank 0] [Torch] Checkpoint global_step164 is about to be saved!
[2025-06-02 08:05:51,142] [INFO] [logging.py:128:log_dist] [Rank 0] Saving model checkpoint: /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-164/global_step164/zero_pp_rank_0_mp_rank_00_model_states.pt
[2025-06-02 08:05:51,142] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-164/global_step164/zero_pp_rank_0_mp_rank_00_model_states.pt...
[2025-06-02 08:05:56,556] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-164/global_step164/zero_pp_rank_0_mp_rank_00_model_states.pt.
[2025-06-02 08:05:56,562] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-164/global_step164/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt...
[2025-06-02 08:07:01,788] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-164/global_step164/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt.
[2025-06-02 08:07:01,790] [INFO] [engine.py:3572:_save_zero_checkpoint] zero checkpoint saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-164/global_step164/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt
[2025-06-02 08:07:12,623] [INFO] [torch_checkpoint_engine.py:33:commit] [Torch] Checkpoint global_step164 is ready now!
 20%|██        | 165/820 [1:11:55<13:35:46, 74.73s/it]                                                      {'loss': 0.4448, 'grad_norm': 0.474056419420541, 'learning_rate': 4.5168978334585955e-06, 'epoch': 2.01}
 20%|██        | 165/820 [1:11:55<13:35:46, 74.73s/it] 20%|██        | 166/820 [1:12:21<10:55:07, 60.10s/it]                                                      {'loss': 0.4439, 'grad_norm': 0.44890021302848104, 'learning_rate': 4.511223576638084e-06, 'epoch': 2.02}
 20%|██        | 166/820 [1:12:21<10:55:07, 60.10s/it] 20%|██        | 167/820 [1:12:45<8:56:59, 49.34s/it]                                                      {'loss': 0.5435, 'grad_norm': 0.5370386573520003, 'learning_rate': 4.5055197987634625e-06, 'epoch': 2.04}
 20%|██        | 167/820 [1:12:45<8:56:59, 49.34s/it] 20%|██        | 168/820 [1:13:09<7:34:04, 41.79s/it]                                                     {'loss': 0.4935, 'grad_norm': 0.6733978270570145, 'learning_rate': 4.499786583555675e-06, 'epoch': 2.05}
 20%|██        | 168/820 [1:13:09<7:34:04, 41.79s/it] 21%|██        | 169/820 [1:13:35<6:39:41, 36.84s/it]                                                     {'loss': 0.5404, 'grad_norm': 0.508935825136193, 'learning_rate': 4.49402401516775e-06, 'epoch': 2.06}
 21%|██        | 169/820 [1:13:35<6:39:41, 36.84s/it] 21%|██        | 170/820 [1:13:59<5:58:46, 33.12s/it]                                                     {'loss': 0.4053, 'grad_norm': 0.5172538107296342, 'learning_rate': 4.4882321781835666e-06, 'epoch': 2.07}
 21%|██        | 170/820 [1:13:59<5:58:46, 33.12s/it] 21%|██        | 171/820 [1:14:22<5:25:40, 30.11s/it]                                                     {'loss': 0.5004, 'grad_norm': 0.5220816741335016, 'learning_rate': 4.482411157616615e-06, 'epoch': 2.09}
 21%|██        | 171/820 [1:14:22<5:25:40, 30.11s/it] 21%|██        | 172/820 [1:14:47<5:08:35, 28.57s/it]                                                     {'loss': 0.5246, 'grad_norm': 0.5977226095664919, 'learning_rate': 4.476561038908745e-06, 'epoch': 2.1}
 21%|██        | 172/820 [1:14:47<5:08:35, 28.57s/it] 21%|██        | 173/820 [1:15:10<4:50:38, 26.95s/it]                                                     {'loss': 0.5062, 'grad_norm': 0.5806899738633391, 'learning_rate': 4.470681907928914e-06, 'epoch': 2.11}
 21%|██        | 173/820 [1:15:10<4:50:38, 26.95s/it] 21%|██        | 174/820 [1:15:36<4:44:49, 26.45s/it]                                                     {'loss': 0.4626, 'grad_norm': 0.48332107490389614, 'learning_rate': 4.464773850971924e-06, 'epoch': 2.12}
 21%|██        | 174/820 [1:15:36<4:44:49, 26.45s/it] 21%|██▏       | 175/820 [1:15:58<4:32:59, 25.39s/it]                                                     {'loss': 0.4497, 'grad_norm': 0.4727843072157618, 'learning_rate': 4.458836954757161e-06, 'epoch': 2.13}
 21%|██▏       | 175/820 [1:15:58<4:32:59, 25.39s/it] 21%|██▏       | 176/820 [1:16:20<4:20:59, 24.32s/it]                                                     {'loss': 0.3249, 'grad_norm': 0.4767040428826672, 'learning_rate': 4.452871306427314e-06, 'epoch': 2.15}
 21%|██▏       | 176/820 [1:16:20<4:20:59, 24.32s/it] 22%|██▏       | 177/820 [1:16:42<4:13:42, 23.67s/it]                                                     {'loss': 0.5234, 'grad_norm': 0.5583191970775355, 'learning_rate': 4.446876993547102e-06, 'epoch': 2.16}
 22%|██▏       | 177/820 [1:16:42<4:13:42, 23.67s/it] 22%|██▏       | 178/820 [1:17:07<4:14:55, 23.83s/it]                                                     {'loss': 0.5086, 'grad_norm': 0.555235428274014, 'learning_rate': 4.440854104101988e-06, 'epoch': 2.17}
 22%|██▏       | 178/820 [1:17:07<4:14:55, 23.83s/it] 22%|██▏       | 179/820 [1:17:30<4:13:52, 23.76s/it]                                                     {'loss': 0.4505, 'grad_norm': 0.6050063838566627, 'learning_rate': 4.434802726496885e-06, 'epoch': 2.18}
 22%|██▏       | 179/820 [1:17:30<4:13:52, 23.76s/it] 22%|██▏       | 180/820 [1:17:56<4:20:12, 24.39s/it]                                                     {'loss': 0.4551, 'grad_norm': 0.46198250763827825, 'learning_rate': 4.428722949554858e-06, 'epoch': 2.2}
 22%|██▏       | 180/820 [1:17:56<4:20:12, 24.39s/it] 22%|██▏       | 181/820 [1:18:21<4:20:19, 24.44s/it]                                                     {'loss': 0.5802, 'grad_norm': 0.47782801290243065, 'learning_rate': 4.422614862515824e-06, 'epoch': 2.21}
 22%|██▏       | 181/820 [1:18:21<4:20:19, 24.44s/it] 22%|██▏       | 182/820 [1:18:42<4:10:21, 23.54s/it]                                                     {'loss': 0.4752, 'grad_norm': 0.564712716141708, 'learning_rate': 4.416478555035241e-06, 'epoch': 2.22}
 22%|██▏       | 182/820 [1:18:42<4:10:21, 23.54s/it] 22%|██▏       | 183/820 [1:19:07<4:14:27, 23.97s/it]                                                     {'loss': 0.6045, 'grad_norm': 0.49247768865128705, 'learning_rate': 4.410314117182787e-06, 'epoch': 2.23}
 22%|██▏       | 183/820 [1:19:07<4:14:27, 23.97s/it] 22%|██▏       | 184/820 [1:19:31<4:15:01, 24.06s/it]                                                     {'loss': 0.572, 'grad_norm': 0.5306624013690374, 'learning_rate': 4.404121639441047e-06, 'epoch': 2.24}
 22%|██▏       | 184/820 [1:19:31<4:15:01, 24.06s/it] 23%|██▎       | 185/820 [1:19:54<4:10:54, 23.71s/it]                                                     {'loss': 0.4161, 'grad_norm': 0.5289305931326126, 'learning_rate': 4.397901212704176e-06, 'epoch': 2.26}
 23%|██▎       | 185/820 [1:19:54<4:10:54, 23.71s/it] 23%|██▎       | 186/820 [1:20:13<3:53:27, 22.09s/it]                                                     {'loss': 0.5887, 'grad_norm': 0.6007840330706022, 'learning_rate': 4.391652928276572e-06, 'epoch': 2.27}
 23%|██▎       | 186/820 [1:20:13<3:53:27, 22.09s/it] 23%|██▎       | 187/820 [1:20:35<3:53:32, 22.14s/it]                                                     {'loss': 0.4667, 'grad_norm': 0.531344063859573, 'learning_rate': 4.3853768778715286e-06, 'epoch': 2.28}
 23%|██▎       | 187/820 [1:20:35<3:53:32, 22.14s/it] 23%|██▎       | 188/820 [1:20:58<3:56:59, 22.50s/it]                                                     {'loss': 0.5382, 'grad_norm': 0.5633383894936723, 'learning_rate': 4.379073153609896e-06, 'epoch': 2.29}
 23%|██▎       | 188/820 [1:20:58<3:56:59, 22.50s/it] 23%|██▎       | 189/820 [1:21:21<3:58:25, 22.67s/it]                                                     {'loss': 0.4732, 'grad_norm': 0.54915765291587, 'learning_rate': 4.372741848018724e-06, 'epoch': 2.3}
 23%|██▎       | 189/820 [1:21:21<3:58:25, 22.67s/it] 23%|██▎       | 190/820 [1:21:45<4:02:19, 23.08s/it]                                                     {'loss': 0.4692, 'grad_norm': 0.47371708704562626, 'learning_rate': 4.366383054029907e-06, 'epoch': 2.32}
 23%|██▎       | 190/820 [1:21:45<4:02:19, 23.08s/it] 23%|██▎       | 191/820 [1:22:08<4:00:30, 22.94s/it]                                                     {'loss': 0.4133, 'grad_norm': 0.472990132151727, 'learning_rate': 4.359996864978816e-06, 'epoch': 2.33}
 23%|██▎       | 191/820 [1:22:08<4:00:30, 22.94s/it] 23%|██▎       | 192/820 [1:22:31<4:01:14, 23.05s/it]                                                     {'loss': 0.5188, 'grad_norm': 0.5136418330213689, 'learning_rate': 4.3535833746029335e-06, 'epoch': 2.34}
 23%|██▎       | 192/820 [1:22:31<4:01:14, 23.05s/it] 24%|██▎       | 193/820 [1:22:56<4:07:37, 23.70s/it]                                                     {'loss': 0.5223, 'grad_norm': 0.4551425871394463, 'learning_rate': 4.347142677040474e-06, 'epoch': 2.35}
 24%|██▎       | 193/820 [1:22:56<4:07:37, 23.70s/it] 24%|██▎       | 194/820 [1:23:20<4:06:50, 23.66s/it]                                                     {'loss': 0.4306, 'grad_norm': 0.7229570159737655, 'learning_rate': 4.340674866829001e-06, 'epoch': 2.37}
 24%|██▎       | 194/820 [1:23:20<4:06:50, 23.66s/it] 24%|██▍       | 195/820 [1:23:43<4:03:59, 23.42s/it]                                                     {'loss': 0.4853, 'grad_norm': 0.566399430930142, 'learning_rate': 4.3341800389040465e-06, 'epoch': 2.38}
 24%|██▍       | 195/820 [1:23:43<4:03:59, 23.42s/it] 24%|██▍       | 196/820 [1:24:05<4:01:19, 23.20s/it]                                                     {'loss': 0.3673, 'grad_norm': 0.5532318701020126, 'learning_rate': 4.32765828859771e-06, 'epoch': 2.39}
 24%|██▍       | 196/820 [1:24:05<4:01:19, 23.20s/it] 24%|██▍       | 197/820 [1:24:30<4:05:36, 23.65s/it]                                                     {'loss': 0.4555, 'grad_norm': 0.7751646262938773, 'learning_rate': 4.321109711637261e-06, 'epoch': 2.4}
 24%|██▍       | 197/820 [1:24:30<4:05:36, 23.65s/it] 24%|██▍       | 198/820 [1:24:53<4:03:24, 23.48s/it]                                                     {'loss': 0.4244, 'grad_norm': 0.5615523587263532, 'learning_rate': 4.314534404143738e-06, 'epoch': 2.41}
 24%|██▍       | 198/820 [1:24:53<4:03:24, 23.48s/it] 24%|██▍       | 199/820 [1:25:17<4:04:59, 23.67s/it]                                                     {'loss': 0.5426, 'grad_norm': 0.6993097540967705, 'learning_rate': 4.30793246263053e-06, 'epoch': 2.43}
 24%|██▍       | 199/820 [1:25:17<4:04:59, 23.67s/it] 24%|██▍       | 200/820 [1:25:41<4:04:33, 23.67s/it]                                                     {'loss': 0.4082, 'grad_norm': 0.4724345669861201, 'learning_rate': 4.3013039840019675e-06, 'epoch': 2.44}
 24%|██▍       | 200/820 [1:25:41<4:04:33, 23.67s/it] 25%|██▍       | 201/820 [1:26:03<3:59:59, 23.26s/it]                                                     {'loss': 0.4255, 'grad_norm': 0.4968813415755428, 'learning_rate': 4.294649065551898e-06, 'epoch': 2.45}
 25%|██▍       | 201/820 [1:26:03<3:59:59, 23.26s/it] 25%|██▍       | 202/820 [1:26:29<4:06:01, 23.89s/it]                                                     {'loss': 0.4081, 'grad_norm': 0.42119312612742965, 'learning_rate': 4.287967804962252e-06, 'epoch': 2.46}
 25%|██▍       | 202/820 [1:26:29<4:06:01, 23.89s/it] 25%|██▍       | 203/820 [1:26:52<4:04:29, 23.77s/it]                                                     {'loss': 0.353, 'grad_norm': 0.5313853153909415, 'learning_rate': 4.2812603003016195e-06, 'epoch': 2.48}
 25%|██▍       | 203/820 [1:26:52<4:04:29, 23.77s/it] 25%|██▍       | 204/820 [1:27:15<4:02:22, 23.61s/it]                                                     {'loss': 0.4058, 'grad_norm': 0.5393436721707254, 'learning_rate': 4.274526650023801e-06, 'epoch': 2.49}
 25%|██▍       | 204/820 [1:27:15<4:02:22, 23.61s/it] 25%|██▌       | 205/820 [1:27:40<4:05:28, 23.95s/it]                                                     {'loss': 0.4803, 'grad_norm': 0.5310390269090823, 'learning_rate': 4.267766952966369e-06, 'epoch': 2.5}
 25%|██▌       | 205/820 [1:27:40<4:05:28, 23.95s/it] 25%|██▌       | 206/820 [1:28:04<4:06:01, 24.04s/it]                                                     {'loss': 0.4529, 'grad_norm': 0.49932385256043366, 'learning_rate': 4.260981308349214e-06, 'epoch': 2.51}
 25%|██▌       | 206/820 [1:28:04<4:06:01, 24.04s/it] 25%|██▌       | 207/820 [1:28:28<4:04:22, 23.92s/it]                                                     {'loss': 0.4949, 'grad_norm': 0.6177581381904886, 'learning_rate': 4.254169815773088e-06, 'epoch': 2.52}
 25%|██▌       | 207/820 [1:28:28<4:04:22, 23.92s/it] 25%|██▌       | 208/820 [1:28:49<3:54:46, 23.02s/it]                                                     {'loss': 0.4623, 'grad_norm': 0.5121866346044053, 'learning_rate': 4.247332575218144e-06, 'epoch': 2.54}
 25%|██▌       | 208/820 [1:28:49<3:54:46, 23.02s/it] 25%|██▌       | 209/820 [1:29:12<3:54:08, 22.99s/it]                                                     {'loss': 0.4562, 'grad_norm': 0.48389122113949523, 'learning_rate': 4.240469687042467e-06, 'epoch': 2.55}
 25%|██▌       | 209/820 [1:29:12<3:54:08, 22.99s/it] 26%|██▌       | 210/820 [1:29:37<3:59:13, 23.53s/it]                                                     {'loss': 0.4502, 'grad_norm': 0.4816830296401209, 'learning_rate': 4.233581251980604e-06, 'epoch': 2.56}
 26%|██▌       | 210/820 [1:29:37<3:59:13, 23.53s/it] 26%|██▌       | 211/820 [1:29:59<3:56:20, 23.29s/it]                                                     {'loss': 0.4784, 'grad_norm': 0.5728849779691633, 'learning_rate': 4.226667371142082e-06, 'epoch': 2.57}
 26%|██▌       | 211/820 [1:29:59<3:56:20, 23.29s/it] 26%|██▌       | 212/820 [1:30:25<4:03:23, 24.02s/it]                                                     {'loss': 0.4467, 'grad_norm': 0.46687015996268333, 'learning_rate': 4.2197281460099245e-06, 'epoch': 2.59}
 26%|██▌       | 212/820 [1:30:25<4:03:23, 24.02s/it] 26%|██▌       | 213/820 [1:30:49<4:02:18, 23.95s/it]                                                     {'loss': 0.5354, 'grad_norm': 0.49581470484463597, 'learning_rate': 4.212763678439163e-06, 'epoch': 2.6}
 26%|██▌       | 213/820 [1:30:49<4:02:18, 23.95s/it] 26%|██▌       | 214/820 [1:31:13<4:01:02, 23.87s/it]                                                     {'loss': 0.5341, 'grad_norm': 0.5100764734080739, 'learning_rate': 4.2057740706553415e-06, 'epoch': 2.61}
 26%|██▌       | 214/820 [1:31:13<4:01:02, 23.87s/it] 26%|██▌       | 215/820 [1:31:38<4:05:07, 24.31s/it]                                                     {'loss': 0.4897, 'grad_norm': 0.44798338690155665, 'learning_rate': 4.198759425253015e-06, 'epoch': 2.62}
 26%|██▌       | 215/820 [1:31:38<4:05:07, 24.31s/it] 26%|██▋       | 216/820 [1:32:02<4:02:39, 24.10s/it]                                                     {'loss': 0.4908, 'grad_norm': 0.5044748369964932, 'learning_rate': 4.191719845194246e-06, 'epoch': 2.63}
 26%|██▋       | 216/820 [1:32:02<4:02:39, 24.10s/it] 26%|██▋       | 217/820 [1:32:28<4:07:53, 24.67s/it]                                                     {'loss': 0.5831, 'grad_norm': 0.5189495159015659, 'learning_rate': 4.184655433807091e-06, 'epoch': 2.65}
 26%|██▋       | 217/820 [1:32:28<4:07:53, 24.67s/it] 27%|██▋       | 218/820 [1:32:53<4:09:23, 24.86s/it]                                                     {'loss': 0.4825, 'grad_norm': 0.48574445383507575, 'learning_rate': 4.177566294784085e-06, 'epoch': 2.66}
 27%|██▋       | 218/820 [1:32:53<4:09:23, 24.86s/it] 27%|██▋       | 219/820 [1:33:17<4:06:28, 24.61s/it]                                                     {'loss': 0.4448, 'grad_norm': 0.5520475728309059, 'learning_rate': 4.17045253218072e-06, 'epoch': 2.67}
 27%|██▋       | 219/820 [1:33:17<4:06:28, 24.61s/it] 27%|██▋       | 220/820 [1:33:41<4:04:37, 24.46s/it]                                                     {'loss': 0.4096, 'grad_norm': 0.45547675047601693, 'learning_rate': 4.163314250413913e-06, 'epoch': 2.68}
 27%|██▋       | 220/820 [1:33:41<4:04:37, 24.46s/it] 27%|██▋       | 221/820 [1:34:03<3:58:18, 23.87s/it]                                                     {'loss': 0.4058, 'grad_norm': 0.5358122101692638, 'learning_rate': 4.156151554260483e-06, 'epoch': 2.7}
 27%|██▋       | 221/820 [1:34:03<3:58:18, 23.87s/it] 27%|██▋       | 222/820 [1:34:28<3:58:43, 23.95s/it]                                                     {'loss': 0.4938, 'grad_norm': 0.44337108457633906, 'learning_rate': 4.148964548855603e-06, 'epoch': 2.71}
 27%|██▋       | 222/820 [1:34:28<3:58:43, 23.95s/it] 27%|██▋       | 223/820 [1:34:52<3:59:18, 24.05s/it]                                                     {'loss': 0.4539, 'grad_norm': 0.4112990708577736, 'learning_rate': 4.141753339691261e-06, 'epoch': 2.72}
 27%|██▋       | 223/820 [1:34:52<3:59:18, 24.05s/it] 27%|██▋       | 224/820 [1:35:14<3:54:19, 23.59s/it]                                                     {'loss': 0.4518, 'grad_norm': 0.46283974249011556, 'learning_rate': 4.134518032614713e-06, 'epoch': 2.73}
 27%|██▋       | 224/820 [1:35:14<3:54:19, 23.59s/it] 27%|██▋       | 225/820 [1:35:38<3:54:44, 23.67s/it]                                                     {'loss': 0.5633, 'grad_norm': 0.6155815448126231, 'learning_rate': 4.127258733826929e-06, 'epoch': 2.74}
 27%|██▋       | 225/820 [1:35:38<3:54:44, 23.67s/it] 28%|██▊       | 226/820 [1:36:01<3:50:17, 23.26s/it]                                                     {'loss': 0.4586, 'grad_norm': 0.5141602070027552, 'learning_rate': 4.119975549881029e-06, 'epoch': 2.76}
 28%|██▊       | 226/820 [1:36:01<3:50:17, 23.26s/it] 28%|██▊       | 227/820 [1:36:24<3:49:24, 23.21s/it]                                                     {'loss': 0.381, 'grad_norm': 0.44827162573098145, 'learning_rate': 4.1126685876807275e-06, 'epoch': 2.77}
 28%|██▊       | 227/820 [1:36:24<3:49:24, 23.21s/it] 28%|██▊       | 228/820 [1:36:49<3:55:37, 23.88s/it]                                                     {'loss': 0.5607, 'grad_norm': 0.5996313977744623, 'learning_rate': 4.105337954478756e-06, 'epoch': 2.78}
 28%|██▊       | 228/820 [1:36:49<3:55:37, 23.88s/it] 28%|██▊       | 229/820 [1:37:13<3:54:26, 23.80s/it]                                                     {'loss': 0.4975, 'grad_norm': 0.44938895128330464, 'learning_rate': 4.097983757875298e-06, 'epoch': 2.79}
 28%|██▊       | 229/820 [1:37:13<3:54:26, 23.80s/it] 28%|██▊       | 230/820 [1:37:38<3:57:33, 24.16s/it]                                                     {'loss': 0.4281, 'grad_norm': 0.4668734344089733, 'learning_rate': 4.0906061058164e-06, 'epoch': 2.8}
 28%|██▊       | 230/820 [1:37:38<3:57:33, 24.16s/it] 28%|██▊       | 231/820 [1:38:01<3:55:09, 23.96s/it]                                                     {'loss': 0.418, 'grad_norm': 0.45592073726291765, 'learning_rate': 4.083205106592392e-06, 'epoch': 2.82}
 28%|██▊       | 231/820 [1:38:01<3:55:09, 23.96s/it] 28%|██▊       | 232/820 [1:38:25<3:54:41, 23.95s/it]                                                     {'loss': 0.4311, 'grad_norm': 0.4910834624514499, 'learning_rate': 4.075780868836296e-06, 'epoch': 2.83}
 28%|██▊       | 232/820 [1:38:25<3:54:41, 23.95s/it] 28%|██▊       | 233/820 [1:38:47<3:49:32, 23.46s/it]                                                     {'loss': 0.4312, 'grad_norm': 0.5918804302350611, 'learning_rate': 4.068333501522236e-06, 'epoch': 2.84}
 28%|██▊       | 233/820 [1:38:47<3:49:32, 23.46s/it] 29%|██▊       | 234/820 [1:39:10<3:47:39, 23.31s/it]                                                     {'loss': 0.3778, 'grad_norm': 0.455864673519835, 'learning_rate': 4.060863113963835e-06, 'epoch': 2.85}
 29%|██▊       | 234/820 [1:39:10<3:47:39, 23.31s/it] 29%|██▊       | 235/820 [1:39:33<3:44:27, 23.02s/it]                                                     {'loss': 0.4563, 'grad_norm': 0.5304110711674273, 'learning_rate': 4.053369815812608e-06, 'epoch': 2.87}
 29%|██▊       | 235/820 [1:39:33<3:44:27, 23.02s/it] 29%|██▉       | 236/820 [1:39:57<3:47:50, 23.41s/it]                                                     {'loss': 0.4677, 'grad_norm': 0.5780884824871195, 'learning_rate': 4.045853717056358e-06, 'epoch': 2.88}
 29%|██▉       | 236/820 [1:39:57<3:47:50, 23.41s/it] 29%|██▉       | 237/820 [1:40:21<3:49:08, 23.58s/it]                                                     {'loss': 0.5035, 'grad_norm': 0.4299133263650159, 'learning_rate': 4.038314928017556e-06, 'epoch': 2.89}
 29%|██▉       | 237/820 [1:40:21<3:49:08, 23.58s/it] 29%|██▉       | 238/820 [1:40:40<3:36:35, 22.33s/it]                                                     {'loss': 0.4882, 'grad_norm': 0.5251454043898454, 'learning_rate': 4.030753559351728e-06, 'epoch': 2.9}
 29%|██▉       | 238/820 [1:40:40<3:36:35, 22.33s/it] 29%|██▉       | 239/820 [1:41:01<3:31:05, 21.80s/it]                                                     {'loss': 0.4441, 'grad_norm': 0.548102920344375, 'learning_rate': 4.023169722045824e-06, 'epoch': 2.91}
 29%|██▉       | 239/820 [1:41:01<3:31:05, 21.80s/it] 29%|██▉       | 240/820 [1:41:23<3:32:23, 21.97s/it]                                                     {'loss': 0.453, 'grad_norm': 0.4610782039899499, 'learning_rate': 4.015563527416596e-06, 'epoch': 2.93}
 29%|██▉       | 240/820 [1:41:23<3:32:23, 21.97s/it] 29%|██▉       | 241/820 [1:41:46<3:33:02, 22.08s/it]                                                     {'loss': 0.5389, 'grad_norm': 0.5352863494216212, 'learning_rate': 4.007935087108955e-06, 'epoch': 2.94}
 29%|██▉       | 241/820 [1:41:46<3:33:02, 22.08s/it] 30%|██▉       | 242/820 [1:42:11<3:41:07, 22.95s/it]                                                     {'loss': 0.3209, 'grad_norm': 0.5795639594640808, 'learning_rate': 4.000284513094342e-06, 'epoch': 2.95}
 30%|██▉       | 242/820 [1:42:11<3:41:07, 22.95s/it] 30%|██▉       | 243/820 [1:42:30<3:29:27, 21.78s/it]                                                     {'loss': 0.4246, 'grad_norm': 0.4598627042095995, 'learning_rate': 3.9926119176690786e-06, 'epoch': 2.96}
 30%|██▉       | 243/820 [1:42:30<3:29:27, 21.78s/it] 30%|██▉       | 244/820 [1:42:50<3:24:30, 21.30s/it]                                                     {'loss': 0.495, 'grad_norm': 0.4917625784914854, 'learning_rate': 3.984917413452721e-06, 'epoch': 2.98}
 30%|██▉       | 244/820 [1:42:50<3:24:30, 21.30s/it] 30%|██▉       | 245/820 [1:43:12<3:26:16, 21.52s/it]                                                     {'loss': 0.3904, 'grad_norm': 0.45483259147409866, 'learning_rate': 3.977201113386402e-06, 'epoch': 2.99}
 30%|██▉       | 245/820 [1:43:12<3:26:16, 21.52s/it] 30%|███       | 246/820 [1:43:33<3:25:23, 21.47s/it]                                                     {'loss': 0.4222, 'grad_norm': 0.5129191556862166, 'learning_rate': 3.969463130731183e-06, 'epoch': 3.0}
 30%|███       | 246/820 [1:43:33<3:25:23, 21.47s/it][INFO|trainer.py:3942] 2025-06-02 08:39:33,072 >> Saving model checkpoint to /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-246
[INFO|configuration_utils.py:423] 2025-06-02 08:39:33,075 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-246/config.json
[INFO|configuration_utils.py:909] 2025-06-02 08:39:33,075 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-246/generation_config.json
[INFO|modeling_utils.py:3048] 2025-06-02 08:40:43,291 >> The model is bigger than the maximum size per checkpoint (5GB) and is going to be split in 14 checkpoint shards. You can find where each parameters has been saved in the index located at /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-246/model.safetensors.index.json.
[INFO|tokenization_utils_base.py:2500] 2025-06-02 08:40:43,294 >> tokenizer config file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-246/tokenizer_config.json
[INFO|tokenization_utils_base.py:2509] 2025-06-02 08:40:43,294 >> Special tokens file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-246/special_tokens_map.json
[2025-06-02 08:40:48,632] [INFO] [logging.py:128:log_dist] [Rank 0] [Torch] Checkpoint global_step246 is about to be saved!
[2025-06-02 08:40:48,645] [INFO] [logging.py:128:log_dist] [Rank 0] Saving model checkpoint: /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-246/global_step246/zero_pp_rank_0_mp_rank_00_model_states.pt
[2025-06-02 08:40:48,646] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-246/global_step246/zero_pp_rank_0_mp_rank_00_model_states.pt...
[2025-06-02 08:40:48,672] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-246/global_step246/zero_pp_rank_0_mp_rank_00_model_states.pt.
[2025-06-02 08:40:48,676] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-246/global_step246/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt...
[2025-06-02 08:42:05,037] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-246/global_step246/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt.
[2025-06-02 08:42:05,038] [INFO] [engine.py:3572:_save_zero_checkpoint] zero checkpoint saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-246/global_step246/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt
[2025-06-02 08:42:14,723] [INFO] [torch_checkpoint_engine.py:33:commit] [Torch] Checkpoint global_step246 is ready now!
 30%|███       | 247/820 [1:46:57<12:06:09, 76.04s/it]                                                      {'loss': 0.4194, 'grad_norm': 0.8613534455627132, 'learning_rate': 3.961703579066383e-06, 'epoch': 3.01}
 30%|███       | 247/820 [1:46:57<12:06:09, 76.04s/it] 30%|███       | 248/820 [1:47:19<9:30:52, 59.88s/it]                                                      {'loss': 0.3766, 'grad_norm': 0.5004922463474216, 'learning_rate': 3.953922572287915e-06, 'epoch': 3.02}
 30%|███       | 248/820 [1:47:19<9:30:52, 59.88s/it] 30%|███       | 249/820 [1:47:40<7:40:06, 48.35s/it]                                                     {'loss': 0.4264, 'grad_norm': 0.6526995012965906, 'learning_rate': 3.946120224606611e-06, 'epoch': 3.04}
 30%|███       | 249/820 [1:47:40<7:40:06, 48.35s/it] 30%|███       | 250/820 [1:48:03<6:27:32, 40.79s/it]                                                     {'loss': 0.4041, 'grad_norm': 0.671745471276739, 'learning_rate': 3.938296650546552e-06, 'epoch': 3.05}
 30%|███       | 250/820 [1:48:03<6:27:32, 40.79s/it] 31%|███       | 251/820 [1:48:28<5:40:17, 35.88s/it]                                                     {'loss': 0.4469, 'grad_norm': 0.6961724605171711, 'learning_rate': 3.93045196494338e-06, 'epoch': 3.06}
 31%|███       | 251/820 [1:48:28<5:40:17, 35.88s/it] 31%|███       | 252/820 [1:48:49<4:58:47, 31.56s/it]                                                     {'loss': 0.2902, 'grad_norm': 0.5921880407269021, 'learning_rate': 3.9225862829426184e-06, 'epoch': 3.07}
 31%|███       | 252/820 [1:48:49<4:58:47, 31.56s/it] 31%|███       | 253/820 [1:49:13<4:34:52, 29.09s/it]                                                     {'loss': 0.4325, 'grad_norm': 0.5734885328483981, 'learning_rate': 3.914699719997976e-06, 'epoch': 3.09}
 31%|███       | 253/820 [1:49:13<4:34:52, 29.09s/it] 31%|███       | 254/820 [1:49:37<4:20:57, 27.66s/it]                                                     {'loss': 0.509, 'grad_norm': 0.5357731137610114, 'learning_rate': 3.906792391869657e-06, 'epoch': 3.1}
 31%|███       | 254/820 [1:49:37<4:20:57, 27.66s/it] 31%|███       | 255/820 [1:50:00<4:05:50, 26.11s/it]                                                     {'loss': 0.3597, 'grad_norm': 0.5477815752514277, 'learning_rate': 3.898864414622661e-06, 'epoch': 3.11}
 31%|███       | 255/820 [1:50:00<4:05:50, 26.11s/it] 31%|███       | 256/820 [1:50:25<4:03:09, 25.87s/it]                                                     {'loss': 0.3904, 'grad_norm': 0.4693850166431201, 'learning_rate': 3.890915904625075e-06, 'epoch': 3.12}
 31%|███       | 256/820 [1:50:25<4:03:09, 25.87s/it] 31%|███▏      | 257/820 [1:50:48<3:54:51, 25.03s/it]                                                     {'loss': 0.4647, 'grad_norm': 0.5944819898513098, 'learning_rate': 3.882946978546375e-06, 'epoch': 3.13}
 31%|███▏      | 257/820 [1:50:48<3:54:51, 25.03s/it] 31%|███▏      | 258/820 [1:51:14<3:56:49, 25.28s/it]                                                     {'loss': 0.4951, 'grad_norm': 0.5465884087187566, 'learning_rate': 3.874957753355701e-06, 'epoch': 3.15}
 31%|███▏      | 258/820 [1:51:14<3:56:49, 25.28s/it] 32%|███▏      | 259/820 [1:51:36<3:48:59, 24.49s/it]                                                     {'loss': 0.3427, 'grad_norm': 0.6499458954372591, 'learning_rate': 3.8669483463201505e-06, 'epoch': 3.16}
 32%|███▏      | 259/820 [1:51:36<3:48:59, 24.49s/it] 32%|███▏      | 260/820 [1:51:54<3:29:25, 22.44s/it]                                                     {'loss': 0.4553, 'grad_norm': 0.6353797257942655, 'learning_rate': 3.858918875003053e-06, 'epoch': 3.17}
 32%|███▏      | 260/820 [1:51:54<3:29:25, 22.44s/it] 32%|███▏      | 261/820 [1:52:16<3:26:44, 22.19s/it]                                                     {'loss': 0.3807, 'grad_norm': 0.5201104602812512, 'learning_rate': 3.8508694572622426e-06, 'epoch': 3.18}
 32%|███▏      | 261/820 [1:52:16<3:26:44, 22.19s/it] 32%|███▏      | 262/820 [1:52:41<3:36:25, 23.27s/it]                                                     {'loss': 0.4027, 'grad_norm': 0.5302164671332141, 'learning_rate': 3.842800211248333e-06, 'epoch': 3.2}
 32%|███▏      | 262/820 [1:52:41<3:36:25, 23.27s/it] 32%|███▏      | 263/820 [1:53:05<3:35:33, 23.22s/it]                                                     {'loss': 0.3985, 'grad_norm': 0.46880972548347066, 'learning_rate': 3.8347112554029765e-06, 'epoch': 3.21}
 32%|███▏      | 263/820 [1:53:05<3:35:33, 23.22s/it] 32%|███▏      | 264/820 [1:53:27<3:32:39, 22.95s/it]                                                     {'loss': 0.3713, 'grad_norm': 0.5131561819935592, 'learning_rate': 3.8266027084571335e-06, 'epoch': 3.22}
 32%|███▏      | 264/820 [1:53:27<3:32:39, 22.95s/it] 32%|███▏      | 265/820 [1:53:50<3:31:24, 22.86s/it]                                                     {'loss': 0.4127, 'grad_norm': 0.4677051284911905, 'learning_rate': 3.818474689429324e-06, 'epoch': 3.23}
 32%|███▏      | 265/820 [1:53:50<3:31:24, 22.86s/it] 32%|███▏      | 266/820 [1:54:14<3:34:58, 23.28s/it]                                                     {'loss': 0.3944, 'grad_norm': 0.5538602724316165, 'learning_rate': 3.810327317623881e-06, 'epoch': 3.24}
 32%|███▏      | 266/820 [1:54:14<3:34:58, 23.28s/it] 33%|███▎      | 267/820 [1:54:38<3:38:20, 23.69s/it]                                                     {'loss': 0.318, 'grad_norm': 0.4547846218101878, 'learning_rate': 3.8021607126292015e-06, 'epoch': 3.26}
 33%|███▎      | 267/820 [1:54:38<3:38:20, 23.69s/it] 33%|███▎      | 268/820 [1:55:03<3:40:27, 23.96s/it]                                                     {'loss': 0.4594, 'grad_norm': 0.5210453272846833, 'learning_rate': 3.793974994315991e-06, 'epoch': 3.27}
 33%|███▎      | 268/820 [1:55:03<3:40:27, 23.96s/it] 33%|███▎      | 269/820 [1:55:28<3:42:29, 24.23s/it]                                                     {'loss': 0.3385, 'grad_norm': 0.44258226392058586, 'learning_rate': 3.7857702828355038e-06, 'epoch': 3.28}
 33%|███▎      | 269/820 [1:55:28<3:42:29, 24.23s/it] 33%|███▎      | 270/820 [1:55:49<3:34:25, 23.39s/it]                                                     {'loss': 0.3258, 'grad_norm': 0.48897063867516455, 'learning_rate': 3.7775466986177763e-06, 'epoch': 3.29}
 33%|███▎      | 270/820 [1:55:49<3:34:25, 23.39s/it] 33%|███▎      | 271/820 [1:56:15<3:40:25, 24.09s/it]                                                     {'loss': 0.5014, 'grad_norm': 0.7317534089405876, 'learning_rate': 3.7693043623698637e-06, 'epoch': 3.3}
 33%|███▎      | 271/820 [1:56:15<3:40:25, 24.09s/it] 33%|███▎      | 272/820 [1:56:41<3:44:22, 24.57s/it]                                                     {'loss': 0.4176, 'grad_norm': 0.5388378235112378, 'learning_rate': 3.7610433950740667e-06, 'epoch': 3.32}
 33%|███▎      | 272/820 [1:56:41<3:44:22, 24.57s/it] 33%|███▎      | 273/820 [1:57:08<3:50:46, 25.31s/it]                                                     {'loss': 0.4421, 'grad_norm': 0.5579037873448793, 'learning_rate': 3.752763917986154e-06, 'epoch': 3.33}
 33%|███▎      | 273/820 [1:57:08<3:50:46, 25.31s/it] 33%|███▎      | 274/820 [1:57:30<3:43:10, 24.52s/it]                                                     {'loss': 0.3707, 'grad_norm': 0.4946038306704897, 'learning_rate': 3.7444660526335853e-06, 'epoch': 3.34}
 33%|███▎      | 274/820 [1:57:30<3:43:10, 24.52s/it] 34%|███▎      | 275/820 [1:57:56<3:46:24, 24.92s/it]                                                     {'loss': 0.424, 'grad_norm': 0.4917409572707106, 'learning_rate': 3.736149920813726e-06, 'epoch': 3.35}
 34%|███▎      | 275/820 [1:57:56<3:46:24, 24.92s/it] 34%|███▎      | 276/820 [1:58:13<3:24:30, 22.56s/it]                                                     {'loss': 0.4437, 'grad_norm': 0.5009483872387901, 'learning_rate': 3.7278156445920584e-06, 'epoch': 3.37}
 34%|███▎      | 276/820 [1:58:13<3:24:30, 22.56s/it] 34%|███▍      | 277/820 [1:58:36<3:24:53, 22.64s/it]                                                     {'loss': 0.3874, 'grad_norm': 0.47443257699562896, 'learning_rate': 3.719463346300392e-06, 'epoch': 3.38}
 34%|███▍      | 277/820 [1:58:36<3:24:53, 22.64s/it] 34%|███▍      | 278/820 [1:58:58<3:22:32, 22.42s/it]                                                     {'loss': 0.361, 'grad_norm': 0.6416534207855509, 'learning_rate': 3.711093148535068e-06, 'epoch': 3.39}
 34%|███▍      | 278/820 [1:58:58<3:22:32, 22.42s/it] 34%|███▍      | 279/820 [1:59:20<3:20:08, 22.20s/it]                                                     {'loss': 0.367, 'grad_norm': 0.5389239472223252, 'learning_rate': 3.702705174155156e-06, 'epoch': 3.4}
 34%|███▍      | 279/820 [1:59:20<3:20:08, 22.20s/it] 34%|███▍      | 280/820 [1:59:43<3:23:42, 22.63s/it]                                                     {'loss': 0.5048, 'grad_norm': 0.5236897372788462, 'learning_rate': 3.6942995462806574e-06, 'epoch': 3.41}
 34%|███▍      | 280/820 [1:59:43<3:23:42, 22.63s/it] 34%|███▍      | 281/820 [2:00:05<3:21:43, 22.46s/it]                                                     {'loss': 0.3949, 'grad_norm': 0.5261906321745383, 'learning_rate': 3.685876388290691e-06, 'epoch': 3.43}
 34%|███▍      | 281/820 [2:00:05<3:21:43, 22.46s/it] 34%|███▍      | 282/820 [2:00:29<3:25:13, 22.89s/it]                                                     {'loss': 0.3183, 'grad_norm': 0.5243362656913179, 'learning_rate': 3.6774358238216878e-06, 'epoch': 3.44}
 34%|███▍      | 282/820 [2:00:29<3:25:13, 22.89s/it] 35%|███▍      | 283/820 [2:00:53<3:27:25, 23.18s/it]                                                     {'loss': 0.3889, 'grad_norm': 0.5529868458562283, 'learning_rate': 3.668977976765572e-06, 'epoch': 3.45}
 35%|███▍      | 283/820 [2:00:53<3:27:25, 23.18s/it] 35%|███▍      | 284/820 [2:01:13<3:17:53, 22.15s/it]                                                     {'loss': 0.473, 'grad_norm': 0.5096434830689052, 'learning_rate': 3.660502971267945e-06, 'epoch': 3.46}
 35%|███▍      | 284/820 [2:01:13<3:17:53, 22.15s/it] 35%|███▍      | 285/820 [2:01:37<3:22:05, 22.66s/it]                                                     {'loss': 0.4434, 'grad_norm': 0.5270626909767595, 'learning_rate': 3.6520109317262624e-06, 'epoch': 3.48}
 35%|███▍      | 285/820 [2:01:37<3:22:05, 22.66s/it] 35%|███▍      | 286/820 [2:01:59<3:19:24, 22.41s/it]                                                     {'loss': 0.3629, 'grad_norm': 0.5176911933788192, 'learning_rate': 3.6435019827880093e-06, 'epoch': 3.49}
 35%|███▍      | 286/820 [2:01:59<3:19:24, 22.41s/it] 35%|███▌      | 287/820 [2:02:22<3:21:51, 22.72s/it]                                                     {'loss': 0.3974, 'grad_norm': 0.5101393573497236, 'learning_rate': 3.634976249348867e-06, 'epoch': 3.5}
 35%|███▌      | 287/820 [2:02:22<3:21:51, 22.72s/it] 35%|███▌      | 288/820 [2:02:45<3:23:12, 22.92s/it]                                                     {'loss': 0.4229, 'grad_norm': 0.49378796067766617, 'learning_rate': 3.626433856550886e-06, 'epoch': 3.51}
 35%|███▌      | 288/820 [2:02:45<3:23:12, 22.92s/it] 35%|███▌      | 289/820 [2:03:11<3:29:07, 23.63s/it]                                                     {'loss': 0.328, 'grad_norm': 0.4702406144957737, 'learning_rate': 3.6178749297806414e-06, 'epoch': 3.52}
 35%|███▌      | 289/820 [2:03:11<3:29:07, 23.63s/it] 35%|███▌      | 290/820 [2:03:34<3:28:04, 23.55s/it]                                                     {'loss': 0.3894, 'grad_norm': 0.556445383615035, 'learning_rate': 3.6092995946673996e-06, 'epoch': 3.54}
 35%|███▌      | 290/820 [2:03:34<3:28:04, 23.55s/it] 35%|███▌      | 291/820 [2:03:59<3:31:33, 23.99s/it]                                                     {'loss': 0.4469, 'grad_norm': 0.45400988479504456, 'learning_rate': 3.6007079770812704e-06, 'epoch': 3.55}
 35%|███▌      | 291/820 [2:03:59<3:31:33, 23.99s/it] 36%|███▌      | 292/820 [2:04:17<3:15:04, 22.17s/it]                                                     {'loss': 0.2348, 'grad_norm': 0.47789698686805665, 'learning_rate': 3.5921002031313586e-06, 'epoch': 3.56}
 36%|███▌      | 292/820 [2:04:17<3:15:04, 22.17s/it] 36%|███▌      | 293/820 [2:04:41<3:18:18, 22.58s/it]                                                     {'loss': 0.4855, 'grad_norm': 0.5318835353749222, 'learning_rate': 3.583476399163917e-06, 'epoch': 3.57}
 36%|███▌      | 293/820 [2:04:41<3:18:18, 22.58s/it] 36%|███▌      | 294/820 [2:05:03<3:17:18, 22.51s/it]                                                     {'loss': 0.4232, 'grad_norm': 0.5403328957474239, 'learning_rate': 3.574836691760489e-06, 'epoch': 3.59}
 36%|███▌      | 294/820 [2:05:03<3:17:18, 22.51s/it] 36%|███▌      | 295/820 [2:05:22<3:08:33, 21.55s/it]                                                     {'loss': 0.4355, 'grad_norm': 0.49644776348844105, 'learning_rate': 3.5661812077360496e-06, 'epoch': 3.6}
 36%|███▌      | 295/820 [2:05:22<3:08:33, 21.55s/it] 36%|███▌      | 296/820 [2:05:45<3:12:25, 22.03s/it]                                                     {'loss': 0.3562, 'grad_norm': 0.45658472412401235, 'learning_rate': 3.557510074137147e-06, 'epoch': 3.61}
 36%|███▌      | 296/820 [2:05:45<3:12:25, 22.03s/it] 36%|███▌      | 297/820 [2:06:10<3:17:36, 22.67s/it]                                                     {'loss': 0.5755, 'grad_norm': 0.5106059043105413, 'learning_rate': 3.548823418240037e-06, 'epoch': 3.62}
 36%|███▌      | 297/820 [2:06:10<3:17:36, 22.67s/it] 36%|███▋      | 298/820 [2:06:34<3:20:34, 23.05s/it]                                                     {'loss': 0.3301, 'grad_norm': 0.48952117478623136, 'learning_rate': 3.540121367548811e-06, 'epoch': 3.63}
 36%|███▋      | 298/820 [2:06:34<3:20:34, 23.05s/it] 36%|███▋      | 299/820 [2:06:59<3:27:06, 23.85s/it]                                                     {'loss': 0.3869, 'grad_norm': 0.45220839792483253, 'learning_rate': 3.5314040497935313e-06, 'epoch': 3.65}
 36%|███▋      | 299/820 [2:06:59<3:27:06, 23.85s/it] 37%|███▋      | 300/820 [2:07:20<3:18:42, 22.93s/it]                                                     {'loss': 0.347, 'grad_norm': 0.4722715301570499, 'learning_rate': 3.5226715929283507e-06, 'epoch': 3.66}
 37%|███▋      | 300/820 [2:07:20<3:18:42, 22.93s/it] 37%|███▋      | 301/820 [2:07:44<3:21:55, 23.34s/it]                                                     {'loss': 0.4435, 'grad_norm': 0.51635675959658, 'learning_rate': 3.5139241251296347e-06, 'epoch': 3.67}
 37%|███▋      | 301/820 [2:07:44<3:21:55, 23.34s/it] 37%|███▋      | 302/820 [2:08:07<3:19:01, 23.05s/it]                                                     {'loss': 0.4163, 'grad_norm': 0.49511328678160715, 'learning_rate': 3.505161774794085e-06, 'epoch': 3.68}
 37%|███▋      | 302/820 [2:08:07<3:19:01, 23.05s/it] 37%|███▋      | 303/820 [2:08:30<3:19:54, 23.20s/it]                                                     {'loss': 0.4167, 'grad_norm': 0.45590848929732114, 'learning_rate': 3.496384670536849e-06, 'epoch': 3.7}
 37%|███▋      | 303/820 [2:08:30<3:19:54, 23.20s/it] 37%|███▋      | 304/820 [2:08:54<3:19:54, 23.25s/it]                                                     {'loss': 0.3789, 'grad_norm': 0.4569414583010111, 'learning_rate': 3.487592941189636e-06, 'epoch': 3.71}
 37%|███▋      | 304/820 [2:08:54<3:19:54, 23.25s/it] 37%|███▋      | 305/820 [2:09:16<3:17:42, 23.03s/it]                                                     {'loss': 0.4279, 'grad_norm': 0.5155342717884289, 'learning_rate': 3.478786715798823e-06, 'epoch': 3.72}
 37%|███▋      | 305/820 [2:09:16<3:17:42, 23.03s/it] 37%|███▋      | 306/820 [2:09:38<3:14:09, 22.66s/it]                                                     {'loss': 0.4995, 'grad_norm': 0.5434277515833884, 'learning_rate': 3.469966123623563e-06, 'epoch': 3.73}
 37%|███▋      | 306/820 [2:09:38<3:14:09, 22.66s/it] 37%|███▋      | 307/820 [2:10:01<3:15:13, 22.83s/it]                                                     {'loss': 0.4664, 'grad_norm': 0.4291155485030541, 'learning_rate': 3.4611312941338892e-06, 'epoch': 3.74}
 37%|███▋      | 307/820 [2:10:01<3:15:13, 22.83s/it] 38%|███▊      | 308/820 [2:10:24<3:16:00, 22.97s/it]                                                     {'loss': 0.3463, 'grad_norm': 0.49031617330034677, 'learning_rate': 3.4522823570088073e-06, 'epoch': 3.76}
 38%|███▊      | 308/820 [2:10:24<3:16:00, 22.97s/it] 38%|███▊      | 309/820 [2:10:47<3:15:40, 22.98s/it]                                                     {'loss': 0.3353, 'grad_norm': 0.5626494835018173, 'learning_rate': 3.443419442134402e-06, 'epoch': 3.77}
 38%|███▊      | 309/820 [2:10:47<3:15:40, 22.98s/it] 38%|███▊      | 310/820 [2:11:11<3:17:35, 23.25s/it]                                                     {'loss': 0.4181, 'grad_norm': 0.4516210361787796, 'learning_rate': 3.434542679601922e-06, 'epoch': 3.78}
 38%|███▊      | 310/820 [2:11:11<3:17:35, 23.25s/it] 38%|███▊      | 311/820 [2:11:32<3:11:47, 22.61s/it]                                                     {'loss': 0.3321, 'grad_norm': 0.5731408703245585, 'learning_rate': 3.4256521997058766e-06, 'epoch': 3.79}
 38%|███▊      | 311/820 [2:11:32<3:11:47, 22.61s/it] 38%|███▊      | 312/820 [2:11:55<3:12:20, 22.72s/it]                                                     {'loss': 0.4126, 'grad_norm': 0.4856398579118607, 'learning_rate': 3.4167481329421204e-06, 'epoch': 3.8}
 38%|███▊      | 312/820 [2:11:55<3:12:20, 22.72s/it] 38%|███▊      | 313/820 [2:12:22<3:20:41, 23.75s/it]                                                     {'loss': 0.407, 'grad_norm': 0.4575664472328043, 'learning_rate': 3.4078306100059357e-06, 'epoch': 3.82}
 38%|███▊      | 313/820 [2:12:22<3:20:41, 23.75s/it] 38%|███▊      | 314/820 [2:12:48<3:26:25, 24.48s/it]                                                     {'loss': 0.4357, 'grad_norm': 0.5390517543093226, 'learning_rate': 3.39889976179012e-06, 'epoch': 3.83}
 38%|███▊      | 314/820 [2:12:48<3:26:25, 24.48s/it] 38%|███▊      | 315/820 [2:13:11<3:21:42, 23.96s/it]                                                     {'loss': 0.4159, 'grad_norm': 0.5325203735733004, 'learning_rate': 3.3899557193830585e-06, 'epoch': 3.84}
 38%|███▊      | 315/820 [2:13:11<3:21:42, 23.96s/it] 39%|███▊      | 316/820 [2:13:33<3:18:17, 23.61s/it]                                                     {'loss': 0.4665, 'grad_norm': 0.45763819726967575, 'learning_rate': 3.380998614066805e-06, 'epoch': 3.85}
 39%|███▊      | 316/820 [2:13:33<3:18:17, 23.61s/it] 39%|███▊      | 317/820 [2:13:58<3:20:14, 23.89s/it]                                                     {'loss': 0.3663, 'grad_norm': 0.47824911276959403, 'learning_rate': 3.3720285773151508e-06, 'epoch': 3.87}
 39%|███▊      | 317/820 [2:13:58<3:20:14, 23.89s/it] 39%|███▉      | 318/820 [2:14:21<3:17:45, 23.64s/it]                                                     {'loss': 0.4271, 'grad_norm': 0.5990871879668419, 'learning_rate': 3.363045740791698e-06, 'epoch': 3.88}
 39%|███▉      | 318/820 [2:14:21<3:17:45, 23.64s/it] 39%|███▉      | 319/820 [2:14:44<3:16:18, 23.51s/it]                                                     {'loss': 0.513, 'grad_norm': 0.5392674066430055, 'learning_rate': 3.3540502363479278e-06, 'epoch': 3.89}
 39%|███▉      | 319/820 [2:14:44<3:16:18, 23.51s/it] 39%|███▉      | 320/820 [2:15:08<3:15:50, 23.50s/it]                                                     {'loss': 0.4903, 'grad_norm': 0.5576995616898007, 'learning_rate': 3.345042196021257e-06, 'epoch': 3.9}
 39%|███▉      | 320/820 [2:15:08<3:15:50, 23.50s/it] 39%|███▉      | 321/820 [2:15:33<3:21:01, 24.17s/it]                                                     {'loss': 0.4489, 'grad_norm': 0.7062190604348012, 'learning_rate': 3.3360217520331127e-06, 'epoch': 3.91}
 39%|███▉      | 321/820 [2:15:33<3:21:01, 24.17s/it] 39%|███▉      | 322/820 [2:15:56<3:17:20, 23.78s/it]                                                     {'loss': 0.4023, 'grad_norm': 0.455418761391345, 'learning_rate': 3.326989036786981e-06, 'epoch': 3.93}
 39%|███▉      | 322/820 [2:15:56<3:17:20, 23.78s/it] 39%|███▉      | 323/820 [2:16:19<3:14:30, 23.48s/it]                                                     {'loss': 0.4597, 'grad_norm': 0.5541540833611142, 'learning_rate': 3.3179441828664694e-06, 'epoch': 3.94}
 39%|███▉      | 323/820 [2:16:19<3:14:30, 23.48s/it] 40%|███▉      | 324/820 [2:16:44<3:18:15, 23.98s/it]                                                     {'loss': 0.3519, 'grad_norm': 0.5035512311470552, 'learning_rate': 3.3088873230333562e-06, 'epoch': 3.95}
 40%|███▉      | 324/820 [2:16:44<3:18:15, 23.98s/it] 40%|███▉      | 325/820 [2:17:06<3:13:00, 23.40s/it]                                                     {'loss': 0.2892, 'grad_norm': 0.6152583520168498, 'learning_rate': 3.2998185902256475e-06, 'epoch': 3.96}
 40%|███▉      | 325/820 [2:17:06<3:13:00, 23.40s/it] 40%|███▉      | 326/820 [2:17:30<3:12:44, 23.41s/it]                                                     {'loss': 0.311, 'grad_norm': 0.45095112298114265, 'learning_rate': 3.290738117555622e-06, 'epoch': 3.98}
 40%|███▉      | 326/820 [2:17:30<3:12:44, 23.41s/it] 40%|███▉      | 327/820 [2:17:52<3:09:04, 23.01s/it]                                                     {'loss': 0.5163, 'grad_norm': 0.45727886111786953, 'learning_rate': 3.281646038307875e-06, 'epoch': 3.99}
 40%|███▉      | 327/820 [2:17:52<3:09:04, 23.01s/it] 40%|████      | 328/820 [2:18:17<3:13:36, 23.61s/it]                                                     {'loss': 0.2991, 'grad_norm': 0.5139890959860766, 'learning_rate': 3.272542485937369e-06, 'epoch': 4.0}
 40%|████      | 328/820 [2:18:17<3:13:36, 23.61s/it][INFO|trainer.py:3942] 2025-06-02 09:14:17,010 >> Saving model checkpoint to /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-328
[INFO|configuration_utils.py:423] 2025-06-02 09:14:17,013 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-328/config.json
[INFO|configuration_utils.py:909] 2025-06-02 09:14:17,013 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-328/generation_config.json
[INFO|modeling_utils.py:3048] 2025-06-02 09:15:20,479 >> The model is bigger than the maximum size per checkpoint (5GB) and is going to be split in 14 checkpoint shards. You can find where each parameters has been saved in the index located at /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-328/model.safetensors.index.json.
[INFO|tokenization_utils_base.py:2500] 2025-06-02 09:15:20,482 >> tokenizer config file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-328/tokenizer_config.json
[INFO|tokenization_utils_base.py:2509] 2025-06-02 09:15:20,483 >> Special tokens file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-328/special_tokens_map.json
[2025-06-02 09:15:20,679] [INFO] [logging.py:128:log_dist] [Rank 0] [Torch] Checkpoint global_step328 is about to be saved!
[2025-06-02 09:15:25,986] [INFO] [logging.py:128:log_dist] [Rank 0] Saving model checkpoint: /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-328/global_step328/zero_pp_rank_0_mp_rank_00_model_states.pt
[2025-06-02 09:15:25,987] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-328/global_step328/zero_pp_rank_0_mp_rank_00_model_states.pt...
[2025-06-02 09:15:26,016] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-328/global_step328/zero_pp_rank_0_mp_rank_00_model_states.pt.
[2025-06-02 09:15:26,021] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-328/global_step328/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt...
[2025-06-02 09:16:39,692] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-328/global_step328/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt.
[2025-06-02 09:16:39,693] [INFO] [engine.py:3572:_save_zero_checkpoint] zero checkpoint saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-328/global_step328/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt
[2025-06-02 09:16:47,447] [INFO] [torch_checkpoint_engine.py:33:commit] [Torch] Checkpoint global_step328 is ready now!
 40%|████      | 329/820 [2:21:28<10:04:37, 73.89s/it]                                                      {'loss': 0.2999, 'grad_norm': 0.7245815427199112, 'learning_rate': 3.263427594067468e-06, 'epoch': 4.01}
 40%|████      | 329/820 [2:21:28<10:04:37, 73.89s/it] 40%|████      | 330/820 [2:21:51<7:58:57, 58.65s/it]                                                      {'loss': 0.2545, 'grad_norm': 0.5846697189380715, 'learning_rate': 3.2543014964879814e-06, 'epoch': 4.02}
 40%|████      | 330/820 [2:21:51<7:58:57, 58.65s/it] 40%|████      | 331/820 [2:22:14<6:30:43, 47.94s/it]                                                     {'loss': 0.2921, 'grad_norm': 0.4813263374384533, 'learning_rate': 3.2451643271531945e-06, 'epoch': 4.04}
 40%|████      | 331/820 [2:22:14<6:30:43, 47.94s/it] 40%|████      | 332/820 [2:22:38<5:30:35, 40.65s/it]                                                     {'loss': 0.4094, 'grad_norm': 0.5110062702249112, 'learning_rate': 3.2360162201799085e-06, 'epoch': 4.05}
 40%|████      | 332/820 [2:22:38<5:30:35, 40.65s/it] 41%|████      | 333/820 [2:23:02<4:49:31, 35.67s/it]                                                     {'loss': 0.4008, 'grad_norm': 0.7092349188939525, 'learning_rate': 3.226857309845468e-06, 'epoch': 4.06}
 41%|████      | 333/820 [2:23:02<4:49:31, 35.67s/it] 41%|████      | 334/820 [2:23:26<4:21:29, 32.28s/it]                                                     {'loss': 0.3335, 'grad_norm': 0.7377607361790794, 'learning_rate': 3.21768773058579e-06, 'epoch': 4.07}
 41%|████      | 334/820 [2:23:26<4:21:29, 32.28s/it] 41%|████      | 335/820 [2:23:52<4:04:59, 30.31s/it]                                                     {'loss': 0.3336, 'grad_norm': 0.43980904852442587, 'learning_rate': 3.208507616993393e-06, 'epoch': 4.09}
 41%|████      | 335/820 [2:23:52<4:04:59, 30.31s/it] 41%|████      | 336/820 [2:24:13<3:43:25, 27.70s/it]                                                     {'loss': 0.338, 'grad_norm': 0.47680695083023295, 'learning_rate': 3.1993171038154203e-06, 'epoch': 4.1}
 41%|████      | 336/820 [2:24:13<3:43:25, 27.70s/it] 41%|████      | 337/820 [2:24:35<3:29:14, 25.99s/it]                                                     {'loss': 0.2769, 'grad_norm': 0.6289843367994942, 'learning_rate': 3.1901163259516597e-06, 'epoch': 4.11}
 41%|████      | 337/820 [2:24:35<3:29:14, 25.99s/it] 41%|████      | 338/820 [2:24:58<3:20:59, 25.02s/it]                                                     {'loss': 0.3054, 'grad_norm': 0.5811872997953936, 'learning_rate': 3.180905418452569e-06, 'epoch': 4.12}
 41%|████      | 338/820 [2:24:58<3:20:59, 25.02s/it] 41%|████▏     | 339/820 [2:25:21<3:16:30, 24.51s/it]                                                     {'loss': 0.272, 'grad_norm': 0.5932388563608669, 'learning_rate': 3.171684516517287e-06, 'epoch': 4.13}
 41%|████▏     | 339/820 [2:25:21<3:16:30, 24.51s/it] 41%|████▏     | 340/820 [2:25:46<3:15:09, 24.40s/it]                                                     {'loss': 0.3356, 'grad_norm': 0.5281290344514833, 'learning_rate': 3.162453755491655e-06, 'epoch': 4.15}
 41%|████▏     | 340/820 [2:25:46<3:15:09, 24.40s/it] 42%|████▏     | 341/820 [2:26:07<3:07:34, 23.50s/it]                                                     {'loss': 0.342, 'grad_norm': 0.5104546944261922, 'learning_rate': 3.1532132708662257e-06, 'epoch': 4.16}
 42%|████▏     | 341/820 [2:26:07<3:07:34, 23.50s/it] 42%|████▏     | 342/820 [2:26:30<3:06:33, 23.42s/it]                                                     {'loss': 0.3127, 'grad_norm': 0.6061210611917709, 'learning_rate': 3.143963198274278e-06, 'epoch': 4.17}
 42%|████▏     | 342/820 [2:26:30<3:06:33, 23.42s/it] 42%|████▏     | 343/820 [2:26:55<3:08:56, 23.77s/it]                                                     {'loss': 0.2517, 'grad_norm': 0.8414100013986332, 'learning_rate': 3.1347036734898234e-06, 'epoch': 4.18}
 42%|████▏     | 343/820 [2:26:55<3:08:56, 23.77s/it] 42%|████▏     | 344/820 [2:27:17<3:05:53, 23.43s/it]                                                     {'loss': 0.3547, 'grad_norm': 0.4991148673531441, 'learning_rate': 3.125434832425613e-06, 'epoch': 4.2}
 42%|████▏     | 344/820 [2:27:17<3:05:53, 23.43s/it] 42%|████▏     | 345/820 [2:27:40<3:04:09, 23.26s/it]                                                     {'loss': 0.3479, 'grad_norm': 0.5470501010630214, 'learning_rate': 3.1161568111311487e-06, 'epoch': 4.21}
 42%|████▏     | 345/820 [2:27:40<3:04:09, 23.26s/it] 42%|████▏     | 346/820 [2:28:05<3:06:51, 23.65s/it]                                                     {'loss': 0.381, 'grad_norm': 0.4674408156965647, 'learning_rate': 3.1068697457906736e-06, 'epoch': 4.22}
 42%|████▏     | 346/820 [2:28:05<3:06:51, 23.65s/it] 42%|████▏     | 347/820 [2:28:28<3:05:37, 23.55s/it]                                                     {'loss': 0.2511, 'grad_norm': 0.5224718372994955, 'learning_rate': 3.097573772721188e-06, 'epoch': 4.23}
 42%|████▏     | 347/820 [2:28:28<3:05:37, 23.55s/it] 42%|████▏     | 348/820 [2:28:51<3:04:27, 23.45s/it]                                                     {'loss': 0.3291, 'grad_norm': 0.6046596661231691, 'learning_rate': 3.0882690283704355e-06, 'epoch': 4.24}
 42%|████▏     | 348/820 [2:28:51<3:04:27, 23.45s/it] 43%|████▎     | 349/820 [2:29:16<3:06:53, 23.81s/it]                                                     {'loss': 0.3052, 'grad_norm': 0.6137081854259969, 'learning_rate': 3.078955649314909e-06, 'epoch': 4.26}
 43%|████▎     | 349/820 [2:29:16<3:06:53, 23.81s/it] 43%|████▎     | 350/820 [2:29:40<3:06:25, 23.80s/it]                                                     {'loss': 0.3895, 'grad_norm': 0.5400112133590427, 'learning_rate': 3.0696337722578444e-06, 'epoch': 4.27}
 43%|████▎     | 350/820 [2:29:40<3:06:25, 23.80s/it] 43%|████▎     | 351/820 [2:30:03<3:03:45, 23.51s/it]                                                     {'loss': 0.352, 'grad_norm': 0.5274265913498333, 'learning_rate': 3.0603035340272085e-06, 'epoch': 4.28}
 43%|████▎     | 351/820 [2:30:03<3:03:45, 23.51s/it] 43%|████▎     | 352/820 [2:30:24<2:57:34, 22.77s/it]                                                     {'loss': 0.3488, 'grad_norm': 0.5645944813546476, 'learning_rate': 3.0509650715736977e-06, 'epoch': 4.29}
 43%|████▎     | 352/820 [2:30:24<2:57:34, 22.77s/it] 43%|████▎     | 353/820 [2:30:48<3:02:07, 23.40s/it]                                                     {'loss': 0.4242, 'grad_norm': 0.581862323302101, 'learning_rate': 3.041618521968723e-06, 'epoch': 4.3}
 43%|████▎     | 353/820 [2:30:48<3:02:07, 23.40s/it] 43%|████▎     | 354/820 [2:31:13<3:03:36, 23.64s/it]                                                     {'loss': 0.4421, 'grad_norm': 0.49842011136493347, 'learning_rate': 3.0322640224024024e-06, 'epoch': 4.32}
 43%|████▎     | 354/820 [2:31:13<3:03:36, 23.64s/it] 43%|████▎     | 355/820 [2:31:33<2:54:45, 22.55s/it]                                                     {'loss': 0.3649, 'grad_norm': 0.535280575887119, 'learning_rate': 3.0229017101815424e-06, 'epoch': 4.33}
 43%|████▎     | 355/820 [2:31:33<2:54:45, 22.55s/it] 43%|████▎     | 356/820 [2:31:52<2:47:56, 21.72s/it]                                                     {'loss': 0.2438, 'grad_norm': 0.5531349984441016, 'learning_rate': 3.0135317227276247e-06, 'epoch': 4.34}
 43%|████▎     | 356/820 [2:31:52<2:47:56, 21.72s/it] 44%|████▎     | 357/820 [2:32:16<2:51:03, 22.17s/it]                                                     {'loss': 0.3732, 'grad_norm': 0.6192180311698514, 'learning_rate': 3.004154197574791e-06, 'epoch': 4.35}
 44%|████▎     | 357/820 [2:32:16<2:51:03, 22.17s/it] 44%|████▎     | 358/820 [2:32:37<2:49:27, 22.01s/it]                                                     {'loss': 0.4347, 'grad_norm': 0.5709478564553051, 'learning_rate': 2.994769272367822e-06, 'epoch': 4.37}
 44%|████▎     | 358/820 [2:32:37<2:49:27, 22.01s/it] 44%|████▍     | 359/820 [2:32:59<2:49:17, 22.03s/it]                                                     {'loss': 0.2791, 'grad_norm': 0.5081198500349832, 'learning_rate': 2.9853770848601168e-06, 'epoch': 4.38}
 44%|████▍     | 359/820 [2:32:59<2:49:17, 22.03s/it] 44%|████▍     | 360/820 [2:33:23<2:53:19, 22.61s/it]                                                     {'loss': 0.3385, 'grad_norm': 0.5788907749436043, 'learning_rate': 2.975977772911671e-06, 'epoch': 4.39}
 44%|████▍     | 360/820 [2:33:23<2:53:19, 22.61s/it] 44%|████▍     | 361/820 [2:33:46<2:52:17, 22.52s/it]                                                     {'loss': 0.4411, 'grad_norm': 0.5186577263186033, 'learning_rate': 2.966571474487057e-06, 'epoch': 4.4}
 44%|████▍     | 361/820 [2:33:46<2:52:17, 22.52s/it] 44%|████▍     | 362/820 [2:34:08<2:50:45, 22.37s/it]                                                     {'loss': 0.3123, 'grad_norm': 0.6396614560145575, 'learning_rate': 2.9571583276533923e-06, 'epoch': 4.41}
 44%|████▍     | 362/820 [2:34:08<2:50:45, 22.37s/it] 44%|████▍     | 363/820 [2:34:32<2:53:40, 22.80s/it]                                                     {'loss': 0.3471, 'grad_norm': 0.5061230664655288, 'learning_rate': 2.947738470578318e-06, 'epoch': 4.43}
 44%|████▍     | 363/820 [2:34:32<2:53:40, 22.80s/it] 44%|████▍     | 364/820 [2:34:56<2:58:10, 23.45s/it]                                                     {'loss': 0.329, 'grad_norm': 0.4992438216612931, 'learning_rate': 2.93831204152797e-06, 'epoch': 4.44}
 44%|████▍     | 364/820 [2:34:56<2:58:10, 23.45s/it] 45%|████▍     | 365/820 [2:35:20<2:58:00, 23.47s/it]                                                     {'loss': 0.4276, 'grad_norm': 0.48969759565983406, 'learning_rate': 2.928879178864946e-06, 'epoch': 4.45}
 45%|████▍     | 365/820 [2:35:20<2:58:00, 23.47s/it] 45%|████▍     | 366/820 [2:35:44<2:58:08, 23.54s/it]                                                     {'loss': 0.2273, 'grad_norm': 0.4571112924489709, 'learning_rate': 2.9194400210462808e-06, 'epoch': 4.46}
 45%|████▍     | 366/820 [2:35:44<2:58:08, 23.54s/it] 45%|████▍     | 367/820 [2:36:07<2:57:22, 23.49s/it]                                                     {'loss': 0.4149, 'grad_norm': 0.5302105233888106, 'learning_rate': 2.9099947066214072e-06, 'epoch': 4.48}
 45%|████▍     | 367/820 [2:36:07<2:57:22, 23.49s/it] 45%|████▍     | 368/820 [2:36:29<2:53:39, 23.05s/it]                                                     {'loss': 0.4295, 'grad_norm': 0.5572408881946017, 'learning_rate': 2.9005433742301274e-06, 'epoch': 4.49}
 45%|████▍     | 368/820 [2:36:29<2:53:39, 23.05s/it] 45%|████▌     | 369/820 [2:36:55<2:59:19, 23.86s/it]                                                     {'loss': 0.333, 'grad_norm': 0.4899563467527799, 'learning_rate': 2.8910861626005774e-06, 'epoch': 4.5}
 45%|████▌     | 369/820 [2:36:55<2:59:19, 23.86s/it] 45%|████▌     | 370/820 [2:37:18<2:56:33, 23.54s/it]                                                     {'loss': 0.3107, 'grad_norm': 0.46363119972398853, 'learning_rate': 2.8816232105471864e-06, 'epoch': 4.51}
 45%|████▌     | 370/820 [2:37:18<2:56:33, 23.54s/it] 45%|████▌     | 371/820 [2:37:44<3:01:39, 24.28s/it]                                                     {'loss': 0.3849, 'grad_norm': 0.47675589675107305, 'learning_rate': 2.8721546569686453e-06, 'epoch': 4.52}
 45%|████▌     | 371/820 [2:37:44<3:01:39, 24.28s/it] 45%|████▌     | 372/820 [2:38:09<3:04:21, 24.69s/it]                                                     {'loss': 0.4707, 'grad_norm': 0.5728425323473825, 'learning_rate': 2.8626806408458626e-06, 'epoch': 4.54}
 45%|████▌     | 372/820 [2:38:09<3:04:21, 24.69s/it] 45%|████▌     | 373/820 [2:38:33<3:01:48, 24.40s/it]                                                     {'loss': 0.4496, 'grad_norm': 0.5531088324365695, 'learning_rate': 2.8532013012399297e-06, 'epoch': 4.55}
 45%|████▌     | 373/820 [2:38:33<3:01:48, 24.40s/it] 46%|████▌     | 374/820 [2:38:57<2:59:56, 24.21s/it]                                                     {'loss': 0.3409, 'grad_norm': 0.4809204559577155, 'learning_rate': 2.843716777290074e-06, 'epoch': 4.56}
 46%|████▌     | 374/820 [2:38:57<2:59:56, 24.21s/it] 46%|████▌     | 375/820 [2:39:19<2:54:57, 23.59s/it]                                                     {'loss': 0.2673, 'grad_norm': 0.559485812454812, 'learning_rate': 2.8342272082116214e-06, 'epoch': 4.57}
 46%|████▌     | 375/820 [2:39:19<2:54:57, 23.59s/it] 46%|████▌     | 376/820 [2:39:44<2:57:24, 23.97s/it]                                                     {'loss': 0.3305, 'grad_norm': 0.5068030800623462, 'learning_rate': 2.8247327332939512e-06, 'epoch': 4.59}
 46%|████▌     | 376/820 [2:39:44<2:57:24, 23.97s/it] 46%|████▌     | 377/820 [2:40:07<2:55:16, 23.74s/it]                                                     {'loss': 0.3733, 'grad_norm': 0.5217147449189999, 'learning_rate': 2.81523349189845e-06, 'epoch': 4.6}
 46%|████▌     | 377/820 [2:40:07<2:55:16, 23.74s/it] 46%|████▌     | 378/820 [2:40:29<2:51:09, 23.24s/it]                                                     {'loss': 0.4554, 'grad_norm': 0.5512481245110884, 'learning_rate': 2.805729623456469e-06, 'epoch': 4.61}
 46%|████▌     | 378/820 [2:40:29<2:51:09, 23.24s/it] 46%|████▌     | 379/820 [2:40:51<2:48:50, 22.97s/it]                                                     {'loss': 0.3435, 'grad_norm': 0.4599253878816147, 'learning_rate': 2.796221267467274e-06, 'epoch': 4.62}
 46%|████▌     | 379/820 [2:40:51<2:48:50, 22.97s/it] 46%|████▋     | 380/820 [2:41:13<2:45:57, 22.63s/it]                                                     {'loss': 0.3079, 'grad_norm': 0.48707674025926634, 'learning_rate': 2.786708563496002e-06, 'epoch': 4.63}
 46%|████▋     | 380/820 [2:41:13<2:45:57, 22.63s/it] 46%|████▋     | 381/820 [2:41:38<2:49:47, 23.21s/it]                                                     {'loss': 0.3767, 'grad_norm': 0.452232191608158, 'learning_rate': 2.7771916511716073e-06, 'epoch': 4.65}
 46%|████▋     | 381/820 [2:41:38<2:49:47, 23.21s/it] 47%|████▋     | 382/820 [2:42:01<2:50:27, 23.35s/it]                                                     {'loss': 0.3932, 'grad_norm': 0.5594444628866698, 'learning_rate': 2.7676706701848187e-06, 'epoch': 4.66}
 47%|████▋     | 382/820 [2:42:01<2:50:27, 23.35s/it] 47%|████▋     | 383/820 [2:42:22<2:43:14, 22.41s/it]                                                     {'loss': 0.3189, 'grad_norm': 0.4878416355542225, 'learning_rate': 2.7581457602860836e-06, 'epoch': 4.67}
 47%|████▋     | 383/820 [2:42:22<2:43:14, 22.41s/it] 47%|████▋     | 384/820 [2:42:44<2:42:59, 22.43s/it]                                                     {'loss': 0.3096, 'grad_norm': 0.4961927560392598, 'learning_rate': 2.748617061283518e-06, 'epoch': 4.68}
 47%|████▋     | 384/820 [2:42:44<2:42:59, 22.43s/it] 47%|████▋     | 385/820 [2:43:08<2:46:27, 22.96s/it]                                                     {'loss': 0.2139, 'grad_norm': 0.5805084536570206, 'learning_rate': 2.739084713040856e-06, 'epoch': 4.7}
 47%|████▋     | 385/820 [2:43:08<2:46:27, 22.96s/it] 47%|████▋     | 386/820 [2:43:30<2:44:00, 22.67s/it]                                                     {'loss': 0.3637, 'grad_norm': 0.5678935522026025, 'learning_rate': 2.7295488554753957e-06, 'epoch': 4.71}
 47%|████▋     | 386/820 [2:43:30<2:44:00, 22.67s/it] 47%|████▋     | 387/820 [2:43:56<2:50:15, 23.59s/it]                                                     {'loss': 0.3681, 'grad_norm': 0.4290526040610437, 'learning_rate': 2.7200096285559446e-06, 'epoch': 4.72}
 47%|████▋     | 387/820 [2:43:56<2:50:15, 23.59s/it] 47%|████▋     | 388/820 [2:44:20<2:51:24, 23.81s/it]                                                     {'loss': 0.3419, 'grad_norm': 0.5385769748657846, 'learning_rate': 2.710467172300768e-06, 'epoch': 4.73}
 47%|████▋     | 388/820 [2:44:20<2:51:24, 23.81s/it] 47%|████▋     | 389/820 [2:44:45<2:52:50, 24.06s/it]                                                     {'loss': 0.3259, 'grad_norm': 0.454230703567282, 'learning_rate': 2.7009216267755295e-06, 'epoch': 4.74}
 47%|████▋     | 389/820 [2:44:45<2:52:50, 24.06s/it] 48%|████▊     | 390/820 [2:45:09<2:52:21, 24.05s/it]                                                     {'loss': 0.4611, 'grad_norm': 0.5024474590836908, 'learning_rate': 2.69137313209124e-06, 'epoch': 4.76}
 48%|████▊     | 390/820 [2:45:09<2:52:21, 24.05s/it] 48%|████▊     | 391/820 [2:45:33<2:51:35, 24.00s/it]                                                     {'loss': 0.2678, 'grad_norm': 0.716718978400369, 'learning_rate': 2.6818218284021957e-06, 'epoch': 4.77}
 48%|████▊     | 391/820 [2:45:33<2:51:35, 24.00s/it] 48%|████▊     | 392/820 [2:45:58<2:52:23, 24.17s/it]                                                     {'loss': 0.3435, 'grad_norm': 0.42742589048290247, 'learning_rate': 2.672267855903927e-06, 'epoch': 4.78}
 48%|████▊     | 392/820 [2:45:58<2:52:23, 24.17s/it] 48%|████▊     | 393/820 [2:46:21<2:50:33, 23.96s/it]                                                     {'loss': 0.3788, 'grad_norm': 0.5017950968177494, 'learning_rate': 2.662711354831136e-06, 'epoch': 4.79}
 48%|████▊     | 393/820 [2:46:21<2:50:33, 23.96s/it] 48%|████▊     | 394/820 [2:46:43<2:46:57, 23.51s/it]                                                     {'loss': 0.3226, 'grad_norm': 0.45795962191702755, 'learning_rate': 2.653152465455639e-06, 'epoch': 4.8}
 48%|████▊     | 394/820 [2:46:43<2:46:57, 23.51s/it] 48%|████▊     | 395/820 [2:47:07<2:45:52, 23.42s/it]                                                     {'loss': 0.3831, 'grad_norm': 0.5078247047079172, 'learning_rate': 2.643591328084309e-06, 'epoch': 4.82}
 48%|████▊     | 395/820 [2:47:07<2:45:52, 23.42s/it] 48%|████▊     | 396/820 [2:47:31<2:48:25, 23.83s/it]                                                     {'loss': 0.3514, 'grad_norm': 0.544762198145662, 'learning_rate': 2.6340280830570142e-06, 'epoch': 4.83}
 48%|████▊     | 396/820 [2:47:31<2:48:25, 23.83s/it] 48%|████▊     | 397/820 [2:47:56<2:48:46, 23.94s/it]                                                     {'loss': 0.3273, 'grad_norm': 0.45699549516900345, 'learning_rate': 2.6244628707445617e-06, 'epoch': 4.84}
 48%|████▊     | 397/820 [2:47:56<2:48:46, 23.94s/it] 49%|████▊     | 398/820 [2:48:19<2:46:16, 23.64s/it]                                                     {'loss': 0.397, 'grad_norm': 0.5406131152278794, 'learning_rate': 2.614895831546633e-06, 'epoch': 4.85}
 49%|████▊     | 398/820 [2:48:19<2:46:16, 23.64s/it] 49%|████▊     | 399/820 [2:48:42<2:44:49, 23.49s/it]                                                     {'loss': 0.3654, 'grad_norm': 0.4732263079713516, 'learning_rate': 2.6053271058897245e-06, 'epoch': 4.87}
 49%|████▊     | 399/820 [2:48:42<2:44:49, 23.49s/it] 49%|████▉     | 400/820 [2:49:05<2:44:57, 23.57s/it]                                                     {'loss': 0.2696, 'grad_norm': 0.5229179196528155, 'learning_rate': 2.595756834225089e-06, 'epoch': 4.88}
 49%|████▉     | 400/820 [2:49:05<2:44:57, 23.57s/it] 49%|████▉     | 401/820 [2:49:26<2:37:25, 22.54s/it]                                                     {'loss': 0.3562, 'grad_norm': 0.6583490276273588, 'learning_rate': 2.586185157026668e-06, 'epoch': 4.89}
 49%|████▉     | 401/820 [2:49:26<2:37:25, 22.54s/it] 49%|████▉     | 402/820 [2:49:40<2:19:56, 20.09s/it]                                                     {'loss': 0.3041, 'grad_norm': 0.7436046331715429, 'learning_rate': 2.576612214789039e-06, 'epoch': 4.9}
 49%|████▉     | 402/820 [2:49:40<2:19:56, 20.09s/it] 49%|████▉     | 403/820 [2:50:04<2:27:29, 21.22s/it]                                                     {'loss': 0.3618, 'grad_norm': 0.5630451908321359, 'learning_rate': 2.5670381480253416e-06, 'epoch': 4.91}
 49%|████▉     | 403/820 [2:50:04<2:27:29, 21.22s/it] 49%|████▉     | 404/820 [2:50:28<2:32:26, 21.99s/it]                                                     {'loss': 0.35, 'grad_norm': 0.4868726597200436, 'learning_rate': 2.5574630972652263e-06, 'epoch': 4.93}
 49%|████▉     | 404/820 [2:50:28<2:32:26, 21.99s/it] 49%|████▉     | 405/820 [2:50:51<2:35:25, 22.47s/it]                                                     {'loss': 0.2877, 'grad_norm': 0.4505454128821753, 'learning_rate': 2.547887203052786e-06, 'epoch': 4.94}
 49%|████▉     | 405/820 [2:50:51<2:35:25, 22.47s/it] 50%|████▉     | 406/820 [2:51:11<2:30:07, 21.76s/it]                                                     {'loss': 0.3807, 'grad_norm': 0.555484842022735, 'learning_rate': 2.538310605944491e-06, 'epoch': 4.95}
 50%|████▉     | 406/820 [2:51:11<2:30:07, 21.76s/it] 50%|████▉     | 407/820 [2:51:35<2:33:29, 22.30s/it]                                                     {'loss': 0.3644, 'grad_norm': 0.4610777152994092, 'learning_rate': 2.5287334465071335e-06, 'epoch': 4.96}
 50%|████▉     | 407/820 [2:51:35<2:33:29, 22.30s/it] 50%|████▉     | 408/820 [2:51:58<2:35:35, 22.66s/it]                                                     {'loss': 0.2862, 'grad_norm': 0.4568859578531175, 'learning_rate': 2.5191558653157542e-06, 'epoch': 4.98}
 50%|████▉     | 408/820 [2:51:58<2:35:35, 22.66s/it] 50%|████▉     | 409/820 [2:52:21<2:35:51, 22.75s/it]                                                     {'loss': 0.2978, 'grad_norm': 0.49028187534067297, 'learning_rate': 2.50957800295159e-06, 'epoch': 4.99}
 50%|████▉     | 409/820 [2:52:21<2:35:51, 22.75s/it] 50%|█████     | 410/820 [2:52:43<2:33:10, 22.42s/it]                                                     {'loss': 0.3953, 'grad_norm': 0.4991112923014299, 'learning_rate': 2.5e-06, 'epoch': 5.0}
 50%|█████     | 410/820 [2:52:43<2:33:10, 22.42s/it][INFO|trainer.py:3942] 2025-06-02 09:48:41,892 >> Saving model checkpoint to /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-410
[INFO|configuration_utils.py:423] 2025-06-02 09:48:41,895 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-410/config.json
[INFO|configuration_utils.py:909] 2025-06-02 09:48:41,896 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-410/generation_config.json
[INFO|modeling_utils.py:3048] 2025-06-02 09:49:47,073 >> The model is bigger than the maximum size per checkpoint (5GB) and is going to be split in 14 checkpoint shards. You can find where each parameters has been saved in the index located at /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-410/model.safetensors.index.json.
[INFO|tokenization_utils_base.py:2500] 2025-06-02 09:49:47,074 >> tokenizer config file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-410/tokenizer_config.json
[INFO|tokenization_utils_base.py:2509] 2025-06-02 09:49:47,074 >> Special tokens file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-410/special_tokens_map.json
[2025-06-02 09:49:51,426] [INFO] [logging.py:128:log_dist] [Rank 0] [Torch] Checkpoint global_step410 is about to be saved!
[2025-06-02 09:49:51,441] [INFO] [logging.py:128:log_dist] [Rank 0] Saving model checkpoint: /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-410/global_step410/zero_pp_rank_0_mp_rank_00_model_states.pt
[2025-06-02 09:49:51,442] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-410/global_step410/zero_pp_rank_0_mp_rank_00_model_states.pt...
[2025-06-02 09:49:51,468] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-410/global_step410/zero_pp_rank_0_mp_rank_00_model_states.pt.
[2025-06-02 09:49:51,474] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-410/global_step410/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt...
[2025-06-02 09:50:49,554] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-410/global_step410/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt.
[2025-06-02 09:50:49,556] [INFO] [engine.py:3572:_save_zero_checkpoint] zero checkpoint saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-410/global_step410/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt
[2025-06-02 09:50:55,565] [INFO] [torch_checkpoint_engine.py:33:commit] [Torch] Checkpoint global_step410 is ready now!
 50%|█████     | 411/820 [2:55:37<7:42:43, 67.88s/it]                                                     {'loss': 0.2203, 'grad_norm': 0.9336336105796922, 'learning_rate': 2.4904219970484104e-06, 'epoch': 5.01}
 50%|█████     | 411/820 [2:55:37<7:42:43, 67.88s/it] 50%|█████     | 412/820 [2:56:01<6:12:46, 54.82s/it]                                                     {'loss': 0.2797, 'grad_norm': 0.6791540772713566, 'learning_rate': 2.480844134684246e-06, 'epoch': 5.02}
 50%|█████     | 412/820 [2:56:01<6:12:46, 54.82s/it] 50%|█████     | 413/820 [2:56:23<5:05:02, 44.97s/it]                                                     {'loss': 0.2507, 'grad_norm': 0.5300950817461381, 'learning_rate': 2.471266553492868e-06, 'epoch': 5.04}
 50%|█████     | 413/820 [2:56:23<5:05:02, 44.97s/it] 50%|█████     | 414/820 [2:56:47<4:21:44, 38.68s/it]                                                     {'loss': 0.203, 'grad_norm': 0.8029096280142952, 'learning_rate': 2.4616893940555094e-06, 'epoch': 5.05}
 50%|█████     | 414/820 [2:56:47<4:21:44, 38.68s/it] 51%|█████     | 415/820 [2:57:11<3:51:12, 34.25s/it]                                                     {'loss': 0.2814, 'grad_norm': 1.1388267523979114, 'learning_rate': 2.452112796947215e-06, 'epoch': 5.06}
 51%|█████     | 415/820 [2:57:11<3:51:12, 34.25s/it] 51%|█████     | 416/820 [2:57:37<3:33:36, 31.72s/it]                                                     {'loss': 0.3079, 'grad_norm': 0.8843494535243439, 'learning_rate': 2.4425369027347746e-06, 'epoch': 5.07}
 51%|█████     | 416/820 [2:57:37<3:33:36, 31.72s/it] 51%|█████     | 417/820 [2:58:02<3:19:18, 29.67s/it]                                                     {'loss': 0.4023, 'grad_norm': 0.4926745182857435, 'learning_rate': 2.4329618519746593e-06, 'epoch': 5.09}
 51%|█████     | 417/820 [2:58:02<3:19:18, 29.67s/it] 51%|█████     | 418/820 [2:58:25<3:05:38, 27.71s/it]                                                     {'loss': 0.1935, 'grad_norm': 0.5291412473201853, 'learning_rate': 2.423387785210962e-06, 'epoch': 5.1}
 51%|█████     | 418/820 [2:58:25<3:05:38, 27.71s/it] 51%|█████     | 419/820 [2:58:50<3:00:22, 26.99s/it]                                                     {'loss': 0.193, 'grad_norm': 0.6185765169345195, 'learning_rate': 2.4138148429733323e-06, 'epoch': 5.11}
 51%|█████     | 419/820 [2:58:50<3:00:22, 26.99s/it] 51%|█████     | 420/820 [2:59:12<2:48:36, 25.29s/it]                                                     {'loss': 0.1839, 'grad_norm': 0.6808516878586064, 'learning_rate': 2.404243165774912e-06, 'epoch': 5.12}
 51%|█████     | 420/820 [2:59:12<2:48:36, 25.29s/it] 51%|█████▏    | 421/820 [2:59:35<2:44:15, 24.70s/it]                                                     {'loss': 0.3052, 'grad_norm': 0.6662962967943085, 'learning_rate': 2.394672894110276e-06, 'epoch': 5.13}
 51%|█████▏    | 421/820 [2:59:35<2:44:15, 24.70s/it] 51%|█████▏    | 422/820 [2:59:56<2:36:32, 23.60s/it]                                                     {'loss': 0.3247, 'grad_norm': 0.8429685051899392, 'learning_rate': 2.3851041684533677e-06, 'epoch': 5.15}
 51%|█████▏    | 422/820 [2:59:56<2:36:32, 23.60s/it] 52%|█████▏    | 423/820 [3:00:21<2:38:45, 23.99s/it]                                                     {'loss': 0.3199, 'grad_norm': 0.5440233304020149, 'learning_rate': 2.375537129255439e-06, 'epoch': 5.16}
 52%|█████▏    | 423/820 [3:00:21<2:38:45, 23.99s/it] 52%|█████▏    | 424/820 [3:00:45<2:38:30, 24.02s/it]                                                     {'loss': 0.3212, 'grad_norm': 0.7338604925358554, 'learning_rate': 2.3659719169429866e-06, 'epoch': 5.17}
 52%|█████▏    | 424/820 [3:00:45<2:38:30, 24.02s/it] 52%|█████▏    | 425/820 [3:01:08<2:36:31, 23.78s/it]                                                     {'loss': 0.3433, 'grad_norm': 0.7860408316066144, 'learning_rate': 2.356408671915692e-06, 'epoch': 5.18}
 52%|█████▏    | 425/820 [3:01:08<2:36:31, 23.78s/it] 52%|█████▏    | 426/820 [3:01:33<2:38:53, 24.20s/it]                                                     {'loss': 0.4608, 'grad_norm': 0.7735852132699238, 'learning_rate': 2.346847534544362e-06, 'epoch': 5.2}
 52%|█████▏    | 426/820 [3:01:33<2:38:53, 24.20s/it] 52%|█████▏    | 427/820 [3:01:58<2:38:22, 24.18s/it]                                                     {'loss': 0.3256, 'grad_norm': 0.6164315664766332, 'learning_rate': 2.3372886451688643e-06, 'epoch': 5.21}
 52%|█████▏    | 427/820 [3:01:58<2:38:22, 24.18s/it] 52%|█████▏    | 428/820 [3:02:18<2:30:16, 23.00s/it]                                                     {'loss': 0.2308, 'grad_norm': 0.6023963933632147, 'learning_rate': 2.3277321440960733e-06, 'epoch': 5.22}
 52%|█████▏    | 428/820 [3:02:18<2:30:16, 23.00s/it] 52%|█████▏    | 429/820 [3:02:32<2:13:20, 20.46s/it]                                                     {'loss': 0.2317, 'grad_norm': 0.6830272710148858, 'learning_rate': 2.3181781715978047e-06, 'epoch': 5.23}
 52%|█████▏    | 429/820 [3:02:32<2:13:20, 20.46s/it] 52%|█████▏    | 430/820 [3:02:51<2:10:16, 20.04s/it]                                                     {'loss': 0.3212, 'grad_norm': 0.7912268955410808, 'learning_rate': 2.308626867908761e-06, 'epoch': 5.24}
 52%|█████▏    | 430/820 [3:02:51<2:10:16, 20.04s/it] 53%|█████▎    | 431/820 [3:03:12<2:10:32, 20.14s/it]                                                     {'loss': 0.2165, 'grad_norm': 0.6027916863781991, 'learning_rate': 2.2990783732244713e-06, 'epoch': 5.26}
 53%|█████▎    | 431/820 [3:03:12<2:10:32, 20.14s/it] 53%|█████▎    | 432/820 [3:03:30<2:07:04, 19.65s/it]                                                     {'loss': 0.2619, 'grad_norm': 0.597291726801295, 'learning_rate': 2.2895328276992325e-06, 'epoch': 5.27}
 53%|█████▎    | 432/820 [3:03:30<2:07:04, 19.65s/it] 53%|█████▎    | 433/820 [3:03:51<2:08:35, 19.94s/it]                                                     {'loss': 0.2756, 'grad_norm': 0.652969443257861, 'learning_rate': 2.279990371444056e-06, 'epoch': 5.28}
 53%|█████▎    | 433/820 [3:03:51<2:08:35, 19.94s/it] 53%|█████▎    | 434/820 [3:04:16<2:18:43, 21.56s/it]                                                     {'loss': 0.3311, 'grad_norm': 0.48811562077311327, 'learning_rate': 2.270451144524605e-06, 'epoch': 5.29}
 53%|█████▎    | 434/820 [3:04:16<2:18:43, 21.56s/it] 53%|█████▎    | 435/820 [3:04:39<2:20:42, 21.93s/it]                                                     {'loss': 0.3262, 'grad_norm': 0.7843149221734196, 'learning_rate': 2.2609152869591445e-06, 'epoch': 5.3}
 53%|█████▎    | 435/820 [3:04:39<2:20:42, 21.93s/it] 53%|█████▎    | 436/820 [3:05:04<2:26:04, 22.82s/it]                                                     {'loss': 0.2509, 'grad_norm': 0.7002473740504788, 'learning_rate': 2.251382938716482e-06, 'epoch': 5.32}
 53%|█████▎    | 436/820 [3:05:04<2:26:04, 22.82s/it] 53%|█████▎    | 437/820 [3:05:26<2:24:48, 22.69s/it]                                                     {'loss': 0.2168, 'grad_norm': 0.5296792118435335, 'learning_rate': 2.2418542397139164e-06, 'epoch': 5.33}
 53%|█████▎    | 437/820 [3:05:26<2:24:48, 22.69s/it] 53%|█████▎    | 438/820 [3:05:51<2:28:58, 23.40s/it]                                                     {'loss': 0.2845, 'grad_norm': 0.6478916106394671, 'learning_rate': 2.2323293298151817e-06, 'epoch': 5.34}
 53%|█████▎    | 438/820 [3:05:51<2:28:58, 23.40s/it] 54%|█████▎    | 439/820 [3:06:15<2:29:39, 23.57s/it]                                                     {'loss': 0.1903, 'grad_norm': 0.5581342846873037, 'learning_rate': 2.222808348828393e-06, 'epoch': 5.35}
 54%|█████▎    | 439/820 [3:06:15<2:29:39, 23.57s/it] 54%|█████▎    | 440/820 [3:06:40<2:30:37, 23.78s/it]                                                     {'loss': 0.2723, 'grad_norm': 0.519466327523763, 'learning_rate': 2.2132914365039993e-06, 'epoch': 5.37}
 54%|█████▎    | 440/820 [3:06:40<2:30:37, 23.78s/it] 54%|█████▍    | 441/820 [3:07:05<2:33:00, 24.22s/it]                                                     {'loss': 0.28, 'grad_norm': 0.48286729721940447, 'learning_rate': 2.2037787325327265e-06, 'epoch': 5.38}
 54%|█████▍    | 441/820 [3:07:05<2:33:00, 24.22s/it] 54%|█████▍    | 442/820 [3:07:29<2:33:09, 24.31s/it]                                                     {'loss': 0.2775, 'grad_norm': 0.5731284703843695, 'learning_rate': 2.1942703765435317e-06, 'epoch': 5.39}
 54%|█████▍    | 442/820 [3:07:29<2:33:09, 24.31s/it] 54%|█████▍    | 443/820 [3:07:52<2:28:44, 23.67s/it]                                                     {'loss': 0.3571, 'grad_norm': 0.6390373880815029, 'learning_rate': 2.1847665081015502e-06, 'epoch': 5.4}
 54%|█████▍    | 443/820 [3:07:52<2:28:44, 23.67s/it] 54%|█████▍    | 444/820 [3:08:17<2:31:43, 24.21s/it]                                                     {'loss': 0.2729, 'grad_norm': 0.5790765821442312, 'learning_rate': 2.1752672667060488e-06, 'epoch': 5.41}
 54%|█████▍    | 444/820 [3:08:17<2:31:43, 24.21s/it] 54%|█████▍    | 445/820 [3:08:43<2:33:58, 24.64s/it]                                                     {'loss': 0.3187, 'grad_norm': 0.49685213306637505, 'learning_rate': 2.165772791788379e-06, 'epoch': 5.43}
 54%|█████▍    | 445/820 [3:08:43<2:33:58, 24.64s/it] 54%|█████▍    | 446/820 [3:09:05<2:29:52, 24.05s/it]                                                     {'loss': 0.2436, 'grad_norm': 0.6148104415385404, 'learning_rate': 2.1562832227099266e-06, 'epoch': 5.44}
 54%|█████▍    | 446/820 [3:09:05<2:29:52, 24.05s/it] 55%|█████▍    | 447/820 [3:09:27<2:24:13, 23.20s/it]                                                     {'loss': 0.2806, 'grad_norm': 0.6137251466248655, 'learning_rate': 2.1467986987600715e-06, 'epoch': 5.45}
 55%|█████▍    | 447/820 [3:09:27<2:24:13, 23.20s/it] 55%|█████▍    | 448/820 [3:09:52<2:27:08, 23.73s/it]                                                     {'loss': 0.3155, 'grad_norm': 0.5882923588538033, 'learning_rate': 2.137319359154138e-06, 'epoch': 5.46}
 55%|█████▍    | 448/820 [3:09:52<2:27:08, 23.73s/it] 55%|█████▍    | 449/820 [3:10:16<2:27:12, 23.81s/it]                                                     {'loss': 0.3151, 'grad_norm': 0.5705306079617966, 'learning_rate': 2.1278453430313555e-06, 'epoch': 5.48}
 55%|█████▍    | 449/820 [3:10:16<2:27:12, 23.81s/it] 55%|█████▍    | 450/820 [3:10:42<2:31:07, 24.51s/it]                                                     {'loss': 0.2983, 'grad_norm': 0.4982054902311499, 'learning_rate': 2.1183767894528135e-06, 'epoch': 5.49}
 55%|█████▍    | 450/820 [3:10:42<2:31:07, 24.51s/it] 55%|█████▌    | 451/820 [3:11:01<2:21:02, 22.93s/it]                                                     {'loss': 0.2528, 'grad_norm': 0.5650341882181205, 'learning_rate': 2.1089138373994226e-06, 'epoch': 5.5}
 55%|█████▌    | 451/820 [3:11:01<2:21:02, 22.93s/it] 55%|█████▌    | 452/820 [3:11:26<2:24:42, 23.59s/it]                                                     {'loss': 0.2177, 'grad_norm': 0.46049748491663167, 'learning_rate': 2.099456625769872e-06, 'epoch': 5.51}
 55%|█████▌    | 452/820 [3:11:26<2:24:42, 23.59s/it] 55%|█████▌    | 453/820 [3:11:48<2:21:59, 23.22s/it]                                                     {'loss': 0.2849, 'grad_norm': 0.5851502566988583, 'learning_rate': 2.090005293378593e-06, 'epoch': 5.52}
 55%|█████▌    | 453/820 [3:11:48<2:21:59, 23.22s/it] 55%|█████▌    | 454/820 [3:12:12<2:22:25, 23.35s/it]                                                     {'loss': 0.2581, 'grad_norm': 0.571367226332237, 'learning_rate': 2.08055997895372e-06, 'epoch': 5.54}
 55%|█████▌    | 454/820 [3:12:12<2:22:25, 23.35s/it] 55%|█████▌    | 455/820 [3:12:36<2:23:16, 23.55s/it]                                                     {'loss': 0.2427, 'grad_norm': 0.480857008536123, 'learning_rate': 2.0711208211350543e-06, 'epoch': 5.55}
 55%|█████▌    | 455/820 [3:12:36<2:23:16, 23.55s/it] 56%|█████▌    | 456/820 [3:12:59<2:22:27, 23.48s/it]                                                     {'loss': 0.3371, 'grad_norm': 0.6112106868849629, 'learning_rate': 2.0616879584720305e-06, 'epoch': 5.56}
 56%|█████▌    | 456/820 [3:12:59<2:22:27, 23.48s/it] 56%|█████▌    | 457/820 [3:13:25<2:25:04, 23.98s/it]                                                     {'loss': 0.3685, 'grad_norm': 0.5162528725234955, 'learning_rate': 2.0522615294216826e-06, 'epoch': 5.57}
 56%|█████▌    | 457/820 [3:13:25<2:25:04, 23.98s/it] 56%|█████▌    | 458/820 [3:13:48<2:23:17, 23.75s/it]                                                     {'loss': 0.1559, 'grad_norm': 0.6641979568413796, 'learning_rate': 2.042841672346608e-06, 'epoch': 5.59}
 56%|█████▌    | 458/820 [3:13:48<2:23:17, 23.75s/it] 56%|█████▌    | 459/820 [3:14:13<2:25:53, 24.25s/it]                                                     {'loss': 0.2598, 'grad_norm': 0.5458029838214774, 'learning_rate': 2.0334285255129436e-06, 'epoch': 5.6}
 56%|█████▌    | 459/820 [3:14:13<2:25:53, 24.25s/it] 56%|█████▌    | 460/820 [3:14:36<2:22:45, 23.79s/it]                                                     {'loss': 0.2876, 'grad_norm': 0.5482864670035064, 'learning_rate': 2.024022227088329e-06, 'epoch': 5.61}
 56%|█████▌    | 460/820 [3:14:36<2:22:45, 23.79s/it] 56%|█████▌    | 461/820 [3:14:59<2:20:35, 23.50s/it]                                                     {'loss': 0.2387, 'grad_norm': 0.5154208289235002, 'learning_rate': 2.014622915139884e-06, 'epoch': 5.62}
 56%|█████▌    | 461/820 [3:14:59<2:20:35, 23.50s/it] 56%|█████▋    | 462/820 [3:15:22<2:20:08, 23.49s/it]                                                     {'loss': 0.276, 'grad_norm': 0.566645044271994, 'learning_rate': 2.0052307276321793e-06, 'epoch': 5.63}
 56%|█████▋    | 462/820 [3:15:22<2:20:08, 23.49s/it] 56%|█████▋    | 463/820 [3:15:44<2:17:19, 23.08s/it]                                                     {'loss': 0.2843, 'grad_norm': 0.587058801275512, 'learning_rate': 1.9958458024252096e-06, 'epoch': 5.65}
 56%|█████▋    | 463/820 [3:15:44<2:17:19, 23.08s/it] 57%|█████▋    | 464/820 [3:16:06<2:14:40, 22.70s/it]                                                     {'loss': 0.3021, 'grad_norm': 0.5771947484066984, 'learning_rate': 1.9864682772723757e-06, 'epoch': 5.66}
 57%|█████▋    | 464/820 [3:16:06<2:14:40, 22.70s/it] 57%|█████▋    | 465/820 [3:16:29<2:14:07, 22.67s/it]                                                     {'loss': 0.2435, 'grad_norm': 0.6001872264868647, 'learning_rate': 1.977098289818459e-06, 'epoch': 5.67}
 57%|█████▋    | 465/820 [3:16:29<2:14:07, 22.67s/it] 57%|█████▋    | 466/820 [3:16:53<2:16:41, 23.17s/it]                                                     {'loss': 0.4223, 'grad_norm': 0.4796397077189731, 'learning_rate': 1.967735977597598e-06, 'epoch': 5.68}
 57%|█████▋    | 466/820 [3:16:53<2:16:41, 23.17s/it] 57%|█████▋    | 467/820 [3:17:15<2:14:47, 22.91s/it]                                                     {'loss': 0.2321, 'grad_norm': 1.5647675312944898, 'learning_rate': 1.9583814780312776e-06, 'epoch': 5.7}
 57%|█████▋    | 467/820 [3:17:15<2:14:47, 22.91s/it] 57%|█████▋    | 468/820 [3:17:40<2:16:47, 23.32s/it]                                                     {'loss': 0.311, 'grad_norm': 0.43128976741878233, 'learning_rate': 1.9490349284263036e-06, 'epoch': 5.71}
 57%|█████▋    | 468/820 [3:17:40<2:16:47, 23.32s/it] 57%|█████▋    | 469/820 [3:18:03<2:15:43, 23.20s/it]                                                     {'loss': 0.2101, 'grad_norm': 0.5461005109028774, 'learning_rate': 1.939696465972793e-06, 'epoch': 5.72}
 57%|█████▋    | 469/820 [3:18:03<2:15:43, 23.20s/it] 57%|█████▋    | 470/820 [3:18:26<2:16:15, 23.36s/it]                                                     {'loss': 0.2206, 'grad_norm': 0.5378063397725636, 'learning_rate': 1.930366227742157e-06, 'epoch': 5.73}
 57%|█████▋    | 470/820 [3:18:26<2:16:15, 23.36s/it] 57%|█████▋    | 471/820 [3:18:49<2:14:28, 23.12s/it]                                                     {'loss': 0.3091, 'grad_norm': 0.5919922899596857, 'learning_rate': 1.9210443506850913e-06, 'epoch': 5.74}
 57%|█████▋    | 471/820 [3:18:49<2:14:28, 23.12s/it] 58%|█████▊    | 472/820 [3:19:12<2:14:32, 23.20s/it]                                                     {'loss': 0.3944, 'grad_norm': 0.5239423352061794, 'learning_rate': 1.9117309716295658e-06, 'epoch': 5.76}
 58%|█████▊    | 472/820 [3:19:12<2:14:32, 23.20s/it] 58%|█████▊    | 473/820 [3:19:36<2:14:26, 23.25s/it]                                                     {'loss': 0.2112, 'grad_norm': 0.5264729352087129, 'learning_rate': 1.9024262272788135e-06, 'epoch': 5.77}
 58%|█████▊    | 473/820 [3:19:36<2:14:26, 23.25s/it] 58%|█████▊    | 474/820 [3:20:00<2:16:57, 23.75s/it]                                                     {'loss': 0.3001, 'grad_norm': 0.5005639806835609, 'learning_rate': 1.8931302542093274e-06, 'epoch': 5.78}
 58%|█████▊    | 474/820 [3:20:00<2:16:57, 23.75s/it] 58%|█████▊    | 475/820 [3:20:25<2:17:28, 23.91s/it]                                                     {'loss': 0.2287, 'grad_norm': 0.4666826612810413, 'learning_rate': 1.8838431888688528e-06, 'epoch': 5.79}
 58%|█████▊    | 475/820 [3:20:25<2:17:28, 23.91s/it] 58%|█████▊    | 476/820 [3:20:45<2:10:48, 22.82s/it]                                                     {'loss': 0.311, 'grad_norm': 0.6841204402310409, 'learning_rate': 1.8745651675743876e-06, 'epoch': 5.8}
 58%|█████▊    | 476/820 [3:20:45<2:10:48, 22.82s/it] 58%|█████▊    | 477/820 [3:21:10<2:14:18, 23.49s/it]                                                     {'loss': 0.3467, 'grad_norm': 0.5463900658498401, 'learning_rate': 1.865296326510178e-06, 'epoch': 5.82}
 58%|█████▊    | 477/820 [3:21:10<2:14:18, 23.49s/it] 58%|█████▊    | 478/820 [3:21:35<2:16:00, 23.86s/it]                                                     {'loss': 0.2765, 'grad_norm': 0.589578406859839, 'learning_rate': 1.8560368017257229e-06, 'epoch': 5.83}
 58%|█████▊    | 478/820 [3:21:35<2:16:00, 23.86s/it] 58%|█████▊    | 479/820 [3:22:00<2:18:00, 24.28s/it]                                                     {'loss': 0.221, 'grad_norm': 0.6009908962089404, 'learning_rate': 1.8467867291337754e-06, 'epoch': 5.84}
 58%|█████▊    | 479/820 [3:22:00<2:18:00, 24.28s/it] 59%|█████▊    | 480/820 [3:22:24<2:17:05, 24.19s/it]                                                     {'loss': 0.3377, 'grad_norm': 0.5631373436900813, 'learning_rate': 1.8375462445083464e-06, 'epoch': 5.85}
 59%|█████▊    | 480/820 [3:22:24<2:17:05, 24.19s/it] 59%|█████▊    | 481/820 [3:22:50<2:18:52, 24.58s/it]                                                     {'loss': 0.3198, 'grad_norm': 0.4743101666413914, 'learning_rate': 1.8283154834827144e-06, 'epoch': 5.87}
 59%|█████▊    | 481/820 [3:22:50<2:18:52, 24.58s/it] 59%|█████▉    | 482/820 [3:23:12<2:14:52, 23.94s/it]                                                     {'loss': 0.2216, 'grad_norm': 0.5100897606672437, 'learning_rate': 1.8190945815474323e-06, 'epoch': 5.88}
 59%|█████▉    | 482/820 [3:23:12<2:14:52, 23.94s/it] 59%|█████▉    | 483/820 [3:23:36<2:14:39, 23.97s/it]                                                     {'loss': 0.3076, 'grad_norm': 0.48957027171210976, 'learning_rate': 1.8098836740483411e-06, 'epoch': 5.89}
 59%|█████▉    | 483/820 [3:23:36<2:14:39, 23.97s/it] 59%|█████▉    | 484/820 [3:24:01<2:16:38, 24.40s/it]                                                     {'loss': 0.2926, 'grad_norm': 0.6250312793532226, 'learning_rate': 1.8006828961845807e-06, 'epoch': 5.9}
 59%|█████▉    | 484/820 [3:24:01<2:16:38, 24.40s/it] 59%|█████▉    | 485/820 [3:24:23<2:11:19, 23.52s/it]                                                     {'loss': 0.3202, 'grad_norm': 0.5875432606841989, 'learning_rate': 1.7914923830066074e-06, 'epoch': 5.91}
 59%|█████▉    | 485/820 [3:24:23<2:11:19, 23.52s/it] 59%|█████▉    | 486/820 [3:24:46<2:10:27, 23.44s/it]                                                     {'loss': 0.3133, 'grad_norm': 0.532286581746488, 'learning_rate': 1.782312269414211e-06, 'epoch': 5.93}
 59%|█████▉    | 486/820 [3:24:46<2:10:27, 23.44s/it] 59%|█████▉    | 487/820 [3:25:10<2:10:58, 23.60s/it]                                                     {'loss': 0.2502, 'grad_norm': 0.5197607344117049, 'learning_rate': 1.773142690154533e-06, 'epoch': 5.94}
 59%|█████▉    | 487/820 [3:25:10<2:10:58, 23.60s/it] 60%|█████▉    | 488/820 [3:25:32<2:07:24, 23.03s/it]                                                     {'loss': 0.2565, 'grad_norm': 0.554047727743764, 'learning_rate': 1.7639837798200923e-06, 'epoch': 5.95}
 60%|█████▉    | 488/820 [3:25:32<2:07:24, 23.03s/it] 60%|█████▉    | 489/820 [3:25:55<2:07:35, 23.13s/it]                                                     {'loss': 0.3077, 'grad_norm': 0.5880175510738208, 'learning_rate': 1.7548356728468063e-06, 'epoch': 5.96}
 60%|█████▉    | 489/820 [3:25:55<2:07:35, 23.13s/it] 60%|█████▉    | 490/820 [3:26:19<2:08:20, 23.34s/it]                                                     {'loss': 0.2895, 'grad_norm': 0.6215081469908863, 'learning_rate': 1.7456985035120194e-06, 'epoch': 5.98}
 60%|█████▉    | 490/820 [3:26:19<2:08:20, 23.34s/it] 60%|█████▉    | 491/820 [3:26:43<2:08:32, 23.44s/it]                                                     {'loss': 0.3103, 'grad_norm': 0.5022961930058969, 'learning_rate': 1.7365724059325326e-06, 'epoch': 5.99}
 60%|█████▉    | 491/820 [3:26:43<2:08:32, 23.44s/it] 60%|██████    | 492/820 [3:27:06<2:07:49, 23.38s/it]                                                     {'loss': 0.2058, 'grad_norm': 0.5093061963968532, 'learning_rate': 1.7274575140626318e-06, 'epoch': 6.0}
 60%|██████    | 492/820 [3:27:06<2:07:49, 23.38s/it][INFO|trainer.py:3942] 2025-06-02 10:23:16,439 >> Saving model checkpoint to /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-492
[INFO|configuration_utils.py:423] 2025-06-02 10:23:16,442 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-492/config.json
[INFO|configuration_utils.py:909] 2025-06-02 10:23:16,443 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-492/generation_config.json
[INFO|modeling_utils.py:3048] 2025-06-02 10:24:27,786 >> The model is bigger than the maximum size per checkpoint (5GB) and is going to be split in 14 checkpoint shards. You can find where each parameters has been saved in the index located at /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-492/model.safetensors.index.json.
[INFO|tokenization_utils_base.py:2500] 2025-06-02 10:24:27,787 >> tokenizer config file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-492/tokenizer_config.json
[INFO|tokenization_utils_base.py:2509] 2025-06-02 10:24:27,787 >> Special tokens file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-492/special_tokens_map.json
[2025-06-02 10:24:27,960] [INFO] [logging.py:128:log_dist] [Rank 0] [Torch] Checkpoint global_step492 is about to be saved!
[2025-06-02 10:24:27,974] [INFO] [logging.py:128:log_dist] [Rank 0] Saving model checkpoint: /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-492/global_step492/zero_pp_rank_0_mp_rank_00_model_states.pt
[2025-06-02 10:24:27,974] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-492/global_step492/zero_pp_rank_0_mp_rank_00_model_states.pt...
[2025-06-02 10:24:32,687] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-492/global_step492/zero_pp_rank_0_mp_rank_00_model_states.pt.
[2025-06-02 10:24:32,693] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-492/global_step492/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt...
[2025-06-02 10:25:53,639] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-492/global_step492/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt.
[2025-06-02 10:25:53,640] [INFO] [engine.py:3572:_save_zero_checkpoint] zero checkpoint saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-492/global_step492/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt
[2025-06-02 10:25:58,025] [INFO] [torch_checkpoint_engine.py:33:commit] [Torch] Checkpoint global_step492 is ready now!
 60%|██████    | 493/820 [3:30:39<7:17:53, 80.35s/it]                                                     {'loss': 0.2718, 'grad_norm': 0.7733279049049071, 'learning_rate': 1.7183539616921258e-06, 'epoch': 6.01}
 60%|██████    | 493/820 [3:30:39<7:17:53, 80.35s/it] 60%|██████    | 494/820 [3:31:02<5:42:51, 63.10s/it]                                                     {'loss': 0.3032, 'grad_norm': 0.6863421226732376, 'learning_rate': 1.709261882444379e-06, 'epoch': 6.02}
 60%|██████    | 494/820 [3:31:02<5:42:51, 63.10s/it] 60%|██████    | 495/820 [3:31:27<4:39:39, 51.63s/it]                                                     {'loss': 0.1716, 'grad_norm': 0.6440765529137259, 'learning_rate': 1.700181409774353e-06, 'epoch': 6.04}
 60%|██████    | 495/820 [3:31:27<4:39:39, 51.63s/it] 60%|██████    | 496/820 [3:31:50<3:52:34, 43.07s/it]                                                     {'loss': 0.2962, 'grad_norm': 0.6555954933737994, 'learning_rate': 1.6911126769666442e-06, 'epoch': 6.05}
 60%|██████    | 496/820 [3:31:50<3:52:34, 43.07s/it] 61%|██████    | 497/820 [3:32:14<3:20:16, 37.20s/it]                                                     {'loss': 0.3012, 'grad_norm': 0.8025362223391226, 'learning_rate': 1.6820558171335317e-06, 'epoch': 6.06}
 61%|██████    | 497/820 [3:32:14<3:20:16, 37.20s/it] 61%|██████    | 498/820 [3:32:36<2:55:24, 32.68s/it]                                                     {'loss': 0.1851, 'grad_norm': 0.6334371463885654, 'learning_rate': 1.6730109632130199e-06, 'epoch': 6.07}
 61%|██████    | 498/820 [3:32:36<2:55:24, 32.68s/it] 61%|██████    | 499/820 [3:33:02<2:43:53, 30.63s/it]                                                     {'loss': 0.2757, 'grad_norm': 0.6574864602527902, 'learning_rate': 1.6639782479668877e-06, 'epoch': 6.09}
 61%|██████    | 499/820 [3:33:02<2:43:53, 30.63s/it] 61%|██████    | 500/820 [3:33:27<2:35:23, 29.14s/it]                                                     {'loss': 0.2054, 'grad_norm': 0.5283021738446539, 'learning_rate': 1.6549578039787436e-06, 'epoch': 6.1}
 61%|██████    | 500/820 [3:33:27<2:35:23, 29.14s/it] 61%|██████    | 501/820 [3:33:50<2:25:25, 27.35s/it]                                                     {'loss': 0.2086, 'grad_norm': 0.7260602948066356, 'learning_rate': 1.6459497636520733e-06, 'epoch': 6.11}
 61%|██████    | 501/820 [3:33:50<2:25:25, 27.35s/it] 61%|██████    | 502/820 [3:34:12<2:15:49, 25.63s/it]                                                     {'loss': 0.2811, 'grad_norm': 0.7489516501062409, 'learning_rate': 1.636954259208302e-06, 'epoch': 6.12}
 61%|██████    | 502/820 [3:34:12<2:15:49, 25.63s/it] 61%|██████▏   | 503/820 [3:34:36<2:12:58, 25.17s/it]                                                     {'loss': 0.268, 'grad_norm': 0.6420994070636729, 'learning_rate': 1.6279714226848497e-06, 'epoch': 6.13}
 61%|██████▏   | 503/820 [3:34:36<2:12:58, 25.17s/it] 61%|██████▏   | 504/820 [3:35:01<2:12:19, 25.12s/it]                                                     {'loss': 0.266, 'grad_norm': 0.5173606614870212, 'learning_rate': 1.6190013859331958e-06, 'epoch': 6.15}
 61%|██████▏   | 504/820 [3:35:01<2:12:19, 25.12s/it] 62%|██████▏   | 505/820 [3:35:27<2:12:29, 25.24s/it]                                                     {'loss': 0.1935, 'grad_norm': 0.47361604119530426, 'learning_rate': 1.6100442806169423e-06, 'epoch': 6.16}
 62%|██████▏   | 505/820 [3:35:27<2:12:29, 25.24s/it] 62%|██████▏   | 506/820 [3:35:52<2:11:50, 25.19s/it]                                                     {'loss': 0.2527, 'grad_norm': 0.9013303310479787, 'learning_rate': 1.6011002382098806e-06, 'epoch': 6.17}
 62%|██████▏   | 506/820 [3:35:52<2:11:50, 25.19s/it] 62%|██████▏   | 507/820 [3:36:14<2:06:22, 24.23s/it]                                                     {'loss': 0.1752, 'grad_norm': 0.6969147702923799, 'learning_rate': 1.592169389994065e-06, 'epoch': 6.18}
 62%|██████▏   | 507/820 [3:36:14<2:06:22, 24.23s/it] 62%|██████▏   | 508/820 [3:36:37<2:04:42, 23.98s/it]                                                     {'loss': 0.2782, 'grad_norm': 0.5987160578921488, 'learning_rate': 1.5832518670578802e-06, 'epoch': 6.2}
 62%|██████▏   | 508/820 [3:36:37<2:04:42, 23.98s/it] 62%|██████▏   | 509/820 [3:37:00<2:02:10, 23.57s/it]                                                     {'loss': 0.2265, 'grad_norm': 1.035713947521242, 'learning_rate': 1.5743478002941238e-06, 'epoch': 6.21}
 62%|██████▏   | 509/820 [3:37:00<2:02:10, 23.57s/it] 62%|██████▏   | 510/820 [3:37:25<2:04:40, 24.13s/it]                                                     {'loss': 0.26, 'grad_norm': 0.5004477847357369, 'learning_rate': 1.5654573203980782e-06, 'epoch': 6.22}
 62%|██████▏   | 510/820 [3:37:25<2:04:40, 24.13s/it] 62%|██████▏   | 511/820 [3:37:44<1:55:48, 22.49s/it]                                                     {'loss': 0.1827, 'grad_norm': 0.5646851551981645, 'learning_rate': 1.5565805578655986e-06, 'epoch': 6.23}
 62%|██████▏   | 511/820 [3:37:44<1:55:48, 22.49s/it] 62%|██████▏   | 512/820 [3:38:07<1:56:28, 22.69s/it]                                                     {'loss': 0.1923, 'grad_norm': 0.581697632366252, 'learning_rate': 1.5477176429911934e-06, 'epoch': 6.24}
 62%|██████▏   | 512/820 [3:38:07<1:56:28, 22.69s/it] 63%|██████▎   | 513/820 [3:38:30<1:56:26, 22.76s/it]                                                     {'loss': 0.175, 'grad_norm': 0.5343309791732442, 'learning_rate': 1.5388687058661116e-06, 'epoch': 6.26}
 63%|██████▎   | 513/820 [3:38:30<1:56:26, 22.76s/it] 63%|██████▎   | 514/820 [3:38:52<1:55:53, 22.72s/it]                                                     {'loss': 0.224, 'grad_norm': 0.5486649943356661, 'learning_rate': 1.5300338763764371e-06, 'epoch': 6.27}
 63%|██████▎   | 514/820 [3:38:52<1:55:53, 22.72s/it] 63%|██████▎   | 515/820 [3:39:14<1:54:04, 22.44s/it]                                                     {'loss': 0.1533, 'grad_norm': 0.5086288105496708, 'learning_rate': 1.5212132842011778e-06, 'epoch': 6.28}
 63%|██████▎   | 515/820 [3:39:14<1:54:04, 22.44s/it] 63%|██████▎   | 516/820 [3:39:33<1:48:04, 21.33s/it]                                                     {'loss': 0.1627, 'grad_norm': 0.607195300534139, 'learning_rate': 1.5124070588103648e-06, 'epoch': 6.29}
 63%|██████▎   | 516/820 [3:39:33<1:48:04, 21.33s/it] 63%|██████▎   | 517/820 [3:39:57<1:52:18, 22.24s/it]                                                     {'loss': 0.267, 'grad_norm': 0.5706517437768894, 'learning_rate': 1.5036153294631516e-06, 'epoch': 6.3}
 63%|██████▎   | 517/820 [3:39:57<1:52:18, 22.24s/it] 63%|██████▎   | 518/820 [3:40:21<1:53:50, 22.62s/it]                                                     {'loss': 0.2279, 'grad_norm': 0.6447665472785914, 'learning_rate': 1.4948382252059158e-06, 'epoch': 6.32}
 63%|██████▎   | 518/820 [3:40:21<1:53:50, 22.62s/it] 63%|██████▎   | 519/820 [3:40:44<1:53:54, 22.71s/it]                                                     {'loss': 0.174, 'grad_norm': 0.48039762121545887, 'learning_rate': 1.4860758748703664e-06, 'epoch': 6.33}
 63%|██████▎   | 519/820 [3:40:44<1:53:54, 22.71s/it] 63%|██████▎   | 520/820 [3:41:07<1:54:06, 22.82s/it]                                                     {'loss': 0.16, 'grad_norm': 0.47558274948056367, 'learning_rate': 1.4773284070716504e-06, 'epoch': 6.34}
 63%|██████▎   | 520/820 [3:41:07<1:54:06, 22.82s/it] 64%|██████▎   | 521/820 [3:41:31<1:55:08, 23.10s/it]                                                     {'loss': 0.1289, 'grad_norm': 0.5349697079020912, 'learning_rate': 1.4685959502064695e-06, 'epoch': 6.35}
 64%|██████▎   | 521/820 [3:41:31<1:55:08, 23.10s/it] 64%|██████▎   | 522/820 [3:41:56<1:57:37, 23.68s/it]                                                     {'loss': 0.2413, 'grad_norm': 0.6980651047238126, 'learning_rate': 1.4598786324511892e-06, 'epoch': 6.37}
 64%|██████▎   | 522/820 [3:41:56<1:57:37, 23.68s/it] 64%|██████▍   | 523/820 [3:42:20<1:57:59, 23.84s/it]                                                     {'loss': 0.2514, 'grad_norm': 0.6312298184404288, 'learning_rate': 1.4511765817599641e-06, 'epoch': 6.38}
 64%|██████▍   | 523/820 [3:42:20<1:57:59, 23.84s/it] 64%|██████▍   | 524/820 [3:42:44<1:57:45, 23.87s/it]                                                     {'loss': 0.1643, 'grad_norm': 0.628114977068337, 'learning_rate': 1.4424899258628533e-06, 'epoch': 6.39}
 64%|██████▍   | 524/820 [3:42:44<1:57:45, 23.87s/it] 64%|██████▍   | 525/820 [3:43:09<1:58:57, 24.19s/it]                                                     {'loss': 0.2818, 'grad_norm': 0.6111455170992294, 'learning_rate': 1.4338187922639506e-06, 'epoch': 6.4}
 64%|██████▍   | 525/820 [3:43:09<1:58:57, 24.19s/it] 64%|██████▍   | 526/820 [3:43:33<1:58:06, 24.10s/it]                                                     {'loss': 0.1705, 'grad_norm': 0.46897068854722646, 'learning_rate': 1.4251633082395117e-06, 'epoch': 6.41}
 64%|██████▍   | 526/820 [3:43:33<1:58:06, 24.10s/it] 64%|██████▍   | 527/820 [3:43:56<1:57:08, 23.99s/it]                                                     {'loss': 0.3064, 'grad_norm': 0.722785180457078, 'learning_rate': 1.416523600836084e-06, 'epoch': 6.43}
 64%|██████▍   | 527/820 [3:43:56<1:57:08, 23.99s/it] 64%|██████▍   | 528/820 [3:44:20<1:55:41, 23.77s/it]                                                     {'loss': 0.187, 'grad_norm': 0.6086157232416788, 'learning_rate': 1.4078997968686425e-06, 'epoch': 6.44}
 64%|██████▍   | 528/820 [3:44:20<1:55:41, 23.77s/it] 65%|██████▍   | 529/820 [3:44:43<1:55:24, 23.80s/it]                                                     {'loss': 0.235, 'grad_norm': 0.532303144114268, 'learning_rate': 1.3992920229187306e-06, 'epoch': 6.45}
 65%|██████▍   | 529/820 [3:44:43<1:55:24, 23.80s/it] 65%|██████▍   | 530/820 [3:45:09<1:57:18, 24.27s/it]                                                     {'loss': 0.2368, 'grad_norm': 0.641068028604919, 'learning_rate': 1.3907004053326006e-06, 'epoch': 6.46}
 65%|██████▍   | 530/820 [3:45:09<1:57:18, 24.27s/it] 65%|██████▍   | 531/820 [3:45:33<1:56:50, 24.26s/it]                                                     {'loss': 0.2564, 'grad_norm': 0.7606684256074568, 'learning_rate': 1.3821250702193586e-06, 'epoch': 6.48}
 65%|██████▍   | 531/820 [3:45:33<1:56:50, 24.26s/it] 65%|██████▍   | 532/820 [3:45:55<1:53:39, 23.68s/it]                                                     {'loss': 0.2828, 'grad_norm': 0.68087723365012, 'learning_rate': 1.373566143449115e-06, 'epoch': 6.49}
 65%|██████▍   | 532/820 [3:45:55<1:53:39, 23.68s/it] 65%|██████▌   | 533/820 [3:46:19<1:52:32, 23.53s/it]                                                     {'loss': 0.2628, 'grad_norm': 0.7152059087067717, 'learning_rate': 1.3650237506511333e-06, 'epoch': 6.5}
 65%|██████▌   | 533/820 [3:46:19<1:52:32, 23.53s/it] 65%|██████▌   | 534/820 [3:46:41<1:50:15, 23.13s/it]                                                     {'loss': 0.3006, 'grad_norm': 0.6351463886925338, 'learning_rate': 1.3564980172119913e-06, 'epoch': 6.51}
 65%|██████▌   | 534/820 [3:46:41<1:50:15, 23.13s/it] 65%|██████▌   | 535/820 [3:47:03<1:47:58, 22.73s/it]                                                     {'loss': 0.2808, 'grad_norm': 0.6340624392007578, 'learning_rate': 1.347989068273738e-06, 'epoch': 6.52}
 65%|██████▌   | 535/820 [3:47:03<1:47:58, 22.73s/it] 65%|██████▌   | 536/820 [3:47:26<1:47:51, 22.79s/it]                                                     {'loss': 0.2931, 'grad_norm': 0.4794677757799002, 'learning_rate': 1.3394970287320553e-06, 'epoch': 6.54}
 65%|██████▌   | 536/820 [3:47:26<1:47:51, 22.79s/it] 65%|██████▌   | 537/820 [3:47:47<1:46:19, 22.54s/it]                                                     {'loss': 0.2279, 'grad_norm': 0.5168753840274859, 'learning_rate': 1.331022023234429e-06, 'epoch': 6.55}
 65%|██████▌   | 537/820 [3:47:47<1:46:19, 22.54s/it] 66%|██████▌   | 538/820 [3:48:13<1:49:47, 23.36s/it]                                                     {'loss': 0.2444, 'grad_norm': 0.5548539753042252, 'learning_rate': 1.3225641761783126e-06, 'epoch': 6.56}
 66%|██████▌   | 538/820 [3:48:13<1:49:47, 23.36s/it] 66%|██████▌   | 539/820 [3:48:37<1:50:47, 23.66s/it]                                                     {'loss': 0.2433, 'grad_norm': 0.5929955527249251, 'learning_rate': 1.3141236117093086e-06, 'epoch': 6.57}
 66%|██████▌   | 539/820 [3:48:37<1:50:47, 23.66s/it] 66%|██████▌   | 540/820 [3:49:01<1:50:12, 23.62s/it]                                                     {'loss': 0.267, 'grad_norm': 0.5466128389920485, 'learning_rate': 1.3057004537193424e-06, 'epoch': 6.59}
 66%|██████▌   | 540/820 [3:49:01<1:50:12, 23.62s/it] 66%|██████▌   | 541/820 [3:49:25<1:50:24, 23.74s/it]                                                     {'loss': 0.2458, 'grad_norm': 0.5625207654510905, 'learning_rate': 1.2972948258448442e-06, 'epoch': 6.6}
 66%|██████▌   | 541/820 [3:49:25<1:50:24, 23.74s/it] 66%|██████▌   | 542/820 [3:49:49<1:50:08, 23.77s/it]                                                     {'loss': 0.2487, 'grad_norm': 0.5263809854714093, 'learning_rate': 1.2889068514649328e-06, 'epoch': 6.61}
 66%|██████▌   | 542/820 [3:49:49<1:50:08, 23.77s/it] 66%|██████▌   | 543/820 [3:50:13<1:51:22, 24.13s/it]                                                     {'loss': 0.2445, 'grad_norm': 0.5061176694434112, 'learning_rate': 1.2805366536996083e-06, 'epoch': 6.62}
 66%|██████▌   | 543/820 [3:50:13<1:51:22, 24.13s/it] 66%|██████▋   | 544/820 [3:50:36<1:49:09, 23.73s/it]                                                     {'loss': 0.2093, 'grad_norm': 0.5609550169202079, 'learning_rate': 1.2721843554079418e-06, 'epoch': 6.63}
 66%|██████▋   | 544/820 [3:50:36<1:49:09, 23.73s/it] 66%|██████▋   | 545/820 [3:51:01<1:49:59, 24.00s/it]                                                     {'loss': 0.1469, 'grad_norm': 0.48947241781410344, 'learning_rate': 1.263850079186274e-06, 'epoch': 6.65}
 66%|██████▋   | 545/820 [3:51:01<1:49:59, 24.00s/it] 67%|██████▋   | 546/820 [3:51:25<1:50:20, 24.16s/it]                                                     {'loss': 0.1793, 'grad_norm': 0.6359133669904575, 'learning_rate': 1.2555339473664151e-06, 'epoch': 6.66}
 67%|██████▋   | 546/820 [3:51:25<1:50:20, 24.16s/it] 67%|██████▋   | 547/820 [3:51:44<1:42:44, 22.58s/it]                                                     {'loss': 0.2356, 'grad_norm': 0.7070473228562412, 'learning_rate': 1.2472360820138466e-06, 'epoch': 6.67}
 67%|██████▋   | 547/820 [3:51:44<1:42:44, 22.58s/it] 67%|██████▋   | 548/820 [3:52:05<1:40:15, 22.11s/it]                                                     {'loss': 0.11, 'grad_norm': 0.5159835848317663, 'learning_rate': 1.238956604925934e-06, 'epoch': 6.68}
 67%|██████▋   | 548/820 [3:52:05<1:40:15, 22.11s/it] 67%|██████▋   | 549/820 [3:52:28<1:41:04, 22.38s/it]                                                     {'loss': 0.2114, 'grad_norm': 0.5051377655468285, 'learning_rate': 1.2306956376301363e-06, 'epoch': 6.7}
 67%|██████▋   | 549/820 [3:52:28<1:41:04, 22.38s/it] 67%|██████▋   | 550/820 [3:52:52<1:41:45, 22.61s/it]                                                     {'loss': 0.2838, 'grad_norm': 0.7967891492608244, 'learning_rate': 1.2224533013822237e-06, 'epoch': 6.71}
 67%|██████▋   | 550/820 [3:52:52<1:41:45, 22.61s/it] 67%|██████▋   | 551/820 [3:53:14<1:41:04, 22.54s/it]                                                     {'loss': 0.2636, 'grad_norm': 0.5768229425051128, 'learning_rate': 1.2142297171644968e-06, 'epoch': 6.72}
 67%|██████▋   | 551/820 [3:53:14<1:41:04, 22.54s/it] 67%|██████▋   | 552/820 [3:53:36<1:39:55, 22.37s/it]                                                     {'loss': 0.2773, 'grad_norm': 0.5854250200039671, 'learning_rate': 1.206025005684009e-06, 'epoch': 6.73}
 67%|██████▋   | 552/820 [3:53:36<1:39:55, 22.37s/it] 67%|██████▋   | 553/820 [3:54:00<1:41:57, 22.91s/it]                                                     {'loss': 0.225, 'grad_norm': 1.3475408942707063, 'learning_rate': 1.1978392873707987e-06, 'epoch': 6.74}
 67%|██████▋   | 553/820 [3:54:00<1:41:57, 22.91s/it] 68%|██████▊   | 554/820 [3:54:22<1:40:16, 22.62s/it]                                                     {'loss': 0.0978, 'grad_norm': 0.589275819261124, 'learning_rate': 1.1896726823761195e-06, 'epoch': 6.76}
 68%|██████▊   | 554/820 [3:54:22<1:40:16, 22.62s/it] 68%|██████▊   | 555/820 [3:54:44<1:38:38, 22.33s/it]                                                     {'loss': 0.1541, 'grad_norm': 0.48473869354172916, 'learning_rate': 1.181525310570677e-06, 'epoch': 6.77}
 68%|██████▊   | 555/820 [3:54:44<1:38:38, 22.33s/it] 68%|██████▊   | 556/820 [3:55:05<1:37:00, 22.05s/it]                                                     {'loss': 0.1837, 'grad_norm': 0.6725906827165479, 'learning_rate': 1.1733972915428665e-06, 'epoch': 6.78}
 68%|██████▊   | 556/820 [3:55:05<1:37:00, 22.05s/it] 68%|██████▊   | 557/820 [3:55:30<1:40:14, 22.87s/it]                                                     {'loss': 0.376, 'grad_norm': 0.6644389022717458, 'learning_rate': 1.1652887445970235e-06, 'epoch': 6.79}
 68%|██████▊   | 557/820 [3:55:30<1:40:14, 22.87s/it] 68%|██████▊   | 558/820 [3:55:53<1:39:57, 22.89s/it]                                                     {'loss': 0.2249, 'grad_norm': 0.5882266292867951, 'learning_rate': 1.1571997887516672e-06, 'epoch': 6.8}
 68%|██████▊   | 558/820 [3:55:53<1:39:57, 22.89s/it] 68%|██████▊   | 559/820 [3:56:18<1:42:43, 23.62s/it]                                                     {'loss': 0.2232, 'grad_norm': 0.5128616515962784, 'learning_rate': 1.149130542737757e-06, 'epoch': 6.82}
 68%|██████▊   | 559/820 [3:56:18<1:42:43, 23.62s/it] 68%|██████▊   | 560/820 [3:56:40<1:40:46, 23.26s/it]                                                     {'loss': 0.263, 'grad_norm': 0.5128769366682798, 'learning_rate': 1.1410811249969475e-06, 'epoch': 6.83}
 68%|██████▊   | 560/820 [3:56:40<1:40:46, 23.26s/it] 68%|██████▊   | 561/820 [3:57:06<1:43:05, 23.88s/it]                                                     {'loss': 0.2729, 'grad_norm': 0.6342634982151358, 'learning_rate': 1.1330516536798495e-06, 'epoch': 6.84}
 68%|██████▊   | 561/820 [3:57:06<1:43:05, 23.88s/it] 69%|██████▊   | 562/820 [3:57:32<1:45:19, 24.49s/it]                                                     {'loss': 0.2141, 'grad_norm': 0.5620508815859268, 'learning_rate': 1.1250422466442992e-06, 'epoch': 6.85}
 69%|██████▊   | 562/820 [3:57:32<1:45:19, 24.49s/it] 69%|██████▊   | 563/820 [3:57:56<1:44:34, 24.41s/it]                                                     {'loss': 0.277, 'grad_norm': 0.5382468498461983, 'learning_rate': 1.1170530214536253e-06, 'epoch': 6.87}
 69%|██████▊   | 563/820 [3:57:56<1:44:34, 24.41s/it] 69%|██████▉   | 564/820 [3:58:18<1:40:53, 23.64s/it]                                                     {'loss': 0.2015, 'grad_norm': 0.4903435683608169, 'learning_rate': 1.1090840953749253e-06, 'epoch': 6.88}
 69%|██████▉   | 564/820 [3:58:18<1:40:53, 23.64s/it] 69%|██████▉   | 565/820 [3:58:40<1:38:49, 23.25s/it]                                                     {'loss': 0.2571, 'grad_norm': 0.5458528446993416, 'learning_rate': 1.10113558537734e-06, 'epoch': 6.89}
 69%|██████▉   | 565/820 [3:58:40<1:38:49, 23.25s/it] 69%|██████▉   | 566/820 [3:59:04<1:39:32, 23.51s/it]                                                     {'loss': 0.2386, 'grad_norm': 0.5187668991055536, 'learning_rate': 1.0932076081303442e-06, 'epoch': 6.9}
 69%|██████▉   | 566/820 [3:59:04<1:39:32, 23.51s/it] 69%|██████▉   | 567/820 [3:59:29<1:40:08, 23.75s/it]                                                     {'loss': 0.2324, 'grad_norm': 0.5167392313108684, 'learning_rate': 1.0853002800020252e-06, 'epoch': 6.91}
 69%|██████▉   | 567/820 [3:59:29<1:40:08, 23.75s/it] 69%|██████▉   | 568/820 [3:59:52<1:39:10, 23.61s/it]                                                     {'loss': 0.3729, 'grad_norm': 0.6268536232356074, 'learning_rate': 1.0774137170573826e-06, 'epoch': 6.93}
 69%|██████▉   | 568/820 [3:59:52<1:39:10, 23.61s/it] 69%|██████▉   | 569/820 [4:00:14<1:36:32, 23.08s/it]                                                     {'loss': 0.1941, 'grad_norm': 0.7372626636394444, 'learning_rate': 1.0695480350566203e-06, 'epoch': 6.94}
 69%|██████▉   | 569/820 [4:00:14<1:36:32, 23.08s/it] 70%|██████▉   | 570/820 [4:00:35<1:34:23, 22.65s/it]                                                     {'loss': 0.2609, 'grad_norm': 0.7009662630885216, 'learning_rate': 1.0617033494534486e-06, 'epoch': 6.95}
 70%|██████▉   | 570/820 [4:00:35<1:34:23, 22.65s/it] 70%|██████▉   | 571/820 [4:00:57<1:33:11, 22.46s/it]                                                     {'loss': 0.2307, 'grad_norm': 0.5761567267482316, 'learning_rate': 1.0538797753933903e-06, 'epoch': 6.96}
 70%|██████▉   | 571/820 [4:00:57<1:33:11, 22.46s/it] 70%|██████▉   | 572/820 [4:01:21<1:33:43, 22.68s/it]                                                     {'loss': 0.2025, 'grad_norm': 0.6293338957954157, 'learning_rate': 1.0460774277120866e-06, 'epoch': 6.98}
 70%|██████▉   | 572/820 [4:01:21<1:33:43, 22.68s/it] 70%|██████▉   | 573/820 [4:01:46<1:36:35, 23.47s/it]                                                     {'loss': 0.2856, 'grad_norm': 0.5006556649761216, 'learning_rate': 1.0382964209336177e-06, 'epoch': 6.99}
 70%|██████▉   | 573/820 [4:01:46<1:36:35, 23.47s/it] 70%|███████   | 574/820 [4:02:09<1:36:14, 23.47s/it]                                                     {'loss': 0.2271, 'grad_norm': 0.5619630188013154, 'learning_rate': 1.0305368692688175e-06, 'epoch': 7.0}
 70%|███████   | 574/820 [4:02:09<1:36:14, 23.47s/it][INFO|trainer.py:3942] 2025-06-02 10:58:08,077 >> Saving model checkpoint to /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-574
[INFO|configuration_utils.py:423] 2025-06-02 10:58:08,080 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-574/config.json
[INFO|configuration_utils.py:909] 2025-06-02 10:58:08,081 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-574/generation_config.json
[INFO|modeling_utils.py:3048] 2025-06-02 10:59:25,759 >> The model is bigger than the maximum size per checkpoint (5GB) and is going to be split in 14 checkpoint shards. You can find where each parameters has been saved in the index located at /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-574/model.safetensors.index.json.
[INFO|tokenization_utils_base.py:2500] 2025-06-02 10:59:25,761 >> tokenizer config file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-574/tokenizer_config.json
[INFO|tokenization_utils_base.py:2509] 2025-06-02 10:59:25,761 >> Special tokens file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-574/special_tokens_map.json
[2025-06-02 10:59:25,924] [INFO] [logging.py:128:log_dist] [Rank 0] [Torch] Checkpoint global_step574 is about to be saved!
[2025-06-02 10:59:25,937] [INFO] [logging.py:128:log_dist] [Rank 0] Saving model checkpoint: /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-574/global_step574/zero_pp_rank_0_mp_rank_00_model_states.pt
[2025-06-02 10:59:25,937] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-574/global_step574/zero_pp_rank_0_mp_rank_00_model_states.pt...
[2025-06-02 10:59:25,963] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-574/global_step574/zero_pp_rank_0_mp_rank_00_model_states.pt.
[2025-06-02 10:59:25,967] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-574/global_step574/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt...
[2025-06-02 11:00:31,818] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-574/global_step574/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt.
[2025-06-02 11:00:31,819] [INFO] [engine.py:3572:_save_zero_checkpoint] zero checkpoint saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-574/global_step574/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt
[2025-06-02 11:00:32,188] [INFO] [torch_checkpoint_engine.py:33:commit] [Torch] Checkpoint global_step574 is ready now!
 70%|███████   | 575/820 [4:05:15<4:54:54, 72.22s/it]                                                     {'loss': 0.2183, 'grad_norm': 0.6366451718556503, 'learning_rate': 1.0227988866135995e-06, 'epoch': 7.01}
 70%|███████   | 575/820 [4:05:15<4:54:54, 72.22s/it] 70%|███████   | 576/820 [4:05:41<3:56:47, 58.23s/it]                                                     {'loss': 0.1977, 'grad_norm': 0.714509906303445, 'learning_rate': 1.0150825865472813e-06, 'epoch': 7.02}
 70%|███████   | 576/820 [4:05:41<3:56:47, 58.23s/it] 70%|███████   | 577/820 [4:06:05<3:14:29, 48.02s/it]                                                     {'loss': 0.2569, 'grad_norm': 0.5869945385159276, 'learning_rate': 1.0073880823309223e-06, 'epoch': 7.04}
 70%|███████   | 577/820 [4:06:05<3:14:29, 48.02s/it] 70%|███████   | 578/820 [4:06:27<2:42:07, 40.20s/it]                                                     {'loss': 0.1717, 'grad_norm': 0.6743958610943024, 'learning_rate': 9.997154869056588e-07, 'epoch': 7.05}
 70%|███████   | 578/820 [4:06:27<2:42:07, 40.20s/it] 71%|███████   | 579/820 [4:06:51<2:21:55, 35.33s/it]                                                     {'loss': 0.0808, 'grad_norm': 0.46261566087842243, 'learning_rate': 9.920649128910458e-07, 'epoch': 7.06}
 71%|███████   | 579/820 [4:06:51<2:21:55, 35.33s/it] 71%|███████   | 580/820 [4:07:17<2:09:33, 32.39s/it]                                                     {'loss': 0.2517, 'grad_norm': 0.5449996633998924, 'learning_rate': 9.844364725834058e-07, 'epoch': 7.07}
 71%|███████   | 580/820 [4:07:17<2:09:33, 32.39s/it] 71%|███████   | 581/820 [4:07:39<1:57:25, 29.48s/it]                                                     {'loss': 0.2323, 'grad_norm': 0.6513119445255058, 'learning_rate': 9.768302779541766e-07, 'epoch': 7.09}
 71%|███████   | 581/820 [4:07:39<1:57:25, 29.48s/it] 71%|███████   | 582/820 [4:08:02<1:49:24, 27.58s/it]                                                     {'loss': 0.1969, 'grad_norm': 0.6541300337784908, 'learning_rate': 9.692464406482727e-07, 'epoch': 7.1}
 71%|███████   | 582/820 [4:08:02<1:49:24, 27.58s/it] 71%|███████   | 583/820 [4:08:27<1:45:03, 26.60s/it]                                                     {'loss': 0.1937, 'grad_norm': 0.8787423656135598, 'learning_rate': 9.616850719824445e-07, 'epoch': 7.11}
 71%|███████   | 583/820 [4:08:27<1:45:03, 26.60s/it] 71%|███████   | 584/820 [4:08:49<1:39:40, 25.34s/it]                                                     {'loss': 0.1363, 'grad_norm': 0.639266006940647, 'learning_rate': 9.541462829436426e-07, 'epoch': 7.12}
 71%|███████   | 584/820 [4:08:49<1:39:40, 25.34s/it] 71%|███████▏  | 585/820 [4:09:13<1:37:59, 25.02s/it]                                                     {'loss': 0.1494, 'grad_norm': 0.569936482308998, 'learning_rate': 9.466301841873929e-07, 'epoch': 7.13}
 71%|███████▏  | 585/820 [4:09:13<1:37:59, 25.02s/it] 71%|███████▏  | 586/820 [4:09:33<1:30:50, 23.29s/it]                                                     {'loss': 0.2016, 'grad_norm': 0.539569983038615, 'learning_rate': 9.39136886036166e-07, 'epoch': 7.15}
 71%|███████▏  | 586/820 [4:09:33<1:30:50, 23.29s/it] 72%|███████▏  | 587/820 [4:09:57<1:31:43, 23.62s/it]                                                     {'loss': 0.1684, 'grad_norm': 0.5415061186751122, 'learning_rate': 9.316664984777646e-07, 'epoch': 7.16}
 72%|███████▏  | 587/820 [4:09:57<1:31:43, 23.62s/it] 72%|███████▏  | 588/820 [4:10:19<1:29:44, 23.21s/it]                                                     {'loss': 0.1456, 'grad_norm': 0.6637107578250075, 'learning_rate': 9.24219131163705e-07, 'epoch': 7.17}
 72%|███████▏  | 588/820 [4:10:19<1:29:44, 23.21s/it] 72%|███████▏  | 589/820 [4:10:40<1:26:41, 22.52s/it]                                                     {'loss': 0.1792, 'grad_norm': 0.5355787776847694, 'learning_rate': 9.167948934076093e-07, 'epoch': 7.18}
 72%|███████▏  | 589/820 [4:10:40<1:26:41, 22.52s/it] 72%|███████▏  | 590/820 [4:11:03<1:26:15, 22.50s/it]                                                     {'loss': 0.1803, 'grad_norm': 0.5117465727564846, 'learning_rate': 9.093938941836012e-07, 'epoch': 7.2}
 72%|███████▏  | 590/820 [4:11:03<1:26:15, 22.50s/it] 72%|███████▏  | 591/820 [4:11:28<1:29:06, 23.35s/it]                                                     {'loss': 0.1649, 'grad_norm': 0.49784400477615764, 'learning_rate': 9.020162421247019e-07, 'epoch': 7.21}
 72%|███████▏  | 591/820 [4:11:28<1:29:06, 23.35s/it] 72%|███████▏  | 592/820 [4:11:53<1:30:34, 23.84s/it]                                                     {'loss': 0.2143, 'grad_norm': 0.48107330825425626, 'learning_rate': 8.946620455212438e-07, 'epoch': 7.22}
 72%|███████▏  | 592/820 [4:11:53<1:30:34, 23.84s/it] 72%|███████▏  | 593/820 [4:12:15<1:28:38, 23.43s/it]                                                     {'loss': 0.1523, 'grad_norm': 0.6988041615391698, 'learning_rate': 8.873314123192734e-07, 'epoch': 7.23}
 72%|███████▏  | 593/820 [4:12:15<1:28:38, 23.43s/it] 72%|███████▏  | 594/820 [4:12:39<1:28:04, 23.38s/it]                                                     {'loss': 0.2177, 'grad_norm': 0.5352684886438472, 'learning_rate': 8.800244501189722e-07, 'epoch': 7.24}
 72%|███████▏  | 594/820 [4:12:39<1:28:04, 23.38s/it] 73%|███████▎  | 595/820 [4:13:03<1:29:10, 23.78s/it]                                                     {'loss': 0.1762, 'grad_norm': 0.6301578432143724, 'learning_rate': 8.727412661730724e-07, 'epoch': 7.26}
 73%|███████▎  | 595/820 [4:13:03<1:29:10, 23.78s/it] 73%|███████▎  | 596/820 [4:13:26<1:27:14, 23.37s/it]                                                     {'loss': 0.1709, 'grad_norm': 0.5934040832530534, 'learning_rate': 8.654819673852874e-07, 'epoch': 7.27}
 73%|███████▎  | 596/820 [4:13:26<1:27:14, 23.37s/it] 73%|███████▎  | 597/820 [4:13:50<1:28:06, 23.71s/it]                                                     {'loss': 0.1238, 'grad_norm': 0.6096668919270102, 'learning_rate': 8.582466603087394e-07, 'epoch': 7.28}
 73%|███████▎  | 597/820 [4:13:50<1:28:06, 23.71s/it] 73%|███████▎  | 598/820 [4:14:15<1:28:31, 23.92s/it]                                                     {'loss': 0.1784, 'grad_norm': 0.5252373703779594, 'learning_rate': 8.510354511443975e-07, 'epoch': 7.29}
 73%|███████▎  | 598/820 [4:14:15<1:28:31, 23.92s/it] 73%|███████▎  | 599/820 [4:14:40<1:29:18, 24.25s/it]                                                     {'loss': 0.3339, 'grad_norm': 0.5313933334399454, 'learning_rate': 8.438484457395174e-07, 'epoch': 7.3}
 73%|███████▎  | 599/820 [4:14:40<1:29:18, 24.25s/it] 73%|███████▎  | 600/820 [4:15:04<1:29:08, 24.31s/it]                                                     {'loss': 0.2087, 'grad_norm': 0.5104388795223841, 'learning_rate': 8.366857495860869e-07, 'epoch': 7.32}
 73%|███████▎  | 600/820 [4:15:04<1:29:08, 24.31s/it] 73%|███████▎  | 601/820 [4:15:29<1:29:37, 24.55s/it]                                                     {'loss': 0.2017, 'grad_norm': 0.5768707276607773, 'learning_rate': 8.295474678192811e-07, 'epoch': 7.33}
 73%|███████▎  | 601/820 [4:15:29<1:29:37, 24.55s/it] 73%|███████▎  | 602/820 [4:15:51<1:26:16, 23.75s/it]                                                     {'loss': 0.1674, 'grad_norm': 0.5208135957226229, 'learning_rate': 8.224337052159154e-07, 'epoch': 7.34}
 73%|███████▎  | 602/820 [4:15:51<1:26:16, 23.75s/it] 74%|███████▎  | 603/820 [4:16:14<1:25:15, 23.57s/it]                                                     {'loss': 0.2306, 'grad_norm': 0.8845183822081742, 'learning_rate': 8.153445661929094e-07, 'epoch': 7.35}
 74%|███████▎  | 603/820 [4:16:14<1:25:15, 23.57s/it] 74%|███████▎  | 604/820 [4:16:38<1:24:40, 23.52s/it]                                                     {'loss': 0.2424, 'grad_norm': 0.614689501099956, 'learning_rate': 8.082801548057553e-07, 'epoch': 7.37}
 74%|███████▎  | 604/820 [4:16:38<1:24:40, 23.52s/it] 74%|███████▍  | 605/820 [4:17:01<1:23:58, 23.44s/it]                                                     {'loss': 0.2111, 'grad_norm': 1.0128155069542453, 'learning_rate': 8.012405747469861e-07, 'epoch': 7.38}
 74%|███████▍  | 605/820 [4:17:01<1:23:58, 23.44s/it] 74%|███████▍  | 606/820 [4:17:24<1:23:09, 23.32s/it]                                                     {'loss': 0.2845, 'grad_norm': 0.6291684854718149, 'learning_rate': 7.942259293446594e-07, 'epoch': 7.39}
 74%|███████▍  | 606/820 [4:17:24<1:23:09, 23.32s/it] 74%|███████▍  | 607/820 [4:17:49<1:24:13, 23.73s/it]                                                     {'loss': 0.2692, 'grad_norm': 0.4570558735845165, 'learning_rate': 7.872363215608372e-07, 'epoch': 7.4}
 74%|███████▍  | 607/820 [4:17:49<1:24:13, 23.73s/it] 74%|███████▍  | 608/820 [4:18:12<1:23:30, 23.64s/it]                                                     {'loss': 0.2511, 'grad_norm': 0.6962369835107043, 'learning_rate': 7.802718539900761e-07, 'epoch': 7.41}
 74%|███████▍  | 608/820 [4:18:12<1:23:30, 23.64s/it] 74%|███████▍  | 609/820 [4:18:35<1:21:51, 23.28s/it]                                                     {'loss': 0.2482, 'grad_norm': 0.5656276289421233, 'learning_rate': 7.733326288579182e-07, 'epoch': 7.43}
 74%|███████▍  | 609/820 [4:18:35<1:21:51, 23.28s/it] 74%|███████▍  | 610/820 [4:18:58<1:22:07, 23.47s/it]                                                     {'loss': 0.1661, 'grad_norm': 0.7683650134368049, 'learning_rate': 7.66418748019396e-07, 'epoch': 7.44}
 74%|███████▍  | 610/820 [4:18:58<1:22:07, 23.47s/it] 75%|███████▍  | 611/820 [4:19:21<1:21:14, 23.33s/it]                                                     {'loss': 0.1343, 'grad_norm': 0.5833373361081783, 'learning_rate': 7.595303129575332e-07, 'epoch': 7.45}
 75%|███████▍  | 611/820 [4:19:21<1:21:14, 23.33s/it] 75%|███████▍  | 612/820 [4:19:45<1:20:58, 23.36s/it]                                                     {'loss': 0.1589, 'grad_norm': 0.4712634257203618, 'learning_rate': 7.526674247818569e-07, 'epoch': 7.46}
 75%|███████▍  | 612/820 [4:19:45<1:20:58, 23.36s/it] 75%|███████▍  | 613/820 [4:20:08<1:19:59, 23.18s/it]                                                     {'loss': 0.1669, 'grad_norm': 0.900425150690845, 'learning_rate': 7.458301842269134e-07, 'epoch': 7.48}
 75%|███████▍  | 613/820 [4:20:08<1:19:59, 23.18s/it] 75%|███████▍  | 614/820 [4:20:31<1:19:37, 23.19s/it]                                                     {'loss': 0.1919, 'grad_norm': 0.48499930918643086, 'learning_rate': 7.390186916507869e-07, 'epoch': 7.49}
 75%|███████▍  | 614/820 [4:20:31<1:19:37, 23.19s/it] 75%|███████▌  | 615/820 [4:20:53<1:18:39, 23.02s/it]                                                     {'loss': 0.1546, 'grad_norm': 0.711266632213924, 'learning_rate': 7.322330470336314e-07, 'epoch': 7.5}
 75%|███████▌  | 615/820 [4:20:53<1:18:39, 23.02s/it] 75%|███████▌  | 616/820 [4:21:19<1:20:23, 23.65s/it]                                                     {'loss': 0.1343, 'grad_norm': 0.441285405006521, 'learning_rate': 7.254733499761993e-07, 'epoch': 7.51}
 75%|███████▌  | 616/820 [4:21:19<1:20:23, 23.65s/it] 75%|███████▌  | 617/820 [4:21:43<1:20:24, 23.77s/it]                                                     {'loss': 0.2256, 'grad_norm': 0.6571707305004821, 'learning_rate': 7.187396996983809e-07, 'epoch': 7.52}
 75%|███████▌  | 617/820 [4:21:43<1:20:24, 23.77s/it] 75%|███████▌  | 618/820 [4:22:07<1:21:03, 24.08s/it]                                                     {'loss': 0.1974, 'grad_norm': 0.521474458250997, 'learning_rate': 7.120321950377487e-07, 'epoch': 7.54}
 75%|███████▌  | 618/820 [4:22:07<1:21:03, 24.08s/it] 75%|███████▌  | 619/820 [4:22:27<1:16:04, 22.71s/it]                                                     {'loss': 0.1617, 'grad_norm': 0.5987359352321875, 'learning_rate': 7.053509344481032e-07, 'epoch': 7.55}
 75%|███████▌  | 619/820 [4:22:27<1:16:04, 22.71s/it] 76%|███████▌  | 620/820 [4:22:49<1:15:20, 22.60s/it]                                                     {'loss': 0.2089, 'grad_norm': 0.5830328835586392, 'learning_rate': 6.986960159980327e-07, 'epoch': 7.56}
 76%|███████▌  | 620/820 [4:22:49<1:15:20, 22.60s/it] 76%|███████▌  | 621/820 [4:23:14<1:16:40, 23.12s/it]                                                     {'loss': 0.1742, 'grad_norm': 0.47746603333746646, 'learning_rate': 6.920675373694705e-07, 'epoch': 7.57}
 76%|███████▌  | 621/820 [4:23:14<1:16:40, 23.12s/it] 76%|███████▌  | 622/820 [4:23:38<1:17:14, 23.41s/it]                                                     {'loss': 0.2295, 'grad_norm': 0.58015650651041, 'learning_rate': 6.854655958562625e-07, 'epoch': 7.59}
 76%|███████▌  | 622/820 [4:23:38<1:17:14, 23.41s/it] 76%|███████▌  | 623/820 [4:24:02<1:17:15, 23.53s/it]                                                     {'loss': 0.2328, 'grad_norm': 0.5193461836614868, 'learning_rate': 6.788902883627393e-07, 'epoch': 7.6}
 76%|███████▌  | 623/820 [4:24:02<1:17:15, 23.53s/it] 76%|███████▌  | 624/820 [4:24:24<1:15:33, 23.13s/it]                                                     {'loss': 0.2395, 'grad_norm': 0.7371414675759573, 'learning_rate': 6.723417114022907e-07, 'epoch': 7.61}
 76%|███████▌  | 624/820 [4:24:24<1:15:33, 23.13s/it] 76%|███████▌  | 625/820 [4:24:49<1:17:05, 23.72s/it]                                                     {'loss': 0.2893, 'grad_norm': 0.49484221129881567, 'learning_rate': 6.658199610959537e-07, 'epoch': 7.62}
 76%|███████▌  | 625/820 [4:24:49<1:17:05, 23.72s/it] 76%|███████▋  | 626/820 [4:25:12<1:16:19, 23.61s/it]                                                     {'loss': 0.2502, 'grad_norm': 0.5290181608435132, 'learning_rate': 6.593251331709993e-07, 'epoch': 7.63}
 76%|███████▋  | 626/820 [4:25:12<1:16:19, 23.61s/it] 76%|███████▋  | 627/820 [4:25:36<1:15:52, 23.59s/it]                                                     {'loss': 0.1878, 'grad_norm': 0.6104329599447348, 'learning_rate': 6.528573229595278e-07, 'epoch': 7.65}
 76%|███████▋  | 627/820 [4:25:36<1:15:52, 23.59s/it] 77%|███████▋  | 628/820 [4:25:59<1:14:53, 23.40s/it]                                                     {'loss': 0.1669, 'grad_norm': 0.7209266498244722, 'learning_rate': 6.464166253970672e-07, 'epoch': 7.66}
 77%|███████▋  | 628/820 [4:25:59<1:14:53, 23.40s/it] 77%|███████▋  | 629/820 [4:26:23<1:15:00, 23.56s/it]                                                     {'loss': 0.1927, 'grad_norm': 0.7073638494274078, 'learning_rate': 6.400031350211844e-07, 'epoch': 7.67}
 77%|███████▋  | 629/820 [4:26:23<1:15:00, 23.56s/it] 77%|███████▋  | 630/820 [4:26:45<1:13:28, 23.20s/it]                                                     {'loss': 0.3211, 'grad_norm': 0.5943567608403398, 'learning_rate': 6.336169459700933e-07, 'epoch': 7.68}
 77%|███████▋  | 630/820 [4:26:45<1:13:28, 23.20s/it] 77%|███████▋  | 631/820 [4:27:07<1:12:14, 22.93s/it]                                                     {'loss': 0.2227, 'grad_norm': 0.570222343077208, 'learning_rate': 6.272581519812756e-07, 'epoch': 7.7}
 77%|███████▋  | 631/820 [4:27:07<1:12:14, 22.93s/it] 77%|███████▋  | 632/820 [4:27:26<1:07:59, 21.70s/it]                                                     {'loss': 0.137, 'grad_norm': 0.6108888111335702, 'learning_rate': 6.209268463901047e-07, 'epoch': 7.71}
 77%|███████▋  | 632/820 [4:27:26<1:07:59, 21.70s/it] 77%|███████▋  | 633/820 [4:27:51<1:10:16, 22.55s/it]                                                     {'loss': 0.1875, 'grad_norm': 0.6846043583750675, 'learning_rate': 6.146231221284718e-07, 'epoch': 7.72}
 77%|███████▋  | 633/820 [4:27:51<1:10:16, 22.55s/it] 77%|███████▋  | 634/820 [4:28:16<1:12:47, 23.48s/it]                                                     {'loss': 0.2322, 'grad_norm': 0.6934921303969239, 'learning_rate': 6.083470717234285e-07, 'epoch': 7.73}
 77%|███████▋  | 634/820 [4:28:16<1:12:47, 23.48s/it] 77%|███████▋  | 635/820 [4:28:39<1:11:14, 23.11s/it]                                                     {'loss': 0.1621, 'grad_norm': 0.5242579553925344, 'learning_rate': 6.020987872958237e-07, 'epoch': 7.74}
 77%|███████▋  | 635/820 [4:28:39<1:11:14, 23.11s/it] 78%|███████▊  | 636/820 [4:29:01<1:09:53, 22.79s/it]                                                     {'loss': 0.0892, 'grad_norm': 0.7091231692456408, 'learning_rate': 5.95878360558953e-07, 'epoch': 7.76}
 78%|███████▊  | 636/820 [4:29:01<1:09:53, 22.79s/it] 78%|███████▊  | 637/820 [4:29:26<1:11:45, 23.53s/it]                                                     {'loss': 0.1639, 'grad_norm': 0.5198342351068478, 'learning_rate': 5.896858828172137e-07, 'epoch': 7.77}
 78%|███████▊  | 637/820 [4:29:26<1:11:45, 23.53s/it] 78%|███████▊  | 638/820 [4:29:51<1:13:05, 24.10s/it]                                                     {'loss': 0.2394, 'grad_norm': 0.5141933096624804, 'learning_rate': 5.835214449647602e-07, 'epoch': 7.78}
 78%|███████▊  | 638/820 [4:29:51<1:13:05, 24.10s/it] 78%|███████▊  | 639/820 [4:30:16<1:12:59, 24.20s/it]                                                     {'loss': 0.184, 'grad_norm': 0.8454679400656016, 'learning_rate': 5.773851374841763e-07, 'epoch': 7.79}
 78%|███████▊  | 639/820 [4:30:16<1:12:59, 24.20s/it] 78%|███████▊  | 640/820 [4:30:38<1:10:38, 23.55s/it]                                                     {'loss': 0.2314, 'grad_norm': 0.5545639463208579, 'learning_rate': 5.712770504451426e-07, 'epoch': 7.8}
 78%|███████▊  | 640/820 [4:30:38<1:10:38, 23.55s/it] 78%|███████▊  | 641/820 [4:30:58<1:07:03, 22.48s/it]                                                     {'loss': 0.215, 'grad_norm': 0.6563349326432258, 'learning_rate': 5.651972735031161e-07, 'epoch': 7.82}
 78%|███████▊  | 641/820 [4:30:58<1:07:03, 22.48s/it] 78%|███████▊  | 642/820 [4:31:21<1:07:43, 22.83s/it]                                                     {'loss': 0.2035, 'grad_norm': 0.5157994018170767, 'learning_rate': 5.591458958980123e-07, 'epoch': 7.83}
 78%|███████▊  | 642/820 [4:31:21<1:07:43, 22.83s/it] 78%|███████▊  | 643/820 [4:31:47<1:09:36, 23.60s/it]                                                     {'loss': 0.194, 'grad_norm': 0.5420539617708078, 'learning_rate': 5.531230064528981e-07, 'epoch': 7.84}
 78%|███████▊  | 643/820 [4:31:47<1:09:36, 23.60s/it] 79%|███████▊  | 644/820 [4:32:12<1:10:17, 23.96s/it]                                                     {'loss': 0.1994, 'grad_norm': 0.46257511040637717, 'learning_rate': 5.471286935726866e-07, 'epoch': 7.85}
 79%|███████▊  | 644/820 [4:32:12<1:10:17, 23.96s/it] 79%|███████▊  | 645/820 [4:32:37<1:10:47, 24.27s/it]                                                     {'loss': 0.1583, 'grad_norm': 0.545715616538897, 'learning_rate': 5.411630452428396e-07, 'epoch': 7.87}
 79%|███████▊  | 645/820 [4:32:37<1:10:47, 24.27s/it] 79%|███████▉  | 646/820 [4:33:00<1:09:57, 24.13s/it]                                                     {'loss': 0.1596, 'grad_norm': 0.7985791302564852, 'learning_rate': 5.352261490280767e-07, 'epoch': 7.88}
 79%|███████▉  | 646/820 [4:33:00<1:09:57, 24.13s/it] 79%|███████▉  | 647/820 [4:33:24<1:09:05, 23.96s/it]                                                     {'loss': 0.1277, 'grad_norm': 0.47379954567676297, 'learning_rate': 5.29318092071087e-07, 'epoch': 7.89}
 79%|███████▉  | 647/820 [4:33:24<1:09:05, 23.96s/it] 79%|███████▉  | 648/820 [4:33:48<1:08:29, 23.89s/it]                                                     {'loss': 0.1121, 'grad_norm': 0.601011725953497, 'learning_rate': 5.234389610912552e-07, 'epoch': 7.9}
 79%|███████▉  | 648/820 [4:33:48<1:08:29, 23.89s/it] 79%|███████▉  | 649/820 [4:34:09<1:06:10, 23.22s/it]                                                     {'loss': 0.2057, 'grad_norm': 0.5098201316366376, 'learning_rate': 5.17588842383385e-07, 'epoch': 7.91}
 79%|███████▉  | 649/820 [4:34:09<1:06:10, 23.22s/it] 79%|███████▉  | 650/820 [4:34:31<1:04:32, 22.78s/it]                                                     {'loss': 0.155, 'grad_norm': 0.6032189745077361, 'learning_rate': 5.117678218164337e-07, 'epoch': 7.93}
 79%|███████▉  | 650/820 [4:34:31<1:04:32, 22.78s/it] 79%|███████▉  | 651/820 [4:34:54<1:04:03, 22.74s/it]                                                     {'loss': 0.2236, 'grad_norm': 0.9238638189138092, 'learning_rate': 5.059759848322515e-07, 'epoch': 7.94}
 79%|███████▉  | 651/820 [4:34:54<1:04:03, 22.74s/it] 80%|███████▉  | 652/820 [4:35:15<1:02:14, 22.23s/it]                                                     {'loss': 0.2486, 'grad_norm': 0.677065282594525, 'learning_rate': 5.002134164443262e-07, 'epoch': 7.95}
 80%|███████▉  | 652/820 [4:35:15<1:02:14, 22.23s/it] 80%|███████▉  | 653/820 [4:35:39<1:03:45, 22.91s/it]                                                     {'loss': 0.2157, 'grad_norm': 0.5819754134744475, 'learning_rate': 4.944802012365379e-07, 'epoch': 7.96}
 80%|███████▉  | 653/820 [4:35:39<1:03:45, 22.91s/it] 80%|███████▉  | 654/820 [4:36:02<1:03:26, 22.93s/it]                                                     {'loss': 0.1811, 'grad_norm': 0.582779444487119, 'learning_rate': 4.887764233619163e-07, 'epoch': 7.98}
 80%|███████▉  | 654/820 [4:36:02<1:03:26, 22.93s/it] 80%|███████▉  | 655/820 [4:36:26<1:03:48, 23.20s/it]                                                     {'loss': 0.2021, 'grad_norm': 0.6375323997155057, 'learning_rate': 4.831021665414043e-07, 'epoch': 7.99}
 80%|███████▉  | 655/820 [4:36:26<1:03:48, 23.20s/it] 80%|████████  | 656/820 [4:36:48<1:02:15, 22.78s/it]                                                     {'loss': 0.1561, 'grad_norm': 0.4968341290237831, 'learning_rate': 4.774575140626317e-07, 'epoch': 8.0}
 80%|████████  | 656/820 [4:36:48<1:02:15, 22.78s/it][INFO|trainer.py:3942] 2025-06-02 11:32:46,722 >> Saving model checkpoint to /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-656
[INFO|configuration_utils.py:423] 2025-06-02 11:32:46,725 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-656/config.json
[INFO|configuration_utils.py:909] 2025-06-02 11:32:46,725 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-656/generation_config.json
[INFO|modeling_utils.py:3048] 2025-06-02 11:33:51,698 >> The model is bigger than the maximum size per checkpoint (5GB) and is going to be split in 14 checkpoint shards. You can find where each parameters has been saved in the index located at /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-656/model.safetensors.index.json.
[INFO|tokenization_utils_base.py:2500] 2025-06-02 11:33:51,700 >> tokenizer config file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-656/tokenizer_config.json
[INFO|tokenization_utils_base.py:2509] 2025-06-02 11:33:51,700 >> Special tokens file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-656/special_tokens_map.json
[2025-06-02 11:33:55,903] [INFO] [logging.py:128:log_dist] [Rank 0] [Torch] Checkpoint global_step656 is about to be saved!
[2025-06-02 11:33:55,916] [INFO] [logging.py:128:log_dist] [Rank 0] Saving model checkpoint: /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-656/global_step656/zero_pp_rank_0_mp_rank_00_model_states.pt
[2025-06-02 11:33:55,916] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-656/global_step656/zero_pp_rank_0_mp_rank_00_model_states.pt...
[2025-06-02 11:33:55,941] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-656/global_step656/zero_pp_rank_0_mp_rank_00_model_states.pt.
[2025-06-02 11:33:55,949] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-656/global_step656/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt...
[2025-06-02 11:35:15,236] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-656/global_step656/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt.
[2025-06-02 11:35:15,238] [INFO] [engine.py:3572:_save_zero_checkpoint] zero checkpoint saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-656/global_step656/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt
[2025-06-02 11:35:27,015] [INFO] [torch_checkpoint_engine.py:33:commit] [Torch] Checkpoint global_step656 is ready now!
 80%|████████  | 657/820 [4:40:09<3:26:50, 76.14s/it]                                                     {'loss': 0.1881, 'grad_norm': 0.6292009788568088, 'learning_rate': 4.7184254877868845e-07, 'epoch': 8.01}
 80%|████████  | 657/820 [4:40:09<3:26:50, 76.14s/it] 80%|████████  | 658/820 [4:40:30<2:40:57, 59.61s/it]                                                     {'loss': 0.0842, 'grad_norm': 0.7417062747382264, 'learning_rate': 4.6625735310691396e-07, 'epoch': 8.02}
 80%|████████  | 658/820 [4:40:30<2:40:57, 59.61s/it] 80%|████████  | 659/820 [4:40:50<2:08:35, 47.92s/it]                                                     {'loss': 0.187, 'grad_norm': 0.65795149381976, 'learning_rate': 4.607020090276834e-07, 'epoch': 8.04}
 80%|████████  | 659/820 [4:40:50<2:08:35, 47.92s/it] 80%|████████  | 660/820 [4:41:14<1:48:39, 40.75s/it]                                                     {'loss': 0.2511, 'grad_norm': 0.46603799493579434, 'learning_rate': 4.55176598083206e-07, 'epoch': 8.05}
 80%|████████  | 660/820 [4:41:14<1:48:39, 40.75s/it] 81%|████████  | 661/820 [4:41:37<1:33:31, 35.29s/it]                                                     {'loss': 0.1268, 'grad_norm': 0.5658019105173296, 'learning_rate': 4.496812013763269e-07, 'epoch': 8.06}
 81%|████████  | 661/820 [4:41:37<1:33:31, 35.29s/it] 81%|████████  | 662/820 [4:42:02<1:25:21, 32.42s/it]                                                     {'loss': 0.1198, 'grad_norm': 0.51094382657438, 'learning_rate': 4.4421589956933827e-07, 'epoch': 8.07}
 81%|████████  | 662/820 [4:42:02<1:25:21, 32.42s/it] 81%|████████  | 663/820 [4:42:28<1:19:19, 30.31s/it]                                                     {'loss': 0.0855, 'grad_norm': 0.539882968329354, 'learning_rate': 4.387807728827945e-07, 'epoch': 8.09}
 81%|████████  | 663/820 [4:42:28<1:19:19, 30.31s/it] 81%|████████  | 664/820 [4:42:52<1:13:57, 28.44s/it]                                                     {'loss': 0.1466, 'grad_norm': 0.6088579778338665, 'learning_rate': 4.3337590109433505e-07, 'epoch': 8.1}
 81%|████████  | 664/820 [4:42:52<1:13:57, 28.44s/it] 81%|████████  | 665/820 [4:43:17<1:11:05, 27.52s/it]                                                     {'loss': 0.1938, 'grad_norm': 0.6299891447672621, 'learning_rate': 4.280013635375138e-07, 'epoch': 8.11}
 81%|████████  | 665/820 [4:43:17<1:11:05, 27.52s/it] 81%|████████  | 666/820 [4:43:40<1:07:14, 26.20s/it]                                                     {'loss': 0.1589, 'grad_norm': 0.55736497261759, 'learning_rate': 4.22657239100632e-07, 'epoch': 8.12}
 81%|████████  | 666/820 [4:43:40<1:07:14, 26.20s/it] 81%|████████▏ | 667/820 [4:44:03<1:04:12, 25.18s/it]                                                     {'loss': 0.1235, 'grad_norm': 0.6644294511781987, 'learning_rate': 4.173436062255848e-07, 'epoch': 8.13}
 81%|████████▏ | 667/820 [4:44:03<1:04:12, 25.18s/it] 81%|████████▏ | 668/820 [4:44:26<1:01:50, 24.41s/it]                                                     {'loss': 0.1406, 'grad_norm': 0.5865881592769333, 'learning_rate': 4.1206054290670537e-07, 'epoch': 8.15}
 81%|████████▏ | 668/820 [4:44:26<1:01:50, 24.41s/it] 82%|████████▏ | 669/820 [4:44:48<59:48, 23.76s/it]                                                     {'loss': 0.1061, 'grad_norm': 0.5184820909495811, 'learning_rate': 4.0680812668962316e-07, 'epoch': 8.16}
 82%|████████▏ | 669/820 [4:44:48<59:48, 23.76s/it] 82%|████████▏ | 670/820 [4:45:10<58:21, 23.34s/it]                                                   {'loss': 0.0843, 'grad_norm': 0.5789799565511381, 'learning_rate': 4.015864346701251e-07, 'epoch': 8.17}
 82%|████████▏ | 670/820 [4:45:10<58:21, 23.34s/it] 82%|████████▏ | 671/820 [4:45:34<57:57, 23.34s/it]                                                   {'loss': 0.235, 'grad_norm': 0.6297520198940575, 'learning_rate': 3.9639554349302363e-07, 'epoch': 8.18}
 82%|████████▏ | 671/820 [4:45:34<57:57, 23.34s/it] 82%|████████▏ | 672/820 [4:45:59<58:42, 23.80s/it]                                                   {'loss': 0.1484, 'grad_norm': 0.4238444978201714, 'learning_rate': 3.9123552935102976e-07, 'epoch': 8.2}
 82%|████████▏ | 672/820 [4:45:59<58:42, 23.80s/it] 82%|████████▏ | 673/820 [4:46:21<57:19, 23.40s/it]                                                   {'loss': 0.2004, 'grad_norm': 0.5598020986327, 'learning_rate': 3.861064679836382e-07, 'epoch': 8.21}
 82%|████████▏ | 673/820 [4:46:21<57:19, 23.40s/it] 82%|████████▏ | 674/820 [4:46:41<54:13, 22.28s/it]                                                   {'loss': 0.1092, 'grad_norm': 0.4950698839347261, 'learning_rate': 3.81008434676014e-07, 'epoch': 8.22}
 82%|████████▏ | 674/820 [4:46:41<54:13, 22.28s/it] 82%|████████▏ | 675/820 [4:47:05<54:58, 22.75s/it]                                                   {'loss': 0.199, 'grad_norm': 0.5730901729605578, 'learning_rate': 3.7594150425788677e-07, 'epoch': 8.23}
 82%|████████▏ | 675/820 [4:47:05<54:58, 22.75s/it] 82%|████████▏ | 676/820 [4:47:29<55:58, 23.32s/it]                                                   {'loss': 0.2023, 'grad_norm': 0.4900696071329387, 'learning_rate': 3.709057511024541e-07, 'epoch': 8.24}
 82%|████████▏ | 676/820 [4:47:29<55:58, 23.32s/it] 83%|████████▎ | 677/820 [4:47:51<54:32, 22.88s/it]                                                   {'loss': 0.115, 'grad_norm': 0.4575811247357273, 'learning_rate': 3.6590124912528723e-07, 'epoch': 8.26}
 83%|████████▎ | 677/820 [4:47:51<54:32, 22.88s/it] 83%|████████▎ | 678/820 [4:48:14<54:22, 22.98s/it]                                                   {'loss': 0.1568, 'grad_norm': 0.4320770236382994, 'learning_rate': 3.609280717832489e-07, 'epoch': 8.27}
 83%|████████▎ | 678/820 [4:48:14<54:22, 22.98s/it] 83%|████████▎ | 679/820 [4:48:40<55:52, 23.77s/it]                                                   {'loss': 0.1996, 'grad_norm': 0.5395706458284906, 'learning_rate': 3.559862920734139e-07, 'epoch': 8.28}
 83%|████████▎ | 679/820 [4:48:40<55:52, 23.77s/it] 83%|████████▎ | 680/820 [4:48:59<52:04, 22.32s/it]                                                   {'loss': 0.1055, 'grad_norm': 0.4769776851737326, 'learning_rate': 3.510759825319976e-07, 'epoch': 8.29}
 83%|████████▎ | 680/820 [4:48:59<52:04, 22.32s/it] 83%|████████▎ | 681/820 [4:49:24<53:44, 23.20s/it]                                                   {'loss': 0.1566, 'grad_norm': 0.490058792784611, 'learning_rate': 3.461972152332907e-07, 'epoch': 8.3}
 83%|████████▎ | 681/820 [4:49:24<53:44, 23.20s/it] 83%|████████▎ | 682/820 [4:49:47<53:21, 23.20s/it]                                                   {'loss': 0.1649, 'grad_norm': 0.5564598624847915, 'learning_rate': 3.413500617886023e-07, 'epoch': 8.32}
 83%|████████▎ | 682/820 [4:49:47<53:21, 23.20s/it] 83%|████████▎ | 683/820 [4:50:12<53:43, 23.53s/it]                                                   {'loss': 0.1701, 'grad_norm': 0.4956808407169584, 'learning_rate': 3.365345933452088e-07, 'epoch': 8.33}
 83%|████████▎ | 683/820 [4:50:12<53:43, 23.53s/it] 83%|████████▎ | 684/820 [4:50:34<52:43, 23.26s/it]                                                   {'loss': 0.1742, 'grad_norm': 0.49025500211320355, 'learning_rate': 3.3175088058530925e-07, 'epoch': 8.34}
 83%|████████▎ | 684/820 [4:50:34<52:43, 23.26s/it] 84%|████████▎ | 685/820 [4:50:58<52:48, 23.47s/it]                                                   {'loss': 0.1781, 'grad_norm': 0.5877966647229307, 'learning_rate': 3.2699899372498736e-07, 'epoch': 8.35}
 84%|████████▎ | 685/820 [4:50:58<52:48, 23.47s/it] 84%|████████▎ | 686/820 [4:51:24<53:52, 24.13s/it]                                                   {'loss': 0.1756, 'grad_norm': 0.520663979215311, 'learning_rate': 3.2227900251318055e-07, 'epoch': 8.37}
 84%|████████▎ | 686/820 [4:51:24<53:52, 24.13s/it] 84%|████████▍ | 687/820 [4:51:47<52:37, 23.74s/it]                                                   {'loss': 0.1711, 'grad_norm': 0.6013053547505364, 'learning_rate': 3.1759097623065863e-07, 'epoch': 8.38}
 84%|████████▍ | 687/820 [4:51:47<52:37, 23.74s/it] 84%|████████▍ | 688/820 [4:52:09<51:22, 23.35s/it]                                                   {'loss': 0.1467, 'grad_norm': 0.547551130082525, 'learning_rate': 3.1293498368900414e-07, 'epoch': 8.39}
 84%|████████▍ | 688/820 [4:52:09<51:22, 23.35s/it] 84%|████████▍ | 689/820 [4:52:34<52:09, 23.89s/it]                                                   {'loss': 0.1518, 'grad_norm': 0.5202912197102854, 'learning_rate': 3.083110932296035e-07, 'epoch': 8.4}
 84%|████████▍ | 689/820 [4:52:34<52:09, 23.89s/it] 84%|████████▍ | 690/820 [4:52:57<50:37, 23.37s/it]                                                   {'loss': 0.243, 'grad_norm': 0.5811676557201099, 'learning_rate': 3.0371937272264454e-07, 'epoch': 8.41}
 84%|████████▍ | 690/820 [4:52:57<50:37, 23.37s/it] 84%|████████▍ | 691/820 [4:53:19<49:49, 23.17s/it]                                                   {'loss': 0.191, 'grad_norm': 0.5969026344356338, 'learning_rate': 2.991598895661174e-07, 'epoch': 8.43}
 84%|████████▍ | 691/820 [4:53:19<49:49, 23.17s/it] 84%|████████▍ | 692/820 [4:53:38<46:29, 21.79s/it]                                                   {'loss': 0.1172, 'grad_norm': 0.5266178934745273, 'learning_rate': 2.9463271068482955e-07, 'epoch': 8.44}
 84%|████████▍ | 692/820 [4:53:38<46:29, 21.79s/it] 85%|████████▍ | 693/820 [4:54:01<46:44, 22.09s/it]                                                   {'loss': 0.2078, 'grad_norm': 0.464765365300733, 'learning_rate': 2.9013790252942015e-07, 'epoch': 8.45}
 85%|████████▍ | 693/820 [4:54:01<46:44, 22.09s/it] 85%|████████▍ | 694/820 [4:54:24<47:11, 22.47s/it]                                                   {'loss': 0.1562, 'grad_norm': 0.45275255225941174, 'learning_rate': 2.856755310753867e-07, 'epoch': 8.46}
 85%|████████▍ | 694/820 [4:54:24<47:11, 22.47s/it] 85%|████████▍ | 695/820 [4:54:46<46:37, 22.38s/it]                                                   {'loss': 0.1949, 'grad_norm': 0.6489682808065004, 'learning_rate': 2.8124566182211434e-07, 'epoch': 8.48}
 85%|████████▍ | 695/820 [4:54:46<46:37, 22.38s/it] 85%|████████▍ | 696/820 [4:55:10<47:08, 22.81s/it]                                                   {'loss': 0.2036, 'grad_norm': 0.5522589343172698, 'learning_rate': 2.7684835979191664e-07, 'epoch': 8.49}
 85%|████████▍ | 696/820 [4:55:10<47:08, 22.81s/it] 85%|████████▌ | 697/820 [4:55:35<48:24, 23.61s/it]                                                   {'loss': 0.1332, 'grad_norm': 0.4330090647945919, 'learning_rate': 2.7248368952908055e-07, 'epoch': 8.5}
 85%|████████▌ | 697/820 [4:55:35<48:24, 23.61s/it] 85%|████████▌ | 698/820 [4:55:59<48:04, 23.64s/it]                                                   {'loss': 0.1342, 'grad_norm': 0.41350248849364546, 'learning_rate': 2.681517150989185e-07, 'epoch': 8.51}
 85%|████████▌ | 698/820 [4:55:59<48:04, 23.64s/it] 85%|████████▌ | 699/820 [4:56:24<48:09, 23.88s/it]                                                   {'loss': 0.193, 'grad_norm': 0.46996099501462146, 'learning_rate': 2.638525000868289e-07, 'epoch': 8.52}
 85%|████████▌ | 699/820 [4:56:24<48:09, 23.88s/it] 85%|████████▌ | 700/820 [4:56:47<47:15, 23.63s/it]                                                   {'loss': 0.1912, 'grad_norm': 0.6934637839848301, 'learning_rate': 2.5958610759736133e-07, 'epoch': 8.54}
 85%|████████▌ | 700/820 [4:56:47<47:15, 23.63s/it] 85%|████████▌ | 701/820 [4:57:11<47:11, 23.80s/it]                                                   {'loss': 0.1409, 'grad_norm': 0.4603296853107734, 'learning_rate': 2.553526002532916e-07, 'epoch': 8.55}
 85%|████████▌ | 701/820 [4:57:11<47:11, 23.80s/it] 86%|████████▌ | 702/820 [4:57:35<47:01, 23.91s/it]                                                   {'loss': 0.0843, 'grad_norm': 0.5691668909640983, 'learning_rate': 2.511520401947032e-07, 'epoch': 8.56}
 86%|████████▌ | 702/820 [4:57:35<47:01, 23.91s/it] 86%|████████▌ | 703/820 [4:58:00<47:09, 24.18s/it]                                                   {'loss': 0.2663, 'grad_norm': 0.5276982427389381, 'learning_rate': 2.469844890780726e-07, 'epoch': 8.57}
 86%|████████▌ | 703/820 [4:58:00<47:09, 24.18s/it] 86%|████████▌ | 704/820 [4:58:24<46:33, 24.08s/it]                                                   {'loss': 0.1928, 'grad_norm': 0.5895535066822518, 'learning_rate': 2.428500080753676e-07, 'epoch': 8.59}
 86%|████████▌ | 704/820 [4:58:24<46:33, 24.08s/it] 86%|████████▌ | 705/820 [4:58:49<46:55, 24.48s/it]                                                   {'loss': 0.1761, 'grad_norm': 0.4777051865118653, 'learning_rate': 2.38748657873146e-07, 'epoch': 8.6}
 86%|████████▌ | 705/820 [4:58:49<46:55, 24.48s/it] 86%|████████▌ | 706/820 [4:59:13<46:10, 24.30s/it]                                                   {'loss': 0.1394, 'grad_norm': 0.47977418057466803, 'learning_rate': 2.3468049867166747e-07, 'epoch': 8.61}
 86%|████████▌ | 706/820 [4:59:13<46:10, 24.30s/it] 86%|████████▌ | 707/820 [4:59:35<44:28, 23.62s/it]                                                   {'loss': 0.2154, 'grad_norm': 0.6113600270131595, 'learning_rate': 2.3064559018400878e-07, 'epoch': 8.62}
 86%|████████▌ | 707/820 [4:59:35<44:28, 23.62s/it] 86%|████████▋ | 708/820 [5:00:00<44:41, 23.94s/it]                                                   {'loss': 0.1932, 'grad_norm': 0.44172240597648876, 'learning_rate': 2.2664399163518786e-07, 'epoch': 8.63}
 86%|████████▋ | 708/820 [5:00:00<44:41, 23.94s/it] 86%|████████▋ | 709/820 [5:00:17<40:41, 22.00s/it]                                                   {'loss': 0.1832, 'grad_norm': 0.527673880459613, 'learning_rate': 2.2267576176129403e-07, 'epoch': 8.65}
 86%|████████▋ | 709/820 [5:00:17<40:41, 22.00s/it] 87%|████████▋ | 710/820 [5:00:39<40:29, 22.08s/it]                                                   {'loss': 0.2168, 'grad_norm': 0.4368487051760807, 'learning_rate': 2.1874095880862505e-07, 'epoch': 8.66}
 87%|████████▋ | 710/820 [5:00:39<40:29, 22.08s/it] 87%|████████▋ | 711/820 [5:01:05<41:54, 23.07s/it]                                                   {'loss': 0.0783, 'grad_norm': 0.46371337414026537, 'learning_rate': 2.1483964053283428e-07, 'epoch': 8.67}
 87%|████████▋ | 711/820 [5:01:05<41:54, 23.07s/it] 87%|████████▋ | 712/820 [5:01:28<41:41, 23.16s/it]                                                   {'loss': 0.2177, 'grad_norm': 0.7380786932144946, 'learning_rate': 2.1097186419808151e-07, 'epoch': 8.68}
 87%|████████▋ | 712/820 [5:01:28<41:41, 23.16s/it] 87%|████████▋ | 713/820 [5:01:53<42:18, 23.73s/it]                                                   {'loss': 0.1689, 'grad_norm': 0.5779466679861996, 'learning_rate': 2.0713768657619258e-07, 'epoch': 8.7}
 87%|████████▋ | 713/820 [5:01:53<42:18, 23.73s/it] 87%|████████▋ | 714/820 [5:02:17<41:50, 23.68s/it]                                                   {'loss': 0.1999, 'grad_norm': 0.5285453157141016, 'learning_rate': 2.0333716394582536e-07, 'epoch': 8.71}
 87%|████████▋ | 714/820 [5:02:17<41:50, 23.68s/it] 87%|████████▋ | 715/820 [5:02:42<42:25, 24.24s/it]                                                   {'loss': 0.2127, 'grad_norm': 0.5173581807884833, 'learning_rate': 1.9957035209164562e-07, 'epoch': 8.72}
 87%|████████▋ | 715/820 [5:02:42<42:25, 24.24s/it] 87%|████████▋ | 716/820 [5:03:07<42:08, 24.31s/it]                                                   {'loss': 0.1579, 'grad_norm': 0.48258697209372864, 'learning_rate': 1.958373063035071e-07, 'epoch': 8.73}
 87%|████████▋ | 716/820 [5:03:07<42:08, 24.31s/it] 87%|████████▋ | 717/820 [5:03:31<41:47, 24.35s/it]                                                   {'loss': 0.2232, 'grad_norm': 0.5139908906324224, 'learning_rate': 1.9213808137563905e-07, 'epoch': 8.74}
 87%|████████▋ | 717/820 [5:03:31<41:47, 24.35s/it] 88%|████████▊ | 718/820 [5:03:55<41:12, 24.24s/it]                                                   {'loss': 0.1057, 'grad_norm': 0.5744982111807801, 'learning_rate': 1.8847273160584378e-07, 'epoch': 8.76}
 88%|████████▊ | 718/820 [5:03:55<41:12, 24.24s/it] 88%|████████▊ | 719/820 [5:04:19<40:32, 24.09s/it]                                                   {'loss': 0.1712, 'grad_norm': 0.6404440222924996, 'learning_rate': 1.8484131079469753e-07, 'epoch': 8.77}
 88%|████████▊ | 719/820 [5:04:19<40:32, 24.09s/it] 88%|████████▊ | 720/820 [5:04:44<40:48, 24.48s/it]                                                   {'loss': 0.2331, 'grad_norm': 0.44240763052135146, 'learning_rate': 1.8124387224476347e-07, 'epoch': 8.78}
 88%|████████▊ | 720/820 [5:04:44<40:48, 24.48s/it] 88%|████████▊ | 721/820 [5:05:08<40:13, 24.38s/it]                                                   {'loss': 0.1876, 'grad_norm': 0.568316733546112, 'learning_rate': 1.776804687598066e-07, 'epoch': 8.79}
 88%|████████▊ | 721/820 [5:05:08<40:13, 24.38s/it] 88%|████████▊ | 722/820 [5:05:31<38:49, 23.77s/it]                                                   {'loss': 0.1183, 'grad_norm': 0.5084629953003293, 'learning_rate': 1.7415115264402065e-07, 'epoch': 8.8}
 88%|████████▊ | 722/820 [5:05:31<38:49, 23.77s/it] 88%|████████▊ | 723/820 [5:05:54<38:20, 23.71s/it]                                                   {'loss': 0.2179, 'grad_norm': 0.5996975725556478, 'learning_rate': 1.706559757012599e-07, 'epoch': 8.82}
 88%|████████▊ | 723/820 [5:05:54<38:20, 23.71s/it] 88%|████████▊ | 724/820 [5:06:16<37:07, 23.20s/it]                                                   {'loss': 0.1948, 'grad_norm': 0.46854823417519753, 'learning_rate': 1.6719498923427697e-07, 'epoch': 8.83}
 88%|████████▊ | 724/820 [5:06:16<37:07, 23.20s/it] 88%|████████▊ | 725/820 [5:06:38<36:09, 22.84s/it]                                                   {'loss': 0.1405, 'grad_norm': 0.6133039475905736, 'learning_rate': 1.6376824404397252e-07, 'epoch': 8.84}
 88%|████████▊ | 725/820 [5:06:38<36:09, 22.84s/it] 89%|████████▊ | 726/820 [5:07:01<35:38, 22.75s/it]                                                   {'loss': 0.2124, 'grad_norm': 0.6226095268790593, 'learning_rate': 1.6037579042864876e-07, 'epoch': 8.85}
 89%|████████▊ | 726/820 [5:07:01<35:38, 22.75s/it] 89%|████████▊ | 727/820 [5:07:23<34:47, 22.44s/it]                                                   {'loss': 0.1467, 'grad_norm': 0.7364351293679364, 'learning_rate': 1.5701767818327051e-07, 'epoch': 8.87}
 89%|████████▊ | 727/820 [5:07:23<34:47, 22.44s/it] 89%|████████▉ | 728/820 [5:07:46<34:36, 22.57s/it]                                                   {'loss': 0.1048, 'grad_norm': 0.44497983388119744, 'learning_rate': 1.5369395659873305e-07, 'epoch': 8.88}
 89%|████████▉ | 728/820 [5:07:46<34:36, 22.57s/it] 89%|████████▉ | 729/820 [5:08:10<35:13, 23.23s/it]                                                   {'loss': 0.1264, 'grad_norm': 0.533226507042036, 'learning_rate': 1.504046744611426e-07, 'epoch': 8.89}
 89%|████████▉ | 729/820 [5:08:10<35:13, 23.23s/it] 89%|████████▉ | 730/820 [5:08:35<35:20, 23.56s/it]                                                   {'loss': 0.1613, 'grad_norm': 0.533215806743741, 'learning_rate': 1.471498800510962e-07, 'epoch': 8.9}
 89%|████████▉ | 730/820 [5:08:35<35:20, 23.56s/it] 89%|████████▉ | 731/820 [5:08:58<34:40, 23.38s/it]                                                   {'loss': 0.1609, 'grad_norm': 0.4555098016311861, 'learning_rate': 1.4392962114297497e-07, 'epoch': 8.91}
 89%|████████▉ | 731/820 [5:08:58<34:40, 23.38s/it] 89%|████████▉ | 732/820 [5:09:21<34:28, 23.51s/it]                                                   {'loss': 0.182, 'grad_norm': 0.6591723581062626, 'learning_rate': 1.407439450042433e-07, 'epoch': 8.93}
 89%|████████▉ | 732/820 [5:09:21<34:28, 23.51s/it] 89%|████████▉ | 733/820 [5:09:44<33:33, 23.14s/it]                                                   {'loss': 0.1633, 'grad_norm': 0.5131203002558127, 'learning_rate': 1.3759289839475304e-07, 'epoch': 8.94}
 89%|████████▉ | 733/820 [5:09:44<33:33, 23.14s/it] 90%|████████▉ | 734/820 [5:10:08<33:33, 23.41s/it]                                                   {'loss': 0.2009, 'grad_norm': 0.9204123694446094, 'learning_rate': 1.3447652756605894e-07, 'epoch': 8.95}
 90%|████████▉ | 734/820 [5:10:08<33:33, 23.41s/it] 90%|████████▉ | 735/820 [5:10:30<32:33, 22.98s/it]                                                   {'loss': 0.1531, 'grad_norm': 0.5513675152451625, 'learning_rate': 1.3139487826073937e-07, 'epoch': 8.96}
 90%|████████▉ | 735/820 [5:10:30<32:33, 22.98s/it] 90%|████████▉ | 736/820 [5:10:51<31:39, 22.62s/it]                                                   {'loss': 0.1786, 'grad_norm': 0.6747055188499617, 'learning_rate': 1.283479957117248e-07, 'epoch': 8.98}
 90%|████████▉ | 736/820 [5:10:51<31:39, 22.62s/it] 90%|████████▉ | 737/820 [5:11:14<31:04, 22.46s/it]                                                   {'loss': 0.1817, 'grad_norm': 0.5781785750208993, 'learning_rate': 1.2533592464163386e-07, 'epoch': 8.99}
 90%|████████▉ | 737/820 [5:11:14<31:04, 22.46s/it] 90%|█████████ | 738/820 [5:11:35<30:23, 22.24s/it]                                                   {'loss': 0.1987, 'grad_norm': 0.5918694743861959, 'learning_rate': 1.223587092621162e-07, 'epoch': 9.0}
 90%|█████████ | 738/820 [5:11:35<30:23, 22.24s/it][INFO|trainer.py:3942] 2025-06-02 12:07:34,120 >> Saving model checkpoint to /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-738
[INFO|configuration_utils.py:423] 2025-06-02 12:07:34,123 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-738/config.json
[INFO|configuration_utils.py:909] 2025-06-02 12:07:34,124 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-738/generation_config.json
[INFO|modeling_utils.py:3048] 2025-06-02 12:08:40,474 >> The model is bigger than the maximum size per checkpoint (5GB) and is going to be split in 14 checkpoint shards. You can find where each parameters has been saved in the index located at /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-738/model.safetensors.index.json.
[INFO|tokenization_utils_base.py:2500] 2025-06-02 12:08:40,476 >> tokenizer config file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-738/tokenizer_config.json
[INFO|tokenization_utils_base.py:2509] 2025-06-02 12:08:40,476 >> Special tokens file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-738/special_tokens_map.json
[2025-06-02 12:08:40,634] [INFO] [logging.py:128:log_dist] [Rank 0] [Torch] Checkpoint global_step738 is about to be saved!
[2025-06-02 12:08:40,647] [INFO] [logging.py:128:log_dist] [Rank 0] Saving model checkpoint: /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-738/global_step738/zero_pp_rank_0_mp_rank_00_model_states.pt
[2025-06-02 12:08:40,647] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-738/global_step738/zero_pp_rank_0_mp_rank_00_model_states.pt...
[2025-06-02 12:08:46,083] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-738/global_step738/zero_pp_rank_0_mp_rank_00_model_states.pt.
[2025-06-02 12:08:46,089] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-738/global_step738/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt...
[2025-06-02 12:10:14,424] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-738/global_step738/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt.
[2025-06-02 12:10:14,425] [INFO] [engine.py:3572:_save_zero_checkpoint] zero checkpoint saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-738/global_step738/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt
[2025-06-02 12:10:17,299] [INFO] [torch_checkpoint_engine.py:33:commit] [Torch] Checkpoint global_step738 is ready now!
 90%|█████████ | 739/820 [5:15:01<1:44:13, 77.20s/it]                                                     {'loss': 0.1507, 'grad_norm': 0.6593902019754657, 'learning_rate': 1.1941639327320482e-07, 'epoch': 9.01}
 90%|█████████ | 739/820 [5:15:01<1:44:13, 77.20s/it] 90%|█████████ | 740/820 [5:15:24<1:21:24, 61.05s/it]                                                     {'loss': 0.1667, 'grad_norm': 0.4899106620034488, 'learning_rate': 1.1650901986267365e-07, 'epoch': 9.02}
 90%|█████████ | 740/820 [5:15:24<1:21:24, 61.05s/it] 90%|█████████ | 741/820 [5:15:48<1:05:42, 49.90s/it]                                                     {'loss': 0.1312, 'grad_norm': 0.41379404881875603, 'learning_rate': 1.136366317054044e-07, 'epoch': 9.04}
 90%|█████████ | 741/820 [5:15:48<1:05:42, 49.90s/it] 90%|█████████ | 742/820 [5:16:11<54:30, 41.93s/it]                                                     {'loss': 0.1007, 'grad_norm': 0.4489309021450303, 'learning_rate': 1.1079927096275978e-07, 'epoch': 9.05}
 90%|█████████ | 742/820 [5:16:11<54:30, 41.93s/it] 91%|█████████ | 743/820 [5:16:35<46:57, 36.59s/it]                                                   {'loss': 0.1384, 'grad_norm': 0.3815607193340666, 'learning_rate': 1.0799697928196378e-07, 'epoch': 9.06}
 91%|█████████ | 743/820 [5:16:35<46:57, 36.59s/it] 91%|█████████ | 744/820 [5:17:01<42:12, 33.32s/it]                                                   {'loss': 0.2216, 'grad_norm': 0.5040359304974202, 'learning_rate': 1.052297977954922e-07, 'epoch': 9.07}
 91%|█████████ | 744/820 [5:17:01<42:12, 33.32s/it] 91%|█████████ | 745/820 [5:17:23<37:20, 29.87s/it]                                                   {'loss': 0.12, 'grad_norm': 0.4797937104919811, 'learning_rate': 1.0249776712046745e-07, 'epoch': 9.09}
 91%|█████████ | 745/820 [5:17:23<37:20, 29.87s/it] 91%|█████████ | 746/820 [5:17:47<34:43, 28.16s/it]                                                   {'loss': 0.1465, 'grad_norm': 0.44346398877777166, 'learning_rate': 9.98009273580633e-08, 'epoch': 9.1}
 91%|█████████ | 746/820 [5:17:47<34:43, 28.16s/it] 91%|█████████ | 747/820 [5:18:12<33:04, 27.19s/it]                                                   {'loss': 0.2533, 'grad_norm': 0.4728906281560302, 'learning_rate': 9.713931809291477e-08, 'epoch': 9.11}
 91%|█████████ | 747/820 [5:18:12<33:04, 27.19s/it] 91%|█████████ | 748/820 [5:18:36<31:30, 26.26s/it]                                                   {'loss': 0.1672, 'grad_norm': 0.6595401937310214, 'learning_rate': 9.451297839253915e-08, 'epoch': 9.12}
 91%|█████████ | 748/820 [5:18:36<31:30, 26.26s/it] 91%|█████████▏| 749/820 [5:18:59<29:56, 25.30s/it]                                                   {'loss': 0.1976, 'grad_norm': 0.5021402308235652, 'learning_rate': 9.192194680676115e-08, 'epoch': 9.13}
 91%|█████████▏| 749/820 [5:18:59<29:56, 25.30s/it] 91%|█████████▏| 750/820 [5:19:22<28:37, 24.54s/it]                                                   {'loss': 0.2009, 'grad_norm': 0.503820186971551, 'learning_rate': 8.936626136714754e-08, 'epoch': 9.15}
 91%|█████████▏| 750/820 [5:19:22<28:37, 24.54s/it] 92%|█████████▏| 751/820 [5:19:45<27:45, 24.13s/it]                                                   {'loss': 0.1331, 'grad_norm': 0.42113460061581376, 'learning_rate': 8.684595958644876e-08, 'epoch': 9.16}
 92%|█████████▏| 751/820 [5:19:45<27:45, 24.13s/it] 92%|█████████▏| 752/820 [5:20:09<27:16, 24.07s/it]                                                   {'loss': 0.1808, 'grad_norm': 0.4663950904808185, 'learning_rate': 8.436107845804842e-08, 'epoch': 9.17}
 92%|█████████▏| 752/820 [5:20:09<27:16, 24.07s/it] 92%|█████████▏| 753/820 [5:20:34<27:00, 24.18s/it]                                                   {'loss': 0.0808, 'grad_norm': 0.7584346190735659, 'learning_rate': 8.191165445541993e-08, 'epoch': 9.18}
 92%|█████████▏| 753/820 [5:20:34<27:00, 24.18s/it] 92%|█████████▏| 754/820 [5:20:57<26:19, 23.93s/it]                                                   {'loss': 0.1142, 'grad_norm': 0.4489481234930211, 'learning_rate': 7.949772353159191e-08, 'epoch': 9.2}
 92%|█████████▏| 754/820 [5:20:57<26:19, 23.93s/it] 92%|█████████▏| 755/820 [5:21:22<26:21, 24.33s/it]                                                   {'loss': 0.236, 'grad_norm': 0.5582785556118958, 'learning_rate': 7.711932111862024e-08, 'epoch': 9.21}
 92%|█████████▏| 755/820 [5:21:22<26:21, 24.33s/it] 92%|█████████▏| 756/820 [5:21:44<25:09, 23.59s/it]                                                   {'loss': 0.1863, 'grad_norm': 0.5625704653702137, 'learning_rate': 7.477648212706746e-08, 'epoch': 9.22}
 92%|█████████▏| 756/820 [5:21:44<25:09, 23.59s/it] 92%|█████████▏| 757/820 [5:22:09<25:05, 23.90s/it]                                                   {'loss': 0.1734, 'grad_norm': 0.4861894099896846, 'learning_rate': 7.246924094548968e-08, 'epoch': 9.23}
 92%|█████████▏| 757/820 [5:22:09<25:05, 23.90s/it] 92%|█████████▏| 758/820 [5:22:33<24:53, 24.09s/it]                                                   {'loss': 0.2163, 'grad_norm': 0.5166364379216959, 'learning_rate': 7.019763143993441e-08, 'epoch': 9.24}
 92%|█████████▏| 758/820 [5:22:33<24:53, 24.09s/it] 93%|█████████▎| 759/820 [5:22:55<23:56, 23.55s/it]                                                   {'loss': 0.1049, 'grad_norm': 0.4432479498048521, 'learning_rate': 6.796168695344107e-08, 'epoch': 9.26}
 93%|█████████▎| 759/820 [5:22:55<23:56, 23.55s/it] 93%|█████████▎| 760/820 [5:23:19<23:30, 23.50s/it]                                                   {'loss': 0.2186, 'grad_norm': 0.48081525640581235, 'learning_rate': 6.576144030555259e-08, 'epoch': 9.27}
 93%|█████████▎| 760/820 [5:23:19<23:30, 23.50s/it] 93%|█████████▎| 761/820 [5:23:44<23:28, 23.87s/it]                                                   {'loss': 0.1833, 'grad_norm': 0.4675352743767453, 'learning_rate': 6.359692379183269e-08, 'epoch': 9.28}
 93%|█████████▎| 761/820 [5:23:44<23:28, 23.87s/it] 93%|█████████▎| 762/820 [5:24:08<23:05, 23.89s/it]                                                   {'loss': 0.1668, 'grad_norm': 0.4734809870215713, 'learning_rate': 6.14681691833935e-08, 'epoch': 9.29}
 93%|█████████▎| 762/820 [5:24:08<23:05, 23.89s/it] 93%|█████████▎| 763/820 [5:24:32<22:56, 24.14s/it]                                                   {'loss': 0.1176, 'grad_norm': 0.4668488661581273, 'learning_rate': 5.937520772642813e-08, 'epoch': 9.3}
 93%|█████████▎| 763/820 [5:24:32<22:56, 24.14s/it] 93%|█████████▎| 764/820 [5:24:56<22:17, 23.88s/it]                                                   {'loss': 0.1772, 'grad_norm': 0.44104866760351313, 'learning_rate': 5.731807014175195e-08, 'epoch': 9.32}
 93%|█████████▎| 764/820 [5:24:56<22:17, 23.88s/it] 93%|█████████▎| 765/820 [5:25:21<22:15, 24.28s/it]                                                   {'loss': 0.1815, 'grad_norm': 0.4738809016925146, 'learning_rate': 5.529678662435228e-08, 'epoch': 9.33}
 93%|█████████▎| 765/820 [5:25:21<22:15, 24.28s/it] 93%|█████████▎| 766/820 [5:25:46<22:02, 24.49s/it]                                                   {'loss': 0.158, 'grad_norm': 0.5078133813870526, 'learning_rate': 5.3311386842944125e-08, 'epoch': 9.34}
 93%|█████████▎| 766/820 [5:25:46<22:02, 24.49s/it] 94%|█████████▎| 767/820 [5:26:11<21:53, 24.78s/it]                                                   {'loss': 0.1471, 'grad_norm': 1.0699447654559062, 'learning_rate': 5.1361899939536e-08, 'epoch': 9.35}
 94%|█████████▎| 767/820 [5:26:11<21:53, 24.78s/it] 94%|█████████▎| 768/820 [5:26:34<20:53, 24.10s/it]                                                   {'loss': 0.1678, 'grad_norm': 0.5800143211356814, 'learning_rate': 4.944835452900199e-08, 'epoch': 9.37}
 94%|█████████▎| 768/820 [5:26:34<20:53, 24.10s/it] 94%|█████████▍| 769/820 [5:26:58<20:25, 24.02s/it]                                                   {'loss': 0.1228, 'grad_norm': 1.072834191541682, 'learning_rate': 4.7570778698660394e-08, 'epoch': 9.38}
 94%|█████████▍| 769/820 [5:26:58<20:25, 24.02s/it] 94%|█████████▍| 770/820 [5:27:19<19:19, 23.18s/it]                                                   {'loss': 0.1448, 'grad_norm': 0.5737259251876163, 'learning_rate': 4.5729200007862686e-08, 'epoch': 9.39}
 94%|█████████▍| 770/820 [5:27:19<19:19, 23.18s/it] 94%|█████████▍| 771/820 [5:27:42<19:01, 23.30s/it]                                                   {'loss': 0.2078, 'grad_norm': 0.4331455974622276, 'learning_rate': 4.3923645487589374e-08, 'epoch': 9.4}
 94%|█████████▍| 771/820 [5:27:42<19:01, 23.30s/it] 94%|█████████▍| 772/820 [5:28:06<18:38, 23.31s/it]                                                   {'loss': 0.1667, 'grad_norm': 0.45458449342661567, 'learning_rate': 4.215414164005116e-08, 'epoch': 9.41}
 94%|█████████▍| 772/820 [5:28:06<18:38, 23.31s/it] 94%|█████████▍| 773/820 [5:28:29<18:19, 23.40s/it]                                                   {'loss': 0.1266, 'grad_norm': 0.46415247457937864, 'learning_rate': 4.0420714438302866e-08, 'epoch': 9.43}
 94%|█████████▍| 773/820 [5:28:29<18:19, 23.40s/it] 94%|█████████▍| 774/820 [5:28:53<18:07, 23.65s/it]                                                   {'loss': 0.2029, 'grad_norm': 0.4767661886120432, 'learning_rate': 3.872338932585984e-08, 'epoch': 9.44}
 94%|█████████▍| 774/820 [5:28:53<18:07, 23.65s/it] 95%|█████████▍| 775/820 [5:29:17<17:36, 23.48s/it]                                                   {'loss': 0.1737, 'grad_norm': 0.5405599406722401, 'learning_rate': 3.70621912163252e-08, 'epoch': 9.45}
 95%|█████████▍| 775/820 [5:29:17<17:36, 23.48s/it] 95%|█████████▍| 776/820 [5:29:39<17:02, 23.24s/it]                                                   {'loss': 0.1503, 'grad_norm': 0.4604390394533514, 'learning_rate': 3.543714449302488e-08, 'epoch': 9.46}
 95%|█████████▍| 776/820 [5:29:39<17:02, 23.24s/it] 95%|█████████▍| 777/820 [5:30:05<17:10, 23.96s/it]                                                   {'loss': 0.1595, 'grad_norm': 0.6696558571457495, 'learning_rate': 3.38482730086484e-08, 'epoch': 9.48}
 95%|█████████▍| 777/820 [5:30:05<17:10, 23.96s/it] 95%|█████████▍| 778/820 [5:30:26<16:06, 23.00s/it]                                                   {'loss': 0.1404, 'grad_norm': 0.9569559396416321, 'learning_rate': 3.229560008490007e-08, 'epoch': 9.49}
 95%|█████████▍| 778/820 [5:30:26<16:06, 23.00s/it] 95%|█████████▌| 779/820 [5:30:50<16:00, 23.44s/it]                                                   {'loss': 0.1227, 'grad_norm': 0.41629519268626286, 'learning_rate': 3.077914851215585e-08, 'epoch': 9.5}
 95%|█████████▌| 779/820 [5:30:50<16:00, 23.44s/it] 95%|█████████▌| 780/820 [5:31:12<15:24, 23.12s/it]                                                   {'loss': 0.0887, 'grad_norm': 0.43972841115080985, 'learning_rate': 2.9298940549128962e-08, 'epoch': 9.51}
 95%|█████████▌| 780/820 [5:31:12<15:24, 23.12s/it] 95%|█████████▌| 781/820 [5:31:36<15:09, 23.32s/it]                                                   {'loss': 0.2275, 'grad_norm': 0.5987464112456753, 'learning_rate': 2.7854997922543148e-08, 'epoch': 9.52}
 95%|█████████▌| 781/820 [5:31:36<15:09, 23.32s/it] 95%|█████████▌| 782/820 [5:31:59<14:34, 23.02s/it]                                                   {'loss': 0.1528, 'grad_norm': 0.5039610793669448, 'learning_rate': 2.6447341826814077e-08, 'epoch': 9.54}
 95%|█████████▌| 782/820 [5:31:59<14:34, 23.02s/it] 95%|█████████▌| 783/820 [5:32:22<14:19, 23.22s/it]                                                   {'loss': 0.1178, 'grad_norm': 0.572612319187003, 'learning_rate': 2.507599292373819e-08, 'epoch': 9.55}
 95%|█████████▌| 783/820 [5:32:22<14:19, 23.22s/it] 96%|█████████▌| 784/820 [5:32:47<14:15, 23.75s/it]                                                   {'loss': 0.1601, 'grad_norm': 0.4358615980488841, 'learning_rate': 2.3740971342189056e-08, 'epoch': 9.56}
 96%|█████████▌| 784/820 [5:32:47<14:15, 23.75s/it] 96%|█████████▌| 785/820 [5:33:10<13:38, 23.39s/it]                                                   {'loss': 0.0789, 'grad_norm': 0.47222185274090084, 'learning_rate': 2.244229667782205e-08, 'epoch': 9.57}
 96%|█████████▌| 785/820 [5:33:10<13:38, 23.39s/it] 96%|█████████▌| 786/820 [5:33:31<12:56, 22.83s/it]                                                   {'loss': 0.1207, 'grad_norm': 0.6533607570953089, 'learning_rate': 2.117998799278709e-08, 'epoch': 9.59}
 96%|█████████▌| 786/820 [5:33:31<12:56, 22.83s/it] 96%|█████████▌| 787/820 [5:33:50<11:48, 21.48s/it]                                                   {'loss': 0.1703, 'grad_norm': 0.6636652594928221, 'learning_rate': 1.9954063815448288e-08, 'epoch': 9.6}
 96%|█████████▌| 787/820 [5:33:50<11:48, 21.48s/it] 96%|█████████▌| 788/820 [5:34:12<11:39, 21.86s/it]                                                   {'loss': 0.1326, 'grad_norm': 0.5106646094235637, 'learning_rate': 1.876454214011253e-08, 'epoch': 9.61}
 96%|█████████▌| 788/820 [5:34:12<11:39, 21.86s/it] 96%|█████████▌| 789/820 [5:34:35<11:24, 22.08s/it]                                                   {'loss': 0.143, 'grad_norm': 0.4190996413174803, 'learning_rate': 1.761144042676466e-08, 'epoch': 9.62}
 96%|█████████▌| 789/820 [5:34:35<11:24, 22.08s/it] 96%|█████████▋| 790/820 [5:34:57<11:04, 22.15s/it]                                                   {'loss': 0.1377, 'grad_norm': 0.5674307600140578, 'learning_rate': 1.6494775600812418e-08, 'epoch': 9.63}
 96%|█████████▋| 790/820 [5:34:57<11:04, 22.15s/it] 96%|█████████▋| 791/820 [5:35:23<11:12, 23.18s/it]                                                   {'loss': 0.1694, 'grad_norm': 0.45118222289142634, 'learning_rate': 1.5414564052836366e-08, 'epoch': 9.65}
 96%|█████████▋| 791/820 [5:35:23<11:12, 23.18s/it] 97%|█████████▋| 792/820 [5:35:46<10:51, 23.29s/it]                                                   {'loss': 0.2115, 'grad_norm': 0.5442656481847443, 'learning_rate': 1.4370821638350353e-08, 'epoch': 9.66}
 97%|█████████▋| 792/820 [5:35:46<10:51, 23.29s/it] 97%|█████████▋| 793/820 [5:36:05<09:53, 21.98s/it]                                                   {'loss': 0.2485, 'grad_norm': 0.671811065964543, 'learning_rate': 1.3363563677568914e-08, 'epoch': 9.67}
 97%|█████████▋| 793/820 [5:36:05<09:53, 21.98s/it] 97%|█████████▋| 794/820 [5:36:28<09:38, 22.26s/it]                                                   {'loss': 0.1763, 'grad_norm': 0.5575324305120116, 'learning_rate': 1.2392804955181915e-08, 'epoch': 9.68}
 97%|█████████▋| 794/820 [5:36:28<09:38, 22.26s/it] 97%|█████████▋| 795/820 [5:36:54<09:40, 23.21s/it]                                                   {'loss': 0.1885, 'grad_norm': 0.5143177017811695, 'learning_rate': 1.1458559720137762e-08, 'epoch': 9.7}
 97%|█████████▋| 795/820 [5:36:54<09:40, 23.21s/it] 97%|█████████▋| 796/820 [5:37:17<09:20, 23.36s/it]                                                   {'loss': 0.1566, 'grad_norm': 0.5347107946158824, 'learning_rate': 1.0560841685433864e-08, 'epoch': 9.71}
 97%|█████████▋| 796/820 [5:37:17<09:20, 23.36s/it] 97%|█████████▋| 797/820 [5:37:40<08:49, 23.01s/it]                                                   {'loss': 0.1003, 'grad_norm': 0.4826119092664263, 'learning_rate': 9.699664027915944e-09, 'epoch': 9.72}
 97%|█████████▋| 797/820 [5:37:40<08:49, 23.01s/it] 97%|█████████▋| 798/820 [5:38:04<08:37, 23.52s/it]                                                   {'loss': 0.1311, 'grad_norm': 0.45394233288771857, 'learning_rate': 8.875039388084317e-09, 'epoch': 9.73}
 97%|█████████▋| 798/820 [5:38:04<08:37, 23.52s/it] 97%|█████████▋| 799/820 [5:38:25<07:54, 22.60s/it]                                                   {'loss': 0.1479, 'grad_norm': 0.5425118170686795, 'learning_rate': 8.086979869908195e-09, 'epoch': 9.74}
 97%|█████████▋| 799/820 [5:38:25<07:54, 22.60s/it] 98%|█████████▊| 800/820 [5:38:44<07:12, 21.61s/it]                                                   {'loss': 0.0733, 'grad_norm': 0.5384857757076623, 'learning_rate': 7.335497040648898e-09, 'epoch': 9.76}
 98%|█████████▊| 800/820 [5:38:44<07:12, 21.61s/it] 98%|█████████▊| 801/820 [5:39:08<07:02, 22.26s/it]                                                   {'loss': 0.1235, 'grad_norm': 0.46715176532617836, 'learning_rate': 6.620601930688309e-09, 'epoch': 9.77}
 98%|█████████▊| 801/820 [5:39:08<07:02, 22.26s/it] 98%|█████████▊| 802/820 [5:39:29<06:33, 21.85s/it]                                                   {'loss': 0.2043, 'grad_norm': 0.4912974312029288, 'learning_rate': 5.942305033369289e-09, 'epoch': 9.78}
 98%|█████████▊| 802/820 [5:39:29<06:33, 21.85s/it] 98%|█████████▊| 803/820 [5:39:48<05:57, 21.04s/it]                                                   {'loss': 0.1117, 'grad_norm': 0.6666975493697176, 'learning_rate': 5.300616304838857e-09, 'epoch': 9.79}
 98%|█████████▊| 803/820 [5:39:48<05:57, 21.04s/it] 98%|█████████▊| 804/820 [5:40:09<05:39, 21.21s/it]                                                   {'loss': 0.1447, 'grad_norm': 0.639643511279122, 'learning_rate': 4.695545163905524e-09, 'epoch': 9.8}
 98%|█████████▊| 804/820 [5:40:09<05:39, 21.21s/it] 98%|█████████▊| 805/820 [5:40:33<05:26, 21.79s/it]                                                   {'loss': 0.1689, 'grad_norm': 0.5019701312282433, 'learning_rate': 4.1271004918971845e-09, 'epoch': 9.82}
 98%|█████████▊| 805/820 [5:40:33<05:26, 21.79s/it] 98%|█████████▊| 806/820 [5:40:49<04:42, 20.19s/it]                                                   {'loss': 0.1704, 'grad_norm': 0.5949398146673263, 'learning_rate': 3.5952906325339988e-09, 'epoch': 9.83}
 98%|█████████▊| 806/820 [5:40:49<04:42, 20.19s/it] 98%|█████████▊| 807/820 [5:41:12<04:31, 20.88s/it]                                                   {'loss': 0.1615, 'grad_norm': 0.5461317432076136, 'learning_rate': 3.1001233918043215e-09, 'epoch': 9.84}
 98%|█████████▊| 807/820 [5:41:12<04:31, 20.88s/it] 99%|█████████▊| 808/820 [5:41:35<04:20, 21.68s/it]                                                   {'loss': 0.1534, 'grad_norm': 0.7054895042949292, 'learning_rate': 2.641606037850353e-09, 'epoch': 9.85}
 99%|█████████▊| 808/820 [5:41:35<04:20, 21.68s/it] 99%|█████████▊| 809/820 [5:41:59<04:04, 22.25s/it]                                                   {'loss': 0.2106, 'grad_norm': 0.5064741508111061, 'learning_rate': 2.219745300861276e-09, 'epoch': 9.87}
 99%|█████████▊| 809/820 [5:41:59<04:04, 22.25s/it] 99%|█████████▉| 810/820 [5:42:23<03:50, 23.00s/it]                                                   {'loss': 0.2182, 'grad_norm': 0.5742469844883367, 'learning_rate': 1.834547372975004e-09, 'epoch': 9.88}
 99%|█████████▉| 810/820 [5:42:23<03:50, 23.00s/it] 99%|█████████▉| 811/820 [5:42:49<03:33, 23.71s/it]                                                   {'loss': 0.1693, 'grad_norm': 0.458505062475313, 'learning_rate': 1.4860179081868654e-09, 'epoch': 9.89}
 99%|█████████▉| 811/820 [5:42:49<03:33, 23.71s/it] 99%|█████████▉| 812/820 [5:43:12<03:09, 23.65s/it]                                                   {'loss': 0.1216, 'grad_norm': 0.4432970164013064, 'learning_rate': 1.1741620222671667e-09, 'epoch': 9.9}
 99%|█████████▉| 812/820 [5:43:12<03:09, 23.65s/it] 99%|█████████▉| 813/820 [5:43:37<02:46, 23.83s/it]                                                   {'loss': 0.2028, 'grad_norm': 0.6734920307416499, 'learning_rate': 8.989842926851455e-10, 'epoch': 9.91}
 99%|█████████▉| 813/820 [5:43:37<02:46, 23.83s/it] 99%|█████████▉| 814/820 [5:44:00<02:22, 23.76s/it]                                                   {'loss': 0.1139, 'grad_norm': 0.4661291688481416, 'learning_rate': 6.604887585426323e-10, 'epoch': 9.93}
 99%|█████████▉| 814/820 [5:44:00<02:22, 23.76s/it] 99%|█████████▉| 815/820 [5:44:25<02:00, 24.00s/it]                                                   {'loss': 0.204, 'grad_norm': 0.46291162186456686, 'learning_rate': 4.586789205140996e-10, 'epoch': 9.94}
 99%|█████████▉| 815/820 [5:44:25<02:00, 24.00s/it]100%|█████████▉| 816/820 [5:44:47<01:34, 23.53s/it]                                                   {'loss': 0.0956, 'grad_norm': 0.4400167367276907, 'learning_rate': 2.9355774079614653e-10, 'epoch': 9.95}
100%|█████████▉| 816/820 [5:44:47<01:34, 23.53s/it]100%|█████████▉| 817/820 [5:45:10<01:09, 23.21s/it]                                                   {'loss': 0.1854, 'grad_norm': 0.4885536939436347, 'learning_rate': 1.6512764306336748e-10, 'epoch': 9.96}
100%|█████████▉| 817/820 [5:45:10<01:09, 23.21s/it]100%|█████████▉| 818/820 [5:45:35<00:48, 24.01s/it]                                                   {'loss': 0.1664, 'grad_norm': 0.5576102797145693, 'learning_rate': 7.339051243254735e-11, 'epoch': 9.98}
100%|█████████▉| 818/820 [5:45:35<00:48, 24.01s/it]100%|█████████▉| 819/820 [5:45:57<00:23, 23.38s/it]                                                   {'loss': 0.1415, 'grad_norm': 0.5159307671065865, 'learning_rate': 1.8347695435738666e-11, 'epoch': 9.99}
100%|█████████▉| 819/820 [5:45:57<00:23, 23.38s/it]100%|██████████| 820/820 [5:46:21<00:00, 23.57s/it]                                                   {'loss': 0.1352, 'grad_norm': 0.529572046868468, 'learning_rate': 0.0, 'epoch': 10.0}
100%|██████████| 820/820 [5:46:21<00:00, 23.57s/it][INFO|trainer.py:3942] 2025-06-02 12:42:21,710 >> Saving model checkpoint to /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820
[INFO|configuration_utils.py:423] 2025-06-02 12:42:21,713 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/config.json
[INFO|configuration_utils.py:909] 2025-06-02 12:42:21,713 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/generation_config.json
[INFO|modeling_utils.py:3048] 2025-06-02 12:43:24,843 >> The model is bigger than the maximum size per checkpoint (5GB) and is going to be split in 14 checkpoint shards. You can find where each parameters has been saved in the index located at /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/model.safetensors.index.json.
[INFO|tokenization_utils_base.py:2500] 2025-06-02 12:43:24,847 >> tokenizer config file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/tokenizer_config.json
[INFO|tokenization_utils_base.py:2509] 2025-06-02 12:43:24,848 >> Special tokens file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/special_tokens_map.json
[2025-06-02 12:43:25,023] [INFO] [logging.py:128:log_dist] [Rank 0] [Torch] Checkpoint global_step820 is about to be saved!
[2025-06-02 12:43:25,036] [INFO] [logging.py:128:log_dist] [Rank 0] Saving model checkpoint: /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/global_step820/zero_pp_rank_0_mp_rank_00_model_states.pt
[2025-06-02 12:43:25,036] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/global_step820/zero_pp_rank_0_mp_rank_00_model_states.pt...
[2025-06-02 12:43:25,061] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/global_step820/zero_pp_rank_0_mp_rank_00_model_states.pt.
[2025-06-02 12:43:25,076] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/global_step820/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt...
[2025-06-02 12:44:55,717] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/global_step820/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt.
[2025-06-02 12:44:55,719] [INFO] [engine.py:3572:_save_zero_checkpoint] zero checkpoint saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/global_step820/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt
[2025-06-02 12:44:58,853] [INFO] [torch_checkpoint_engine.py:33:commit] [Torch] Checkpoint global_step820 is ready now!
[INFO|trainer.py:3942] 2025-06-02 12:45:35,174 >> Saving model checkpoint to /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820
[INFO|configuration_utils.py:423] 2025-06-02 12:45:35,177 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/config.json
[INFO|configuration_utils.py:909] 2025-06-02 12:45:35,178 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/generation_config.json
[INFO|modeling_utils.py:3048] 2025-06-02 12:51:13,823 >> The model is bigger than the maximum size per checkpoint (5GB) and is going to be split in 14 checkpoint shards. You can find where each parameters has been saved in the index located at /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/model.safetensors.index.json.
[INFO|tokenization_utils_base.py:2500] 2025-06-02 12:51:13,825 >> tokenizer config file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/tokenizer_config.json
[INFO|tokenization_utils_base.py:2509] 2025-06-02 12:51:13,825 >> Special tokens file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/special_tokens_map.json
[2025-06-02 12:51:14,086] [INFO] [logging.py:128:log_dist] [Rank 0] [Torch] Checkpoint global_step820 is about to be saved!
[2025-06-02 12:51:19,279] [INFO] [logging.py:128:log_dist] [Rank 0] Saving model checkpoint: /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/global_step820/zero_pp_rank_0_mp_rank_00_model_states.pt
[2025-06-02 12:51:19,280] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/global_step820/zero_pp_rank_0_mp_rank_00_model_states.pt...
[2025-06-02 12:51:19,322] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/global_step820/zero_pp_rank_0_mp_rank_00_model_states.pt.
[2025-06-02 12:51:19,327] [INFO] [torch_checkpoint_engine.py:21:save] [Torch] Saving /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/global_step820/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt...
[2025-06-02 12:53:06,608] [INFO] [torch_checkpoint_engine.py:23:save] [Torch] Saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/global_step820/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt.
[2025-06-02 12:53:06,609] [INFO] [engine.py:3572:_save_zero_checkpoint] zero checkpoint saved /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/checkpoint-820/global_step820/bf16_zero_pp_rank_0_mp_rank_00_optim_states.pt
[2025-06-02 12:53:06,645] [INFO] [torch_checkpoint_engine.py:33:commit] [Torch] Checkpoint global_step820 is ready now!
[INFO|trainer.py:2657] 2025-06-02 12:53:06,662 >> 

Training completed. Do not forget to share your model on huggingface.co/models =)


                                                   {'train_runtime': 21447.4959, 'train_samples_per_second': 0.611, 'train_steps_per_second': 0.038, 'train_loss': 0.3410043810744111, 'epoch': 10.0}
100%|██████████| 820/820 [5:57:25<00:00, 23.57s/it]100%|██████████| 820/820 [5:57:25<00:00, 26.15s/it]
[INFO|trainer.py:3942] 2025-06-02 12:53:23,652 >> Saving model checkpoint to /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct
[INFO|configuration_utils.py:423] 2025-06-02 12:53:23,655 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/config.json
[INFO|configuration_utils.py:909] 2025-06-02 12:53:23,656 >> Configuration saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/generation_config.json
pdfc-aig-00000H:2664387:2664387 [1] NCCL INFO comm 0x7eeed72a9790 rank 1 nranks 8 cudaDev 1 busId 300000 - Destroy COMPLETE
pdfc-aig-00000H:2664390:2664390 [4] NCCL INFO comm 0x7ebda32a7760 rank 4 nranks 8 cudaDev 4 busId 600000 - Destroy COMPLETE
pdfc-aig-00000H:2664391:2664391 [5] NCCL INFO comm 0x7f37cb2a9990 rank 5 nranks 8 cudaDev 5 busId 700000 - Destroy COMPLETE
pdfc-aig-00000H:2664393:2664393 [7] NCCL INFO comm 0x7ec9372a90f0 rank 7 nranks 8 cudaDev 7 busId 900000 - Destroy COMPLETE
pdfc-aig-00000H:2664388:2664388 [2] NCCL INFO comm 0x7eed132a8a20 rank 2 nranks 8 cudaDev 2 busId 400000 - Destroy COMPLETE
pdfc-aig-00000H:2664389:2664389 [3] NCCL INFO comm 0x7f546b2a9f40 rank 3 nranks 8 cudaDev 3 busId 500000 - Destroy COMPLETE
pdfc-aig-00000H:2664392:2664392 [6] NCCL INFO comm 0x7f912f2a9950 rank 6 nranks 8 cudaDev 6 busId 800000 - Destroy COMPLETE
pdfc-aig-00000H:2664387:2664387 [1] NCCL INFO comm 0x440867a0 rank 1 nranks 8 cudaDev 1 busId 300000 - Destroy COMPLETE
pdfc-aig-00000H:2664390:2664390 [4] NCCL INFO comm 0x4635db50 rank 4 nranks 8 cudaDev 4 busId 600000 - Destroy COMPLETE
pdfc-aig-00000H:2664391:2664391 [5] NCCL INFO comm 0x682daff0 rank 5 nranks 8 cudaDev 5 busId 700000 - Destroy COMPLETE
pdfc-aig-00000H:2664388:2664388 [2] NCCL INFO comm 0x348d8fc0 rank 2 nranks 8 cudaDev 2 busId 400000 - Destroy COMPLETE
pdfc-aig-00000H:2664389:2664389 [3] NCCL INFO comm 0x3ef1d500 rank 3 nranks 8 cudaDev 3 busId 500000 - Destroy COMPLETE
pdfc-aig-00000H:2664393:2664393 [7] NCCL INFO comm 0x5b7e5f00 rank 7 nranks 8 cudaDev 7 busId 900000 - Destroy COMPLETE
pdfc-aig-00000H:2664392:2664392 [6] NCCL INFO comm 0x40898840 rank 6 nranks 8 cudaDev 6 busId 800000 - Destroy COMPLETE
[INFO|modeling_utils.py:3048] 2025-06-02 12:54:10,903 >> The model is bigger than the maximum size per checkpoint (5GB) and is going to be split in 14 checkpoint shards. You can find where each parameters has been saved in the index located at /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/model.safetensors.index.json.
[INFO|tokenization_utils_base.py:2500] 2025-06-02 12:54:10,904 >> tokenizer config file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/tokenizer_config.json
[INFO|tokenization_utils_base.py:2509] 2025-06-02 12:54:10,905 >> Special tokens file saved in /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/special_tokens_map.json
***** train metrics *****
  epoch                    =       10.0
  total_flos               =   903507GF
  train_loss               =      0.341
  train_runtime            = 5:57:27.49
  train_samples_per_second =      0.611
  train_steps_per_second   =      0.038
Figure saved at: /mnt/m2m_nobackup/machaita/saves/limo_sand_math_500_diffdesc/Qwen2.5-32B-Instruct/training_loss.png
[WARNING|2025-06-02 12:54:12] llamafactory.extras.ploting:148 >> No metric eval_loss to plot.
[WARNING|2025-06-02 12:54:12] llamafactory.extras.ploting:148 >> No metric eval_accuracy to plot.
[INFO|modelcard.py:449] 2025-06-02 12:54:12,370 >> Dropping the following result as it does not have all the necessary fields:
{'task': {'name': 'Causal Language Modeling', 'type': 'text-generation'}}
pdfc-aig-00000H:2664386:2664386 [0] NCCL INFO comm 0x7ef3172a9970 rank 0 nranks 8 cudaDev 0 busId 200000 - Destroy COMPLETE
pdfc-aig-00000H:2664386:2664386 [0] NCCL INFO comm 0x2e40c290 rank 0 nranks 8 cudaDev 0 busId 200000 - Destroy COMPLETE
[1;34mwandb[0m: 
[1;34mwandb[0m: 🚀 View run [33mlimo_sand_math_500_diffdesc[0m at: [34mhttps://wandb.ai/chaitanyamanem/llamafactory/runs/5e82kfzv[0m
[1;34mwandb[0m: Find logs at: [1;35mwandb/run-20250602_065539-5e82kfzv/logs[0m
./slurm_launcher.sh: line 76: G_FILE: command not found
####### launching the evaluation ###########
srun: error: ---------------------------------------------------------------
srun: error: Submission Filter & QoS
srun: error: ---------------------------------------------------------------
srun: error: --> runtime limit is required
srun: error: --> please specify with -t, e.g. -t 04:30:00 (4.5 hours)
srun: error: Unable to allocate resources: Job violates accounting/QOS policy (job submit limit, user's size and/or time limits)
