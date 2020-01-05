N  = 8
ntot = 0
for(n in 1:N){
    ktot=0
    for(k in 1:n) {
        ktot =  ktot+1/k
    }
    ntemp = 1/(n*ktot)
    ##    print(ntemp)
    ntot=ntot+ntemp
}
print(ntot)
