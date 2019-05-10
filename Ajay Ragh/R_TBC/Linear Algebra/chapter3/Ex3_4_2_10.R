#Example2.9,section IV:Matrix Operations,chapter3,page 232
A <- matrix(c(5,7,6,8),ncol = 2)
B <- matrix(c(1,3,2,4,0,0),ncol = 3)
A %*% B
#is defined
#but B %*% A isn't even defined.That is Commutativity can fail for matrices.
#B %*% A