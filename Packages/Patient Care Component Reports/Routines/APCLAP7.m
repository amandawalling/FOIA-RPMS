APCLAP7 ; IHS/CMI/LAB - APC visit counts by selected vars ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
START ; 
 I '$G(DUZ(2)) W $C(7),$C(7),!!,"SITE NOT SET IN DUZ(2) - NOTIFY SITE MANAGER!!",!! Q
 S APCLSITE=DUZ(2)
 S APCLJOB=$J,APCLBTH=$H
 D INFORM
CHECK ;
GETDATES ;
BD ;get beginning date
 W ! S DIR(0)="D^:DT:EP",DIR("A")="Enter beginning Visit Date" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) G XIT
 S APCLBD=Y
ED ;get ending date
 W ! S DIR(0)="DA^"_APCLBD_":DT:EP",DIR("A")="Enter ending Visit Date:  " S Y=APCLBD D DD^%DT S Y="" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) G BD
 S APCLED=Y
 S X1=APCLBD,X2=-1 D C^%DTC S APCLSD=X
 ;
LOC ;
 S APCLLOC=$$GETLOC^APCLOCCK
 I APCLLOC=-1 G BD
 ;
ZIS ;call to XBDBQUE
DEMO ;
 D DEMOCHK^APCLUTL(.APCLDEMO)
 I APCLDEMO=-1 G LOC
 S XBRP="^APCLAP7P",XBRC="^APCLAP71",XBRX="XIT^APCLAP7",XBNS="APCL"
 D ^XBDBQUE
 D XIT
 Q
XIT ;
 K APCLSITE,APCLRPT,APCLINFO,APCLSORT,APCLPROC,APCLINF,APCLBD,APCLED,APCLSD,APCLDT,APCLLOC,APCLODAT,APCLVDFN,APCLVLOC,APCLVREC,APCLCLIN,APCLSKIP,APCL1,APCL2,APCLAP,APCLDISC,APCLPPOV,APCLX,APCLHIGH,APCLDATE,APCLPRNT,APCLJOB,APCLAPCC
 K APCLDX,APCLLOW,APCLICD,APCLDA1,APCLDA2,APCLY,APCLTITL,APCL80S,APCLEDD,APCLHD1,APCLHD2,APCLLENG,APCLLOCT,APCLPG,APCLSRT2,APCLTOT,APCLBDD,APCLPROV,APCLSEC,APCLZ,APCLADIS,APCLQUIT,APCLLOCC,APCLBT,APCLBTH
 K APCLJOB,APCLRXCL,APCLOTHC,APCLDAY,APCLCLNT,APCLCLT,AMQQATN,AMQQCTXS,AMQQCOMP,AMQQLINK,AMQQTAX,APCLCLN,APCLCNAM
 K X,X1,X2,IO("Q"),%,Y,POP,DIRUT,ZTSK,ZTQUEUED,H,S,TS,M
 Q
INFORM ;Inform Message
 W:$D(IOF) @IOF
 W !,"This report will generate average daily outpatient visit counts by clinic, ",!,"for a date range that you specify.",!
 W !,"The visits included are the ones that are considered APC",!,"workload reportable.",!!
 Q
 ;