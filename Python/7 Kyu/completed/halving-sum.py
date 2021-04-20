import math 
def halving_sum(n): 
    total, x = 0, 1
    while math.floor(n/x) > 0:
        total += math.floor(n/x)
        x *= 2
    return total
