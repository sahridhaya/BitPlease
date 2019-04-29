#page - 132
#section - 4.4 CHANGE OF BASIS AND SIMILARITY
#example - 3

#included Package - matlib

#for inverse functions
library(matlib)

#matrix M
M <- matrix(c(17,12,18,-16,-9,-24,-5,-4,-4), 3, 3, byrow=TRUE)
M

#matrix Q
Q <- matrix(c(10,-3,-3,-8,3,2,-3,1,1), 3, 3, byrow=TRUE)
Q

#inverse of matrix Q, QI
(QI  <- inv(Q))

Mtx = QI %*% M %*% Q
Mtx