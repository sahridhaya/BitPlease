#Example 2.5,chapter4,Section I. Definition,page 325
#package used matlib v0.9.1
#install package using command: install.packages("matlib")
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program
A <- matrix(c(2,4,0,2,4,-3,6,3,5),ncol=3)
b <- det(A)
#determinant by normal ,ethod
A <- rowadd(A,1,2,-2)
A <- rowswap(A,2,3)
A
#reducing with gaussian reduction now multiplying the diagonal terms,keeping in mind the sign change due to row swap to find determinant.
c <- -1*A[1,1]*A[2,2]*A[3,3]
all.equal(b,c)
#so the determinant by both techniques are the same