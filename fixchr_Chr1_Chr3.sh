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

# In order to filter .paf alignment files so only the homologous chromosomes were represented, the grep grep -e command was used to extract both homologs twice on the same file
# e.g 1.)  grep -e Cexcelsa_scaf_1[[:space:]]  excelsa-danica_eqx.paf > excelsa-danica_eqx_Chr1.paf
# 2.) grep -e ptg000026[[:space:]] excelsa-danica_eqx_Chr1.paf > excelsa-danica_eqx_Chr1_ptg000026.paf

mkdir fixchr_Chr1_exc_dan
cd fixchr_Chr1_exc_dan

# Fixchr for excelsa-danica alignment file between Chr1 homologs
fixchr -c /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/excelsa-danica_eqx_Chr1_ptg000026.paf -F P -r /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/C_excelsa_V5.fa -q /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/Danica_hifi_c4_dups60.asm.bp.p_ctg.fa
cd .. 

mkdir fixchr_Chr1_dan_groen
cd fixchr_Chr1_dan_groen

# Fixchr for danica-groenlandica alignment file between Chr1 homologs
fixchr -c /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/danica-groenlandica_eqx_ptg000026l_Scaf_347.paf -F P -r /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/Danica_hifi_c4_dups60.asm.bp.p_ctg.fa -q /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/cochlearia_groenlandica_18Oct2019_dfYNf.fa
cd ..

mkdir fixchr_Chr3_exc_dan
cd fixchr_Chr1_exc_dan

# Fixchr for excelsa-danica alignment file between Chr3 homologs
fixchr -c /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/excelsa-danica_eqx_Chr3_ptg000017l.paf -F P -r /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/C_excelsa_V5.fa -q /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/Danica_hifi_c4_dups60.asm.bp.p_ctg.fa
cd ..

mkdir fixchr_Chr3_dan_groen
cd fixchr_Chr3_dan_groen

# Fixchr for danica-groenlandica alignment file between Chr3 homologs
fixchr -c /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/danica-groenlandica_eqx_ptg000017l_Scaf_114.paf -F P -r /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/Danica_hifi_c4_dups60.asm.bp.p_ctg.fa -q /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/cochlearia_groenlandica_18Oct2019_dfYNf.fa
