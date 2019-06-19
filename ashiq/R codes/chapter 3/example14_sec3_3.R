#Example 14,section 3.1,page 187
#Show that det(B)=cdet(A) if B is obtained fom A by multiplying a row (column) of A by a real number c :

A<-matrix(c(1,1,2,2,5,8,3,3,6),c(3,3))
first_Det<-det(A)
print(first_Det)


f<-2
A[c(3),c(1,2,3)] <- A[c(3),c(1,2,3)]/f
print(A)
f2<-3
A[c(1,2,3),c(3)]<-  A[c(1,2,3),c(3)]/f2
print(A)

second_Det<- det(A)*f*f2
print(second_Det)

if(first_Det == second_Det)
  print("Property is true")