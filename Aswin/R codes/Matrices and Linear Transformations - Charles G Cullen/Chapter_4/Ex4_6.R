#page - 156
#section - 4.8 SCHUR'S THEOREM AND NORMAL MATRICES
#example - 6

#included package - pracma

#for charpoly function
library(pracma)

#matrix A
B <- matrix(c(4,-1,1,-1,4,-1,1,-1,4), 3, 3, byrow=TRUE)
B

#characteristic polynomial
charpoly(B, info = FALSE)