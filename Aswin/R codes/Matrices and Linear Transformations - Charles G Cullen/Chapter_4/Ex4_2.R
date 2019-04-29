#page - 131
#section - 4.4 CHANGE OF BASIS AND SIMILARITY
#example - 2

#included package - matlib

#for inverse functions
library(matlib)

#matrix M
M <- matrix(c(2,4,6,-1,2,3,1,4,9), 3, 3, byrow=TRUE)
M

#matrix P
P <- matrix(c(1,0,1,1,1,1,1,1,0), 3, 3, byrow=TRUE)
P

#inverse of matrix P, PI
(PI  <- inv(P))

Mtx = PI %*% M %*% P
Mtx