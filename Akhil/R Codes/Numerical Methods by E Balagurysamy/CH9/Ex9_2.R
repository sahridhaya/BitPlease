#Example 2     Chapter 9       Page no.: 278
# Shifted Power form

#p(x)= a0+ a1(x-C)

print("Given: ")
C=100
p_100= 3/7
p_101= -4/7
#solving for x=100 and x=101
x1=100
x2=101

substitute(a0+a1(x-Centre), list(Centre=C))

A<-matrix(c(1,(x1-C),1,c(x2-C)),nrow=2,ncol=2,byrow=T )
A
b<-matrix(c(p_100,p_101))
b
sol<-solve(A,b)

a0=sol[1]
a1=sol[2]

substitute(a0+ a1*(x-Centre), list(a0=a0,a1=a1,Centre=C))
#solving for new equations
New_p100<- a0+ a1*(x1-C)
cat("New p(100) is: ", signif(New_p100,5))
New_p101<- a0+ a1*(x2-C)
cat("New p(101) is: ", signif(New_p101,5))

#Verifiying the new polynomial values obtained with older values")
all.equal(New_p100,p_100)
all.equal(New_p101,p_101)






