# Exercise 23 Chapter: 3    PAge no.: 55
# System of Equations and Solutions


R <- 4
C <- 4
A <- matrix(c(1,2,3,3,1,2,0,3,1,0,1,1,1,1,1,2), nrow = R , ncol =C , byrow = TRUE)
b <- c(3,1,3,1)

e <- echelon(A)
r <- rankMatrix(e)
print(r[1])
if(r == C){
  print(" The set of equation has a unique solution ")
  x <- solve(A,b)
  showEqn(A,b, vars=x)
  showEqn(A,b, simplify = TRUE)
}else if(r < C){
  print(" The sysytem has infinetly many solutions")
}else{
  print(" Equation has no solution ")
}


