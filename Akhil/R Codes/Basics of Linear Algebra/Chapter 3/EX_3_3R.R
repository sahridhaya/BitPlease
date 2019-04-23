A <- matrix(c(1,1,1,1,1,-1,-1,1,-1,-1,1,-1,-3,1,-3,-3), nrow=4,ncol=4,byrow = TRUE)
b <- c(1,3,1,4)
x <-solve(A,b)
showEqn(A,b, vars=x)
showEqn(A,b, simplify = TRUE)

# These equations also cannot be solved by conventional means
# In order to solve these we should use elementary row or column operations