# -*- mode: sage-shell:sage -*-
(i,j,k,m,n) = var('i,j,k,m,n')
H1 = sum(1/k, k, 1, n)
H2 = sum(1/(j*sum(1/k, k, 1, j)), j, 1, n) ;
H3 = sum( 1 / (i*sum(1/(j*sum(1/k, k, 1, j)), j, 1, i)*sum(1/m, m, 1, i)  ), i, 1, n)
H3(n=3)
H3(n=3).expand_sum()
