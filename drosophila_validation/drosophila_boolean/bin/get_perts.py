#!/usr/bin/env python3

import pandas as pd
import sys

def main():

# read in sfa attractors
    datasets = sys.argv[1].split(',') #the input data files
    FC_nodes=open(sys.argv[2]).read().strip().split('\n')[1:]   # FC set
    extracts=open(sys.argv[3],"r").read().split('\n')[1:-1]
    FC_perts=pd.DataFrame()
    for i in datasets:
        dfi=pd.read_csv(i, delim_whitespace=True)
        FC_perts=pd.concat([FC_perts,dfi],axis=0)

    FC_perts.columns=FC_nodes #set index for FC nodes
    df1=FC_perts.loc[extracts,:]
    df1.to_csv("extract_perts.txt",sep=' ',index_label="name",na_rep='NA')
main()