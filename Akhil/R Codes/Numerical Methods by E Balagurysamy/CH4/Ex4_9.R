# Example 9     Chapter 4       Page no.: 75
# Error propagation

# Given Values
x <- 0.1234E4
y <- 0.1232E4

#Given Arithmetic operation
z <- x-y

#Roundoff error in x & y
erx <- 0.5E-3
ery <- 0.5E-3
cat("Roundoff error in x & y is",erx,"&",ery)
#Absolute Error in x & y
ex <- x*erx
ey <- y*ery
cat("Absolute Error in x=",ex)
cat("Absolute Error in y=",ey)

# Absolute error in computing z
ez <- ex+ey
cat("Absolute error in computing z=",ez)


#Relative Error in computing z
Erz <- (ez/z)*100
cat("Relative Error in computing z is",Erz,"%.")
