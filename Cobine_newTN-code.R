setwd("D:/article/Data")
Combine_newTN<-read.csv("Combine_newTN.csv")

library(ggplot2)
library(plotrix)
library(plotrix)
#win.graph(7,8)
#?plotCI
par(mfrow = c(1, 1),oma = c(2, 5, 2, 5))
#comparID=factor(comparID,levels=c(1,3,2))
#par()
plotCI(x=Combine_newTN$UnlogMean,
       y=c(1:3),
       ui=Combine_newTN$UnlogConfdMax,
       li=Combine_newTN$UnlogConfdMin, 
       yaxt="n", 
       err="x",
       pch=19, 
       xlim=c(-10,150),
       ylim=c(0,4),
       xlab=list("Changes in Chla",font=2, cex=1.2), ylab ="",
       main=" ")

axis(2,at=c(1,2,3),
     las=1, 
     font=2, 
     oma = c(4, 8, 4, 4), 
     labels=c("TN¡Ü0.75","0.75<TN¡Ü1.4","TN>1.4"))
axis(4,at=c(1,2,3),
     las=1, 
     font=2, 
     oma = c(4, 8, 4, 4), 
     labels=c("(172)","(602)","(250)"))

abline(v=0,lty=1)