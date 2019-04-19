A <- matrix(c(0,0,0,1,0,0,1,0,0,1,0,0,1,0,0,0), nrow = 4, ncol = 4, byrow = TRUE)
echelon(A)

B <- matrix(c(1,1,1,0,1,1,0,1,1,0,1,1,0,1,1,1), nrow = 4, ncol = 4, byrow = TRUE)
echelon(B)

# The answers obtained are HERMITE matrices