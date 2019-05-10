#Example1.11,section III:Computing linear maps,chapter3,page 211
a <- matrix(c(1,2,0,0,-1,3),ncol=3)
b <- c(2,-1,1)
a %*% b
#the above result can also be obtained by the method
x <- matrix(c(1,2),ncol = 1)
y <- matrix(c(0,0),ncol = 1)
z <- matrix(c(-1,3),ncol = 1)
#splitting the matrix a into component columns and now multiplying
2*x-1*y+1*z
#we see that both methods are equal.