#Example2.9,section IV:Matrix Operations,chapter3,page 232
A <- matrix(c(1,3,2,4),ncol = 2)
B <- matrix(c(5,7,6,8),ncol = 2)
A %*% B
B %*% A
#Matrix multiplication is not commutative.