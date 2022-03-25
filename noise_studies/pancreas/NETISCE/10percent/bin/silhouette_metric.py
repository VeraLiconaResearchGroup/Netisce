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
from yellowbrick.cluster.elbow import kelbow_visualizer
import sys
import os
import matplotlib.font_manager

def main():
    datasets = sys.argv[1].split(',') #the input data file (logss, DAC, both, or discrete versions)
    df=pd.DataFrame()
    for i in datasets:
        dfi=pd.read_csv(i, delim_whitespace=True,index_col = ["name"])
        df=pd.concat([df,dfi],axis=0)
# Use the quick method and immediately show the figure
    visualizer=kelbow_visualizer(MiniBatchKMeans(random_state=0,n_init=10000),df, k=(2,int(sys.argv[3])),metric='silhouette')
    visualizer.show("silhouette.png")
    print(visualizer.elbow_value_)

main()