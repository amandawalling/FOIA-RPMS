BGP7D32 ; IHS/CMI/LAB - measure C ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
I14 ;EP
 ;3 denominators, 24 numerators
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPN7,BGPN8,BGPN9,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9,BGPN10,BGPN11,BGPN12,BGPN13,BGPN14,BGPN15,BGPN16,BGPN17,BGPN18,BGPN19,BGPN20,BGPN21,BGPN22,BGPN23,BGPN24,BGPN25,BGPN26,BGPN27)=0
 S (BGPI1,BGPI2,BGPI3,BGPI4,BGPI5,BGPI6,BGPI7,BGPN28,BGPN29)=0
 S BGPVALUE=""
 K BGPDTAP,BGPOPV,BGPMMR,BGPD,BGPT,BGPPER,BGPTET,BGPM,BGPMU,BGPME,BGPHIB,BGPHEP,BGPVAR
 I 'BGPACTUP S BGPSTOP=1 Q
 S BGPDAYS=$$FMDIFF^XLFDT(BGPBDATE,$$DOB^AUPNPAT(DFN))
 S BGPMON=BGPDAYS/30.5
 I BGPMON<7 S BGPSTOP=1 Q  ;no one less than 7 months
 I BGPMON>23 S BGPSTOP=1 Q  ;no one less than 23 months on 1st day of time frame
 I BGPACTUP S BGPD2=1
 I BGPACTCL S BGPD1=1
 I BGPACTUP,$$ACTIM(DFN,BGPBDATE,BGPEDATE),BGPTIME=1 S BGPD3=1
 I 'BGPD1,'BGPD2,'BGPD3 S BGPSTOP=1 Q
 ;BGPN1 - patients with 4 DTaP or various combinations
 K ^TMP($J,"CPT")
 S BGPVAL=$$DTAP^BGP7D34(DFN,BGPEDATE)  ;1 IS had immunizations, 3 is had refusal, 4 is disease or NMI or contraindication
 I $P(BGPVAL,U,1) S BGPN1=1  ;any hit
 I $P(BGPVAL,U,1)=1 S BGPI1=1 ;had all imms
 I $P(BGPVAL,U,1)=3 S BGPN2=1 ;refusal
 I $P(BGPVAL,U,1)=4 S BGPN3=1 ;evid disease, nmi, contraindication
 I $P(BGPVAL,U,1) S BGPVALUE=$P(BGPVAL,U,2)
 K ^TMP($J,"CPT")
 S BGPVAL=$$OPV^BGP7D33(DFN,BGPEDATE)
 I $P(BGPVAL,U,1) S BGPN4=1  ;any hit
 I $P(BGPVAL,U,1)=1 S BGPI2=1 ;had all imms
 I $P(BGPVAL,U,1)=3 S BGPN5=1 ;refusal
 I $P(BGPVAL,U,1)=4 S BGPN6=1 ;evid disease, nmi, contraindication
 I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_";"_$P(BGPVAL,U,2)
 S BGPVAL=$$MMR^BGP7D33(DFN,BGPEDATE)
 I $P(BGPVAL,U,1) S BGPN7=1  ;any hit
 I $P(BGPVAL,U,1)=1 S BGPI3=1
 I $P(BGPVAL,U,1)=3 S BGPN8=1 ;refusal
 I $P(BGPVAL,U,1)=4 S BGPN9=1 ;evid disease, nmi, contraindication
 I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_";"_$P(BGPVAL,U,2)
 S BGPVAL=$$HIB^BGP7D35(DFN,BGPEDATE)
 I $P(BGPVAL,U,1) S BGPN10=1  ;any hit
 I $P(BGPVAL,U,1)=1 S BGPI4=1
 I $P(BGPVAL,U,1)=3 S BGPN11=1 ;refusal
 I $P(BGPVAL,U,1)=4 S BGPN12=1 ;evid disease, nmi, contraindication
 I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_";"_$P(BGPVAL,U,2)
 S BGPVAL=$$HEP^BGP7D35(DFN,BGPEDATE)
 I $P(BGPVAL,U,1) S BGPN13=1  ;any hit
 I $P(BGPVAL,U,1)=1 S BGPI5=1
 I $P(BGPVAL,U,1)=3 S BGPN14=1 ;refusal
 I $P(BGPVAL,U,1)=4 S BGPN15=1 ;evid disease, nmi, contraindication
 I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_";"_$P(BGPVAL,U,2)
 S BGPVAL=$$VAR^BGP7D35(DFN,BGPEDATE)
 I $P(BGPVAL,U,1) S BGPN16=1  ;any hit
 I $P(BGPVAL,U,1)=1 S BGPI6=1
 I $P(BGPVAL,U,1)=3 S BGPN17=1 ;refusal
 I $P(BGPVAL,U,1)=4 S BGPN18=1 ;evid disease, nmi, contraindication
 I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_";"_$P(BGPVAL,U,2)
 S BGPVAL=$$PNEUMO^BGP7D35(DFN,BGPEDATE)
 I $P(BGPVAL,U,1) S BGPN26=1  ;any hit
 I $P(BGPVAL,U,1)=1 S BGPI7=1
 I $P(BGPVAL,U,1)=3 S BGPN27=1 ;refusal
 I $P(BGPVAL,U,1)=4 S BGPN28=1 ;evid disease, nmi, contraindication
 I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_";"_$P(BGPVAL,U,2)
 I BGPN1,BGPN4,BGPN7,BGPN10,BGPN13,BGPN16,BGPN26 S BGPN19=1
 I BGPN1,BGPN4,BGPN7,BGPN10,BGPN13,BGPN16 S BGPN29=1  ;HEDIS ONLY 1.1.8
 I BGPN2!(BGPN5)!(BGPN8)!(BGPN11)!(BGPN14) S BGPN22=1
 I BGPN3!(BGPN6)!(BGPN9)!(BGPN12)!(BGPN15) S BGPN23=1
 I BGPN1,BGPN4,BGPN7 S BGPN20=1
 I BGPN1,BGPN4,BGPN7,BGPN10,BGPN13 S BGPN21=1  ;4:3:1:3:3
 I BGPI1,BGPI2,BGPI3,BGPI4,BGPI5,BGPI6,BGPI7 S BGPN24=1
 ;I BGPI1,BGPI2,BGPI3 S BGPN25=1
 I BGPI1,BGPI2,BGPI3,BGPI4,BGPI5 S BGPN25=1
 I BGPRTYPE=3,'BGPN19 S BGPVALUE="DID NOT HAVE: " D
 .I 'BGPN1 S BGPVALUE=BGPVALUE_"Dtap;"
 .I 'BGPN4 S BGPVALUE=BGPVALUE_"OPV;"
 .I 'BGPN7 S BGPVALUE=BGPVALUE_"MMR;"
 .I 'BGPN10 S BGPVALUE=BGPVALUE_"HIB;"
 .I 'BGPN13 S BGPVALUE=BGPVALUE_"HEP;"
 .I 'BGPN16 S BGPVALUE=BGPVALUE_"VAR;"
 .I 'BGPN26 S BGPVALUE=BGPVALUE_"PNEUMO"
 S D=""
 I BGPD1 S D="UP;AC"
 E  S D="UP"
 I BGPD3 S D=D_";IMM"
 I BGPRTYPE=3 S D="AC"
 S BGPVALUE=D_"|||"_BGPVALUE
 ;I BGPN19 S BGPVALUE=$P(BGPVALUE,"|||",1)_"|||4:3:1:3:3:1"
 ;I BGPN21,'BGPN19 S $P(BGPVALUE,"|||",2)="4:3:1:3:3"
 K BGPTET,BGPDTAP,BGPDT,BGPTD,BGPPER,BGPDIP,BGPMU,BGPME,BGPMMR,BGPMR,BGPRM,BGPOPV,BGPRUB,BGPHIB,BGPHEB,BGPVAR,BGPI1,BGPI2,BGPI3,BGPI4,BGPI5,BGPI6,BGPVAL
 Q
ACTIM(P,BDATE,EDATE) ;EP is patient active on imm register as of EDATE?
 I '$G(P) Q ""
 I '$D(^BIP(P)) Q ""
 I $P(^BIP(P,0),U,8)="" Q 1
 I $P(^BIP(P,0),U,8)<EDATE Q ""
 I $P(^BIP(P,0),U,8)=EDATE Q ""
 Q 1
GETIMMS(P,EDATE,C,BGPX) ;EP
 K BGPX
 NEW X,Y,I,Z,V
 S X=0 F  S X=$O(^AUPNVIMM("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVIMM(X,0))  ;happens
 .S Y=$P(^AUPNVIMM(X,0),U)
 .Q:'Y  ;happens too
 .S I=$P($G(^AUTTIMM(Y,0)),U,3)  ;get HL7/CVX code
 .F Z=1:1:$L(C,U) I I=$P(C,U,Z) S V=$P(^AUPNVIMM(X,0),U,3) I V S D=$P($P($G(^AUPNVSIT(V,0)),U),".") I D]"",D'>EDATE S BGPX(D)=Y
 .Q
 Q
IMMREF(P,IMM,BD,ED) ;EP
 NEW X,Y,G,D,R
 I 'IMM Q ""
 S (X,G)=0,Y=$O(^AUTTIMM("C",IMM,0))
 I 'Y Q ""
 F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .Q:$P(^BICONT(R,0),U,1)'["Refusal"
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .Q:$P(^BIPC(X,0),U,4)<BD
 .Q:$P(^BIPC(X,0),U,4)>ED
 .S G=G+1
 Q G
