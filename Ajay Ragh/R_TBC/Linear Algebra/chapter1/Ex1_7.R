#Example 1.7,page nO:5
#package used: matlib 
#installation run command : install.packages("matlib")
#package repo : https://github.com/friendly/matlib

#installing and loading library
#install.packages("matlib")
library("matlib")

#program 
A <- matrix(c(1,2,1,1,-1,-2,0,3,-1),ncol = 3)
b <- c(0,3,3)
Ab <- cbind(A,b)
Ab <- rowadd(Ab,1,2,-2)
Ab <- rowadd(Ab,1,3,-1)
Ab <- rowadd(Ab,2,3,-1)
Ab
#from row3 : -4z=0,so z=0
#from row2 : -3y+3z=3,so y=-1
#from row1 : x+y=0,so x=1