#!/usr/bin/env Rscript 
.libPaths('../../../../bin/R_libs_36')
library(dplyr)
args = commandArgs(trailingOnly=TRUE)


txt <- readLines(args[1])
fvs<-lapply(txt, function(x) scan(text = x, what = character(), quiet = TRUE))
fvs<-lapply(fvs, function(x) gsub("\\[|\\]","",x))

fvs<-lapply(fvs, function(x) gsub(",","",x))
fvs<-lapply(fvs, function(x) gsub("'","",x))
fvs<-lapply(fvs, function(x) x[x != ""])
fvs<-lapply(fvs, function(x) sort(x))

fvs<-fvs[lengths(fvs)<26]

df<-as.data.frame(fvs) 

cols<-ncol(df)
cols

df<-df %>% t()
row.names(df)<-paste0("FVS_",0:(cols-1))
df<-unique(df)
write.table(df,"FVSes.txt",quote=F,row.names = T,col.names = F,sep="\t")


