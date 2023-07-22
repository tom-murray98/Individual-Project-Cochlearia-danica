#!/bin/bash
#SBATCH --job-name=Scope_and_smudges_excelsa_trimmed.sh
#SBATCH --partition=mmemq
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=40
#SBATCH --mem=400g
#SBATCH --time=12:00:00
#SBATCH --output=%x.out
#SBATCH --error=%x.err

source $HOME/.bash_profile

cd /gpfs01/home/mbxtm2/Danica_raw_revio

mkdir tmp

conda activate /gpfs01/home/mbxtm2/miniconda3/envs/kmc_genomescope

ls /gpfs01/home/mbxtm2/Danica_raw_revio/out.fastq.gz > FILES

echo now for kmc
kmc -k21 -t40 -m400 -ci1 -cs10000 @FILES reads tmp/
kmc_tools transform reads histogram reads.histo -cx10000

echo now for Genomescope
genomescope2 -i reads.histo -o . -k 21 -p 6

conda deactivate

conda activate /gpfs01/home/mbxtm2/miniconda3/envs/kmc_smudgeplot

echo now for smudgeplot
kmc -k21 -t40 -m400 -ci1 -cs10000 @FILES kmcdb tmp
kmc_tools transform kmcdb histogram kmcdb_k21.hist -cx10000

L=$(smudgeplot.py cutoff kmcdb_k21.hist L)
U=$(smudgeplot.py cutoff kmcdb_k21.hist U)
echo $L $U

kmc_tools transform kmcdb -ci"$L" -cx"$U" dump -s kmcdb_L"$L"_U"$U".dump

smudgeplot.py hetkmers -o kmcdb_L"$L"_U"$U" < kmcdb_L"$L"_U"$U".dump
smudgeplot.py plot kmcdb_L"$L"_U"$U"_coverages.tsv

conda deactivate
