# Example 8     Chapter 4       Page no.: 73
# Machine Epsilon


b=2
#b-base
q
#q-number of mantissa bits

# 2^(-p) = (1/2)*10^(1-q) - Equation for finding Epsilon value

# we have q = 1+(p-1)log10(2) to find out number of mantissa bits

# assuming p =24
p=24
  
q = 1+(p-1)*log10(2)

cat("value of mantissa=", q)
cat("Because the value of q is",q,"we may say that 
  the computer stores values with",floor(q),"significant places.")