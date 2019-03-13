#!/usr/bin/env python
# coding: utf-8

# In[1]:


#Input Block
x1 = 0
y1 = 3
x2 = 3
y2 = 0
x3 = 0
y3 = -3


# In[3]:


#function to find slope
def slope(a,b,c,d):
    slope=(d-b)/(c-a)
    return slope


# In[ ]:


#function to find angle given slope
import math
def angle(s1,s2):
    theta=math.atan((m1-m2)/(1-(m1*m2)))
    return theta
    


# In[4]:


#function to find the radius given slope
def circumcenter(a1,a2,a3):
    X=(x1*math.sin(2*a1)+x2*math.sin(2*a2)+x3*math.sin(2*a3))/(math.sin(2*a1)+math.sin(2*a2)+math.sin(2*a3))
    Y=(y1*math.sin(2*a1)+y2*math.sin(2*a2)+y3*math.sin(2*a3))/(math.sin(2*a1)+math.sin(2*a2)+math.sin(2*a3))
    return X,Y


# In[5]:


#function to find the circumference given radius
def radius(x1,X,y1,Y):
    radius= math.sqrt(math.pow((x1-x),2)+math.pow((y1-Y),2))
    r=radius
    return r


# In[ ]:


m1=slope(x1,y1,x2,y2)
m2=slope(x2,y2,x3,y3)
m3=slope(x1,y1,x3,y3)
a1=angle(m1,m3)
a2=angle(m1,m2)
a3=angle(m2,m3)
X=circumcenter(a1,a2,a3)
Y=circumcenter(a1,a2,a3)
r=radius(x1,X,y1,Y)



# In[ ]:


#circumference
   cicumference(r)
   pi=3.1415
   cirumference=2*pi*r
   return circumference

