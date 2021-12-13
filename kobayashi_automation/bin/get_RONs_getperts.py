#!/usr/bin/env python3
import pandas as pd
import sys

def main():

# read in sfa attractors
	datasets = sys.argv[1].split(',') #the input data file
	perts=open(sys.argv[3],"r").read().split('\n')
	del perts[-1]
	df=pd.DataFrame()
	for i in datasets:
		dfi=pd.read_csv(i, delim_whitespace=True,index_col = ["name"])
		df=pd.concat([df,dfi],axis=0)
# read in rons
	rons = open(sys.argv[2],"r").read().split('\n')
#get the rons and their values
	df1=df.loc[perts,rons]
	df1.to_csv(sys.argv[1]+"_internal_markers.txt",sep=' ',index_label="name",na_rep='NA')
main()