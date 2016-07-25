library(devtools)
library(roxygen2)
library(dplyr)
library(data.table)

dat<-data.frame(replicate(20,sample(c("A", "B", "C","D"), size = 100, replace=TRUE)))
X= dat

transition.matrix <- function(X, prob=T){
  X= as.matrix(X)
  A = c(X[,-ncol(X)])
  B = c(X[,-1])
  tt <- table(A, B)
  if(prob) tt <- tt / rowSums(tt)
  tt
  
}
transition.matrix(dat)


chicago <- readRDS("../McK/chicago.rds")