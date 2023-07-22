#!/bin/bash
#SBATCH --job-name=samtools_cov
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --time=48:00:00
#SBATCH --output=/gpfs01/home/mbxtm2/ngs_pipe/OandE/%x.out
#SBATCH --error=/gpfs01/home/mbxtm2/ngs_pipe/OandE/%x.err

source $HOME/.bash_profile

conda activate /gpfs01/home/mbxtm2/miniconda3/envs/ngs_env

# Generates coverage statistics for bam alignment files of reads vs Psuedo danica genome 

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DAR_1/DAR_1.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DAR_1/DAR_1_samtools_data.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DAR_1/DAR_1.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DAR_1/DAR_1_samtoolsHist.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/BRE_3/BRE_3.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/BRE_3/BRE_3_samtools_data.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/BRE_3/BRE_3.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/BRE_3/BRE_3_samtoolsHist.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DIE_3/DIE_3.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DIE_3/DIE_3_samtools_data.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DIE_3/DIE_3.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DIE_3/DIE_3_samtoolsHist.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SVA_1/SVA_1.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SVA_1/SVA_1_samtools_data.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SVA_1/SVA_1.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SVA_1/SVA_1_samtoolsHist.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/BRE_3/BRE_3.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/BRE_3/BRE_3_samtools_data.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/BRE_3/BRE_3.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/BRE_3/BRE_3_samtoolsHist.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/JON_001/JON_001.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/JON_001/JON_001_samtools_data.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/JON_001/JON_001.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/JON_001/JON_001_samtoolsHist.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/LWA_10/LWA_10.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/LWA_10/LWA_10_samtools_data.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/LWA_10/LWA_10.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/LWA_10/LWA_10_samtoolsHist.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/RYE_1/RYE_1.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/RYE_1/RYE_1_samtools_data.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/RYE_1/RYE_1.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/RYE_1/RYE_1_samtoolsHist.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/CUM_1/CUM_1.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/CUM_1/CUM_1_samtools_data.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/CUM_1/CUM_1.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/CUM_1/CUM_1_samtoolsHist.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FOR_1/FOR_1.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FOR_1/FOR_1_samtools_data.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FOR_1/FOR_1.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FOR_1/FOR_1_samtoolsHist.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SCO_1/SCO_1.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SCO_1/SCO_1_samtools_data.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SCO_1/SCO_1.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SCO_1/SCO_1_samtoolsHist.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ERS_1/ERS_1.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ERS_1/ERS_1_samtools_data.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ERS_1/ERS_1.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ERS_1/ERS_1_samtoolsHist.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FRE_013/FRE_013.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FRE_013/FRE_013_samtools_data.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FRE_013/FRE_013.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FRE_013/FRE_013_samtoolsHist.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/OSW/OSW.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/OSW/OSW_samtools_data.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/OSW/OSW.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/OSW/OSW_samtoolsHist.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/TAT_5/TAT_5.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/TAT_5/TAT_5_samtools_data.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/TAT_5/TAT_5.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/TAT_5/TAT_5_samtoolsHist.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ULR_4/ULR_4.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ULR_4/ULR_4_samtools_data.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ULR_4/ULR_4.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ULR_4/ULR_4_samtoolsHist.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/OSW/OSW.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/OSW/OSW_samtools_data.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/OSW/OSW.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/OSW/OSW_samtoolsHist.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FDE_3/FDE_3.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FDE_3/FDE_3_samtools_data.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FDE_3/FDE_3.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FDE_3/FDE_3_samtoolsHist.txt


# FOR MASKED OUTPUTS

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DAR_1/DAR_1_masked.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DAR_1/DAR_1_samtools_data_masked.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DAR_1/DAR_1_masked.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DAR_1/DAR_1_samtoolsHist_masked.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DIE_3/DIE_3_masked.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DIE_3/DIE_3_samtools_data_masked.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DIE_3/DIE_3_masked.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/DIE_3/DIE_3_samtoolsHist_masked.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SVA_1/SVA_1_masked.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SVA_1/SVA_1_samtools_data_masked.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SVA_1/SVA_1_masked.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SVA_1/SVA_1_samtoolsHist_masked.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/NEN_003/NEN_003_masked.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/NEN_003/NEN_003_samtools_data_masked.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/NEN_003/NEN_003_masked.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/NEN_003/NEN_003_samtoolsHist_masked.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/BRE_3/BRE_3_masked.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/BRE_3/BRE_3_samtools_data_masked.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/BRE_3/BRE_3_masked.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/BRE_3/BRE_3_samtoolsHist_masked.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/JON_001/JON_001_masked.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/JON_001/JON_001_samtools_data_masked.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/JON_001/JON_001_masked.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/JON_001/JON_001_samtoolsHist_masked.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/LWA_10/LWA_10_masked.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/LWA_10/LWA_10_samtools_data_masked.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/LWA_10/LWA_10_masked.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/LWA_10/LWA_10_samtoolsHist_masked.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/RYE_1/RYE_1_masked.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/RYE_1/RYE_1_samtools_data_masked.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/RYE_1/RYE_1_masked.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/RYE_1/RYE_1_samtoolsHist_masked.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/CUM_1/CUM_1_masked.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/CUM_1/CUM_1_samtools_data_masked.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/CUM_1/CUM_1_masked.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/CUM_1/CUM_1_samtoolsHist_masked.tx

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FOR_1/FOR_1_masked.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FOR_1/FOR_1_samtools_data_masked.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FOR_1/FOR_1_masked.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FOR_1/FOR_1_samtoolsHist_masked.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SCO_1/SCO_1_masked.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SCO_1/SCO_1_samtools_data_masked.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SCO_1/SCO_1_masked.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/SCO_1/SCO_1_samtoolsHist_masked.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ERS_1/ERS_1_masked.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ERS_1/ERS_1_samtools_data_masked.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ERS_1/ERS_1_masked.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ERS_1/ERS_1_samtoolsHist_masked.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FRE_013/FRE_013_masked.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FRE_013/FRE_013_samtools_data_masked.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FRE_013/FRE_013_masked.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FRE_013/FRE_013_samtoolsHist_masked.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/OSW/OSW_masked.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/OSW/OSW_samtools_data_masked.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/OSW/OSW_masked.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/OSW/OSW_samtoolsHist_masked.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/TAT_5/TAT_5_masked.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/TAT_5/TAT_5_samtools_data_masked.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/TAT_5/TAT_5_masked.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/TAT_5/TAT_5_samtoolsHist_masked.txt

samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ULR_4/ULR_4_masked.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ULR_4/ULR_4_samtools_data_masked.txt
samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ULR_4/ULR_4_masked.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/ULR_4/ULR_4_samtoolsHist_masked.txt

#samtools coverage /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FDE_3/FDE_3_masked.srtd.bam -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FDE_3/FDE_3_samtools_data_masked.txt
#samtools coverage -A -w 70 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FDE_3/FDE_3_masked.srtd.bam  -o /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/FDE_3/FDE_3_samtoolsHist_masked.txt



# greps out top six main chromosomes for both references

grep -e 'Cexcelsa_scaf_1 ' -e 'Cexcelsa_scaf_2 ' -e 'Cexcelsa_scaf_3 ' -e 'Cexcelsa_scaf_4 ' -e 'Cexcelsa_scaf_5 ' -e 'Cexcelsa_scaf_6 ' \
-e 'Scaffold_144;HRSCAF=223 '-e 'Scaffold_237;HRSCAF=347 ' -e 'Scaffold_267;HRSCAF=383 ' -e 'Scaffold_304;HRSCAF=428 ' -e 'Scaffold_13879;HRSCAF=3820 ' \
-e 'Scaffold_13880;HRSCAF=14631 '  -A 12 /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/BRE_3/BRE_3_samtoolsHist.txt > /gpfs01/home/mbxtm2/ngs_pipe/mapped_ind/BRE_3/BRE_3_samtools_mainchrom_hist.txt















conda deactivate


