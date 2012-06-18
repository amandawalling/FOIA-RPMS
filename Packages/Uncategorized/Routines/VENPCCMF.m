VENPCCMF ; IHS/OIT/GIS - QUEUEING FILE VIEWER ;
 ;;2.6;PCC+;;NOV 12, 2007
 ;
 ;
 ;
QUEUE W:$D(IOF) @IOF G RUN ; EP-STARTUP
 ; 
RANGE(LINE,END,MAX) ; EP-RETURN A RANGE OF LINES
 I LINE=1,END'>MAX Q 1_U_END
 I LINE=1 Q 1_U_MAX
 I END<(LINE+MAX) Q (END-MAX+1)_U_END
 Q (LINE+1)_U_(LINE+MAX)
 ;
LIST(HR,CIEN) ; EP-GIVEN HRS & SUPERBILL DEPT IEN, RETURN IN ^TMP ARRAY ALL LINES
 I '$G(HR) Q ""
 I '$D(^VEN(7.95,CIEN,0)) Q ""
 N TMP,TOT,TIME,DFN,CLINIC,STATUS,QIEN,TTOT,%,%I,%H,X,PATIENT,ELAP
 S TMP="^TMP(""VEN LINES"",$J)" K @TMP
 S TIME=+$$AGO(HR)
 S (TOT,TTOT)=0
ARR F  S TIME=$O(^VEN(7.2,"B",TIME)) Q:'TIME  S QIEN=0 F  S QIEN=$O(^VEN(7.2,"B",TIME,QIEN)) Q:'QIEN  D
 . S X=$G(^VEN(7.2,QIEN,0))
 . S STATUS=$P(X,U,5) I STATUS'=1 Q
 . S CLINIC=$P(X,U,4) I CLINIC'=CIEN Q
 . S DFN=+$G(^VEN(7.2,QIEN,1)) I '$D(^DPT(DFN,0)) Q
 . D NOW^%DTC
 . S %=$$TIME(TIME,%) S ELAP=$P(%,U),TTOT=TTOT+$P(%,U,2)
 . S PATIENT=$P($G(^DPT(+$G(DFN),0)),U)
 . S PATIENT=PATIENT_" ("_$$CHART^VENPCC1A(CIEN,DFN)_")"
 . S TOT=TOT+1
 . S @TMP@(TOT)=PATIENT_" "_ELAP_U_QIEN
 . Q
 S ATIME="0 min"
 I $G(TTOT),$G(TOT) S ATIME=(TTOT\TOT)_" min"
 Q
 ;
RUN ; 
 N TMP,DIC,CIEN,HR,CNT,CNAME,LINE,END,MAX,FIN,START,X,Y,%,CNT,ATIME,I,DIE,DA,DR,D,D0,DI,DQ
 S TMP="^TMP(""VEN LINES"",$J)" K @TMP
 S DIC("A")="Patient list: ",DIC(0)="AEQ",DIC="^VEN(7.95,"
 D ^DIC I Y=-1 Q
 S CIEN=+Y,HR=6,CNT=0,CNAME=$P(Y,U,2),ATIME=0
START D LIST(HR,CIEN)
 S LINE=1,MAX=20
LOOP S END=$O(@TMP@(99999),-1)
 S %=$$RANGE(LINE,END,MAX)
 S START=+%,FIN=$P(%,U,2)
 I 'FIN W !!,"There are currently no patients in the queue",!! Q
 I $D(IOF) W @IOF
 W !!,CNAME," patients.  Average waiting time ",ATIME," =>",!
 F I=START:1:FIN W !,?3,I,")",?7,$P(@TMP@(I),U)
 W !!
ASK W "Select a patient (",START,"-",FIN,") "
 I END>FIN W "or press <ENTER> to see more choices"
 W ": "
 R X:60
 E  S CNT=CNT+1 G:CNT>60 HALT W:$D(IOF) @IOF G START ; REFRESH 60 TIMES THEN QUIT
 S CNT=0
 I X="",FIN<END S LINE=FIN G LOOP
 I X="" G START
 I X,X=X\1,X'<1,X'>FIN D STAT($P(@TMP@(X),U,2)) G START
 I X=U Q
 W "  ??" G ASK
 ; 
STAT(DA) ; 
 S DR=".05////0;.02////"_$$NOW^VENPCCU
 S DIE="^VEN(7.2,"
 L +^VEN(7.2,DA):0 I $T D ^DIE L -^VEN(7.2,DA)
 Q
 ; 
HALT ; 
 I CNT>60 W !,"No activity in the past hour.  Terminating session."
 Q
 ; 
TIME(T1,T2) ; TIME DIFF
 N X,Y,D,H,M,DUR
 S DUR=$$FMDIFF^XLFDT(T2,T1,2)\60
 S X=$$FMDIFF^XLFDT(T2,T1,3)
 S D=+X
 S Y=$P(X," ",2)
 S H=+Y
 S M=$P(Y,":",2)
 I DUR<60 Q DUR_"m"_U_DUR
 I 'D,H Q (H_"h "_M_"m"_U_DUR)
 Q D_"d "_H_"h "_M_"m"_U_DUR
 ; 
AGO(HRS) ;
 N X,Y,Z
 S X=$$HADD^XLFDT($H,0,-HRS,0,0)
 S Y=$$HTFM^XLFDT(X)
 S Z=$E($P(Y,".",2),1,4)
 Q Y\1_"."_Z
 ;
RPT ; EP-PRINT A REPORT
 N DIC,X,Y,%,BY,FR,TO,DHD,L,IOP
 S %=$O(^VEN(7.95,"B","MEDICAL RECORDS","")) S DIS(0)="I $P($G(^VEN(7.2,D0,0)),U,4)'="_+%
 S DIC="^VEN(7.2,",L=0,BY="+QUEUE DESTINATION,TIME IN",FLDS="[VEN CHECKIN LIST 2.5]",DHD="PCC+ CHECKIN LIST"
 S (FR,TO)=",?"
 D EN1^DIP
 Q
 ;
DATES(PATIENT) ; EP-GET DATES FOR LAST DEMOG UPDATE AND REVIEW
 N TXT,X,Y,%,STOP,SP,RDT,UDT,RD,UD
 S (TXT,SP)="  ",(RDT,UDT)="NONE",(RD,UD)=""
 S %=99999999999
 F  S %=$O(^VEN(7.2,"AP",PATIENT,%),-1) Q:'%  S (Y,RD)=$P($G(^VEN(7.2,%,1)),U,4) I Y X ^DD("DD") I $L(Y) S RDT=Y Q
 S (Y,UD)=$P($G(^AUPNPAT(PATIENT,0)),U,3) I Y X ^DD("DD") I $L(Y) S UDT=Y
 I UD>RD S RDT=UDT
 S TXT=TXT_"Last demographics review: "_RDT_SP
 S TXT=TXT_"Last demographics update: "_UDT
 Q TXT
 ;
SPEC ; EP-SPECIAL LIST
 N DIC,X,Y,%,BY,FR,TO,DHD,L,IOP
 S %=$O(^VEN(7.95,"B","MEDICAL RECORDS","")) S DIS(0)="I $P($G(^VEN(7.2,D0,0)),U,4)'="_+%
 S DIC="^VEN(7.2,",L=0,BY="[TEST CLINIC GRP],+QUEUE DESTINATION,TIME IN",FLDS="[VEN CHECKIN LIST]",DHD="PCC+ CHECKIN LIST"
 S (FR,TO)=",,?"
 D EN1^DIP
 Q
 ;