#Example3.4,chapter 4,page 330
A <- matrix(c(2,4,1,3),ncol = 2)
#using multinlinearity property to break up the matrix
a <- matrix(c(2,4,0,0),ncol = 2)
b <- matrix(c(2,0,0,3),ncol = 2)
c <- matrix(c(0,4,1,0),ncol = 2)
d <- matrix(c(0,0,1,3),ncol = 2)
#verifying the property
x <- det(A)
y <- det(a)+det(b)+det(c)+det(d)
all.equal(x,y)
