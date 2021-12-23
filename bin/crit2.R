#!/usr/bin/env Rscript 
.libPaths('~/R_libs_36')
args = commandArgs(trailingOnly=TRUE)

library(plyr)
library("dplyr", warn.conflicts = FALSE)
library(reshape2)
library(readr)
getwd()

exp<-read.delim(args[1],sep=" ",row.names = 1)
samples<-read.delim(args[2],sep="\t",row.names = 1)
exp<-exp %>% dplyr::filter(row.names(exp) %in% row.names(samples))
desired<-args[3]
undesired<-args[4]
filter<-args[5]


dfdes<- exp %>% filter(rownames(exp) %in% rownames(samples[samples$phenotype %in% desired,,drop=FALSE]))
meandes<- apply(dfdes,2,mean)
dfundes<- exp %>% filter(rownames(exp) %in% rownames(samples[samples$phenotype %in% undesired,,drop=FALSE]))
meandundes<-apply(dfundes,2,mean)
test<-meandes-meandundes
disc<-test
disc[disc<0]<-0
disc[disc>0]<-1
nodes<-colnames(dfdes)

is<-read.delim(args[6],sep=" ") #internal_markers.txt
isdisc<-is
if (filter=="strict"){
    for (node in nodes){
        if (disc[node]==0){ 
            val=max(dfdes[,node])
            isdisc[,node]<-replace(isdisc[,node],is[,node]<val, 0)
            isdisc[,node]<-replace(isdisc[,node],is[,node]>val, 1)
        }
        if (disc[node]==1){ 
            val=min(dfdes[,node])
            isdisc[,node]<-replace(isdisc[,node],is[,node]>val, 1)
            isdisc[,node]<-replace(isdisc[,node],is[,node]<val, 0)
        }
    }
}else { #filter=="relaxed"
    for (node in nodes){
        if (disc[node]==0){ 
            val=min(dfundes[,node])
            isdisc[,node]<-replace(isdisc[,node],is[,node]<val, 0)
            isdisc[,node]<-replace(isdisc[,node],is[,node]>val, 1)
        }
        if (disc[node]==1){ 
            val=max(dfdes[,node])
            isdisc[,node]<-replace(isdisc[,node],is[,node]>val, 1)
            isdisc[,node]<-replace(isdisc[,node],is[,node]<val, 0)
        }
    }

}



hammings<-data.frame(isdisc$replicate,isdisc$perturbation)
colnames(hammings)=c("replicate","perturbation")
hammings$hammingdist<-sapply(isdisc[,3],function(x) sum(disc != x))

if (length(nodes)<10){
    hams1_1<-hammings %>%filter(hammingdist<1)
}else{
     hams1_1<-hammings %>%filter(hammingdist<=length(nodes)-round(.9*length(nodes)))
}

write.table(hams1_1[,c(1,2)],'crit2_perturbations.txt',quote=FALSE,row.names = FALSE,sep=" ")


