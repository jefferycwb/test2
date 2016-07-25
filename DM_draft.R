
library(devtools)
library(roxygen2)


dat<-data.frame(replicate(20,sample(c("A", "B", "C","D"), size = 100, replace=TRUE)))
dat
trans.matrix <- function(X, prob=T)
{
  tt <- table( data.frame(factor(X[,-ncol(X)]), factor(X[,-1]) ) )
  if(prob) tt <- tt / rowSums(tt)
  tt
}

X= dat 
prob=T
a= c(X[,-ncol(X)])
b= c(X[,-1]) 

tt
