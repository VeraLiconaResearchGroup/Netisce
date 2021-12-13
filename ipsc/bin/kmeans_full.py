#!/usr/bin/env python3
import pandas as pd
from scipy import stats
import matplotlib as mpl
mpl.use('Agg')
import matplotlib.pyplot as plt
from sklearn.decomposition import PCA
import numpy as np
from sklearn.datasets import make_blobs
from sklearn.cluster import MiniBatchKMeans
from yellowbrick.cluster.elbow import kelbow_visualizer
import sys
import os

def main():
#####Input files and user specifications###########
    datasets = sys.argv[1].split(',') #the input data file (logss, DAC, both, or discrete versions)
    df=pd.DataFrame()
    for i in datasets:
        dfi=pd.read_csv(i, delim_whitespace=True,index_col = ["name"])
        df=pd.concat([df,dfi],axis=0)
# Use the quick method and immediately show the figure
    visualizer=kelbow_visualizer(MiniBatchKMeans(random_state=0,n_init=100),df, k=(2,int(sys.argv[2])))
    visualizer.show("elbow.png")
    elbow=visualizer.elbow_value_
    visualizer=kelbow_visualizer(MiniBatchKMeans(random_state=0,n_init=100),df, k=(2,int(sys.argv[2])),metric='silhouette')
    visualizer.show("silhouette.png")
    silhouette=visualizer.elbow_value_

    if elbow==silhouette:
        k=elbow
    if elbow<silhouette:
        k=elbow
    if elbow>silhouette:
        k=silhouette
#report out final k-means selected
    kmeans = MiniBatchKMeans(n_clusters=k,random_state=0,n_init=100).fit(df)
    labels = kmeans.labels_
    df['clusters'] = labels
    df2 = pd.DataFrame(index=df.index)
    df2['clusters'] = labels
    df2.index.name = 'name'
    df2.to_csv('kmeans.txt', sep=' ')
main()
