#!/usr/bin/env python3
import os
import numpy as np
import pandas as pd
import networkx as nx
import random
from collections import Counter
from itertools import product
from itertools import islice
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
    while len(df1.index)<numpert:
        temp=np.random.choice(a=options,size=[numpert-len(df1.index),numnodes]) # set to 200,000 to ensure unique random combinations in a timely manner (or 500,000 to run faster)
        df2=pd.DataFrame(temp)
        df1 = pd.concat([df1, df2])
        df1=df1.drop_duplicates()
    if len(df1.index)>numpert:
        df1=df1.iloc[0:numpert,]
    df1=df1.transpose(copy=True)
    l1=[]
    for i in range(0,numpert):
        l1.append(prefix+'_' + str(i+1).rjust(len(str(numpert)), '0'))
    df1.columns=l1

    df1.to_csv(os.path.join(outf),sep=' ', index=False,na_rep='NA') 
        
main()
