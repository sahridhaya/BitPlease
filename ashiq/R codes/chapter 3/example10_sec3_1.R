#Example 10, section 3.1, page 9
#Show that det(A) = -det(B), if B results from matrix by interchanging two rows of A:

A<-matrix(c(2,3,-1,2),c(2,2))
B<-matrix(c(3,2,2,-1),c(2,2))

alpha<-det(A)
print(alpha)
omega<-det(B)
print(omega)

if(alpha == -omega)
  print("property is true")