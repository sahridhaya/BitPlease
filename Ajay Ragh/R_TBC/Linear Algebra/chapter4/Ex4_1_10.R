#Example 1.10,chapter 4,Section III. Laplace's Formula,page 356
#package used matlib v0.9.1 and pracma
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program
t <- matrix(c(1,2,1,0,1,0,4,-1,1),ncol = 3)
#finding inverse: if T has an inverse, if |T| != 0, then T^-1 = (1/|T|)  adj(T)
a <- adjoint(t)
b <- 1/det(t)
i <- b*a
i
