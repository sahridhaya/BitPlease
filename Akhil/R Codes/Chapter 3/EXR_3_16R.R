R <- 4
C <- 5
A <- matrix(c(0,2,3,-4,1,0,0,2,3,4,2,2,-5,2,4,2,0,-6,9,7), nrow = R,ncol = C, byrow = TRUE)
p <- echelon(A)
p
q <- echelon(t(A))
q
c <- rankMatrix(p)
c
d <- rankMatrix(q)
d
if(c==R)
{
  print("The Matrix is row independent")
}else if(d==C){
  print("The Matrix is column independent")
}else{
  print("The rows of the matrix are not independent")
  print("ROW Rank of the Matrix=")
  print(c[1])
  print("COLUMN Rank of the Matrix=")
  print(d[1])
}

