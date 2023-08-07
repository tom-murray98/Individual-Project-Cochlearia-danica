#!/bin/bash
#SBATCH --job-name=nucmer_groen_exc_danica
#SBATCH --partition=shortq
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=40
#SBATCH --mem=179g
#SBATCH --time=12:00:00
#SBATCH --output=%x.out
#SBATCH --error=%x.err

source $HOME/.bash_profile

mamba activate mummer

# Use nucmer to generate alignments betwee reference genomes and C. danica

#nucmer --mum -l 100 -c 500 -f C_excelsa_V5.fa Danica_hifi_c4_dups60.asm.bp.p_ctg.fa -p excelsa-danica
#nucmer --mum -l 100 -c 500 -f C_excelsa_V5.fa cochlearia_groenlandica_18Oct2019_dfYNf.fa -p excelsa-groenlandica
#nucmer --mum -l 100 -c 500 -f cochlearia_groenlandica_18Oct2019_dfYNf.fa Danica_hifi_c4_dups60.asm.bp.p_ctg.fa -p groenlandica-danica

# Generate coordinates of alginments for generation of dot plots

show-coords -c -l -r -T excelsa-danica.delta > excelsa-danica.coords.txt
show-coords -c -l -r -T excelsa-groenlandica.delta > excelsa-groenlandica.coords.txt
show-coords -c -l -r -T groenlandica-danica.delta > groenlandica-danica.coords.txt

