#!/bin/bash
#SBATCH --job-name=samtools_flagstat
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --time=48:00:00
#SBATCH --output=/gpfs01/home/mbxtm2/ngs_pipe/OandE/%x.out
#SBATCH --error=/gpfs01/home/mbxtm2/ngs_pipe/OandE/%x.err

source $HOME/.bash_profile

conda activate ngs_env

# Generates flagstat coverage statistics for BAM fils
 
samtools flagstat /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/BRE_3/BRE_3_masked.srtd.bam > /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/BRE_3/BRE_3_masked.flagstat.txt 
samtools flagstat /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/CUM_1/CUM_1_masked.srtd.bam > /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/CUM_1/CUM_1_masked.flagstat.txt
samtools flagstat /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DAR_1/DAR_1_masked.srtd.bam > /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DAR_1/DAR_1_masked.flagstat.txt
samtools flagstat /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DIE_3/DIE_3_masked.srtd.bam > /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DIE_3/DIE_3_masked.flagstat.txt
samtools flagstat /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/CUM_1/CUM_1_masked.srtd.bam > /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/CUM_1/CUM_1_masked.flagstat.txt
samtools flagstat /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ERS_1/ERS_1_masked.srtd.bam > /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ERS_1/ERS_1_masked.flagstat.txt
samtools flagstat /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FOR_1/FOR_1_masked.srtd.bam > /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FOR_1/FOR_1_masked.flagstat.txt
samtools flagstat /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FRE_013/FRE_013_masked.srtd.bam > /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FRE_013/FRE_013_masked.flagstat.txt
samtools flagstat /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/JON_001/JON_001_masked.srtd.bam > /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/JON_001/JON_001_masked.flagstat.txt
samtools flagstat /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/LWA_10/LWA_10_masked.srtd.bam > /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/LWA_10/LWA_10_masked.flagstat.txt
samtools flagstat /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/NEN_003/NEN_003_masked.srtd.bam > /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/NEN_003/NEN_003_masked.flagstat.txt
samtools flagstat /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/RYE_1/RYE_1_masked.srtd.bam > /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/RYE_1/RYE_1_masked.flagstat.txt
samtools flagstat /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SCO_1/SCO_1_masked.srtd.bam > /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SCO_1/SCO_1_masked.flagstat.txt
samtools flagstat /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SVA_1/SVA_1_masked.srtd.bam > /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SVA_1/SVA_1_masked.flagstat.txt
samtools flagstat /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/TAT_5/TAT_5_masked.srtd.bam > /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/TAT_5/TAT_5_masked.flagstat.txt
samtools flagstat /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ULR_4/ULR_4_masked.srtd.bam > /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ULR_4/ULR_4_masked.flagstat.txt


