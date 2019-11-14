#source
load("data/iGLAS.Rdata")
source("clean.R")

data$iDgender <- factor(data$iDgender)
levels(data$iDgender)=c("Male","Female","Non-binary","Prefer not to say")

q <- quantile(data$iDage,c(0.25,0.75),na.rm=T)
data$iDage_group <- cut(data$iDage,c(-Inf,q,Inf),labels=c("young","middle","old"),right=F)
