ACRPCRT ; GENERATED FROM 'ACR CERTIFICATION' PRINT TEMPLATE (#3881) ; 09/30/09 ; (FILE 9002197.1, MARGIN=80)
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
 S I(0)="^ACRDOCAC(",J(0)=9002197.1
 S I(100)="^ACRAPVC(",J(100)=9002190.8 S I(0,0)=D0 S DIP(1)=$S($D(^ACRDOCAC(D0,0)):^(0),1:"") S X=$P(DIP(1),U,1),X=X S D(0)=+X S D0=D(0) I D0>0 D A1
 G A1R
A1 ;
 S:'$D(DIWF) DIWF="" S:DIWF'["N" DIWF=DIWF_"N" S X="" S I(101)=1,J(101)=9002190.81 F D1=0:0 Q:$O(^ACRAPVC(D0,1,D1))'>0  S D1=$O(^(D1)) D:$X>0 T Q:'DN  D A2
 G A2R
A2 ;
 S X=$G(^ACRAPVC(D0,1,D1,0)) S DIWL=5,DIWR=78 D ^DIWP
 Q
A2R ;
 D 0^DIWW
 D ^DIWW
 Q
A1R ;
 K J(100),I(100) S:$D(I(0,0)) D0=I(0,0)
 S I(100)="^ACRAPVS(",J(100)=9002190 S I(0,0)=D0 S DIP(1)=$S($D(^ACRDOCAC(D0,0)):^(0),1:"") S X=$P(DIP(1),U,3),X=X S D(0)=+X S D0=D(0) I D0>0 D B1
 G B1R
B1 ;
 S X=$G(^ACRAPVS(D0,"DT")) D T Q:'DN  D N D N:$X>3 Q:'DN  W ?3 S Y=$P(X,U,6) S Y(0)=Y S Y=$$NAME2^ACRFUTL1(Y) W $E(Y,1,30)
 S X=$G(^ACRAPVS(D0,"DT")) D N:$X>40 Q:'DN  W ?40 S Y=$P(X,U,4) D DT
 Q
B1R ;
 K J(100),I(100) S:$D(I(0,0)) D0=I(0,0)
 K Y K DIWF
 Q
HEAD ;
 W !,"--------------------------------------------------------------------------------",!!