AGSEE7 ; IHS/ASDS/EFG - ;  
 ;;7.1;PATIENT REGISTRATION;;AUG 25,2005
 ;
 Q:AGOPT(5)'="Y"
VAR S AG("PG")=7,(AG("I"),AG("TOTAL"))=0,DA=DFN K AG("EDIT")
 I '$D(^AUPNPRVT(DFN,0)) D ^AGED Q
L3 W !
 S DIC=9000006.11
 S AG("TOTAL")=0
 F AG("I")=1:1 S AG("DRENT")=AG("I"),DR=.02 D ^AGDICLK Q:$D(AG("LKERR"))  S AG("TOTAL")=AG("TOTAL")+1,AG(AG("TOTAL"))=$P(AGL,",",3)
 S AG("I")=0
 I AG("TOTAL")=0 D ^AGED Q
L4 S AG("I")=AG("I")+1
 D ^AGED W !!,"Policy #",AG("I")," of ",AG("TOTAL"),!!
 S (AG("DRENT1"),AG("D1"))=AG(AG("I"))
 S DR=.01,DIC=9000006.11,AG("N")=1,AG("L")="INSURER" D DATA
 S DR=.02,AG("DRENT1")=AG("D1"),AG("N")=2,AG("L")="POLICY NUMBER" D DATA
 S DR=.03,AG("DRENT1")=AG("D1"),AG("N")=3,AG("L")="COVERAGE" D DATA
 S DR=.04,AG("DRENT1")=AG("D1"),AG("N")=4,AG("L")="NAME OF INSURED" D DATA
 S DR=.05,AG("DRENT1")=AG("D1"),AG("N")=5,AG("L")="RELATIONSHIP" D DATA
 S DR=.06,AG("DRENT1")=AG("D1"),AG("N")=6,AG("L")="ELIG. DATE" D DATA
 S DR=.07,AG("DRENT1")=AG("D1"),AG("N")=7,AG("L")="ELIG. END DATE" D DATA
 W !
 Q:AG("I")=AG("TOTAL")
 W !,AGLINE("EQ")
 W !?32,"Press RETURN  "
 D READ^AGED1
 G L4
DATA W !,AG("N"),".",?22-$L(AG("L")),AG("L"),":" D ^AGDICLK Q:$D(AG("LKERR"))  W ?26,AG("LKPRINT") Q