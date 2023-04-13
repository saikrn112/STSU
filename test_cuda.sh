#!/bin/bash

#SBATCH --mail-user=spinnamaraju@wpi.edu
#SBATCH --mail-type=ALL

#SBATCH -J test_cuda
#SBATCH --output=slurm_outputs/cuda_test_%j.out
#SBATCH --error=slurm_outputs/cuda_test_%j.out

#SBATCH -N 1
#SBATCH -n 4
#SBATCH --mem=64G
#SBATCH --gres=gpu:1
#SBATCH -C A100
#SBATCH -p short
#SBATCH -t 9:00:00

python3 validator_tr.py
