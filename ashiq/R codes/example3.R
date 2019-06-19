#Example 3, page 3
#Find the solution for: x + 2y + 3z =6 ; 2x - 3y +2z =14 ; 3x + y - z= -2 ;
A= matrix(c(1,2,3,2,-3,2,3,1,-1),3,3,T)
b= matrix(c(6,14,-2),3,1,T)
#value of x,y & z are:
solve(A,b)