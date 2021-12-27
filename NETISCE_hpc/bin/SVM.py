#!/usr/bin/env python3
import pandas as pd
import sklearn.neighbors as neighbors
from sklearn.neighbors import KNeighborsClassifier
import sklearn.metrics as metrics
from sklearn.metrics import accuracy_score
from sklearn.model_selection import train_test_split
from sklearn.svm import SVC

import sys
def main():
    train=sys.argv[1].split(',') #train attractors
    df_attr=pd.DataFrame()
    for j in train:
        dfj=pd.read_csv(j, delim_whitespace=True,index_col = ["name"])
        df_attr=pd.concat([df_attr,dfj],axis=0)
    # df_attr=df_attr.drop_duplicates()
    
    
    datasets=sys.argv[2].split(',') # test attractors
    df_perturb=pd.DataFrame()
    for i in datasets:
        dfi=pd.read_csv(i, delim_whitespace=True,index_col = ["name"])
        df_perturb=pd.concat([df_perturb,dfi],axis=0)
    df_labels=pd.read_csv(sys.argv[3], delim_whitespace=True,index_col = ["name"]) # kmeans results
    labels=df_labels['clusters'].tolist()
    outfolder=sys.argv[2]
    
    svm=SVC(gamma='auto',random_state=4) #intialize knn
    svm.fit(df_attr,labels)  #do knn with attractor landscape
    perturb_lab=svm.predict(df_perturb) # predict clusters for perturbations
    #create dataframe of perturabtion and clusters
    df2=pd.DataFrame(index=df_perturb.index) 
    df2['clusters']=perturb_lab
    # write out knn results
    df2.to_csv('class_'+outfolder+'_SVM.txt',sep=' ',index_label="name",chunksize=10000)
main()