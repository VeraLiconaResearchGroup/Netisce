#!/usr/bin/env Rscript


args = commandArgs(trailingOnly=TRUE)

library("plyr")
library("dplyr", warn.conflicts = FALSE)
library("ggplot2")
library("reshape2")
library("readr")

png(file="experimental_internalmarkers.png")
exp<-read.delim(args[1],sep=" ",row.names = 1)
samples<-read.delim(args[2],sep="\t",row.names = 1)
exp<-exp %>% dplyr::filter(row.names(exp) %in% row.names(samples))


d1exp<-exp
d1exp$phenotype<-samples$phenotype
suppressWarnings({
suppressMessages({
mu <- ddply(melt(d1exp), .(variable,phenotype))

g1<- ggplot(melt(d1exp),aes(x = value)) +
        facet_wrap(~variable,scales = "free_x",shrink=FALSE) +
        geom_vline(data=mu,aes(xintercept=value,color=phenotype),linetype="dashed")

g1
})
})