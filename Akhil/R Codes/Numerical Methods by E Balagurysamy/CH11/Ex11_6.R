# Example 6     Chapter 11       Page no.: 359
# Estimating Acceleration

T <- c(5,6,7,8,9) # Time
S <- c(10.0,14.5,19.5,25.5,32.0) # Distance

#distance time function
ss <- function(t1){
  s <- S[t1-4]
  return(s)
}

#Difference value h 
h1 <- 1

#Acceleration is given by second derivative of distance

a <- function(t,h){
  return((ss(t+h)-(2*ss(t))+ss(t-h))/(h^2))
}

h1 <- 1
t1 <- 7 # given time

cat("Acceleration of car at t=",t1,"s is",a(t1,h1),"km/s^2")