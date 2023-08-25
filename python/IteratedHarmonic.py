from fractions import Fraction
from math import log, exp, ceil
from tabulate import tabulate


## Thanks to Noah Rousell (Brown CS Concentrator), Rafi's friend, for help with the recursion
## h_alt() builds and uses a lookup table H to avoid redundant calculations
def h_alt(j,n):
    if H[j][n]==None:
        sumTemp = 0
        for k in range(n,0,-1):
            productTemp = 1
            for i in range(j, 0, -1):
                productTemp = productTemp * h_alt(i-1, k)
            sumTemp = sumTemp + Fraction(1, productTemp)
        H[j][n] = sumTemp
        return sumTemp
    else:
        return H[j][n]

## Initialize the lookup table for h_alt()
j = 8
n = 1000
H = [None] * j
for i in range(j):
    H[i] = [None] * n

    
def h(j,n):
    sumTemp = 0
    for k in range(n,0,-1):
        productTemp = 1
        for i in range(j, 0, -1):
            productTemp = productTemp * h(i-1, k)
        sumTemp = sumTemp + Fraction(1, productTemp)
    return sumTemp



def iterated_log(j,n):
    for i in range(j,0,-1):
        if i > 1:
            return log(iterated_log(i-1,n))
        else:
            return log(n)

        
# Find lower bound for summation ceil(j-2^^e)
def a(j):
    if j <= 2:
        return j
    else:
        running = 1 
        for k in range(j-2,0,-1):
            running = exp(running)
        return ceil(running)
        

def l(j,n):
    sumTemp = 0
    for k in range(n,a(j)-1,-1):
        productTemp = 1
        for i in range(j-1, 0, -1):
            productTemp = productTemp * iterated_log(i, k)
        sumTemp = sumTemp + 1 / ( k * productTemp )
    return sumTemp




        
h(2,6)
h(2,9)
h(2,11)
        

data = [['h_1(1)',str(h(1,1)), ''],
        ['h_1(2)',str(h(1,2)), str(h(1,2)-h(1,1))],
        ['h_1(3)',str(h(1,3)), str(h(1,3)-h(1,2))],
        ['h_1(4)',str(h(1,4)), str(h(1,4)-h(1,3))],
        ['h_1(5)',str(h(1,5)), str(h(1,5)-h(1,4))],
        ['h_1(6)',str(h(1,6)), str(h(1,6)-h(1,5))],
        ['h_1(7)',str(h(1,7)), str(h(1,7)-h(1,6))]]

print("\n")
print(tabulate(data, headers=["term","value", "increment"]))

data = [['h_2(1)',str(h(2,1)), ''],
        ['h_2(2)',str(h(2,2)), str(h(2,2)-h(2,1))],
        ['h_2(3)',str(h(2,3)), str(h(2,3)-h(2,2))],
        ['h_2(4)',str(h(2,4)), str(h(2,4)-h(2,3))],
        ['h_2(5)',str(h(2,5)), str(h(2,5)-h(2,4))],
        ['h_2(6)',str(h(2,6)), str(h(2,6)-h(2,5))],
        ['h_2(7)',str(h(2,7)), str(h(2,7)-h(2,6))],
        ['h_2(8)',str(h(2,8)), str(h(2,8)-h(2,7))],
        ['h_2(9)',str(h(2,9)), str(h(2,9)-h(2,8))],
        ['h_2(10)',str(h(2,10)), str(h(2,10)-h(2,9))],
        ['h_2(11)',str(h(2,11)), str(h(2,11)-h(2,10))],
        ['h_2(12)',str(h(2,12)), str(h(2,12)-h(2,11))],
        ['h_2(13)',str(h(2,13)), str(h(2,13)-h(2,12))],
        ['h_2(14)',str(h(2,14)), str(h(2,14)-h(2,13))],
        ['h_2(15)',str(h(2,15)), str(h(2,15)-h(2,14))],
        ['h_2(16)',str(h(2,16)), str(h(2,16)-h(2,15))]]
        

print("\n")
print(tabulate(data, headers=["term","value", "increment"]))

data = [['h_3(1)',str(h(3,1)), ''],
        ['h_3(2)',str(h(3,2)), str(h(3,2)-h(3,1))],
        ['h_3(3)',str(h(3,3)), str(h(3,3)-h(3,2))],
        ['h_3(4)',str(h(3,4)), str(h(3,4)-h(3,3))],
        ['h_3(5)',str(h(3,5)), str(h(3,5)-h(3,4))],
        ['h_3(6)',str(h(3,6)), str(h(3,6)-h(3,5))],
        ['h_3(7)',str(h(3,7)), str(h(3,7)-h(3,6))]]

print("\n")
print(tabulate(data, headers=["term","value", "increment"]))

data = [['h_4(1)',str(h(4,1)), ''],
        ['h_4(2)',str(h(4,2)), str(h(4,2)-h(4,1))],
        ['h_4(3)',str(h(4,3)), str(h(4,3)-h(4,2))],
        ['h_4(4)',str(h(4,4)), str(h(4,4)-h(4,3))],
        ['h_4(5)',str(h(4,5)), str(h(4,5)-h(4,4))],
        ['h_4(6)',str(h(4,6)), str(h(4,6)-h(4,5))],
        ['h_4(7)',str(h(4,7)), str(h(4,7)-h(4,6))]]

print("\n")
print(tabulate(data, headers=["term","value", "increment"]))


data = [['h_5(1)',str(h(5,1)), ''],
        ['h_5(2)',str(h(5,2)), str(h(5,2)-h(5,1))],
        ['h_5(3)',str(h(5,3)), str(h(5,3)-h(5,2))],
        ['h_5(4)',str(h(5,4)), str(h(5,4)-h(5,3))],
        ['h_5(5)',str(h(5,5)), str(h(5,5)-h(5,4))],
        ['h_5(6)',str(h(5,6)), str(h(5,6)-h(5,5))],
        ['h_5(7)',str(h(5,7)), str(h(5,7)-h(5,6))]]

print("\n")
print(tabulate(data, headers=["term","value", "increment"]))


print("\n")
print(float(h(1,30)) - log(30))


print("\n")
print(float(h_alt(1,999)) - log(999))

print("\n")
print(float(h_alt(2,999)) - log(log(999)))





## Beneish:
## h_j(n+1) - h_j(n) = h_n(j+1) - h_n(j)

## j=3,n=2
print("\n")
print(h(3,3) - h(3,2))
print(h(2,4) - h(2,3))

## j=4,n=2
print("\n")
print(h(4,3) - h(4,2))
print(h(2,5) - h(2,4))

## j=4,n=3
print("\n")
print(h(4,4) - h(4,3))
print(h(3,5) - h(3,4))






## Problems with the curves (Figure 2)
## The problem is that the h() term is not between the ln() terms after a point
## Goes bad at k=13
## OK
print(1/(7*log(7)))
print(float(1/(h(1,6) * 6)))
print(1/(8*log(8)))

## OK
print(1/(8*log(8)))
print(float(1/(h(1,7) * 7)))
print(1/(9*log(9)))

## OK
print(1/(9*log(9)))
print(float(1/(h(1,8) * 8)))
print(1/(10*log(10)))

## OK
print(1/(10*log(10)))
print(float(1/(h(1,9) * 9)))
print(1/(11*log(11)))

## OK
print(1/(11*log(11)))
print(float(1/(h(1,10) * 10)))
print(1/(12*log(12)))

## OK
print(1/(12*log(12)))
print(float(1/(h(1,11) * 11)))
print(1/(13*log(13)))

## Not OK
print(1/(13*log(13)))
print(float(1/(h(1,12) * 12)))
print(1/(14*log(14)))

## Not OK
print(1/(14*log(14)))
print(float(1/(h(1,13) * 13)))
print(1/(15*log(15)))

## Not OK
print(1/(15*log(15)))
print(float(1/(h(1,14) * 14)))
print(1/(16*log(16)))


## Asymptotic approximations

print(l(1,100000) - log(100000))
print(l(1,1000000) - log(1000000))
print(l(1,10000000) - log(10000000))
## Takes a long time (c. 2 minutes)
## print(l(1,100000000) - log(100000000))
## 0.5772156699010793

print(l(2,100000) - log(log(100000)))
print(l(2,1000000) - log(log(1000000)))
print(l(2,10000000) - log(log(10000000)))
## Takes a long time (c. 5 minutes)
## print(l(2,100000000) - log(log(100000000)))
## 0.7946786457242387

print(l(3,100000) - log(log(log(100000))))
print(l(3,1000000) - log(log(log(1000000))))
## 4.66387880045819

print(l(4,100000) - log(log(log(log(100000)))))
print(l(4,1000000) - log(log(log(log(1000000)))))
## 4.602238715985824
