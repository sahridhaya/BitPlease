# Example 1     Chapter 13       Page no.: 414
# Taylor Series Method

#for solving the ODE

#install.packages("deSolve")
library("deSolve")

#initial values
X <- 0
Y <- 1

#Setting up the function
Taylor <- function (X, y, parms) {
    dY <- (X *X) + (Y * Y)
    list(dY) }

#Setting the sequence of solution
T <- seq(from = 0, to = 1, by = 0.25)

#finding solution
out <- ode( y = Y ,times = T,func = Taylor, parms = NULL)

#Printing the solution
head(out, n = 3)

#error margin ~ 0.1 to 0.3 which is due to approximation
