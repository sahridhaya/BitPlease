#page - 137
#section - 4.5 CHARACTERISTIC VECTORS AND CHARACTERISTIC VALUES
#example - 5

#included package - pracma

#for charpoly function
library(pracma)

#matrix A
A <- matrix(c(2,1,1,2,3,2,1,1,2), 3, 3, byrow=TRUE)
A

#characteristic polynomial
charpoly(A, info = FALSE)