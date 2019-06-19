#Example 3. section 1.5 ,page 55
#Let A be a 2x2 matrix and consider the matrix transformation defined by f(u)=Au. Determine if the vector 'W' is in the range of 'f' i.e find vector 'v' for which f(v)=w.

A<- matrix(c(1,-2,2,3),c(2,2))
v<- c('v1','v2')
W<- matrix(c(4,-1),c(2,1))
x<-solve(A,W)
print("value of v1:")
print(x[c(1),c(1)])
print("value of v2:")
print(x[c(2),c(1)])

#thus W is in range of f



