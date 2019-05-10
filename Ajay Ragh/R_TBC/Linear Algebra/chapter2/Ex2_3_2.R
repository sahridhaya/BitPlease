#Example 3.2,Section III. Basis and Dimension,page 127
#package used matlib v0.9.1
#install package using command: install.packages("matlib")
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program
A <- matrix(c(2,4,3,6),ncol = 2)
#Rowspace(A) is this subspace of the space of two-component row vectors
#{c1  (2 3) + c2  (4 6) | c1,c2 belongs to R}
#simplifying A
A <- rowadd(A,1,2,-2)
A
#From the simplified matrix,the second row vector is linearly dependent on the first and so we can simplify the above description to
#{c  (2 3)|c belongs to R}