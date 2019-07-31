# Example 1     Chapter 10       Page no.: 326
# Straight Line fitting

x<-c(1,2,3,4,5) # Define table
y<-c(3,4,5,6,8)
#Square of X values
x2<-x^2
#Product of X and Y
xy<-x*y
#Sum of X
sx<-sum(x)
#Sum of y
sy<-sum(y)
#Sum of x^2
sx2<-sum(x2)
#Sum of x*y
sxy<-sum(xy)
# number of elements
n =5
# calculating slope
b <- ((n*sxy) -(sx*sy))/((n*sx2)-(sx^2))
# calculating intercept
a <- (sy)/n - (b*(sx))/n

cat("The Linear equation y=",a,"+",b,"x")

#Plotting curve and fitting the Straight line
plot(x,y)

abline(a=a,b=b)
