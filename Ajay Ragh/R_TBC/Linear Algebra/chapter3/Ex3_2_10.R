#Example2.10,section III:Computing linear maps,chapter3,page 219
#package used pracma
#install package using command: install.packages("pracma")

#installation and loading library
#install.packages("pracma")
library("pracma")

#program
A <- matrix(c(1,0,2,3),ncol = 2)
Rank(A)
#Any map from R^2 to P1 represented with respect to any pair of bases by the above matrix;
#is nonsingular because this matrix has rank two.