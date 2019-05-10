#Example 1.11,Section II. page 186
#given map: h(1,0)=(-1,1) and h(0,1)=(-4,4)
#h(3,-2)=h(3*(1,0)-2*(0,1))=3*h(1,0)-2*h(0,1)
a <- c(-1,1) # h(1,0)
b <- c(-4,4) # h(0,1)
3*a-2*b
#the value of h on this argument is a direct consequence of the value of h on the basis vectors.