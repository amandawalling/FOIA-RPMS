IBINI0A5	; ; 21-MAR-1994
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	Q:'DIFQ(399)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^DD(399,12,1,2,"DELETE VALUE")
	;;=NO EFFECT
	;;^DD(399,12,1,2,"FIELD")
	;;=#15
	;;^DD(399,12,1,3,0)
	;;=^^TRIGGER^399^13
	;;^DD(399,12,1,3,1)
	;;=X ^DD(399,12,1,3,1.3) I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"S")):^("S"),1:"") S X=$P(Y(1),U,13),X=X S DIU=X K Y S X=DIV S X=DUZ X ^DD(399,12,1,3,1.4)
	;;^DD(399,12,1,3,1.3)
	;;=K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(0)=X S Y(1)=$S($D(^DGCR(399,D0,"S")):^("S"),1:"") S X=$S('$D(^VA(200,+$P(Y(1),U,13),0)):"",1:$P(^(0),U,1))=""
	;;^DD(399,12,1,3,1.4)
	;;=S DIH=$S($D(^DGCR(399,DIV(0),"S")):^("S"),1:""),DIV=X S $P(^("S"),U,13)=DIV,DIH=399,DIG=13 D ^DICR:$O(^DD(DIH,DIG,1,0))>0
	;;^DD(399,12,1,3,2)
	;;=Q
	;;^DD(399,12,1,3,"CREATE CONDITION")
	;;=FIRST PRINTED BY=""
	;;^DD(399,12,1,3,"CREATE VALUE")
	;;=S X=DUZ
	;;^DD(399,12,1,3,"DELETE VALUE")
	;;=NO EFFECT
	;;^DD(399,12,1,3,"DT")
	;;=2940310
	;;^DD(399,12,1,3,"FIELD")
	;;=FIRST PRINTED BY
	;;^DD(399,12,1,4,0)
	;;=399^AP
	;;^DD(399,12,1,4,1)
	;;=S ^DGCR(399,"AP",$E(X,1,30),DA)=""
	;;^DD(399,12,1,4,2)
	;;=K ^DGCR(399,"AP",$E(X,1,30),DA)
	;;^DD(399,12,1,4,"%D",0)
	;;=^^1^1^2910916^
	;;^DD(399,12,1,4,"%D",1,0)
	;;=Regular cross-reference to be used to speed up reports.
	;;^DD(399,12,1,4,"DT")
	;;=2910916
	;;^DD(399,12,3)
	;;=Enter date on which this bill was first generated.
	;;^DD(399,12,21,0)
	;;=^^1^1^2880831^
	;;^DD(399,12,21,1,0)
	;;=This is the date on which the bill was first printed.
	;;^DD(399,12,"DT")
	;;=2940310
	;;^DD(399,13,0)
	;;=FIRST PRINTED BY^P200'^VA(200,^S;13^Q
	;;^DD(399,13,1,0)
	;;=^.1^^0
	;;^DD(399,13,3)
	;;=Enter user who first generated this bill.
	;;^DD(399,13,5,1,0)
	;;=399^12^3
	;;^DD(399,13,21,0)
	;;=^^1^1^2880831^
	;;^DD(399,13,21,1,0)
	;;=This is the user who first generated this bill.
	;;^DD(399,13,"DT")
	;;=2900921
	;;^DD(399,14,0)
	;;=DATE LAST PRINTED^D^^S;14^S %DT="ETX" D ^%DT S X=Y K:Y<1 X
	;;^DD(399,14,1,0)
	;;=^.1^^-1
	;;^DD(399,14,1,1,0)
	;;=^^TRIGGER^399^.13
	;;^DD(399,14,1,1,1)
	;;=K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,0)):^(0),1:"") S X=$P(Y(1),U,13),X=X S DIU=X K Y S X=DIV S X=4 X ^DD(399,14,1,1,1.4)
	;;^DD(399,14,1,1,1.4)
	;;=S DIH=$S($D(^DGCR(399,DIV(0),0)):^(0),1:""),DIV=X S $P(^(0),U,13)=DIV,DIH=399,DIG=.13 D ^DICR:$N(^DD(DIH,DIG,1,0))>0
	;;^DD(399,14,1,1,2)
	;;=Q
	;;^DD(399,14,1,1,"CREATE VALUE")
	;;=S X=4
	;;^DD(399,14,1,1,"DELETE VALUE")
	;;=NO EFFECT
	;;^DD(399,14,1,1,"FIELD")
	;;=STATUS
	;;^DD(399,14,1,3,0)
	;;=^^TRIGGER^399^15
	;;^DD(399,14,1,3,1)
	;;=K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,"S")):^("S"),1:"") S X=$P(Y(1),U,15),X=X S DIU=X K Y S X=DIV S X=DUZ X ^DD(399,14,1,3,1.4)
	;;^DD(399,14,1,3,1.4)
	;;=S DIH=$S($D(^DGCR(399,DIV(0),"S")):^("S"),1:""),DIV=X S $P(^("S"),U,15)=DIV,DIH=399,DIG=15 D ^DICR:$N(^DD(DIH,DIG,1,0))>0
	;;^DD(399,14,1,3,2)
	;;=Q
	;;^DD(399,14,1,3,"CREATE VALUE")
	;;=S X=DUZ
	;;^DD(399,14,1,3,"DELETE VALUE")
	;;=NO EFFECT
	;;^DD(399,14,1,3,"FIELD")
	;;=LAST GENERATED BY
	;;^DD(399,14,3)
	;;=Enter date on which this bill was last generated.
	;;^DD(399,14,5,1,0)
	;;=399^12^1
	;;^DD(399,14,21,0)
	;;=^^1^1^2880831^
	;;^DD(399,14,21,1,0)
	;;=This is the date on which this bill was last printed.
	;;^DD(399,14,"DT")
	;;=2900116
	;;^DD(399,15,0)
	;;=LAST PRINTED BY^P200'I^VA(200,^S;15^Q
	;;^DD(399,15,1,0)
	;;=^.1^^0
	;;^DD(399,15,3)
	;;=Enter user who generated this bill last.
	;;^DD(399,15,5,1,0)
	;;=399^12^2
	;;^DD(399,15,5,2,0)
	;;=399^14^3
	;;^DD(399,15,21,0)
	;;=^^1^1^2880831^
	;;^DD(399,15,21,1,0)
	;;=This is the user who last printed this bill.
	;;^DD(399,15,"DT")
	;;=2900921
	;;^DD(399,16,0)
	;;=CANCEL BILL?^FOX^^S;16^I $D(X) D YN^IBCU