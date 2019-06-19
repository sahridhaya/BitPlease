#Example 6,page 5
#find the solution for: x + 2y =10 ; 2x - 2y = -4; 3x + 5y = 20;
A=matrix(c(1,2,2,-2,3,5),3,2,T)
b=matrix(c(10,-4,20),3,1,T)
#if number of rows is greater than columns,use [A(t)*A]x = A(t)b:
x <- t(A) %*% A    
y <- t(A) %*% b
solve(x,y)
