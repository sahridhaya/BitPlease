# Example 5     Chapter 6       Page no.: 140
# False Position Method

#Given Function
f <- function(x) {
  (x^2)-(x)-2 
}

# Given Values
x1=1
x2=3

# False Position Function

xr=x1-(f(x1)*(x2-x1))/(f(x2)-f(x1))
cat("Iteration:",1,"\n","xl:",x1,"\n","xu:",x2,"\n","*************************")

for (i in 2:11){
  if (f(x1)*f(xr)>0){
    x1=xr
    xr=x1-(f(x1)*(x2-x1))/(f(x2)-f(x1))
  }
  else if (f(x1)*f(xr)<0){
    x2=xr
    xr=x1-(f(x1)*(x2-x1))/(f(x2)-f(x1))
  }
  if (f(x1)*f(xr)==0){
    break
  }
  cat("Iteration:",i,"\n")
  cat("xlow:",x1,"\n")
  cat("xup: ",x2,"\n")
  cat("xcur:",xr,"\n")
  cat("*************************\n")
}

cat("After",i,"th iteration","the root approximation stablized and the root is",xr)