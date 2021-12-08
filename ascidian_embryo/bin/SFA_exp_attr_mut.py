#!/usr/bin/env python3

import os
import numpy as np
import pandas as pd
import networkx as nx
import random
import sfa
import csv
import sys

fpath =  os.path.join(sys.argv[1]) #location of networkfile

samples=pd.read_csv(sys.argv[2],index_col = 0) ##expression values for data
mut=pd.read_csv(sys.argv[4],index_col=0)
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
    alg.params.alpha=.9
 
    netnodes= list(data.dg.nodes)               #get network node names
    #samples=samples.loc[list(set(netnodes) & set(samples.index)),[sys.argv[3]]]
    samples=samples.loc[list(set(netnodes) & set(samples.index))]
    n = data.dg.number_of_nodes() #the number of nodes
    b = np.zeros((n,))

    
    
    logss=pd.DataFrame(index=samples.columns,columns=netnodes,copy=True)
    print(logss)
    print(mut)
    for name, item in samples.iteritems(): #for each experimental sample
        pi=[]
        enodes=item.index.tolist()
        for node in enodes:               # set initial state to sample norm exp value
            b[data.n2i[node]]=float(str(item.loc[node]))
        if name in mut.index:
            muti=mut.loc[name,]
            muti=muti.dropna()
            for node,status in muti.iteritems():
                if status==0.0:
                    if node in item.index:
                        b[data.n2i[node]]=float(str(item.loc[node]))-2.5*(float(str(item.loc[node])))        #downregulate the expression. fix to 0
                    else:
                        b[data.n2i[node]]=-2.5
                    pi.append(data.n2i[node])
                if status==1.0:
                    if node in item.index:
                        b[data.n2i[node]]=float(str(item.loc[node]))+2.5*(float(str(item.loc[node]))) #upregulate the expression
                    else:
                        b[data.n2i[node]]=2.5
                    pi.append(data.n2i[node])
        x = alg.compute(b,pi)                      #Run SFA calculation
        logss.loc[name,netnodes]=x[0]
#write out nondisc tables  
    logss.to_csv(sys.argv[3], sep=' ',float_format='%.0f',index_label="name",chunksize=10000)
