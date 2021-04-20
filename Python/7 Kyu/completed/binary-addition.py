# My Submission

def add_binary(a,b):
    cur = a + b
    str = bin(cur)
    return str[2:]

- - - - - - - - - - - - - - - 
Description:

Implement a function that adds two numbers together and returns their sum in binary. The conversion can be done before, or after the addition.

The binary number returned should be a string.

- - - - - - - - - - - - - - - 
#Best Practice - Group Opinion

def add_binary(a,b):
    return bin(a+b)[2:]
    
    
    
#
