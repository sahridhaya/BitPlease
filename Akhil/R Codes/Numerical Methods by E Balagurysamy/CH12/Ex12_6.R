# Example 6     Chapter 12       Page no.: 387
#Boole's five point Formula

#Given function
f <- function(x){
  sqrt(sin(x))
}

a1 <- 0
b1 <- pi/2
h1 <- (b1-a1)/4 #Since there are 5 sampling points the value of n is 4

# Boole's function

Bl <- function(a,b,h){
  return(((2*h)/45)*((7*f(a))+(7*f(b))+(32*f(a+h))+(12*f(a+(2*h)))+(32*f(a+(3*h)))))
}

BL1 <- Bl(a1,b1,h1)
cat("The Boole integrant value of sqrt(sin(x)) between 0 and pi/2 is", signif(BL1, digits = 6))