# Example 4     Chapter 13       Page no.: 420
# Euler Method

#for the first solution
cat("Case A:")
h <- 0.5
x <- 1
y <- 2
cat("h=",h)
#Creating algorithm and displaying
for (i in 1:2) {
  
  dy <- (3 * (x *x)) + 1
  y <- y + (h * dy)
  x <- x +  h
  cat("y(",x,")= ",y,"\n")
}

#for the second solution
cat("Case B:")
h <- 0.25
x <- 1
y <- 2
cat("h=",h)

print(x)
print(y)

#Creating algorithm and displaying
for (i in 1:5) {
  
  cat("y(",x,")= ",y,"\n")
  x <- x +  h
  dy <- (3 * ((x-h)^2)) + 1
  y <- y + (h * dy)
  
  
}

#For Case B, textbook answer is false.