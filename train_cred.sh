#!/bin/bash

echo "Training model CRED, lr = 1e-2, epochs = 20, batch_size = 256"
python train.py \
        --lr 1e-2 \
        --epochs 20 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 1 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_1e2_256 \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/Train_constant.npy" \
        --val_path "Data/TrainReady/Val_constant.npy" &

P1=$!

echo "Training model CRED, lr = 5e-3, epochs = 20, batch_size = 256"
python train.py \
        --lr 5e-3 \
        --epochs 20 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 1 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_5e3_256 \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/Train_constant.npy" \
        --val_path "Data/TrainReady/Val_constant.npy" &

P2=$!

echo "Training model CRED, lr = 1e-3, epochs = 20, batch_size = 256"
python train.py \
        --lr 1e-3 \
        --epochs 20 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 1 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_1e3_256 \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/Train_constant.npy" \
        --val_path "Data/TrainReady/Val_constant.npy" &

P3=$!

echo "Training model CRED, lr = 5e-4, epochs = 20, batch_size = 256"
python train.py \
        --lr 5e-4 \
        --epochs 20 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 1 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_5e4_256 \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/Train_constant.npy" \
        --val_path "Data/TrainReady/Val_constant.npy" &

P4=$!

echo "Training model CRED, lr = 1e-4, epochs = 20, batch_size = 256"
python train.py \
        --lr 1e-4 \
        --epochs 20 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 1 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_1e4_256 \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/Train_constant.npy" \
        --val_path "Data/TrainReady/Val_constant.npy" &

P5=$!

echo "Training model CRED, lr = 5e-5, epochs = 20, batch_size = 256"
python train.py \
        --lr 5e-5 \
        --epochs 20 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 1 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_5e5_256 \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/Train_constant.npy" \
        --val_path "Data/TrainReady/Val_constant.npy" &

P6=$!

echo "Training model CRED, lr = 1e-5, epochs = 20, batch_size = 256"
python train.py \
        --lr 1e-5 \
        --epochs 20 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 1 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_1e5_256 \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/Train_constant.npy" \
        --val_path "Data/TrainReady/Val_constant.npy" &

P7=$!

echo "Training model CRED, lr = 5e-6, epochs = 20, batch_size = 256"
python train.py \
        --lr 5e-6 \
        --epochs 20 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 1 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_5e6_256 \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/Train_constant.npy" \
        --val_path "Data/TrainReady/Val_constant.npy" &

P8=$!

echo "Training model CRED, lr = 1e-6, epochs = 20, batch_size = 256"
python train.py \
        --lr 1e-6 \
        --epochs 20 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 1 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_1e6_256 \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/Train_constant.npy" \
        --val_path "Data/TrainReady/Val_constant.npy"

P9=$!

wait $P1 $P2 $P3 $P4 $P5 $P6 $P7 $P8 $P9