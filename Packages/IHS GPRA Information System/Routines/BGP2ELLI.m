BGP2ELLI ; IHS/CMI/LAB - print ind ;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;
 ;
I1AGE ;EP
 S BGPHD1="ACTIVE CLINICAL PATIENTS =>55",BGPHD2="# Active Clinical Patients"
 S X=" " D S(X,1,1) D H3^BGP2ELL2 S X=" " D S(X,1,1)
 K BGPDAC,BGPDAP,BGPDAB S (C,D,E,F,G,H,I,J,K)=0 F BGPX="CBD.1","CBD.2","CBD.3","CBD.4" D I1AGE1,I1AGE2,I1AGE3,I1AGE4,I1AGE5,I1AGE6
 D I1AGEP
MALE ;
 S BGPHD1="MALE ACTIVE CLINICAL PATIENTS =>55",BGPHD2="# Male Active Clinical Patients"
 S X=" " D S(X,1,1) D H3^BGP2ELL2 S X=" " D S(X,1,1)
 K BGPDAC,BGPDAP,BGPDAB S (C,D,E,F,G,H,I,J,K)=0 F BGPX="CBE.1","CBE.2","CBE.3","CBE.4" D I1AGE1,I1AGE2,I1AGE3,I1AGE4,I1AGE5,I1AGE6
 D I1AGEP
FEMALE ;
 S BGPHD1="FEMALE ACTIVE CLINICAL PATIENTS =>55",BGPHD2="# Female Active Clinical Patients"
 S X=" " D S(X,1,1) D H3^BGP2ELL2 S X=" " D S(X,1,1)
 K BGPDAC,BGPDAP,BGPDAB S (C,D,E,F,G,H,I,J,K)=0 F BGPX="CBF.1","CBF.2","CBF.3","CBF.4" D I1AGE1,I1AGE2,I1AGE3,I1AGE4,I1AGE5,I1AGE6
 D I1AGEP
 Q
I1AGE1 ;
 S C=C+1
 S BGPF="ELD."_BGPX S BGPPC=$O(^BGPELIIW("C",BGPF,0))
 S BGPDF=$P(^BGPELIIW(BGPPC,0),U,8)
 S BGPNP=$P(^DD(90549.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U)=$$V(1,BGPRPT,N,P)
 S $P(BGPDAP(C),U)=$$V(2,BGPRPT,N,P)
 S $P(BGPDAB(C),U)=$$V(3,BGPRPT,N,P)
 ;set 2nd piece to numerator and 3rd to %
 S BGPNF=$P(^BGPELIIW(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90549.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U,2)=$$V(1,BGPRPT,N,P),$P(BGPDAC(C),U,3)=$S($P(BGPDAC(C),U,1):($P(BGPDAC(C),U,2)/$P(BGPDAC(C),U)*100),1:"")
 S $P(BGPDAP(C),U,2)=$$V(2,BGPRPT,N,P),$P(BGPDAP(C),U,3)=$S($P(BGPDAP(C),U,1):($P(BGPDAP(C),U,2)/$P(BGPDAP(C),U)*100),1:"")
 S $P(BGPDAB(C),U,2)=$$V(3,BGPRPT,N,P),$P(BGPDAB(C),U,3)=$S($P(BGPDAB(C),U,1):($P(BGPDAB(C),U,2)/$P(BGPDAB(C),U)*100),1:"")
 Q
I1AGE2 ;
 S D=D+1
 S BGPF="ELD."_$P(BGPX,".")_"."_($P(BGPX,".",2)+4) S BGPPC=$O(^BGPELIIW("C",BGPF,0))
 ;set 4th piece to numerator and 5th to %
 S BGPNF=$P(^BGPELIIW(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90549.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(D),U,4)=$$V(1,BGPRPT,N,P),$P(BGPDAC(D),U,5)=$S($P(BGPDAC(D),U,2):($P(BGPDAC(D),U,4)/$P(BGPDAC(D),U,2)*100),1:"")
 S $P(BGPDAP(D),U,4)=$$V(2,BGPRPT,N,P),$P(BGPDAP(D),U,5)=$S($P(BGPDAP(D),U,2):($P(BGPDAP(D),U,4)/$P(BGPDAP(D),U,2)*100),1:"")
 S $P(BGPDAB(D),U,4)=$$V(3,BGPRPT,N,P),$P(BGPDAB(D),U,5)=$S($P(BGPDAB(D),U,2):($P(BGPDAB(D),U,4)/$P(BGPDAB(D),U,2)*100),1:"")
 Q
I1AGE3 ;
 S E=E+1
 S BGPF="ELD."_$P(BGPX,".")_"."_($P(BGPX,".",2)+8) S BGPPC=$O(^BGPELIIW("C",BGPF,0))
 ;set 4th piece to numerator and 5th to %
 S BGPNF=$P(^BGPELIIW(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90549.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(E),U,6)=$$V(1,BGPRPT,N,P),$P(BGPDAC(E),U,7)=$S($P(BGPDAC(E),U,2):($P(BGPDAC(E),U,6)/$P(BGPDAC(E),U,2)*100),1:"")
 S $P(BGPDAP(E),U,6)=$$V(2,BGPRPT,N,P),$P(BGPDAP(E),U,7)=$S($P(BGPDAP(E),U,2):($P(BGPDAP(E),U,6)/$P(BGPDAP(E),U,2)*100),1:"")
 S $P(BGPDAB(E),U,6)=$$V(3,BGPRPT,N,P),$P(BGPDAB(E),U,7)=$S($P(BGPDAB(E),U,2):($P(BGPDAB(E),U,6)/$P(BGPDAB(E),U,2)*100),1:"")
 Q
I1AGE4 ;
 S F=F+1
 S BGPF="ELD."_$P(BGPX,".")_"."_($P(BGPX,".",2)+12) S BGPPC=$O(^BGPELIIW("C",BGPF,0))
 S BGPNF=$P(^BGPELIIW(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90549.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(F),U,8)=$$V(1,BGPRPT,N,P),$P(BGPDAC(F),U,9)=$S($P(BGPDAC(F),U,2):($P(BGPDAC(F),U,8)/$P(BGPDAC(F),U,2)*100),1:"")
 S $P(BGPDAP(F),U,8)=$$V(2,BGPRPT,N,P),$P(BGPDAP(F),U,9)=$S($P(BGPDAP(F),U,2):($P(BGPDAP(F),U,8)/$P(BGPDAP(F),U,2)*100),1:"")
 S $P(BGPDAB(F),U,8)=$$V(3,BGPRPT,N,P),$P(BGPDAB(F),U,9)=$S($P(BGPDAB(F),U,2):($P(BGPDAB(F),U,8)/$P(BGPDAB(F),U,2)*100),1:"")
 Q
I1AGE5 ;
 S G=G+1
 S BGPF="ELD."_$P(BGPX,".")_"."_($P(BGPX,".",2)+16) S BGPPC=$O(^BGPELIIW("C",BGPF,0))
 S BGPNF=$P(^BGPELIIW(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90549.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(G),U,10)=$$V(1,BGPRPT,N,P),$P(BGPDAC(G),U,11)=$S($P(BGPDAC(G),U,2):($P(BGPDAC(G),U,10)/$P(BGPDAC(G),U,2)*100),1:"")
 S $P(BGPDAP(G),U,10)=$$V(2,BGPRPT,N,P),$P(BGPDAP(G),U,11)=$S($P(BGPDAP(G),U,2):($P(BGPDAP(G),U,10)/$P(BGPDAP(G),U,2)*100),1:"")
 S $P(BGPDAB(G),U,10)=$$V(3,BGPRPT,N,P),$P(BGPDAB(G),U,11)=$S($P(BGPDAB(G),U,2):($P(BGPDAB(G),U,10)/$P(BGPDAB(G),U,2)*100),1:"")
 Q
I1AGE6 ;
 S H=H+1
 S BGPF="ELD."_$P(BGPX,".")_"."_($P(BGPX,".",2)+20) S BGPPC=$O(^BGPELIIW("C",BGPF,0))
 S BGPNF=$P(^BGPELIIW(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90549.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(H),U,12)=$$V(1,BGPRPT,N,P),$P(BGPDAC(H),U,13)=$S($P(BGPDAC(H),U,2):($P(BGPDAC(H),U,12)/$P(BGPDAC(H),U,2)*100),1:"")
 S $P(BGPDAP(H),U,12)=$$V(2,BGPRPT,N,P),$P(BGPDAP(H),U,13)=$S($P(BGPDAP(H),U,2):($P(BGPDAP(H),U,12)/$P(BGPDAP(H),U,2)*100),1:"")
 S $P(BGPDAB(H),U,12)=$$V(3,BGPRPT,N,P),$P(BGPDAB(H),U,13)=$S($P(BGPDAB(H),U,2):($P(BGPDAB(H),U,12)/$P(BGPDAB(H),U,2)*100),1:"")
 Q
I1AGE7 ;
 S I=I+1
 S BGPF="ELD."_$P(BGPX,".")_"."_($P(BGPX,".",2)+24) S BGPPC=$O(^BGPELIIW("C",BGPF,0))
 ;set 4th piece to numerator and 5th to %
 S BGPNF=$P(^BGPELIIW(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90549.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(I),U,14)=$$V(1,BGPRPT,N,P),$P(BGPDAC(I),U,15)=$S($P(BGPDAC(I),U,1):($P(BGPDAC(I),U,14)/$P(BGPDAC(I),U,2)*100),1:"")
 S $P(BGPDAP(I),U,14)=$$V(2,BGPRPT,N,P),$P(BGPDAP(I),U,15)=$S($P(BGPDAP(I),U,1):($P(BGPDAP(I),U,14)/$P(BGPDAP(I),U,2)*100),1:"")
 S $P(BGPDAB(I),U,14)=$$V(3,BGPRPT,N,P),$P(BGPDAB(I),U,15)=$S($P(BGPDAB(I),U,1):($P(BGPDAB(I),U,14)/$P(BGPDAB(I),U,2)*100),1:"")
 Q
I1AGEP ;
 S X=" " D S(X,1,1)
 S X="CURRENT REPORT PERIOD" D S(X,1,1) S X=" " D S(X,1,1)
 S X=BGPHD2 D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U) S Y=V D S(Y,,X+1)
 S X="# w/BP's documented w/in 2 yrs" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,2) S Y=V D S(Y,,X+1)
 S X="% w/BP's documented w/in 2 yrs" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,3) S Y=$$SB^BGP2ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="A. # w/Normal BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,4) S Y=V D S(Y,,X+1)
 S X="% A. w/Normal BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,5) S Y=$$SB^BGP2ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# B. w/Pre HTN I BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,6) S Y=V D S(Y,,X+1)
 S X="% B. w/Pre HTN I BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,7) S Y=$$SB^BGP2ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# C. w/Pre HTN II BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,8) S Y=V D S(Y,,X+1)
 S X="% C. w/Pre HTN II BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,9) S Y=$$SB^BGP2ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# D. w/Stage 1 HTN BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,10) S Y=V D S(Y,,X+1)
 S X="% D. w/Stage 1 HTN BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,11) S Y=$$SB^BGP2ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# E. w/Stage 2 HTN BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,12) S Y=V D S(Y,,X+1)
 S X="% E. w/Stage 2 HTN BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,13) S Y=$$SB^BGP2ELL2($J(V,6,1)) D S(Y,,X+1)
PR ; 
 S X=" " D S(X,1,1) S X="PREVIOUS YEAR PERIOD" D S(X,1,1)
 S X=" " D S(X,1,1) S X=BGPHD2 D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U) S Y=V D S(Y,,X+1)
 S X="# w/BP's documented w/in 2 yrs" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,2) S Y=V D S(Y,,X+1)
 S X="% w/BP's documented w/in 2 yrs" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,3) S Y=$$SB^BGP2ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="A. # w/Normal BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,4) S Y=V D S(Y,,X+1)
 S X="% A. w/Normal BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,5) S Y=$$SB^BGP2ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1)
 S X="# B. w/Pre HTN I BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,6) S Y=V D S(Y,,X+1)
 S X="% B. w/Pre HTN I BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,7) S Y=$$SB^BGP2ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# C. w/Pre HTN II BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,8) S Y=V D S(Y,,X+1)
 S X="% C. w/Pre HTN II BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,9) S Y=$$SB^BGP2ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# D. w/Stage 1 HTN BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,10) S Y=V D S(Y,,X+1)
 S X="% D. w/Stage 1 HTN BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,11) S Y=$$SB^BGP2ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# E. w/Stage 2 HTN BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,12) S Y=V D S(Y,,X+1)
 S X="% E. w/Stage 2 HTN BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,13) S Y=$$SB^BGP2ELL2($J(V,6,1)) D S(Y,,X+1)
 ;percentage changes
 S X=" " D S(X,1,1) S X="CHANGE FROM PREV YR %" D S(X,1,1)
 S X="w/BP's documented w/in 2 yrs" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,3),O=$P(BGPDAP(X),U,3) S Y=$$SB^BGP2ELL2($J((N-O),6,1)) D S(Y,,X+1)
 S X="A. w/Normal BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,5),O=$P(BGPDAP(X),U,5) S Y=$$SB^BGP2ELL2($J((N-O),6,1)) D S(Y,,X+1)
 S X="B. w/Pre HTN I BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,7),O=$P(BGPDAP(X),U,7) S Y=$$SB^BGP2ELL2($J((N-O),6,1)) D S(Y,,X+1)
 S X="C. w/Pre HTN II BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,9),O=$P(BGPDAP(X),U,9) S Y=$$SB^BGP2ELL2($J((N-O),6,1)) D S(Y,,X+1)
 S X="D. w/Stage 1 HTN BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,11),O=$P(BGPDAP(X),U,11) S Y=$$SB^BGP2ELL2($J((N-O),6,1)) D S(Y,,X+1)
 S X="E. w/Stage 2 HTN BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,13),O=$P(BGPDAP(X),U,13) S Y=$$SB^BGP2ELL2($J((N-O),6,1)) D S(Y,,X+1)
BL ;
 S X=" " D S(X,1,1) S X="BASELINE REPORT PERIOD" D S(X,1,1)
 S X=" " D S(X,1,1) S X=BGPHD2 D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U) S Y=V D S(Y,,X+1)
 S X="# w/BP's documented w/in 2 yrs" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,2) S Y=V D S(Y,,X+1)
 S X="% w/BP's documented w/in 2 yrs" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,3) S Y=$$SB^BGP2ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="A. # w/Normal BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,4) S Y=V D S(Y,,X+1)
 S X="% A. w/Normal BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,5) S Y=$$SB^BGP2ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1)
 S X="# B. w/Pre HTN I BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,6) S Y=V D S(Y,,X+1)
 S X="% B. w/Pre HTN I BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,7) S Y=$$SB^BGP2ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# C. w/Pre HTN II BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,8) S Y=V D S(Y,,X+1)
 S X="% C. w/Pre HTN II BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,9) S Y=$$SB^BGP2ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# D. w/Stage 1 HTN BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,10) S Y=V D S(Y,,X+1)
 S X="% D. w/Stage 1 HTN BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,11) S Y=$$SB^BGP2ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# E. w/Stage 2 HTN BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,12) S Y=V D S(Y,,X+1)
 S X="% E. w/Stage 2 HTN BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,13) S Y=$$SB^BGP2ELL2($J(V,6,1)) D S(Y,,X+1)
 ;percentage changes
 S X=" " D S(X,1,1) S X="CHANGE FROM BASE YR %" D S(X,1,1)
 S X="w/BP's documented w/in 2 yrs" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,3),O=$P(BGPDAB(X),U,3) S Y=$$SB^BGP2ELL2($J((N-O),6,1)) D S(Y,,X+1)
 S X="A. w/Normal BP w/% of Total Screened" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,5),O=$P(BGPDAB(X),U,5) S Y=$$SB^BGP2ELL2($J((N-O),6,1)) D S(Y,,X+1)
 S X="B. w/Pre HTN I BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,7),O=$P(BGPDAB(X),U,7) S Y=$$SB^BGP2ELL2($J((N-O),6,1)) D S(Y,,X+1)
 S X="C. w/Pre HTN II BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,9),O=$P(BGPDAB(X),U,9) S Y=$$SB^BGP2ELL2($J((N-O),6,1)) D S(Y,,X+1)
 S X="D. w/Stage 1 HTN BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,11),O=$P(BGPDAB(X),U,11) S Y=$$SB^BGP2ELL2($J((N-O),6,1)) D S(Y,,X+1)
 S X="E. w/Stage 2 HTN BP w/ % of Total Screened" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,13),O=$P(BGPDAB(X),U,13) S Y=$$SB^BGP2ELL2($J((N-O),6,1)) D S(Y,,X+1)
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
 NEW X
 I T=1 S X=$P($G(^BGPELDCW(R,N)),U,P) Q $S(X]"":X,1:0)
 I T=2 S X=$P($G(^BGPELDPW(R,N)),U,P) Q $S(X]"":X,1:0)
 I T=3 S X=$P($G(^BGPELDBW(R,N)),U,P) Q $S(X]"":X,1:0)
 Q ""
VA ;
 NEW X,V,C S X=0,C="" F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 .I T=1 S C=C+$P($G(^BGPELDCW(X,N)),U,P)
 .I T=2 S C=C+$P($G(^BGPELDPW(X,N)),U,P)
 .I T=3 S C=C+$P($G(^BGPELDBW(X,N)),U,P)
 .Q
 Q $S(C:C,1:0)
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
S(Y,F,P) ;set up array
 I '$G(F) S F=0
 S %=$P(^TMP($J,"BGPDEL",0),U)+F,$P(^TMP($J,"BGPDEL",0),U)=%
 I '$D(^TMP($J,"BGPDEL",%)) S ^TMP($J,"BGPDEL",%)=""
 S $P(^TMP($J,"BGPDEL",%),U,P)=Y
 Q
CALC(N,O) ;
 NEW Z
 S Z=N-O,Z=$FN(Z,"+,",1)
 Q Z
H3 ;EP
 S X="Cardiovascular Disease and Blood Pressure Control" D S(X,1,1) S Y=" " D S(Y,1,1) S X=BGPHD1 D S(X,1,1) S Y=" " D S(Y,1,1)
 S X="Age Distribution" D S(X,1,1) S X=" " D S(X,1,1)
 S Y="55-64" D S(Y,1,2)
 S Y="65-74" D S(Y,,3)
 S Y="75-84" D S(Y,,4)
 S Y=">84 yrs" D S(Y,,5)
 Q
SB(X) ;EP - Strip leading and trailing blanks from X.
 X ^DD("FUNC",$O(^DD("FUNC","B","STRIPBLANKS",0)),1)
 Q X
H2 ;
 S BGPX="",BGPX=BGPCYN
 S $P(BGPX,U,2)=$$SB^BGP2ELL2($J(BGPCYP,5,1)),$P(BGPX,U,3)=BGPPRN,$P(BGPX,U,4)=$$SB^BGP2ELL2($J(BGPPRP,5,1)),$P(BGPX,U,5)=$$SB^BGP2ELL2($J($$CALC(BGPCYP,BGPPRP),6)),$P(BGPX,U,6)=BGPBLN,$P(BGPX,U,7)=$$SB^BGP2ELL2($J(BGPBLP,5,1))
 S $P(BGPX,U,8)=$$SB^BGP2ELL2($J($$CALC(BGPCYP,BGPBLP),6))
 D S(BGPX,,2)
 Q
H1 ;EP
 S Y="REPORT" D S(Y,1,2)
 S Y="%" D S(Y,,3)
 S Y="PREV YR" D S(Y,,4)
 S Y="%" D S(Y,,5)
 S Y="CHG from" D S(Y,,6)
 S Y="BASE" D S(Y,,7)
 S Y="%" D S(Y,,8)
 S Y="CHG from" D S(Y,,9)
 S Y="PERIOD" D S(Y,1,2)
 S Y="PERIOD" D S(Y,,4)
 S Y="PREV YR %" D S(Y,,6)
 S Y="PERIOD" D S(Y,,7)
 S Y="BASE %" D S(Y,,9)
 Q
