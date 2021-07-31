#!/bin/bash

echo "Training model CRED, lr = 1e-2, epochs = 30, batch_size = 256"
python train_fsc.py \
        --lr 1e-2 \
        --device 3 \
        --epochs 30 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 30 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_1e2_256_fsc \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/train_zeros.npy" \
        --val_path "Data/TrainReady/val_zeros.npy" &

P1=$!

echo "Training model CRED, lr = 5e-3, epochs = 30, batch_size = 256"
python train_fsc.py \
        --lr 5e-3 \
        --device 3 \
        --epochs 30 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 30 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_5e3_256_fsc \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/train_zeros.npy" \
        --val_path "Data/TrainReady/val_zeros.npy" &

P2=$!

echo "Training model CRED, lr = 1e-3, epochs = 30, batch_size = 256"
python train_fsc.py \
        --lr 1e-3 \
        --device 3 \
        --epochs 30 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 30 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_1e3_256_fsc \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/train_zeros.npy" \
        --val_path "Data/TrainReady/val_zeros.npy" 

P3=$!
wait $P1 $P2 $P3

echo "Training model CRED, lr = 5e-4, epochs = 30, batch_size = 256"
python train_fsc.py \
        --lr 5e-4 \
        --device 3 \
        --epochs 30 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 30 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_5e4_256_fsc \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/train_zeros.npy" \
        --val_path "Data/TrainReady/val_zeros.npy" &

P1=$!

echo "Training model CRED, lr = 1e-4, epochs = 30, batch_size = 256"
python train_fsc.py \
        --lr 1e-4 \
        --device 3 \
        --epochs 30 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 30 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_1e4_256_fsc \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/train_zeros.npy" \
        --val_path "Data/TrainReady/val_zeros.npy" &

P2=$!

echo "Training model CRED, lr = 5e-5, epochs = 30, batch_size = 256"
python train_fsc.py \
        --lr 5e-5 \
        --device 3 \
        --epochs 30 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 30 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_5e5_256_fsc \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/train_zeros.npy" \
        --val_path "Data/TrainReady/val_zeros.npy" 

P3=$!
wait $P1 $P2 $P3

echo "Training model CRED, lr = 1e-5, epochs = 30, batch_size = 256"
python train_fsc.py \
        --lr 1e-5 \
        --device 3 \
        --epochs 30 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 30 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_1e5_256_fsc \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/train_zeros.npy" \
        --val_path "Data/TrainReady/val_zeros.npy" &

P1=$!

echo "Training model CRED, lr = 5e-6, epochs = 30, batch_size = 256"
python train_fsc.py \
        --lr 5e-6 \
        --device 3 \
        --epochs 30 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 30 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_5e6_256_fsc \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/train_zeros.npy" \
        --val_path "Data/TrainReady/val_zeros.npy" &

P2=$!

echo "Training model CRED, lr = 1e-6, epochs = 30, batch_size = 256"
python train_fsc.py \
        --lr 1e-6 \
        --device 3 \
        --epochs 30 \
        --batch_size 256 \
        --earlystop 0 \
        --eval_iter 30 \
        --model_folder 'models'  \
        --classifier CRED \
        --model_name CRED_1e6_256_fsc \
        --dataset_name "STEAD-ZEROS" \
        --train_path "Data/TrainReady/train_zeros.npy" \
        --val_path "Data/TrainReady/val_zeros.npy"

P3=$!
wait $P1 $P2 $P3