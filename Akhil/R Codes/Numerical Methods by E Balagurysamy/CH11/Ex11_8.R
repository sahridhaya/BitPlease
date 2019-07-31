# Example 8     Chapter 11       Page no.: 364
# Richardson Extrapolation

f <- function(x){
  return(exp(x))
}
h1<- 0.5
r1 <- 1/2
x1<- 0.5

#First order forward difference formula
D1 <- function(x,h) {
  return((f(x+h) - f(x-h))/(2*h))
}

Dr1 <- function(x,r,h){
  return((f(x+(r*h)) - f(x-(r*h)))/(2*r*h))
} 

f1 <- function(x,r,h){
  return((Dr1(x,r,h)-(r^2)*D1(x,h))/(1-(r^2)))
}
F <- signif(f1(x1,r1,h1), digits = 5)

cat("The value of function e^x at",x1," with parameters")
cat("h=",h1)
cat("r=",r1)
cat("is",F)

# The value deviates slighly from the value of the textbook becaues of approximation in the text

r2 <- 2
F1 <- signif(f1(x1,r2,h1), digits = 5)

cat("The value of function e^x at",x1," with parameters")
cat("h=",h1)
cat("r=",r2)
cat("is",F1)

cat(" This shows that estimate with r=",r1,"is better than the estimate with r=",2)