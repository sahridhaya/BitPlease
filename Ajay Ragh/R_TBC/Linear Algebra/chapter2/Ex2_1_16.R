#Example 1.16,Section III. Basis and Dimension,page 118
#package used matlib v0.9.1
#install package using command: install.packages("matlib")
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program 
v <- c(3,2)
A <- matrix(c(1,1,0,2),ncol = 2)
Av <- cbind(A,v)
Av <- echelon(A,v,reduced = TRUE)
Av
#from Av,c1 = 3 and c2 = -1=2.
