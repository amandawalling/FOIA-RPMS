LRCAPVM ;DALOI/FHS - ADD WKLD CODES FOR MICRO VERIFICATION ;5/15/00
 ;;5.2T9;LR;**1018**;Nov 17, 2004
 ;;5.2;LAB SERVICE;**49,163,263**;Sep 27, 1994
EN ;
 N LRORG
 Q:'$P(LRPARAM,U,14)!('$P($G(^LRO(68,LRAA,0)),U,16))  S LREND=0
 I $D(LAMIAUTO),$D(LRINST) S LRTS=$S(+$P(^LAB(62.4,LRINST,0),U,16):$P(^(0),U,16),1:LRTS),LRORG=0 I LRTS D
 .  F  S LRORG=$O(^LAH(LRLL,1,LRIFN,3,LRORG)) K LRADD Q:LRORG<1  I $D(^(LRORG,0))#2 S LRGB1=+^(0),GLB="^LAB(61.2,LRGB1,9,A)",LRADD="" D ETIOL^LRCAPV1
 Q:$G(LRMIMASS)
 K GLB F  W !!?10,"(D)isplay (A)dd Work Load " R X:DTIME S X=$E(X) S:'$T!(X=U)!(X="") LREND=1 Q:X="A"!(LREND)  D:X="D" DIS^LRCAPU
 G END:LREND
 S X1="" S LRTIME=$$NOW^LRAFUNC1,LRADD=""
SEL ;
 K DIC,DA S DIC("A")="Which Test ",DIC(0)="AEQNMZ",DIC="^LRO(68,"_LRAA_",1,"_LRAD_",1,"_LRAN_",4,"
 S DA(1)=LRAN,DA(2)=LRAD,DA(3)=LRAA,X1="" F  D ^DIC Q:Y<1  S:$L(X1) X1=X1_","_+Y I '$L(X1) S X1=+Y
 G:'$L(X1) END S X=X1 D RANGE^LRWU2 I '$L(X9) W !,"NOTHING SELECTED " G END
 K DIC S LREND=0,LRSTAR=1,X9=X9_"Q:LREND  D LOAD" X X9 S LREND=0
 G EN
LOAD ;
 Q:'$D(^LAB(60,T1,0))
 I '$P(^LAB(60,T1,0),U,14) W !!?7,"  ** NO EDIT TEMPLATE FOR ",$P(^(0),U),! Q
CODE S LREC=$P(^LAB(60,T1,0),U,14) I '$D(^LAB(62.07,LREC,0)) W !,"ERROR IN ",$P(^LAB(60,T1,0),U) Q
 I '$O(^LAB(62.07,LREC,9,0)) W !!?5,"NO CODE DEFINED FOR THE TEST ",!,$C(7) Q
 W !!?10,"Additional Work load for "_$P(^LAB(60,T1,0),U),!
 S LRT=T1,DIC="^LAB(62.07,"_LREC_",9,",DIC(0)="AEZMNQ"
 F  G:LREND MORE D ^DIC Q:Y<1  S:X=U LREND=1 Q:LREND  S LRP=+Y,LRCODE=$P(Y,U,2),LRCNT=$S($P(Y(0),U,3):$P(Y(0),U,3),1:1) D CNT
 K LRSTAR1,LRCNTD
MORE S LREND=0
 Q
CNT ;
 D  Q:$D(DIRUT)!($D(DTOUT))!($D(DUOUT))
 . N DIR
 . S DIR(0)="NO^0:25:0",DIR("A")=" MULTIPLY BY "
 . I $G(LRCNT),$G(LRCNT)<26 S DIR("B")=+$G(LRCNT)
 . S DIR("?")=$$CJ^XLFSTR("to be used for this procedure.",IOM)
 . S DIR("?",1)=$$CJ^XLFSTR("Enter the WKLD CODE weight multiplier,",IOM)
 . S DIR("?",2)=$$CJ^XLFSTR("enter a number between 1 - 25",IOM)
 . D ^DIR
 S LRCNT=+Y
 I LRCNT<1 W !?5,"No workload added ",! Q
CK Q:'$D(^LRO(68,LRAA,1,LRAD,1,LRAN,4,LRT))  S:'$D(^(LRT,1,0)) ^(0)="^68.14P^" S NODE0=^(0),LRADD="" D STUFE^LRCAPV1 K LRADD
 Q
QUE ;S X="?" D ^DIC G RD
END ;
 K DIC,T1,LRSTAR,LRADD S LREND=0
 Q