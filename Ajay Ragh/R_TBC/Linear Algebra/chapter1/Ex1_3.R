#Example 1.3
#Section I. Solving Linear Systems,page 3
A <- matrix(c(3,-1,2,1),ncol = 2)
b <- c(7,6)
x <- solve(A) %*% b 
x