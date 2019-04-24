# Example 12     Chapter 8       Page no.: 145
# Inverse verification using differnt methods.


A <- matrix(c(1,1,-1,2,1,3,1,-5,1), nrow = 3 , byrow= TRUE)
a <- adjoint(A)
d <- det(A)
inv <- a/d
I <- inv(A)
format(round(inv,2), nsmall=2 )
format(round(I, 2) , nsmall=2  )
#inv == I  
#identical(inv, I)   # FALSE
all.equal(inv, I) 

# An one line way of solving it.
#matequal <- function(x, y)
  #is.matrix(x) && is.matrix(y) && dim(x) == dim(y) && all(x == y)

if(all.equal(inv,I) == TRUE){
  print("The inverse in both cases are equal")
}else{
  print("Inverses are not equal")
}   


