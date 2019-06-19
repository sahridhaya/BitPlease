#Example 5,section 6.4,page 309
#Let S={v1,v2,v3,v4,v5} be a set of vectors in R4,where ;
v1<-c(1,2,-2,1)
v2<-c(-3,0,-4,3)
v3<-c(2,1,1,-1)
v4<-c(-3,3,-9,-6)
v5<-c(9,3,7,-6)

library(matlib)
A<-matrix(c(v1,v2,v3,v4,v5),c(4,5))
A
b<-matrix(c(0,0,0,0),c(4,1))
echelForm<-echelon(A,b)
echelForm<-echelForm[,-4]
echelForm

#subsetting matrices , we get
V_1<-echelForm[c(1,2,3,4),c(1)]
V_2<-echelForm[c(1,2,3,4),c(2)]
V_3<-echelForm[c(1,2,3,4),c(3)]
V_4<-echelForm[c(1,2,3,4),c(4)]
V_5<-echelForm[c(1,2,3,4),c(5)]  

check= function(x)
{
  for(num in x)
  {
    if(num==1)
    p<-print("vector has leading 1")
    else
    next
  }
  return(p)
}

check(V_1)
check(V_2)
check(V_3)
check(V_4)
check(V_5)
#we can conclde that vectors v1,v2 is a basis for W=span S 