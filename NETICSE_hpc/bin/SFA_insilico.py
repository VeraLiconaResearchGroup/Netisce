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
samples=pd.read_csv(sys.argv[4],delim_whitespace=True, index_col = False)
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

if __name__ == "__main__":
## initalize parameters from SFA
    data = ThreeNodeCascade()
    algs = sfa.AlgorithmSet()
    alg = algs.create('SP')
    alg.data = data
    alg.params.apply_weight_norm = True
    alg.initialize()
    alg.params.exsol_forbidden=True
    alg.params.alpha=float(sys.argv[5])

    netnodes=list(data.dg.nodes)    
    expnodes=list(set(netnodes) & set(qdata_all.index)) 
    samples.index=expnodes
    n = data.dg.number_of_nodes() #the number of nodes
    b = np.zeros((n,))
    
    for p in phenotypes:
        qs = all_samples[all_samples.isin([p]).any(axis=1)]['name'].tolist()
        qdata=qdata_all.loc[:,qs]
        pi=[]
        logss=pd.DataFrame(index=samples.columns,columns=netnodes,copy=True) 

        for name, item in samples.iteritems():                      #for each simulated initial condition
            enodes=item.index.tolist()
            for node in enodes:                                     # set initial state to simulated value
                q1=np.quantile(qdata.loc[node,],.33)            # separate the values into 3 groups
                q2=np.quantile(qdata.loc[node,],.66)
                min=np.amin(qdata.loc[node,])
                max=np.amax(qdata.loc[node,])
                if item.loc[node]==1:               # if 1
                    number=np.random.uniform(low=q2, high=max) #generate a random value for the node in the upper quartile
                elif item.loc[node]==-1: # if -1
                    number=np.random.uniform(low=min, high=q1) #generate a random value for the node in the lower quartile
                else: #item.loc[node]==0
                    number=np.random.uniform(low=q1, high=q2)   #generate a random value for the node in the middle
                b[data.n2i[node]]=number
            x = alg.compute(b,pi)                                 # Run SFA calculation
            logss.loc[name,netnodes]=x[0]

        #write out nondisc tables  
            logss.to_csv("attrs_insilico" + p +'.txt', sep=' ',float_format='%.0f',index_label="name",chunksize=10000)