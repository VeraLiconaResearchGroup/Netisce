#!/usr/bin/env python3
# -----------------------------------------------------------
# SimulateAttractors.py
## estimate experimental attractors
## calculate the median of the resistant and vehicle attractors
#-----------------------------------------------------------


import os
import numpy as np
import pandas as pd
import networkx as nx
import random
import sfa
import csv
import sys
from sklearn.preprocessing import StandardScaler
########INPUTS############

fpath =  os.path.join(sys.argv[1]) #location of networkfile

samples=pd.read_csv(sys.argv[2],index_col = 0) ##expression values for data

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
    samples=samples.loc[list(set(netnodes) & set(samples.index))]
    n = data.dg.number_of_nodes() #the number of nodes
    b = np.zeros((n,))

    
    
    logss=pd.DataFrame(index=samples.columns,columns=netnodes,copy=True)
    pi=[]
    for name, item in samples.iteritems(): #for each experimental sample
        enodes=item.index.tolist()
        for node in enodes:               # set initial state to sample norm exp value
            b[data.n2i[node]]=float(str(item.loc[node]))
        
        x = alg.compute(b,pi)                      #Run SFA calculation
        logss.loc[name,netnodes]=x[0]
#write out nondisc tables  
    logss.to_csv(sys.argv[3], sep=' ',float_format='%.0f',index_label="name",chunksize=10000)
