#Example 1.4,chapter 4,Section III. Laplace's Formula,page 354
#package used matlib v0.9.1 and pracma
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program
T <- matrix(c(1,4,7,2,5,8,3,6,9),ncol = 3)
T12 <- cofactor(T,1,2)
T22 <- cofactor(T,2,2)
T12
T22
