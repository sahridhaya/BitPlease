# Example 16   Chapter: 3    PAge no.: 38
# Hermite system of matrix

A <- matrix(c(1,2,1,2,1,2,4,4,8,4,3,6,5,7,7), nrow = 3, ncol = 5, byrow = TRUE)
echelon(A)

# The answer obtained is a HERMITE matrix