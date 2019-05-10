#Example 3.7,Section III. Basis and Dimension,page 129
#package used matlib v0.9.1
#install package using command: install.packages("matlib")
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program 
A <- matrix(c(1,2,0,4,3,3,1,0,7,8,2,4),ncol = 3)
#to get a basis for the column space, temporarily turn the columns into rows and reduce.
A <- t(A)
A <- rowadd(A,1,2,-3)
A <- rowadd(A,1,3,-7)
A <- rowadd(A,2,3,-2)
#Now turn the rows back to columns
A <- t(A)
A
#The result is a basis for the column space of the given matrix.