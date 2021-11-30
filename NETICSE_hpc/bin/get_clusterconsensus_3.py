#!/usr/bin/env python3
import pandas as pd
import sys


def main():

# read in Data
	a1=pd.read_csv(sys.argv[1],sep=" ",index_col="name")
	b1=pd.read_csv(sys.argv[2],sep=" ",index_col="name")
	c1=pd.read_csv(sys.argv[3],sep=" ",index_col="name")


	a2=pd.read_csv(sys.argv[4],sep=" ",index_col="name")
	b2=pd.read_csv(sys.argv[5],sep=" ",index_col="name")
	c2=pd.read_csv(sys.argv[6],sep=" ",index_col="name")


	a3=pd.read_csv(sys.argv[7],sep=" ",index_col="name")
	b3=pd.read_csv(sys.argv[8],sep=" ",index_col="name")
	c3=pd.read_csv(sys.argv[9],sep=" ",index_col="name")
	
	goal=int(sys.argv[10])

# get perts classified to  goal cluster
	a1=a1.loc[a1['clusters'] == goal]
	b1=b1.loc[b1['clusters'] == goal]
	c1=c1.loc[c1['clusters'] == goal]
	

	a2=a2.loc[a2['clusters'] == goal]
	b2=b2.loc[b2['clusters'] == goal]
	c2=c2.loc[c2['clusters'] == goal]

	a3=a3.loc[a3['clusters'] == goal]
	b3=b3.loc[b3['clusters'] == goal]
	c3=c3.loc[c3['clusters'] == goal]

	ap1=a1.index.to_list()
	bp1=b1.index.to_list()
	cp1=c1.index.to_list()
	good1=set(ap1).intersection(bp1, cp1)

	ap2=a2.index.to_list()
	bp2=b2.index.to_list()
	cp2=c2.index.to_list()
	good2=set(ap2).intersection(bp2, cp2)

	ap3=a3.index.to_list()
	bp3=b3.index.to_list()
	cp3=c3.index.to_list()
	good3=set(ap3).intersection(bp3, cp3)

	
	final1=set(good1).intersection(good2,good3)
	# with open('all_class.txt','w') as f:
	# 	for item in final1:
	# 		f.write("%s\n" % item)
	final2=set(good1).intersection(good2)
	# with open('nbrf_class.txt','w') as f:
	# 	for item in final2:
	# 		f.write("%s\n" % item)
	final3=set(good1).intersection(good3)
	# with open('nbsvm_class.txt','w') as f:
	# 	for item in final3:
	# 		f.write("%s\n" % item)
	final4=set(good2).intersection(good3)
	# with open('rfsvm_class.txt','w') as f:
	# 	for item in final4:
	# 		f.write("%s\n" % item)
	final5=set(list(final1)+list(final2)+list(final3)+list(final4))
	with open('perts.txt','w') as f:
		for item in final5:
			f.write("%s\n" % item)
main()