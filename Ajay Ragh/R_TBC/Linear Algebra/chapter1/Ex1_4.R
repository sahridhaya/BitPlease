#Example 1.4,Section I. Solving Linear Systems
#page 3
#package used: matlib 
#installation run command : install.packages("matlib")
#package repo : https://github.com/friendly/matlib

#installing and loading library
#install.packages("matlib")
library("matlib")

#program 
A <- matrix(c(0,1,1/3,0,5,2,3,-2,0),ncol = 3,nrow = 3)
b <- c(9,2,3)
Ab <- cbind(A,b)
Ab <- rowswap(Ab,1,3)
Ab <- rowmult(Ab,1,3)
Ab <- rowmult(Ab,1,-1)
Ab <- rowadd(Ab,1,2,1)
Ab
#from Ab (X3=3)(since drom row3,3*X3=9)
#from Ab row2 -1*X2-2*x3=-7,so X2=1
#from Ab row1 X1+6*x2=9,so X1 = 3