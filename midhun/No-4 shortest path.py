#!/usr/bin/env python
# coding: utf-8

# In[1]:


#function to find the shortest path between two points in a array.
#specify the array
#function to find the distance between the points
#function to find the slope of the line connecting the lines.


# In[2]:


#specify the nested list
list=[[5,6,7,5,8],
      [5,6,3,4,7],
      [6,8,5,7,2],
      [4,6,7,3,2],
      [1,2,4,6,7]]
#Find the shortest distance between 5 at [0][3] and 7 at [3][2]


# In[3]:


#function to find the distance 
y1=4 #y position of first point 
x1=0 #x position of first point
y2=0 #y position of the second point
x2=2 #x position of the second point
def distance(a,b,c,d):
    x=c-a
    y=d-b
    print (x,y)
    return x,y


   


# In[4]:


#function to print the path
def path(a,b):
    e=abs(a)
    f=abs(b)
    if (a>0 and b<0):
        print ("the first point is at the top left of the second point")
        while (e!=0):
            print("u")
            e=e-1
        while(f!=0):
            print('l')
            f=f-1
    
    elif (a>0 and b>0):
        print("the first point is top right to the second point")
        while (e!=0):
            print("u")
            e=e-1
        while(f!=0):
            print('r')
            f=f-1
    elif (a<0 and b<0):
        print ("the first point is down left to second point")
        while (e!=0):
            print("d")
            e=e-1
        while(f!=0):
            print('l')
            f=f-1
    elif (a<0 and b>0):
        print ("the first point is down right to secind point")
        while (e!=0):
            print("d")
            e=e-1
        while(f!=0):
            print('r')
            f=f-1


# In[5]:


d1,d2=distance(x1,y1,x2,y2)
print (d1,d2)
p1=path(d2,d1)


# In[ ]:





# In[ ]:





# In[ ]:




