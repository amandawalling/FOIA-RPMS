ACRFSS5 ;IHS/OIRM/DSD/THL,AEF - EDIT FLIGHT SCHEDULE; [ 11/01/2001   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;;NOV 05, 2001
 ;;CONTINUATION OF ACRFFSS4
EN K ACRQUIT
 N ACRJ
 F  D EN1 Q:$D(ACRQUIT)!$D(ACROUT)
EXIT K ACRAL,ACRAL1,ACRALDA,ACRALCST,ACRALACT,ACRALAR,ACRALCMP,ACRALDAT,ACRDA,ACRY,ACRI,ACRX,ACRQUIT,ACRALDAY,ACRALDCT,ACRALGTR,ACRALLV,ACRALNO,ACRALST
 I $D(^ACRAL("E",ACRDOCDA)) D GOVCC
 Q
EN1 D DISPLAY
 K ACRQUIT
 I ACRJ=0 S DIR(0)="SO^2:Add Airline Flight"
 E  S DIR(0)="SO^1:Edit Airline Flight;2:Add Airline Flight;3:Delete Airline Flight"
 S DIR("A")="Which Option ===> "
 D DIR^ACRFDIC
 Q:$D(ACRQUIT)!$D(ACROUT)
 I Y=1 D EDIT^ACRFSS51 K ACRQUIT Q
 I Y=2 D ADD^ACRFSS51 K ACRQUIT Q
 I Y=3 D DELETE^ACRFSS51 K ACRQUIT Q
 Q
DISPLAY ;EP;
 D HEAD
 S (ACRALDA,ACRJ,ACRALTOT)=0
 I '$D(^ACRAL("E",ACRDOCDA)) D  Q
 .W !?10,"NO AIRLINE FLIGHTS RECORDED FOR THIS TRAVEL ORDER."
 F  S ACRALDA=$O(^ACRAL("E",ACRDOCDA,ACRALDA)) Q:'ACRALDA  D DP1:$D(^ACRAL(ACRALDA,0))
 W !,"---"
 W ?4,"------"
 W ?11,"-------------------"
 W ?31,"----"
 W ?36,"-----"
 W ?42,"----------"
 W ?53,"----"
 W ?58,"---------"
 W ?68,"-----------"
 W !?35,"TOTAL AIRLINE EXPENSE: "
 W ?58,$J($FN(ACRALTOT,"P",2),9)
 I $D(ACRPRT),$E(IOST,1,2)="C-" D PAUSE^ACRFWARN W @IOF
 Q
DP1 S ACRJ=ACRJ+1
 S ACRAL=ACRALDA_U_^ACRAL(ACRALDA,0)
 S ACRAL1=$G(^ACRAL(ACRALDA,"DT"))
 S ACRALDAY=$P(ACRAL,U,2)
 I ACRALDAY'=ACRJ D
 .S DA=ACRALDA
 .S DIE="^ACRAL("
 .S DR=".01///"_ACRJ
 .D DIE^ACRFDIC
 S ACRAL(ACRJ)=ACRAL
 S ACRALDAT=$E($P($P(ACRAL1,U,4),","),4,7)
 S ACRALNO=$P(ACRAL1,U,3),Y=$P(ACRAL1,U,4)
 X ^DD("DD")
 S ACRALLV=$P(Y,"@",2)
 S Y=$P(ACRAL1,U,6)
 X ^DD("DD")
 S ACRALAR=$P(Y,"@",2)
 S ACRALCMP=$S($P(ACRAL1,U,2)]"":$E($P(^ACRACOMP($P(ACRAL1,U,2),0),U),1,18),1:"")
 S ACRALDCT=$S($P(ACRAL1,U,5)]"":$E($P(^ACRPD($P(ACRAL1,U,5),0),U),1,10),1:"")
 S ACRALACT=$S($P(ACRAL1,U,7)]"":$E($P(^ACRPD($P(ACRAL1,U,7),0),U),1,10),1:"")
 S ACRALST=$P(ACRAL1,U,8)
 S ACRALCST=$P(ACRAL1,U,9),ACRALGTR=$P(ACRAL1,U,10)
 W !,ACRJ
 W ?4,ACRALNO
 W ?11,ACRALCMP
 W ?31,ACRALDAT
 W ?36,ACRALLV
 W ?42,ACRALDCT
 W ?53,ACRALST
 W ?58,$J($FN(ACRALCST,"P",2),9)
 W ?68,ACRALGTR
 W !?36,ACRALAR
 W ?42,ACRALACT
 S ACRALTOT=ACRALTOT+ACRALCST
 Q
HEAD I $E(IOST,1,2)="C-" D
 .W @IOF
 .W !?10,@ACRON,"AIRLINE FLIGHTS",@ACROF," FOR DOCUMENT: "
 .W @ACRON,ACRDOC,@ACROF
 W !,"FLT"
 W ?4,"FLT NO"
 W ?11,"AIRLINE"
 W ?31,"DATE"
 W ?36,"LV/AR"
 W ?42,"CITY"
 W ?53,"SEAT"
 W ?58,"COST"
 W ?70,"GTR NO."
 W !,"---"
 W ?4,"------"
 W ?11,"-------------------"
 W ?31,"----"
 W ?36,"-----"
 W ?42,"----------"
 W ?53,"----"
 W ?58,"---------"
 W ?68,"-----------"
 Q
GOVCC ;INDICATE WHETHER AIRLINE TICKET WILL BE CHARGED TO THE TRAVELER'S
 ;GOVERNMENT CREDIT CARD
 S DIR(0)="YO"
 S DIR("A",1)="Charge Airline Ticket to Traveler's"
 S DIR("A")="Government Credit Card"
 S DIR("B")=$S($P($G(^ACRDOC(+$G(ACRDOCDA),"TOAU")),U,5)=1!($P(^ACRSYS(ACRADA,"DT"),U,18)=1):"YES",1:"NO")
 W !
 D DIR^ACRFDIC
 Q:'$D(Y)#2
 S DA=ACRDOCDA
 S DIE="^ACRDOC("
 S DR="130174////"_$S(+Y=1:1,1:0)
 D DIE^ACRFDIC
 Q