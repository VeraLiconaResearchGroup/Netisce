#!/usr/bin/env python3


import os
import numpy as np
import pandas as pd
import networkx as nx
import random
import sfa
import csv
import sys
import statistics



fpath =  os.path.join(sys.argv[1]) #location of networkfile
qdata_all=pd.read_csv(sys.argv[2],index_col = 0)
all_samples=pd.read_csv(sys.argv[3],delim_whitespace=True, index_col = False)
npert=int(sys.argv[4])
phenotypes = all_samples.phenotype.unique()
class ThreeNodeCascade(sfa.base.Data):
    def __init__(self):
        super().__init__()
        self._abbr = "TNC"
        self._name = "A simple three node cascade"

        signs = {'activates':1, 'inhibits':-1}
        A, n2i, dg = sfa.read_sif(fpath, signs=signs, as_nx=True)
        self._A = A
        self._n2i = n2i
        self._dg = dg
        self._i2n = {idx: name for name, idx in n2i.items()}
        
    # end of def __init__
# end of def class


def gen_basal_states(npert,nnode,pre,opts):
    numpert=int(npert)    # number of perturbations to generate
    numnodes=int(nnode)  # number of nodes to generate them for
    prefix = pre        # prefix for column labels
    options=opts.split(',')
    df1=pd.DataFrame()
    if numpert > len(options)**numnodes: 
        numpert = len(options)**numnodes
    while len(df1.index)<numpert:
        temp=np.random.choice(a=options,size=[500000,numnodes]) # set to 200,000 to ensure unique random combinations in a timely manner (or 500,000 to run faster)
        df1=pd.DataFrame(temp)
        df1=df1.drop_duplicates()
    if len(df1.index)>numpert:
        df1=df1.iloc[0:numpert,]
    l1=[]
    for i in range(0,numpert):
        l1.append(prefix+'_' + str(i+1).rjust(len(str(numpert)), '0'))
    df1.index=l1

    return df1 


if __name__ == "__main__":
## initalize parameters from SFA
    data = ThreeNodeCascade()
    algs = sfa.AlgorithmSet()
    alg = algs.create('SP')
    alg.data = data
    alg.params.apply_weight_norm = True
    alg.initialize()
    alg.params.exsol_forbidden=True
    alg.params.alpha=0.9



    netnodes=list(data.dg.nodes)    
    expnodes=list(set(netnodes) & set(qdata_all.index)) 
    samples=gen_basal_states(npert,len(expnodes),'attr','0,-1,1')
    samples.columns=expnodes
    n = data.dg.number_of_nodes() #the number of nodes
    b = np.zeros((n,))
    switch_num = int(len(samples)/len(phenotypes)) + (len(phenotypes) % len(samples) > 0)
    l=0
    logss=pd.DataFrame(index=samples.index,columns=netnodes,copy=True)
    for i in range(len(phenotypes)):
        m=switch_num*i
        qs = all_samples[all_samples.isin([phenotypes[i]]).any(axis=1)]['name'].tolist()
        qdata=qdata_all.loc[:,qs]
        pi=[]
        samples2=samples.iloc[l:switch_num+m]
        minv=pd.Series(index = qdata.index, data = [np.amin(qdata.loc[node,]) for node in qdata.index])
        maxv=pd.Series(index = qdata.index, data = [np.amax(qdata.loc[node,]) for node in qdata.index])
        q1=pd.Series(index = qdata.index, data = [np.quantile(qdata.loc[node,],.33) for node in qdata.index])
        q2=pd.Series(index = qdata.index, data = [np.quantile(qdata.loc[node,],.66) for node in qdata.index]) 

        for name, item in samples2.iterrows():                      #for each simulated initial condition
            enodes=item.index.tolist()
            for node in enodes:                                     # set initial state to simulated value
                if item.loc[node]==1:               # if 1
                    number=np.random.uniform(low=q2[node], high=maxv[node]) #generate a random value for the node in the upper quartile
                elif item.loc[node]==-1: # if -1
                    number=np.random.uniform(low=minv[node], high=q1[node]) #generate a random value for the node in the lower quartile
                else: #item.loc[node]==0
                    number=np.random.uniform(low=q1[node], high=q2[node])   #generate a random value for the node in the middle
                b[data.n2i[node]]=number
            x = alg.compute(b,pi)                                 # Run SFA calculation
            logss.loc[name,netnodes]=x[0]
        l=switch_num+m 
    logss=logss.astype(float).round(3)
    logss.to_csv('attrs_insilico.tsv', sep=' ',float_format='%.3f',index_label="name",chunksize=10000)