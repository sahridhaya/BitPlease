#Example 2.6,chapter4,Section I. Definition,page 326
#package used matlib v0.9.1 and pracma
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program
A <- matrix(c(1,0,0,0,0,1,0,1,1,1,0,0,3,4,5,1),ncol = 4)
A <- rowadd(A,2,4,-1)
A <- rowswap(A,3,4)
A
#multiplying diagonal terms and multiplying it with -1 to compensate for rowswap
-1*A[1,1]*A[2,2]*A[3,3]*A[4,4]

