# Exercise 20     Chapter 8       Page no.: 146
# Adjoint of matrix evaluation
# Include "Matrix" and "matlib" library
A <- matrix(c(-4,-3,-3,1,0,1,4,4,3), nrow = 3 , byrow= TRUE)
a <- adjoint(A)
a
if(all.equal(A,a)== TRUE){
  print("Adjoint of the matrix is equal to the same matrix")
}else{
  print("The matrix and its adjoint is not equal")
}

# If "Adjoint of the matrix is equal to the same matrix" is the print result then the question is proved.