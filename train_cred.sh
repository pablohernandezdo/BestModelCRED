#!/bin/bash

echo "Training model CRED, lr = 1e-3, epochs = 15, batch_size = 256"
python train.py \
        --lr 1e-3 \
        --epochs 15 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 1 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_1e3_256 \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/Train_constant.npy" \
        --val_path "Data/TrainReady/Val_constant.npy"

echo "Training model CRED, lr = 1e-4, epochs = 15, batch_size = 256"
python train.py \
        --lr 1e-4 \
        --epochs 15 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 1 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_1e4_256 \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/Train_constant.npy" \
        --val_path "Data/TrainReady/Val_constant.npy"

echo "Training model CRED, lr = 1e-5, epochs = 15, batch_size = 256"
python train.py \
        --lr 1e-5 \
        --epochs 15 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 1 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_1e5_256 \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/Train_constant.npy" \
        --val_path "Data/TrainReady/Val_constant.npy"

echo "Training model CRED, lr = 1e-6, epochs = 15, batch_size = 256"
python train.py \
        --lr 1e-6 \
        --epochs 15 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 1 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_1e6_256 \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/Train_constant.npy" \
        --val_path "Data/TrainReady/Val_constant.npy"

