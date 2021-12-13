#!/usr/bin/env python3
import os
import numpy as np
import pandas as pd
import networkx as nx
import random
import sfa
import csv
from sys import argv
from sklearn.preprocessing import StandardScaler
########INPUTS############
fpath =  os.path.join( argv[1])                                                   # location of networkfile
samples=pd.read_csv(argv[2],index_col = 0)          # input samples (normexp initial states)
inits=argv[3]                    #the initial states of interest

phenotypes = pd.read_csv(argv[4],delim_whitespace=True, index_col = False)
initz = phenotypes[phenotypes.isin([inits]).any(axis=1)]['name'].tolist()
samples = samples[initz]

FC_nodes=open(argv[5]).read().strip().split('\n')   # FC set
FC_perts=pd.read_csv(argv[6],delim_whitespace=True,index_col=0,header=0,names=FC_nodes)


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
    alg.params.alpha=float(argv[7])

 
    netnodes= list(data.dg.nodes)    
    
    n = data.dg.number_of_nodes() #the number of nodes
    b = np.zeros((n,))
    
    for name, item in samples.iteritems():                      #for each simulated initial condition
        logss=pd.DataFrame(index=FC_perts.index,columns=netnodes,copy=True) # create dataframe for the FC perturbations
        enodes=item.index.tolist()                            # get expressed nodes
        for node in enodes:                                     # set initial state to simulated value
            b[data.n2i[node]]=float(str(item.loc[node]))
        for name2,item2 in FC_perts.iterrows():                  # for each FCnode perturbation
            pnode=item2.index.tolist()
            pi = []
            for node in pnode: #if logFC.loc[node].at['logFC']>0: # if the logfc is postive (res > veh)
                if item2.loc[node]==-1:          #if the perturbation is 0
                    if node in item.index:
                        b[data.n2i[node]]=float(str(item.loc[node]))-2.5*(float(str(item.loc[node])))        #downregulate the expression. fix to 0
                    else:
                        b[data.n2i[node]]=-2.5        #downregulate the expression. fix to 0
                    pi.append(data.n2i[node])
                if item2.loc[node]==1:          #if the perturbation is 1
                    if node in item.index:
                        b[data.n2i[node]]=float(str(item.loc[node]))+2.5*(float(str(item.loc[node]))) #upregulate the expression
                    else:
                        b[data.n2i[node]]=2.5 #upregulate the expression
                    pi.append(data.n2i[node])
            x = alg.compute(b,pi)                                      # Run SFA calculation
            logss.loc[name2,netnodes]=x[0]
        logss=logss.drop_duplicates()
    #write out tables  
        logss.to_csv('pert_logss_'+name+'_.txt', sep=' ',float_format='%.0f',index_label="name",chunksize=10000)      
