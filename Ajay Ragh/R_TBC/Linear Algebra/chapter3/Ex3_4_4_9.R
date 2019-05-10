#Example4.9,section IV.4:Inverses,chapter3,page 251
#package used matlib v0.9.1
#install package using command: install.packages("matlib")
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program
# Augmented matrix
A <- matrix(c(0,1,1,3,0,-1,-1,1,0),ncol = 3)
B <- matrix(c(1,0,0,0,1,0,0,0,1),ncol = 3)
AB <- cbind(A,B)
echelon(A,B)
