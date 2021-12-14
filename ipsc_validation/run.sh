#!/bin/bash
#SBATCH --job-name=ipsc_validation
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mem=5G
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

./nextflow run NETISCE.nf -resume
