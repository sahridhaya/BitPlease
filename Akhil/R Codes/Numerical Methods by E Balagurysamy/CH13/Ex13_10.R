# Example 10     Chapter 13       Page no.: 446
# Milne-Simpson predictor-corrector method

#for the solution 
cat(" Milne and Simpson method")
h <- 0.25
y <- c()
x <- c()
x[1] = 1
y[1] = 2

cat("h=",h)
cat("x=",x)
cat("y=",y)

f <- function(x,y){
  2 * y / x
}

#Creating algorithm and displaying
for (i in 2:10) {
  
  print(signif(y[i-1],3))
  m1 <- f(x[i-1],y[i-1])
  m2 <- f(x[i-1] + 0.5*h, y[i-1] + 0.5*h*m1)
  m3 <- f(x[i-1] + 0.5*h, y[i-1] + 0.5*h*m2)
  m4 <- f(x[i-1] + h, y[i-1] + h*m3)
  x[i] <- x[i-1] + h
  y[i] <- y[i-1] + h * (m1 + m4 + 2*m2 + 2*m3) / 6
  
  
}

g <- c()

for (i in 1:3) {
  g[i] <- f(x[i+1],y[i+1])
  print(g[i])
  
}

#Milne's formula
Y1 <- y[1] + 4*h * (2*g[1] - g[2] + 2*g[3]) /3 
cat("Solution obtained using Milne's method is", Y1,3)

g[4] <- f(x[5],Y1)
print(g[4])

#Simpson formula
Y2 <- y[3] + h * ( g[2] + 4*g[3] + g[4]) /3
cat("Solution obtained using Simpson's method is", Y2,3)

#Values are not approximated here ao value slightly differs from the textbook value