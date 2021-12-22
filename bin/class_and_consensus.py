#!/usr/bin/env python3
import pandas as pd
from sklearn.naive_bayes import GaussianNB
from sklearn.ensemble import RandomForestClassifier
from sklearn.svm import SVC
from collections import Counter
import sys
def main():
    train=sys.argv[1].split(',') #train attractors
    df_attr=pd.DataFrame()
    for j in train:
        dfj=pd.read_csv(j, delim_whitespace=True,index_col = ["name"])
        df_attr=pd.concat([df_attr,dfj],axis=0)
    #df_attr=df_attr.drop_duplicates()
    df_perturb=pd.read_csv(sys.argv[2], delim_whitespace=True,index_col=[0,1])
    
    df_labels=pd.read_csv(sys.argv[3], delim_whitespace=True,index_col = ["name"]) # kmeans results
    labels=df_labels['clusters'].tolist()
    
    gnb = GaussianNB()
    gnb.fit(df_attr,labels)  #do knn with attractor landscape
    perturb_lab=gnb.predict(df_perturb) # predict clusters for perturbations
    #create dataframe of perturabtion and clusters
    NB_label=pd.DataFrame(index=df_perturb.index) 
    NB_label['clusters']=perturb_lab
    
    regressor = RandomForestClassifier(n_estimators=100, random_state=1)
    regressor.fit(df_attr,labels)  #do knn with attractor landscape
    perturb_lab=regressor.predict(df_perturb) # predict clusters for perturbations
    #create dataframe of perturabtion and clusters
    RF_label=pd.DataFrame(index=df_perturb.index) 
    RF_label['clusters']=perturb_lab


    svm=SVC(gamma='auto',random_state=4) #intialize knn
    svm.fit(df_attr,labels)  #do knn with attractor landscape
    perturb_lab=svm.predict(df_perturb) # predict clusters for perturbations
    #create dataframe of perturabtion and clusters
    SVM_label=pd.DataFrame(index=df_perturb.index) 
    SVM_label['clusters']=perturb_lab

    consensus=[]

    for df in (SVM_label,NB_label,RF_label):
        df=df.where(df==0, None)
        df['count']=df.apply(lambda x: x.count(), axis=1)
        if df.index.nlevels>1:
            consensus.append(df.loc[df['count']>=1].index.get_level_values('perturbation').to_list())
        else:
            consensus.append(df.loc[df['count']>1].index.to_list())
    cencount=Counter(x for sublist in consensus for x in sublist)

    if df.index.nlevels>1:
        keys = [k for k, v in cencount.items() if v >=len(df.index.unique('replicate').tolist())*2]
    else:
        keys = [k for k, v in cencount.items()]
    
    with open('crit1perts.txt','w') as f:
        for item in keys:
            f.write("%s\n" % item)

main()