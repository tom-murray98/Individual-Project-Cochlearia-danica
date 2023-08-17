#!/bin/bash
#SBATCH --job-name=Danica_mmemq_1476_Revio
#SBATCH --partition=mmemq
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=40
#SBATCH --mem=755g
#SBATCH --time=168:00:00
#SBATCH --output=./%x.out
#SBATCH --error=./%x.err

source $HOME/.bash_profile

conda activate hifiasm

hifiasm -o Danica_hifi_c4_dups60.asm -t 40 -D 5 -l 0 --n-hap 6 --purge-max 60 /gpfs01/home/mbxtm2/Danica_raw_revio/out.fastq.gz

conda deactivate
