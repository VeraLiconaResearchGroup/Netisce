#!/bin/bash -ue
for x in pert_logss*
do
crit2.R exp_internalmarkers.txt samples.txt $x sensitive resistant strict
done
