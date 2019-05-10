#Example 1.3,chapter 5,Section II. Similarity,page 390
#package used matlib v0.9.1
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")
P <- matrix(c(2,1,1,1),ncol = 2)
T <- matrix(c(2,1,-3,-1),ncol = 2)
#finding similar matrix of T
T1 <- P %*% T %*% Inverse(P)
T1
