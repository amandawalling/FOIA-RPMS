PXBMSTP ;ISL/JVS - MAIN ROUTINE STOP CODES ;11/5/96  14:27
 ;;1.0;PCE PATIENT CARE ENCOUNTER;**11**;Aug 12, 1996
 ;
 W !,"This is not the entry into this routine" Q
 ;
 ;  VARABLE LIST
 ;
 ;
STP(PXBVST) ;-----STOP CODES
 Q:'$D(^AUPNVSIT(PXBVST))
 ;
 ;--Obtain the correct provider
 ;--Set up
 N PXBCNT,I,J,IDATE,PRIP,PRIPOV,PRISEC,QUA,VISIT,PRI,POV,PRV,PXBENT,SAVE
 N PXBUT,FPRI,ENTRY,PXBSAVE,DATA,NAME,PATIENT,VAR
 N REQI,REQE,PXKSTP,CYCL,FROM,PXBNSTPL,NOREV
 N PXBNSTP,FIRST,PXBWIN,CLINIC,PXBPMT,LEAVE,CREDIT,PXBSKY,PXBKY,PXBSAM,%
 S (REQE,REQI)=""
 S CLINIC=$P(^AUPNVSIT(PXBVST,0),"^",22)
 S ^TMP("PXBDSTP",$J,"START")=0,FIRST=1,FROM="STP",PXBEXIT=1
 ;
S ;---START
 D TERM^PXBCC
 D STP^PXBGSTP(PXBVST) ;--GATHER STP'S
 D HDR^PXBUTL(PXBVST,1)
 I $D(PXBCNT),PXBCNT=0 D REQ^PXBDREQ(7)
 D HDR2^PXBUTL(FROM)
 D LOC^PXBCC(3,1)
 D EN0^PXBDSTP ;--DISPLAY STP'S
 D LOC^PXBCC(15,1) W IOSC ;--MOVE TO LINE 17 AND SAVE CURSOR LOCATION
 D WIN17^PXBCC(PXBVST) ;--SET UP WINDOW
 D RSET^PXBDREQ("STP")
SS K ERROR,PXBDIC
 D STP^PXBPSTP
 G:$G(PXBEXIT)<1 STPXIT
 D:$G(ERROR) RSET^PXBDREQ("STP")
 G:$G(ERROR) SS
 I $P(REQE,"^",10)=900 D HELP^PXBUTL0("STP900") D RSET^PXBDREQ("STP") G SS
 K FIRST
 ;
 ;-----STORE THE INFORMATION
 I $G(PXBDIC) K PXBDIC G S
 I '$D(PXBUT) D STP^PXBSTOR1 S PXKSTP="" D STP^PXBGSTP(PXBVST),HDR2^PXBUTL(FROM),LOC^PXBCC(3,1),EN0^PXBDSTP W IOEDEOP D LOC^PXBCC(15,1) W IOSC D WIN17^PXBCC(PXBVST)
 ;
 ;-----PASS IT ON OUT THE DOOR
 D RSET^PXBDREQ("STP")
 ;----------FOR SCHEDULING ADD/EDIT--------
 I WHAT="ADDEDIT",$D(PXBNSTP) G STPXIT
 ;-----------VAUGHN 6/29/96-ALBANY----
 I $G(PXBUT)=1!($D(DIRUT)) G STPXIT
 I DATA["^S" G S
 K PXBUT,DIRUT G SS
 Q
STPXIT ;EXIT
 D PRIM^PXBUTL
 D FULL0^PXBCC
 D CLEAR1^PXBCC
 K ^TMP("PXBDSTP",$J),^TMP("PXBSTOR",$J),^TMP("PXK",$J)
 K ^TMP("PXBTOTAL",$J),^TMP("PXBTANA",$J)
 K DIRUT
 Q