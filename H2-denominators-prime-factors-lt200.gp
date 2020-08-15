H1(n) = sum(k=1, n, 1/k) ;
H2(n) = sum(k=1, n, 1/(k * H1(k))) ;

default(parisize, 1200000000)

N = 40000 ;
h2 = 0 ;
for(n=1, N, \
	h2 = h2 + 1/(n*H1(n)); \
	d = denominator(h2); \
  	v2 = valuation(d,2); \
 	v3 = valuation(d,3); \
  	v5 = valuation(d,5); \
 	v7 = valuation(d,7); \
	v11 = valuation(d,11); \
	v13 = valuation(d,13); \
	v17 = valuation(d,17); \
	v19 = valuation(d,19); \
	v23 = valuation(d,23); \
	v29 = valuation(d,29); \
	v31 = valuation(d,31); \
	v37 = valuation(d,37); \
	v41 = valuation(d,41); \
	v43 = valuation(d,43); \
	v47 = valuation(d,47); \
	v53 = valuation(d,53); \
	v59 = valuation(d,59); \
	v61 = valuation(d,61); \
	v67 = valuation(d,67); \
	v71 = valuation(d,71); \
	v73 = valuation(d,73); \
	v79 = valuation(d,79); \
	v83 = valuation(d,83); \
	v89 = valuation(d,89); \
	v97 = valuation(d,97); \
	v101 = valuation(d,101); \
	v103 = valuation(d,103); \
	v107 = valuation(d,107); \
	v109 = valuation(d,109); \
	v113 = valuation(d,113); \
	v127 = valuation(d,127); \
	v131 = valuation(d,131); \
	v137 = valuation(d,137); \
	v139 = valuation(d,139); \
	v149 = valuation(d,149); \
	v151 = valuation(d,151); \
	v157 = valuation(d,157); \
	v163 = valuation(d,163); \
	v167 = valuation(d,167); \
	v173 = valuation(d,173); \
	v179 = valuation(d,179); \
	v181 = valuation(d,181); \
	v191 = valuation(d,191); \
	v193 = valuation(d,193); \
	v197 = valuation(d,197); \
	v199 = valuation(d,199); \
	printf("%5d, f(d): 2^%d 3^%d 5^%d 7^%d 11^%d 13^%d 17^%d 19^%d 23^%d 29^%d 31^%d 37^%d 41^%d 43^%d 47^%d 53^%d 59^%d 61^%d 67^%d 71^%d 73^%d 79^%d 83^%d 89^%d 97^%d 101^%d 103^%d 107^%d 109^%d 113^%d 127^%d 131^%d 137^%d 139^%d 149^%d 151^%d 157^%d 163^%d 167^%d 173^%d 179^%d 181^%d 191^%d 193^%d 197^%d 199^%d\n", n, v2,v3,v5,v7,v11,v13,v17,v19,v23,v29,v31,v37,v41,v43,v47,v53,v59,v61,v67,v71,v73,v79,v83,v89,v97,v101,v103,v107,v109,v113,v127,v131,v137,v139,v149,v151,v157,v163,v167,v173,v179,v181,v191,v193,v197,v199); )

