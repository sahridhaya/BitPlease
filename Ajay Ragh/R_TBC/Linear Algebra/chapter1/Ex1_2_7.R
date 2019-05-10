#Example 2.7,chapter one,section 1.2,page 16
#package used: matlib 
#installation run command : install.packages("matlib")
#package repo : https://github.com/friendly/matlib

#installing and loading library
#install.packages("matlib")
library("matlib")

#program 
A <- matrix(c(1,0,1,2,1,0,0,-1,2),ncol = 3)
b <- c(4,0,4)
#creating augmented matrix
Ab <- cbind(A,b)
Ab
#applying reduction techniques
Ab <- rowadd(Ab,1,3,-1)
Ab <- rowadd(Ab,2,3,2)
Ab
#second row: y-z=0
#first row: x+2*y=4
#so solution set is : {(4-2*z = 0)}