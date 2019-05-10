#Example 2.2,chapter 5,Section I. Complex Vector Spaces,page 387
a <- complex(real = 1,imaginary = 1)
b <- complex(real = 0,imaginary = 1)
c <- complex(real = 2,imaginary = -0)
d <- complex(real = -2,imaginary = 3)
e <- complex(real = 1,imaginary = 0)
f <- complex(real = 0,imaginary = 3)
g <- complex(real = 1,imaginary = -0)
h <- complex(real = 0,imaginary = -1)
A <- matrix(c(a,b,c,d),ncol = 2)
B <- matrix(c(e,f,g,h),ncol = 2)
A %*% B
