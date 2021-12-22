#!/usr/bin/env python3
import pandas as pd
import sys

def main():

# read in sfa attractors
	df=pd.read_csv(sys.argv[1], delim_whitespace=True,index_col = ["name"])
# read in rons
	rons = open(sys.argv[2],"r").read().strip().split('\n')
#get the rons and their values
	df1=df.loc[:,rons]
	df1.to_csv("exp_internalmarkers.tsv",sep=' ',index_label="name",na_rep='NA')
main()