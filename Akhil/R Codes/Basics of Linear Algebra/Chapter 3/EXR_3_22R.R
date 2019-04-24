# Exercise 22 Chapter: 3    PAge no.: 51
# Equivalancy of Matrices


A <- matrix(c(1,2,1,5,3,-1,0,2,-7,-10,1,2,4,-1,-6), nrow = 3, ncol = 5 , byrow = TRUE)
B <- matrix(c(0,0,1,-2,-3,0,1,0,2,1,1,0,0,3,4), nrow = 3 , ncol=5 , byrow= TRUE)

a= echelon(A)
b= echelon(B)

a == b  
identical(a, b)   # FALSE
all.equal(a, b) 

# An one line way of solving it.
matequal <- function(x, y)
  is.matrix(x) && is.matrix(y) && dim(x) == dim(y) && all(x == y)

if(matequal(a, b) == TRUE){
  print("The Matrices are Equivalent")
}else{
  print("Matrices are non Equivalent")
}   
