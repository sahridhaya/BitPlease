#page - 242
#section - 8.2 PRIMARY FUNCTIONS
#example 1


#first matrix A
A <- matrix(c(2,1,1,2,3,2,1,1,2), 2, 3, byrow=TRUE)
A

fn <- function(z)
  sin((pi/2)*z)

fn(A)