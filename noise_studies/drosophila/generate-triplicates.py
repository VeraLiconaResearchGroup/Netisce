from itertools import combinations
import random
import pandas as pd

def main():
	l1=list(range(1,101))
	combs=combinations(l1, 3)
	samps=random.sample(list(combs),10000)
	d1=pd.read_csv("noise-initial-states/expressions-40percent.csv",index_col=0)
	d2=d1.iloc[:,list(range(0,101))]
	d3=d1.iloc[:,list(range(101,len(d1.columns)))]
	i=1
	for samp in samps:
		d4=d2.iloc[:,list(samp)]
		d5=d3.iloc[:,list(samp)]
		d6=pd.concat([d4,d5],axis=1)
		d6.columns=["wt1","wt2","wt3","unp1","unp2","unp3"]
		d6.to_csv("40-percentnoise/input_data/noise/expressions-"+str(i)+".csv")
		i=i+1
main()