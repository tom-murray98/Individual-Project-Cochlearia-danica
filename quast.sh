#!/bin/bash
#SBATCH --job-name=quast
#SBATCH --partition=mmemq
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=40
#SBATCH --mem=755g
#SBATCH --time=24:00:00
#SBATCH --output=./%x.out
#SBATCH --error=./%x.err

source $HOME/.bash_profile

mamba activate quast

python /gpfs01/home/mbxtm2/mambaforge/envs/quast/bin/quast -r /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/C_excelsa_V5.fa /gpfs01/home/mbxtm2/Danica_raw_revio/Hifiasm_mmemq/Danica_hifi_c4_dups60.asm.bp.p_ctg.fa -o quast_out

mamba deactivate 
