#!/bin/bash -ue
for x in pert*
do
echo $x
get_RONs_getperts.py $x internal-marker* 'crit1perts.txt'
done
