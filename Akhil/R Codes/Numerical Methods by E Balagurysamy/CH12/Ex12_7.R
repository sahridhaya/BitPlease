# Example 7     Chapter 12       Page no.: 391
# Romberg Estimation

# Installing and importing 'pracma' library
install.packages("pracma")
library("pracma")

#Given function
f <- function(x){
  return(1/x)
}

#Romberg function
u <- romberg(f,1 ,2)

cat("The value of Romberg integration of 1/x is",u$value,"and relative error is",u$rel.error,"completed in",u$iter,"iterations" )