#page - 41
#section - 1.7 SPECIAL KINDS OF MATRICES
#example 11

#matrix A
A <- matrix(c(1,2,3,4,2,5,-6,7,3,-6,8,-9,4,7,-9,0), 4, 4, byrow=TRUE)
A

#matrix B
B <- matrix(c(0,1,2,3,-1,0,-4,5,-2,4,0,6,-3,-5,-6,-0), 4, 4, byrow=TRUE)
A

AT = t(A)
AT

BT = t(B)
BT

#function to compare two matrices

#symmetric check function
matsym <- function(x, y)
	is.matrix(x) && is.matrix(y) && dim(x) == dim(y) && all(x == y)

#skew symmetric check function
matskew <- function(x, y)
	is.matrix(x) && is.matrix(y) && dim(x) == dim(y) && all(x == -y)

#condition check
if(matsym(AT, A)){ 
	print("A is a symmetric matrix")
}else if(matskew(AT, A)){
	print("A is a skew symmetric matrix") 
}else{
	print("none")
}
if(matsym(BT, B)){ 
	print("B is a symmetric matrix")
}else if(matskew(BT, B)){
	print("B is a skew symmetric matrix") 
}else{
	print("none")
}