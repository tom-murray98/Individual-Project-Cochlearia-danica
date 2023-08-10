#!/bin/bash
#SBATCH --job-name=minimap2_shortq
#SBATCH --partition=shortq
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=40
#SBATCH --mem=178g
#SBATCH --time=12:00:00
#SBATCH --output=./%x.out
#SBATCH --error=./%x.err

source $HOME/.bash_profile
mamba activate minimap2

#minimap2 -ax asm5 --eqx -t C_excelsa_V5.fa cochlearia_groenlandica_18Oct2019_dfYNf.fa  > excelsa_groenlandica.sam
#minimap2 -ax asm5 --eqx -t 4 C_excelsa_V5.fa Danica_hifi_c4_dups60.asm.bp.p_ctg.fa  > excelsa_danica.sam
#minimap2 -ax asm5 --eqx -t 4 cochlearia_groenlandica_18Oct2019_dfYNf.fa Danica_hifi_c4_dups60.asm.bp.p_ctg.fa > groenlandica_danica.sam

#minimap2 -cx asm5 --eqx C_excelsa_V5.fa Danica_hifi_c4_dups60.asm.bp.p_ctg.fa > excelsa-danica_eqx.paf  
#minimap2 -cx asm5 --eqx C_excelsa_V5.fa cochlearia_groenlandica_18Oct2019_dfYNf.fa > excelsa-groenlandica_eqx.paf
#minimap2 -cx asm5 --eqx cochlearia_groenlandica_18Oct2019_dfYNf.fa Danica_hifi_c4_dups60.asm.bp.p_ctg.fa > groenlandica-danica_eqx.paf

minimap2 -cx asm5 --eqx Danica_hifi_c4_dups60.asm.bp.p_ctg.fa cochlearia_groenlandica_18Oct2019_dfYNf.fa > danica-groenlandica_eqx.paf
