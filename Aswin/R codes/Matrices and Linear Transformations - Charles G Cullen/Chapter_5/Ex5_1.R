#page - 167
#section - 5.1 THE CAYLEY-HAMILTON THEOREM
#example - 1

#included package - polynom

#for minimum polynomial function
library(polynom)

#matrix B
B <- matrix(c(17,-8,-12,14,46,-22,-35,41,-2,1,4,-4,4,-2,-2,3), 4, 4, byrow = TRUE)
B

eigVals <- eigen(B)$values
multEig <- table(eigVals)
k <- length(multEig)
minPoly <- 1
for(i in 1:k){
  poly.i <- polynomial(c(-as.numeric(names(multEig)[i]), 1))
  minPoly <- (minPoly*poly.i)
}

#minimum polynomial
minPoly