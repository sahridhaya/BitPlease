# Example 6     Chapter 13       Page no.: 427
# Heun Method and Euler Method

#for the solution - Euler method
cat("Case A: Euler's Method")
h <- 0.25
x <- 1
y <- 2
cat("h=",h)
cat("x=",x)
cat("y=",y)

#Creating euler algorithm and displaying
for (i in 1:5) {
  
  cat("y(",x,")= ",y,"\n")
  x <- x +  h
  f <- (2 * y / (x-h))
  y <- y + (h * f)

}

#for the solution - Heun's method
cat("Case B: Heun's Method")
h <- 0.25
x <- 1
y <- 2
cat("h=",h)

#Creating heun algorithm and displaying
for (i in 1:4) {
  
  
  f1 <- (2 * y / (x))
  m <- y + h*f1
  f2 <- (2 * m / (x+h))
  y <- y + ((h/2) * (f1 + f2))
  x <- x +  h
  cat("y(",x,")= ",y,"\n")
  
}

#Values slightly differ but are more precise than what is given in the textbook 