'''
This file contains test cases to test the FVS function.
'''

import networkx as nx
import random
from FVS_python3 import FVS as FVS


#A random graph example
N=6
M=12
G1=nx.gnm_random_graph(N, M, seed=None, directed=True)
#calculate FVS
G1_FVS=FVS.FVS(G1)
print(G1.edges())
print(G1_FVS)

#A fixed graph example, the solution should be ['A']
G2=nx.DiGraph()
G2.add_edges_from([('A','B'),('B','C'),('C','A'),('A','D'),('D','A')])
#calculate FVS
G2_FVS=FVS.FVS(G2)
print(G2.edges())
print(G2_FVS)

#A three node feedback loops. The solution could be any node.
#With fixed randomseed, one should get the same answer.
G3=nx.DiGraph()
G3.add_edges_from([('A','B'),('B','C'),('C','A')])
#calculate FVS
G3_FVS=FVS.FVS(G3, T_0=0.6, alpha=0.99, maxMvt_factor=5, maxFail=50, randomseed=1)
print(G3.edges())
print(G3_FVS)
