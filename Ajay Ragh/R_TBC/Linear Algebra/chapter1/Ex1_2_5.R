#Example 2.5,section 1.2,page 15
#package used matlib v0.9.1
#install package using command: install.packages("matlib")
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program 
A <- matrix(c(1,2,3,2,0,2,0,1,1,0,0,-1),ncol = 4)
b <- c(1,2,4)
Ab <- cbind(A,b) #augmented matrix
Ab <- rowadd(Ab,1,2,-2)
Ab <- rowadd(Ab,1,3,-3)
Ab <- rowadd(Ab,2,3,-1)
Ab
#The leading variables are x, y, and w. The variable z is free.
#although there are infinitely many solutions, the value of w doesn't vary but is constant w = -1.