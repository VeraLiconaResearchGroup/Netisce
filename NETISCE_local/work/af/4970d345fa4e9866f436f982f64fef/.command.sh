#!/bin/bash -ue
datasets=$(ls -m attr* | sed 's/ //g')
kmeans_full_copy.py $datasets 10
