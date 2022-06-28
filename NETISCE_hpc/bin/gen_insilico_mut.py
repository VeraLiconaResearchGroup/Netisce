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
all_samples=pd.read_csv(sys.argv[4],delim_whitespace=True, index_col = False)
phenotypes = all_samples.phenotype.unique()
replicates=int(len(all_samples)/len(phenotypes))
row = ["attr_" + str(i+1).rjust(len(str(numpert)),'0')for i in range(numpert)]
df = pd.DataFrame(index=row,columns=mut_df.columns)

switch_num = int((numpert/len(phenotypes)) + (len(phenotypes) % numpert > 0))
print(mut_df)
l=0
for i in range(len(phenotypes)):
    m=switch_num*i
    p = mut_df.iloc[replicates*i].tolist()
    print(p)
    df.iloc[l:int(switch_num+m),] = p
    l=int(switch_num+m)
    print(df)
df.to_csv(os.path.join( 'insilico_mut.txt'),index=True,na_rep="") 