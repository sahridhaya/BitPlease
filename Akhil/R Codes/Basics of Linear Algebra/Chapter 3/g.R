R <- 3
C <- 4
A <- matrix(c(1,2,-1,-2,-1,-1,1,1,0,1,2,1), nrow = R,ncol = C, byrow = TRUE)
N <- echelon(A)
N
r <- rankMatrix(N)
print(r[1])


