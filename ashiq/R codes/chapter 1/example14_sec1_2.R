#Example 14, Section 1.2, page 16
#Compute the following matrix: C= 3* (A1) - 1/2 * (A2) 

A1 <- matrix(c(0,2,1,-3,3,-2,5,4,-3),c(3,3))
A2 <- matrix(c(5,6,-1,2,2,-2,3,3,3),c(3,3))
solution <- (3 *A1)  - (0.5 *A2)
print(solution)