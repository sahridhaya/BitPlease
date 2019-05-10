#Example 3.10,Section III. Basis and Dimension,page 131
#package used pracma
#install package using command: install.packages("pracma")

#installation and loading library
#install.packages("pracma")
library("pracma")

#program
A <- matrix(c(1,2,1,3,6,3,1,3,1,6,16,6),ncol = 4,nrow = 3)
#finding row reduced echelon form("using gauss-jordan reduction")
rref(A)
#Thus, for a reduced echelon form matrix we can find bases for the row and column spaces in essentially the same way, by taking the parts of the matrix, the rows or columns, containing the leading entries.