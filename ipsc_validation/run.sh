#!/bin/bash
#SBATCH --job-name=kinoshita
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=END
#SBATCH --mem=5G
#SBATCH --mail-user=marazzi@uchc.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

./nextflow run NETISCE.nf -resume