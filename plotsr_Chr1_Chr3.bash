#!/bin/bash
#SBATCH --job-name=plotsr_Chr1_Chr3
#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=40
#SBATCH --mem=179g
#SBATCH --time=1:00:00
#SBATCH --output=./%x.out
#SBATCH --error=./%x.err

source $HOME/.bash_profile
mamba activate plotsr

# Three way syneny plot with C. excelsa, C. danica and C. groenlandica for Chr1 and Chr3

plotsr --sr /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/syri_Chr1_exc_dan/syri.out --sr /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/syri_Chr1_dan_groen/syri.out --genomes /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/plotsr/genomes.txt -o /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/plotsr/plotsr_Chr1_ALL.pdf

plotsr --sr /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/syri_Chr3_exc_dan/syri.out --sr /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/syri_Chr3_dan_groen/syri.out --genomes /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/plotsr/genomes.txt -o /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/plotsr/plotsr_Chr3_ALL.pdf
