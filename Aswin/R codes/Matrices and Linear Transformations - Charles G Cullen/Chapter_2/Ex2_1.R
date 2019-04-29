#page - 74
#section - 2.2 SUBSPACES
#example 1

#let us represent 'a' with a value as we cannot multiply character matrix with numerical matrix
a = 7

#let unit vectors of F4*1 be E1, E2, E3, E,4
E1 <- matrix(c(1,0,0,0), 4, 1)
E2 <- matrix(c(0,1,0,0), 4, 1)
E3 <- matrix(c(0,0,1,0), 4, 1)
E4 <- matrix(c(0,0,0,1), 4, 1)

#thus vector A is
A = (E1 %*% a) + (E2 %*% a) + (E3 %*% a) + (E4 %*% a)
A