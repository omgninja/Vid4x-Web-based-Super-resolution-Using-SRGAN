#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=0 python srganCore.py \
    --output_dir ./_processing/_SRframes/ \
    --summary_dir ./_srganLog/ \
    --mode inference \
    --is_training False \
    --task SRGAN \
    --input_dir_LR ./_processing/_extractedFrames/ \
    --num_resblock 16 \
    --perceptual_mode VGG54 \
    --pre_trained_model True \
    --checkpoint ./SRGAN_pre-trained/model-200000
sleep 1m