IBINI0C4	; ; 21-MAR-1994
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	Q:'DIFQR(399.5)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,399.5,259,0)
	;;=2911001^1^1^242^1^opc
	;;^UTILITY(U,$J,399.5,260,0)
	;;=2911001^1^101^147^1^i
	;;^UTILITY(U,$J,399.5,261,0)
	;;=2911001^1^240^50^1^i
	;;^UTILITY(U,$J,399.5,262,0)
	;;=2911001^1^960^45^1^i
	;;^UTILITY(U,$J,399.5,263,0)
	;;=2911001^2^1^533^1^opc
	;;^UTILITY(U,$J,399.5,264,0)
	;;=2911001^2^101^199^1^i
	;;^UTILITY(U,$J,399.5,265,0)
	;;=2911001^2^240^263^1^i
	;;^UTILITY(U,$J,399.5,266,0)
	;;=2911001^2^960^71^1^i
	;;^UTILITY(U,$J,399.5,267,0)
	;;=2911001^6^1^204^1^opc
	;;^UTILITY(U,$J,399.5,268,0)
	;;=2911001^6^101^166^1^i
	;;^UTILITY(U,$J,399.5,269,0)
	;;=2911001^6^240^29^1^i
	;;^UTILITY(U,$J,399.5,270,0)
	;;=2911001^6^960^9^1^i
	;;^UTILITY(U,$J,399.5,271,0)
	;;=2911001^11^1^628^1^c
	;;^UTILITY(U,$J,399.5,272,0)
	;;=2911001^11^1^661^1^op
	;;^UTILITY(U,$J,399.5,273,0)
	;;=2911001^11^101^389^1^i
	;;^UTILITY(U,$J,399.5,274,0)
	;;=2911001^11^240^194^1^i
	;;^UTILITY(U,$J,399.5,275,0)
	;;=2911001^11^960^78^1^i
	;;^UTILITY(U,$J,399.5,276,0)
	;;=2911001^7^500^30^1^c
	;;^UTILITY(U,$J,399.5,277,0)
	;;=2911001^7^500^148^1^iop
	;;^UTILITY(U,$J,399.5,278,0)
	;;=2911001^8^250^20^1^iop
	;;^UTILITY(U,$J,399.5,279,0)
	;;=2911201^3^1^609^1^o
	;;^UTILITY(U,$J,399.5,280,0)
	;;=2911201^12^1^871^1^o
	;;^UTILITY(U,$J,399.5,281,0)
	;;=2911201^11^1^583^1^o
	;;^UTILITY(U,$J,399.5,282,0)
	;;=2911201^2^1^469^1^o
	;;^UTILITY(U,$J,399.5,283,0)
	;;=2911201^5^1^516^1^o
	;;^UTILITY(U,$J,399.5,284,0)
	;;=2911201^10^1^419^1^o
	;;^UTILITY(U,$J,399.5,285,0)
	;;=2911201^9^1^261^1^o
	;;^UTILITY(U,$J,399.5,286,0)
	;;=2911201^4^1^220^1^o
	;;^UTILITY(U,$J,399.5,287,0)
	;;=2911201^6^1^180^1^o
	;;^UTILITY(U,$J,399.5,288,0)
	;;=2911201^1^1^214^1^o
	;;^UTILITY(U,$J,399.5,289,0)
	;;=2911201^7^500^131^1^o
	;;^UTILITY(U,$J,399.5,290,0)
	;;=2911201^8^250^19^1^o
	;;^UTILITY(U,$J,399.5,291,0)
	;;=2921001^3^1^802^1^opc
	;;^UTILITY(U,$J,399.5,292,0)
	;;=2921001^3^101^450^1^i
	;;^UTILITY(U,$J,399.5,293,0)
	;;=2921001^3^960^155^1^i
	;;^UTILITY(U,$J,399.5,294,0)
	;;=2921001^3^240^197^1^i
	;;^UTILITY(U,$J,399.5,295,0)
	;;=2921001^12^1^1164^1^opc
	;;^UTILITY(U,$J,399.5,296,0)
	;;=2921001^12^101^642^1^i
	;;^UTILITY(U,$J,399.5,297,0)
	;;=2921001^12^960^218^1^i
	;;^UTILITY(U,$J,399.5,298,0)
	;;=2921001^12^240^304^1^i
	;;^UTILITY(U,$J,399.5,299,0)
	;;=2921001^9^1^410^1^opc
	;;^UTILITY(U,$J,399.5,300,0)
	;;=2921001^9^101^291^1^i
	;;^UTILITY(U,$J,399.5,301,0)
	;;=2921001^9^960^55^1^i
	;;^UTILITY(U,$J,399.5,302,0)
	;;=2921001^9^240^64^1^i
	;;^UTILITY(U,$J,399.5,303,0)
	;;=2921001^4^1^317^1^opc
	;;^UTILITY(U,$J,399.5,304,0)
	;;=2921001^4^101^227^1^i
	;;^UTILITY(U,$J,399.5,305,0)
	;;=2921001^4^960^46^1^i
	;;^UTILITY(U,$J,399.5,306,0)
	;;=2921001^4^240^44^1^i
	;;^UTILITY(U,$J,399.5,307,0)
	;;=2921001^5^1^712^1^opc
	;;^UTILITY(U,$J,399.5,308,0)
	;;=2921001^5^101^397^1^i
	;;^UTILITY(U,$J,399.5,309,0)
	;;=2921001^5^960^88^1^i
	;;^UTILITY(U,$J,399.5,310,0)
	;;=2921001^5^240^227^1^i
	;;^UTILITY(U,$J,399.5,311,0)
	;;=2921001^10^1^566^1^opc
	;;^UTILITY(U,$J,399.5,312,0)
	;;=2921001^10^101^327^1^i
	;;^UTILITY(U,$J,399.5,313,0)
	;;=2921001^10^960^66^1^i
	;;^UTILITY(U,$J,399.5,314,0)
	;;=2921001^10^240^173^1^i
	;;^UTILITY(U,$J,399.5,315,0)
	;;=2921001^1^1^337^1^opc
	;;^UTILITY(U,$J,399.5,316,0)
	;;=2921001^1^101^204^1^i
	;;^UTILITY(U,$J,399.5,317,0)
	;;=2921001^1^960^63^1^i
	;;^UTILITY(U,$J,399.5,318,0)
	;;=2921001^1^240^70^1^i
	;;^UTILITY(U,$J,399.5,319,0)
	;;=2921001^2^1^644^1^opc
	;;^UTILITY(U,$J,399.5,320,0)
	;;=2921001^2^101^241^1^i
	;;^UTILITY(U,$J,399.5,321,0)
	;;=2921001^2^960^86^1^i
	;;^UTILITY(U,$J,399.5,322,0)
	;;=2921001^2^240^317^1^i
	;;^UTILITY(U,$J,399.5,323,0)
	;;=2921001^6^1^227^1^opc