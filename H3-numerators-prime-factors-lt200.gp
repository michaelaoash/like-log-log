odefault(logfile, "H3-numerators-prime-factors-lt200-latex.tex")
default(log, 3) ;
default(parisize, 1200000000) ;
default(echo, 1) ;
/* default(colors, "9, 5, no, no, 4") ; */

H1(n) = sum( k=1, n, 1/k) ;
H2(n) = sum( k=1, n, 1/( k * H1(k) ) ) ;
H3(n) = sum( k=1, n, 1/( k * H1(k) * H2(k) ) ) ;

N = 200 ;
h3 = 0 ;
for(n=1, N, \
	h3 = h3 + 1/(n*H1(n)*H2(n)); \
	myNumerator = numerator(h3); \
  	v2 = valuation(myNumerator,2); \
 	v3 = valuation(myNumerator,3); \
  	v5 = valuation(myNumerator,5); \
 	v7 = valuation(myNumerator,7); \
	v11 = valuation(myNumerator,11); \
	v13 = valuation(myNumerator,13); \
	v17 = valuation(myNumerator,17); \
	v19 = valuation(myNumerator,19); \
	v23 = valuation(myNumerator,23); \
	v29 = valuation(myNumerator,29); \
	v31 = valuation(myNumerator,31); \
	v37 = valuation(myNumerator,37); \
	v41 = valuation(myNumerator,41); \
	v43 = valuation(myNumerator,43); \
	v47 = valuation(myNumerator,47); \
	v53 = valuation(myNumerator,53); \
	v59 = valuation(myNumerator,59); \
	v61 = valuation(myNumerator,61); \
	v67 = valuation(myNumerator,67); \
	v71 = valuation(myNumerator,71); \
	v73 = valuation(myNumerator,73); \
	v79 = valuation(myNumerator,79); \
	v83 = valuation(myNumerator,83); \
	v89 = valuation(myNumerator,89); \
	v97 = valuation(myNumerator,97); \
	v101 = valuation(myNumerator,101); \
	v103 = valuation(myNumerator,103); \
	v107 = valuation(myNumerator,107); \
	v109 = valuation(myNumerator,109); \
	v113 = valuation(myNumerator,113); \
	v127 = valuation(myNumerator,127); \
	v131 = valuation(myNumerator,131); \
	v137 = valuation(myNumerator,137); \
	v139 = valuation(myNumerator,139); \
	v149 = valuation(myNumerator,149); \
	v151 = valuation(myNumerator,151); \
	v157 = valuation(myNumerator,157); \
	v163 = valuation(myNumerator,163); \
	v167 = valuation(myNumerator,167); \
	v173 = valuation(myNumerator,173); \
	v179 = valuation(myNumerator,179); \
	v181 = valuation(myNumerator,181); \
	v191 = valuation(myNumerator,191); \
	v193 = valuation(myNumerator,193); \
	v197 = valuation(myNumerator,197); \
	v199 = valuation(myNumerator,199); \
	printf("%5d, f(numerator): 2^%d 3^%d 5^%d 7^%d 11^%d 13^%d 17^%d 19^%d 23^%d 29^%d 31^%d 37^%d 41^%d 43^%d 47^%d 53^%d 59^%d 61^%d 67^%d 71^%d 73^%d 79^%d 83^%d 89^%d 97^%d 101^%d 103^%d 107^%d 109^%d 113^%d 127^%d 131^%d 137^%d 139^%d 149^%d 151^%d 157^%d 163^%d 167^%d 173^%d 179^%d 181^%d 191^%d 193^%d 197^%d 199^%d\n", n, v2,v3,v5,v7,v11,v13,v17,v19,v23,v29,v31,v37,v41,v43,v47,v53,v59,v61,v67,v71,v73,v79,v83,v89,v97,v101,v103,v107,v109,v113,v127,v131,v137,v139,v149,v151,v157,v163,v167,v173,v179,v181,v191,v193,v197,v199); )

