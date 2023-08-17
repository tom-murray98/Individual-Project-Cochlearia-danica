#!/bin/bash
#SBATCH --job-name=BUSCO
#SBATCH --partition=mmemq
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=40
#SBATCH --mem=755g
#SBATCH --time=24:00:00
#SBATCH --output=./%x.out
#SBATCH --error=./%x.err

source $HOME/.bash_profile

mamba activate busco

busco -m genome -i /gpfs01/home/mbxtm2/Danica_raw_revio/Hifiasm_mmemq/Danica_hifi_c4_dups60.asm.bp.p_ctg.fa --auto-lineage-euk -o busco_out_new

mamba deactivate 
