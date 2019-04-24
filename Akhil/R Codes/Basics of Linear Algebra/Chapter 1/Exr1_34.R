# Exercise:34     Chapter: 1    Page No.: 15
# Matrix Trigonometic multiplication


k<-1 #By providing value of first angle as PI
y<-1 #By providing value of second angle as PI
a <- matrix(c(cospi(k),sinpi(k),-sinpi(k), cospi(k)), nrow=2,ncol=2,byrow = TRUE)
b <- matrix(c(cospi(y),sinpi(y),-sinpi(y), cospi(y)), nrow=2,ncol=2,byrow = TRUE)
d <- print(a %*% b)
