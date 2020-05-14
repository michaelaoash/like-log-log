H1(n) = sum(k=1, n, 1/k) ;
H2(n) = sum(k=1, n, 1/(k * H1(k))) ;

default(parisize, 1200000000)

N = 40000 ;
h2 = 0 ;
for(n=1, N, \
	 h2 = h2 + 1/(n*H1(n)); \
	 d = denominator(h2); \
	 v5 = valuation(d,5); \
	 v7 = valuation(d,7); \
	 v11 = valuation(d,11); \
	 if(v7!=2 || Mod(n,1000)==0 ,print1(n, ", fives:", v5, ", sevens:" v7, ", elevens:" v11,  "\n")))


/*
valpart(Q) = -valuation(Q,3) ;
modpart(Q) = Mod(  Q * 3^valpart(Q), 3) ;
*/

/*
Mod(denominator(H2(2498)),5)
Mod(denominator(H2(2499)),5)
Mod(denominator(H2(2500)),5)
Mod(denominator(H2(2501)),5) */
