#Example 2, section 1.4, page 41
#Solve for A+ (-A) where A is a matrix:
A<- matrix(c(2,-4,3,5,4,-2),c(2,3))
minus= (-A)
solution <- A + minus
print(solution) #Zero matrix or additive identity
