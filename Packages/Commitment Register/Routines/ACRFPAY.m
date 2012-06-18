ACRFPAY ;IHS/OIRM/DSD/THL,AEF - CERTIFY AND EXPORT PAYMENT BATCH;  [ 02/13/2007  9:19 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;**3,16,17,22**;NOV 05, 2001
 ;
 D FMA
 I $D(ACRQUIT) D EXIT Q
EN F  D EN1 Q:$D(ACRQUIT)!$D(ACROUT)
EXIT K ACR,ACROUT,ACRQUIT,ACRXALL,ACRJ,ACRFYDA,ACRBATDA,ACRBATNO,ACRFY,ACRFYX,ACR0,ACRPAY,ACRPAYEE,ACRACH,ACRBTYP,ACRJJ,ACRMAX,ACRY,ACRDEST,ACRS,ACRSBAT,ACRSFY,ACRSEQDA,ACRSS,ACRXX,ACRSEQNO,ACRCERT,ACRESIG,ACR1,ACR2,ACRBSCH,ACRDOC,ACRREF,ACRTOT
 K ACRSNO,ACRBAT,ACRIV,ACRVDAT
 K ^TMP("ACRIV",$J),^TMP("ACRRR",$J),^TMP("ACRSYNC",$J),^TMP("ACRNORR",$J),^TMP("ACREXP",$J),^TMP("ACRINVR",$J),^TMP("ACREFTR",$J),^TMP("ACRPAYL",$J),^TMP("ACRBI",$J),^TMP("ACRINV",$J)
 Q
EN1 D EXIT
 W @IOF
 W !!?10,"Select the Payment Function"
 S DIR(0)="SO^1:INVOICE Audit;2:AIRLINE Payment;3:EDIT Payment/REVIEW Batch;4:CERTIFY a Batch;5:EXPORT a Batch ;6:ADD a Batch;7:COMBINE Batches;8:REOPEN/RE-EXPORT a Batch;9:REOPEN a Document;10:PRINT Payment Management Reports;11:DELETE A Batch"
 S DIR(0)=DIR(0)_";12:Payroll Data;13:Batch STATUS Report;14:Travel Advance Management;15:Payment Management Utilities"
 S DIR(0)=DIR(0)_";16:Process Credit Card Payments"
 S DIR("A")="Which function"
 W !
 D DIR^ACRFDIC
 I '+Y S ACRQUIT="" Q
 ;I +Y=1 D ACRIV^ACRFRR K ACRQUIT Q                     ;ACR*2.1*16.01 IM14473
 ;I +Y=2 D AIRLINE^ACRFIV12 K ACRQUIT Q                 ;ACR*2.1*16.01 IM14473
 ;I +Y=3 D REVIEW K ACRQUIT Q                           ;ACR*2.1*16.01 IM14473   
 ;I +Y=4 D CERTIFY K ACRQUIT Q                          ;ACR*2.1*16.01 IM14473
 ;I +Y=5 D EXPORT^ACRFPAY3 K ACRQUIT Q                  ;ACR*2.1*16.01 IM14473
 ;I +Y=6 D ADD^ACRFPAY4 K ACRQUIT Q                     ;ACR*2.1*16.01 IM14473
 ;I +Y=7 D COMBINE^ACRFPAY1 K ACRQUIT Q                 ;ACR*2.1*16.01 IM14473
 ;I +Y=8 D REOPEN^ACRFPAY4 K ACRQUIT Q                  ;ACR*2.1*16.01 IM14473
 ;I +Y=9 S ACRIV="" D REOPEN^ACRFRR K ACRQUIT,ACRIV Q   ;ACR*2.1*16.01 IM14473
 ;I +Y=10 D REPORTS^ACRFPAY6 K ACRQUIT Q                ;ACR*2.1*16.01 IM14473   
 ;I +Y=11 D DBATCH^ACRFPAY3 K ACRQUIT Q                 ;ACR*2.1*16.01 IM14473
 ;I +Y=12 D ^ACRFPR Q                                   ;ACR*2.1*16.01 IM14473
 ;I +Y=13 D BSTATUS^ACRFPAY8 K ACRQUIT Q                ;ACR*2.1*16.01 IM14473
 ;I +Y=14 D ^ACRFTA K ACRQUIT Q                         ;ACR*2.1*16.01 IM14473
 ;I +Y=15 D ^ACRFPAYU K ACRQUIT Q                       ;ACR*2.1*16.01 IM14473
 I +Y=1 D ACRIV^ACRFRR K ACRQUIT Q
 I +Y=2 D AIRLINE^ACRFIV12 K ACRQUIT Q
 I +Y=3 D REVIEW K ACRQUIT Q
 I +Y=4 D  K ACRQUIT Q                                  ;ACR*2.1*16.01 IM14473
 .Q:$$CKLK^ACRFPAY("ACRZ NO CERTIFY","CERTIFY a Batch",DUZ)  ;ACR*2.1*16.01 IM14473
 .D CERTIFY                                             ;ACR*2.1*16.01 IM14473
 I +Y=5 D  K ACRQUIT Q                                  ;ACR*2.1*16.01 IM14473
 .Q:$$CKLK^ACRFPAY("ACRZ NO EXPORT","EXPORT a Batch",DUZ)  ;ACR*2.1*16.01 IM14473
 .D EXPORT^ACRFPAY3                                     ;ACR*2.1*16.01 IM14473
 I +Y=6 D  K ACRQUIT Q                                  ;ACR*2.1*16.01 IM14473
 .Q:$$CKLK^ACRFPAY("ACRZ NO ADD","ADD a Batch",DUZ)     ;ACR*2.1*16.01 IM14473
 .D ADD^ACRFPAY4                                        ;ACR*2.1*16.01 IM14473
 I +Y=7 D COMBINE^ACRFPAY1 K ACRQUIT Q
 I +Y=8 D  K ACRQUIT Q                                  ;ACR*2.1*16.01 IM14473
 .Q:$$CKLK^ACRFPAY("ACRZ NO REOPEN/RE-EXPORT","REOPEN/RE-EXPORT a Batch",DUZ)  ;ACR*2.1*16.01 IM14473
 .D REOPEN^ACRFPAY4                                     ;ACR*2.1*16.01 IM14473
 I +Y=9 S ACRIV="" D REOPEN^ACRFRR K ACRQUIT,ACRIV Q
 I +Y=10 D REPORTS^ACRFPAY6 K ACRQUIT Q
 I +Y=11 D  K ACRQUIT Q                                 ;ACR*2.1*16.01 IM14473
 .Q:$$CKLK^ACRFPAY("ACRZ NO DELETE","DELETE a Batch",DUZ)  ;ACR*2.1*16.01 IM14473
 .D DBATCH^ACRFPAY3                                     ;ACR*2.1*16.01 IM14473
 I +Y=12 D ^ACRFPR Q
 I +Y=13 D BSTATUS^ACRFPAY8 K ACRQUIT Q
 I +Y=14 D  K ACRQUIT Q                                 ;ACR*2.1*16.01 IM14473
 .Q:$$CKLK^ACRFPAY("ACRZ NO TA MGT","TA Management",DUZ)  ;ACR*2.1*16.01 IM14473
 .D ^ACRFTA                                             ;ACR*2.1*16.01 IM14473
 I +Y=15 D ^ACRFPAYU K ACRQUIT Q
 Q
REVIEW F  D R1 Q:$D(ACRQUIT)!$D(ACROUT)
 K ACRQUIT
 Q
R1 D BATCHL^ACRFPAY3
 D BATCHS
 I $D(ACRQUIT)!$D(ACROUT) Q
 F  D BATCHD^ACRFPAY6 Q:$D(ACRQUIT)!$D(ACROUT)
 K ACRQUIT
 Q
BATCHS ;EP - SELECT BATCH
 I '$G(ACRMAX) D  Q
 .W !!,"There are no batches on file."
 .D PAUSE^ACRFWARN
 .S ACRQUIT=""
 N X
 K ACRXALL
 S DIR(0)="FO^1:6"
 S DIR("A")="Which BATCH"
 S DIR("?",1)="Enter either the 6 digit batch number or"
 S DIR("?")="the sequence number (NO.) for the batch."
 S:$D(ACREXP)!$D(ACRCERT) DIR("A")=$S($D(ACREXP):"EXPORT",$D(ACRCERT):"CERTIFY",1:"")_" "_DIR("A")
 W !
 I $D(ACREXP) D
 .W !,"Please NOTE:  You can export ALL Batches by entering 'ALL' at the"
 .W !,"prompt.  Otherwise, specify the the batch you want to export."
 .W !
 D DIR^ACRFDIC
 I Y="" S ACRQUIT="" Q
 I Y="ALL" S ACRXALL="ALL" Q
 I $L(Y)=6,$D(^TMP("ACRBAT",$J,Y)) S Y=^TMP("ACRBAT",$J,Y)
 I '$D(^TMP("ACRPAY",$J,+Y)) S ACRQUIT="" Q
 S X=^TMP("ACRPAY",$J,+Y)
 S ACRBATDA=$P(X,U)
 S ACRFYDA=$P(X,U,2)
 I '$D(^AFSLAFP(+ACRFYDA,1,+ACRBATDA)) S ACRQUIT="" Q   ;ACR*2.1*3.42
 S ACRFY=$P($G(^AFSLAFP(+ACRFYDA,0)),U)
 S ACRBSCH=$P($G(^AFSLAFP(ACRFYDA,1,ACRBATDA,2)),U,6)
 K ACRBAT
 Q
ADDPAY ;EP;ADD PAYMENT
 I $$COUNT^ACRFIV12(ACRFYDA,ACRBATDA)>59 D  Q
 .W !!,"You cannot add more than 60 payments to a batch."
 .W !,"Please add additional payments to another batch"
 .W !,"or create a new batch if necessary."
 .D PAUSE^ACRFWARN
 D NEWSEQ
 I $D(ACRQUIT)!$D(ACROUT) K ACRQUIT Q
 ;I $D(ACRT),ACRT="" D PAYE  ; only 1 payment  ;Added in ACR*2.1*16.06 IM15505;Commented out in ACR*2.1*17.01 IM17097
 D PAYE                      ;Commented out in ACR*2.1*16.06 IM15505;Restored in ACR*2.1*17.01 IM17097
 S ACRNEXT=""
AP ;EP;TO ADD PAYMENT INFO
 S DIR(0)="YO"
 S DIR("A")="ADD "_$S($D(ACRNEXT):"another",1:"a")_" payment"_$S('$D(ACRNEXT):" now",1:"")
 S DIR("B")="NO"
 K ACRNEXT
 W !
 D DIR^ACRFDIC
 I +Y'=1 Q
 D ADDPAY:$G(ACRREFX)'=326&($G(ACRREFX)'=371)
 Q
NEWSEQ ;EP;CREATE NEW SEQUENCE
 D NONARMS^ACRFPAY1
 Q:$D(ACRQUIT)!$D(ACROUT)
NEWSEQ1 S ACROBJDA=$O(ACRIVPAY(ACRCANDA,0))
 Q:'ACROBJDA
 ;D NEWSEQ^ACRFIV11                       ;ACR*2.1*16.06 IM15505
 ;K ACRIVDC,ACRP                          ;ACR*2.1*16.06 IM15505
 ;I $D(ACRIVDIS(ACRCANDA,"P"))#2 D        ;ACR*2.1*16.06 IM15505
 ;.S ACROBJDA=0                           ;ACR*2.1*16.06 IM15505
 ;.F  S ACROBJDA=$O(ACRIVDIS(ACRCANDA,ACROBJDA)) Q:'ACROBJDA  D  ;ACR*2.1*16.06 IM15505
 ;..S ACRIVTF=0                           ;ACR*2.1*16.06 IM15505
 ;..S ACRTCODE=19917                      ;ACR*2.1*16.06 IM15505
 ;..S ACRP=ACRIVDIS(ACRCANDA,"P")         ;ACR*2.1*16.06 IM15505
 ;..Q:'ACRP                               ;ACR*2.1*16.06 IM15505
 ;..D NEWSEQ^ACRFIV11                     ;ACR*2.1*16.06 IM15505
 ;..K ACRIVDC,ACRP                        ;ACR*2.1*16.06 IM15505
 ;D ^ACRFIV11                             ;Added in ACR*2.1*16.06 IM15505;Commented out in ACR*2.1*17.01 IM17097
 D N1166^ACRFIV11                         ;ACR*2.1*17.01 IM17097
 D EXIT^ACRFIV11
 I $G(ACRREFX)=326!($G(ACRREFX)=371) D CONTRACT
 K ACRDOCX,ACRVDAX,ACRREFX
 Q
SREV ;EP;REVIEW SELECTED PAYMENTS
 N X
 S ACRXX=ACRY
 F ACRJ=1:1 S X=$P(ACRXX,",",ACRJ) Q:'X!'+$G(^TMP("ACRPAY",$J,+X))!$D(ACRQUIT)  S ACRSEQDA=+^TMP("ACRPAY",$J,X) D PAYE I $P(ACRXX,",",ACRJ+1) D NEXT
 K ACRQUIT
 Q
NEXT ;EP
 S DIR(0)="YO"
 S DIR("A")="Continue Payment Review/Edit"
 S DIR("B")="YES"
 W !
 D DIR^ACRFDIC
 S:+Y'=1 ACRQUIT=""
 Q
PAYE ;EP;EDIT PAYMENT INFO
 S DA(2)=ACRFYDA
 S DA(1)=ACRBATDA
 S DA=ACRSEQDA
 S DIE=9002325
 S DDSFILE(1)=9002325.02
 S DR="[ACR REVIEW PAYMENT"_$S(ACRBTYP="T":"-T",1:"")_"]"
 D DDS^ACRFDIC
 D UPODOC(ACRFYDA,ACRBATDA,ACRSEQDA) ; OPEN DOCUMENT INTERFACE
 Q:$G(ACRACH)'="A"&($G(ACRACH)'="B")
 S X=$G(^AFSLAFP(ACRFYDA,1,ACRBATDA,1,ACRSEQDA,0))
 S X=$P(X,U,$S(ACRBTYP="V":10,1:24))
 Q:'X
 S DA=X
BANKINFO ;EP;TO ENTER BANK INFO
 Q:$S($D(^XUSEC("ACRFZ EDIT EFT",DUZ)):0,$D(^XUSEC("ACRFZ VIEW EFT",DUZ)):0,1:1)
 S DIE=$S(ACRBTYP'="T":9999999.11,1:9002185.3)
 S DDSFILE=$S(ACRBTYP'="T":9999999.11,1:9002185.3)
 S DR="[ACR BANK INFORMATION]"
 D DDS^ACRFDIC
 Q
CERTIFY ;EP;TO LIST AND SELECT BATCHES TO BE CERTIFIED
 ;I '$D(^ACRAPL("AC",DUZ,38)) D  Q          ;ACR*2.1*16.01 IM14473
 I '$D(^ACRAPL("AC",DUZ,38))!($D(^XUSEC("ACRFZ NO CERTIFY",DUZ))) D  Q  ;ACR*2.1*16.01 IM14473
 .W !!,"You do not have the authority to CERTIFY PAYMENTS."
 .D PAUSE^ACRFWARN
 F  D C1 Q:$D(ACRQUIT)!$D(ACROUT)
 K ACRQUIT
 Q
C1 N J,X,Y
 K ACRMAX,ACR,ACRPAY
 S ACRCERT=""
 S ACRFYDA=0
 F  S ACRFYDA=$O(^AFSLAFP("CERT","C",ACRFYDA)) Q:'ACRFYDA  D
 .S ACRFY=$P(^AFSLAFP(ACRFYDA,0),U)
 .S ACRBATDA=0
 .F  S ACRBATDA=$O(^AFSLAFP("CERT","C",ACRFYDA,ACRBATDA)) Q:'ACRBATDA  D PAY^ACRFPAY3
 D PAY1^ACRFPAY3
 I '$G(ACRMAX) D  Q
 .W !!,"NO Batches pending for CERTIFICATION"
 .D PAUSE^ACRFWARN
 .S ACRQUIT=""
 D BATCHS
 I $D(ACRQUIT)!$D(ACROUT) Q
 F  D BATCHD^ACRFPAY6 Q:$D(ACRQUIT)!$D(ACROUT)
 K ACRQUIT
 Q
FMA ;CHECK FILE MAN ACCESS CODES
 I $G(DUZ(0))'["@",$G(DUZ(0))'["$" D
 .W !!,"In order to perfrom functions within Payment Management your"
 .W !,"FILE MAN ACCESS CODE must include the '$' (dollar sign)."
 .W !!,"Consult with you ARMS manager to get this character assigned"
 .W !,"as part of your FILE MAN ACCESS CODE."
 .D PAUSE^ACRFWARN
 .S ACRQUIT=""
 I '$P($G(^ACRAU(DUZ,1)),U,13) D
 .W !!,"You are not in the FULL-SCREEN edit mode required in order"
 .W !,"to use Payment Management."
 .W !!,"Consult with you ARMS manager to get set up for the"
 .W !,"FULL-SCREEN edit mode."
 .D PAUSE^ACRFWARN
 .S ACRQUIT=""
 Q
CONTRACT ;ALLOW ADD OF MULTIPLE NEW CONTRACT PAYMENTS
 S DIR(0)="YO"
 S DIR("A",1)="Add ANOTHER Contract Payment"
 S DIR("A",2)="For DOCUMENT NO. "_ACRDOCX
 S DIR("A")="For CONTRACTOR.. "_$P($G(^AUTTVNDR(+$G(ACRVDAX),0)),U)
 S DIR("B")="NO"
 W !
 D DIR^ACRFDIC
 I Y'=1 S ACRQUIT="" Q
 W !!,"DOCUMENT NUMBER.....: ",ACRDOCX
 W !,"CONTRACTOR..........: ",$P($G(^AUTTVNDR(+$G(ACRVDAX),0)),U)
 S X=ACRDOCX
 D DOCX^ACRFPAY1
 I $G(ACRDOC)="" S ACRQUIT="" Q
 S ACRVDA=ACRVDAX
 D 326^ACRFPAY1
 Q:$D(ACRQUIT)!$D(ACROUT)
 D NEWSEQ1
 Q
UPODOC(ACRFYDA,ACRBATDA,ACRSEQDA)      ;
 ;----- UPDATE OPEN DOCUMENT FILE WHEN BATCH PAYMENT IS EDITED
 ; 
 ;      OPEN DOCUMENT INTERFACE
 ;      SETS UP CALL TO EPMT^ACRFODOC TO UPDATE THE PAYMENT ENTRY
 ;      IN THE OPEN DOCUMENT DATABASE WHEN A BATCH PAYMENT IS EDITED
 ;
 N ACRAMT,ACRBATCH,ACRDATE,ACRDOC,ACRFY,ACRPDFOR,ACRSEQ,ACRSCHNO,ACRSSN,D0,D1,D2,DATA
 S ACRFY=$P($G(^AFSLAFP(ACRFYDA,0)),U)
 Q:'ACRFY
 S DATA=$G(^AFSLAFP(ACRFYDA,1,ACRBATDA,0))
 S ACRBATCH=$P(DATA,U)
 Q:ACRBATCH']""
 S ACRDATE=$P(DATA,U,2)
 S DATA=$G(^AFSLAFP(ACRFYDA,1,ACRBATDA,1,ACRSEQDA,0))
 S ACRDOC=$S($P(DATA,U,20)]"":$P(DATA,U,20),1:$P(DATA,U,21))
 Q:ACRDOC']""
 S ACRSEQ=$P(DATA,U)
 Q:ACRSEQ']""
 S ACRAMT=$P(DATA,U,11)
 S ACRAMT=$$DOL^ACRFUTL(ACRAMT)
 S ACRSSN=$S($P(DATA,U,10):$P($G(^AUTTVNDR($P(DATA,U,10),11)),U),$P(DATA,U,24):$P($G(^VA(200,$P(DATA,U,24),1)),U,9),1:"")
 S ACRSCHNO=$P($G(^AFSLAFP(ACRFYDA,1,ACRBATDA,2)),U,6)
 S ACRPDFOR=$P(DATA,U,14)
 S D0=$O(^AFSLODOC("B",ACRFY,0))
 Q:'D0
 S D1=$O(^AFSLODOC(D0,1,"B",ACRDOC,0))
 Q:'D1
 S D2=$O(^AFSLODOC(D0,1,D1,1,"C",ACRBATCH,ACRSEQ,0))
 Q:'D2
 S DATA=ACRDATE_U_ACRAMT_U_ACRBATCH_U_ACRSSN_U_ACRSCHNO_U_ACRPDFOR_U_ACRDATE_U_U_ACRSEQ
 D EPMT^ACRFODOC(D0,D1,D2,DATA)
 Q
CKLK(X,Y,DUZ) ;EP; EXTRINSIC FUNCTION TO CHECK FOR BLOCKS ; ACR*2.1*16.01 IM14473
 ;
 ; ENTERS WITH  - X= NAME OF KEY
 ;                Y= NAME OF OPTION
 ;              DUZ= EIN OF USER
 ;
 ; RETURNS  1 = TRUE  (BLOCK OUT)
 ;          0 = FALSE (ALLOW IN)
 N Z
 S Z=$D(^XUSEC(X,DUZ))
 I Z D
 .W !!,"You do not have the authority to ",Y
 .D PAUSE^ACRFWARN
 Q Z
BADRN ;BAD ROUTING NUMBER - MESSAGE USED BY ACR BANK INFORMATION SCREEN
 ;ACR*2.1*22.11f IM23639
 W *7
 D HLP^DDSUTL("This Routing Number is incorrect.")
 D HLP^DDSUTL("$$EOP")
 Q
BADSRN ;BAD SUB-ROUTING NUMBER - MESSAGE USED BY ACR BANK INFORMATION SCREEN
 ;ACR*2.1*22.11f IM23639
 W *7
 D HLP^DDSUTL("This Sub-Routing Number is incorrect.")
 D HLP^DDSUTL("$$EOP")
 Q