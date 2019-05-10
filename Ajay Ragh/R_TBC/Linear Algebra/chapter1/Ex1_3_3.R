#Example 3.3,section 1.3,chapter 1,page 24
#package used matlib v0.9.1
#install package using command: install.packages("matlib")
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program 
A <- matrix(c(3,2,4,-1),ncol = 2)
b <- c(3,1)
c <- c(0,0)
Ab <- cbind(A,b) # linear system
Ac <- cbind(A,c) #system of homogeneous equations
#reduction of original system
Ab <- rowadd(Ab,1,2,-2/3)
#reduction of homogeneous system
Ac <- rowadd(Ac,1,2,-2/3)
#comparing both
Ab
Ac
#Obviously the two reductions go in the same way.
#We can study how to reduce a linear systems by instead studying how to reduce the associated homogeneous system.