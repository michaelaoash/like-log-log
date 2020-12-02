default(parisize, 1200000000) ;
default(echo, 1) ;
/* default(colors, "9, 5, no, no, 4") ; */

/* Note new nomenclature: H0 is what was previously H1 */

H0(n) = sum( k=1, n, 1/k) ;

H1(n) = sum( k=1, n, 1/( k * H0(k) ) ) ;
L1(n) = sum( k=ceil(exp(1)), n, 1/( k * log(k) ) ) ;

H2(n) = sum( k=1, n, 1/( k * H0(k) * H1(k) ) ) ;
L2(n) = sum( k=ceil(exp(exp(1))), n, 1/( k * log(k) * log(log(k)) ) ) ;


N = 20000 ;

for(n=1, N, print1(n, " " , H0(n) - log(n) , "\n")) ;
for(n=ceil(exp(1)), N, print1(n, " " , H1(n) - log(log(n)) , "\n")) ;
for(n=ceil(exp(exp(1))), N, print1(n, " " , H2(n) - log(log(log(n))) , "\n")) ;


for(n=ceil(exp(1)), N, print1(n, " " , L1(n) - log(log(n)) , "\n")) ;
for(n=ceil(exp(exp(1))), N, print1(n, " " , L2(n) - log(log(log(n))) , "\n")) ;



