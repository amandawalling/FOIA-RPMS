FHINI0EE	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,8981,2)
	;;=.078^.469
	;;^UTILITY(U,$J,112,8981,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8982,0)
	;;=BF,VEG,CORN,CREAMED,GERBER SECOND FOOD^BC-02255^4-oz.^113
	;;^UTILITY(U,$J,112,8982,1)
	;;=1.858^.442^12.566^61.947^^^^20.354^.177^11.504^46.903^100.885^8.85^.31^.027^.124^^^0^.018
	;;^UTILITY(U,$J,112,8982,2)
	;;=.044^.531^^.044^^^^^^^^^3.54
	;;^UTILITY(U,$J,112,8982,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8983,0)
	;;=BF,VEG,GARDEN,BEECH-NUT STAGE 2^BC-02256^4.5-oz.^128
	;;^UTILITY(U,$J,112,8983,1)
	;;=2.266^0^8.281^42.188^^^^21.875^.703^^^^9.375^^^^^1970.313^3.906^.039
	;;^UTILITY(U,$J,112,8983,2)
	;;=.07^.703
	;;^UTILITY(U,$J,112,8983,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8984,0)
	;;=BF,VEG,GARDEN,GERBER SECOND FOOD^BC-02257^4-oz.^113
	;;^UTILITY(U,$J,112,8984,1)
	;;=2.389^.442^6.46^39.823^^^^30.088^.796^21.239^41.593^170.796^20.354^.389^.062^.257^^^2.655^.062
	;;^UTILITY(U,$J,112,8984,2)
	;;=.062^.796^^.08^^^^^^^^^538.938
	;;^UTILITY(U,$J,112,8984,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8985,0)
	;;=BF,VEG,GREEN BEANS,BEECH-NUT STAGE 3^BC-02258^6-oz.^170
	;;^UTILITY(U,$J,112,8985,1)
	;;=1.176^0^5^25.882^^^^38.235^1.3^^^^^^^^^440^^.041
	;;^UTILITY(U,$J,112,8985,2)
	;;=.112^.353
	;;^UTILITY(U,$J,112,8985,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8986,0)
	;;=BF,VEG,GREEN BEANS,BEECH-NUT STAGE 2^BC-02259^4.5-oz.^128
	;;^UTILITY(U,$J,112,8986,1)
	;;=1.172^0^4.922^25^^^^39.844^1^^^^^^^^^360.156^^.031
	;;^UTILITY(U,$J,112,8986,2)
	;;=.078^.391
	;;^UTILITY(U,$J,112,8986,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8987,0)
	;;=BF,VEG,GREEN BEANS,GERBER FIRST FOOD^BC-02260^2.5-oz.^71
	;;^UTILITY(U,$J,112,8987,1)
	;;=1.127^.282^6.62^33.803^^^^35.211^.563^26.761^30.986^183.099^1.408^.225^.056^.324^^^0^.042
	;;^UTILITY(U,$J,112,8987,2)
	;;=.085^.282^^.042^^.042^^^^^^^40.845
	;;^UTILITY(U,$J,112,8987,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8988,0)
	;;=BF,VEG,GREEN BEANS,GERBER SECOND FOOD^BC-02261^4-oz.^113
	;;^UTILITY(U,$J,112,8988,1)
	;;=1.416^.265^5.752^30.973^^^^37.168^.531^19.469^27.434^161.947^.885^.204^.044^.31^^^2.655^.035
	;;^UTILITY(U,$J,112,8988,2)
	;;=.071^.354^^.035^^^^^^^^^34.513
	;;^UTILITY(U,$J,112,8988,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8989,0)
	;;=BF,VEG,GREEN BEANS,CREAMED,GERBER THIRD FOOD^BC-02262^6-oz.^170
	;;^UTILITY(U,$J,112,8989,1)
	;;=1.765^.294^9.471^47.059^^^^34.706^.294^12.941^34.706^101.176^8.235^.253^.041^.235^^^0^.024
	;;^UTILITY(U,$J,112,8989,2)
	;;=.059^.235^^.029^^^^^^^^^14.118
	;;^UTILITY(U,$J,112,8989,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8990,0)
	;;=BF,VEG,MIXED,INST,HEINZ^BC-02263^5-tbsp.^14
	;;^UTILITY(U,$J,112,8990,1)
	;;=14.286^14.286^64.286^428.571^^^^85.714^2.143^^221.429^828.571^21.429^1.786^.429^^^11114.286^0^.357
	;;^UTILITY(U,$J,112,8990,2)
	;;=.286^4.286^^.357
	;;^UTILITY(U,$J,112,8990,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8991,0)
	;;=BF,VEG,MIXED,GERBER THIRD FOOD^BC-02264^6-oz.^170
	;;^UTILITY(U,$J,112,8991,1)
	;;=1.353^.235^8^39.412^^^^14.118^.353^11.176^30.588^132.941^18.824^.247^.041^.135^^^0^.035
	;;^UTILITY(U,$J,112,8991,2)
	;;=.024^.588^^.071^^^^^^^^^511.765
	;;^UTILITY(U,$J,112,8991,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8992,0)
	;;=BF,VEG,MIXED,BEECH-NUT STAGE 2^BC-02265^4.5-oz.^128
	;;^UTILITY(U,$J,112,8992,1)
	;;=1.094^0^8.281^40.625^^^^15.625^.398^^^^17.969^^^^^3770.313^1.563^.023
	;;^UTILITY(U,$J,112,8992,2)
	;;=.031^.391
	;;^UTILITY(U,$J,112,8992,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8993,0)
	;;=BF,VEG,MIXED,GERBER SECOND FOOD^BC-02266^4-oz.^113
	;;^UTILITY(U,$J,112,8993,1)
	;;=1.239^.442^8.319^42.478^^^^13.274^.265^11.504^30.088^119.469^18.584^.212^.035^.212^^^0^.035
	;;^UTILITY(U,$J,112,8993,2)
	;;=.018^.265^^.062^^^^^^^^^531.858
	;;^UTILITY(U,$J,112,8993,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8994,0)
	;;=BF,VEG,PEAS,GERBER THIRD FOOD^BC-02267^6-oz.^170
	;;^UTILITY(U,$J,112,8994,1)
	;;=3.588^.412^9.353^55.882^^^^19.412^1^^55.294^79.412^2.941^^^^^^4.118^.094
	;;^UTILITY(U,$J,112,8994,2)
	;;=.071^1.059^^.071^^^^^^^^^39.412
	;;^UTILITY(U,$J,112,8994,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
