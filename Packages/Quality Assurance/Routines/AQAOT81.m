AQAOT81 ; GENERATED FROM 'AQAO IND DISPLAY-E1' PRINT TEMPLATE (#1274) ; 05/13/96 ; (FILE 9002168.2, MARGIN=80)
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
 I $D(DXS)<9 F X=0:0 S X=$O(^DIPT(1274,"DXS",X)) Q:'X  S Y=$O(^(X,"")) F X=X:0 Q:Y=""  S DXS(X,Y)=^(Y),Y=$O(^(Y))
 D N:$X>12 Q:'DN  W ?12 W "CODE #:"
 S X=$G(^AQAO(2,D0,0)) D N:$X>21 Q:'DN  W ?21,$E($P(X,U,1),1,7)
 D N:$X>39 Q:'DN  W ?39 X DXS(1,9.2) S X=X="ACTIVE",DIP(3)=X S X="",DIP(4)=X S X=1,DIP(5)=X S X="***INACTIVE***",X=$S(DIP(3):DIP(4),DIP(5):X) K DIP K:DN Y W X
 D N:$X>9 Q:'DN  W ?9 W "INDICATOR:"
 S X=$G(^AQAO(2,D0,0)) D N:$X>21 Q:'DN  W ?21,$E($P(X,U,2),1,30)
 D N:$X>7 Q:'DN  W ?7 W "DESCRIPTION:"
 S I(1)="""D""",J(1)=9002168.21 F D1=0:0 Q:$O(^AQAO(2,D0,"D",D1))'>0  S D1=$O(^(D1)) D:$X>21 T Q:'DN  D A1
 G A1R
A1 ;
 S X=$G(^AQAO(2,D0,"D",D1,0)) S DIWL=22,DIWR=78 D ^DIWP
 Q
A1R ;
 D A^DIWW
 D N:$X>13 Q:'DN  W ?13 W "TYPE:"
 S X=$G(^AQAO(2,D0,0)) D N:$X>21 Q:'DN  W ?21 S Y=$P(X,U,4) W:Y]"" $S($D(DXS(26,Y)):DXS(26,Y),1:Y)
 D N:$X>39 Q:'DN  W ?39 X DXS(2,9) K DIP K:DN Y W X
 X DXS(3,9.3) S X=$S(DIP(3):DIP(4),DIP(5):X) K DIP K:DN Y W X
 D N:$X>2 Q:'DN  W ?2 W "REVIEW PERFORMED:"
 S X=$G(^AQAO(2,D0,1)) D N:$X>21 Q:'DN  W ?21 S Y=$P(X,U,1) S Y=$S(Y="":Y,$D(^AQAO(3,Y,0))#2:$P(^(0),U,1),1:Y) W $E(Y,1,40)
 S X=$G(^AQAO(2,D0,0)) D N:$X>59 Q:'DN  W ?59 S Y=$P(X,U,3) W:Y]"" $S($D(DXS(27,Y)):DXS(27,Y),1:Y)
 D N:$X>0 Q:'DN  W ?0 W "MED STAFF FUNCTION:"
 S X=$G(^AQAO(2,D0,1)) D N:$X>21 Q:'DN  W ?21 S Y=$P(X,U,3) W:Y]"" $S($D(DXS(28,Y)):DXS(28,Y),1:Y)
 D N:$X>6 Q:'DN  W ?6 W "KEY FUNCTION:"
 S I(1)="""AOC""",J(1)=9002168.22 F D1=0:0 Q:$O(^AQAO(2,D0,"AOC",D1))'>0  X:$D(DSC(9002168.22)) DSC(9002168.22) S D1=$O(^(D1)) Q:D1'>0  D:$X>21 T Q:'DN  D B1
 G B1R
B1 ;
 S X=$G(^AQAO(2,D0,"AOC",D1,0)) D N:$X>21 Q:'DN  W ?21 S Y=$P(X,U,1) S Y=$S(Y="":Y,$D(^AQAO(1,Y,0))#2:$P(^(0),U,1),1:Y) W $E(Y,1,40)
 W " ["
 X DXS(4,9.4) S X=$S(DIP(103):DIP(104),DIP(105):X) S D0=I(0,0) S D1=I(1,0) K DIP K:DN Y W X
 X DXS(5,9.4) S X=$S(DIP(103):DIP(104),DIP(105):X) S D0=I(0,0) S D1=I(1,0) K DIP K:DN Y W X
 X DXS(6,9.4) S X=$S(DIP(103):DIP(104),DIP(105):X) S D0=I(0,0) S D1=I(1,0) K DIP K:DN Y W X
 W ?21 W "]"
 Q
B1R ;
 D N:$X>8 Q:'DN  W ?8 W "DIMENSIONS:"
 S I(1)="""DIM""",J(1)=9002168.24 F D1=0:0 Q:$O(^AQAO(2,D0,"DIM",D1))'>0  X:$D(DSC(9002168.24)) DSC(9002168.24) S D1=$O(^(D1)) Q:D1'>0  D:$X>21 T Q:'DN  D C1
 G C1R
C1 ;
 S X=$G(^AQAO(2,D0,"DIM",D1,0)) D N:$X>21 Q:'DN  W ?21 S Y=$P(X,U,1) W:Y]"" $S($D(DXS(29,Y)):DXS(29,Y),1:Y)
 Q
C1R ;
 D N:$X>3 Q:'DN  W ?3 W "QI TEAM MEMBERS:"
 S I(1)="""QTM""",J(1)=9002168.25 F D1=0:0 Q:$O(^AQAO(2,D0,"QTM",D1))'>0  X:$D(DSC(9002168.25)) DSC(9002168.25) S D1=$O(^(D1)) Q:D1'>0  D:$X>21 T Q:'DN  D D1
 G D1R
D1 ;
 S X=$G(^AQAO(2,D0,"QTM",D1,0)) D N:$X>21 Q:'DN  W ?21 S Y=$P(X,U,1) S Y=$S(Y="":Y,$D(^AQAO1(1,Y,0))#2:$P(^(0),U,1),1:Y) W $E(Y,1,30)
 Q
D1R ;
 D T Q:'DN  D N D N:$X>29 Q:'DN  W ?29 W "METHODOLOGY"
 D N:$X>29 Q:'DN  W ?29 W "==========="
 S I(1)="""M""",J(1)=9002168.23 F D1=0:0 Q:$O(^AQAO(2,D0,"M",D1))'>0  S D1=$O(^(D1)) D:$X>29 T Q:'DN  D E1
 G E1R
E1 ;
 S X=$G(^AQAO(2,D0,"M",D1,0)) S DIWL=1,DIWR=78 D ^DIWP
 Q
E1R ;
 D A^DIWW
 D T Q:'DN  D N D N:$X>29 Q:'DN  W ?29 W "REVIEW CRITERIA"
 D N:$X>29 Q:'DN  W ?29 W "==============="
 S DIXX(1)="F1",I(0,0)=D0 S I(0,0)=$S($D(D0):D0,1:"") X DXS(7,9.2) S X="" S D0=I(0,0)
 G F1R^AQAOT811
F1 ;
 I $D(DSC(9002169.6)) X DSC(9002169.6) E  Q
 W:$X>29 ! S I(100)="^AQAO1(6,",J(100)=9002169.6
 S X=$G(^AQAO1(6,D0,0)) D N:$X>0 Q:'DN  W ?0,$E($P(X,U,1),1,60)
 D N:$X>62 Q:'DN  W ?62 S Y=$P(X,U,2) W:Y]"" $S($D(DXS(30,Y)):DXS(30,Y),1:Y)
 D N:$X>0 Q:'DN  W ?0 X DXS(8,9.3) S X=$S(DIP(103):DIP(104),DIP(105):X) K DIP K:DN Y W X
 S I(101)="""CD""",J(101)=9002169.61 F D1=0:0 Q:$O(^AQAO1(6,D0,"CD",D1))'>0  X:$D(DSC(9002169.61)) DSC(9002169.61) S D1=$O(^(D1)) Q:D1'>0  D:$X>0 T Q:'DN  D A2
 G A2R
A2 ;
 W "  "
 S X=$G(^AQAO1(6,D0,"CD",D1,0)) S Y=$P(X,U,1) S Y=$S(Y="":Y,$D(^AQAO1(4,Y,0))#2:$P(^(0),U,1),1:Y) W $E(Y,1,6)
 W "  =  "
 X DXS(9,9.2) S DIP(201)=$S($D(^AQAO1(4,D0,0)):^(0),1:"") S X=$P(DIP(201),U,2) S D0=I(100,0) S D1=I(101,0) K DIP K:DN Y W X
 Q
A2R ;
 G ^AQAOT811