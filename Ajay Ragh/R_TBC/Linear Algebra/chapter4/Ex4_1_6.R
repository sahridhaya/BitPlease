#Example 1.6,chapter 4,Section III. Laplace's Formula,page 355\
#package used matlib v0.9.1 and pracma
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program
t <- matrix(c(1,4,7,2,5,8,3,6,9),ncol = 3)
x <- det(t)
#computing the determinant by expanding along the first row,
y <- t[1,1]*cofactor(t,1,1)+t[1,2]*cofactor(t,1,2)+t[1,3]*cofactor(t,1,3)
#computing the determinant by expanding along the second row,
z <- t[2,1]*cofactor(t,2,1)+t[2,2]*cofactor(t,2,2)+t[2,3]*cofactor(t,2,3)
all.equal(x,y)
all.equal(x,z)
