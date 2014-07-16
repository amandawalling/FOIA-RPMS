BGP4D3A ; IHS/CMI/LAB - measure 11 17 Oct 2009 12:40 PM 15 Apr 2014 8:06 AM ;
 ;;14.0;IHS CLINICAL REPORTING;;NOV 14, 2013;Build 101
 ;
 ;
SEALDEV(P,BDATE,EDATE) ;EP
 NEW BGPG,BGPX,BGPC,%,X,V,T
 S BGPC=0
 S T=$$FMADD^XLFDT(EDATE,-1096)
 K BGPG
 S %=P_"^ALL ADA 0007;DURING "_$$DATE^BGP4UTL(T)_"-"_$$DATE^BGP4UTL(EDATE),E=$$START1^APCLDF(%,"BGPG(")
 S %="",X=0
 F  S X=$O(BGPG(X)) Q:X'=+X  S V=$P(BGPG(X),U,5) I '$$HAS13(V) S %=1_U_$$DATE^BGP4UTL($P(BGPG(1),U,1))_" ADA 0007"
 Q %
HAS13(V) ;
 NEW X,Y,Z
 S Z=0
 S X=0 F  S X=$O(^AUPNVDEN("AD",V,X)) Q:X'=+X!(Z)  S Y=$$VAL^XBDIQ1(9000010.05,X,.01) I Y="1351"!(Y="1352") S Z=1
 S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X!(Z)  S Y=$$VAL^XBDIQ1(9000010.18,X,.01) I Y="D1351"!(Y="D1352") S Z=1
 Q Z
 ;I $D(BGPG(1)) Q 1_U_$$DATE^BGP4UTL($P(BGPG(1),U,1))_" ADA 0007"
 ;S T=$$FMADD^XLFDT(EDATE,-1096)
 ;S %="",E=+$$CODEN^ICPTCOD("D0007"),%=$$CPTI^BGP4DU(P,T,EDATE,E)
 ;I % Q 1_"^"_$$DATE^BGP4UTL($P(%,U,2))_" CPT D0007"
 Q ""
TF(P,BDATE,EDATE) ;EP
 NEW T,A,%,X,Y,T,Z,G,BGPZ,BGPJ,R
 K BGPG,BGPZ S BGPC=0
 K ^TMP($J,"A")
 S A="^TMP($J,""A"","
 S Z=$O(^ATXAX("B","BGP TOPICAL FLUORIDE ADA CODES",0))
 S %=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,A)
 S X=0,Y=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(BGPC>3)  S V=$P(^TMP($J,"A",X),U,5) D
 .S Y=0,G=0 F  S Y=$O(^AUPNVDEN("AD",V,Y)) Q:Y'=+Y!(G>0)!($P(BGPC,U,1)>3)  D
 ..S A=$P($G(^AUPNVDEN(Y,0)),U) D
 ...I $D(^ATXAX(Z,21,"B",A)) S T=1 S $P(BGPC,U,1)=$P(BGPC,U,1)+1,G=G+1,$P(BGPC,U,BGPC+1)=$$VD^APCLV($P(^AUPNVDEN(Y,0),U,3))_"|ADA "_$$VAL^XBDIQ1(9000010.05,Y,.01)  ;one per visit
 ...Q
 .Q:G
 .S Y=0,G=0 F  S Y=$O(^AUPNVCPT("AD",V,Y)) Q:Y'=+Y!(G)!(BGPC>3)  D
 ..S A=$P($G(^AUPNVCPT(Y,0)),U)
 ..Q:'A
 ..I $$ICD^BGP4UTL2(A,$O(^ATXAX("B","BGP CPT TOPICAL FLUORIDE",0)),1) S T=1 S $P(BGPC,U,1)=$P(BGPC,U,1)+1,G=G+1,$P(BGPC,U,BGPC+1)=$$VD^APCLV($P(^AUPNVCPT(Y,0),U,3))_"|CPT "_$$VAL^XBDIQ1(9000010.18,Y,.01)  ;one per visit
 .Q:G  ;one per visit
 .S Y=0,G=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y!(G)!(BGPC>3)  D
 ..S A=$P($G(^AUPNVPOV(Y,0)),U) I A D
 ...I $$ICD^BGP4UTL2(A,$O(^ATXAX("B","BGP TOPICAL FLUORIDE DXS",0)),9) S $P(BGPC,U,1)=$P(BGPC,U,1)+1,G=1,$P(BGPC,U,BGPC+1)=$$VD^APCLV($P(^AUPNVPOV(Y,0),U,3))_"|POV "_$$VAL^XBDIQ1(9000010.07,Y,.01)  ;one per visit
 ...Q
 I BGPC Q BGPC
 Q ""
SEAL(P,BDATE,EDATE) ;EP
 NEW A,%,X,Y,BGPC,BGPG,BGPX,G,T,S,V,BGPCNT
 K BGPG,BGPX
 S BGPCNT=0
 K ^TMP($J,"A")
 S A="^TMP($J,""A"","
 S BGPC=0
 S %=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,A)
 S X=0,Y=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X  S V=$P(^TMP($J,"A",X),U,5) D
 .S Y=0,G=0 F  S Y=$O(^AUPNVDEN("AD",V,Y)) Q:Y'=+Y  D
 ..S A=$P($G(^AUPNVDEN(Y,0)),U) I A S A=$P($G(^AUTTADA(A,0)),U) D
 ...I A'=1351,A'=1352 Q
 ...S G=1
 ...S T=$P($G(^AUPNVDEN(Y,0)),U,4) S:T=""!(T=0) T=1
 ...S S=$P(^AUPNVDEN(Y,0),U,5)
 ...I S]"" D
 ....I $G(BGPX(S))<2 D
 .....I T=1 S BGPX(S)=$G(BGPX(S))+T
 .....I T'=1 S T=$S(T>(2-$G(BGPX(S))):(2-$G(BGPX(S))),1:T),BGPX(S)=$G(BGPX(S))+T ;only first 2 per tooth
 .....S BGPCNT=BGPCNT+1 S BGPSEALS(BGPCNT,$$VD^APCLV($P(^AUPNVDEN(Y,0),U,3)))="ADA 1351 ("_T_")"
 ...I S="" S BGPX("NO OS")=$G(BGPX("NO OS"))+T,BGPCNT=BGPCNT+1,BGPSEALS(BGPCNT,$$VD^APCLV($P(^AUPNVDEN(Y,0),U,3)))="ADA 1351 ("_T_")"
 ...Q
 .Q:G  ;had ADA1351/1352 codes so skip cpts/0007
 .S Y=0,G=0 F  S Y=$O(^AUPNVCPT("AD",V,Y)) Q:Y'=+Y  D
 ..S A=$P($G(^AUPNVCPT(Y,0)),U)
 ..Q:'A
 ..S A=$P($$CPT^ICPTCOD(A),U,2) I A="D1351" D
 ...S T=$P($G(^AUPNVCPT(Y,0)),U,16) S:T=""!(T=0) T=1
 ...S BGPX("CPT")=$G(BGPX("CPT"))+T,BGPCNT=BGPCNT+1,BGPSEALS(BGPCNT,$$VD^APCLV($P(^AUPNVCPT(Y,0),U,3)))="CPT D1351 ("_T_")"
 S X="" F  S X=$O(BGPX(X)) Q:X=""  I X'="CPT" S BGPC=BGPC+$S(BGPX(X)>2:2,1:BGPX(X))
 S BGPC=BGPC+$G(BGPX("CPT"))
 S BGPSEAL=BGPC
 Q
HIGHR(P,EDATE) ;EP
 ;must have 2 dx in past 3 years, then check problem list before EDATE
 NEW BGPG,Y,X,G,V,BDATE,C,D
 S BDATE=$$FMADD^XLFDT(EDATE,-(3*365))
 S Y="BGPG(",G="",C=0
 S X=P_"^ALL DX [BGP HIGH RISK FLU DXS;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,Y)
 I '$D(BGPG(1)) G HRPL
 K Y S X=0,G=0 F  S X=$O(BGPG(X)) Q:X'=+X!(G)  D
 .S D=$P(BGPG(X),U,1)
 .Q:$D(Y(D))  ;already had one on that day
 .S Y(D)=""
 .S C=C+1
 .I C>1 S G=1
 I G Q G
HRPL ;
 S G=""
 S T=$O(^ATXAX("B","BGP HIGH RISK FLU DXS",0))
 S (X,G)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE  ;if added to pl after beginning of time period, no go
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .Q:'$$ICD^BGP4UTL2(Y,T,9)
 .S G=1
 .Q
 Q G
DTAP(P,BDATE,EDATE) ;EP
 K BGPC,BGPG,BGPX,BD,ED,BGPVARI,C,V,X,Y,BGPZ,BGPIMM
 ;gather up all immunizations, cpts, povs and check for 3 each ten days apart
 K BGPVARI
 ;get all immunizations
 S C="115"
 D GETIMMS^BGP4D32(P,EDATE,C,.BGPX)
 ;go through and set into array if 10 days apart
 I $O(BGPX(0)) Q 1_U_$$DATE^BGP4UTL($O(BGPX(0)))_" Imm 115"
 ;now get cpts
 S ED=9999999-EDATE-1,BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVCPT(X,0),U),Y=$P($$CPT^ICPTCOD(Y),U,2) I Y=90715 S BGPVARI(9999999-$P(ED,"."))=""
 ..S X=0 F  S X=$O(^AUPNVTC("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVTC(X,0),U,7) Q:'Y  S Y=$P($$CPT^ICPTCOD(Y),U,2) I Y=90715 S BGPVARI(9999999-$P(ED,"."))=""
 I $D(BGPVARI) Q 1_U_$$DATE^BGP4UTL($O(BGPVARI(0)))_" CPT 90715"
 F BGPZ=115 S X=$$ANCONT^BGP4D31(P,BGPZ,EDATE) Q:X]""
 I X]"" Q 2_U_$$DATE^BGP4UTL($P(X,U,1))_" "_$P(X,U,2)
 ;now go to Refusals
 S B=$$DOB^AUPNPAT(P),E=EDATE,BGPNMI="",R=""
 F BGPIMM=115  D
 .S I=$O(^AUTTIMM("C",BGPIMM,0)) Q:'I
 .S X=0 F  S X=$O(^AUPNPREF("AA",P,9999999.14,I,X)) Q:X'=+X  S Y=0 F  S Y=$O(^AUPNPREF("AA",P,9999999.14,I,X,Y)) Q:Y'=+Y  S D=$P(^AUPNPREF(Y,0),U,3) I D'<B&(D'>E) D
 ..Q:$P(^AUPNPREF(Y,0),U,7)'="N"
 ..S R=D     ;S:$P(^AUPNPREF(Y,0),U,7)="N" BGPNMI=1 S R=1
 I R Q 2_U_$$DATE^BGP4UTL(R)_" "_"NMI Dtap"
 Q ""
DTAPTD(P,BDATE,EDATE) ;EP
 NEW BDM,X,E,B,%DT,Y,TDD,D,LTD,G,C,Z,TK,BGPC,BGPG,BGPX,BD,ED,BGPVARI,C,V,X,Y,BGPZ,BGPIMM
 K TDD
 D LASTTDN ;get td from v imm
 S LTD=$O(TDD(0))
 I LTD]"" S LTD=9999999-LTD Q 1_U_$$DATE^BGP4UTL(LTD)_" Imm "_TDD(9999999-LTD)
 ;now check cpt codes
 S ED=9999999-EDATE-1,BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVCPT(X,0),U),Y=$P($$CPT^ICPTCOD(Y),U,2) I Y=90715!(Y=90714)!(Y=90718) S BGPVARI(9999999-$P(ED,"."))=Y
 ..S X=0 F  S X=$O(^AUPNVTC("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVTC(X,0),U,7) Q:'Y  S Y=$P($$CPT^ICPTCOD(Y),U,2) I Y=90715!(Y=90714)!(Y=90718) S BGPVARI(9999999-$P(ED,"."))=Y
 I $D(BGPVARI) S Y=$O(BGPVARI(0)) Q 1_U_$$DATE^BGP4UTL($O(BGPVARI(0)))_" CPT "_BGPVARI(Y)
 K BGPG S %=P_"^LAST DX [BGP TD IZ DXS;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BGPG(")
 I $D(BGPG(1)) Q 1_U_$$DATE^BGP4UTL($P(BGPG(1),U))_" DX V06.5"
 F BGPZ=115,9,113,138,139 S X=$$ANCONT^BGP4D31(P,BGPZ,EDATE) Q:X]""
 I X]"" Q 2_U_$$DATE^BGP4UTL($P(X,U,1))_" "_$P(X,U,2)
 ;now go to Refusals
 S B=$$DOB^AUPNPAT(P),E=EDATE,BGPNMI="",R=""
 F BGPIMM=115,9,113,138,139  D
 .S I=$O(^AUTTIMM("C",BGPIMM,0)) Q:'I
 .S X=0 F  S X=$O(^AUPNPREF("AA",P,9999999.14,I,X)) Q:X'=+X  S Y=0 F  S Y=$O(^AUPNPREF("AA",P,9999999.14,I,X,Y)) Q:Y'=+Y  S D=$P(^AUPNPREF(Y,0),U,3) I D'<B&(D'>E) D
 ..Q:$P(^AUPNPREF(Y,0),U,7)'="N"
 ..S R=D    ;S:$P(^AUPNPREF(Y,0),U,7)="N" BGPNMI=1 S R=1
 I R Q 2_U_$$DATE^BGP4UTL(R)_" NMI Dtap/Td"
 Q ""
 ;
LASTTDN ;
 S X=0 F  S X=$O(^AUPNVIMM("AC",P,X)) Q:X'=+X  D
 .S Y=$P(^AUPNVIMM(X,0),U) Q:'Y
 .Q:'$D(^AUTTIMM(Y,0))
 .S Y=$P(^AUTTIMM(Y,0),U,3)
 .S D=$P(^AUPNVIMM(X,0),U,3) Q:'D
 .S D=$P($P($G(^AUPNVSIT(D,0)),U),".")
 .I D<BDATE Q  ;too early
 .I D>EDATE Q  ;after time frame
 .I Y=9 S TDD(9999999-D)=9 Q
 .I Y=113 S TDD(9999999-D)=113 Q
 .I Y=115 S TDD(9999999-D)=115 Q
 .I Y=138 S TDD(9999999-D)=138 Q
 .I Y=139 S TDD(9999999-D)=139 Q
 Q
 ;;
HIGHRP(P,EDATE) ;EP
 ;must have 2 dx in past 3 years, then check problem list before EDATE
 NEW BGPG,Y,X,G,V,BDATE,C,D
 S BDATE=$$FMADD^XLFDT(EDATE,-(3*365))
 S Y="BGPG(",G="",C=0
 S X=P_"^ALL DX [BGP HIGH RISK PNEUMO DXS;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,Y)
 I '$D(BGPG(1)) G HRPL
 K Y S X=0,G=0 F  S X=$O(BGPG(X)) Q:X'=+X!(G)  D
 .S D=$P(BGPG(X),U,1)
 .Q:$D(Y(D))  ;already had one on that day
 .S Y(D)=""
 .S C=C+1
 .I C>1 S G=1
 I G Q G
HRPLP ;
 S G=""
 S T=$O(^ATXAX("B","BGP HIGH RISK PNEUMO DXS",0))
 S (X,G)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE  ;if added to pl after beginning of time period, no go
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .Q:'$$ICD^BGP4UTL2(Y,T,9)
 .S G=1
 .Q
 Q G
GA(P,BDATE,EDATE) ;EP
 NEW T,A,%,X,Y,T,Z,G,BGPZ,BGPJ,R,BGPC,BGPGA,BGPGASSC
 K BGPG,BGPZ S BGPC=0
 K ^TMP($J,"A")
 S A="^TMP($J,""A"","
 S Z=$O(^ATXAX("B","BGP GEN ANESTHESIA ADA CODES",0))
 S %=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,A)
 S X=0,Y=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X  S V=$P(^TMP($J,"A",X),U,5) D
 .S Y=0,G=0 F  S Y=$O(^AUPNVDEN("AD",V,Y)) Q:Y'=+Y  D
 ..S A=$P($G(^AUPNVDEN(Y,0)),U) D
 ...I $D(^ATXAX(Z,21,"B",A)) S BGPZ(V)=""
 .S Y=0,G=0 F  S Y=$O(^AUPNVCPT("AD",V,Y)) Q:Y'=+Y  D
 ..S A=$P($G(^AUPNVCPT(Y,0)),U)
 ..Q:'A
 ..I $$ICD^BGP4UTL2(A,$O(^ATXAX("B","BGP CPT DENT GEN ANESTHESIA",0)),1) S BGPZ(V)=""
 ;ARRAY BGPZ has all visits with general anesthesia
 S BGPGA=0 S X=0 F  S X=$O(BGPZ(X)) Q:X'=+X  S BGPGA=BGPGA+1
 ;LOOP THROUGH THESES VISITS AND SEE IF THEY HAVE A SSC
 S Z=$O(^ATXAX("B","BGP SSC ADA CODES",0))
 S V=0 F  S V=$O(BGPZ(V)) Q:V'=+V  D
 .S Y=0 F  S Y=$O(^AUPNVDEN("AD",V,Y)) Q:Y'=+Y  D
 ..S A=$P($G(^AUPNVDEN(Y,0)),U) D
 ...I $D(^ATXAX(Z,21,"B",A)) S BGPZ(V)=1
 .S Y=0,G=0 F  S Y=$O(^AUPNVCPT("AD",V,Y)) Q:Y'=+Y  D
 ..S A=$P($G(^AUPNVCPT(Y,0)),U)
 ..Q:'A
 ..I $$ICD^BGP4UTL2(A,$O(^ATXAX("B","BGP CPT DENTAL SSC",0)),1) S BGPZ(V)=1
 I 'BGPGA Q ""
 S BGPGASSC=0,X=0 F  S X=$O(BGPZ(X)) Q:X'=+X  I BGPZ(X) S BGPGASSC=BGPGASSC+1
 S Z="",X=0 F  S X=$O(BGPZ(X)) Q:X'=+X  S:Z]"" Z=Z_"; " S Z=Z_$$DATE^BGP4UTL($$VD^APCLV(X))_": GEN ANESTH"_$S(BGPZ(X):", SSC",1:"")
 Q BGPGA_U_BGPGASSC_U_Z