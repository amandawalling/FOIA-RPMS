BGP5HEH ; IHS/CMI/LAB - cover page for HEDIS ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
 ;
 W:$D(IOF) @IOF
 W !!,$$CTR("Cover Page",80)
 W:BGPRTYPE=3 !!,$$CTR("*** IHS 2005 HEDIS Clinical Performance Report ***",80)
 W !,$$CTR("CRS 2005, Version 5.1",80)
 W !,$$CTR("Date Report Run: "_$$FMTE^XLFDT(DT),80)
 W !,$$CTR("Site where Run: "_$P(^DIC(4,DUZ(2),0),U),80)
 W !,$$CTR("Report Generated by: "_$$USR,80)
 S X="Report Period:  "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) W !,$$CTR(X,80)
 S X="Previous Year Period:  "_$$FMTE^XLFDT(BGPPBD)_" to "_$$FMTE^XLFDT(BGPPED) W !,$$CTR(X,80)
 S X="Baseline Period:  "_$$FMTE^XLFDT(BGPBBD)_" to "_$$FMTE^XLFDT(BGPBED) W !,$$CTR(X,80)
 I BGPRTYPE=3 W !!,"Indicators: HEDIS Indicators"
 W !,"Population: ",$S(BGPBEN=1:"AI/AN Only (Classification 01)",BGPBEN=2:"non AI/AN Only (Classification NOT 01)",BGPBEN=3:"All (Both AI/AN and non AI/AN)",1:"")
 D ENDTIME
 D HEDISHDR
 I $G(BGPEXPT) W !!,"A file will be created called BG05",$P(^AUTTLOC(DUZ(2),0),U,10)_".HE"_BGPRPT,".",!,"It will reside in the public/export directory.",!,"This file should be sent to your Area Office.",!
 I '$D(BGPGUI),BGPROT'="P" W !!,"A delimited output file called ",BGPDELF,!,"has been placed in the public directory for your use in Excel or some",!,"other software package.",!,"See your site manager to access this file.",!
 I $G(BGPALLPT) W !!,"All Communities Included.",!
 I '$G(BGPALLPT),'$G(BGPSEAT) W !?10,"Community Taxonomy Name: ",$P(^ATXAX(BGPTAXI,0),U)
 I '$G(BGPALLPT),'$G(BGPSEAT) W !?10,"The following communities are included in this report:",! D
 .S BGPZZ="",N=0,Y="" F  S BGPZZ=$O(BGPTAX(BGPZZ)) Q:BGPZZ=""  S N=N+1,Y=Y_$S(N=1:"",1:";")_BGPZZ
 .S BGPZZ=0,C=0 F BGPZZ=1:3:N D
 ..I $Y>(BGPIOSL-3) D EOP
 ..W !?10,$E($P(Y,";",BGPZZ),1,20),?30,$E($P(Y,";",(BGPZZ+1)),1,20),?60,$E($P(Y,";",(BGPZZ+2)),1,20)
 ..Q
 K BGPX,BGPQUIT
 Q
HEDISHDR ;
 W !
 S BGPX=$O(^BGPCTRL("B",2005,0))
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,16,BGPY)) Q:BGPY'=+BGPY  D
 .I $Y>(BGPIOSL-2) D EOP W:$D(IOF) @IOF
 .W !,^BGPCTRL(BGPX,16,BGPY,0)
 .Q
 Q
ENDTIME ;
 I $D(BGPET) S BGPTS=(86400*($P(BGPET,",")-$P(BGPBT,",")))+($P(BGPET,",",2)-$P(BGPBT,",",2)),BGPHR=$P(BGPTS/3600,".") S:BGPHR="" BGPHR=0 D
 .S BGPTS=BGPTS-(BGPHR*3600),BGPM=$P(BGPTS/60,".") S:BGPM="" BGPM=0 S BGPTS=BGPTS-(BGPM*60),BGPS=BGPTS W !!,"RUN TIME (H.M.S): ",BGPHR,".",BGPM,".",BGPS
 Q
AREACP ;EP - area cover page
 ;
 W:$D(IOF) @IOF
 W !!,$$CTR("Cover Page",80)
 W:BGPRTYPE=3 !!,$$CTR("*** IHS 2005 HEDIS Clinical Performance Report ***",80)
 W:BGPSUCNT>1 !,$$CTR("AREA AGGREGATE",80)
 W !,$$CTR("CRS 2005, Version 5.1",80)
 W !,$$CTR("Date Report Run:  "_$$FMTE^XLFDT(DT),80)
 W !,$$CTR("Site where Run:  "_$$VAL^XBDIQ1(9999999.06,DUZ(2),.04))
 W !,$$CTR("Report Generated by:  "_$$USR,80)
 S X="Reporting Period:  "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) W !,$$CTR(X,80)
 S X="Previous Year Period:  "_$$FMTE^XLFDT(BGPPBD)_" to "_$$FMTE^XLFDT(BGPPED) W !,$$CTR(X,80)
 S X="Baseline Period:  "_$$FMTE^XLFDT(BGPBBD)_" to "_$$FMTE^XLFDT(BGPBED) W !,$$CTR(X,80)
 I BGPRTYPE=3 W !!,"Indicators: HEDIS Indicators"
 W !,"Population: ",$S(BGPBEN=1:"AI/AN Only (Classification 01)",BGPBEN=2:"non AI/AN Only (Classification NOT 01)",BGPBEN=3:"All (Both AI/AN and non AI/AN)",1:"")
 D ENDTIME
 D HEDISHDR
 I $G(BGPEXPT) W !!,"A file will be created called BG05",$P(^AUTTLOC(DUZ(2),0),U,10)_".HE"_BGPRPT,".",!,"It will reside in the public/export directory.",!,"This file should be sent to your Area Office.",!
 I '$D(BGPGUI),BGPROT'="P" W !!,"A delimited output file called ",BGPDELF,!,"has been placed in the public directory for your use in Excel or some",!,"other software package.",!,"See your site manager to access this file.",!
 W !!?1,"Report includes the following facility data:"
 NEW BGPX
 S BGPX="" F  S BGPX=$O(BGPSUL(BGPX)) Q:BGPX=""  D
 .I $Y>(BGPIOSL-5) D EOP W:$D(IOF) @IOF
 .S X=$P(^BGPHEDCV(BGPX,0),U,9),X=$O(^AUTTLOC("C",X,0)) S X=$S(X:$P(^DIC(4,X,0),U),1:"?????")
 .W !?3,X
 .W !?5,"Communities: " S X=0,N=0,Y="" F  S X=$O(^BGPHEDCV(BGPX,9999,X)) Q:X'=+X  S N=N+1,Y=Y_$S(N=1:"",1:";")_$P(^BGPHEDCV(BGPX,9999,X,0),U)
 .S X=0,C=0 F X=1:3:N W !?10,$E($P(Y,";",X),1,20),?30,$E($P(Y,";",(X+1)),1,20),?60,$E($P(Y,";",(X+2)),1,20)
 .Q
 K BGPX,BGPQUIT
 Q
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
EOP ;EP - End of page.
 Q:$E(IOST)'="C"
 Q:$D(ZTQUEUED)!'(IOT="TRM")!$D(IO("S"))
 NEW DIR
 K DIRUT,DFOUT,DLOUT,DTOUT,DUOUT
 S DIR(0)="E" D ^DIR
 Q
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
 ;;
E ;;Elder Care-Related Indicators
G ;;GPRA Indicators (All)
A ;;AREA Director Performance Indicators (All)
H ;;HEDIS Indicators (All)
D ;;Diabetes-Related Indicators
C ;;Cardiovascular Disease Prevention for At-Risk Patients
S ;;Selected Indicators (User Defined)
W ;;Women's Health-Related Indicators
P ;;Prevention Related Indictors