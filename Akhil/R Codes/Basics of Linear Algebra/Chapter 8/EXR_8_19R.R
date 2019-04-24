# Exercise 19     Chapter 8       Page no.: 145
# Adjoint of matrices and inverse



A <- matrix(c(3,1,2,1,2,1,1,1,1), nrow = 3 , byrow= TRUE)
a <- adjoint(A)
d <- det(A)
inva <- a/d
#Ia <- inv(A)
B <- matrix(c(5,3,2,2,3,1,7,5,3), nrow = 3 , byrow= TRUE)
b <- adjoint(B)
e <- det(B)
invb <- b/e
#Ib <- inv(A)
C <- matrix(c(1,0,0,1,2,0,1,2,3), nrow = 3 , byrow= TRUE)
c <- adjoint(C)
f <- det(C)
invc <- c/f
#Ic <- inv(C)

print("Adjoint of 1st Matrix is:")
a
print("Inverse of 1st Matrix is:")
inva

print("Adjoint of 2nd Matrix is:")
b
print("Inverse of 2nd Matrix is:")
invb

print("Adjoint of 3rd Matrix is:")
c
print("Inverse of 3rd Matrix is:")
invc