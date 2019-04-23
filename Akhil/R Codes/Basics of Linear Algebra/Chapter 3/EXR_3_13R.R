R <- 4
C <- 3
A <- matrix(c(1,2,5,2,1,4,0,-1,-2,0,1,2), nrow = R,ncol = C, byrow = TRUE)
p <- echelon(A)
p
c <- rankMatrix(p)
c
if(c==R)
{
  print("The Matrix is row independent")
}else{
  print("The rows of the matrix are not independent")
  print("Rank of the Matrix=")
  print(c[1])
}

