#page - 168
#section - 5.1 THE CAYLEY-HAMILTON THEOREM
#example - 2

#included packages - pracma, polynom

#for charpoly function
library(pracma)

#for minimum polynomial function
library(polynom)

#matrix S
S <- matrix(c(4,-1,1,-1,4,-1,1,-1,4), 3, 3, byrow = TRUE)
S

eigVals <- eigen(S)$values
multEig <- table(eigVals)
k <- length(multEig)
minPoly <- 1
for(i in 1:k){
  poly.i <- polynomial(c(-as.numeric(names(multEig)[i]), 1))
  minPoly <- (minPoly*poly.i)
}

#characteristic polynomial
charpoly(S, info = FALSE)

#minimum polynomial
minPoly

