FHINI047	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,1380,2)
	;;=.023^.165^.113^.129^15^0^.07^.004^0^.031^.027^.073^0^.44^^^1.9
	;;^UTILITY(U,$J,112,1380,3)
	;;=.02^.033^.048^.048^.065^.011^.024^.035^.034^.031^.183^.022^.038^.074^.22^.057^.042^.04
	;;^UTILITY(U,$J,112,1380,4)
	;;=^^.001^.028^^.002^.027
	;;^UTILITY(U,$J,112,1380,20)
	;;=USDA Std. Reference, Release 10;HCF Nutrition Research Foundation, Inc, 1990
	;;^UTILITY(U,$J,112,1381,0)
	;;=ONIONS, YEL, CKD W/SALT^11-805^cups^210^100^N
	;;^UTILITY(U,$J,112,1381,1)
	;;=1.36^.19^10.15^44^87.86^^^22^.24^11^35^166^239^.21^.067^.153^^0^5.2^.042
	;;^UTILITY(U,$J,112,1381,2)
	;;=.023^.165^.113^.129^15^0^.07^.004^0^.031^.027^.073^0^.44^^^1.6
	;;^UTILITY(U,$J,112,1381,3)
	;;=.02^.033^.048^.048^.065^.011^.024^.035^.034^.031^.183^.022^.038^.074^.22^.057^.042^.04
	;;^UTILITY(U,$J,112,1381,4)
	;;=^^.001^.028^^.002^.027
	;;^UTILITY(U,$J,112,1381,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1384,0)
	;;=ONIONS, DEHYDRATED, FLAKED^11-284^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1384,1)
	;;=8.95^.46^83.28^323^3.93^^^257^1.55^92^303^1622^21^1.89^.416^1.389^^0^75^.5
	;;^UTILITY(U,$J,112,1384,2)
	;;=.1^.99^1.38^1.6^166^0^.17^.009^0^.078^.064^.18^0^3.38^^^9.2
	;;^UTILITY(U,$J,112,1384,3)
	;;=.129^.216^.316^.314^.428^.074^.16^.229^.222^.206^1.203^.146^.249^.49^1.445^.372^.279^.263
	;;^UTILITY(U,$J,112,1384,4)
	;;=^^.002^.069^^.006^.064
	;;^UTILITY(U,$J,112,1384,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1385,0)
	;;=ONIONS, GREEN^11-291^onions^15^96^N
	;;^UTILITY(U,$J,112,1385,1)
	;;=1.83^.19^7.34^32^89.83^^^72^1.48^20^37^276^16^.39^.083^.16^^385^18.8^.055
	;;^UTILITY(U,$J,112,1385,2)
	;;=.08^.525^.075^.061^64^^.07^.004^0^.032^.027^.074^39^.81^^^2.6
	;;^UTILITY(U,$J,112,1385,3)
	;;=.02^.072^.077^.109^.091^.02^^.059^.053^.081^.132^.032^.082^.169^.378^.091^.121^.082
	;;^UTILITY(U,$J,112,1385,4)
	;;=^^.001^.028^^.003^.027^^207
	;;^UTILITY(U,$J,112,1385,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1386,0)
	;;=ORANGE PEEL, CANDIED^1441-0^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1386,1)
	;;=.4^.3^80.6^316^17.4^^^0^0^^0^0^0^^^^^0^0^0
	;;^UTILITY(U,$J,112,1386,2)
	;;=0^0^^^^^0^^0^0^^^^1.3
	;;^UTILITY(U,$J,112,1386,4)
	;;=^^^^^^0
	;;^UTILITY(U,$J,112,1386,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1387,0)
	;;=ORANGE AND APRICOT JUICE, CND^14-327^fl oz.^31^100^N
	;;^UTILITY(U,$J,112,1387,1)
	;;=.3^.1^12.7^51^86.7^^^5^.1^4^8^80^2^.05^.035^.004^^580^20^.02
	;;^UTILITY(U,$J,112,1387,2)
	;;=.01^.2^.075^.028^5.8^0^.019^.002^0^.01^.031^.022^58^.2^^^.1
	;;^UTILITY(U,$J,112,1387,4)
	;;=^^^.009^0^.001^.029
	;;^UTILITY(U,$J,112,1387,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1388,0)
	;;=OYSTERS, RAW, MEAT ONLY^15-171^oysters^42.5^100^N
	;;^UTILITY(U,$J,112,1388,1)
	;;=9.45^2.3^4.95^81^82.06^^^8^5.11^22^162^168^106^16.62^1.576^.643^^270^8^.067
	;;^UTILITY(U,$J,112,1388,2)
	;;=.233^2.01^.5^.05^10^16^.032^.032^50^.51^.358^.894^81^1.23^^^0
	;;^UTILITY(U,$J,112,1388,3)
	;;=.106^.407^.411^.665^.706^.213^.124^.339^.302^.413^.689^.181^.572^.912^1.285^.591^.386^.423
	;;^UTILITY(U,$J,112,1388,4)
	;;=^^.082^.357^.114^.071^.191^.038
	;;^UTILITY(U,$J,112,1388,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1389,0)
	;;=OYSTERS, FRIED^15-168^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1389,1)
	;;=8.77^12.58^11.62^197^64.72^^^62^6.95^58^159^244^417^87.13^4.294^.49^^302^3.8^.15
	;;^UTILITY(U,$J,112,1389,2)
	;;=.202^1.65^.27^.064^13.6^15.629^2.44^.156^81^3.197^4.702^3.313^90^1.72
	;;^UTILITY(U,$J,112,1389,3)
	;;=.105^.365^.396^.638^.582^.199^.131^.352^.29^.409^.585^.175^.491^.782^1.495^.493^.47^.429
	;;^UTILITY(U,$J,112,1389,4)
	;;=^^.15^1.91^.092^1.11^4.44^.07
	;;^UTILITY(U,$J,112,1389,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1390,0)
	;;=OYSTERS, CND^15-170^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1390,1)
	;;=7.06^2.47^3.91^69^85.14^^^45^6.7^54^139^229^112^90.95^4.461^.45^^300^5^.15
	;;^UTILITY(U,$J,112,1390,2)
	;;=.166^1.244^.18^.095^8.9^19.133^.049^.037^55^.631^.25^.739^90^1.42^^^0
	;;^UTILITY(U,$J,112,1390,3)
	;;=.079^.304^.307^.497^.528^.159^.093^.253^.226^.308^.515^.136^.427^.681^.961^.442^.288^.316
	;;^UTILITY(U,$J,112,1390,4)
	;;=^^.109^.435^.074^.06^.097^.068
	;;^UTILITY(U,$J,112,1390,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1391,0)
	;;=OYSTERS, FRZ^1447-0^oz.^28.3^^N
	;;^UTILITY(U,$J,112,1391,1)
	;;=6.1^2.2^4.9^76^87.4^^^28^5.6^^124^210^380^^^^^310^30^.14
	;;^UTILITY(U,$J,112,1391,2)
	;;=.18^2.5^^^^^0^^45^0
	;;^UTILITY(U,$J,112,1391,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1392,0)
	;;=SOUP, OYSTER STEW, HOME PREP, 1 PART OYSTER TO 2 PARTS MILK^1451-0^cups^240^100^N