IBINI038	; ; 21-MAR-1994
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	Q:'DIFQR(352.1)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,352.1)
	;;=^IBE(352.1,
	;;^UTILITY(U,$J,352.1,0)
	;;=BILLABLE APPOINTMENT TYPE^352.1I^10^10
	;;^UTILITY(U,$J,352.1,1,0)
	;;=1^1^2880101^1^0^0
	;;^UTILITY(U,$J,352.1,2,0)
	;;=2^2^2880101^1^0^1
	;;^UTILITY(U,$J,352.1,3,0)
	;;=3^3^2880101^1^1^0
	;;^UTILITY(U,$J,352.1,4,0)
	;;=4^4^2880101^1^0^1
	;;^UTILITY(U,$J,352.1,5,0)
	;;=5^5^2880101^1^0^0
	;;^UTILITY(U,$J,352.1,6,0)
	;;=6^6^2880101^1^0^0
	;;^UTILITY(U,$J,352.1,7,0)
	;;=7^7^2880101^1^0^1
	;;^UTILITY(U,$J,352.1,8,0)
	;;=8^8^2880101^1^0^0
	;;^UTILITY(U,$J,352.1,9,0)
	;;=9^9^2880101^0^1^1
	;;^UTILITY(U,$J,352.1,10,0)
	;;=10^10^2880101^1^1^1