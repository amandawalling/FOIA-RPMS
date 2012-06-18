BGP9DP7 ; IHS/CMI/LAB - print ind 10 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
 ;
 ;this routine for Measure I10 ONLY
I10 ;EP
 D H1 S BGPNODEN=1
 F BGPPC1="10.1" D PI Q:BGPQUIT
 Q
PI ;EP
 S BGPDENP=0
 K BGPDHOLD
 K BGPCYP,BGPBLP,BGPPRP
 S BGPPC2=0 F  S BGPPC2=$O(^BGPINDNC("AB",BGPPC1,BGPPC2)) Q:BGPPC2=""  S BGPPC=$O(^BGPINDNC("AB",BGPPC1,BGPPC2,0)) D PI1
 Q
PI1 ;
 K BGPEXCT,BGPSDP,BGPSDPN,BGPSDPO,BGPSDPD
 I BGPRTYPE'=4,BGPINDT="G",$P(^BGPINDNC(BGPPC,0),U,5)'=1 Q
 I BGPINDT="D",$P(^BGPINDNC(BGPPC,0),U,12)'=1 Q
 I BGPINDT="C",$P(^BGPINDNC(BGPPC,0),U,13)'=1 Q
 I BGPINDT="W",$P($G(^BGPINDNC(BGPPC,12)),U,2)'=1 Q
 I BGPINDT="E",$P($G(^BGPINDNC(BGPPC,12)),U,3)'=1 Q
 ;get numerator value of measure and calc %
 S BGPDF=$P(^BGPINDNC(BGPPC,0),U,9)
 I $P(^BGPINDNC(BGPPC,0),U,4)[".1" S BGPDHOLD=BGPDF
 I $P(^BGPINDNC(BGPPC,0),U,4)'[".1" S BGPDF=BGPDHOLD
 S BGPNP=$P(^DD(90536.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S BGPCYD=$$V^BGP9DP1C(1,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP9DP1C(1,N,P)
 S BGPPRD=$$V^BGP9DP1C(2,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP9DP1C(2,N,P)
 S BGPBLD=$$V^BGP9DP1C(3,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP9DP1C(3,N,P)
 S BGPNF=$P(^BGPINDNC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90536.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 D SETN^BGP9DP1C
 ;write header for 1.A.1
 W:'$G(BGPSUMON) !!,$P(^BGPINDNC(BGPPC,0),U,15)
 I $P(^BGPINDNC(BGPPC,0),U,16)]"" W:'$G(BGPSUMON) !?1,$P(^BGPINDNC(BGPPC,0),U,16)
 I $P(^BGPINDNC(BGPPC,0),U,19)]"" W:'$G(BGPSUMON) !?1,$P(^BGPINDNC(BGPPC,0),U,19)
 D H2
 Q
H2 ;EP
 S BGPX="",BGPX=$$C(BGPCYN,0,8),$E(BGPX,9)=$S(BGPCYP]"":$J($G(BGPCYP),5,1),1:""),$E(BGPX,16)=$$C(BGPPRN,0,8),$E(BGPX,24)=$S(BGPPRP]"":$J($G(BGPPRP),5,1),1:""),$E(BGPX,32)=$$CALC(BGPCYN,BGPPRN)
 S $E(BGPX,39)=$$C(BGPBLN,0,8),$E(BGPX,47)=$S(BGPBLP]"":$J($G(BGPBLP),5,1),1:""),$E(BGPX,55)=$$CALC(BGPCYN,BGPBLN)
 W:'$G(BGPSUMON) ?20,BGPX
 Q
H1 ;EP
 Q:$G(BGPSUMON)
 W !!?21,"REPORT",?31,"",?35,"PREV YR",?46,"",?49,"CHG from",?59,"BASE",?69,"",?72,"CHG from"
 W !?21,"PERIOD      ",?35,"PERIOD      ",?49,"PREV YR ",?59,"PERIOD      ",?72,"BASE "
 Q
CALC(N,O) ;ENTRY POINT
 NEW Z
 S Z=N-O,Z=$FN(Z,"+,",0)
 Q Z
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X