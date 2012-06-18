PSOPOS10 ;BIR/VRN/EJW/MFR Post install routine ;10/14/03
 ;;7.0;OUTPATIENT PHARMACY;**154**;DEC 1997
 ;External reference to ^DPT supported by DBIA 10035
 ;External reference to ^PS(55 supported by DBIA 2228
 ;External reference to ^DPT(PSODFN,-9) supported by DBIA 2762
 ;
 ; POST-INSTALL ROUTINE TO RESET MISSING ENTRIES INTO THE PHARMACY PATIENT FILE (#55)
 ;
ENV ;
 Q:'$G(XPDENV)
 W ! K %DT D NOW^%DTC S %DT="RAEX",%DT(0)=%,%DT("A")="Queue the Post-Install to run at what Date@Time: "
 D ^%DT K %DT I $D(DTOUT)!(Y<0) W !!,"Cannot install the patch without queuing the post-install, install aborted!",! S XPDABORT=2 Q
 S @XPDGREF@("PSOQ10")=Y
 Q
 ;
EN ;
 S ZTDTH=@XPDGREF@("PSOQ10")
 S ZTRTN="START^PSOPOS10",ZTDESC="Background job for to search for missing ^PS(55 entries",ZTIO="" D ^%ZTLOAD K ZTDTH,ZTRTN,ZTIO,ZTDESC
 I $D(ZTSK)&('$D(ZTQUEUED)) D BMES^XPDUTL("Task Queued!")
 Q
 ;
START ;
 K ^XTMP("PSOPOS10",$J)
 L +^XTMP("PSOPOS10"):0 I '$T S:$D(ZTQUEUED) ZTREQ="@" Q
 I '$G(DT) S DT=$$DT^XLFDT
 I '$D(^XTMP("PSOPOS10")) S X1=DT,X2=+90 D C^%DTC S ^XTMP("PSOPOS10",0)=$G(X)_"^"_DT
 S PSODT2=DT-20000
 D NOW^%DTC S ^XTMP("PSOPOS10","PSOTIMEX","START")=%
 D BMES^XPDUTL("Searching for missing ^PS(55 entries... Sending Mailman message upon completion.")
SRCH ; SEARCH THROUGH PRESCRIPTIONS
 N RXP,RX0,PSODFN,PSODT,PSOCTP,PSOCTPA
 S (PSOCTP,PSOCTPA)=0
 S RXP=0 F  S RXP=$O(^PSRX(RXP)) Q:'RXP  S RX0=$G(^PSRX(RXP,0)),PSODT=$P(RX0,"^",13) I PSODT>PSODT2 S PSODFN=$P(RX0,"^",2) I PSODFN D
 .D PS55P
 .D PS55PA
 .I $D(^DPT(PSODFN,-9)) D
 ..S NEWDFN=+$G(^DPT(PSODFN,-9)) I '$D(^DPT(NEWDFN,0)) Q
 ..D FIX^PSOPOS12(PSODFN,NEWDFN)
 I $O(^XTMP("PSOPOS10",$J,""))'="" D RESET
 L -^XTMP("PSOPOS10")
 D GETLIST
MAIL ;
 N CNT
 D NOW^%DTC S PSOTIMEB=%
 S Y=$G(^XTMP("PSOPOS10","PSOTIMEX","START")) D DD^%DT S PSOTIMEA=Y
 S Y=$G(PSOTIMEB) D DD^%DT S PSOTIMEB=Y
 S XMDUZ="Patch PSO*7*154",XMY(DUZ)="",XMSUB="PHARMACY PATIENT File (#55) missing entries"
 K PSOTEXT S PSOTEXT(1)="Patch PSO*7*154 PHARMACY PATIENT File (#55) search and clean-up is complete.",PSOTEXT(2)="It started on "_$G(PSOTIMEA)_".",PSOTEXT(3)="It ended on "_$G(PSOTIMEB)_"."
 S PSOTEXT(4)=" "
 S CNT=4
 S NAM="" F  S NAM=$O(^TMP($J,"PSOPOS11",NAM)) Q:NAM=""  D
 .S DFN="" F  S DFN=$O(^TMP($J,"PSOPOS11",NAM,DFN)) Q:DFN=""  D
 ..D GETPT S CNT=CNT+1,PSOTEXT(CNT)=" ",CNT=CNT+1,PSOTEXT(CNT)=PSOTXT
 ..S PSOSQ="" F  S PSOSQ=$O(^TMP($J,"PSOPOS11",NAM,DFN,PSOSQ)) Q:PSOSQ=""  D
 ...I PSOSQ="P" S PSORX="" F  S PSORX=$O(^TMP($J,"PSOPOS11",NAM,DFN,PSOSQ,PSORX)) Q:PSORX=""  S CNT=CNT+1 S PSOTEXT(CNT)="  ""P"" CROSS-REFERENCE REBUILT FOR RX#: "_PSORX
 ...I PSOSQ="P,A" S PSORX="" F  S PSORX=$O(^TMP($J,"PSOPOS11",NAM,DFN,PSOSQ,PSORX)) Q:PSORX=""  S CNT=CNT+1 S PSOTEXT(CNT)="  ""P"",""A"" CROSS-REFERENCE REBUILT FOR RX#: "_PSORX
 I CNT=4 S CNT=CNT+1,PSOTEXT(CNT)="No missing Cross References"
 S CNT=CNT+1,PSOTEXT(CNT)=" ",PSOTEXT(CNT+1)="**  END OF LIST **"
 S XMTEXT="PSOTEXT(" N DIFROM D ^XMD
 K PSOTIMEA,PSOTIMEB,XMDUZ,XMSUB,PSOTEXT,XMTEXT,PSODT2,^TMP($J,"PSOPOS11"),CNT,DFN,MSG,NAM,PSODT,PSOJOB,PSOSQ,PSOSQ1,PSOTXT
 S:$D(ZTQUEUED) ZTREQ="@"
 Q
 ;
PS55P ; CHECK FOR MISSING "P" CROSS=REFERENCES
 N PSOSQ
 S PSOSQ=0 F  S PSOSQ=$O(^PS(55,PSODFN,"P",PSOSQ)) Q:'PSOSQ  I $G(^PS(55,PSODFN,"P",PSOSQ,0))=RXP Q
 I PSOSQ Q
 S ^XTMP("PSOPOS10",$J,PSODFN,PSODT,RXP)=""
 Q
 ;
PS55PA ; CHECK FOR MISSING "P","A" CROSS-REFERENCES
 N PSODT
 S PSODT="" F  S PSODT=$O(^PS(55,PSODFN,"P","A",PSODT)) Q:'PSODT  I $D(^PS(55,PSODFN,"P","A",PSODT,RXP)) Q
 I 'PSODT D
 . N PSOEXP
 . S PSOEXP=$P($G(^PSRX(RXP,2)),"^",6) I PSOEXP="" S PSOEXP=$P($G(^PSRX(RXP,3)),"^",5)
 .I PSOEXP="" Q
 .S ^XTMP("PSOPOS10",$J,PSODFN,"P,A",PSOEXP,RXP)=""
 .D CHKPS
 .S ^PS(55,PSODFN,"P","A",PSOEXP,RXP)="",PSOCTPA=PSOCTPA+1
 Q
 ;
CHKPS ; SEE IF ^PS(55,PSODFN EXISTS - IF NOT SET TOP LEVEL AT LEAST
 I '$D(^PS(55,PSODFN,0)) D
 .;S ^PS(55,PSODFN,0)=PSODFN_"^^^^^2"
 .L +^PS(55,PSODFN)
 .S PSOUPD=2
 .K DIC S DIC="^PS(55,",DIC(0)="L",(X,DINUM)=PSODFN,DIC("DR")="52.1///"_PSOUPD
 .K DD,DO D FILE^DICN K DD,DO,DIE,X,DINUM
 .L -^PS(55,PSODFN)
 Q
 ;
RESET ; RESET "P" CROSS-REFERENCE BY BUILDING ^TMP GLOBAL IN ISSUE DATE SEQUENCE FOR ALL ENTRIES, THEN RESETTING THE "P" SUBSCRIPT
 N PSOIDT,PSOSQ,CNT
 S PSODFN="" F  S PSODFN=$O(^XTMP("PSOPOS10",$J,PSODFN)) Q:'PSODFN  S PSOCTP=PSOCTP+1 D
 .K ^TMP("PSOPOS10",$J)
 .S CNT=0
 .I '$O(^XTMP("PSOPOS10",$J,PSODFN,"")) Q  ; quit if only "P,A" entries
 .L +^PS(55,PSODFN)
 .S PSODT="" F  S PSODT=$O(^XTMP("PSOPOS10",$J,PSODFN,PSODT)) Q:'PSODT    S RXP="" F  S RXP=$O(^XTMP("PSOPOS10",$J,PSODFN,PSODT,RXP)) Q:'RXP  D
 ..S PSOIDT=$P($G(^PSRX(RXP,0)),"^",13) I PSOIDT'="" I '$D(^TMP("PSOPOS10",$J,PSOIDT,RXP)) S ^TMP("PSOPOS10",$J,PSOIDT,RXP)="",CNT=CNT+1
 .S PSOSQ=0 F  S PSOSQ=$O(^PS(55,PSODFN,"P",PSOSQ)) Q:'PSOSQ  D  ; NOW ADD ALL EXISTING ENRIES TO ^TMP GLOBAL
 ..S RXP=$G(^PS(55,PSODFN,"P",PSOSQ,0)) I RXP="" Q
 ..S PSOIDT=$P($G(^PSRX(RXP,0)),"^",13) I PSOIDT'=""  I '$D(^TMP("PSOPOS10",$J,PSOIDT,RXP)) S ^TMP("PSOPOS10",$J,PSOIDT,RXP)="",CNT=CNT+1
 .I $O(^PS(55,PSODFN,"P",CNT)) D
 ..S PSOSQ=CNT F  S PSOSQ=$O(^PS(55,PSODFN,"P",PSOSQ)) Q:'PSOSQ  K ^PS(55,PSODFN,"P",PSOSQ) ; REMOVE SEQUENCE NUMBERS THAT ARE GREATER THAN THE NUMBER OF "P" ENTRIES
 .S CNT=0,PSOIDT="" F  S PSOIDT=$O(^TMP("PSOPOS10",$J,PSOIDT)) Q:'PSOIDT  S RXP=""  F  S RXP=$O(^TMP("PSOPOS10",$J,PSOIDT,RXP)) Q:'RXP  S CNT=CNT+1,^PS(55,PSODFN,"P",CNT,0)=RXP
 .I CNT>0 S ^PS(55,PSODFN,"P",0)="^55.03PA^"_CNT_"^"_CNT
 .L -^PS(55,PSODFN)
 K ^TMP("PSOPOS10",$J)
 Q
 ;
GETLIST ; PROCESS ENTRIES FROM ^XTMP("PSOPOS10" GLOBAL
 K ^TMP($J,"PSOPOS11")
 S PSOJOB="" F  S PSOJOB=$O(^XTMP("PSOPOS10",PSOJOB)) Q:PSOJOB=""  D
 .S PSOSQ="" F  S PSOSQ=$O(^XTMP("PSOPOS10",PSOJOB,PSOSQ)) Q:PSOSQ=""  D
 ..S NAM=$P($G(^DPT(PSOSQ,0)),"^",1) I NAM="" S NAM="UNKNOWN"
 ..S PSOSQ1="" F  S PSOSQ1=$O(^XTMP("PSOPOS10",PSOJOB,PSOSQ,PSOSQ1)) Q:PSOSQ1=""  D
 ...I PSOSQ1="P,A" D GETPA Q
 ...S PSORX="" F  S PSORX=$O(^XTMP("PSOPOS10",PSOJOB,PSOSQ,PSOSQ1,PSORX)) Q:PSORX=""  S PSORXP=$P($G(^PSRX(PSORX,0)),"^",1) I PSORXP'="" S ^TMP($J,"PSOPOS11",NAM,PSOSQ,"P",PSORXP)=""
 Q
 ;
GETPT   ; GET PATIENT INFORMATION
 D PID^VADPT
 S PSOTXT=$P($G(^DPT(DFN,0)),"^",1)_"  ("_$G(VA("BID"))_")"
 Q
 ;
GETPA   ;
 S PSODT="" F  S PSODT=$O(^XTMP("PSOPOS10",PSOJOB,PSOSQ,PSOSQ1,PSODT)) Q:PSODT=""  D
 .S PSORX="" F  S PSORX=$O(^XTMP("PSOPOS10",PSOJOB,PSOSQ,PSOSQ1,PSODT,PSORX)) Q:PSORX=""  S PSORXP=$P($G(^PSRX(PSORX,0)),"^",1) I PSORXP'="" S ^TMP($J,"PSOPOS11",NAM,PSOSQ,"P,A",PSORXP)=""
 Q
 ;