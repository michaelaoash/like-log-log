from fractions import Fraction
from math import log

def h0(n):
    h0 = 0
    for k in range(n,0,-1):
        h0 = h0 + Fraction(1,1)
    return h0

def h1(n):
    h1 = 0
    for k in range(n,0,-1):
        h1 = h1 + Fraction(1, h0(k))
    return h1

def h2(n):
    h2 = 0
    for k in range(n,0,-1):
        h2 = h2 + Fraction(1, h1(k)*h0(k))
    return h2 

def h3(n):
    h3 = 0
    for k in range(n,0,-1):
        h3 = h3 + Fraction(1, h2(k)*h1(k)*h0(k))
    return h3

def h4(n):
    h4 = 0
    for k in range(n,0,-1):
        h4 = h4 + Fraction(1, h3(k)*h2(k)*h1(k)*h0(k))
    return h4

def h5(n):
    h5 = 0
    for k in range(n,0,-1):
        h5 = h5 + Fraction(1, h4(k)*h3(k)*h2(k)*h1(k)*h0(k))
    return h5

## Beneish:
## h_j(n+1) - h_j(n) = h_n(j+1) - h_n(j)


## j=3,n=2
print(h3(3) - h3(2))
print(h2(4) - h2(3))

## j=4,n=2
print(h4(3) - h4(2))
print(h2(5) - h2(4))

## j=4,n=3
print(h4(4) - h4(3))
print(h3(5) - h3(4))

