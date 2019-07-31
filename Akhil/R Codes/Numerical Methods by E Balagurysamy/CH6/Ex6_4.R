# Example 4     Chapter 6       Page no.: 132
# Bisection Method 

#Given Function
f <- function(x) {
  (x^2)-(4*x)-10
}

curve(f, xlim=c(-3,3), col='blue', lwd=2, lty=2)
abline(h=0)
abline(v=0)

#Values are chosen where curver crosses the x axis
x1=-2
x2=-1

#using bisection method
cat("BISECTION METHOD:")
xr=(x1+x2)/2
cat("Iteration:",1,"\n","xl:",x1,"\n","xu:",x2,"\n","xr:",xr,"\n","****************************************\n")

for (i in 2:7){
  if (f(x1)*f(xr)>0){
    x1=xr
    xr=(x1+x2)/2
  } else if (f(x1)*f(xr)<0){
    x2=xr
    xr=(x1+x2)/2
  }
  
  if (f(x1)*f(xr)==0){
    break
  }
  cat("Iteration:",i,"\n")
  cat("xl:",x1,"\n")
  cat("xu:",x2,"\n")
  cat("xr:",xr,"\n")
  cat("****************************************\n")
}

# The slight variation in answer is due to approximation