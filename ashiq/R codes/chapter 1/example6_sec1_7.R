#Example 6, section 1.7, page 97
#Find the inverse of matrix A if it exists :
 A<-matrix(c(1,1,5,2,-2,-2,-3,1,-3),c(3,3))
 print(A)
 Ainv <- solve(A) #cannot find inverse direcly since it does not exist
 print(Ainv)
 A1<-A
  A1[c(2),c(1,2,3)]<- (A1[c(1),c(1,2,3)]*(-1)) + A1[c(2),c(1,2,3)]
  print(A1)
  A2<-A1
  A2[c(3),c(1,2,3)]<- (A2[c(1),c(1,2,3)]*(-5)) + A2[c(3),c(1,2,3)]
  print(A2)
  A3<-A2
  A3[c(3),c(1,2,3)]<- (A3[c(2),c(1,2,3)]*(-3)) + A3[c(3),c(1,2,3)]
  print(A3)
  #last row of A3 is all zeros , hence we conclude that A is a singular matrix