ACDWDRV5 ;IHS/ADC/EDE/KML - DRV 5 REPORTS TAKEN FROM ACDPD GLOBAL;
 ;;4.1;CHEMICAL DEPENDENCY MIS;;MAY 11, 1998
 ;//[ACDR7MENU]
 F  K ACDQUIT D DIR I $D(ACDQUIT) D PRHDR^ACD G ^ACDWK
DIR ;Menu
 S ACDWDRV(5)=5
 D PRHDR^ACD
 ;S:'$D(ACD27) $P(ACD27,"*",27)="*"
 ;W !!,ACD27,!,"* CDMIS PREVENTION REPORTS *",!,ACD27,!
 F I=300:1:310 W !,I,"  ",$P($T(@I),";",3) I I=310 S DIR(0)="L^300:310^S ACDRPTS=Y",DIR("A")="RUN REPORT # " W ! D ^DIR S:X["^"!($D(DTOUT)) ACDQUIT=1 Q:$D(ACDQUIT)
 I $D(ACDQUIT) K ACDWDRV Q
 D ^ACDWRQ I $D(ACDQUIT) K ACDQUIT Q
 D ^ACDWQ ;        call to XBDBQUE
 Q
 ;
L ;EP - FOR TASKMAN
 S ACDNW(1)=ACDTO,ACDNW(2)=ACDFR,ACDNW(3)=ACDLOC,ACDNW(4)=ACDRPTS
 S ACDTO=ACDNW(1),ACDFR=ACDNW(2),ACDLOC=ACDNW(3)
 D ACDV
 Q
 ;
 S ACDDA=ACDDO D ^ACDWPD I ACDOK F ACDA1=0:0 S ACDA1=$O(^ACDPD(ACDDO,1,ACDA1)) Q:'ACDA1  D M^ACDWPD,@ACDTG
ACDV ;
 K ^TMP("ACD",ACDJOB,ACDBT)
 F ACD=ACDFR-.001:0 S ACD=$O(^ACDPD("B",ACD)) Q:'ACD!(ACD>ACDTO)  D
 . S ACDV=0
 . F  S ACDV=$O(^ACDPD("B",ACD,ACDV)) Q:'ACDV  S ^TMP("ACD",ACDJOB,ACDBT,"HIT",ACDV)=""
 . Q
 Q
 ;
P ;EP - PRINT REPORT
 K DIRUT
 S ACDNW(1)=ACDTO,ACDNW(2)=ACDFR,ACDNW(3)=ACDLOC,ACDNW(4)=ACDRPTS
 F ACDNW(0)=1:1:$L(ACDNW(4),",")-1 S ACDTO=ACDNW(1),ACDFR=ACDNW(2),ACDLOC=ACDNW(3),(ACDTG,ACDTGSUB)=$P(ACDNW(4),",",ACDNW(0)) D P2 Q:$D(DIRUT)
 Q
 ;
P2 ;
 S ACDV=0
 F  S ACDV=$O(^TMP("ACD",ACDJOB,ACDBT,"HIT",ACDV)) Q:'ACDV  D  Q:$D(DIRUT)
 . S ACDDA=ACDV
 . D ^ACDWPD
 . Q:'ACDOK
 . S ACDA1=0
 . F  S ACDA1=$O(^ACDPD(ACDV,1,ACDA1)) Q:'ACDA1  S ACDDO=ACDV D M^ACDWPD,@ACDTG
 . Q
 D HED
 Q
 ;
HED ;Header vars
 S ACDH(0)=$P($T(@ACDTG),";",3)_U_ACDLOC,ACDWDRV(5)=5 D HV^ACDWUTL
 U IO D H S ACDTG="G"_ACDTG D @ACDTG Q
H ;EP
 W @IOF,!,"CDMIS PREVENTION REPORT # "_$S(ACDTG:ACDTG,1:$E(ACDTG,2,6)),!,$P(ACDH(0),U) S ACDH(3)=ACDH(3)+1 W ?68,"PG ",ACDH(3),!,ACDH(50),$P(ACDH(0),U,2) D ASF^ACDWUTL W !,"DATA CAPTURED FOR: ",ACDH(2),!,ACDH(4),!
 Q
300 ;;COMPONENT/ACTIVITY/LOCATION
 S:'$D(^TMP("ACD",ACDJOB,ACDBT,ACDTGSUB,"VAL",ACDCOMCL_"/"_ACDCOMT,ACDPRVA,ACDLOTY)) ^(ACDLOTY)="" S ^(ACDLOTY)=^(ACDLOTY)+1 Q
301 ;;COMPONENT/ACTIVITY/NUM SERVED
 S:'$D(^TMP("ACD",ACDJOB,ACDBT,ACDTGSUB,"VAL",ACDCOMCL_"/"_ACDCOMT,ACDPRVA)) ^(ACDPRVA)="" S ACDN0=^(ACDPRVA),$P(ACDN0,U)=$P(ACDN0,U)+1,$P(ACDN0,U,2)=$P(ACDN0,U,2)+ACDNUMR,^(ACDPRVA)=ACDN0 Q
302 ;;ACTIVITY/TARGET/NUMBER SERVED
 S:'$D(^TMP("ACD",ACDJOB,ACDBT,ACDTGSUB,"VAL",ACDPRVA,ACDTRG)) ^(ACDTRG)="" S ACDN0=^(ACDTRG),$P(ACDN0,U)=$P(ACDN0,U)+1,$P(ACDN0,U,2)=$P(ACDN0,U,2)+ACDNUMR,^(ACDTRG)=ACDN0 Q
303 ;;ACTIVITY/TARGET/LOCATION
 S:'$D(^TMP("ACD",ACDJOB,ACDBT,ACDTGSUB,"VAL",ACDPRVA,ACDTRG,ACDLOTY)) ^(ACDLOTY)="" S ^(ACDLOTY)=^(ACDLOTY)+1 Q
304 ;;ACTIVITY/TARGET/OUTCOME
 S:'$D(^TMP("ACD",ACDJOB,ACDBT,ACDTGSUB,"VAL",ACDPRVA,ACDTRG,ACDOUTC)) ^(ACDOUTC)="" S ^(ACDOUTC)=^(ACDOUTC)+1 Q
305 ;;ACTIVITY/TARGET
 S:'$D(^TMP("ACD",ACDJOB,ACDBT,ACDTGSUB,"VAL",ACDPRVA,ACDTRG)) ^(ACDTRG)="" S ^(ACDTRG)=^(ACDTRG)+1 Q
306 ;;ACTIVITY/OUTCOME
 S:'$D(^TMP("ACD",ACDJOB,ACDBT,ACDTGSUB,"VAL",ACDPRVA,ACDOUTC)) ^(ACDOUTC)="" S ^(ACDOUTC)=^(ACDOUTC)+1 Q
307 ;;ACTIVITY/LOCATION
 S:'$D(^TMP("ACD",ACDJOB,ACDBT,ACDTGSUB,"VAL",ACDPRVA,ACDLOTY)) ^(ACDLOTY)="" S ^(ACDLOTY)=^(ACDLOTY)+1 Q
308 ;;ACTIVITY/#SERVED
 S:'$D(^TMP("ACD",ACDJOB,ACDBT,ACDTGSUB,"VAL",ACDPRVA)) ^(ACDPRVA)="" S ACDN0=^(ACDPRVA),$P(ACDN0,U)=$P(ACDN0,U)+1,$P(ACDN0,U,2)=$P(ACDN0,U,2)+ACDNUMR,^(ACDPRVA)=ACDN0 Q
 Q
309 ;;ACTIVITY/TARGET/NUM SERVED/OUTCOME 
 S:'$D(^TMP("ACD",ACDJOB,ACDBT,ACDTGSUB,"VAL",ACDPRVA,ACDTRG,ACDOUTC)) ^(ACDOUTC)="" S ACDN0=^(ACDOUTC),$P(ACDN0,U)=$P(ACDN0,U)+1,$P(ACDN0,U,2)=$P(ACDN0,U,2)+ACDNUMR,^(ACDOUTC)=ACDN0
 Q
310 ;;COMPONENT/ACTIVITY/TARGET/NUM SERVED
 S:'$D(^TMP("ACD",ACDJOB,ACDBT,ACDTGSUB,"VAL",ACDCOMCL_"/"_ACDCOMT,ACDPRVA,ACDTRG)) ^(ACDTRG)="" S ACDN0=^(ACDTRG),$P(ACDN0,U)=$P(ACDN0,U)+1,$P(ACDN0,U,2)=$P(ACDN0,U,2)+ACDNUMR,^(ACDTRG)=ACDN0
 Q
G301 S ACDC(1)=ACDH(20),ACDC(2)=ACDH(19),ACDC(3)=ACDH(15),ACDC(4)=ACDH(7),ACDC(5)=ACDH(22) D ^ACDWRP25 Q
G302 S ACDC(1)=ACDH(19),ACDC(2)=ACDH(17),ACDC(5)=ACDH(22),ACDC(3)=ACDH(15),ACDC(4)=ACDH(7) D ^ACDWRP25 Q
G303 S ACDC(1)=ACDH(19),ACDC(2)=ACDH(17),ACDC(3)=ACDH(16),ACDC(4)=ACDH(7) D ^ACDWRP20 Q
G304 S ACDC(1)=ACDH(19),ACDC(2)=ACDH(17),ACDC(3)=ACDH(18),ACDC(4)=ACDH(7) D ^ACDWRP20 Q
G305 S ACDC(1)=ACDH(19),ACDC(2)=ACDH(17),ACDC(3)=ACDH(7) D ^ACDWRP21 Q
G306 S ACDC(1)=ACDH(19),ACDC(2)=ACDH(18),ACDC(3)=ACDH(7) D ^ACDWRP21 Q
G300 S ACDC(1)=ACDH(20),ACDC(2)=ACDH(19),ACDC(3)=ACDH(16),ACDC(4)=ACDH(7) D ^ACDWRP20 Q
G307 S ACDC(1)=ACDH(19),ACDC(2)=ACDH(16),ACDC(3)=ACDH(7) D ^ACDWRP21 Q
G308 S ACDC(1)=ACDH(19),ACDC(2)=ACDH(15),ACDC(3)=ACDH(7),ACDC(4)=ACDH(22) D ^ACDWRP22 Q
G309 S ACDC(1)=ACDH(19),ACDC(2)=ACDH(17),ACDC(3)=ACDH(15),ACDC(4)=ACDH(18),ACDC(5)=ACDH(7),ACDC(6)=ACDH(22) D ^ACDWRP26 Q
G310 S ACDC(1)=ACDH(20),ACDC(2)=ACDH(19),ACDC(3)=ACDH(17),ACDC(4)=ACDH(15),ACDC(5)=ACDH(7),ACDC(6)=ACDH(22) D ^ACDWRP27 Q
 ;
EOJ ;EP - EOJ FOR XBDBQUE
 K ^TMP("ACD",ACDJOB,ACDBT)
 LOCK -^TMP("ACD",ACDJOB,ACDBT)
 K ACDNW,ACDQ,ACDFAC,ACDAREA,ACDSU,ACDTRB,ACDSTA
 K ACDAGE,ACDBT,ACDFOLL,ACDH,ACDHRS,ACDJOB,ACDOK,ACDOPT,ACDPLAAL,ACDPLARL,ACDPT,ACDSTAT,ACDTG,ACDTGSUB,ACDVET,ACDWDRV
 Q