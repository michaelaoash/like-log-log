H1(n) = sum(k=1, n, 1/k) ;
H2(m) = sum(n=1, m, 1/(n * H1(n))) ;

valpart(H) = -valuation(H,3) ;
modpart(H) = Mod(  H * 3^(valpart(H)) , 3) ;

m=2000 ;
for(n=1, m, h=H2(n); print1(n, ", ", valpart(h), ", ", modpart(h), "\n" ))
