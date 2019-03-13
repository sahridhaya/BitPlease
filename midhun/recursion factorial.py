#!/usr/bin/env python
# coding: utf-8

# In[4]:


#function to print factorial of a number
def fact(n):
    if n==0:
        return 1
    else:
        return n* fact(n-1)
    
    
    print (fact(0))
    print (fact(100))


# In[5]:


n =5
print (fact(5))


# In[7]:


n=1000
print (fact(n))


# In[8]:


n=2000
print(fact(n))


# In[9]:


n=3000
print(fact(n))


# In[20]:


import sys
sys.setrecursionlimit(4000)
def fact(n):
    if(n==0):
        return 1
    else:
        return n*fact(n-1)
    


# In[21]:


n=3000
print (fact(n))


# In[ ]:





# In[ ]:




