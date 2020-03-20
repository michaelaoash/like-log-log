H1(n) = sum(k=1, n, 1/k) ;
H2(m) = sum(n=1, m, 1/(n * H1(n))) ;

valpart(H) = -valuation(H,3) ;
modpart(H,val) = Mod(  H * 3^val, 3) ;

m=50 ;
for(n=1, m, h=H2(n); fd = factor(denominator(h)); print1(n, ", ", fd, "\n" ))

/* m=20 ;
for(n=1, m, h=H2(n); fn = factor(numerator(h)); fd = factor(denominator(h)); print1(n, ", ", fn, ", ", fd, "\n" )) */

/* m=1000 ;
for(n=1, m, h=H2(n); v = valpart(h); print1(n, ", ", v, ", ", modpart(h,v), "\n" )) */

