#Example 5, section 1.6, page 65
#Transform Matrix A into Row echelon form:

A<-matrix(c(0,0,2,2,2,0,2,0,3,2,-5,-6,-4,3,2,9,1,4,4,7),c(4,5))

Pcol = function(x,y) #function to get the position of pivotal column
{
count<-0
var<-0
arr1= A[c(1),c(1,2,3,4,5)]
for(num in arr1 )
     { if(num==0)
       {count=count+1
       next}
      else
        return (count)
        break
     } 
      
  }
    
pivot = function(x,y) #to find first non zero element of pivotal column
    {
      arr<-A[c(1,2,3,4),c(1)]
      for(num in arr)
        if(num ==0)
          next
      else 
        return (num)
      
}
c<-Pcol(A)
print(c)#step1
p<-pivot(A) #step2

A2=A
  a<-A[c(1),c(1,2,3,4,5)] #first row
  c<-A[c(3),c(1,2,3,4,5)] #third row
  
A2[c(1),c(1,2,3,4,5)]<-c
A2[c(3),c(1,2,3,4,5)]<-a
print(A2) #step3

mul<- A2[c(1),c(1,2,3,4,5)] * 1/p
A2[c(1),c(1,2,3,4,5)]<-mul;A2
print(A2) #step4

A3<-A2
A3[c(4),c(1,2,3,4,5)]<- (-2)*A3[c(1),c(1,2,3,4,5)] + A3[c(4),c(1,2,3,4,5)]
print(A3) #step5

#taking submatrix (m-1)xn
B<- A3[c(2,3,4),c(1,2,3,4,5)]
#repeat steps 1 to 5
c<-Pcol(B)
print(c+1)
p2<-pivot(B)

a<-B[c(1),c(1,2,3,4,5)]
b<-B[c(2),c(1,2,3,4,5)]
B[c(1),c(1,2,3,4,5)]<-b
B[c(2),c(1,2,3,4,5)]<-a
print(B)
 
app12<-B[c(1),c(1,2,3,4,5)]* 1/p2
B[c(1),c(1,2,3,4,5)]<-app12;B
B[c(3),c(1,2,3,4,5)]<- (B[c(1),c(1,2,3,4,5)]*2 )+ B[c(3),c(1,2,3,4,5)]
print(B)

#taking sumatrix (m-2)xn
C<- B[c(2,3),c(1,2,3,4,5)]
#Repeat all steps except step3
c<-Pcol(C)
print(c+2)
p3<-pivot(C)

adik<- C[c(1),c(1,2,3,4,5)] * 1/p3
C[c(1),c(1,2,3,4,5)]<-adik;C
C[c(2),c(1,2,3,4,5)]<- ( C[c(1),c(1,2,3,4,5)]*(-2) ) + C[c(2),c(1,2,3,4,5)]
print(C)

D<-C[c(2),c(1,2,3,4,5)]
print(D)
#since there is no pivotal row to eliminate, we get echelon form by combining all the eliminated first rows from previous matrices, A3,B,C and D;
first<-A3[c(1),c(1,2,3,4,5)]
second<-B[c(1),c(1,2,3,4,5)]
third<-C[c(1),c(1,2,3,4,5)]
fourth<-D
H<-matrix(first)
l<-cbind(H,second)
cbind(l,third)
k<-cbind(l,third)
cbind(k,fourth)
z<-cbind(k,fourth)
 solution<-t(z) #echelon form








  
  


 
