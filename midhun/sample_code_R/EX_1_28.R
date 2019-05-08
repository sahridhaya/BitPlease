#EX_1_28
#install.package("prob") #uncomment this line to install package R
#The number of combinations of two out of the four letters
#A, B, C, and D is found by letting n =4and k = 2. 
permsn(4,2)#permutation of 4 letters out of which 2 is taken
combn(4,2)#combination of 4 letters out of which 2 is picked up
ncol(combn(4,2))#number of combinations when 4 letters from which 2 is picked out

