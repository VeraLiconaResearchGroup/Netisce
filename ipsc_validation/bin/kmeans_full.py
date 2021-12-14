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
    df=df.loc[:, (df != 0).any(axis=0)]

    visualizer1=kelbow_visualizer(MiniBatchKMeans(random_state=0,n_init=10),df, k=(2,int(sys.argv[2])),title="optimal k via elbow method")
    elbow=visualizer1.elbow_value_
    visualizer1.show('elbow.png',clear_figure=True)
    visualizer2=kelbow_visualizer(MiniBatchKMeans(random_state=0,n_init=10),df, k=(2,int(sys.argv[2])),metric='silhouette',title="optimal k via silhouette method")
    silhouette=visualizer2.elbow_value_
    visualizer2.show("silhouette.png")
    
    if elbow==silhouette:
        k=elbow
    if elbow<silhouette:
        k=elbow
    if elbow>silhouette:
        k=silhouette
#report out final k-means selected
    kmeans = MiniBatchKMeans(n_clusters=3,random_state=0,n_init=100).fit(df)
    labels = kmeans.labels_
    df['clusters'] = labels
    df2 = pd.DataFrame(index=df.index)
    df2['clusters'] = labels
    df2.index.name = 'name'
    df2.to_csv('kmeans.txt', sep=' ')
main()
