# Example 1   Chapter: 3    PAge no.: 27
# Solution of simple system of equations

A <- matrix(c(0,1,2,1,-2,1,0,3,-4), nrow=3,ncol=3,byrow = TRUE)
b <- c(1,0,23)
x <-solve(A,b)
showEqn(A,b, vars=x)
showEqn(A,b, simplify = TRUE)
