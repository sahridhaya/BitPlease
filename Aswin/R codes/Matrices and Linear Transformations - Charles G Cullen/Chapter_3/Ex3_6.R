#page - 114
#section - 3.2 THE LAPLACE EXPANSION
#example 6

#column matrices
c1 <- matrix(c(1,1,2), 3, 1, byrow=TRUE)
c2 <- matrix(c(2,-1,3), 3, 1, byrow=TRUE)
c3 <- matrix(c(1,1,-1), 3, 1, byrow=TRUE)
c4 <- matrix(c(4,5,1), 3, 1, byrow=TRUE)

A <- matrix(c(c1,c2,c3), 3, 3)
B <- matrix(c(c4,c2,c3), 3, 3)
C <- matrix(c(c1,c4,c3), 3, 3)
D <- matrix(c(c1,c2,c4), 3, 3)
A
B
C
D
#solution of r,s and t
r = det(B)/det(A)
r

s=det(C)/det(A)
s

t=det(D)/det(A)
t

