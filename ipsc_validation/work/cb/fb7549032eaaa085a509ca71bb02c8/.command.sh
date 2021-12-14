#!/bin/bash -ue
module load R/3.6.3
for x in pert_logss*
do
crit2.R exp_internalmarkers.txt samples.txt $x ESC EpiSC strict
done
