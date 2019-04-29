#page - 208
#section - 6.4 MATRICES WITH POLYNOMIAL ELEMENTS
#example 1

#included package - exmp

#for power of a matrix
library(expm)

#constant matrices
c1 <- matrix(c(0,0,1,1), 2, 2, byrow=TRUE)
c2 <- matrix(c(0,1,0,1), 2, 2, byrow=TRUE)
c3 <- matrix(c(1,1,0,1), 2, 2, byrow=TRUE)

#matrix A
A <- matrix(c(1,0,0,2), 2, 2)
A

#square of A
A2 = A %^% 2
A2

#right functional value
Pr = c1%*%A2 + c2%*%A + c3
Pr

#left functional value
Pi = A2%*%c1 + A%*%c2 + c3
Pi

#function to compare two matrices
matequal <- function(x, y)
  is.matrix(x) && is.matrix(y) && dim(x) == dim(y) && all(x == y)

matequal(Pr,Pi)