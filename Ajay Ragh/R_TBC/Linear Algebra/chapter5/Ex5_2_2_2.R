#Example 2.2,chapter 5,section II.2 Diagonalizability,page 393
#matrix: T is diagonalizable if there is a nonsingular P such that PTP-1 is diagonal.
T <- matrix(c(4,1,-2,1),ncol = 2)
P <- matrix(c(-1,1,2,-1),ncol = 2)
#checking whether diagonizable
P %*% T %*% Inverse(P) # diagonal matrix
# so matrix P is diagonizable