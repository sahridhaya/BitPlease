# Example 3     Chapter 12       Page no.: 381
# Simpson's 1/3 Rule

#CASE A

#Given Function
f <- function(x){
  exp(x)
}

a1 <- -1
b1 <-  1
h1 <- (b1-a1)/2

Is <- function(a,b,h){
  return((h/3)*(f(a)+f(b)+4*f((a+b)/2)))
}

Is1 <- Is(a1,b1,h1)
cat("The Integrant value of e^x between -1 and 1 is", Is1)


#CASE B

#Given function
ff <- function(x){
  sqrt(sin(x))
}

a2 <- 0
b2 <- pi/2
h2 <- (b2-a2)/2

Isp <- function(k,l,m){
  return((m/3)*(ff(k)+ff(l)+4*ff((k+l)/2)))
}

Is2 <- Isp(a2,b2,h2)
cat("The Integrant value of sqrt(sin(x)) between 0 and pi/2 is", Is2)