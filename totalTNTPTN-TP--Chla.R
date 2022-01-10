setwd("D:/article/Data")
Combine_new<-read.csv("Combine_new.csv")

library(ggplot2)
library(plotrix)
#win.graph(7,8)
#?plotCI
par(mfrow = c(1, 1),oma = c(2, 5, 2, 5))
#comparID=factor(comparID,levels=c(1,3,2))
#par()
plotCI(x=Combine_new$UnlogMean,
       y=c(1:3),
       ui=Combine_new$UnlogConfdMax,
       li=Combine_new$UnlogConfdMin, 
       yaxt="n", 
       err="x",
       pch=19, 
       xlim=c(-10,500),
       ylim=c(0,4),
       xlab=list("Changes in Chla",font=2, cex=1.2), ylab ="",
       main=" ")

axis(2,at=c(1,2,3),
     las=1, 
     font=2, 
     oma = c(4, 8, 4, 4), 
     labels=c("TN:TP","TP","TN"))
axis(4,at=c(1,2,3),
     las=1, 
     font=2, 
     oma = c(4, 8, 4, 4), 
     labels=c("(-0.005)","(2.72)","(0.055)"))

abline(v=0,lty=1)
