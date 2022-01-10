setwd("D:/article/Data")
Combine_newTP<-read.csv("Combine_newTP.csv")

library(ggplot2)
library(plotrix)
library(plotrix)
#win.graph(7,8)
#?plotCI
par(mfrow = c(1, 1),oma = c(2, 5, 2, 5))
#comparID=factor(comparID,levels=c(1,3,2))
#par()
plotCI(x=Combine_newTP$UnlogMean,
       y=c(1:3),
       ui=Combine_newTP$UnlogConfdMax,
       li=Combine_newTP$UnlogConfdMin, 
       yaxt="n", 
       err="x",
       pch=19, 
       xlim=c(-10,250),
       ylim=c(0,4),
       xlab=list("Changes in Chla",font=2, cex=1.2), ylab ="",
       main=" ")

axis(2,at=c(1,2,3),
     las=1, 
     font=2, 
     oma = c(4, 8, 4, 4), 
     labels=c("TP¡Ü0.025","0.025<TP¡Ü0.05","TP>0.05"))
axis(4,at=c(1,2,3),
     las=1, 
     font=2, 
     oma = c(4, 8, 4, 4), 
     labels=c("(197)","(673)","(154)"))

abline(v=0,lty=1)