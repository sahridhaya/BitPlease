#Example 1.8,page 5
#package used: matlib 
#installation run command : install.packages("matlib")
#package repo : https://github.com/friendly/matlib

#installing and loading library
#install.packages("matlib")
library("matlib")

#program 
A <- matrix(c(40,-50,15,25),ncol = 2)
b <- c(100,50)
Ab <- cbind(A,b)
Ab <- rowadd(Ab,1,2,1.25)
Ab
#from row2 : 43.75c = 175,so c= 4
#from row1 : 40h+15c=100,so h=1
