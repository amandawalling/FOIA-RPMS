FHINI07D	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,2567,3)
	;;=.061^.199^.283^.539^.35^.126^.051^.27^.239^.323^.233^.176^.234^.404^1.335^.138^.534^.29
	;;^UTILITY(U,$J,112,2567,4)
	;;=.264^.311^.996^2.547^^1.454^3.872
	;;^UTILITY(U,$J,112,2567,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2568,0)
	;;=FF, ENCHILADA, W/ CHEESE AND BEEF^21-075^enchiladas^192^100^N
	;;^UTILITY(U,$J,112,2568,1)
	;;=6.21^9.19^15.87^168^66.89^^^119^1.6^43^87^299^687^1.4^.27^.304^^591^.7^.05
	;;^UTILITY(U,$J,112,2568,2)
	;;=.21^1.31^.75^.14^100^.53^.681^.042^21^4.712^3.201^.723^74^1.85
	;;^UTILITY(U,$J,112,2568,3)
	;;=.069^.239^.275^.563^.409^.136^.069^.269^.226^.319^.349^.194^.355^.527^1.308^.304^.448^.279
	;;^UTILITY(U,$J,112,2568,4)
	;;=.03^.103^.605^2.373^^1.601^3.201
	;;^UTILITY(U,$J,112,2568,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2569,0)
	;;=FF, ENCHIRITO, W/ CHEESE, BEEF, AND BEANS^21-076^enchiritos^193^100^N
	;;^UTILITY(U,$J,112,2569,1)
	;;=9.27^8.33^17.51^178^62.67^^^113^1.24^37^116^290^648^1.43^.14^.199^^526^2.4^.09
	;;^UTILITY(U,$J,112,2569,2)
	;;=.36^1.55^.95^.11^131^.84^^.17^26^4.118^3.377^.17^69^2.22
	;;^UTILITY(U,$J,112,2569,3)
	;;=.102^.349^.407^.803^.613^.195^.094^.401^.325^.469^.506^.28^.488^.788^1.849^.425^.634^.418
	;;^UTILITY(U,$J,112,2569,4)
	;;=.057^.238^^2.606^^1.217^3.377
	;;^UTILITY(U,$J,112,2569,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2570,0)
	;;=FF, FRIJOLES W/ CHEESE^21-077^cups^167^100^N
	;;^UTILITY(U,$J,112,2570,1)
	;;=6.81^4.66^17.19^135^69.11^^^113^1.34^51^105^362^528^1.04^.204^.301^^273^.9^.08
	;;^UTILITY(U,$J,112,2570,2)
	;;=.2^.89^.66^.12^67^.41^.344^.073^22^2.44^1.567^.417^42^2.23
	;;^UTILITY(U,$J,112,2570,3)
	;;=.078^.258^.307^.523^.455^.111^.061^.337^.21^.351^.359^.189^.25^.711^1.283^.214^.379^.349
	;;^UTILITY(U,$J,112,2570,4)
	;;=.027^.065^.241^1.387^^.721^1.567
	;;^UTILITY(U,$J,112,2570,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2571,0)
	;;=FF, NACHOS, W/ CHEESE^21-078^nachos^16.1^100^N
	;;^UTILITY(U,$J,112,2571,1)
	;;=8.05^16.77^32.15^306^40.45^^^241^1.13^49^244^152^722^1.58^.124^.198^^495^1.1^.17
	;;^UTILITY(U,$J,112,2571,2)
	;;=.33^1.36^1.16^.18^9^.73^1.803^.173^16^6.885^7.074^1.976^81^2.58
	;;^UTILITY(U,$J,112,2571,3)
	;;=.068^.291^.333^.902^.332^.174^.114^.391^.333^.429^.372^.247^.493^.54^1.588^.278^.733^.395
	;;^UTILITY(U,$J,112,2571,4)
	;;=.165^.214^.893^3.648^^1.964^7.074
	;;^UTILITY(U,$J,112,2571,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2572,0)
	;;=FF, NACHOS, W/ CHEESE AND JALAPENO PEPPERS^21-079^nachos^29.1^100^N
	;;^UTILITY(U,$J,112,2572,1)
	;;=8.24^16.74^29.45^298^42.7^^^304^1.2^53^193^144^851^1.42^.085^.215^^1991^.5^.06
	;;^UTILITY(U,$J,112,2572,2)
	;;=.24^1.39^1.2^.18^9^.5^1.8^.173^41^6.872^7.061^1.973^231^2.87
	;;^UTILITY(U,$J,112,2572,3)
	;;=.074^.291^.365^.88^.398^.181^.102^.398^.344^.45^.357^.256^.443^.541^1.69^.249^.767^.409
	;;^UTILITY(U,$J,112,2572,4)
	;;=.165^.213^.891^3.641^^1.961^7.061
	;;^UTILITY(U,$J,112,2572,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2573,0)
	;;=FF, NACHOS, W/ CHEESE, BEANS, GROUND BEEF, AND PEPPERS^21-080^nachos^36.4^100^N
	;;^UTILITY(U,$J,112,2573,1)
	;;=7.76^12.04^21.89^223^55.96^^^151^1.09^38^152^177^706^1.43^.292^.166^^1334^1.9^.09
	;;^UTILITY(U,$J,112,2573,2)
	;;=.27^1.31^.99^.16^15^.4^2.138^.093^8^4.897^4.306^2.231^184^2.35
	;;^UTILITY(U,$J,112,2573,3)
	;;=.077^.279^.347^.75^.438^.166^.086^.36^.301^.414^.358^.235^.39^.575^1.523^.268^.64^.374
	;;^UTILITY(U,$J,112,2573,4)
	;;=.19^.264^.82^2.612^^1.011^4.306
	;;^UTILITY(U,$J,112,2573,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2574,0)
	;;=FF, NACHOS, W/ CINNAMON AND SUGAR^21-081^nachos^15.6^100^N
	;;^UTILITY(U,$J,112,2574,1)
	;;=6.6^33.01^58.16^543^1.01^^^78^2.65^18^30^72^403^.54^.143^.452^^99^7.3^.17
	;;^UTILITY(U,$J,112,2574,2)
	;;=.41^3.6^1.74^.16^7^1.58^3.786^^36^16.707^10.864^3.786^10^1.22
	;;^UTILITY(U,$J,112,2574,3)
	;;=.047^.248^.236^.809^.186^.138^.119^.324^.269^.335^.329^.202^.494^.459^1.238^.271^.576^.313
	;;^UTILITY(U,$J,112,2574,4)
	;;=^^^11.056^^5.651^10.864
	;;^UTILITY(U,$J,112,2574,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2575,0)
	;;=FF, TACO^21-082^tacos^171^100^N
	;;^UTILITY(U,$J,112,2575,1)
	;;=12.08^12.02^15.63^216^58.4^^^129^1.41^41^119^277^469^2.3^.12^.257^^500^1.3^.09
	;;^UTILITY(U,$J,112,2575,2)
	;;=.26^1.88^.99^.14^14^.61^.512^.049^33^6.648^3.846^.561^86^1.87
	;;^UTILITY(U,$J,112,2575,3)
	;;=.134^.447^.565^1.039^.855^.269^.106^.517^.444^.634^.618^.373^.599^.939^2.383^.538^.899^.542
	;;^UTILITY(U,$J,112,2575,4)
	;;=.324^.799^1.017^2.755^^1.754^3.846