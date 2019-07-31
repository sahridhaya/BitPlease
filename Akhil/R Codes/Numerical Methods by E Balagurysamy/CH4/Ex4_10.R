# Example 10     Chapter 4       Page no.: 77
# Error propagation

# Given Values
x <- 2.35
y <- 6.74
z <- 3.45

#Given Arithmetic operation
w <- x*y +z

#Roundoff error in x,y &z
erx <- 5E-3
ery <- 5E-3
erz <- 5E-3

cat("Roundoff error in x,y &z is",erx,",",ery,"&",erz)

#Error in x,y&z

ex <- x*erx
ey <- y*ery
ez <- z*erz
cat("Error in x=",ex)
cat("Error in y=",ey)
cat("Error in z=",ez)

# Error in x*y
exy <- x*ey + y*ex
cat("Absolute Error in x*y=",exy)

# Absolute error in computing w
ew <- exy + ez
cat("Absolute error in computing w=",ew)

