H1(n) = sum(k=1, n, 1/k) ;
H2(n) = sum(k=1, n, 1/(k * H1(k))) ;

default(parisize, 1200000000)

N = 1000 ;
h2 = 0 ;
for(n=1, N, \
	 h2 = h2 + 1/(n*H1(n)); \
	 d = denominator(h2); \
 	 fd = factor(d); \
	 printf("%5d, f(d):", n);  \
	 print(fd))

