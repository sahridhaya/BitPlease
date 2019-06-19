#Example 1, page 2
#Director of a trust fund has $100,000 to invest.the rules state that both certificate of deposit(CD) and long term must be used. the director's goal is to yield $7800 on its investment for the year. The CD chosen returns 5% per annum and the bond 9%. Determination of amount of x to invest in CD and amount of y in nbond is as follows:
#total investment: x + y =100,000
#total return: 0.05x + 0.09y =7800
A <- matrix(c(1,1,0.05,0.09),2,2,T)
b <- matrix(c(100000,7800),2,1,T)
#value of x and y are: 
solve(A,b)









