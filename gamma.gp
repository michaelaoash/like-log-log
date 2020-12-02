default(parisize, 1200000000) ;
default(echo, 1) ;
/* default(colors, "9, 5, no, no, 4") ; */

/* Note new nomenclature: H0 is what was previously H1 */

H0(n) = sum( k=1, n, 1/k) ;
H1(n) = sum( k=1, n, 1/( k * H0(k) ) ) ;
H2(n) = sum( k=1, n, 1/( k * H0(k) * H1(k) ) ) ;

N = 20000 ;

for(n=1, N, print1(n, " " , H0(n) - log(n) , "\n")) ;
for(n=ceil(exp(1)), N, print1(n, " " , H1(n) - log(log(n)) , "\n")) ;

h2 = H2(ceil(exp(exp(1)))-1) ;
for(n=ceil(exp(exp(1))), N, \
			 h2 = h2 + 1/(n*H0(n)*H1(n)); \
			 gamma2 = h2 - log(log(log(n))) ; \
			 printf("%d, %f  \n",  n, gamma2); )

