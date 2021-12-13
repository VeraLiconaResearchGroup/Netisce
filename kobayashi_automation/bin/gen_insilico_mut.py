#!/usr/bin/env python3
import pandas as pd
import os
import os.path as path
import sys




numpert = int(sys.argv[1]) 
numnodes=int(sys.argv[2])
if numpert > 3**numnodes: 
        numpert = 3**numnodes

mut_df = pd.read_csv(sys.argv[3],index_col=0)
row = ["attr_" + str(i+1).rjust(len(str(numpert)),'0')for i in range(numpert)]
df = pd.DataFrame(index=row,columns=mut_df.columns)
switch_num = numpert/2
l=0
for i in range(2):
    m=switch_num*i
    p = mut_df.iloc[int(m/switch_num)].tolist()
    df.iloc[l:int(switch_num+m),] = p
    l=int(switch_num+m)


df.to_csv(os.path.join( 'insilico_mut.txt'),index=True,na_rep="") 