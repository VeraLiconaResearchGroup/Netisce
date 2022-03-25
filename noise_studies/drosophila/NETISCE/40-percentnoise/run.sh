#!/bin/bash
#SBATCH --job-name=NETISCE
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=END
#SBATCH --mem=10G
#SBATCH --mail-user=
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

for i in $(seq 1 1000); 
do

./nextflow run NETISCE-subsamp.nf -resume --expressions input_data/noise/expressions-$i.csv --outdir results/$i; 
wait
done