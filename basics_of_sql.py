#!/usr/bin/env python
# coding: utf-8

# In[1]:


#import library to read the file
import pandas as pd


# In[2]:


#read the file using a function from the imported library
df=pd.read_csv('Lending-company.csv')
df


# In[3]:


#import an sql library to use sql commands
import sqlite3
get_ipython().system('pip install ipython-sql')


# In[4]:


#create a connection between both languages


cnn=sqlite3.connect('jupyter_sql.db')


# In[5]:


# convert the file into an sql format
df.to_sql('loan',cnn)


# In[6]:


#load external sql language
get_ipython().run_line_magic('load_ext', 'sql')


# In[7]:


#last step of the set up
get_ipython().run_line_magic('sql', 'sqlite:///jupyter_sql.db')


# from now on i'm going to be adding comment to each line of code using
# (--) for a sigle line of comment and (/*) for long lines of comments.
# this is how to add comment in sql command if you are wondering why

# In[8]:


get_ipython().run_cell_magic('sql', '', 'SELECT *\nFROM loan\n\n/*now load the data')


# In[9]:


get_ipython().run_cell_magic('sql', '', 'SELECT CustomerGender,Deposit\nFROM loan\n/* you can do basic commands using sql such as select from')


# In[10]:


get_ipython().run_cell_magic('sql', '', 'SELECT DISTINCT Location \nFROM loan\n\n--using the distinct statement')


# In[11]:


get_ipython().run_cell_magic('sql', '', 'SELECT *\nFROM loan\nWHERE AmtPaid36=2260\nORDER BY Region\n\n--using the orderby and where statement')


# In[12]:


get_ipython().run_cell_magic('sql', '', "SELECT *\nFROM loan\nWHERE Location='Location 3'\nLIMIT 5\n\n--using the limit statement")


# In[13]:


get_ipython().run_cell_magic('sql', '', 'SELECT AmtPaid36,\n       AmtPaid36,\n       AmtPaid36 + AmtPaid36 AS Total_amount\nFROM loan\n\n/*arithemetic operation of columns to create a new column')


# In[14]:


get_ipython().run_cell_magic('sql', '', 'SELECT *\nFROM loan\nWHERE AmtPaid60 IN (3205,4096)\n\n--using logical operators with numbers')


# In[15]:


get_ipython().run_cell_magic('sql', '', "SELECT *\nFROM loan\nWHERE CustomerGender LIKE ('Female')\nLIMIT 20\n\n\n--using logical operators with alphabet")


# In[16]:


df.to_csv('basic_sql.csv')
#finally save your work


# In[ ]:




