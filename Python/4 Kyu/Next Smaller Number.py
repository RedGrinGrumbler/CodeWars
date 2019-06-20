# My Attempt

def next_smaller(n):
    strN = str(n).split()
    prev = 0
    bool = False
    if(len(strN) == 1): return -1 #Is it a single digit?
    else: #Is it already the Smallest?
        for each in strN: 
            #print(each, '>', prev)
            if int(each) >= int(prev): 
                prev = each 
                bool = False
                continue 
            else: 
                print("false")
                bool = True
                break
        if bool == False: return -1
    #It's Possible, Now Find the next smallest
    itr = 0
    i = 1
    for each in reversed(strN):
        if strN[itr] < strN[i]:
            a, b = strN[itr], strN[i]
            strN[b], strN[a] = strN[a], strN[b]
        else: i += 1 
    print(strN)
    pass        
            
            
            
    
