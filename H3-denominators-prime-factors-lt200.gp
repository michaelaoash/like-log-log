default(parisize, 1200000000) ;
default(echo, 1) ;
/* default(colors, "9, 5, no, no, 4") ; */

H1(n) = sum( k=1, n, 1/k) ;
H2(n) = sum( k=1, n, 1/( k * H1(k) ) ) ;
H3(n) = sum( k=1, n, 1/( k * H1(k) * H2(k) ) ) ;

N = 50 ;
for(n=1, N, print1(n, " " , H3(n) , "\n")) ;

N = 2000 ;
h3 = 0 ;
for(n=1, N, \
	h3 = h3 + 1/(n*H1(n)*H2(n)); \
	myDenominator = denominator(h3); \
  	v2 = valuation(myDenominator,2); \
 	v3 = valuation(myDenominator,3); \
  	v5 = valuation(myDenominator,5); \
 	v7 = valuation(myDenominator,7); \
	v11 = valuation(myDenominator,11); \
	v13 = valuation(myDenominator,13); \
	v17 = valuation(myDenominator,17); \
	v19 = valuation(myDenominator,19); \
	v23 = valuation(myDenominator,23); \
	v29 = valuation(myDenominator,29); \
	v31 = valuation(myDenominator,31); \
	v37 = valuation(myDenominator,37); \
	v41 = valuation(myDenominator,41); \
	v43 = valuation(myDenominator,43); \
	v47 = valuation(myDenominator,47); \
	v53 = valuation(myDenominator,53); \
	v59 = valuation(myDenominator,59); \
	v61 = valuation(myDenominator,61); \
	v67 = valuation(myDenominator,67); \
	v71 = valuation(myDenominator,71); \
	v73 = valuation(myDenominator,73); \
	v79 = valuation(myDenominator,79); \
	v83 = valuation(myDenominator,83); \
	v89 = valuation(myDenominator,89); \
	v97 = valuation(myDenominator,97); \
	v101 = valuation(myDenominator,101); \
	v103 = valuation(myDenominator,103); \
	v107 = valuation(myDenominator,107); \
	v109 = valuation(myDenominator,109); \
	v113 = valuation(myDenominator,113); \
	v127 = valuation(myDenominator,127); \
	v131 = valuation(myDenominator,131); \
	v137 = valuation(myDenominator,137); \
	v139 = valuation(myDenominator,139); \
	v149 = valuation(myDenominator,149); \
	v151 = valuation(myDenominator,151); \
	v157 = valuation(myDenominator,157); \
	v163 = valuation(myDenominator,163); \
	v167 = valuation(myDenominator,167); \
	v173 = valuation(myDenominator,173); \
	v179 = valuation(myDenominator,179); \
	v181 = valuation(myDenominator,181); \
	v191 = valuation(myDenominator,191); \
	v193 = valuation(myDenominator,193); \
	v197 = valuation(myDenominator,197); \
	v199 = valuation(myDenominator,199); \
	printf("%5d, f(d): 2^%d 3^%d 5^%d 7^%d 11^%d 13^%d 17^%d 19^%d 23^%d 29^%d 31^%d 37^%d 41^%d 43^%d 47^%d 53^%d 59^%d 61^%d 67^%d 71^%d 73^%d 79^%d 83^%d 89^%d 97^%d 101^%d 103^%d 107^%d 109^%d 113^%d 127^%d 131^%d 137^%d 139^%d 149^%d 151^%d 157^%d 163^%d 167^%d 173^%d 179^%d 181^%d 191^%d 193^%d 197^%d 199^%d\n", n, v2,v3,v5,v7,v11,v13,v17,v19,v23,v29,v31,v37,v41,v43,v47,v53,v59,v61,v67,v71,v73,v79,v83,v89,v97,v101,v103,v107,v109,v113,v127,v131,v137,v139,v149,v151,v157,v163,v167,v173,v179,v181,v191,v193,v197,v199); )

