#!/bin/bash -ue
export train=$(ls -m attr* | sed 's/ //g')
for x in pert*
do
    NB.py $train $x kmeans.txt 
    RF.py $train $x kmeans.txt
    SVM.py $train $x kmeans.txt
done
