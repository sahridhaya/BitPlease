#Example 9,section 3.1,page 186
#Let A be a 3x3 matrix. Then show that property det(A)=det(At)

A<-matrix(c(1,2,3,2,1,3,3,1,2),c(3,3))
trans<- t(A)
DitA<-det(A)
print(DitA)

Dtran<- det(trans)
print(Dtran)

all.equal(DitA,Dtran) #returns true if both determinants are equal