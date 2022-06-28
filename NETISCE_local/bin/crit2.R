#!/usr/bin/env Rscript 
.libPaths('../../../bin/R_libs_36')
args = commandArgs(trailingOnly=TRUE)

library(plyr)
library(dplyr)
library(ggplot2)
library(reshape2)
library(readr)


exp<-read.delim(args[1],sep=" ",row.names = 1)
samples<-read.delim(args[2],sep="\t",row.names = 1)
exp<-exp %>% dplyr::filter(row.names(exp) %in% row.names(samples))
desired<-args[4]
undesired<-args[5]
filter<-args[6]


dfdes<- exp %>% filter(rownames(exp) %in% rownames(samples[samples$phenotype %in% desired,,drop=FALSE]))
meandes<- apply(dfdes,2,mean)
dfundes<- exp %>% filter(rownames(exp) %in% rownames(samples[samples$phenotype %in% undesired,,drop=FALSE]))
meandundes<-apply(dfundes,2,mean)
test<-meandes-meandundes
disc<-test
disc[disc<0]<-0
disc[disc>0]<-1
nodes<-colnames(dfdes)

is<-read.delim(args[3],sep=" ",row.names = 1) 
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
            val=max(dfundes[,node])
            isdisc[,node]<-replace(isdisc[,node],is[,node]>val, 1)
            isdisc[,node]<-replace(isdisc[,node],is[,node]<val, 0)
        }
    }

}



hammings<-data.frame(row.names(isdisc))
colnames(hammings)=c("perturbations")
hammings$hammingdist<-apply(isdisc,1,function(x) sum(disc != x))
#plyr::count(hammings$hammingdist)

if (length(nodes)<10){
    hams1_1<-hammings %>%filter(hammingdist<1)
}else{
     hams1_1<-hammings %>%filter(hammingdist<=length(nodes)-round(.9*length(nodes)))
}
poi<-Reduce(intersect,list(hams1_1$perturbations))
write.table(poi,paste0(args[3],'_filtered_perturbations.txt'),quote=FALSE,row.names = FALSE,col.names = c('pert'))






