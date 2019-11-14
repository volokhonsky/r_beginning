
#это файл с загрузкой данных!
data<-read.table(file="data/iGLAS for R course.csv",sep=",", 
                 quote = "\"", header=T,fileEncoding = "UTF-8-BOM")
five_point_scales<-grep("i5",names(data),value = T) 
save(data,five_point_scales,file="data/iGLAS.Rdata")