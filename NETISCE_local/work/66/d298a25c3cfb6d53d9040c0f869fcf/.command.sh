#!/bin/bash -ue
for x in *_filtered_perturbations.txt
do
get_perts.py fvs_init.txt fvs.txt $x
done
