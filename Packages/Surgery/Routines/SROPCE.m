SROPCE ;BIR/ADM - PCE updates ; [ 10/17/01  9:28 AM ]
 ;;3.0; Surgery ;**58,62,69,88,105**;24 Jun 93
 ;
 ; Reference to $$DATA2PCE^PXAPI supported by DBIA #1889
 ; Reference to $$DELVFILE^PXAPI supported by DBIA #1890
 ;
 Q
NITE ; entry for nightly update of PCE with surgery & non-OR procedure data
 N DFN,SR,SRAO,SRATT,SRCHK,SRCPT,SRDATE,SRDIAG,SRDXN,SREC,SRHNC,SRIR,SRK,SRLOC,SRMST,SRNAR,SRNON,SROTH,SRPKG,SRPROV,SRS,SRSC,SRTN,SRV,SRVSIT,SRX
 K DIC S DIC=9.4,DIC(0)="XM",X="SURGERY" D ^DIC K DIC Q:Y=-1  S SRPKG=+Y
 S SRS="SURGERY DATA",SRFILE=0 K ^TMP("SRPXAPI",$J)
 S SRTN=0 F  S SRTN=$O(^SRF("APCE",SRTN)) Q:'SRTN  D UTIL K:SRK ^SRF("APCE",SRTN) I 'SRK D PCE
 Q
DEL ; delete data from the Visit file and V files
 K DA,DIE,DR S DA=SRTN,DIE=130,DR=".015///@" D ^DIE K DA,DIE,DR
 S SRV=$$DELVFILE^PXAPI("ALL",SRVSIT) K SRVSIT
 Q
UTIL ; set procedure variables
 N SRDIV,SRINOUT,SRSITE,SRUP,SRSR
 S SRSR="",SRK=0,SRDIV=$P($G(^SRF(SRTN,8)),"^") I SRDIV S SRSITE=$O(^SRO(133,"B",SRDIV,0)),X=^SRO(133,SRSITE,0),SRUP=$P(X,"^",15),SRSR=$P(X,"^",19) I SRUP=""!(SRUP="N") S SRK=1 Q
 I 'SRFILE S SRX=$G(^SRF("APCE",SRTN)) I SRX S SRVSIT=SRX D DEL I '$D(^SRF(SRTN,0)) S SRK=1 Q
 S SR(0)=$G(^SRF(SRTN,0)) I SR(0)=""!$P($G(^SRF(SRTN,30)),"^") S SRK=1 Q
 S DFN=$P(SR(0),"^"),SRINOUT=$P(SR(0),"^",12) I $G(SRUP)="O",SRINOUT'="O" S SRK=1 Q
 S SRNON=$S($P($G(^SRF(SRTN,"NON")),"^")="Y":1,1:0),SRCPT=$P(^SRF(SRTN,"OP"),"^",2) I 'SRCPT S SRK=1 Q
 S SRX=0 F  S SRX=$O(^SRF(SRTN,13,SRX)) Q:'SRX  I '$P($G(^SRF(SRTN,13,SRX,2)),"^") S SRK=1 Q
 Q:SRK  S SRDIAG=$P($G(^SRF(SRTN,34)),"^",2) I 'SRDIAG S SRK=1 Q
 I 'SRNON D  I SRK Q
 .S SRX=$P(SR(0),"^",21) I SRX S SRLOC=SRX
 .I 'SRX S SRX=$P(^SRO(137.45,$P(SR(0),"^",4),0),"^",5) I SRX S SRLOC=SRX
 .I 'SRX S SRX=$P(SR(0),"^",2) S:SRX SRLOC=$P(^SRS(SRX,0),"^") I 'SRX S SRK=1 Q
 .S SRX=$G(^SRF(SRTN,.2)),SRCHK=$P(SRX,"^",12) I 'SRCHK S SRK=1 Q
 .S SRDATE=$P(SRX,"^",10) I 'SRDATE S SRK=1 Q
 .S SRX=$G(^SRF(SRTN,.1)),SRPROV=$P(SRX,"^",4),SRATT=$P(SRX,"^",13) I 'SRPROV S SRK=1 Q
 .I SRSR'=0,'SRATT S SRK=1 Q
 I SRNON D  I SRK Q
 .S SRLOC=$P(SR(0),"^",21)
 .S SRX=^SRF(SRTN,"NON"),SRCHK=$P(SRX,"^",5) I 'SRCHK S SRK=1 Q
 .S SRDATE=$P(SRX,"^",4) I 'SRDATE S SRK=1 Q
 .I 'SRLOC S SRLOC=$P(SRX,"^",2) I 'SRLOC S SRK=1 Q
 .S SRPROV=$P(SRX,"^",6),SRATT=$P(SRX,"^",7) I 'SRPROV S SRK=1
 .I SRSR'=0,'SRATT S SRK=1
 I '$$CLINIC^SROUTL(SRLOC,SRTN) S SRK=1 Q
 S (SRAO,SREC,SRHNC,SRIR,SRMST)=0,SRSC=$P(SR(0),"^",16),SRAO=$P(SR(0),"^",17),SRIR=$P(SR(0),"^",18),SREC=$P(SR(0),"^",19),SRMST=$P(SR(0),"^",22),SRHNC=$P(SR(0),"^",23)
 Q
PCE ; set up call to PCE
 N SRI,SRJ,SRCODE,SROTH D TMP
D2PCE S SRV=$$DATA2PCE^PXAPI("^TMP(""SRPXAPI"",$J)",SRPKG,SRS,.SRVSIT) I SRVSIT K DA,DIE,DR S DA=SRTN,DIE=130,DR=".015////"_SRVSIT D ^DIE K DA,DIE,DR,^SRF("APCE",SRTN)
 K ^TMP("SRPXAPI",$J),SRVSIT
 Q
TMP ; set up ^TMP global array
ENC S ^TMP("SRPXAPI",$J,"ENCOUNTER",1,"ENC D/T")=SRDATE
 S ^TMP("SRPXAPI",$J,"ENCOUNTER",1,"PATIENT")=DFN
 S ^TMP("SRPXAPI",$J,"ENCOUNTER",1,"HOS LOC")=SRLOC
 S ^TMP("SRPXAPI",$J,"ENCOUNTER",1,"CHECKOUT D/T")=SRCHK
 S ^TMP("SRPXAPI",$J,"ENCOUNTER",1,"SERVICE CATEGORY")="S"
 S ^TMP("SRPXAPI",$J,"ENCOUNTER",1,"ENCOUNTER TYPE")="P"
 S ^TMP("SRPXAPI",$J,"ENCOUNTER",1,"APPT")=9
 S ^TMP("SRPXAPI",$J,"ENCOUNTER",1,"SC")=SRSC
 S ^TMP("SRPXAPI",$J,"ENCOUNTER",1,"AO")=SRAO
 S ^TMP("SRPXAPI",$J,"ENCOUNTER",1,"IR")=SRIR
 S ^TMP("SRPXAPI",$J,"ENCOUNTER",1,"EC")=SREC
 S ^TMP("SRPXAPI",$J,"ENCOUNTER",1,"MST")=SRMST
 S ^TMP("SRPXAPI",$J,"ENCOUNTER",1,"HNC")=SRHNC
PROC S SRI=1,SRCODE=SRCPT,SRNAR=$P(^SRF(SRTN,"OP"),"^") D PMOD,CPT
 S SROTH=0 F  S SROTH=$O(^SRF(SRTN,13,SROTH)) Q:'SROTH  I $P(^SRF(SRTN,13,SROTH,0),"^",3)'="N" S SRCODE=$P($G(^SRF(SRTN,13,SROTH,2)),"^") I SRCODE S SRNAR=$P(^SRF(SRTN,13,SROTH,0),"^"),SRI=SRI+1 D OMOD,CPT
PROV S ^TMP("SRPXAPI",$J,"PROVIDER",1,"NAME")=SRPROV
 S ^TMP("SRPXAPI",$J,"PROVIDER",1,"PRIMARY")=1
 I 'SRNON S ^TMP("SRPXAPI",$J,"PROVIDER",1,"COMMENT")="Surgeon"
 I SRPROV=SRATT!'SRATT S ^TMP("SRPXAPI",$J,"PROVIDER",1,"ATTENDING")=1 G DIAG
 I 'SRATT G DIAG
 S ^TMP("SRPXAPI",$J,"PROVIDER",2,"NAME")=SRATT
 S ^TMP("SRPXAPI",$J,"PROVIDER",2,"ATTENDING")=1
 S ^TMP("SRPXAPI",$J,"PROVIDER",2,"PRIMARY")=0
 I 'SRNON S ^TMP("SRPXAPI",$J,"PROVIDER",2,"COMMENT")="Attending Surgeon"
DIAG S SRI=1,SRDX=SRDIAG,SRDXN=$S(SRNON:$P($G(^SRF(SRTN,33)),"^",2),1:$P($G(^SRF(SRTN,34)),"^")) D DX
 S SRD=0 F  S SRD=$O(^SRF(SRTN,15,SRD)) Q:'SRD  S SRDX=$P(^SRF(SRTN,15,SRD,0),"^",3) I SRDX S SRDXN=$P(^SRF(SRTN,15,SRD,0),"^") D DX
 Q
DX S ^TMP("SRPXAPI",$J,"DX/PL",SRI,"DIAGNOSIS")=SRDX
 I SRI=1 S ^TMP("SRPXAPI",$J,"DX/PL",1,"PRIMARY")=1
 I SRDXN'="" S ^TMP("SRPXAPI",$J,"DX/PL",SRI,"NARRATIVE")=SRDXN
 S SRI=SRI+1
 Q
CPT S ^TMP("SRPXAPI",$J,"PROCEDURE",SRI,"ENC PROVIDER")=SRPROV
 S ^TMP("SRPXAPI",$J,"PROCEDURE",SRI,"EVENT D/T")=SRDATE
 S ^TMP("SRPXAPI",$J,"PROCEDURE",SRI,"PROCEDURE")=SRCODE
 S ^TMP("SRPXAPI",$J,"PROCEDURE",SRI,"NARRATIVE")=SRNAR
 S ^TMP("SRPXAPI",$J,"PROCEDURE",SRI,"QTY")=1
 S ^TMP("SRPXAPI",$J,"PROCEDURE",SRI,"COMMENT")=$S(SRI=1:"Principal Procedure",1:"Other Procedure")
 S ^TMP("SRPXAPI",$J,"PROCEDURE",SRI,"DIAGNOSIS")=SRDIAG
 Q
PMOD ; get modifiers for principal CPT code
 N SRM,SRMOD,X
 S SRM=0 F  S SRM=$O(^SRF(SRTN,"OPMOD",SRM)) Q:'SRM  S X=$P(^SRF(SRTN,"OPMOD",SRM,0),"^"),SRMOD=$P($$MOD^ICPTMOD(X,"I"),"^",2),^TMP("SRPXAPI",$J,"PROCEDURE",SRI,"MODIFIERS",SRMOD)=""
 S SRMOD="" I $O(^TMP("SRPXAPI",$J,"PROCEDURE",SRI,"MODIFIERS",SRMOD))'="" S ^TMP("SRPXAPI",$J,"PROCEDURE",SRI,"MODIFIERS")=""
 Q
OMOD ; get modifiers for other CPT codes
 N SRM,SRMOD,X
 S SRM=0 F  S SRM=$O(^SRF(SRTN,13,SROTH,"MOD",SRM)) Q:'SRM  S X=$P(^SRF(SRTN,13,SROTH,"MOD",SRM,0),"^"),SRMOD=$P($$MOD^ICPTMOD(X,"I"),"^",2),^TMP("SRPXAPI",$J,"PROCEDURE",SRI,"MODIFIERS",SRMOD)=""
 S SRMOD="" I $O(^TMP("SRPXAPI",$J,"PROCEDURE",SRI,"MODIFIERS",SRMOD))'="" S ^TMP("SRPXAPI",$J,"PROCEDURE",SRI,"MODIFIERS")=""
 Q