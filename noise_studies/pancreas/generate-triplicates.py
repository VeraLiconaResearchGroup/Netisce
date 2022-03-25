from itertools import combinations
import random
import pandas as pd

def main():
	l1=list(range(1,101))
	combs=combinations(l1, 3)
	samps=random.sample(list(combs),10000)
	d1=pd.read_csv("NETISCE/noise-initialstates/expressions-10percent.csv",index_col=0)
	d2=d1.iloc[:,list(range(0,103))]
	d3=d1.iloc[:,list(range(103,len(d1.columns)))]
	i=1
	for samp in samps:
		d4=d2.iloc[:,list(samp)]
		d5=d3.iloc[:,list(samp)]
		d6=pd.concat([d5,d4],axis=1)
		d6.columns=["b1","b2","b3","e1","e2","e3",]
		d6.to_csv("noise/10/input_data/noise/expressions-"+str(i)+".csv")
		i=i+1
main()