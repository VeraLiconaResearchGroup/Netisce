#!/bin/bash -ue
datasets=$(ls -m attr* | sed 's/ //g')
kmeans_full.py $datasets 10
