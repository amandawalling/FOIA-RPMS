PSSLOOK ;BIR/WRT-Drug file lookup ;02/03/00
 ;;1.0;PHARMACY DATA MANAGEMENT;**3,7,15,16,20,24,29,38,68,61**;9/30/97
 ;
 ;Reference to ^PS(50.605 supported by DBIA #2138
 ;Reference to ^PS(50.608 supported by DBIA #2136
 ;Reference to ^PS(50.609 supported by DBIA #2137
 ;Reference to ^PS(50.607 supported by DBIA #2221
 ;Reference to $$FORMRX^PSNAPIS(DA,K,.LIST) supported by DBIA #2574
 ;Reference to $$FORMI^PSNAPIS(P1,P3) supported by DBIA #2574
 ;Reference to $$PSJDF^PSNAPIS(P1,P3) supported by DBIA #2531
 ;Reference to $$PROD2^PSNAPIS(P1,P3) supported by DBIA #2531
 ;Reference to $$VAGN^PSNAPIS(P1) supported by DBIA #2531
 ;Reference to ^PSNDF(50.68 supported by DBIA 3735
 ;
START S QUIT=0,PSSFG=0 D KILL F PSSXX=1:1 D PICK Q:PSSFG
DONE D KILL K PSSFG,PSSXX,QUIT,FM,FMS,Y2K
 Q
PICK W ! K DIC S DIC="^PSDRUG(",DIC(0)="QEAMN" D ^DIC K DIC I Y<0 S PSSFG=1 Q
 S IFN=+Y D NDDATA,GETDATA,INACT,NOD66,FORMAT,KILL
 Q
NDDATA I $D(^PSDRUG(IFN,"ND")) S CLPTR=$P(^PSDRUG(IFN,"ND"),"^",6) I $P(^PSDRUG(IFN,"ND"),"^",2)]"" S NDNODE=^PSDRUG(IFN,"ND"),VAGNPTR=$P(NDNODE,"^",1),VAPN=$P(NDNODE,"^",2),SZPTR=$P(NDNODE,"^",4),TYPTR=$P(NDNODE,"^",5) D NDF,NDF1
 Q
NDF S DA=VAGNPTR,X=$$VAGN^PSNAPIS(DA),VAGN=X,PS=$P(^PS(50.609,SZPTR,0),"^",1),PT=$P(^PS(50.608,TYPTR,0),"^",1),P3=$P(NDNODE,"^",3)
 K X S DA=VAGNPTR,K=P3,X=$$PROD2^PSNAPIS(DA,K) I X]"",$P(X,"^")]"" S VAPRN=$P(X,"^"),VADU=$P(X,"^",4),CMOPID=$P(X,"^",2)
 S CSF="" I $P(NDNODE,"^",3) S CSF=$$GET1^DIQ(50.68,$P(NDNODE,"^",3),19,"I")
 Q
IT S CMOPID=$P(X,"^",2)
 Q
NDF1 S X=$$PSJDF^PSNAPIS(DA,K),VADF=$P(X,"^",2)
 Q
INACT S ACT="" I $D(^PSDRUG(IFN,"I")) S Y=$P(^PSDRUG(IFN,"I"),"^",1) X ^DD("DD") S ACT=Y
 Q
GETDATA S NODE0=^PSDRUG(IFN,0),GN=$P(NODE0,"^",1),CL=$P(NODE0,"^",2),DEA=$P(NODE0,"^",3),WRN=$P(NODE0,"^",8),NF=$P(NODE0,"^",9),MESS=$P(NODE0,"^",10),VNF=$P(NODE0,"^",11),CLASS="",WARN="" S:NF=1 NF="N/F" S:VNF=1 VNF="V-N/F"
 S PSSNODE=$G(^PSDRUG(IFN,"DOS"))
 I CL]"" S CLASS=CL_"  "_$P(^PS(50.605,CLPTR,0),"^",2)
 I $D(^PSDRUG(IFN,3)) S:$P(^PSDRUG(IFN,3),"^")=0 CMOP="NO" S:$P(^PSDRUG(IFN,3),"^")=1 CMOP="YES"
 I $D(^PSDRUG(IFN,5)) S QDM=^PSDRUG(IFN,5)
 S OINM="" S NDC="" I $D(^PSDRUG(IFN,2)) S NODE2=^PSDRUG(IFN,2) S:$P(NODE2,"^",1)]"" OIPTR=$P(NODE2,"^",1) S NDC=$P(NODE2,"^",4) S:$P(NODE2,"^",6)]"" PDPTR=$P(NODE2,"^",6) S APP=$P(NODE2,"^",3),FM="" D TWOA
 Q
TWOA I $D(OIPTR) S OI=$P(^PS(50.7,OIPTR,0),"^",1),DFPTR=$P(^PS(50.7,OIPTR,0),"^",2),DF=$P(^PS(50.606,DFPTR,0),"^",1),FMS=$P(^PS(50.7,OIPTR,0),"^",12) S:FMS]"" FM=" (N/F)" S OINM=OI_" "_DF_FM
 ;I $D(PDPTR) S PD=$P(^PS(50.3,PDPTR,0),"^",1)
 Q
NOD66 S (DUPOU,PPDU,PPOU,DU,SS)="" I $D(^PSDRUG(IFN,660)) S NDE=^PSDRUG(IFN,660),OUPTR=$P(NDE,"^",2),PPOU=$P(NDE,"^",3),DUPOU=$P(NDE,"^",5),PPDU=$P(NDE,"^",6),SS=$P(NDE,"^",7),DU=$P(NDE,"^",8) I OUPTR]"" S OU=$P(^DIC(51.5,OUPTR,0),"^")
 Q
SYN I $D(^PSDRUG(IFN,1,0)) F ZZZ=0:0 S ZZZ=$O(^PSDRUG(IFN,1,ZZZ)) Q:'ZZZ  S SYNM=$P(^PSDRUG(IFN,1,ZZZ,0),"^",1),INT=$P(^PSDRUG(IFN,1,ZZZ,0),"^",3) D SYN1
 Q
SYN1 S INT=$S(INT=0:"Trade Name",INT=1:"Quick Code",INT="C":"Ctrl Substances",INT="D":"Drug Accountability",1:"") D FULL Q:$G(QUIT)  W ?14,SYNM,?55,INT,!
 Q
SYN2 S:INT=0 INT="Trade" S:INT=1 INT="Quick" S:INT="C" INT="Ctrl Subs" S:INT="D" INT="Drug Acct" W ?16,SYNM,?57,INT,!
 Q
IFCAP I $D(^PSDRUG(IFN,441,0)) F QQQ=0:0 S QQQ=$O(^PSDRUG(IFN,441,QQQ)) Q:'QQQ  S IFCAPNM=$P(^PSDRUG(IFN,441,QQQ,0),"^",1)
 Q
FORMAT ; BEGIN WRITING
 W @IOF,?21,GN,!
 F XX=1:1:77 W "="
 W !
 W:$D(VAPRN) "VA PRINT NAME: ",?17,VAPRN W:$D(CMOPID) ?60,"CMOP ID#: ",CMOPID W:$D(VAPN) !,"VA PRODUCT NAME: ",?17,VAPN W:$D(CMOP) ?60,"CMOP DISPENSE: ",CMOP
 W:$D(OINM) !,"ORDERABLE ITEM: ",?17,OINM W:$D(VAPN) ?60,"NDF DF: ",VADF
 I $D(OIPTR),OIPTR]"" W !,"ORDERABLE ITEM TEXT: ",! D OITXT
 W:$D(PD) !,"PRIMARY DRUG: ",?17,PD
 W !,"SYNONYM(S): " D SYN D FULL Q:$G(QUIT)  W !,"MESSAGE: ",MESS,!
 D FULL Q:$G(QUIT)  F XX=1:1:77 W "-"
 W !
 D FULL Q:$G(QUIT)  W "DEA, SPECIAL HDLG: ",DEA,?48,"NDC: ",?63,NDC
 D FULL Q:$G(QUIT)  W !,"CS FEDERAL SCHEDULE: ",$G(CSF)
 D FULL Q:$G(QUIT)  W !,"INACTIVE DATE: ",ACT
 D FULL Q:$G(QUIT)  W:$D(QDM) !,"QUANTITY DISPENSE MESSAGE: ",QDM,!
 D FULL Q:$G(QUIT)  I WRN]"" W !,"WARNING LABEL: " S X=WRN F Z0=1:1 Q:$P(X,",",Z0,99)=""  S Z1=$P(X,",",Z0) W:$D(^PS(54,Z1,0)) ?19,$P(^(0),"^",1),! I '$D(^(0)) W ?19,"NO SUCH WARNING LABEL" K X Q
 D FULL Q:$G(QUIT)  W:'$D(QDM) ! F XX=1:1:77 W "-"
 D FULL Q:$G(QUIT)  W !
 W "ORDER UNIT: ",?27 W:$D(OU) OU W ?40,"PRICE/ORDER UNIT: ",?67,PPOU
 D FULL Q:$G(QUIT)  W !,"DISPENSE UNIT: ",?27,DU W:$D(VADU) ?40,"VA DISPENSE UNIT: ",?67,VADU
 D FULL Q:$G(QUIT)  W !,"DISPENSE UNITS/ORDER UNIT: ",?21,DUPOU,?40,"PRICE/DISPENSE UNIT: ",?67,PPDU
 D FULL Q:$G(QUIT)  W !,"APPL PKG USE:" D PACK
 Q
PACK S APPL="" S:'$D(APP) APPL="  NONE"
 I $D(APP) D
 . S:APP["O" APPL=APPL_"  Outpatient" S:APP["U" APPL=APPL_"  Unit Dose"
 . S:APP["I" APPL=APPL_"  IV" S:APP["W" APPL=APPL_"  Ward Stock"
 . S:APP["N" APPL=APPL_"  Control Subs" S:APP["X" APPL=APPL_"  Non-VA Med"
 . S:APPL="" APPL="  NONE"
 W ?13,APPL
 I $P(PSSNODE,"^",2) S (PSSCALC,PSSUNIT)=$P($G(^PS(50.607,+$P(PSSNODE,U,2),0)),U),PSSSTR=$P(PSSNODE,"^")
 I $G(PSSUNIT)'="",$G(PSSUNIT)["/" D UNCALC
 D FULL Q:$G(QUIT)  W !,"STRENGTH: ",$P(PSSNODE,U),?35,"UNIT: ",$G(PSSCALC)
 D FULL Q:$G(QUIT)  W !,"POSSIBLE DOSAGES:"
 I $D(^PSDRUG(IFN,"DOS1",0)) F PDS=0:0 S PDS=$O(^PSDRUG(IFN,"DOS1",PDS)) Q:'PDS  D
 .S POSDOS=^PSDRUG(IFN,"DOS1",PDS,0)
 .D FULL Q:$G(QUIT)  W !,"   DISPENSE UNITS PER DOSE: ",$P(POSDOS,U),?40,"DOSE: ",$P(POSDOS,U,2),?55,"PACKAGE: ",$P(POSDOS,U,3)
 .D FULL Q:$G(QUIT)  W !,"       BCMA UNITS PER DOSE: ",$P(POSDOS,U,4)
 D FULL Q:$G(QUIT)  W !,"LOCAL POSSIBLE DOSAGES:"
 I $D(^PSDRUG(IFN,"DOS2",0)) F PDS=0:0 S PDS=$O(^PSDRUG(IFN,"DOS2",PDS)) Q:'PDS  D
 .S LPDOS=^PSDRUG(IFN,"DOS2",PDS,0)
 .D FULL Q:$G(QUIT)  W !,"   LOCAL POSSIBLE DOSAGE: " D
 ..I $L($P(LPDOS,U))'>27 W $P(LPDOS,U),?55,"PACKAGE: ",$P(LPDOS,U,2)
 ..E   W !,?10,$P(LPDOS,U),!,?55,"PACKAGE: ",$P(LPDOS,U,2)
 ..D FULL Q:$G(QUIT)  W !,"     BCMA UNITS PER DOSE: ",$P(LPDOS,U,3)
 D FULL Q:$G(QUIT)  W ! F XX=1:1:77 W "-"
 D FULL Q:$G(QUIT)  W !,"VA CLASS: ",$G(CLASS)
 D FULL Q:$G(QUIT)  W !,"LOCAL NON-FORMULARY: ",$G(NF),"          ","VISN NON-FORMULARY: ",$G(VNF)
 N DA,K,LIST,PSXDN,PSXGN,PSXVP,X,XX1,XX2
 K PSXGN,PSXVP I $D(^PSDRUG(IFN,"ND")) S PSXDN=$G(^PSDRUG(IFN,"ND")),PSXGN=$P(PSXDN,"^"),PSXVP=$P(PSXDN,"^",3)
 I $G(PSXGN),$G(PSXVP) S X=$$PROD2^PSNAPIS(PSXGN,PSXVP),XX1=$$FORMI^PSNAPIS(PSXGN,PSXVP)
 D FULL Q:$G(QUIT)  W !,"National Formulary Indicator: "_$S($G(XX1)=1:"YES",$G(XX1)=0:"NO",1:"Not Matched to NDF")
 I $D(^PSDRUG(IFN,65,0)) D FULL Q:$G(QUIT)  W !,"FORMULARY ALTERNATIVES: ",! F FA=0:0 S FA=$O(^PSDRUG(IFN,65,FA)) Q:'FA  S LDFPTR=$P($G(^PSDRUG(IFN,65,FA,0)),"^") I LDFPTR D FULL Q:$G(QUIT)  W ?26,$P($G(^PSDRUG(LDFPTR,0)),"^"),!
 D FULL Q:$G(QUIT)  I $G(PSXGN),$G(PSXVP) W !,"National Restriction: " S XX2=$$FORMRX^PSNAPIS(PSXGN,PSXVP,.LIST) I $G(XX2)=1,$D(LIST) F XX2=0:0 S XX2=$O(LIST(XX2)) Q:'XX2  D FULL Q:$G(QUIT)  W !,LIST(XX2,0)
 W !,"Local Drug Text: ",! I $D(^PSDRUG(IFN,9,0)) D LDT
 Q
LDT F TXT1=0:0 S TXT1=$O(^PSDRUG(IFN,9,TXT1)) Q:'TXT1  S TEXPTR=^PSDRUG(IFN,9,TXT1,0) F PPP=0:0 S PPP=$O(^PS(51.7,TEXPTR,2,PPP)) Q:'PPP  S PST=$P($G(^PS(51.7,TEXPTR,0)),"^",2) I 'PST S WPT=^PS(51.7,TEXPTR,2,PPP,0) D FULL Q:$G(QUIT)  W WPT,!
 ;
 ;
KILL K IFN,APP,INT,VADU,VAGN,VAPN,VAPRN,P3,VAGNPTR,MESS,CLASS,DEA,ACT,CL,CLPTR,CMOP,DF,DFPTR,DU,DUPOUGN,IFCAPNM,NDC,NDE,NDNODE,NF,NODE0,NODE2,OI,OINM,OIPTR,OU,PD,PDPTR,PPDU,PPOU,PS,PT,NOD66,SYNM,SZPTR,TYPTR,WARN,WRN,XX,ZZZ,SS,OUPTR,CMOPID
 K DUPOU,QQQ,GN,QDM,APPL,VADF,DFP,DFRM,Y,Z0,Z1,DDD,PPP,TEXT,TXTPTR,TXT,TXT1,TEXPTR,VNF,WPT,FA,LDFPTR,TEXTPTR,QUIT,PST,D0,DA,K,DIR
 K PSSNODE,PSDOSUN,PDS,POSDOS,LPDOS,CSF
 Q
OITXT I $D(^PS(50.7,OIPTR,1,0)) F TXT=0:0 S TXT=$O(^PS(50.7,OIPTR,1,TXT)) Q:'TXT  S TEXTPTR=^PS(50.7,OIPTR,1,TXT,0) F DDD=0:0 S DDD=$O(^PS(51.7,TEXTPTR,2,DDD)) Q:'DDD  D IDATE I 'Y2K S TEXT=^PS(51.7,TEXTPTR,2,DDD,0) D FULL Q:$G(QUIT)  W TEXT,!
 Q
FULL D:($Y+5)>IOSL&('$G(QUIT)) FSCRN
 Q
FSCRN Q:$G(QUIT)  W ! K DIR S DIR(0)="E",DIR("A")="Press Return to continue,'^' to exit" D ^DIR W @IOF S:Y'=1 QUIT=1
 Q
IDATE S Y2K=$P($G(^PS(51.7,TEXTPTR,0)),"^",2)
 Q
UNCALC ;
 N PSSVA,PSSVA1,PSSVB,PSSVB1,PSSDASH,PSSNDFS,PSSDASH2,PSSDASH3,PSSDASH5 K PSSCALC
 S PSSDASH=0 S PSSNDFS=$$PSJST^PSNAPIS(+$P($G(^PSDRUG(IFN,"ND")),"^"),+$P($G(^PSDRUG(IFN,"ND")),"^",3)) S PSSNDFS=+$P($G(PSSNDFS),"^",2)
 I $G(PSSNDFS),$G(PSSSTR),+$G(PSSSTR)'=+$G(PSSNDFS) S PSSDASH=1
 S PSSVA=$P(PSSUNIT,"/"),PSSVB=$P(PSSUNIT,"/",2),PSSVA1=+$G(PSSVA),PSSVB1=+$G(PSSVB)
 I $G(PSSDASH) S PSSDASH2=PSSSTR/PSSNDFS,PSSDASH3=PSSDASH2*$S($G(PSSVB1):PSSVB1,1:1) S PSSDASH5=$S('$G(PSSVB1):PSSDASH3_$G(PSSVB),1:PSSDASH3_$P(PSSVB,PSSVB1,2))
 S PSSCALC=$S($G(PSSDASH):$S('$G(PSSVA1):PSSVA,1:$P(PSSVA1,PSSVA1,2))_"/"_$G(PSSDASH5),1:PSSUNIT)
 Q