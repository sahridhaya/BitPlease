#!/usr/bin/env python
# coding: utf-8

# In[10]:


#input the each row of elemens in a list
matrix=[[1,0,0,0,0,0,0,0,0],
        [2,3,0,0,0,0,0,0,0],
        [4,5,6,0,0,0,0,0,0],
        [7,8,5,4,0,0,0,0,0],
        [6,7,6,5,5,0,0,0,0],
        [6,5,4,4,4,3,0,0,0],
        [6,7,6,7,5,4,4,0,0],
        [3,5,3,7,3,7,3,2,0],
        [4,6,7,3,4,6,7,4,6]]
    
 # matrix in the form of list
print (matrix)
print (len(matrix)) #function to print number of rows in matrix
print(len(matrix[0]))#function to print coloumns in matrix
n= len(matrix)
print(n)
for i in range(n-1,0,-1):
    print(i)
    for j in range(n-1,0,-1):
        print(j)
        if matrix[i][j]>matrix[i][j-1]:
            sum =matrix[i][j]+matrix[i-1][j-1]
            matrix[i-1][j-1] =sum
            print(sum)
        else:
            sum= matrix[i][j-1]+matrix[i-1][j-1]
            print(sum)
            matrix[i-1][j-1]=sum
            
       
   


# In[9]:


n=9
  
matrix=[[1,0,0,0,0,0,0,0,0],
      [2,3,0,0,0,0,0,0,0],
      [4,5,6,0,0,0,0,0,0],
      [7,8,5,4,0,0,0,0,0],
      [6,7,6,5,5,0,0,0,0],
      [6,5,4,4,4,3,0,0,0],
      [6,7,6,7,5,4,4,0,0],
      [3,5,3,7,3,7,3,2,0],
      [4,6,7,3,4,6,7,4,6]]
  

  
      
      
  
  


# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:




