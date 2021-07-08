default(parisize, 1200000000) ;
default(echo, 1) ;
/* default(colors, "9, 5, no, no, 4") ; */

/* Note new nomenclature: H0 is what was previously H1 */

H0(n) = sum( k=1, n, 1/k) ;
H1(n) = sum( k=1, n, 1/( k * H0(k) ) ) ;
H2(n) = sum( k=1, n, 1/( k * H0(k) * H1(k) ) ) ;

/*
print1(200      , " ",  H0(200) - log(200), "\n") ;
print1(2000     , " ",  H0(2000) - log(2000), "\n") ;
print1(20000    , " ",  H0(20000) - log(20000), "\n") ;
print1(200000   , " ",  H0(200000) - log(200000), "\n") ;
print1(2000000  , " ",  H0(2000000) - log(2000000), "\n") ;

print1(200      , " ",  H1(200) - log(log(200)), "\n") ;
print1(200      , " ",  H2(200) - log(log(log(200))), "\n") ;

print1(2000     , " ",  H1(2000) - log(log(2000)), "\n") ;
*/


print1(2000     , " ",  H2(2000) - log(log(log(2000))), "\n") ;


/*
print1(20000    , " ",  H1(20000) - log(log(20000)), "\n") ;
*/

print1(20000    , " ",  H2(20000) - log(log(log(20000))), "\n") ;

/*
print1(200000   , " ",  H1(200000) - log(log(200000)), "\n") ;
print1(200000   , " ",  H2(200000) - log(log(log(200000))), "\n") ;


N = 20000 ;
h1 = H1(ceil(exp(1)) - 1) ;
for(n=ceil(exp(1)), N, \
                    h1 = h1 + 1/(n*H0(n)); \
                    gamma1 = h1 - log(log(n)) ; \
                    printf("%d %f\n", n, gamma1); ) 

h2 = H2(ceil(exp(exp(1)))-1) ;
for(n=ceil(exp(exp(1))), N, \
                         h2 = h2 + 1/(n*H0(n)*H1(n)); \
                         gamma2 = h2 - log(log(log(n))) ; \
                         printf("%d %f\n",  n, gamma2); )



L1(n) = sum( k=ceil(exp(1)), n, 1/( k * log(k) ) ) ;
L2(n) = sum( k=ceil(exp(exp(1))), n, 1/( k * log(k) * log(log(k)) ) ) ;
for(n=ceil(exp(1)), N, print1(n, " " , L1(n) - log(log(n)) , "\n")) ;
for(n=ceil(exp(exp(1))), N, print1(n, " " , L2(n) - log(log(log(n))) , "\n")) ;
*/


/* 
 * for(n=1, N, print1(n, " " , H0(n) - log(n) , "\n")) ;
 * for(n=ceil(exp(1)), N, print1(n, " " , H1(n) - log(log(n)) , "\n")) ;
 * for(n=ceil(exp(exp(1))), N, print1(n, " " , H2(n) - log(log(log(n))) , "\n")) ; 
 */

