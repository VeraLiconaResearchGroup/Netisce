#!/usr/bin/env python3

import networkx as nx
import random
from FVS_python3 import FVS as FVS
import re
import csv
import sys



outputfile=open('FVS_raw.txt','w+')
edges=open(sys.argv[1]).readlines() #open network file
data1=[(line.strip().split()[0],line.strip().split()[1],line.strip().split()[2]) for line in edges] 
for elem in data1:
    if elem[0]==elem[2]:
        if elem[1]=="inhibits":
            data1.remove(elem)
data=[tuple([line[0],line[2]]) for line in data1] #creates tuple from file
G3=nx.DiGraph()
G3.add_edges_from(data)

for i in range(0,int(sys.argv[2])):
    G3_FVS1=FVS.FVS(G3, T_0=0.6, alpha=0.99, maxMvt_factor=5, maxFail=10, randomseed=i)
    G3_FVS1.sort()
    outputfile.write(str(G3_FVS1)+'\n')
outputfile.close()
