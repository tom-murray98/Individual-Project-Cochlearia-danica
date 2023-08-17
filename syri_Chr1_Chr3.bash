#!/bin/bash
#SBATCH --job-name=syri_Chr1_Chr3_devq
#SBATCH --partition=devq
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=40
#SBATCH --mem=179g
#SBATCH --time=1:00:00
#SBATCH --output=./%x.out
#SBATCH --error=./%x.err

source $HOME/.bash_profile
mamba activate syri

mkdir syri_Chr1_exc_dan
cd syri_Chr1_exc_dan
syri --nosnp -c /gpfs01/home/mbxtm2/Ind_Project/fixchr/fixchr_Chr1_exc_dan/homologous_strand_corrected_alignments_no_header.txt -d /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/mummer_files/excelsa-danica.delta \
-r  /gpfs01/home/mbxtm2/Ind_Project/fixchr/fixchr_Chr1_exc_dan/ref.filtered.fa -q /gpfs01/home/mbxtm2/Ind_Project/fixchr/fixchr_Chr1_exc_dan/qry.filtered.fa 
cd ..

mkdir syri_Chr1_dan_groen
cd syri_Chr1_dan_groen
syri --nosnp -c /gpfs01/home/mbxtm2/Ind_Project/fixchr/fixchr_Chr1_dan_groen/homologous_strand_corrected_alignments_no_header.txt -d /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/mummer_files/danica-groenlandica.delta \
-r  /gpfs01/home/mbxtm2/Ind_Project/fixchr/fixchr_Chr1_dan_groen/ref.filtered.fa -q /gpfs01/home/mbxtm2/Ind_Project/fixchr/fixchr_Chr1_dan_groen/qry.filtered.fa 
cd ..

mkdir syri_Chr3_exc_dan
cd syri_Chr3_exc_dan
syri --nosnp -c /gpfs01/home/mbxtm2/Ind_Project/fixchr/fixchr_Chr3_exc_dan/homologous_strand_corrected_alignments_no_header.txt -d /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/mummer_files/excelsa-danica.delta \
-r  /gpfs01/home/mbxtm2/Ind_Project/fixchr/fixchr_Chr3_exc_dan/ref.filtered.fa -q /gpfs01/home/mbxtm2/Ind_Project/fixchr/fixchr_Chr3_exc_dan/qry.filtered.fa 
cd ..

mkdir syri_Chr3_dan_groen
cd syri_Chr3_dan_groen
syri --nosnp -c /gpfs01/home/mbxtm2/Ind_Project/fixchr/fixchr_Chr3_dan_groen/homologous_strand_corrected_alignments_no_header.txt -d /gpfs01/home/mbxtm2/Ind_Project/ref_genomes/mummer_files/danica-groenlandica.delta \
-r  /gpfs01/home/mbxtm2/Ind_Project/fixchr/fixchr_Chr3_dan_groen/ref.filtered.fa -q /gpfs01/home/mbxtm2/Ind_Project/fixchr/fixchr_Chr3_dan_groen/qry.filtered.fa 
cd ..


mamba deactivate
