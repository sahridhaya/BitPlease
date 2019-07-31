# Example 14     Chapter 6       Page no.: 172
# Newton-Raphson Method for system of nonlinear equations


#First function
u <- function(x,y) {
  x^2+x*y-6
}
#Second function
v <- function(x,y) {
  (x^2)-(y^2) -3
}

#Initial values
x=1
y=1

#Error 
e<-c(100, 100)

#Computing roots
while  (e[1]>0.00001 & e[2]>0.00001){
  J=matrix(data = c(2*x+y, x, 2*x, -2*y),nrow = 2,ncol = 2,byrow = TRUE)
  deter=det(J)
  u1=u(x,y)
  v1=v(x,y)
  x=x-((u1*J[2,2]-v1*J[1,2])/deter)
  y=y-((v1*J[1,1]-u1*J[2,1])/deter)
  e[1]=abs(2-x)
  e[2]=abs(3-y)
}

Roots<-c(x, y)
cat("Value of x converges to",Roots[1])
cat("Value of y converges to",Roots[2])

#Only 2 iterations has been shown in the textbook.
