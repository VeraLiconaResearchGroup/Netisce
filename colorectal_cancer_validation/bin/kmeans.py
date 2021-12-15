#!/usr/bin/env python3
import pandas as pd
from scipy import stats
import matplotlib as mpl
mpl.use('Agg')
import matplotlib.pyplot as plt
from sklearn.decomposition import PCA
import numpy as np
from sklearn.datasets import make_blobs
from sklearn.metrics import pairwise_distances
from sklearn.cluster import KMeans
from sklearn.cluster import MiniBatchKMeans
import sys
import os

def main():
#####Input files and user specifications###########
    k = int(sys.argv[1]) # k means k
    datasets = sys.argv[2].split(',') #the input data file (logss, DAC, both, or discrete versions)
    df=pd.DataFrame()
    for i in datasets:
        dfi=pd.read_csv(i, delim_whitespace=True,index_col = ["name"])
        df=pd.concat([df,dfi],axis=0)



# perform kmeans
    kmeans = MiniBatchKMeans(n_clusters=k,random_state=0,n_init=10000).fit(df)
    labels = kmeans.labels_
    df['clusters'] = labels
    df2 = pd.DataFrame(index=df.index)
    df2['clusters'] = labels
    df2.index.name = 'name'
    df2.to_csv('kmeans.txt', sep=' ')

main()
