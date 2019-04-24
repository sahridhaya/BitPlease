# Exercise 11  Chapter: 3    PAge no.: 41
# Linearly independent and dependent matrix
# Include "Matrix" library

R <- 3
A <- matrix(c(1,2,0,0,1,1,1,0,1), nrow = R,ncol = 3, byrow = TRUE)
p <- echelon(A)
p
c <- rankMatrix(p)
c
if(c==R)
{
  print("The Matrix is row independent")
}else{
  print("The rows of the matrix are not independent")
}
