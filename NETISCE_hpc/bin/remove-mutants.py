#!/usr/bin/env python3

import sys
import os
import pandas as pd

def main():
#####Input files and user specifications###########
	mutations = pd.read_csv(sys.argv[1]) #the input data file (logss, DAC, both, or discrete versions)
	fvs=open(sys.argv[2]).read().split('\n')
	mutgenes=mutations.columns.tolist()[1:]
	for gene in mutgenes:
		if gene in fvs:
			fvs.remove(gene)
	outputfile=open('fvs-no-mutated-genes.txt','w+')
	outputfile.write("\n".join(map(str, fvs)))
	outputfile.close()
main()
