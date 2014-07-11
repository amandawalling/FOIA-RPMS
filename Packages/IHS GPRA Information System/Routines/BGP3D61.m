BGP3D61 ; IHS/CMI/LAB - measure 31 01 Jul 2010 7:47 PM ;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;
I17 ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPN7,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9)=0
 I BGPAGEB<51 S BGPSTOP=1 Q
 I BGPAGEB>80 S BGPSTOP=1 Q
 I $$CRC(DFN,BGPEDATE) S BGPSTOP=1 Q  ;has colorectal cancer
 I BGPACTUP S BGPD1=1
 I BGPACTCL S BGPD2=1
 I 'BGPD1 S BGPSTOP=1 Q  ;need to be at least in user pop
CRCP ;EP - called from elder
 S BGPFOB=$$FOB(DFN,BGPBDATE,BGPEDATE)
 I BGPFOB]"" S BGPN3=1,BGPN1=1
 S BGPOTH=""
 I BGPN1=0 S BGPOTH=$$IBH(DFN,BGPEDATE)
 I BGPOTH]"" S BGPN1=1
 S BGPSIG=$$SIG(DFN,BGPEDATE)
 S BGPCOLO=$$COLO(DFN,BGPEDATE)
 S BGPBE=$$BE(DFN,BGPEDATE)
 I BGPSIG]""!(BGPBE]"")!(BGPCOLO]"") S BGPN4=1
 I BGPSIG]""!(BGPCOLO]"") S BGPN5=1
 I BGPSIG]""&(BGPBE]"")!(BGPCOLO]"") S BGPN6=1
 S BGPREF="" I 'BGPN1 S BGPREF=$$REF(DFN,$$FMADD^XLFDT(BGPEDATE,-365),BGPEDATE) I BGPREF S BGPN1=1,BGPN2=1
 I BGPN1,'BGPN2 S BGPN7=1
 S BGPVALUE=""
 I BGPFOB]"" S BGPVALUE="FOB: "_$$DATE^BGP3UTL($P(BGPFOB,U,2))_" "_$P(BGPFOB,U)
 ;I BGPOTH]"" S BGPVALUE=BGPVALUE_$P(BGPOTH,U)_":"_$P(BGPOTH,U,2)_" "
 I BGPSIG]"" S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"") S BGPVALUE=BGPVALUE_"SIG: "_$P(BGPSIG,U,2)_" "_$P(BGPSIG,U,1)
 I BGPCOLO]"" S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"") S BGPVALUE=BGPVALUE_"COLO: "_$P(BGPCOLO,U,2)_" "_$P(BGPCOLO,U,1)
 I BGPBE]"" S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"") S BGPVALUE=BGPVALUE_"BE: "_$P(BGPBE,U,2)_" "_$P(BGPBE,U,1)
 I BGPREF]"" S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"") S BGPVALUE=BGPVALUE_$$DATE^BGP3UTL($P(BGPREF,U,2))_" "_$P(BGPREF,U,3)
 S BGPDV=$S(BGPD1:"UP",1:"")_$S(BGPD2:",AC",1:"")
 I BGPRTYPE'=1 S BGPVALUE=BGPDV_"|||"_BGPVALUE
 I BGPRTYPE=1 S BGPDV=BGPDV_"|||" S:BGPN7 BGPVALUE=BGPDV_BGPVALUE S:'BGPN7 BGPVALUE=BGPDV
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P
 Q
IBH(P,EDATE) ;EP
 NEW VALUE
 S VALUE=""
 S VALUE=$$SIG(P,EDATE)
 I VALUE]"" Q VALUE
 S VALUE=$$BE(P,EDATE)
 I VALUE]"" Q VALUE
 S VALUE=$$COLO(P,EDATE)
 I VALUE]"" Q VALUE
 Q ""
CRC(P,EDATE) ;EP
 K BGPG
 S Y="BGPG("
 S X=P_"^LAST DX [BGP COLORECTAL CANCER DXS;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q 1  ;has a dx
 S T=$O(^ATXAX("B","BGP COLORECTAL CANCER CPTS",0))
 I T D  I X]"" Q 1
 .S X=$$CPT^BGP3DU(P,$$DOB^AUPNPAT(P),EDATE,T,5) I X]"" Q
 .S X=$$TRAN^BGP3DU(P,$$DOB^AUPNPAT(P),EDATE,T,5)
 S BGPG=$$LASTPRC^BGP3UTL1(P,"BGP TOTAL COLECTOMY PROCS",$$DOB^AUPNPAT(P),EDATE)
 I BGPG Q 1
 S T=$O(^ATXAX("B","BGP TOTAL COLECTOMY CPTS",0))
 I T D  I X]"" Q 1
 .S X=$$CPT^BGP3DU(P,$$DOB^AUPNPAT(P),EDATE,T,5) I X]"" Q
 .S X=$$TRAN^BGP3DU(P,$$DOB^AUPNPAT(P),EDATE,T,5)
 Q 0
SIG(P,EDATE,BDATE) ;EP
 NEW BGPLSIG,BGPG,T,X
 S BGPLSIG=""
 I $G(BDATE)="" S BDATE=$$FMADD^XLFDT(EDATE,5*(-365))
 S BGPG=$$LASTPRC^BGP3UTL1(P,"BGP SIG PROCS",BDATE,EDATE)
 I $P(BGPG,U)=1 S BGPLSIG="Proc "_$P(BGPG,U,2)_"^"_$$DATE^BGP3UTL($P(BGPG,U,3))_U_$P(BGPG,U,3)
 ;
 S T=$O(^ATXAX("B","BGP SIG CPTS",0))
 I T D  I X]"",$P(BGPLSIG,U,3)<$P(X,U,1) S BGPLSIG="CPT "_$P(X,U,2)_U_$$DATE^BGP3UTL($P(X,U,1))_U_$P(X,U,1)
 .S X=$$CPT^BGP3DU(P,BDATE,EDATE,T,5) I X]"" Q
 .S X=$$TRAN^BGP3DU(P,BDATE,EDATE,T,5)
 Q BGPLSIG
COLO(P,EDATE,BDATE) ;EP
 NEW BGPG,BGPLCOLO,%,T,X
 K BGPG
 S BGPLCOLO=""
 I $G(BDATE)="" S BDATE=$$FMADD^XLFDT(EDATE,10*(-365))
 S BGPG=$$LASTPRC^BGP3UTL1(P,"BGP COLO PROCS",BDATE,EDATE)
 I $P(BGPG,U)=1 S BGPLCOLO="Proc "_$P(BGPG,U,2)_"^"_$$DATE^BGP3UTL($P(BGPG,U,3))_U_$P(BGPG,U,3)
 S %=P_"^LAST DIAGNOSIS [BGP COLO DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,"BGPG(")
 I $D(BGPG(1)),$P(BGPLCOLO,U,3)<$P(BGPG(1),U,1) S BGPLCOLO="POV "_$P(BGPG(1),U,2)_"^"_$$DATE^BGP3UTL($P(BGPG(1),U))
 S T=$O(^ATXAX("B","BGP COLO CPTS",0))
 I T D  I X]"",$P(BGPLCOLO,U,3)<$P(X,U,1) S BGPLCOLO="CPT "_$P(X,U,2)_U_$$DATE^BGP3UTL($P(X,U,1))_U_$P(X,U,1)
 .S X=$$CPT^BGP3DU(P,BDATE,EDATE,T,5) I X]"" Q
 .S X=$$TRAN^BGP3DU(P,BDATE,EDATE,T,5)
 Q BGPLCOLO
FOB(P,BDATE,EDATE) ;EP
 NEW BGPC,BGPLFOB,BGPLT,B,E,D,L,X,T
 I $G(BDATE)="" S BDATE=$$FMADD^XLFDT(EDATE,2*(-365))
 S BGPC="",BGPLFOB=""
 S T=$O(^ATXAX("B","BGP FOBT LOINC CODES",0))
 S BGPLT=$O(^ATXLAB("B","BGP GPRA FOB TESTS",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(BGPC]"")  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(BGPC]"")  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(BGPC]"")  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BGPC="LAB"_U_(9999999-D) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S BGPC="LOINC"_U_(9999999-D) Q
 ...Q
 S BGPLFOB=BGPC
 S T=$O(^ATXAX("B","BGP FOBT CPTS",0))
 I T D  I X]"",$P(BGPLFOB,U,2)<$P(X,U,1) S BGPLFOB="CPT "_$P(X,"^",2)_"^"_$P(X,U,1)
 .S X=$$CPT^BGP3DU(P,BDATE,EDATE,T,5) I X]"" Q
 Q BGPLFOB
BE(P,EDATE,BDATE) ;EP
 NEW BGPLBE,T,X
 I $G(BDATE)="" S BDATE=$$FMADD^XLFDT(EDATE,5*(-365))
 S BGPLBE=""
 S T=$O(^ATXAX("B","BGP BE CPTS",0))
 I T D  I X]"" S BGPLBE="CPT "_$P(X,U,2)_U_$$DATE^BGP3UTL($P(X,U,1))_U_$P(X,U,1)
 .S X=$$CPT^BGP3DU(P,BDATE,EDATE,T,5) I X]"" Q
 .S X=$$TRAN^BGP3DU(P,BDATE,EDATE,T,5)
 .Q
 S T=$O(^ATXAX("B","BGP BE CPTS",0))
 I T D  I X]"",$P(BGPLBE,U,3)<X Q "RAD "_$P(X,U,2)_U_$$DATE^BGP3UTL(X)_U_X
 .S X=$$RAD^BGP3DU(P,BDATE,EDATE,T,5)
 .Q
 Q BGPLBE
 ;
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
REF(P,BDATE,EDATE) ;EP
 ;Refusal
 S BGPT=$O(^ATXLAB("B","BGP GPRA FOB TESTS",0))
 I BGPT D  I $P(G,U) Q "1^"_$P(G,U,2)_U_"FOB: Refused Lab "
 .S (G,BGPT1)=0 F  S BGPT1=$O(^ATXLAB(BGPT,21,"B",BGPT1)) Q:BGPT1=""!($P(G,U))  D
 ..S G=$$REFUSAL^BGP3UTL1(P,60,BGPT1,BDATE,EDATE)
 F BGPT=82270,82274,89205,"G0107","G0328","G0394" D  Q:$P(T,U)=1
 .S C=+$$CODEN^ICPTCOD(BGPT) Q:C'>0
 .S T=""
 .S T=$$REFUSAL^BGP3UTL1(P,81,+$$CODEN^ICPTCOD(BGPT),$$FMADD^XLFDT(EDATE,-365),EDATE)
 .I T S T="1^"_$P(T,U,2)_"^FOB: Refused CPT"
 I $P(T,U)=1 Q T
 S BGPT=$O(^ATXAX("B","BGP SIG CPTS",0))
 I BGPT S G=$$RADREF^BGP3UTL1(P,BDATE,EDATE,BGPT) I $P(G,U,1)=1 Q 1_"^"_$P(G,U,2)_"^"_"SIG: Refused CPT"
 ;S BGPT=$O(^ATXAX("B","BGP BE CPTS",0))
 ;I BGPT S G=$$RADREF^BGP3UTL1(P,BDATE,EDATE,BGPT) I $P(G,U,1)=1 Q 1_"^"_$P(G,U,2)_"^"_"BE: Refused CPT"
 S BGPT=$O(^ATXAX("B","BGP COLO CPTS",0))
 I BGPT S G=$$RADREF^BGP3UTL1(P,BDATE,EDATE,BGPT) I $P(G,U,1)=1 Q 1_"^"_$P(G,U,2)_"^"_"COLO: Refused CPT"
 S BGPT=$O(^ATXAX("B","BGP SIG CPTS",0))
 I BGPT S G=$$CPTREFT^BGP3UTL1(P,BDATE,EDATE,BGPT) I $P(G,U,1)=1 Q 1_"^"_$P(G,U,2)_"^"_"SIG: Refused CPT"
 ;S BGPT=$O(^ATXAX("B","BGP BE CPTS",0))
 ;I BGPT S G=$$CPTREFT^BGP3UTL1(P,BDATE,EDATE,BGPT) I $P(G,U,1)=1 Q 1_"^"_$P(G,U,2)_"^"_"BE: Refused CPT"
 S BGPT=$O(^ATXAX("B","BGP COLO CPTS",0))
 I BGPT S G=$$CPTREFT^BGP3UTL1(P,BDATE,EDATE,BGPT) I $P(G,U,1)=1 Q 1_"^"_$P(G,U,2)_"^"_"COLO: Refused CPT"
 S T=$$PRCREFT^BGP3UTL1(P,BDATE,EDATE,$O(^ATXAX("B","BGP COLO/SIG PROCS",0)))
 ;F BGPT=45.24,45.42,45.22,45.23,45.25,45.43 D  Q:$P(T,U)=1
 I T Q "1^"_$P(T,U,2)_"^"_$S($P(T,U,4)="45.24":"SIG: ",1:"COLO: ")_"Refused Proc"
 Q ""