LRQCC ; IHS/DIR/FJE - QUALITY CONTROL FOR BULL ALGORITHM 2/6/91 14:28 ;
 ;;5.2;LR;**1019**;MAR 25, 2005
 ;;      ;;5.2;LR;**1013**;JUL 15, 2002
 ;
 ;;5.2;LAB SERVICE;;Sep 27, 1994
 S DIC="^LRO(68,",DIC(0)="AEOQ" D ^DIC Q:Y<1  S LRAA=+Y
 S %DT="AE" W !,"START FROM" D ^%DT Q:Y<0  S LRSDT=Y-1
C2 S DIC("A")="Select INSTRUMENT: ",DIC("S")="I $D(^(5))",DIC="^LAB(62.4," D ^DIC K DIC Q:Y<1  S LRMACH=+Y,LRMC=^LAB(62.4,LRMACH,5)
 I '$P(^LAB(62.4,LRMACH,5),U,2)!('$P(^(5),U,3))!('$P(^(5),U,4)) W "   ??",$C(7),!,"Mean data values are missing in the AUTO INSTRUMENT file for this instrument." G LREND
 S %ZIS="Q" D ^%ZIS G LREND:POP
 I $D(IO("Q")) S ZTRTN="DQ^LRQCC" F I="LRMACH","LRMC","LRSDT","LRAA" S ZTSAVE(I)=""
 I $D(IO("Q")) K IO("Q") D ^%ZTLOAD W:$D(ZTSK) !,"REQUEST QUEUED" G END
DQ U IO D LIST D ^%ZISC
END K %,A,DIC,I,K,N,X,Y,Z,LRMACH,LRMC,LRSDT,LRAA,DIC,%ZIS,ZTRTN,ZTIO,ZTDESC,ZTSAVE,ZTSK Q
LABULL Q:'$D(LRBULL)  K LRBULL Q:'$D(LRMACH)  Q:'$D(^LAB(62.4,LRMACH,5))
 L +^LRO(68,LRAA,1,DT,3,LRMACH)
 S N=20,U="^",LRTODAY=DT,X1=DT,X2=-1 D C^%DTC S LRSDT=X
 IF $D(^LRO(68,LRAA,1,LRTODAY,3,LRMACH,0)) G C4
 S %DT="",X="T-1" D ^%DT IF '$D(^LRO(68,LRAA,1,Y,3,LRMACH,0)) G C3
 S LRNS=1+$P(^LRO(68,LRAA,1,Y,3,LRMACH,1,0),U,4) IF +^(LRNS,0)'=N S ^LRO(68,LRAA,1,LRTODAY,3,LRMACH,1,1,0)=^LRO(68,LRAA,1,Y,3,LRMACH,1,LRNS,0) K ^LRO(68,LRAA,1,Y,3,LRMACH,1,LRNS,0) G C3A
 ;;now set 'count' and 'previous x' = ""
C3 S ^LRO(68,LRAA,1,LRTODAY,3,LRMACH,1,1,0)=""
C3A S ^LRO(68,LRAA,1,LRTODAY,3,LRMACH,0)=^LAB(62.4,LRMACH,5),^LRO(68,LRAA,1,LRTODAY,3,0)="^68.07PA^",^(LRMACH,1,0)="^68.08A^"
C4 S LRMC=^LRO(68,LRAA,1,LRTODAY,3,LRMACH,0),B=1+$P(^(1,0),U,4) G LREND:'$D(^(B,0))!'$D(^LR(LRDFN,"CH",LRIDT,388))
 ;;now set x = 'previous x' + ($S(val<0:-1,1:1) * SQRT(val - grand mean))
 S LREND=0 F I=2:1:4 S LRMP=386+I,LRSI=1 S:'$D(^LR(LRDFN,"CH",LRIDT,LRMP)) LREND=1 Q:LREND  S X=$P(^(LRMP),U,1)-$P(LRMC,U,I) S:X<0 LRSI=-1,X=-X D SQRT S LRMM(I)=$J($P(^LRO(68,LRAA,1,LRTODAY,3,LRMACH,1,B,0),U,I)+(LRSI*Y),0,6)
 ;;now set count = 1 + count and store calculated values
 G LREND:LREND S ^(0)=(1+^LRO(68,LRAA,1,LRTODAY,3,LRMACH,1,B,0))_U_LRMM(2)_U_LRMM(3)_U_LRMM(4)
 ;;if count is less than 20, done for now
 I +^LRO(68,LRAA,1,LRTODAY,3,LRMACH,1,B,0)<N G LREND
 ;;set mean = grand mean + $S(x<0:-1,1:1) * ((x/20)**2)
 F I=2:1:4 S LRSI=1 S:$P(^LRO(68,LRAA,1,LRTODAY,3,LRMACH,1,B,0),U,I)<0 LRSI=-1 S LRMM(I)=$P(LRMC,U,I)+(LRSI*($P(^(0),U,I)/N)*($P(^(0),U,I)/N))
 S LRNEW=B F I=2:1:4 S LRNEW=LRNEW_U_$J(LRMM(I),4,1)
 ;;back to initial conditions, x and count = ""
 S ^LRO(68,LRAA,1,LRTODAY,3,LRMACH,1,0)="^68.08A^"_B_U_B,^(B,0)=LRNEW,^LRO(68,LRAA,1,LRTODAY,3,LRMACH,1,B+1,0)=""
LIST W !,"DATE",?18,"MCV",?40,"MCH",?62,"MCHC",!,?12 F I=1:1:3 W "#     DELTA     %     "
C5 S LRSDT=$O(^LRO(68,LRAA,1,LRSDT)),N=20,U="^" G:LRSDT<1 LREND
 G:'$D(^LRO(68,LRAA,1,LRSDT,3,LRMACH,0)) C5 S N=+$P(^LRO(68,LRAA,1,LRSDT,3,LRMACH,1,0),U,4)
 ;----- BEGIN IHS MODIFICATIONS LR*5.2*1019 IHS/ITSC/MKK
 ; F I=1:1:N S LROLD=^LRO(68,LRAA,1,LRSDT,3,LRMACH,1,I,0) W !,$E(LRSDT,2,7) F J=2:1:4 W ?((J-2)*22+12),$P(LROLD,U,J),?((J-2)*22+18),$J($P(LROLD,U,J)-$P(LRMC,U,J),4,1),?((J-2)*22+24),$J($P(LROLD,U,J)-$P(LRMC,U,J)/$P(LRMC,U,J)*100,5,1)
 F I=1:1:N   D
 . S LROLD=^LRO(68,LRAA,1,LRSDT,3,LRMACH,1,I,0)
 . W !,$E(LRSDT,2,7)
 . F J=2:1:4  D
 .. W ?((J-2)*22+12),$P(LROLD,U,J)
 .. W ?((J-2)*22+18),$J($P(LROLD,U,J)-$P(LRMC,U,J),4,1)
 .. ; There is the possibility that $P(LRMC,U,J) can be zero, so a check has been added
 .. W:+$P(LRMC,U,J)'=0 ?((J-2)*22+24),$J($P(LROLD,U,J)-$P(LRMC,U,J)/$P(LRMC,U,J)*100,5,1)
 ;----- END IHS MODIFICATIONS LR*5.2*1019 IHS/ITSC/MKK
 G C5
SQRT ;Y=SQRT(X)
 S Y=0 Q:X'>0  S Y=X+1/2
L S T=Y,Y=X/T+T/2 G L:Y<T
 Q
LREND LOCK -^LRO(68,LRAA,1,DT,3,LRMACH)
 K %,A,DIC,I,K,N,X,Y,Z,LRMM,LRMC,LRSI,T,LRSDT,LROLD,LRTODAY
 K %DT,%H,%ZA,%ZB,%ZC,B,LRMP,LRNEW,LRNS,POP,X1,X2,ZTSAVE,ZTSK
 Q