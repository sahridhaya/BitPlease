#Example 3.5,Section III. Basis and Dimension,page 128
#package used matlib v0.9.1
#install package using command: install.packages("matlib")
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program
A <- matrix(c(1,1,2,3,4,0,1,1,5),ncol = 3)
#From any matrix, we can produce a basis for the row space by
#performing Gauss's Method and taking the nonzero rows of the resulting echelon form matrix
#simplifying to echelon form
A <- rowadd(A,1,2,-1)
A <- rowadd(A,1,3,-2)
A <- rowadd(A,2,3,6)
A
#on simplification:produces the basis h(1 3 1); (0 1 0); (0 0 3)i for the row space. This is a basis
#for the row space of both the starting and ending matrices, since the two row spaces are equal.