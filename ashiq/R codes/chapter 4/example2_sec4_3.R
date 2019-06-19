#Example 2, section 4.2, page 249
#Let L: R3->R2 be a linear transformation for which we know that, L(1,0,0)=(2,-1) , L(0,1,0)=(3,1) , L(0,0,1)=(-1,2); Find L(-3,4,2) :

Li<-c(2,-1)
Lj<-c(3,1)
Lk<-c(-1,2)

#we know L(-3,4,2)=L(-3i+4j+2k) ,then
L<- c(-3,4,2)
L<- -3*Li + 4*Lj + 2*Lk
# value of vector L is:
L
