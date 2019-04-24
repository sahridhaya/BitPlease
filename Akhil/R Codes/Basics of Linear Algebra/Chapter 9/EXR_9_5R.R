#Exercise 5  Chapter: 9  Page No.: 157
#Eigen values and Basis
# Include "Matrix" and "matlib" library
A <- matrix(c(-2,-3,-3,-1,0,-1,5,5,6), nrow=3, byrow = T)
a <- eigen(A)$values
a
#k <- unique(a) # For some reason unique() doesnt seem to work
k <- table(a)
if(length(k) == 2){
  print(" The number of distinct eigen values are 2")
  print(" and the vectors are:")
  b <- eigen(A)$vector
}
