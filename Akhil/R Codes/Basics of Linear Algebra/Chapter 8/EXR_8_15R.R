# Exercise 15    Chapter 8       Page no.: 142
# Determinant of complex matrix


A <- matrix(c(0, complex(real = 1,imaginary = 1), complex(real = 1,imaginary = 2),complex(real = 1,imaginary = -1),0,complex(real = 2,imaginary = -3),complex(real = 1,imaginary = -2),complex(real = 2,imaginary = 3),0), nrow = 3,ncol = 3, byrow = TRUE)
x <- Det(A)
print(x)