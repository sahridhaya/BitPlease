#Example 1.11,page 6
#package used: matlib 
#installation run command : install.packages("matlib")
#package repo : https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program 
A <- matrix(c(1,2,0,0,-1,-2,1,0,0,1,0,2,0,2,1,1),ncol=4)
b <- c(0,4,0,5)
Ab <- cbind(A,b)
Ab <- rowadd(Ab,1,2,-1)
Ab <- rowswap(Ab,2,3)
Ab <- rowadd(Ab,3,4,-2)
Ab
#Back-substitution gives w = 1, z = 2 , y = -1, and x = -1.