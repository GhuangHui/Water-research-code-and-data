setwd("D:/article/Data")
Combine_newTNP<-read.csv("Combine_newTNP.csv")

library(ggplot2)
library(plotrix)
library(plotrix)
#win.graph(7,8)
#?plotCI
par(mfrow = c(1, 1),oma = c(2, 5, 2, 5))
#comparID=factor(comparID,levels=c(1,3,2))
#par()
plotCI(x=Combine_newTNP$UnlogMean,
       y=c(1:2),
       ui=Combine_newTNP$UnlogConfdMax,
       li=Combine_newTNP$UnlogConfdMin, 
       yaxt="n", 
       err="x",
       pch=19, 
       xlim=c(-30,300),
       ylim=c(0,4),
       xlab=list("Changes in Chla",font=2, cex=1.2), ylab ="",
       main=" ")

axis(2,at=c(1,2),
     las=1, 
     font=2, 
     oma = c(4, 8, 4, 4), 
     labels=c("(TNP)¡Ý16","(TNP)£¼16"))
axis(4,at=c(1,2),
     las=1, 
     font=2, 
     oma = c(4, 8, 4, 4), 
     labels=c("(663)","(361)"))

abline(v=0,lty=1)