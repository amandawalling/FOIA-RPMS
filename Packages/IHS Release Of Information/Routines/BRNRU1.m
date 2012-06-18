BRNRU1 ; IHS/OIT/LJF - REPORTING UTILITY SCREEN LOGIC
 ;;2.0;RELEASE OF INFO SYSTEM;*1*;APR 10, 2003
 ;IHS/OIT/LJF 10/19/2007 PATCH 1 Added this routine series and function to patch 1
 ;
ADD ;EP; called by ^BRNRU to use previous report or create a new temporary one
 K BRNCAND
 W !!
 I $D(BRNNCAN) G ADD1
 I $D(BRNSEAT),'$D(BRNEP1) G ADD1
 S DIR(0)="Y",DIR("A")="Do you want to use a PREVIOUSLY DEFINED REPORT",DIR("B")="N" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) S BRNQUIT=1 Q
 I 'Y G ADD1
 S DIC="^BRNRPT("
 S DIC("S")="I $P(^(0),U,2)" S:$D(BRNEP1) DIC("S")=DIC("S")_"&($P(^(0),U,9)=BRNPACK)"
 S DIC(0)="AEQ",DIC("A")="REPORT NAME:  ",D="C"
 D IX^DIC K DIC,DA,DR
 I Y=-1 S BRNQUIT=1 Q
 S BRNRPT=+Y,BRNCAND=1
 ;--- set up sorting and report control variables
 S BRNSORT=$P(^BRNRPT(BRNRPT,0),U,7),BRNSORV=$P(^(0),U,8),BRNSPAG=$P(^(0),U,4),BRNCTYP=$P(^(0),U,5)
 S $P(^BRNRPT(BRNRPT,13),U)=$G(BRNBD),$P(^BRNRPT(BRNRPT,13),U,2)=$G(BRNED)
 S X=0 F  S X=$O(^BRNRPT(BRNRPT,12,X)) Q:X'=+X  S BRNTCW=BRNTCW+$P(^BRNRPT(BRNRPT,12,X,0),U,2)+2
 Q
ADD1 ;
 ;CREATE REPORT ENTRY IN FILEMAN FILE
 S %H=$H D YX^%DTC S X=$P(^VA(200,DUZ,0),U)_"-"_Y
 S DIC(0)="L",DIC="^BRNRPT(",DLAYGO=9001003.8,DIADD=1,DIC("DR")=".13////"_DUZ
 D ^DIC K DIC,DA,DR,DIADD,DLAYGO I Y=-1 W !!,"UNABLE TO CREATE REPORT FILE ENTRY - NOTIFY SITE MANAGER!" S BRNQUIT=1 Q
 S BRNRPT=+Y
 K DIC,DIADD,DLAYGO,DR,DA,DD,X,Y,DINUM
 ;DELETE ALL 11 MULTIPLE HERE
 K ^BRNRPT(BRNRPT,11)
 Q
PAUSE ;EP
 Q:$E(IOST)'="C"!(IO'=IO(0))
 W ! S DIR(0)="EO",DIR("A")="Press enter to continue...." D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 Q
 ;