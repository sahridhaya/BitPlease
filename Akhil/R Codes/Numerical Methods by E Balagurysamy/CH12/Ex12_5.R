# Example 5     Chapter 12       Page no.: 386
#Simpson's 3/8 Rule

#CASE A
#Given Function
f <- function(x){
  return((x^3)+1)
}

a1 <- 1
b1 <- 2
h1 <- (b1-a1)/3 #Since there are 4 sampling points the value of n is 3

# Simpson's 3/8 function

Is <- function(a,b,h){
  return(((3*h)/8)*(f(a)+f(b)+(3*f((a+h)))+(3*f((a+(2*h))))))
}

Is1 <- Is(a1,b1,h1)
cat("The Integrant value of (x^3)+1 between 1 and 2 is", Is1)

# CASE B
# Given Function
ff <- function(x){
  return(sqrt(sin(x)))
}

a2 <- 0
b2 <- pi/2
h2 <- (b2-a2)/3 #Since there are 4 sampling points the value of n is 3

# Simpson's 3/8 function

IS <- function(a,b,h){
  return(((3*h)/8)*(ff(a)+ff(b)+(3*ff((a+h)))+(3*ff((a+(2*h))))))
}

IS1 <- IS(a2,b2,h2)
cat("The Integrant value of sqrt(sin(x)) between 0 and pi/2 is", signif(IS1, digits = 6))