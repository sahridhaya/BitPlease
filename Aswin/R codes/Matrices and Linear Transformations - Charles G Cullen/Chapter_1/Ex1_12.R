#page - 42
#section - 1.5 TRANSPOSITION
#example 12

#complex matrix A
A <- matrix(c(2, 5*1i , 2-3*1i, -5*1i, 3 , 4, 2+3*1i, 4, 0), 3, 3, byrow=TRUE)
A

#complex matrix B
B <- matrix(c(1i, 3 , 5*1i, -3, 0 , 2+3*1i, 5*1i, , 0), -2+3*1i, 3*1i), 3, 3, byrow=TRUE)
B

#conjugate transpose of complex matrix A, A_
Astar = Conj(t(A))
Astar

#conjugate transpose of complex matrix B, B_
Bstar = Conj(t(B))
Bstar

#function to compare two matrices

#Hermitian matrix check function
matHer <- function(x, y)
	is.matrix(x) && is.matrix(y) && dim(x) == dim(y) && all(x == y)

#skew Hermitian matrix check function
matskewHer <- function(x, y)
	is.matrix(x) && is.matrix(y) && dim(x) == dim(y) && all(x == -y)

#condition check
if(matHer(Astar, A)){ 
	print("A is a Hermitian matrix")
}else if(matskewHer(Astar, A)){
	print("A is a skew Hermitian matrix") 
}else{
	print("none")
}
if(matHer(Bstar, B)){ 
	print("B is a Hermitian matrix")
}else if(matskewHer(Bstar, B)){
	print("B is a skew Hermitian matrix") 
}else{
	print("none")
}
