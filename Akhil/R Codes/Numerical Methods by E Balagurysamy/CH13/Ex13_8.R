# Example 8     Chapter 13       Page no.: 439
# Classic Runge Kutta Method

#for the solution
cat("Classic Runge Kutta Method")
h <- 0.2
x = 0
y = 0

cat("h=",h)
cat("x=",x)
cat("y=",y)

#Given Function
f <- function(x,y){
  x^2 + y^2
}

#Creating algorithm and displaying
for (i in 1:2) {
  
  m1 <- f(x,y)
  m2 <- f(x + 0.5*h, y + 0.5*h*m1)
  m3 <- f(x + 0.5*h, y + 0.5*h*m2)
  m4 <- f(x + h, y + h*m3)
  x <- x + h
  y <- y + h * (m1 + m4 + 2*m2 + 2*m3) / 6
  cat("y(",x,")= ", signif(y,6),"\n")
  
}
