FHINI0DW	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,8738,2)
	;;=2^25.714^^.143
	;;^UTILITY(U,$J,112,8738,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8739,0)
	;;=BF,DESSERT,BANANA APPLE,GERBER SECOND FOOD^BC-02012^4-oz.^113
	;;^UTILITY(U,$J,112,8739,1)
	;;=.265^.177^15.929^66.372^^^^3.54^.088^5.31^6.195^66.372^7.08^.044^.018^.071^^^12.389^.018
	;;^UTILITY(U,$J,112,8739,2)
	;;=.018^.088^^.062^^^^^^^^^1.77
	;;^UTILITY(U,$J,112,8739,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8740,0)
	;;=BF,DESSERT,BANANA PINEAPPLE,BEECH-NUT STAGE 2^BC-02013^4.5-oz.^128
	;;^UTILITY(U,$J,112,8740,1)
	;;=.469^0^21.328^88.281^^^^^^^^^10.156^^^^^39.844^12.5^0
	;;^UTILITY(U,$J,112,8740,2)
	;;=.023^.156
	;;^UTILITY(U,$J,112,8740,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8741,0)
	;;=BF,DESSERT,BANANA PUDDING,HEINZ^BC-02014^jar^128
	;;^UTILITY(U,$J,112,8741,1)
	;;=.781^.469^16.875^75^^^^10.156^.398^^31.25^77.344^11.719^.117^.04^^^46.094^11.719^.008
	;;^UTILITY(U,$J,112,8741,2)
	;;=.031^.156^^.109
	;;^UTILITY(U,$J,112,8741,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8742,0)
	;;=BF,DESSERT,CHERRY VAN PUDDING,GERBER SECOND FOOD^BC-02015^4-oz.^113
	;;^UTILITY(U,$J,112,8742,1)
	;;=.265^.265^16.813^70.796^^^^4.425^.088^2.655^7.08^45.133^8.85^.035^.018^.018^^^0^.018
	;;^UTILITY(U,$J,112,8742,2)
	;;=.018^0^^.009^^^^^^^^^1.77
	;;^UTILITY(U,$J,112,8742,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8743,0)
	;;=BF,DESSERT,COTTAGE CHEESE W/PINEAPPLE,BEECH-NUT STAGE 3^BC-02017^4.5-oz.^128
	;;^UTILITY(U,$J,112,8743,1)
	;;=2.031^.781^19.688^93.75^^^^17.969^^^^^8.824^^^^^^12.5^.031
	;;^UTILITY(U,$J,112,8743,2)
	;;=0
	;;^UTILITY(U,$J,112,8743,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8744,0)
	;;=BF,DESSERT,COTTAGE CHEESE W/PINEAPPLE,BEECH-NUT STAGE 3^BC-02017^4.5-oz.^128
	;;^UTILITY(U,$J,112,8744,1)
	;;=2.031^.781^19.688^93.75^^^^17.969^^^^^^^^^^^12.5^.031
	;;^UTILITY(U,$J,112,8744,2)
	;;=0
	;;^UTILITY(U,$J,112,8744,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8745,0)
	;;=BF,DESSERT,DUTCH APPLE,GERBER THIRD FOOD^BC-02018^6-oz.^170
	;;^UTILITY(U,$J,112,8745,1)
	;;=.118^1^16.941^77.647^^^^2.941^.059^1.765^5.882^37.059^13.529^.012^.012^.018^^^9.412^.012
	;;^UTILITY(U,$J,112,8745,2)
	;;=.018^.059^^.012^^^^^^^^^1.176
	;;^UTILITY(U,$J,112,8745,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8746,0)
	;;=BF,DESSERT,DUTCH APPLE,GERBER SECOND FOOD^BC-02019^4-oz.^113
	;;^UTILITY(U,$J,112,8746,1)
	;;=.177^1.062^16.814^77.876^^^^2.655^.088^1.77^3.54^36.283^14.159^.009^.009^.018^^^12.389^.018
	;;^UTILITY(U,$J,112,8746,2)
	;;=.018^0^^.018^^^^^^^^^.885
	;;^UTILITY(U,$J,112,8746,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8747,0)
	;;=BF,DESSERT,FRUIT,BEECH-NUT STAGE 3^BC-02020^6-oz.^170
	;;^UTILITY(U,$J,112,8747,1)
	;;=0^0^16.529^68.235^^^^^^^^^^^^^^91.176^9.412^.018
	;;^UTILITY(U,$J,112,8747,2)
	;;=.041^.235
	;;^UTILITY(U,$J,112,8747,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8748,0)
	;;=BF,DESSERT,FRUIT,GERBER THIRD FOOD^BC-02021^6-oz.^170
	;;^UTILITY(U,$J,112,8748,1)
	;;=.294^.176^17.647^73.529^^^^7.647^.176^5.294^5.882^75.882^7.059^.041^.024^.3^^^.588^.024
	;;^UTILITY(U,$J,112,8748,2)
	;;=.012^.176^^.041^^^^^^^^^40.588
	;;^UTILITY(U,$J,112,8748,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8749,0)
	;;=BF,DESSERT,FRUIT,BEECH-NUT STAGE 2^BC-02022^4.5-oz.^128
	;;^UTILITY(U,$J,112,8749,1)
	;;=0^0^15.703^64.844^^^^^^^^^^^^^^89.844^12.5^.023
	;;^UTILITY(U,$J,112,8749,2)
	;;=.023^.234
	;;^UTILITY(U,$J,112,8749,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8750,0)
	;;=BF,DESSERT,FRUIT,GERBER SECOND FOOD^BC-02023^4-oz.^113
	;;^UTILITY(U,$J,112,8750,1)
	;;=.354^.177^18.319^76.106^^^^7.08^.088^6.195^7.965^82.301^11.504^.053^.027^.204^^^12.389^.027
	;;^UTILITY(U,$J,112,8750,2)
	;;=.027^.265^^.044^^^^^^^^^6.195
	;;^UTILITY(U,$J,112,8750,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8751,0)
	;;=BF,DESSERT,GUAVA TROPICAL FRUIT,BEECH-NUT STAGE 2^BC-02024^4.5-oz.^128
	;;^UTILITY(U,$J,112,8751,1)
	;;=0^0^18.594^75.781^^^^^^^^^4.688^^^^^60.156^12.5^.008
	;;^UTILITY(U,$J,112,8751,2)
	;;=.008^.313
	;;^UTILITY(U,$J,112,8751,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8752,0)
	;;=BF,DESSERT,HAWAIIAN DELIGHT,GERBER^BC-02026^4-oz.^113