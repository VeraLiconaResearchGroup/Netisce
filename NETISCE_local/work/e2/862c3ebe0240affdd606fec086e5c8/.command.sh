#!/bin/bash -ue
datasets=$(ls -m attr* | sed 's/ //g')
kmeans_full.py attrs_exp.txt,attrs_insilico.txt 6
