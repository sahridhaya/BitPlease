# Exercise 18     Chapter: 1    Page No.: 10
# Identity verification

A <- matrix(c(0,1,0,1), nrow=2,ncol=2, byrow = TRUE)
B <- matrix(c(-1,-1,0,0), nrow=2,ncol=2, byrow = TRUE)
print(A*B)  ## In the text it is given that the Product is zero, which is false 
# Given that  (A+B)^2 != A^2 + 2*A*B + B^2
# and   (A+B)^3 = A^3 + 3*(A^2)*B + 3*A*(B^2) + B^3

if(all.equal(((A+B)^2), ((A^2) + (2*A*B) + (B^2))) == FALSE){
  print(" The identity (A+B)^2 != A^2 + 2*A*B + B^2  is Invalid ")
}else{
  print(" The identity (A+B)^2 != A^2 + 2*A*B + B^2 is valid")
}

if(all.equal(((A+B)^3) , ((A^3) + (3*(A^2)*B) + (3*A*(B^2)) + (B^3))) == TRUE){
  print(" The identity (A+B)^3 = A^3 + 3*(A^2)*B + 3*A*(B^2) + B^3 is true/Valid")
}else{
  print(" The identity is invalid")
}

# The question given is wrong and both the identities are valid as per the given matrices


