#!/bin/bash
#SBATCH --job-name=NETISCE_CRC
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

./nextflow run NETISCE_mutations.nf -resume