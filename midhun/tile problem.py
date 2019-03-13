#!/usr/bin/env python
# coding: utf-8

# In[19]:


#function to find the number of ways an 2*1 tile can be placed on the n*2 floor area
#given the tile 2*1 in size and the floor area is n*2 in size
#function to find no of ways to fill n*2 floor 
def f(n):
    if n==2:
        return 2
    elif n ==3:
        return 3
    else:
        return f(n-1)+f(n-2)
        print(f(n))

    


# In[21]:


n=5
print(f(n)) 


# In[ ]:




