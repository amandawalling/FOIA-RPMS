AQAOT74 ; GENERATED FROM 'AQAO REVIEWED WITH SUM' PRINT TEMPLATE (#1298) ; 05/13/96 ; (FILE 9002168.5, MARGIN=80)
 G BEGIN
N W !
T W:$X ! I '$D(DIOT(2)),DN,$D(IOSL),$S('$D(DIWF):1,$P(DIWF,"B",2):$P(DIWF,"B",2),1:1)+$Y'<IOSL,$D(^UTILITY($J,1))#2,^(1)?1U1P1E.E X ^(1)
 S DISTP=DISTP+1,DILCT=DILCT+1 D:'(DISTP#100) CSTP^DIO2
 Q
DT I $G(DUZ("LANG"))>1,Y W $$OUT^DIALOGU(Y,"DD") Q
 I Y W $P("JAN^FEB^MAR^APR^MAY^JUN^JUL^AUG^SEP^OCT^NOV^DEC",U,$E(Y,4,5))_" " W:Y#100 $J(Y#100\1,2)_"," W Y\10000+1700 W:Y#1 "  "_$E(Y_0,9,10)_":"_$E(Y_"000",11,12) Q
 W Y Q
M D @DIXX
 Q
BEGIN ;
 S:'$D(DN) DN=1 S DISTP=$G(DISTP),DILCT=$G(DILCT)
 I $D(DXS)<9 F X=0:0 S X=$O(^DIPT(1298,"DXS",X)) Q:'X  S Y=$O(^(X,"")) F X=X:0 Q:Y=""  S DXS(X,Y)=^(Y),Y=$O(^(Y))
 S X=$G(^AQAO(5,D0,0)) W ?0,$E($P(X,U,1),1,10)
 W ?12 X DXS(1,9.2) S X=$P(DIP(101),U,2) S D0=I(0,0) K DIP K:DN Y W $E(X,1,5)
 S X=$G(^AQAO(5,D0,0)) W ?22 S Y=$P(X,U,14) S Y=$S(Y="":Y,$D(^AQAO(2,Y,0))#2:$P(^(0),U,1),1:Y) W $E(Y,1,7)
 W ?33 S Y=$P(X,U,5) W:Y]"" $S($D(DXS(5,Y)):DXS(5,Y),1:Y)
 W ?47 S Y=$P(X,U,3) D DT
 W ?60 S Y=$P(X,U,4) D DT
 S I(1)="""TEAM""",J(1)=9002168.52 F D1=0:0 Q:$O(^AQAO(5,D0,"TEAM",D1))'>0  X:$D(DSC(9002168.52)) DSC(9002168.52) S D1=$O(^(D1)) Q:D1'>0  D:$X>73 T Q:'DN  D A1
 G A1R
A1 ;
 W ?73 X DXS(2,9.2) S DIP(101)=$S($D(^AQAO1(1,D0,0)):^(0),1:"") S X=$P(DIP(101),U,2) S D0=I(0,0) S D1=I(1,0) K DIP K:DN Y W $E(X,1,4)
 Q
A1R ;
 S X=$G(^AQAO(5,D0,0)) D N:$X>2 Q:'DN  W ?2,$E($P(X,U,7),1,10)
 D N:$X>14 Q:'DN  W ?14 W "Entered on "
 S DIP(1)=$S($D(^AQAO(5,D0,0)):^(0),1:"") S X=$P(DIP(1),U,9) S:X X=$E(X,4,5)_"/"_$E(X,6,7)_"/"_$E(X,2,3) K DIP K:DN Y W $E(X,1,8)
 W "  by "
 X DXS(3,9.2) S X=$P(DIP(101),U,2) S D0=I(0,0) K DIP K:DN Y W $E(X,1,3)
 W "  Closed on "
 S DIP(1)=$S($D(^AQAO(5,D0,0)):^(0),1:"") S X=$P(DIP(1),U,6) S:X X=$E(X,4,5)_"/"_$E(X,6,7)_"/"_$E(X,2,3) K DIP K:DN Y W $E(X,1,8)
 W "  by "
 X DXS(4,9.2) S X=$P(DIP(101),U,2) S D0=I(0,0) K DIP K:DN Y W $E(X,1,3)
 D T Q:'DN  D N D N:$X>24 Q:'DN  W ?24 W "** Indicator Assessment **"
 S I(1)="""IND""",J(1)=9002168.55 F D1=0:0 Q:$O(^AQAO(5,D0,"IND",D1))'>0  S D1=$O(^(D1)) D:$X>52 T Q:'DN  D B1
 G B1R
B1 ;
 S X=$G(^AQAO(5,D0,"IND",D1,0)) S DIWL=1,DIWR=78 D ^DIWP
 Q
B1R ;
 D 0^DIWW K DIP K:DN Y
 D T Q:'DN  D N D N:$X>24 Q:'DN  W ?24 W "** Action Taken **"
 D ^DIWW
 S I(1)="""SUMM""",J(1)=9002168.51 F D1=0:0 Q:$O(^AQAO(5,D0,"SUMM",D1))'>0  S D1=$O(^(D1)) D:$X>44 NX^DIWW D C1
 G C1R
C1 ;
 S X=$G(^AQAO(5,D0,"SUMM",D1,0)) S DIWL=1,DIWR=78 D ^DIWP
 Q
C1R ;
 D 0^DIWW K DIP K:DN Y
 D T Q:'DN  D N D N:$X>24 Q:'DN  W ?24 W "** Performance Measurements **"
 D ^DIWW
 S I(1)="""EVAL""",J(1)=9002168.53 F D1=0:0 Q:$O(^AQAO(5,D0,"EVAL",D1))'>0  S D1=$O(^(D1)) D:$X>24 NX^DIWW D D1
 G D1R
D1 ;
 S X=$G(^AQAO(5,D0,"EVAL",D1,0)) S DIWL=1,DIWR=78 D ^DIWP
 Q
D1R ;
 D 0^DIWW K DIP K:DN Y
 D T Q:'DN  D N D N:$X>24 Q:'DN  W ?24 W "** Action Assessment ** "
 D ^DIWW
 S I(1)="""RPT""",J(1)=9002168.54 F D1=0:0 Q:$O(^AQAO(5,D0,"RPT",D1))'>0  S D1=$O(^(D1)) D:$X>24 NX^DIWW D E1
 G E1R
E1 ;
 S X=$G(^AQAO(5,D0,"RPT",D1,0)) S DIWL=1,DIWR=78 D ^DIWP
 Q
E1R ;
 D 0^DIWW K DIP K:DN Y
 D ^DIWW K Y K DIWF
 Q
HEAD ;
 W !,?60,"PROPOSED"
 W !,?0,"ACTION #",?12,"CATEGORY",?22,"INDICATOR",?33,"STATUS",?47,"IMPLEMENTED",?60,"REVIEW DATE",?73,"TEAM(S)"
 W !,?2,"NEW PLAN #"
 W !,"--------------------------------------------------------------------------------",!!