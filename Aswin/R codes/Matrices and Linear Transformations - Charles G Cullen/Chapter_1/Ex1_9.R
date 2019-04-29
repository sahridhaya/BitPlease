#page - 34
#section - 1.5 TRANSPOSITION
#example 9

#complex matrix A
A <- matrix(c(3, 5+6*1i , 2, 0+3*1i, 2+3*1i , 2-1i ), 3, 2, byrow=TRUE)
A

#conjugate of complex matrix A, A_
A_ = Conj(A)
A_

#transpose of conjugate of complex matrix A, Astar
Astar = Conj(t(A))
Astar