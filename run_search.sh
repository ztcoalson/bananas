#!/bin/bash
#SBATCH -J bo
#SBATCH -A sail
#SBATCH -p sail
#SBATCH --mem=50G
#SBATCH --gres=gpu:1
#SBATCH -t 7-00:00:00

python run_experiments_sequential.py \
    --trials 1 \
    --search_space nasbench_201_cifar10 \
    --algo_params bananas \
    --save_dir results/clean2
