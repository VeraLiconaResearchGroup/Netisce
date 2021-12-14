#!/usr/bin/env python3
import os
import numpy as np
import pandas as pd
import networkx as nx
import random
from collections import Counter
import itertools
import csv
import sys

def main():
    numpert=int(sys.argv[1])    # number of perturbations to generate
    numnodes=int(sys.argv[2])   # number of nodes to generate them for
    outf = sys.argv[3]        # output folder 
    prefix = sys.argv[4]        # prefix for column labels
    options=sys.argv[5].split(',')
    df1=pd.DataFrame()

    if numpert > len(options)**numnodes: 
        numpert = len(options)**numnodes
    test=itertools.product(options,repeat=numnodes)
    nsets= itertools.islice(test, int(numpert))
    df1=pd.DataFrame(nsets)
    df1=df1.set_index(prefix+'_'+df1.index.astype(str))

    df1.to_csv(outf,sep=' ', index=False,na_rep='NA') 
        
main()
