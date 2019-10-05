"""
Created on Sat Oct  5 14:18:22 2019

@author: aswin
"""

#row and column
r = 0
c = 1

#sart, end & obstacle
S = [1,1]
E = [2,3]
O = [1,4]

#row & column difference between S&E and S&O
r_diff = E[r] - S[r]
c_diff = E[c] - S[c]
ob_r = O[r] - S[r]
ob_c = O[c] - S[c]

#right-up
def RU(e,s,o,rw,cl):
    while (not(s[r]==e[r] and s[c]==e[c])): #as long as S hasn't reached E
        if (rw>=cl): #to conserve the number of moves
            if (not(s[r]-1 == o[r] and s[c] == o[c])): #(label-1)
                s[r] = s[r] - 1
                print("U")
                rw = rw - 1
            else: #(label-2)
                if (not(s[r]==e[r] and s[c]==e[c])):
                    if (not(s[r] == o[r] and s[c]+1 == o[c])):
                        s[c] = s[c] + 1
                        print("R")
                        cl = cl - 1
        if (rw<=cl): 
            #soetimes this condition is false but the above one is true
            #But at the same time the condition label-1 may also be false
            #in such a case, the program will run in an infinite loop
            #that is the reason for implementing condition label-2
            if (not(s[r]==e[r] and s[c]==e[c])):
                if (not(s[r] == o[r] and s[c]+1 == o[c])):
                    s[c] = s[c] + 1
                    print("R")
                    cl = cl - 1
                else:
                    if (not(s[r]==e[r] and s[c]==e[c])):
                        if (not(s[r]-1 == o[r] and s[c] == o[c])):
                            s[r] = s[r] - 1
                            print("U")
                            rw = rw - 1
      
#right-down              
def RD(e,s,o,rw,cl):
    while (not(s[r]==e[r] and s[c]==e[c])):
        if (rw>=cl):
            if (not(s[r]+1 == o[r] and s[c] == o[c])):
                s[r] = s[r] + 1
                print("D")
                rw = rw - 1
            else:
                if (not(s[r]==e[r] and s[c]==e[c])):
                    if (not(s[r] == o[r] and s[c]+1 == o[c])):
                        s[c] = s[c] + 1
                        print("R")
                        cl = cl - 1
                    
        if (rw<=cl):
            if (not(s[r]==e[r] and s[c]==e[c])):
                if (not(s[r] == o[r] and s[c]+1 == o[c])):
                    s[c] = s[c] + 1
                    print("R")
                    cl = cl - 1
                else:
                    if (not(s[r]==e[r] and s[c]==e[c])):
                        if (not(s[r]+1 == o[r] and s[c] == o[c])):
                            s[r] = s[r] + 1
                            print("D")
                            rw = rw - 1
                        
        
#left-up    
def LU(e,s,o,rw,cl):
    while (not(s[r]==e[r] and s[c]==e[c])):
        if (rw>=cl):
            if (not(s[r]-1 == o[r] and s[c] == o[c])):
                s[r] = s[r] - 1
                print("U")
                rw = rw - 1
            else:
                if (not(s[r]==e[r] and s[c]==e[c])):
                    if (not(s[r] == o[r] and s[c]-1 == o[c])):
                        s[c] = s[c] - 1
                        print("L")
                        cl = cl - 1
                
        if (rw<=cl):
            if (not(s[r]==e[r] and s[c]==e[c])):
                if (not(s[r] == o[r] and s[c]-1 == o[c])):
                    s[c] = s[c] - 1
                    print("L")
                    cl = cl - 1
                else:
                    if (not(s[r]==e[r] and s[c]==e[c])):
                        if (not(s[r]-1 == o[r] and s[c] == o[c])):
                            s[r] = s[r] - 1
                            print("U")
                            rw = rw - 1
                        
#left-down    
def LD(e,s,o,rw,cl):
    while (not(s[r]==e[r] and s[c]==e[c])):
        if (rw>=cl):
            if (not(s[r]+1 == o[r] and s[c] == o[c])):
                s[r] = s[r] + 1
                print("D")
                rw = rw - 1
            else:
                if (not(s[r]==e[r] and s[c]==e[c])):
                    if (not(s[r] == o[r] and s[c]-1 == o[c])):
                        s[c] = s[c] - 1
                        print("L")
                        cl = cl - 1
            
        if (rw<=cl):
            if (not(s[r]==e[r] and s[c]==e[c])):
                if (not(s[r] == o[r] and s[c]-1 == o[c])):
                    s[c] = s[c] - 1
                    print("L")
                    cl = cl - 1
                    
                else:
                    if (not(s[r]==e[r] and s[c]==e[c])):
                        if (not(s[r]+1 == o[r] and s[c] == o[c])):
                            s[r] = s[r] + 1
                            print("D")
                            rw = rw - 1        

#up    
def U(rw):
    for i in range(rw):
        print("U")

#down    
def D(rw):
    for i in range(rw):
        print("D")
    
#right
def R(cl):
    for i in range(cl):
        print("R")
        
#left
def L(cl):
    for i in range(cl):
        print("L")

#if S&E are in same row
if (r_diff==0):
    if (c_diff>0): #E in the the right
        if (not(ob_r==0 and ob_c>0 and abs(ob_c)<abs(c_diff))): #checking if O is also in the right
            R(abs(c_diff))
        else: #we have to move S to either up or down
            if (S[r]-1 != 0): #checking if S is not on the left extreme
                S[r] = S[r] - 1
                print("U")
                RD(E,S,O,abs(r_diff+1),abs(c_diff))
            else: 
                S[r] = S[r] + 1
                print("D")
                RU(E,S,O,abs(r_diff+1),abs(c_diff))    
    elif (c_diff<0): #E is in the left
        if (not(ob_r==0 and ob_c<0 and abs(ob_c)<abs(c_diff))): #checking if O is also in the left
            L(abs(c_diff))
        else: 
            if (S[r]-1 != 0):
                S[r] = S[r] - 1
                print("U")
                LD(E,S,O,abs(r_diff+1),abs(c_diff))
            else:
                S[r] = S[r] + 1
                print("D")
                LU(E,S,O,abs(r_diff+1),abs(c_diff))
                
#if S&E are in same row
elif (c_diff==0):
    if (r_diff>0): #E is below S
        if (not(ob_r>0 and ob_c==0 and abs(ob_r)<abs(r_diff))): #checking if O is also below S
            D(abs(r_diff))
        else: #we have to move S to either left or right
            if (S[c]-1 != 0): #checking if S is in the extreme top
                S[c] = S[c] - 1
                print("L")
                RD(E,S,O,abs(r_diff),abs(c_diff+1))
            else:
                S[c] = S[c] + 1
                print("R")
                LD(E,S,O,abs(r_diff),abs(c_diff+1))
    elif (r_diff<0): #E is above S
        if (not(ob_r<0 and ob_c==0 and abs(ob_r)<abs(r_diff))): #checking if O is also above S
            U(abs(r_diff))
        else:
            if (S[c]-1!=0):
                S[c] = S[c] - 1
                print("L")
                RU(E,S,O,abs(r_diff),abs(c_diff+1))
            else:
                S[c] = S[c] + 1
                print("R")
                LU(E,S,O,abs(r_diff),abs(c_diff+1))

#E is right-down of S        
elif (r_diff>0 and c_diff>0):
    RD(E,S,O,abs(r_diff),abs(c_diff))
    
#E is right-up of S
elif (r_diff<0 and c_diff>0):
    RU(E,S,O,abs(r_diff),abs(c_diff))
    
#E is left-up of S
elif (r_diff<0 and c_diff<0):
    LU(E,S,O,abs(r_diff),abs(c_diff))
    
#E is left-down of S
elif (r_diff>0 and c_diff<0):
    LD(E,S,O,abs(r_diff),abs(c_diff))
