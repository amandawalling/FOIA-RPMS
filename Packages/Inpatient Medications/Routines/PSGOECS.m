PSGOECS ;BIR/CML3-CANCEL SELECTED ORDERS ;02 Mar 99 / 9:29 AM
 ;;5.0; INPATIENT MEDICATIONS ;**23,29,44,58,81**;16 DEC 97
 ;
 ; Reference to FULL^VALM1 is supported by DBIA# 10116.
 ; Reference to ^PS(55 is supported by DBIA# 2191.
 ; Reference to ^PSSLOCK is supported by DBIA #2789.
 ;
AM ;
 W !,"...marking ",$P(X,U),"..." S $P(^PS(55,PSGP,5,DA,4),"^",11,14)="^1^"_DUZ_"^"_PSGDT,PSGAL("C")=13040 W "." D ^PSGAL5 W "."
 I $D(PSJSYSO) S PSGORD=+PSGORD_"A",PSGPOSA="C",PSGPOSD=PSGDT D ENPOS^PSGVDS
 Q
 ;
NM ;
 W !,"...marking ",$P(X,U),"..." S $P(^PS(53.1,DA,4),"^",11,14)="^1^"_DUZ_"^"_PSGDT W "."
 I $D(PSJSYSO) S PSGORD=+PSGORD_"N",PSGPOSD=PSGDT,PSGPOSA="C" D ENPOS^PSGVDS
 Q
 ;
AC ; discontinue active order
 K DA S DA(1)=PSGP,DA=+PSGORD
 S X=$G(^PS(55,PSGP,5,DA,.2))
 I $P(X,U,4)="D" W !,$P($$DRUGNAME^PSJLMUTL(DFN,PSGORD),U,1),!,"NO ACTION WAS TAKEN ON DONE ORDER",!,$C(7) HANG 1 Q 
 NEW XX S XX=$P(^PS(55,PSGP,5,DA,0),U,9)
 I $S(XX="E":1,XX="D":1,XX="DE":1,1:0) W !,$P($$DRUGNAME^PSJLMUTL(DFN,PSGORD),U,1),!,"NO ACTION WAS TAKEN ON "_$$CODES^PSIVUTL(XX,55.06,28)_" ORDER",!,$C(7) HANG 1 Q
 S X=$$DRUGNAME^PSJLMUTL(PSGP,PSGORD)
 I '$P(PSJSYSP0,"^",5) D AM Q
 W !,"...discontinuing ",$P(X,U),"...",! S PSGAL("C")=PSJSYSU*10+4000 D ^PSGAL5
 S PSGALR=20,DIE="^PS(55,"_PSGP_",5,",DR="28////D;Q;34////"_PSGDT_$S(PSJSYSU:"",1:";49////1"),DP=55.06,$P(^(2),"^",3)=$P(^PS(55,PSGP,5,DA,2),"^",4) D ^DIE S ^PS(55,"AUE",PSGP,DA)=""
 D EN1^PSJHL2(PSGP,"OD",PSGORD) S DA(1)=PSGP,DA=+PSGORD
 I PSJSYSL S $P(^PS(55,PSGP,5,DA,7),"^",1,2)=PSGDT_"^D",PSGTOL=2,PSGUOW=DUZ,PSGTOO=1 D ENL^PSGVDS
 Q
 ;
NC ; discontinue non-verifed order
 K DA S DA=+PSGORD,X=$G(^PS(53.1,DA,.2)),X=$$DRUGNAME^PSJLMUTL(PSGP,PSGORD)
 I $S($P(PSJSYSP0,"^",5):0,'$D(^PS(53.1,DA,4)):1,1:$P(^(4),"^",7)'=DUZ) D NM Q
 W !,"...discontinuing ",$P(X,U),"...",! S DIE="^PS(53.1,",DR="28////D"_$S(PSJSYSU:"",1:";42////1") D ^DIE
 D EN1^PSJHL2(PSGP,"OC",PSGORD)
 S DA=+PSGORD I PSJSYSL,PSJSYSL<3 S $P(^PS(53.1,DA,7),"^",1,2)=PSGDT_"^D",PSGTOO=2,PSGUOW=DUZ,PSGTOL=2 D ENL^PSGVDS
 Q
 ;
EN ; enter here
 I $G(PSJIVPRF) D ^PSIVSPDC Q  ;Use for Speed DC in IV Order Profile
 D FULL^VALM1
EN1 ;
 S (PSGONC,PSGLMT)=PSJOCNT,PSGONW="C" D ENWO^PSGON I "^"[X K X G RESET
 D NOW^%DTC S PSGDT=+$E(%,1,12)
 W ! F PSGOECS=1:1:PSGODDD F PSGOECS1=1:1 S PSGOECS2=$P(PSGODDD(PSGOECS),",",PSGOECS1) Q:'PSGOECS2  D
 .S PSGORD=^TMP("PSJON",$J,PSGOECS2) ; I $P($G(@($S((PSGORD["A")!(PSGORD["U"):"^PS(55,"_PSGP_",5,",(PSGORD["V"):"^PS(55,"_PSGP_",""IV"",",1:"^PS(53.1,")_(+PSGORD)_",0)")),"^",21) Q
 S PSJNOO=$$ENNOO^PSJUTL5("D") G:PSJNOO<0 EN1
 ;Prompt for requesting provider
 W ! I '$$REQPROV^PSGOEC G EN1
 W !
 ;
 ;F PSGOECS=1:1:PSGODDD F PSGOECS1=1:1 S PSGOECS2=$P(PSGODDD(PSGOECS),",",PSGOECS1) Q:'PSGOECS2  S (ON,PSGORD)=^TMP("PSJON",$J,PSGOECS2) D:(PSGORD["U") AC D:(PSGORD["P") NC D:(PSGORD["V") SPDCIV^PSIVSPDC
 ;Replaced above line with block structure below.
 S EXITLOOP=0
 F PSGOECS=1:1:PSGODDD D
 .F PSGOECS1=1:1 D  Q:EXITLOOP=1
 ..S PSGOECS2=$P(PSGODDD(PSGOECS),",",PSGOECS1)
 ..I 'PSGOECS2 S EXITLOOP=1 Q
 ..S (ON,PSGORD)=^TMP("PSJON",$J,PSGOECS2)
 ..I '$$LS^PSSLOCK(DFN,PSGORD) W !,$P($$DRUGNAME^PSJLMUTL(DFN,PSGORD),"^",1),!,"NO ACTION WAS TAKEN",!,$C(7) HANG 1 Q
 ..D:(PSGORD["U") AC
 ..D:(PSGORD["P") NC
 ..D:(PSGORD["V") SPDCIV^PSIVSPDC
 ..; Call the unlock procedure
 ..D UNL^PSSLOCK(DFN,PSGORD)
 S X=""
RESET ;
 D INIT^PSJLMHED(1) S VALMBCK="R"
 ;
DONE ;
 K DA,DIE,DP,DR,PSGAL,PSGALR,PSGLMT,PSGODDD,PSGOECS,PSGOECS1,PSGOECS2,PSGONW,PSGORD,PSGPOSA,PSGPOSD,PSGTOL,PSGTOO,PSGUOW,ORIFN,ORETURN,ORNATR
 Q
 ;
DCOR ; Create DC order/update stop date in OE/RR.
 S PSOC=$S(PSGORD["P":"OC",PSGORD["N":"OC",1:"OD")
 D EN1^PSJHL2(PSGP,PSOC,PSGORD)
 Q
 ;
ENOR ;
 K DA S PSGEDIT=$S($D(PSGEDIT):PSGEDIT,1:"D"),CF=1,PSGALR=20,DA=+PSGORD,T="" I PSGORD'["U",(PSGORD'["O") D:CF NSET^PSGOEC D NC^PSGOEC D ENOR2 G DONE^PSGOEC
 S DA(1)=PSGP D:CF ASET^PSGOEC D AC^PSGOEC
 G DONE^PSGOEC
 ;
ENOR2 ;Check to see if order being DC'd is a Pending Renewal and is being DC'd due to edit.
 I PSGEDIT="DE",$P(^PS(53.1,+PSGORD,0),U,25),$P(^PS(53.1,+PSGORD,0),U,24)="R",PSGSD<$P($G(^PS(55,PSGP,5,+$P(^PS(53.1,+PSGORD,0),U,25),2)),U,4) D
 .K DA,DR S DA(1)=PSGP,DA=+$P(^PS(53.1,+PSGORD,0),U,25),DIE="^PS(55,"_PSGP_",5,",DR="34////"_PSGSD_";25////"_$P($G(^PS(55,PSGP,5,+$P(^PS(53.1,+PSGORD,0),U,25),2)),U,4)
 .D ^DIE,EN1^PSJHL2(PSGP,"XX",$P(^PS(53.1,+PSGORD,0),U,25))
 Q