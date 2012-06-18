AMHRLP1 ; IHS/CMI/LAB - CONT OF AMHRLP ;
 ;;4.0;IHS BEHAVIORAL HEALTH;;MAY 14, 2010
 ;
 ;
COVPAGE ;EP
 W:$D(IOF) @IOF
 I AMHPTVS="S" W !?5,"Listing of Suicide Forms by Selected Variables"
 I AMHPTVS'="S" W !?5,"BEHAVIORAL HEALTH  ",AMHPTTX," ",$S(AMHCTYP="D":"LISTING",1:"COUNT")
 W !!,"REPORT REQUESTED BY: ",$P(^VA(200,DUZ,0),U)
 W !!,"The following report contains a ",AMHPTTX," report based on the",!,"following item:",!
SHOW ;
 W !,AMHPTTX," Selection Criteria"
 I $D(AMHRDTR),$D(AMHBDD) W !!?6,"Encounter Date range:  ",AMHBDD," to ",AMHEDD,!
 I AMHPTVS'="S" W:AMHTYPE="D" !!?6,"Encounter Date range:  ",AMHBDD," to ",AMHEDD,!
 W:AMHTYPE="S" !!?6,"Search Template: ",$P(^DIBT(AMHSEAT,0),U),!
 I '$D(^AMHTRPT(AMHRPT,11)) G SHOWP
 S AMHI=0 F  S AMHI=$O(^AMHTRPT(AMHRPT,11,AMHI)) Q:AMHI'=+AMHI  D
 .I $Y>(IOSL-5) D PAUSE^AMHRL01 W @IOF
 .W !?6,$P(^AMHSORT(AMHI,0),U),":  "
 .K AMHQ S AMHY=0,C=0 K AMHQ F  S AMHY=$O(^AMHTRPT(AMHRPT,11,AMHI,11,"B",AMHY)) S C=C+1 W:C'=1&(AMHY'="") " ; " Q:AMHY=""!($D(AMHQ))  S X=AMHY X:$D(^AMHSORT(AMHI,2)) ^(2) W X
 K AMHQ
SHOWP ;
 I AMHCTYP="F" W !!,"FLAT FILE BEING GENERATED:  ",AMHFILE,!! W:'$D(ZTQUEUED) "HOLD ON......" Q
 I AMHCTYP="T" D COUNT Q
 I AMHCTYP="S" D  I 1
 .I $Y>(IOSL-6) D PAUSE^AMHRL01 W @IOF
 .W !!,"Report will contain sub-totals by ",$P(^AMHSORT(AMHSORT,0),U),"."
 .I '$D(^XTMP("AMHRL",AMHJOB,AMHBTH)) W !!,$S(AMHPTVS="S":"NO SUICIDE FORMS",AMHPTVS="V":"NO VISITS",1:"NO PATIENTS")_" TO REPORT.",! D PAUSE^AMHRL01 W:$D(IOF) @IOF
 .Q
 I AMHCTYP'="D" D PAUSE^AMHRL01 W:$D(IOF) @IOF Q
 I $Y>(IOSL-4) D PAUSE^AMHRL01 W @IOF
 W !!,"PRINT Field Selection"
 I '$D(^AMHTRPT(AMHRPT,12)) G PAUSE
 S AMHI=0 F  S AMHI=$O(^AMHTRPT(AMHRPT,12,AMHI)) Q:AMHI'=+AMHI  S AMHCRIT=$P(^AMHTRPT(AMHRPT,12,AMHI,0),U) D
 .I $Y>(IOSL-4) D PAUSE^AMHRL01 W:$D(IOF) @IOF
 .W !?6,$P(^AMHSORT(AMHCRIT,0),U),"  (" S X=$O(^AMHTRPT(AMHRPT,12,"B",AMHCRIT,"")) W $P(^AMHTRPT(AMHRPT,12,X,0),U,2),")"
 I $Y>(IOSL-4) D PAUSE^AMHRL01 W:$D(IOF) @IOF
 W !?10,"     TOTAL column width: ",AMHTCW
 Q:'$G(AMHSORT)
 I $Y>(IOSL-4) D PAUSE^AMHRL01 W:$D(IOF) @IOF
 W !!?6,AMHPTTS," will be sorted by:  ",$P(^AMHSORT(AMHSORT,0),U),!
 I $Y>(IOSL-4) D PAUSE^AMHRL01 W:$D(IOF) @IOF
 I $G(AMHSPAG) W !?6,"Each ",$P(^AMHSORT(AMHSORT,0),U)," will be on a separate page.",!
 I '$D(^XTMP("AMHRL",AMHJOB,AMHBTH)) W !!,$S(AMHPTVS="S":"NO SUICIDE FORMS",AMHPTVS="V":"NO VISITS",1:"NO PATIENTS")_" TO REPORT.",!
PAUSE D PAUSE^AMHRL01 W:$D(IOF) @IOF
 Q
COUNT ;if COUNTING entries only   
 I $Y>(IOSL-5) D PAUSE^AMHRL01 W:$D(IOF) @IOF
 I '$D(^XTMP("AMHRL",AMHJOB,AMHBTH)) W !!!,$S(AMHPTVS="S":"NO SUICIDE FORMS",AMHPTVS="V":"NO VISITS",1:"NO PATIENTS")_" TO REPORT.",!
 I $D(AMHRCNT),(AMHPTVS="V"!(AMHPTVS="S")) W !!!,"Total COUNT of ",AMHPTTS,":  ",AMHRCNT
 I $D(AMHPTCT),(AMHPTVS="P") W !!!,"Total COUNT of ",$S(AMHPTVS="P":"Patients",1:"Visits"),":  ",AMHPTCT
 Q
WP ;EP - Entry point to print wp fields pass node in AMHNODE
 ;PASS FILE IN AMHFILE, ENTRY IN AMHDA
 K ^UTILITY($J,"W")
 S AMHRLX=0
 S AMHG1=^DIC(AMHFILE,0,"GL"),AMHG=AMHG1_AMHDA_","_AMHNODE_",AMHRLX)",AMHGR=AMHG1_AMHDA_","_AMHNODE_",AMHRLX"
 S DIWL=1,DIWR=$P(^AMHTRPT(AMHRPT,12,AMHI,0),U,2) F  S AMHRLX=$O(@AMHG) Q:AMHRLX'=+AMHRLX  D
 .S Y=AMHGR_",0)" S X=@Y D ^DIWP
 .Q
 S Z=0 F  S Z=$O(^UTILITY($J,"W",DIWL,Z)) Q:Z'=+Z  S AMHPCNT=AMHPCNT+1,AMHPRNM(AMHPCNT)=^UTILITY($J,"W",DIWL,Z,0)
 S AMHPCNT=AMHPCNT+1
 K DIWL,DIWR,DIWF,Z
 K ^UTILITY($J,"W"),AMHNODE,AMHFILE,AMHDA,AMHG1,AMHGR,AMHRLX
 Q
WPS ;EP
 S Z=0 F  S Z=$O(^UTILITY($J,"W",DIWL,Z)) Q:Z'=+Z  S AMHPCNT=AMHPCNT+1,AMHPRNM(AMHPCNT)=^UTILITY($J,"W",DIWL,Z,0)
 K DIWL,DIWR,DIWF,Z
 K ^UTILITY($J,"W"),AMHNODE,AMHFILE,AMHDA
 Q