#Example 3.5,Section III. Basis and Dimension,page 130
#package used matlib v0.9.1
#install package using command: install.packages("matlib")
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program
#To get a basis for the span of {x^2 + x^4,2x^2 + 3x^4,-x^2 - 3x^4 } in the space row4
A <- matrix(c(0,0,0,0,0,0,1,2,-1,0,0,0,1,3,-3),ncol = 5,nrow = 3)
#applying gauss method
A <- rowadd(A,1,2,-2)
A <- rowadd(A,1,3,1)
A <- rowadd(A,2,3,2)
A
#we get the basis (x^2 + x^4,x^4)