#!/bin/bash
#SBATCH -J nsga
#SBATCH -A eecs
#SBATCH -p dgx2
#SBATCH --mem=50G
#SBATCH --gres=gpu:1
#SBATCH -t 7-00:00:00

python run_experiments_sequential.py \
    --trials 1 \
    --search_space darts \
    --algo_params bananas \
