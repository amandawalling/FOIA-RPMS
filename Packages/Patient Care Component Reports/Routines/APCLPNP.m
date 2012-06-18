APCLPNP ; IHS/CMI/LAB - FILEMAN INIT ROUTINE ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
INIT ;initialize variables
 S APCLSTOP="",APCLPAGE=0
 I '$D(^XTMP("APCLPN",APCLJOB,APCLBT)) D HEAD W !,"No visits to report."  G END
 S (APCLPGRD,APCLVGRA)=0
SET ;
 S APCLCLX=0
 F  S APCLCLX=$O(^XTMP("APCLPN",APCLJOB,APCLBT,APCLCLX)) Q:APCLCLX=""!(APCLSTOP="^")  D SET2
 G:APCLSTOP="^" END
 D FINAL
END ;
 D DONE^APCLOSUT
 K ^XTMP("APCLPN",APCLJOB,APCLBT)
 Q
SET2 ;
 S (APCLNAME,APCLPTOT,APCLVTOT)=0 D HEAD
 F  S APCLNAME=$O(^XTMP("APCLPN",APCLJOB,APCLBT,APCLCLX,APCLNAME)) Q:APCLNAME=""!(APCLSTOP="^")  S APCLDFN=0 D SET3
 Q:APCLSTOP=U
 D TOTALS
 Q
SET3 F  S APCLDFN=$O(^XTMP("APCLPN",APCLJOB,APCLBT,APCLCLX,APCLNAME,APCLDFN)) Q:APCLDFN=""!(APCLSTOP="^")  D SET4
 Q
SET4 ;
 S (APCLVDT,APCLFVS)=0 ;visit date & first visit flag for line feed
 ;set and print demographic data
 S APCLPTOT=APCLPTOT+1 ;increment patient count for clinic
 I $G(APCLLOC)]"",$D(^AUPNPAT(APCLDFN,41,APCLLOC,0)) S APCLHRCN=$P(^AUPNPAT(APCLDFN,41,APCLLOC,0),U,2) G SET41
 S APCLHRCN=$P($G(^AUPNPAT(APCLDFN,41,DUZ(2),0)),U,2)
SET41 K ^UTILITY("DIQ1",$J) S DIC=9000001,DA=APCLDFN,DR=1102.99 D EN^DIQ1
 S APCLAGE=$G(^UTILITY("DIQ1",$J,9000001,APCLDFN,1102.99)) K ^UTILITY("DIQ1",$J)
 I $Y>(IOSL-5) D PAGE Q:APCLSTOP="^"
 W !,$E(APCLNAME,1,13),?15,$J(APCLHRCN,6),?23,$J(APCLAGE,2)
 ;
 ;find visit
 F  S APCLVDT=$O(^XTMP("APCLPN",APCLJOB,APCLBT,APCLCLX,APCLNAME,APCLDFN,APCLVDT)) Q:APCLVDT=""  S APCLVDFN=0 D SET5
 Q
SET5 ;
 F  S APCLVDFN=$O(^XTMP("APCLPN",APCLJOB,APCLBT,APCLCLX,APCLNAME,APCLDFN,APCLVDT,APCLVDFN)) Q:APCLVDFN=""!(APCLSTOP="^")  D PRNT
 Q
PRNT ;
 S APCLVTOT=APCLVTOT+1 ;increment visit count
 I APCLFVS W ! I $Y>(IOSL-5) D PAGE Q:APCLSTOP="^"
 S APCLPOVC=0,APCLFVS=1,APCLFPV=0
 W ?26,$E(APCLVDT,4,5),"/",$E(APCLVDT,6,7),"/",$E(APCLVDT,2,3)_" "_$E($P(APCLVDT,".",2)_"0000",1,4)
 ;
 ;set and print provider class code
 S APCLPRV=0
PRV S APCLPRV=$O(^AUPNVPRV("AD",APCLVDFN,APCLPRV))
 I APCLPRV="" S APCLPV=0,APCLPOVC=0 K APCLNARR G POV
 G PRV:'$D(^AUPNVPRV(APCLPRV,0)),PRV:$P(^(0),"^",4)'="P"
 S X=+^AUPNVPRV(APCLPRV,0),X=$P(^DIC(6,X,0),"^",4)
 S APCLCLS=$S(X="":"",1:$P(^DIC(7,X,9999999),"^"))
 W ?41,APCLCLS
 ;
 ;
 S APCLPV=0,APCLPOVC=0 K APCLNARR
POV S APCLPV=$O(^AUPNVPOV("AD",APCLVDFN,APCLPV))
 I APCLPV="" S APCLVDEN=0,APCLPOVC=1 G PN
 G POV:'$D(^AUPNVPOV(APCLPV,0)) S APCLSTR=^(0)
 S APCLNAR=$P(APCLSTR,"^",4)
 S APCLNAR=$S(APCLNAR="":"",$D(^AUTNPOV(APCLNAR,0)):$P(^(0),"^"),1:"")
 S APCLPOVC=APCLPOVC+1
 S APCLNARR(APCLPOVC)=$E(APCLNAR,1,26)
 G POV
 ;
 ;set and print procedures
PN S APCLVDEN=$O(^AUPNVDEN("AD",APCLVDFN,APCLVDEN))
 Q:APCLVDEN=""
 G PN:'$D(^AUPNVDEN(APCLVDEN,0)) S APCLSTR=^(0)
 S APCLPN=+APCLSTR
 S APCLPN=$S(APCLPN="":"",1:$P(^AUTTPN(APCLPN,0),"^"))
 I APCLFPV W ! I $Y>(IOSL-5) D PAGE Q:APCLSTOP="^"  W !
 I 'APCLFPV S APCLFPV=1
 W ?45,APCLPN,?53,$S($D(APCLNARR(APCLPOVC)):APCLNARR(APCLPOVC),1:"") S APCLPOVC=APCLPOVC+1
 G PN
 ;
FINAL ;print grand totals
 G END:APCLCL'="A"
 D HEAD
 W !!?39,"TOTAL PATIENTS:  ",APCLPGRD
 W !!?41,"TOTAL VISITS:  ",APCLVGRA
 Q
 ;
TOTALS ;print totals
 I $Y>(IOSL-5) D PAGE
 W !!?28,"TOTAL PATIENTS FOR CLINIC:  ",APCLPTOT
 W !!?30,"TOTAL VISITS FOR CLINIC:  ",APCLVTOT
 S APCLPGRD=APCLPGRD+APCLPTOT,APCLVGRA=APCLVGRA+APCLVTOT
 Q:IOST'?1"C-".E
 ;R !!,"Enter <return> to continue or '^' to stop",APCLSTOP:DTIME
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I $D(DIRUT) S APCLSTOP="^" Q
 Q
 ;
HEAD ;
 W:$D(IOF) @IOF,!?11,"*****Confidential Patient Data Covered by Privacy Act*****",!
 S X=$P(^DIC(4,DUZ(2),0),"^"),APCLPAGE=APCLPAGE+1
 W !!,$P(^VA(200,DUZ,0),"^",2),?(80-$L(X)/2),X,?72,"Page ",APCLPAGE
 S X=$P($H,",",2) D TIME W !,Y
 I $G(APCLCLX)="" S X="No Clinic data to report" G HD1
 I APCLCLX="E" S X="VISITS WITH NO ASSIGNED CLINIC CODE" G HD1
 I APCLCLX]"" S X="CLINIC VISITS FOR "_$P(^DIC(40.7,APCLCLX,0),"^")_" ("_$P(^(0),"^",2)_")" W ?(80-$L(X)/2),X
HD1 S Y=DT X ^DD("DD") W !,Y
 W ?28,"for ",$E(APCLBD,4,5),"/",$E(APCLBD,6,7),"/",$E(APCLBD,2,3)
 W " to ",$E(APCLED,4,5),"/",$E(APCLED,6,7),"/",$E(APCLED,2,3)
 W !!,"NAME",?16,"HRCN",?22,"AGE",?27,"VISIT DATE",?41,"PRV",?46,"PN",?53,"PROV NARRATIVE",!
 Q
 ;
PAGE ;form feed to new page
 I IOST'?1"C-".E D HEAD Q
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="E" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S APCLSTOP="^" Q
 I APCLSTOP'="^" D HEAD
 Q
TIME S Y="" Q:'$D(X)  Q:X<0!(X>86400)
 S %A=X\60,%B=%A\60 S:%B>12 %B=%B-12 S:%B=0 %B=12 S:%B<10 %B=" "_%B
 S %C=$S(%A=0:"M ",%A=720:"N ",%A=1440:"M ",%A<720:"am",1:"pm")
 S Y=%B_":"_$E(%A#60+100,2,3)_" "_%C K %A,%B,%C Q