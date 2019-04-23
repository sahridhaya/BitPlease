a <- matrix(c(3,0,-1,2,1,1), nrow=3,ncol=2, byrow = TRUE)
b <- matrix(c(4,-1,0,2), nrow=2,ncol=2, byrow = TRUE)
c <- matrix(c(1,4,2,3,1,5), nrow = 2,ncol = 3 , byrow = TRUE)
d <- a %*% b
e <- b %*% c
print(d %*% c)
print(a %*% e)

