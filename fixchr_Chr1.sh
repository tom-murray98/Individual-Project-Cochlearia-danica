#!/bin/bash
#SBATCH --job-name=fixchr_Chr1_exc_devq
#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=40
#SBATCH --mem=179g
#SBATCH --time=1:00:00
#SBATCH --output=./%x.out
#SBATCH --error=./%x.err

source $HOME/.bash_profile
mamba activate fixchr

fixchr -c /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/excelsa-danica_eqx_ptg000026l_Scaf_347.paf -F P -r /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/C_excelsa_V5.fa -q /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/Danica_hifi_c4_dups60.asm.bp.p_ctg.fa

