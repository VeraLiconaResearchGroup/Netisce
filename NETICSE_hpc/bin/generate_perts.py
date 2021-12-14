#!/usr/bin/env python3
import os
import numpy as np
import pandas as pd
import itertools
import csv
import sys

def main():
	numnodes=len(open(sys.argv[1]).read().strip().split('\n')[1:])# number of perturbations to generate
	numpert=3**numnodes
	outf = sys.argv[2]		# output folder 
	prefix = sys.argv[3]		# prefix for column labels
	options=sys.argv[4].split(',')
	test=itertools.product(options, repeat=numnodes)
	df1=pd.DataFrame(list(test))
	df1=df1.set_index(prefix+'_'+df1.index.astype(str))

	df1.to_csv(os.path.join(outf),sep=' ', index=True,na_rep='NA') 
main()
