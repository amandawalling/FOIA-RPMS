MCAROE1 ; GENERATED FROM 'MCARECHO1' PRINT TEMPLATE (#3716) ; 11/29/04 ; (FILE 691, MARGIN=80)
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
 I $D(DXS)<9 M DXS=^DIPT(3716,"DXS")
 S I(0)="^MCAR(691,",J(0)=691
 D N:$X>49 Q:'DN  W ?49 W "WARD/CLINIC: "
 S X=$G(^MCAR(691,D0,11)) S Y=$P(X,U,2) S Y=$S(Y="":Y,$D(^SC(Y,0))#2:$P(^(0),U),1:Y) W $E(Y,1,30)
 D N:$X>4 Q:'DN  W ?4 W "AGE: "
 X DXS(1,9) K DIP K:DN Y W X
 D N:$X>49 Q:'DN  W ?49 W "SEX: "
 X DXS(2,9.3) S DIP(201)=$S($D(^DPT(D0,0)):^(0),1:"") S X=$P($P(DIP(202),$C(59)_$P(DIP(201),U,2)_":",2),$C(59),1) S D0=I(0,0) K DIP K:DN Y W X
 D N:$X>4 Q:'DN  W ?4 W "HT IN: "
 S X=$G(^MCAR(691,D0,13)) S Y=$P(X,U,2) W:Y]"" $J(Y,3,0)
 D N:$X>27 Q:'DN  W ?27 W "WT LBS: "
 S Y=$P(X,U,1) W:Y]"" $J(Y,4,0)
 D N:$X>49 Q:'DN  W ?49 X DXS(3,9.2) S X=$S(DIP(2):DIP(3),DIP(4):DIP(5),DIP(6):X) K DIP K:DN Y W X
 S X=$G(^MCAR(691,D0,13)) S Y=$P(X,U,3) W:Y]"" $J(Y,6,2)
 D T Q:'DN  D N D N:$X>4 Q:'DN  W ?4 W "TEST RESULTS:"
 D N:$X>6 Q:'DN  W ?6 X DXS(4,9) K DIP K:DN Y W X
 D N:$X>9 Q:'DN  W ?9 X DXS(5,9) K DIP K:DN Y W X
 D N:$X>24 Q:'DN  W ?24 X DXS(6,9) K DIP K:DN Y W X
 D N:$X>30 Q:'DN  W ?30 X DXS(7,9) K DIP K:DN Y W X
 D N:$X>44 Q:'DN  W ?44 X DXS(8,9) K DIP K:DN Y W X
 D N:$X>59 Q:'DN  W ?59 X DXS(9,9) K DIP K:DN Y W X
 D N:$X>66 Q:'DN  W ?66 X DXS(10,9) K DIP K:DN Y W X
 D N:$X>9 Q:'DN  W ?9 X DXS(11,9) K DIP K:DN Y W X
 D N:$X>24 Q:'DN  W ?24 X DXS(12,9) K DIP K:DN Y W X
 D N:$X>30 Q:'DN  W ?30 X DXS(13,9) K DIP K:DN Y W X
 D N:$X>44 Q:'DN  W ?44 X DXS(14,9) K DIP K:DN Y W X
 D N:$X>59 Q:'DN  W ?59 X DXS(15,9) K DIP K:DN Y W X
 D N:$X>65 Q:'DN  W ?65 X DXS(16,9) K DIP K:DN Y W X
 D N:$X>9 Q:'DN  W ?9 X DXS(17,9.2) S X="% FRACT SHORT: ",X=$S(DIP(3):DIP(4),DIP(5):X) K DIP K:DN Y W X
 D N:$X>24 Q:'DN  W ?24 X DXS(18,9.2) S X=X&Y,DIP(3)=X S X="",DIP(4)=X S X=1,DIP(5)=X S X=DIP(6),X=$S(DIP(3):DIP(4),DIP(5):X) K DIP K:DN Y W X
 D N:$X>32 Q:'DN  W ?32 X DXS(19,9.2) S X=$S(DIP(3):DIP(4),DIP(5):X) K DIP K:DN Y W X
 D N:$X>44 Q:'DN  W ?44 X DXS(20,9) K DIP K:DN Y W X
 D N:$X>59 Q:'DN  W ?59 X DXS(21,9) K DIP K:DN Y W X
 D N:$X>65 Q:'DN  W ?65 X DXS(22,9) K DIP K:DN Y W X
 D N:$X>9 Q:'DN  W ?9 X DXS(23,9) K DIP K:DN Y W X
 D N:$X>24 Q:'DN  W ?24 X DXS(24,9) K DIP K:DN Y W X
 D N:$X>31 Q:'DN  W ?31 X DXS(25,9) K DIP K:DN Y W X
 D N:$X>44 Q:'DN  W ?44 X DXS(26,9) K DIP K:DN Y W X
 D N:$X>59 Q:'DN  W ?59 X DXS(27,9) K DIP K:DN Y W X
 D N:$X>65 Q:'DN  W ?65 X DXS(28,9) K DIP K:DN Y W X
 D N:$X>9 Q:'DN  W ?9 X DXS(29,9) K DIP K:DN Y W X
 D N:$X>24 Q:'DN  W ?24 X DXS(30,9) K DIP K:DN Y W X
 D N:$X>31 Q:'DN  W ?31 X DXS(31,9) K DIP K:DN Y W X
 D N:$X>44 Q:'DN  W ?44 X DXS(32,9) K DIP K:DN Y W X
 D N:$X>59 Q:'DN  W ?59 X DXS(33,9) K DIP K:DN Y W X
 D N:$X>67 Q:'DN  W ?67 X DXS(34,9) K DIP K:DN Y W X
 D N:$X>9 Q:'DN  W ?9 X $P(^DD(691,32.8,0),U,5,99) S DIP(1)=X S X='DIP(1),DIP(2)=X S X="",DIP(3)=X S X=1,DIP(4)=X S X="LV MASS: ",X=$S(DIP(2):DIP(3),DIP(4):X) K DIP K:DN Y W X
 D N:$X>24 Q:'DN  W ?24 X DXS(35,9.2) S X=$J(DIP(6),DIP(7),X),X=$S(DIP(2):DIP(3),DIP(4):X) K DIP K:DN Y W X
 D T Q:'DN  D N D N:$X>6 Q:'DN  W ?6 X DXS(36,9) K DIP K:DN Y W X
 D N:$X>9 Q:'DN  W ?9 X DXS(37,9.2) S X=$S(DIP(2):DIP(3),DIP(4):X) K DIP K:DN Y W X
 D N:$X>33 Q:'DN  W ?33 X DXS(38,9.2) S DIP(4)=X S X="",DIP(5)=X S X=1,DIP(6)=X S X="EF: "_DIP(7)_"%",X=$S(DIP(2):DIP(3),DIP(4):DIP(5),DIP(6):X) K DIP K:DN Y W X
 D N:$X>48 Q:'DN  W ?48 X DXS(39,9.2) S X=$S(DIP(2):DIP(3),DIP(4):X) K DIP K:DN Y W X
 D N:$X>63 Q:'DN  W ?63 X DXS(40,9.2) S X=$S(DIP(2):DIP(3),DIP(4):X) K DIP K:DN Y W X
 D N:$X>35 Q:'DN  W ?35 X DXS(41,9.2) S X=$S(DIP(2):DIP(3),DIP(4):X) K DIP K:DN Y W X
 D N:$X>9 Q:'DN  W ?9 X DXS(42,9.3) S X=$S(DIP(3):DIP(4),DIP(5):X) K DIP K:DN Y W X
 K Y
 Q
HEAD ;
 W !,"--------------------------------------------------------------------------------",!!