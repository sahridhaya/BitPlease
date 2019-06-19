#Example 5, section 4.3, page 253
#Let L: R3->R3 be the linear operator defined by L[x,y,z]= [x+y, y-z, x+z].Find the standard matrix represening L and verify equation L(x)= Ax :

Le1 =matrix(c(1,0,0),byrow = T)
Le2 =matrix(c(0,1,0),byrow = T)
Le3 =matrix(c(0,0,1),byrow = T)

standard.mat= function(K)
   { x= K[c(1)]
    y= K[c(2)]
    z= K[c(3)]
    K[c(1)]<- x+y
    K[c(2)]<- y-z
    K[c(3)]<- x+z
    return(K)
}

first<-standard.mat(Le1)
second<-standard.mat(Le2)
third<-standard.mat(Le3)

#therefore standard matrix is:
Ax <- matrix(c(first, second ,third),c(3,3))
Ax
# when Ax is multiplied with c(x,y,z) we get
A<-matrix(c('x+y','y-z','x+z'),byrow = T)
A


