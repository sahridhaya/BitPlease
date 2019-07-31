# Example 3     Chapter 6       Page no.: 126
# Horner's Rule 

#Installpackage 'cmna'(Computational Methods for Numerical Analysis)
install.packages("cmna")
library("cmna")

c <- c(6,1,-4,1)
x <- 2
p <- horner(x,c) # Horner Function

cat(" The value of (x^3)-4*(x^2)+x+6 at x=2 is ",p)