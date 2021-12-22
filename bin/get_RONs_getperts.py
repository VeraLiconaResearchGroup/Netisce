#!/usr/bin/env python3
import pandas as pd
import sys

def main():

# read in sfa attractors
	df=pd.read_csv(sys.argv[1], delim_whitespace=True,index_col=[0,1])
	perts=open(sys.argv[3],"r").read().split('\n')
	del perts[-1]
	#print(perts)
# read in rons
	rons = open(sys.argv[2],"r").read().strip().split('\n')
#get the rons and their values
	df1=df.loc[pd.IndexSlice[:,perts],rons]
	df1.to_csv("internal_markers.txt",sep=' ',na_rep='NA')
main()