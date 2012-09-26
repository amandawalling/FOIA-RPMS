AMHEGRCP ; IHS/CMI/LAB - NEW PROGRAM ;
 ;;4.0;IHS BEHAVIORAL HEALTH;**2**;JUN 18, 2010;Build 23
 ;
 ;
 ;GET CPTS
 ;CALLED IN RECORD ADD
EP2 ;EP
 S APCDOVRR=""
 D EN^XBNEW("EP^AMHEGRCP","AMHR;AMHPAT;AMHLOC;AMHDATE;APCDOVRR;AMHGROUP")
 Q
EP ;EP  -  ask for CPT and file each
 I 'AMHR W !!,"NO RECORD DEFINED!!" D XIT Q
 I '$D(^AMHREC(AMHR)) W !!,"NO RECORD!!" D XIT Q
 S APCDOVRR=""
 S AMHDONE="" F  S AMHCPT="" D CPT Q:AMHDONE=1
 D XIT
 Q
CPT ;
 S AMHDT=$P(AMHDATE,".")
 W !!?3,"CPT's currently recorded on this visit:"
 I '$D(^AMHRPROC("AD",AMHR)) S AMHC=0 W "  None recorded" G FM12
 ;D EN^DDIOL("P","","!?3"),EN^DDIOL("Start Date","","?43"),EN^DDIOL("End Date","","?63")
 D EN^DDIOL($$REPEAT^XLFSTR("-",75),"","!?3")
 K AMHCM S X=0,AMHC=0 F  S X=$O(^AMHRPROC("AD",AMHR,X)) Q:X'=+X  D
 .S AMHC=AMHC+1,AMHCM(AMHC)=X
 .W !?2,AMHC,")  ",$$VAL^XBDIQ1(9002011.04,X,.01),?14,$P($$CPT^ICPTCOD($$VAL^XBDIQ1(9002011.04,X,.01)),U,3)
FM12 ;
 D EN^DDIOL("","","!!")
 K DIR
 S DIR(0)="S^A:Add a CPT"_$S(AMHC:";D:Delete an Existing CPT",1:"")_";N:No Change"
 S DIR("A")="Which action",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G FM13
 I Y="N" S AMHDONE=1 G FM13
 S Y="FM"_Y
 D @Y
 G CPT
FM13 ; 
 K Y
 Q
 ;
FMD ;
 D EN^DDIOL("","","!")
 K DIR
 S DIR(0)="N^1:"_AMHC_":0",DIR("A")="Delete Which One" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) Q
 K DIC,DA,DR
 S DA=AMHCM(Y),DIK="^AMHRPROC(" D ^DIK K DA,DIK
 Q
FMA ;
 S DIC("A")="CPT for this patient: ",DIC("S")="D CPT^AMHUTIL1(Y,$S($G(AMHDATE):AMHDATE,$G(AMHR):$P($P($G(^AMHREC(AMHR,0)),U),"".""),1:DT))"
 S DIC="^ICPT(",DIC(0)="AEMQ"
 W ! D ^DIC
 I Y=-1 D ^XBFMK Q
 S AMHCPT=$P(Y,U,2),AMHCPTP=+Y
 ;call FILE^DICN to file this CPT
 ;
 D ^XBFMK
 K DD,D0,DO,DINUM,DIC,DA,DR S DIC(0)="EL",DIC="^AMHRPROC(",DLAYGO=9002011.04,DIADD=1,X=AMHCPTP
 D FILE^DICN K DIC,DR,DIE,DIADD,DLAYGO,X,D0
 I Y=-1 D ^XBFMK,XIT W !!,$C(7),$C(7),"Behavioral Health CPT failed!!  Notify Site Manager." Q
 S AMHRPROC=+Y,AMHCPTR=^AMHRPROC(AMHRPROC,0)
 D ^XBFMK
 S DIE("NO^")="",DA=AMHRPROC,DIE="^AMHRPROC(",DR=".02////"_$G(AMHPAT)_";.03////"_AMHR S DIE("NO^")="" D CALLDIE^AMHLEIN
 S AMHCPTR=^AMHRPROC(AMHRPROC,0)
 Q
 ;
XIT ;
 K DIADD,DLAYGO
 K AMHTX,AMHTY,AMHNARR,AMHLEPT,AMHNUM,AMHCPT,AMHCPTP,AMHCPTR,AMHRPROC,AMHDT,AMHLOOK
 Q