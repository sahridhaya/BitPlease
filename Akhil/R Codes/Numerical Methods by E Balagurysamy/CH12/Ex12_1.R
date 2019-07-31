# Example 1     Chapter 12       Page no.: 373
# Trapezoidal integration

#GIven function
f <- function(x){
  return((x^3)+1)
}

# Second derivative of given function
f2 <- function(x){
  return(6*x)
}

#CASE A


#Given values
a1 <- 1 
b1 <- 2
h1 <- b1-a1

#Trapezoidal integration function       
It <- function(a,b){
  return(((b-a)/2)*(f(a)+f(b)))
}

It1 <- It(a1,b1)

# Error Function

Et <- function(h,a,b){
  return(((h^3)/12)*f2(max(a,b)))
}

Et1 <- Et(h1,a1,b1)

#Actual integration value
Iact <- integrate(f, lower=a1, upper=b1)  # In text book given I(exact) value is wrong.

#Error Calculation
Er <- It1-Iact$value

cat("CASE A: ")
cat("Lower limit=",a1)
cat("Upper limit=",b1)
cat("Width of division=",h1)
cat("Trapezoidal integration value is",It1)
cat("Estimated maximum error is",Et1)
cat("Actual integrated value is",Iact$value)
cat("Actual error in approximation",Er)

# CASE B

#Given values
a2 <- 1 
b2 <- 1.5
h2 <- b2-a2

It2 <- It(a2,b2)
Et2 <- Et(h2,a2,b2)
#Actual integration value
Iact2 <- integrate(f, lower=a2, upper=b2)
#Error Calculation
Er2 <- It2-Iact2$value

cat("CASE B: ")
cat("Lower limit=",a2)
cat("Upper limit=",b2)
cat("Width of division=",h2)
cat("Trapezoidal integration value is",It2)
cat("Estimated maximum error is",Et2)
cat("Actual integrated value is",Iact2$value)
cat("Actual error in approximation",Er2)
