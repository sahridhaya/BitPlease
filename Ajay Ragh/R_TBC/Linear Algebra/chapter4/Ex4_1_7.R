#Example 1.7,chapter 4,Section III. Laplace's Formula,page 355
#package used matlib v0.9.1 
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program
t <- matrix(c(1,2,3,5,1,-1,0,1,0),ncol = 3)
#computing the determinant by expanding along the third column.
y <- t[1,3]*cofactor(t,1,3)+t[2,3]*cofactor(t,2,3)+t[3,3]*cofactor(t,3,3)
y
