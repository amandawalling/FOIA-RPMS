BGP4EL16 ; IHS/CMI/LAB - print ind 1 ;
 ;;14.0;IHS CLINICAL REPORTING;;NOV 14, 2013;Build 101
 ;
 ;
I1AGE ;EP  special age tallies
 S BGPHD1="ACTIVE DIABETIC PATIENTS =>55 W/O BILATERAL BLINDNESS",BGPHD2="# Active Diabetics"
 D HEADER^BGP4DPH Q:BGPQUIT  W !,^BGPELIJ(BGPIC,53,1,0)  D H3
 K BGPDAC,BGPDAP,BGPDAB S (C,D,E,F,G,H,I,J,K)=0 F BGPX="RTB.1","RTB.2","RTB.3","RTB.4" D I1AGE1,I1AGE2,I1AGE3
 D I1AGEP
 Q
I1AGE1 ;
 ;gather up all #'s
 S C=C+1
 S BGPF="ELD."_BGPX S BGPPC=$O(^BGPELIIJ("C",BGPF,0))
 S BGPDF=$P(^BGPELIIJ(BGPPC,0),U,8)
 S BGPNP=$P(^DD(90553.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U)=$$V(1,BGPRPT,N,P)
 S $P(BGPDAP(C),U)=$$V(2,BGPRPT,N,P)
 S $P(BGPDAB(C),U)=$$V(3,BGPRPT,N,P)
 ;set 2nd piece to numerator and 3rd to %
 S BGPNF=$P(^BGPELIIJ(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90553.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U,2)=$$V(1,BGPRPT,N,P),$P(BGPDAC(C),U,3)=$S($P(BGPDAC(C),U,1):($P(BGPDAC(C),U,2)/$P(BGPDAC(C),U)*100),1:"")
 S $P(BGPDAP(C),U,2)=$$V(2,BGPRPT,N,P),$P(BGPDAP(C),U,3)=$S($P(BGPDAP(C),U,1):($P(BGPDAP(C),U,2)/$P(BGPDAP(C),U)*100),1:"")
 S $P(BGPDAB(C),U,2)=$$V(3,BGPRPT,N,P),$P(BGPDAB(C),U,3)=$S($P(BGPDAB(C),U,1):($P(BGPDAB(C),U,2)/$P(BGPDAB(C),U)*100),1:"")
 Q
I1AGE2 ;
 S D=D+1
 S BGPF="ELD."_$P(BGPX,".")_"."_($P(BGPX,".",2)+4) S BGPPC=$O(^BGPELIIJ("C",BGPF,0))
 ;set 4th piece to numerator and 5th to %
 S BGPNF=$P(^BGPELIIJ(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90553.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(D),U,4)=$$V(1,BGPRPT,N,P),$P(BGPDAC(D),U,5)=$S($P(BGPDAC(D),U,1):($P(BGPDAC(D),U,4)/$P(BGPDAC(D),U)*100),1:"")
 S $P(BGPDAP(D),U,4)=$$V(2,BGPRPT,N,P),$P(BGPDAP(D),U,5)=$S($P(BGPDAP(D),U,1):($P(BGPDAP(D),U,4)/$P(BGPDAP(D),U)*100),1:"")
 S $P(BGPDAB(D),U,4)=$$V(3,BGPRPT,N,P),$P(BGPDAB(D),U,5)=$S($P(BGPDAB(D),U,1):($P(BGPDAB(D),U,4)/$P(BGPDAB(D),U)*100),1:"")
 Q
I1AGE3 ;
 S E=E+1
 S BGPF="ELD."_$P(BGPX,".")_"."_($P(BGPX,".",2)+8) S BGPPC=$O(^BGPELIIJ("C",BGPF,0))
 ;set 4th piece to numerator and 5th to %
 S BGPNF=$P(^BGPELIIJ(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90553.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(E),U,6)=$$V(1,BGPRPT,N,P),$P(BGPDAC(E),U,7)=$S($P(BGPDAC(E),U,1):($P(BGPDAC(E),U,6)/$P(BGPDAC(E),U)*100),1:"")
 S $P(BGPDAP(E),U,6)=$$V(2,BGPRPT,N,P),$P(BGPDAP(E),U,7)=$S($P(BGPDAP(E),U,1):($P(BGPDAP(E),U,6)/$P(BGPDAP(E),U)*100),1:"")
 S $P(BGPDAB(E),U,6)=$$V(3,BGPRPT,N,P),$P(BGPDAB(E),U,7)=$S($P(BGPDAB(E),U,1):($P(BGPDAB(E),U,6)/$P(BGPDAB(E),U)*100),1:"")
 Q
I1AGE4 ;
 S F=F+1
 S BGPF="ELD."_$P(BGPX,".")_"."_($P(BGPX,".",2)+12) S BGPPC=$O(^BGPELIIJ("C",BGPF,0))
 ;set 4th piece to numerator and 5th to %
 S BGPNF=$P(^BGPELIIJ(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90553.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(F),U,8)=$$V(1,BGPRPT,N,P),$P(BGPDAC(F),U,9)=$S($P(BGPDAC(F),U,1):($P(BGPDAC(F),U,8)/$P(BGPDAC(F),U)*100),1:"")
 S $P(BGPDAP(F),U,8)=$$V(2,BGPRPT,N,P),$P(BGPDAP(F),U,9)=$S($P(BGPDAP(F),U,1):($P(BGPDAP(F),U,8)/$P(BGPDAP(F),U)*100),1:"")
 S $P(BGPDAB(F),U,8)=$$V(3,BGPRPT,N,P),$P(BGPDAB(F),U,9)=$S($P(BGPDAB(F),U,1):($P(BGPDAB(F),U,8)/$P(BGPDAB(F),U)*100),1:"")
 Q
I1AGEP ;
 W !,"CURRENT REPORT PERIOD"
 W !,BGPHD2
 S T=28 F X=1:1:4 S V=$P(BGPDAC(X),U) W ?T,$$C(V,0,6) S T=T+12
 W !,"# w/Retinal Evaluation-No",!," Refusals (GPRA)"
 S T=28 F X=1:1:4 S V=$P(BGPDAC(X),U,2) W ?T,$$C(V,0,6) S T=T+12
 W !,"% w/Retinal Evaluation-No",!," Refusals (GPRA)"
 S T=27 F X=1:1:4 S V=$P(BGPDAC(X),U,3) W ?T,$J(V,6,1) S T=T+12
 W !!,"# A. w/ DM Retinal",!," exam"
 S T=28 F X=1:1:4 S V=$P(BGPDAC(X),U,4) W ?T,$$C(V,0,6) S T=T+12
 W !,"A. % w/ DM Retinal",!," exam"
 S T=27 F X=1:1:4 S V=$P(BGPDAC(X),U,5) W ?T,$J(V,6,1) S T=T+12
 W !!,"# B. w/Other Eye",!?2,"Exams"
 S T=28 F X=1:1:4 S V=$P(BGPDAC(X),U,6) W ?T,$$C(V,0,6) S T=T+12
 W !,"B. % w/Other Eye",!?2,"Exams"
 S T=27 F X=1:1:4 S V=$P(BGPDAC(X),U,7) W ?T,$J(V,6,1) S T=T+12
 ;
PR ; 
 D HEADER^BGP4DPH Q:BGPQUIT  W !,^BGPELIJ(BGPIC,53,1,0) D H3
 W !!,"PREVIOUS YEAR PERIOD"
 W !,BGPHD2
 S T=28 F X=1:1:4 S V=$P(BGPDAP(X),U) W ?T,$$C(V,0,6) S T=T+12
 W !,"# w/Retinal Evaluation-No",!," Refusals (GPRA)"
 S T=28 F X=1:1:4 S V=$P(BGPDAP(X),U,2) W ?T,$$C(V,0,6) S T=T+12
 W !,"% w/Retinal Evaluation-No",!," Refusals (GPRA)"
 S T=27 F X=1:1:4 S V=$P(BGPDAP(X),U,3) W ?T,$J(V,6,1) S T=T+12
 W !!,"# A. w/ DM Retinal",!," exam"
 S T=28 F X=1:1:4 S V=$P(BGPDAP(X),U,4) W ?T,$$C(V,0,6) S T=T+12
 W !,"A. % w/ DM Retinal",!," exam"
 S T=27 F X=1:1:4 S V=$P(BGPDAP(X),U,5) W ?T,$J(V,6,1) S T=T+12
 W !!,"# B. w/Other Eye",!?2,"Exams"
 S T=28 F X=1:1:4 S V=$P(BGPDAP(X),U,6) W ?T,$$C(V,0,6) S T=T+12
 W !,"B. % w/Other Eye",!?2,"Exams"
 S T=27 F X=1:1:4 S V=$P(BGPDAP(X),U,7) W ?T,$J(V,6,1) S T=T+12
 ;
 ;percentage changes
 W !!,"CHANGE FROM PREV YR %"
 W !,"# w/Retinal Evaluation-No",!," Refusals (GPRA)"
 S T=27 F X=1:1:4 S N=$P(BGPDAC(X),U,3),O=$P(BGPDAP(X),U,3) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
 W !,"# A. w/ DM Retinal",!," exam"
 S T=27 F X=1:1:4 S N=$P(BGPDAC(X),U,5),O=$P(BGPDAP(X),U,5) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
 W !,"# B. w/Other Eye",!?2,"Exams"
 S T=27 F X=1:1:4 S N=$P(BGPDAC(X),U,7),O=$P(BGPDAP(X),U,7) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
BL ;
 D HEADER^BGP4DPH Q:BGPQUIT  W !,^BGPELIJ(BGPIC,53,1,0) D H3
 W !!,"BASELINE REPORT PERIOD"
 W !,BGPHD2
 S T=28 F X=1:1:4 S V=$P(BGPDAB(X),U) W ?T,$$C(V,0,6) S T=T+12
 W !,"# w/Retinal Evaluation-No",!," Refusals (GPRA)"
 S T=28 F X=1:1:4 S V=$P(BGPDAB(X),U,2) W ?T,$$C(V,0,6) S T=T+12
 W !,"% w/Retinal Evaluation-No",!," Refusals (GPRA)"
 S T=27 F X=1:1:4 S V=$P(BGPDAB(X),U,3) W ?T,$J(V,6,1) S T=T+12
 W !!,"# A. w/ DM Retinal",!," exam"
 S T=28 F X=1:1:4 S V=$P(BGPDAB(X),U,4) W ?T,$$C(V,0,6) S T=T+12
 W !,"A. % w/ DM Retinal",!," exam"
 S T=27 F X=1:1:4 S V=$P(BGPDAB(X),U,5) W ?T,$J(V,6,1) S T=T+12
 W !!,"# B. w/Other Eye",!?2,"Exams"
 S T=28 F X=1:1:4 S V=$P(BGPDAB(X),U,6) W ?T,$$C(V,0,6) S T=T+12
 W !,"B. % w/Other Eye",!?2,"Exams"
 S T=27 F X=1:1:4 S V=$P(BGPDAB(X),U,7) W ?T,$J(V,6,1) S T=T+12
 ;
 ;percentage changes
 W !!,"CHANGE FROM BASE YR %"
 W !,"# w/Retinal Evaluation-No",!," Refusals (GPRA)"
 S T=27 F X=1:1:4 S N=$P(BGPDAC(X),U,3),O=$P(BGPDAB(X),U,3) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
 W !,"# A. w/ DM Retinal",!," exam"
 S T=27 F X=1:1:4 S N=$P(BGPDAC(X),U,5),O=$P(BGPDAB(X),U,5) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
 W !,"# B. w/Other Eye",!?2,"Exams"
 S T=27 F X=1:1:4 S N=$P(BGPDAC(X),U,7),O=$P(BGPDAB(X),U,7) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
H3 ;EP
 W !!,$$CTR(BGPHD1,80)
 W !?40,"Age Distribution"
 W !?30,"55-64",?42,"65-74",?54,"75-84",?65,">84 yrs",!
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
 I T=1 Q $P($G(^BGPELDCJ(R,N)),U,P)
 I T=2 Q $P($G(^BGPELDPJ(R,N)),U,P)
 I T=3 Q $P($G(^BGPELDBJ(R,N)),U,P)
 Q ""
VA ;
 NEW X,V,C S X=0,C="" F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 .I T=1 S C=C+$P($G(^BGPELDCJ(X,N)),U,P)
 .I T=2 S C=C+$P($G(^BGPELDPJ(X,N)),U,P)
 .I T=3 S C=C+$P($G(^BGPELDBJ(X,N)),U,P)
 .Q
 Q C
C(X,X2,X3) ;
 NEW A,B,C,D,E,F,G,H,I,J,K
 D COMMA^%DTC
 Q X
