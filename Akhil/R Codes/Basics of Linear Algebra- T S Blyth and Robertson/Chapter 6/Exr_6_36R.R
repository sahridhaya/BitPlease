# Exercise 36   Chapter:6   Page no.: 112
# Nullity and Rank
# Include "pracma" and "Matrix" library
R <- 3
C <- 3
A <- matrix(c(1,0,2,2,1,2,0,1,-2), nrow = R,ncol=C,byrow = T)
r <- rankMatrix(A)
print("Rank of the matrix is:")
r[1]
l = C - r[1]  # as Rank(r) + Nullity(l) = no. of columns of the matrix 
print(" Nullity of the matrix is:")
l