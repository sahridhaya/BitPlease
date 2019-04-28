# Exercise 8     Chapter: 1    Page No.: 5
# Verifying matrix equation
# Take any matrix A and B of the same order
# for convenience 2 diagonal matrices are considerd for the example

A <- diag(x=2 ,nrow = 3, ncol = 3)
B <- diag(x=1 ,nrow = 3, ncol = 3)

# Given Equation is -(A+B) = -A-B

if(all.equal(-(A+B),(-A-B)) == TRUE){
  print(" The equation is valid ")
}else{
  print(" Equation is invalid")
}
