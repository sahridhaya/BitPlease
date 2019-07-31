# Example 7     Chapter 13       Page no.: 433
# Polygon Method

#for the solution
cat("Polygon Method")
h <- 0.25
x = 1
y = 2
cat("h=",h)
cat("x=",x)
cat("y=",y)

#Creating algorithm and displaying
for (i in 1:3) {
  
  cat("y(",x,")= ",signif(y,3),"\n")
  f1 <- (2 * y / x)
  f2 <- (2 * (y + ( h * f1 / 2 ) ) / (x + ( h / 2 ) ))
  x <- x +  h
  y <- y + (h * f2)
}
