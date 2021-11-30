#!/usr/bin/env python3
import pandas as pd
from scipy import stats
import matplotlib as mpl
mpl.use('Agg')
import matplotlib.pyplot as plt
import matplotlib.cm as cm
from sklearn.decomposition import PCA
import numpy as np
from sklearn.datasets import make_blobs
from sklearn.metrics import pairwise_distances
from sklearn.cluster import KMeans
from sklearn.cluster import MiniBatchKMeans
from sklearn.metrics import silhouette_score
import sys
import os

def main():
    datasets = sys.argv[1].split(',')
    df=pd.DataFrame()
    for i in datasets:
        dfi=pd.read_csv(i, delim_whitespace=True,index_col = ["name"])
        df=pd.concat([df,dfi],axis=0)
    x = []
    y = []

    for k in range(2, int(sys.argv[3])):
        x.append(k)
        kmeans = MiniBatchKMeans(n_clusters=k,random_state=0,n_init=10000).fit_predict(df)
        avg_sil = silhouette_score(df, kmeans)
        y.append(avg_sil)

    vals = dict(zip(x, y))
    print(max(vals, key=vals.get))
    plt.scatter(x, y)
    plt.xticks(np.arange(2, int(sys.argv[3])+1, 1))
    plt.xlabel('Number of clusters')
    plt.ylabel('Silhouette score')
    plt.grid()
    plt.show()
    plt.savefig('silhouette.pdf')

main()