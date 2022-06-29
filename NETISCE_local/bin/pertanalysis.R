#!/usr/bin/env Rscript 
args = commandArgs(trailingOnly=TRUE)

library(dplyr)
library(ggplot2)


perts_lab<-read.delim(args[1],sep=" ",row.names = 1) 

print("read it all in")


print("did the dataframe")
perts_lab<-replace(perts_lab,perts_lab==-1,"down")
perts_lab<-replace(perts_lab,perts_lab==1,"up")
perts_lab<-replace(perts_lab,perts_lab==0,"nochange")
print("made things words")


df1<-data.frame(perts_lab)
df1$up <- apply(df1, 1, function(x) length(which(x=="up")))
df1$down<-apply(df1, 1, function(x) length(which(x=="down")))
df1$total<-df1$up+df1$down
df1<-df1[order(df1$total),]
print("writing table")
write.table(df1,"successful_controlnode_perturbations.txt",quote=F)

# oh<-t(perts_lab) %>% reshape2::melt()
# pdf(file="pertrubation_trends.pdf")
# ggplot(oh, aes(x=value)) + facet_wrap(~Var1,scales = "free_x",shrink=FALSE) + geom_bar(aes(y = (..count..)/nrow(perts_lab))) + scale_y_continuous(labels=scales::percent)