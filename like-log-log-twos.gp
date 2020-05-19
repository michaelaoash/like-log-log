H1(n) = sum(k=1, n, 1/k) ;
H2(n) = sum(k=1, n, 1/(k * H1(k))) ;

default(parisize, 1200000000)

N = 60000 ;
h2 = 0 ;
for(n=1, N, \
	 h2 = h2 + 1/(n*H1(n)); \
	 d = denominator(h2); \
 	 v2 = valuation(d,2); \
 	 v3 = valuation(d,3); \
	 v5 = valuation(d,5); \
	 v7 = valuation(d,7); \
	 v11 = valuation(d,11); \
	 print1(n, ", twos:", v2, ", threes:", v3, ", fives:", v5, ", sevens:" v7, ", elevens:" v11,  "\n"))
/*	 if(v7!=2 || Mod(n,1000)==0 ,print1(n, ", twos:", v2, ", threes:", v3, ", fives:", v5, ", sevens:" v7, ", elevens:" v11,  "\n"))) */

