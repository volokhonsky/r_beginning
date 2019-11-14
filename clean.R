load("data/iGLAS.Rdata")
data[which(data$iDage>80),"iDage"]<- NA
data <- data[data$Finished==1,]
data <- data.table(data)