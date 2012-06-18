ACHSBMC ; IHS/ITSC/PMF - RCIS INTERFACE SUBROUTINES ;
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;**5,10,11,13,16**;JUN 11,2001
 ;IHS/SET/GTH ACHS*3.1*5 12/06/2002 -Remove ref to non-package global
 ;3.1*10 4.19.04 IHS/OIT/FCJ ADD OPT FOR CALLS FR THE DEN PKG
 ;   TO SET DEFAULT VARS & CLOSE THE REF AFTER ISSUED DEN
 ;3.1*11 8.24.04 IHS/OIT/FCJ REF NOT REQ W/IN 180 DAYS OF RCIS ST DT
 ;3.1*11 8.24.04 IHS/OIT/FCJ TST FOR RCIS VER AND MULT DEN/PRV
 ;3.1*13 8.15.05 IHS/OIT/FCJ PARAMETER TST FOR REQ'D REF FOR PO & DEN TST
 ;3.1*13 8.30.06 IHS/OIT/FCJ ADD UPDATE FOR APPEAL, MULT CHG TO PASS SQA
 ;ACHS*3.1*16 11/3/2009 IHS.OIT.FCJ FX FOR FY 10
 ;
ADD ;EP - link P.O. to referral
 I '$$LINK W !,"The link to the Referral system is not on." Q
ADD1 ;
 D ^ACHSUD
 Q:'$D(ACHSDIEN)
 I $$DOC^ACHS(0,12)=4 W *7,!,"This document has been canceled." G ADD1
 ;I $$DOC^ACHS(2,7) W *7,!,"This document is already linked to Referral ",$P($G(^BMCREF($$DOC^ACHS(2,7),0)),U,2),"." G ADD1;IHS/SET/GTH ACHS*3.1*5 12/06/2002
 I $$DOC^ACHS(2,7) W *7,!,"This document is already linked to Referral ",$$GET1^DIQ(90001,$$DOC^ACHS(2,7),.02),"." G ADD1 ;IHS/SET/GTH ACHS*3.1*5 12/06/2002
 N ACHS
 S ACHS="",ACHS("ADD")=1 ; This acts as a flag in GETREF().
ADD2 ;
 D GETREF(.ACHS)
 Q:$D(DUOUT)!$D(DTOUT)!(ACHS<1)
 I '($$DOC^ACHS(0,22)=DFN) D  G ADD2
 .W *7,!,"The patient in the Referral is '",$P($G(^DPT(DFN,0)),U),"'."
 .W !,"The patient in the P.O. is '",$S($$DOC^ACHS(0,22):$P($G(^DPT($$DOC^ACHS(0,22),0)),U),1:"<missing>"),"'."
 .Q
 ;GET REF IEN
 I '$$DIE^ACHS("62////"_ACHS) W *7,!,"Addition of Referral failed in routine ACHSBMC." D RTRN^ACHS Q
 S ACHSREF=ACHS
 D AUTH,DX,PX
 Q
 ; ------------------------
AUTH ;EP - Update the P.O. status in REF
 ; ACHSREF = Ref IEN Req
 ; ACHSDIEN = P.O. IEN, "D" level Req
 ;
 I '$$LINK Q
 I $$DOC^ACHS(0,12)=4 D  Q  ; If P.O. is canceled, delete.
 .D AUTH^BMCCHS(ACHSREF,ACHSDIEN,"D")
 .I '$$DIE^ACHS("62///@")
 N ACHS,ACHSTIEN
 S ACHS(.02)=$$DOC^ACHS(0,9)
 S ACHS(.03)=$$DOC^ACHS("ZA",1)
 I 'ACHS(.03) S ACHS(.03)=$$DOC^ACHS("PA",1)
 S ACHS(.04)="",ACHSTIEN=0
 F  S ACHSTIEN=$O(^ACHSF(DUZ(2),"D",ACHSDIEN,"T",ACHSTIEN)) Q:'(ACHSTIEN=+ACHSTIEN)  I $$TRAN^ACHS(0,5)="F" S ACHS(.04)=1 Q
 S ACHSTIEN=0,ACHS(.06)=9999999,ACHS(.07)=0
 F  S ACHSTIEN=$O(^ACHSF(DUZ(2),"D",ACHSDIEN,11,ACHSTIEN)) Q:'(ACHSTIEN=+ACHSTIEN)  D
 .I $P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,11,0)),U,2)<ACHS(.06) S ACHS(.06)=$P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,11,0)),U,2)
 .I $P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,11,0)),U,3)>ACHS(.07) S ACHS(.07)=$P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,11,0)),U,3)
 I ACHS(.06)=9999999 K ACHS(.06)
 I ACHS(.07)=0 K ACHS(.07)
 ;ACHS*3.1*16 11/3/2009 IHS.OIT.FCJ FX FOR FY 10
 ;S ACHS(.08)="0"_$$DOC^ACHS(0,14)_"-"_$$FC^ACHS(DUZ(2))_"-"_$$DOC^ACHS(0,1)
 S ACHS(.08)=$E($$DOC^ACHS(0,27),3,4)_"-"_$$FC^ACHS(DUZ(2))_"-"_$$DOC^ACHS(0,1)
 S ACHS(.09)=$$DOC^ACHS(0,8)
 ;
 D AUTH^BMCCHS(ACHSREF,ACHSDIEN,"P",.ACHS)
 I '$$DIE^ACHS("62////"_ACHSREF)
 Q
 ; ----------------------------
DX ;EP - Trans DX info to RCIS.
 ; ACHSDIEN = P.O. IEN, "D" level req
 ;
 I '$$LINK Q
 N ACHS,ACHSDX
 S ACHS(.02)=$$DOC^ACHS(0,22) ; Patient DFN
 S ACHS(.03)=$$DOC^ACHS(2,7) ; Referral IEN
 S ACHS(.04)="F",ACHS(.06)=""
 S ACHSDX=0
 F  S ACHSDX=$O(^ACHSF(DUZ(2),"D",ACHSDIEN,9,ACHSDX)) Q:'(ACHSDX=+ACHSDX)  D
 .S ACHS(.01)=+$P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,9,ACHSDX,0)),U)
 .;The first DX on the EOBR is the primary DX.
 .S ACHS(.05)=$S(ACHSDX=1:"P",1:"S")
 .D DXA^BMCCHS(ACHS(.03),.ACHS)
 Q
 ; ----------------------------
GETREF(ACHS) ;EP - select ref, retrieve info
 I '$$LINK Q
GETREF0 W !
 N DIC,D
 ; In DIC("S"), the Ref must be [C]HS and [A]ctive.
 S DIC="^BMCREF(",DIC(0)="AEMQ",DIC("A")="Select RCIS REFERRAL by Patient or by Referral Date or #: "
 I $G(ACHS),$D(^BMCREF(ACHS)) D SET^BMCCHS(ACHS,.ACHS) S DIC("B")=$P($G(^DPT(ACHS(.03),0)),U)
 ;ACHS*3.1*10 4.19.04 IHS/ITSC/FCJ ADD NXT SECT TO ALLOW SEL REF FOR DEN
GETREF1 ; 
 D ^DIC
 I $G(ACHD("FAC"))'="" D GETREF3
 E  D GETREF2
 ;ACHS*3.1*11 8.24.04 IHS/ITSC/FCJ REF NOT REQ IF W/IN 180 DAYS OF IMPLEMENTING RCIS
 ;Q:Y<1  ;ACHS*3.1*11 8.24.04 IHS/ITSC/FCJ
 Q:(Y<1)!('$G(ACHS))  ;ACHS*3.1*11 8.24.04 IHS/ITSC/FCJ
 D GETREF4
 D EN^XBVK("BMC")
 Q
GETREF2 ; TEST FOR ADDING NEW PO'S
 ;D ^DIC ;ACHS*3.1*10 4.19.04 IHS/ITSC/FCJ CALLED ABOVE
 I Y<1 D  Q
 . Q:$D(DUOUT)!$D(DTOUT)!($G(ACHS("ADD")))
 . N A,I,V
 . ;S Y=$P($G(^BMCPARM(DUZ(2),0)),U,24);IHS/SET/GTH ACHS*3.1*5 12/06/2002
 . S Y=$$GET1^DIQ(90001.31,DUZ(2),.24,"I") ;IHS/SET/GTH ACHS*3.1*5 12/06/2002
 . I Y,$$FMDIFF^XLFDT(DT,Y)<180,$$DIR^XBDIR("Y","Are you sure you want to enter a P.O. w/o a Referral","N","","","",1) K ACHS,ACHSREF Q
 . ;ACHS*3.1*13 8.15.05 IHS/OIT/FCJ ADD NXT 2 LNS TO TST PAR REQ REF FOR PO
 . S Y=$$GET1^DIQ(90001.31,DUZ(2),4104)
 . I Y="NO",$$DIR^XBDIR("Y","Are you sure you want to enter a P.O. w/o a Referral","N","","","",1) K ACHS,ACHSREF Q
 . W *7,!!,"You must have a CHS referral to enter a P.O.",!!
 . S DUOUT=$$DIR^XBDIR("E","Press RETURN...")
 ;
GETREF3 ;ACHS*3.1*10 4.19.04 IHS/ITSC/FCJ TST CALL FR DEN PKG ADDED NXT 3 LINES
 I Y<1 D  Q
 . Q:$D(DUOUT)!$D(DTOUT)
 . W *7,!!,"A Referral has not been entered.",!!
 ;
GETREF4 ;ACHS*3.1*10 4.19.04 IHS/ITSC/FCJ ADD LN LABEL NXT SEC
 S ACHS=+Y
 D SET^BMCCHS(ACHS,.ACHS)
 ;ACHS*3.1*10 4.19.04 IHS/ITSC/FCJ ADDED TEST FOR DEN AND I DEN..
 ;I ($G(ACHS(.04))'="C")!($G(ACHS(.15))'="A") D  G GETREF1  ;ACHS*3.1*10 4.19.04
 I $G(ACHD("FAC"))="",($G(ACHS(.04))'="C")!($G(ACHS(.15))'="A") D  G GETREF1  ;ACHS*3.1*10 4.19.04
 .W !!,"     This must be a Referral that is 'ACTIVE' and 'CHS FACILITY'."
 .W !,"You have selected a Referral that is '",$$EXTSET^XBFUNC(90001,.15,$G(ACHS(.15))),"' and '",$$EXTSET^XBFUNC(90001,.04,$G(ACHS(.04))),"'.",!
 .S ACHS=0,Y=0 K DA
 ;ACHS*3.1*13 8.15.05 IHS/OIT/FCJ ADD NXT 2 LINES FOR DEN # TEST
 I $G(ACHD("FAC"))'="",$G(ACHSREF(1128))'="" D
 .W !!,"    You have selected a Referral that already has a denial number, ",$G(ACHS(1128)),!
 I $G(ACHD("FAC"))'="",($G(ACHS(.04))="I")!($G(ACHS(.04))="N")!($G(ACHS(.15))'="A") D  G GETREF0
 .W !!,"     This must be a Referral that is 'ACTIVE' and 'CHS FACILITY' or 'OTHER'."
 .W !,"You have selected a Referral that is '",$$EXTSET^XBFUNC(90001,.15,$G(ACHS(.15))),"' and '",$$EXTSET^XBFUNC(90001,.04,$G(ACHS(.04))),"'.",!
 .S ACHS=0
 ;ACHS*3.1*10 4.19.04 IHS/ITSC/FCJ END OF CHANGES
 S DFN=ACHS(.03),ACHSHRN=$$HRN^ACHS(DFN,DUZ(2))
 S ACHSPROV=ACHS(.07)
 S %=ACHS(.14)
 I $L(%) S ACHSTYP=$S(%="I":1,%="O":3,1:"")
 ;ACHS*3.1*10 4.21.04 IHS/ITSC/FCJ CHG THE EDOS AND ADDED NXT 3 LINES
 ;I $G(ACHS(1105)) S ACHSEDOS=ACHS(1105) ;ACHS*3.1*10 4.21.04
 S ACHSEDOS=$S($G(ACHS(1106)):ACHS(1106),$G(ACHS(1105)):ACHS(1105),1:"") ;ACHS*3.1*10 4.21.04
 S ACHSDES=$E($G(ACHSREF(1201)),1,30) ;ACHS*3.1*11 8.24.04
 S ACHSRMPC=$S($G(ACHS(.32))=1:"I",$G(ACHS(.32))=2:"II",$G(ACHS(.32))=3:"III",$G(ACHS(.32))=4:"IV",1:"")  ;ACHS*3.1*10 4.21.04
 S ACHSESDO=$G(ACHS(1101)) ;ACHS*3.1*10 4.21.04
 Q
 ; ----------------------------
LINK() ;EP - Is link to RCIS on?
 ;Q +$P($G(^BMCPARM(DUZ(2),0)),U,4);IHS/SET/GTH ACHS*3.1*5 12/06/2002
 Q $$GET1^DIQ(90001.31,DUZ(2),.04,"I")  ;IHS/SET/GTH ACHS*3.1*5 12/06/2002
 ; ----------------------------
VCHK() ;EP - VER OF RCIS
 Q $$VERSION^XPDUTL("BMC")  ;ACHS*3.1*11 8.24.04 IHS/ITSC/FCJ
 ;
P(I,S,P) ;EP - Return Internal format of Referral with IEN of I,S, Piece P.
 ; FOR USE DURING DEVELOPMENT.  RCIS WILL PROVIDE REQUIRED DATA ITEMS
 Q $P($G(^BMCREF(I,S)),U,P)
 ;
 ; ----------------------------
PX ;EP - Transfer PX info to RCIS.
 ; ACHSDIEN = P.O. IEN at the "D" level
 ;
 I '$$LINK Q
 N ACHS,ACHSPX,ACHSPX1
 S ACHS(.02)=$$DOC^ACHS(0,22) ; Patient DFN
 S ACHS(.03)=$$DOC^ACHS(2,7) ; Referral IEN
 S ACHS(.04)="F"
 S ACHS(.06)=""
 S ACHSPX=0
 F  S ACHSPX=$O(^ACHSF(DUZ(2),"D",ACHSDIEN,11,ACHSPX)) Q:'(ACHSPX=+ACHSPX)  D
 . S ACHS(.01)=$P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,11,ACHSPX,0)),U)
 . Q:'(ACHS(.01)["ICPT(")
 . S ACHS(.01)=+ACHS(.01)
 . ; The first PX on the EOBR is the primary PX.
 . I $G(ACHSPX1) S ACHS(.05)="S"
 . E  S ACHS(.05)="P",ACHSPX1=1
 . S ACHS(.07)=$P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,11,ACHSPX,0)),U,4)
 . D PXA^BMCCHS(ACHS(.03),.ACHS)
 Q
 ; ----------------------------
 ;ACHS*3.1*13 8.30.06 IHS/OIT/FCJ ADDED APPEAL SECT
APPEAL ;EP -Update Referral appeal info
 I '$$LINK Q
 S ACHS(6116)=$P(ACHSREC,U) ;APPEAL DT
 S ACHS(6117)=$P(ACHSREC,U,4) ;APPEAL RESOLVE DT
 S ACHS(6118)=$P(ACHSREC,U,2) ;APPEAL STATUS
 S ACHS(6119)=$P(ACHSREC,U,3) ;APPEAL LEVEL
 S I=$P(^ACHSDENA(ACHS(6118),0),U)
 S ACHS(1112)=$S(I="PAYED WITH ADDITIONAL MONEY":"A",I="APPEAL PENDING":"PA",I="REVERSED AFTER APPEAL":"A",I="UPHELD AFTER APPEAL":"D",1:"")
 S ACHS(1113)=DT ;APPROVAL/DENIAL DT
 S ACHS(1121)=DUZ ;CHS STAFF
 S ACHS(1122)=DT ;Dt of denial
 S ACHS(1128)=$P(^ACHSDEN(DUZ(2),"D",ACHSA,0),U) ; denial NUMBER
 K S
 I $$PATCH^XPDUTL("BMC*4.0*3") D APPEAL^BMCCHS1(.ACHS)
 Q
 ;
STAT(S) ;EP - Update Referral status
 ; ACHSREF must contain the Referral IEN.
 I '$$LINK Q
 N ACHS
 S ACHS(1112)=S
 S ACHS(1113)=DT
 ;
 I S="D" D
 .S:$P(^ACHSDEN(DUZ(2),"D",ACHSA,100),U)="Y" ACHS(.07)=$P(^ACHSDEN(DUZ(2),"D",ACHSA,100),U,2) ;PRIM PROV
 .S ACHS(.14)=$P(^ACHSDEN(DUZ(2),"D",ACHSA,100),U,10) ;INPAT/OUT
 .S ACHS(.15)=$S(ACHS(.14)="O":"C1",1:"A")
 .S ACHS(1106)=ACHDDOS ;DT OF SERVICE 
 .S ACHS(1113)=DT ;APPROVAL/DENIAL DATE
 .S ACHS(1114)=ACHSREF(1114) ; denial reason.
 .S ACHS(1121)=DUZ ; CHS STAFF
 .S ACHS(1122)=DT ; Dt of denial
 .S ACHS(1128)=ACHDNUM ; denial NUMBER
 .;ACHS*3.1*11 9.27.04 IHS/ITSC/FCJ ADDED NXT SEC MULT DEN REASON/PROV
 .;ACHS(200...) PROV ;ACHS(300...) REASON
 .F X=200,300 I $D(^ACHSDEN(DUZ(2),"D",ACHSA,X)) D
 ..S CT=0,X1=0
 ..S CT=$S(X=200:4401,X=300:4301,1:"")
 ..F  S X1=$O(^ACHSDEN(DUZ(2),"D",ACHSA,X,X1)) Q:X1'?1N.N  D
 ...S ACHS(CT)=$P(^ACHSDEN(DUZ(2),"D",ACHSA,X,X1,0),U)
 ...S CT=CT+1
 .K X,X1,CT
 .;ACHS*3.1*11 9.27.04 IHS/ITSC/FCJ END OF CHG
 K S
 D STAT^BMCCHS(ACHSREF,"P",.ACHS)
 Q
 ; ----------------------------