import random
from collections import Counter

def gummies():
    n = 30
    A = []
    for i in range(0,n):
        A.append("x")

    for i in range(0,n):
        A.append("y")
    
    random.shuffle(A)
    
    #print(A)
    count = 0
    while len(A) > 0:
        p = 0
        c = 0
        B = A[:4]
        
        for i in B:
            if i == "x":
                p += 1
        if p <= 2:
            c = p
        else:
            c = 2
        #print(B)
        #print(c)
        A = A[4:]

        count += c
    #print(A)
    return(count)

#print(gummies())

data = []
rc = 0
for i in range(0,10000):
    m = gummies()
    data.append(m)
    rc += m
print(data)
print(rc/10000)
data = Counter(data)
get_mode = dict(data)
mode = [k for k, v in get_mode.items() if v == max(list(data.values()))]

print(mode)
    

