#Example 1     Chapter 9       Page no.: 277
# Polynomial Forms

#Consider the power form of p(x) for n=1, p(x)=a0 + a1*X, 

#Given that p(100)= +3/7, p(101)= -4/7
p_100= 3/7
p_101= -4/7


cat(paste(p_100,"is the given p(100) and",p_101,"is the given p(101)"))


A<- matrix(c(1,100,1,101), nrow=2,ncol=2, byrow=T)
A
b<-matrix(c(p_100,p_101))
b
sol= solve(A,b)
a0<-round(sol[1], 1)
a1<-sol[2]
print(paste("a0 is :",a0 ))
print(paste("a1 is :",a1 ))

#comparing calculated value with given ones
print("power form equation : ")
substitute(a0+a1*x, list(a0=sol[1], a1=sol[2]))

#substitue x=100
x1<-100
substitute(a0+a1*x, list(a0=a0, a1=a1, x=x1))
New_p100 = a0 + (a1*x1)
#substitute x=101
x2<-101
substitute(a0+a1*x, list(a0=a0, a1=a1, x=x2))
New_p101= a0 + (a1*x2)

cat(paste(signif(New_p100,5),"is the new p(100) and", signif(New_p101,5),"is the new p(101)"))



