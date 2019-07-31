# Example 2     Chapter 13       Page no.: 415
# Taylor Series Method
  
  #for solving the ODE
  install.packages("deSolve")
  library(deSolve)
  
  #initial values
  X <- 0
  Y <- 0
  
  #Setting up the function
  Taylor <- function (X, y, parms) {
    dY1 <- (X^2) + (Y^2)
    list(dY1) }
  
  #Setting the sequence of solution
  X <- seq(from = 0, to = 0.4, by = 0.2)
  
  #finding solution
  out <- ode(Y, times = X, func = Taylor, parms = NULL)
  
  #Printing the solution
  head(out)
  