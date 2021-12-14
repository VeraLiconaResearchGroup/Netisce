#!/usr/bin/env python3
import pandas as pd
import sys
import re
from collections import Counter


def main():

# read in Data
	test=sys.argv[1].split(',')
	samples=list(set([re.search('class_(.*?)_', text).group(1) for text in test]))
	goal=int(sys.argv[2])

	consensus=[]

	for sample in samples:
		class_files=[x for x in test if sample in x]
		df=pd.DataFrame()
		for files in class_files:
			dfi=pd.read_csv(files,sep=" ",index_col="name")
			df=pd.concat([df,dfi],axis=1)
		df=df.where(df==goal, None)
		df['count']=df.apply(lambda x: x.count(), axis=1)
		consensus.append(df.loc[df['count']>1].index.to_list())

	cencount=Counter(x for sublist in consensus for x in sublist)

	if len(samples)>1:
		keys = [k for k, v in cencount.items() if v >1]
	else:
		keys = [k for k, v in cencount.items()]
	with open('crit1perts.txt','w') as f:
		for item in keys:
			f.write("%s\n" % item)
		
main()