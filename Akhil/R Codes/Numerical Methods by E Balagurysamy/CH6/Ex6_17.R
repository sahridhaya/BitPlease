# Example 17     Chapter 6       Page no.: 197
# Muller's method

#Given function

f <- function(x) {
  return((x^3)+2*(x^2)+10*x-20) 
  }

#Initial values
x0=0
x1=1
x2=2

cat("iteration:",0,"\n","xr:",x2,"************************\n")

for (i in 1:6){
  h0=x1-x0
  h1=x2-x1
  d0=(f(x1)-f(x0))/(x1-x0)
  d1=(f(x2)-f(x1))/(x2-x1)
  a=(d1-d0)/(h1+h0)
  b=a*h1+d1
  c=f(x2)
  d=(b^2 - 4*a*c)^0.5
  if (abs(b+d)>abs(b-d)){
    x3=x2+((-2*c)/(b+d))
  }else {
    x3=x2+((-2*c)/(b-d))
  }
  x0=x1
  x1=x2
  x2=x3
  cat("iteration:",i,"\n")
  cat("Value:", signif(x2,digits = 9) ,"\n")
  cat("************************\n")
}

cat("The value of the function stablized at",i,"th iteration and was found to be",signif(x2,digits=9))