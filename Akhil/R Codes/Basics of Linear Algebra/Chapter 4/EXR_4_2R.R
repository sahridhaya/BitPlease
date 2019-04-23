A <- matrix(c(1,1,1,1,2,3,0,1,1), nrow = 3 , ncol = 3 , byrow = TRUE)
if(det(A) != 0){
  inv(A)
}else{
  print("Matrix is not invertible")
}
B <- matrix(c(1,2,1,1,3,2,1,0,1), nrow = 3 , ncol = 3 , byrow = TRUE)
if(det(B) != 0){
  inv(B)
}else{
  print("Matrix is not invertible")
}
C <- matrix(c(1,2,2,1,3,1,1,1,3), nrow = 3 , ncol = 3 , byrow = TRUE)
if(det(C) != 0){
  inv(C)
}else{
  print("Matrix is not invertible")
}
D <- matrix(c(1,1,1,1,1,2,-1,2,1,-1,2,1,1,3,3,2), nrow = 4 , ncol = 4 , byrow = TRUE)
if(det(D) != 0){
  inv(D)
}else{
  print("Matrix is not invertible")
}
  

