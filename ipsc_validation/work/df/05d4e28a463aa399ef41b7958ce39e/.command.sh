#!/bin/bash -ue
datasets=$(ls -m class_* | tr -d '[:space:]')

export desired_sample=$(grep ESC samples.txt | head -1 | sed 's/	.*//')
export desired_cluster=$(grep $desired_sample kmeans.txt | head -1 | sed 's/.* //')
get_clusterconsensus.py $datasets $desired_cluster
