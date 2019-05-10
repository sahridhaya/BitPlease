#Example2.5,section III:Computing linear maps,chapter3,page 218
#package used pracma
#install package using command: install.packages("pracma")

#installation and loading library
#install.packages("pracma")
library("pracma")

#program
A <- matrix(c(1,1,0,0,2,2,0,0,2,1,3,2),ncol = 3)
Rank(A)
#Any map represented by above matrix must have three-dimensional domain and a four-dimensional codomain.
#Since the rank of this matrix is found to be 2 by above code;
#Any map represented by this matrix has a two-dimensional range space.
