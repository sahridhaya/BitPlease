# Example 16     Chapter 4       Page no.: 82
# Error in equations

cat(" The Given functions are:")
cat("y =m1*x +c1")
cat("y =m2*x +c2")

#Solving both equations for x and y

fx <- function(c1,c2,m1,m2){
  return((c1-c2)/(m2-m1))
}

fy <- function(c1,c2,m1,m2){
  return(m1*((c1-c2)/(m2-m1))+c1)
}


cat("Let C1=7.00,C2=3.00,M1=2.00 and M2=2.01")

C1 <- 7.00
C2 <- 3.00
M1 <- 2.00
M2 <- 2.01

x1 <- fx(C1,C2,M1,M2)

y1 <- fy(C1,C2,M1,M2)

cat(" x=",x1,"\n","y=",y1)

cat("Let M2 be slightly changed.")
cat("Now C1=7.00,C2=3.00,M1=2.00 and M2=2.005")

C1 <- 7.00
C2 <- 3.00
M1 <- 2.00
M2 <- 2.005

x1 <- fx(C1,C2,M1,M2)

y1 <- fy(C1,C2,M1,M2)

cat(" x=",x1,"\n","y=",y1)

cat("This shows that a small change in M2 resulted in a large change in values of x and y")
cat(" Thus the problem is absolutely ill-conditoned")
