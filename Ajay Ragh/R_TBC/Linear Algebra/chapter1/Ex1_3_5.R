#Example 3.5,chapter 1,section 1.3,page 25
#package used matlib v0.9.1
#install package using command: install.packages("matlib")
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program 
A <- matrix(c(7,8,0,0,0,1,1,3,-7,-5,-3,-6,0,-2,0,-1),ncol=4)
b <- c(0,0,0,0)
Ab <- cbind(A,b)
Ab <- rowadd(Ab,1,2,-8/7)
Ab <- rowadd(Ab,2,3,-1)
Ab <- rowadd(Ab,2,4,-3)
Ab <- rowadd(Ab,3,4,-5/2)
Ab