PYTHONPATH=. torchrun examples/pytorch/stable_diffusion/finetune_stable_diffusion.py \
    --model 'damo/multi-modal_efficient-diffusion-tuning-lora' \
    --work_dir './tmp/stable_diffusion_tuning' \
    --namespace 'damo' \
    --dataset_name 'buptwq/lora-stable-diffusion-finetune-dog' \
    --max_epochs 150 \
    --save_ckpt_strategy 'by_epoch' \
    --logging_interval 100 \
    --train.dataloader.workers_per_gpu 0 \
    --evaluation.dataloader.workers_per_gpu 0 \
    --train.optimizer.lr 1e-4