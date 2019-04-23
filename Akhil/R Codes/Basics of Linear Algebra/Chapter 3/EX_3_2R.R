A <- matrix(c(1,-2,4,-2,4,3,-1,2,-1), nrow=3,ncol=3,byrow = TRUE)
b <- c(0,1,1)
x <-solve(A,b)
showEqn(A,b, vars=x)
showEqn(A,b, simplify = TRUE)

#Solution cannot be obtained as the system of equations provided are singular

