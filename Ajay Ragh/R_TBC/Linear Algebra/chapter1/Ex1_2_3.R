#Example 2.3,chapter1,section 1.2,page 13
#package used matlib v0.9.1
#install package using command: install.packages("matlib")
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program 
A <- matrix(c(1,0,3,0,1,1,0,-1,1,-1,6,1,-1,1,-6,-1),ncol = 4)
b <- c(1,-1,6,1)
Ab <- cbind(A,b)
Ab <- rowadd(Ab,1,3,-3)
Ab <- rowadd(Ab,2,3,3)
Ab <- rowadd(Ab,2,4,1)
Ab
#from the reduced augmented matrix Ab,we can see that only x and y are leading,while z and w are free.
#We represent the solution set by expressing the leading variables in terms of the free variables
#The solution set: {(2 - 2z + 2w,-1 + z - w,z,w)|z,w belongs to R}