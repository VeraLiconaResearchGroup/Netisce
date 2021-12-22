#!/usr/bin/env python3

import pandas as pd
import sys

def main():

    FC_perts=pd.read_csv(sys.argv[1], delim_whitespace=True)
    FC_nodes=open(sys.argv[2]).read().strip().split('\n')[1:]   # FC set
    extracts_file=pd.read_csv(sys.argv[3], delim_whitespace=True,index_col=0)
    extracts=extracts_file.perturbation.unique()
    FC_perts.columns=FC_nodes #set index for FC nodes
    df1=FC_perts.loc[extracts,:]
    df1.to_csv("extracted_perts.txt",sep=' ',index_label="name",na_rep='NA')
main()