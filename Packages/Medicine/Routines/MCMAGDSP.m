MCMAGDSP ;WISC/RMP-IMAGING INTERFACE ;5/8/97  08:21
 ;;2.3;Medicine;**6**;09/13/1996
 ;
REPRT(MCARGDA,FILE) ;
 N D,D0,D1,DA,DALL,DC,DCL,DE,DFN,DI,DIC,DICMX,DIEDT,DIL
 N DIOBEG,DIOEND,DIP,DIPZ,DIQ,DISTP,DIW,DIWF,DIWL,DIWR,DIWT,DJ,DK,DL,DN
 N DPP,DPQ,DQI,DSC,DU,DV,DXS,DY,FLDS,I,J,X,Y,Z,%,%H,%I
 N MCAR,MCAR1,MCARDE,MCARDOB,MCARDTM,MCARGDT,MCARGDT2,MCARGNAM
 N MCARGNM,MCARGNUM,MCARGRTN,MCARHDR,MCARP,MCARRB,MCARWARD,MCARZ
 N MCESKEY,MCESON,MCESS,MCESSEC,MCFILE,MCFILE1,MCFILET,MCOUNT,MCOUT
 N MCPATFLD,MCPRO,MCPRTRTN,MCROUT,MCSUP
 N NAME,PG,PGM,POP,RDATE,RH,SSN,VA,TY
 ;Establish Proccedure Subspecialty file entry
 ;to provide access to paramenters
 S MCPRO=$S(FILE=691:"ECHO",FILE=691.1:"CATH",FILE=691.5:"ECG",FILE=701:"RHEUM",1:"")
 S:FILE=694 MCPRO=$P(^MCAR(697.2,$P(^MCAR(FILE,MCARGDA,0),U,3),0),U)
 S:FILE=699 MCPRO=$P(^MCAR(697.2,$P(^MCAR(FILE,MCARGDA,0),U,12),0),U)
 S:FILE=699.5 MCPRO=$P(^MCAR(697.2,$P(^MCAR(FILE,MCARGDA,0),U,6),0),U)
 Q:MCPRO=""
 D PROC ;Set up parameters
 D:$G(MCESON) STATUS^MCESPRT(FILE,MCARGDA)
 D @MCPRTRTN
 K ^UTILITY($J)
 Q
RHFULL ;
 S MCARGRTN="^MCARORA" D PRINT K DXS Q:$D(MCOUT)
 F RH="B","N","L","Q","H","P","E","D" Q:$D(MCOUT)  D
 .S MCARGRTN="^MCAROR"_RH D CALLTEM K DXS Q:$D(MCOUT)
 D REND
 Q
CATH ;
 S MCARGRTN="CATH1" D PRINT,REND Q 
ECHO ;
 S MCARGRTN="ECHO1" D PRINT,REND Q
ECG ;
 S MCARGRTN="ECG1" D PRINT,REND Q
CATH1 ;
 D ^MCAROC1 K DXS Q:$D(MCOUT)
 D ^MCAROC2 K DXS Q:$D(MCOUT)
 D ^MCAROC3 K DXS Q:$D(MCOUT)
 D ^MCAROC4
 Q
ECHO1 ;
 ;D ^MCAROE1 K DXS Q:$D(MCOUT)
 ;D ^MCAROE2,REND Q
 D ^MCRPEC K DXS Q:$D(MCOUT)  D REND Q
ECG1 ;
 D ^MCAROK Q
GENERIC ;
 S MCARGRTN="^MCAROGE" D PRINT,REND Q
EN1 ;CONSULTS
 S MCARGRTN="^MCAROGC" D PRINT,REND Q
GENDO ;
 S MCARGRTN=$S($D(^DIC(120.8)):"^MCAROGM",1:"^MCAROG")
 D PRINT K DXS Q:$D(MCOUT)
 S MCARGRTN="^MCAROGA" D PRINT,REND Q
PENDO ;
 S MCARGRTN="^MCAROP" D PRINT K DXS Q:$D(MCOUT)
 S MCARGRTN="^MCAROPE" D PRINT,REND Q
NENDO ;
 S MCARGRTN="^MCAROGN" D PRINT,REND Q
HEM ;
 S (D0,DA)=MCARGDA
 N MCFILE S MCFILE=FILE
 D HEM^MCARHP Q
PRINT ; Print Report
 S (D0,DA)=MCARGDA,DIC=FILE,PG=0
 K DXS,DIOT(2),^UTILITY($J),MCOUT
 S DFN=$P(^MCAR(FILE,MCARGDA,0),U,2),MCARGDT=$P(^(0),U,1)
 D INIT^MCARP1(MCARZ,MCARGDT,FILE)
 S ^UTILITY($J,1)="S MCY="""" I $Y>(IOSL-4) R:$E($G(IOST),1,2)=""C-"" !!,""Press return to continue, '^' to escape: "",MCY:DTIME S:'$T MCY=U S:MCY=U DN=0,MCOUT=1 D:DN HEAD^MCARP K MCY"
 D HEAD^MCARP,CALLTEM
 I '$D(MCOUT) D:$G(MCESON) FOOTER^MCESPRT(FILE,MCARGDA)
 Q
CALLTEM ;
 D @MCARGRTN Q
PROC ;
 N TEMP S MCARP=""
 S (MCARP,MCARGNUM,MCARGNAM)=+$O(^MCAR(697.2,"B",MCPRO,MCARP))
 S TEMP=$G(^MCAR(697.2,MCARP,0)),MCESS=0
 S MCSUP=+$P(TEMP,U,16),(MCROUT,MCARDE)=$P(TEMP,U,8)
 S MCESON=+$P(TEMP,U,14),MCESKEY=$P(TEMP,U,15)
 S MCARGNAM=$P(TEMP,U),MCPATFLD=$P(TEMP,U,12)
 S (MCOUNT,MCESSEC)=0
 ;I MCESON S:$D(^XUSEC(MCESKEY,DUZ)) MCESSEC=1
 I MCESON S MCESSEC=$S(MCESKEY="":1,1:$D(^XUSEC(MCESKEY,DUZ)))
 S MCPRTRTN=$P(TEMP,U,5)
 S:FILE=699 MCPRTRTN=$S($P(TEMP,U,7)["GI":"GENDO",$P(TEMP,U,7)["PULM":"PENDO",1:"NENDO")
 S:FILE=694 MCPRTRTN="HEM"
 S MCARZ=$P(^MCAR(697.2,MCARGNUM,0),U,8)_" REPORT"
 Q
REND ;
 ; NOTE: '$D(XWBOS) to be patched when RPC Broker has an official method 
 I '$D(XWBOS),'$D(MCOUT),$G(Y)'<0 R !!,"  * END * Press return to continue: ",X:DTIME
 Q