BGP3EL1T ; IHS/CMI/LAB - print ind 1 ;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;
 ;
I1AGE ;EP  special age tallies
 S BGPHD1="ACTIVE CLINICAL PATIENTS 65+",BGPHD2="Total Active Clinical",BGPHD3="Age Distribution 65+"
 D HEADER^BGP3DPH Q:BGPQUIT  W !,^BGPELIH(BGPIC,53,1,0)  D H3
 K BGPDAC,BGPDAP,BGPDAB S C=0 F BGPX="AWD" F BGPX1=1,2,3 D I1AGE1
 D I1AGEP
MALE ;
 S BGPHD1="MALE ACTIVE CLINICAL PATIENTS 65+",BGPHD2="Male Active Clinical",BGPHD3="Age Distribution 65+"
 D HEADER^BGP3DPH Q:BGPQUIT  W !,^BGPELIH(BGPIC,53,1,0)  D H3
 K BGPDAC,BGPDAP,BGPDAB S C=0 F BGPX="AWE" F BGPX1=1,2,3 D I1AGE1
 D I1AGEP
FEMALE ;
 S BGPHD1="FEMALE ACTIVE CLINICAL PATIENTS 65+",BGPHD2="Female Active Clinical",BGPHD3="Age Distribution 65+"
 D HEADER^BGP3DPH Q:BGPQUIT  W !,^BGPELIH(BGPIC,53,1,0)  D H3
 K BGPDAC,BGPDAP,BGPDAB S C=0 F BGPX="AWF" F BGPX1=1,2,3 D I1AGE1
 D I1AGEP
 Q
I1AGE1 ;
 ;gather up all #'s
 S C=C+1
 S BGPF="ELD."_BGPX_"."_BGPX1 S BGPPC=$O(^BGPELIIH("C",BGPF,0))
 S BGPDF=$P(^BGPELIIH(BGPPC,0),U,8)
 S BGPNP=$P(^DD(90551.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U)=$$V(1,BGPRPT,N,P)
 S $P(BGPDAP(C),U)=$$V(2,BGPRPT,N,P)
 S $P(BGPDAB(C),U)=$$V(3,BGPRPT,N,P)
 ;set 2nd piece to numerator and 3rd to %
 S BGPNF=$P(^BGPELIIH(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90551.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U,2)=$$V(1,BGPRPT,N,P),$P(BGPDAC(C),U,3)=$S($P(BGPDAC(C),U,1):($P(BGPDAC(C),U,2)/$P(BGPDAC(C),U)*100),1:"")
 S $P(BGPDAP(C),U,2)=$$V(2,BGPRPT,N,P),$P(BGPDAP(C),U,3)=$S($P(BGPDAP(C),U,1):($P(BGPDAP(C),U,2)/$P(BGPDAP(C),U)*100),1:"")
 S $P(BGPDAB(C),U,2)=$$V(3,BGPRPT,N,P),$P(BGPDAB(C),U,3)=$S($P(BGPDAB(C),U,1):($P(BGPDAB(C),U,2)/$P(BGPDAB(C),U)*100),1:"")
 Q
I1AGEP ;
 W !,"CURRENT REPORT PERIOD"
 W !,BGPHD2
 S T=28 F X=1:1:3 S V=$P(BGPDAC(X),U) W ?T,$$C(V,0,6) S T=T+12
 W !,"# w/ Annual Wellness Exam"
 S T=28 F X=1:1:3 S V=$P(BGPDAC(X),U,2) W ?T,$$C(V,0,6) S T=T+12
 W !,"% w/ Annual Wellness Exam"
 S T=27 F X=1:1:3 S V=$P(BGPDAC(X),U,3) W ?T,$J(V,6,1) S T=T+12
PR ; 
 I $Y>(BGPIOSL-13) D HEADER^BGP3DPH Q:BGPQUIT  W !,^BGPELIH(BGPIC,53,1,0) D H3
 W !!,"PREVIOUS YEAR PERIOD"
 W !,BGPHD2
 S T=28 F X=1:1:3 S V=$P(BGPDAP(X),U) W ?T,$$C(V,0,6) S T=T+12
 W !,"# w/ Annual Wellness Exam"
 S T=28 F X=1:1:3 S V=$P(BGPDAP(X),U,2) W ?T,$$C(V,0,6) S T=T+12
 W !,"% w/ Annual Wellness Exam"
 S T=27 F X=1:1:3 S V=$P(BGPDAP(X),U,3) W ?T,$J(V,6,1) S T=T+12
 ;percentage changes
 W !!,"CHANGE FROM PREV YR %"
 W !,"# w/ Annual Wellness Exam"
 S T=27 F X=1:1:3 S N=$P(BGPDAC(X),U,3),O=$P(BGPDAP(X),U,3) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
BL ;
 I $Y>(BGPIOSL-18) D HEADER^BGP3DPH Q:BGPQUIT  W !,^BGPELIH(BGPIC,53,1,0) D H3
 W !!,"BASELINE REPORT PERIOD"
 W !,BGPHD2
 S T=28 F X=1:1:3 S V=$P(BGPDAB(X),U) W ?T,$$C(V,0,6) S T=T+12
 W !,"# w/ Annual Wellness Exam"
 S T=28 F X=1:1:3 S V=$P(BGPDAB(X),U,2) W ?T,$$C(V,0,6) S T=T+12
 W !,"% w/ Annual Wellness Exam"
 S T=27 F X=1:1:3 S V=$P(BGPDAB(X),U,3) W ?T,$J(V,6,1) S T=T+12
 ;percentage changes
 W !!,"CHANGE FROM BASE YR %"
 W !,"# w/ Annual Wellness Exam"
 S T=27 F X=1:1:3 S N=$P(BGPDAC(X),U,3),O=$P(BGPDAB(X),U,3) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
H3 ;EP
 W !!,$$CTR(BGPHD1,80)
 W !?40,"Age Distribution"
 W !?30,"65-74",?42,"75-84",?54,">84 yrs",!
 Q
SETN ;set numerator fields
 S BGPCYN=$$V(1,BGPRPT,N,P)
 S BGPPRN=$$V(2,BGPRPT,N,P)
 S BGPBLN=$$V(3,BGPRPT,N,P)
 S BGPCYP=$S(BGPCYD:((BGPCYN/BGPCYD)*100),1:"")
 S BGPPRP=$S(BGPPRD:((BGPPRN/BGPPRD)*100),1:"")
 S BGPBLP=$S(BGPBLD:((BGPBLN/BGPBLD)*100),1:"")
 Q
V(T,R,N,P) ;EP
 I $G(BGPAREAA) G VA
 I T=1 Q $P($G(^BGPELDCH(R,N)),U,P)
 I T=2 Q $P($G(^BGPELDPH(R,N)),U,P)
 I T=3 Q $P($G(^BGPELDBH(R,N)),U,P)
 Q ""
VA ;
 NEW X,V,C S X=0,C="" F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 .I T=1 S C=C+$P($G(^BGPELDCH(X,N)),U,P)
 .I T=2 S C=C+$P($G(^BGPELDPH(X,N)),U,P)
 .I T=3 S C=C+$P($G(^BGPELDBH(X,N)),U,P)
 .Q
 Q C
C(X,X2,X3) ;
 NEW A,B,C,D,E,F,G,H,I,J,K
 D COMMA^%DTC
 Q X
