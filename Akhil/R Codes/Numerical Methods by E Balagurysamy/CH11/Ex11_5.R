# Example 5     Chapter 11       Page no.: 358
# Estimating velocity

T <- c(5,6,7,8,9) # Time
S <- c(10.0,14.5,19.5,25.5,32.0) # Distance

#distance time function
ss <- function(t1){
  s <- S[t1-4]
  return(s)
}

#Difference value h 
h1 <- 1

# We have velocity as the first derivative of distance 
v <- function(t,h){
  return(((-3*ss(t))+(4*ss(t+h))-ss(t+2*h))/(2*h))
}

#First given time is 5s
t2 <- 5
cat("Velocity of car at t=5s is",v(t2,h1),"km/s")

# Central difference formula gives
vcf <- function(t,h){
  return((ss(t+h)-ss(t-h))/(2*h))
}
#second time given is 7s
t3 <- 7
cat("Velocity of car at t=",t3,"s is",vcf(t3,h1),"km/s")

# Backward diffeerence formula
vb <- function(t,h){
  return(((3*ss(t))-(4*ss(t-h))+ss(t-2*h))/(2*h))
}
#Third given time is 9s
t4 <- 9
cat("Velocity of car at t=",t4,"s is",vb(t4,h1),"km/s")