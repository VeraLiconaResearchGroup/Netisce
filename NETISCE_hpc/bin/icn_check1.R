#!/usr/bin/env Rscript
.libPaths('~/R_libs_36')
args = commandArgs(trailingOnly=TRUE)

library(plyr)
library(dplyr)
library(ggplot2)
library(reshape2)
library(readr)


pdf(file="experimental_internalmarkers.png")
exp<-read.delim(args[1],sep=" ",row.names = 1)
samples<-read.delim(args[2],sep="\t",row.names = 1)
exp<-exp %>% dplyr::filter(row.names(exp) %in% row.names(samples))


d1exp<-exp
d1exp
d1exp$phenotype<-samples$phenotype
mu <- ddply(melt(d1exp), .(variable,phenotype))
g1<- ggplot(melt(d1exp),aes(x = value)) +
        facet_wrap(~variable,scales = "free_x",shrink=FALSE) +
        geom_histogram(alpha=0.2, position="identity") +
        theme(legend.position="bottom") +
        labs(title = "RONs",size = 20) +
        geom_vline(data=mu,aes(xintercept=value,color=phenotype),linetype="dashed")
g1





