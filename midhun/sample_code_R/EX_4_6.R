#EX_4_6
x<-numeric(3)
px<-numeric(3)
derrivative<-numeric(3)
x<-c(2,3,5)#creating the uniform random variable of x
px<-c(1/2,1/6,1/3)#creating the pdf function of x
Ms<-sum(1/2*exp(1)^2,1/6*exp(1)^3,1/3*exp(1)^5)#calculating the transform
Ms
mx<-expression((1/2*exp(1)^(2*s))+(1/6*exp(1)^(3*s))+(1/3*exp(1)^(5*s)))#giving the expression
ex<-D(mx,"s")#finding the first derrivative of expression
ex
ex2<-D(ex,"s")#finding the second derrivative of the expression
ex2
