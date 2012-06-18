BTPWPPAT ;VNGT/HS/ALA-Get list of procedures by patient ; 12 Feb 2009  10:23 AM
 ;;1.0;CARE MANAGEMENT EVENT TRACKING;**1**;Feb 07, 2011;Build 37
 ;
 ;
RET(DATA,DFN,VIEW,STATE,CMLST) ; EP - BTPW GET CMET BY PATIENT
 ; Description
 ;   Get the grid values for a specific patient for either queued or tracked events
 ; Input
 ;   DFN   - Patient internal entry number
 ;   VIEW  - 'T' for tracked events, 'Q' for queued events, 'N' for planned
 ;   STATE - State or status
 ;   CMLST - List of file IENs to include (optional)
 ;
 NEW UID,II,RESULT,RIEN
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BTPWPPAT",UID))
 K @DATA
 I $G(DT)=""!($G(U)="") D DT^DICRW
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BTPWPPAT D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S VIEW=$G(VIEW,""),STATE=$G(STATE,"")
 ;
 ;Check for IEN List
 I $G(CMLST)]"" D
 . N I,IEN
 . F I=1:1:$L(CMLST,$C(29)) S IEN=$P(CMLST,$C(29),I) I IEN]"" S CMLST(IEN)=""
 ;
 ;Check for VIEW
 I VIEW'="Q",VIEW'="N",VIEW'="T" S BMXSEC="View (Parameter) must be passed" G DONE
 ;
 S @DATA@(II)="T00040CATEGORY^T00015STATUS^T00010STAGE^D00015EVNT_DATE^T00060EVENT^"
 S @DATA@(II)=@DATA@(II)_"I00010HIDE_VISIT_IEN^I00010WH_IEN^T00035DATA_FILE^T00030RAD_CASENUM^"
 S @DATA@(II)=@DATA@(II)_"I00010HIDE_CMET_IEN^T00001CMET_HIST"_$C(30)
 ;
 I VIEW="T" D TR(DFN,STATE) G DONE
 I VIEW="Q" D QU(DFN,STATE) G DONE
 I VIEW="N" D PL(DFN) G DONE
 ;
DONE ;
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
ERR ;
 D ^%ZTER
 NEW Y,ERRDTM
 S Y=$$NOW^XLFDT() X ^DD("DD") S ERRDTM=Y
 S BMXSEC="Recording that an error occurred at "_ERRDTM
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
TR(DFN,STATE) ; EP - Loop through and retrieve Tracked Events
 ;
 N RIEN,RESULT
 ;
 ;Tracked Header
 S @DATA@(II)="I00010HIDE_CMET_IEN^I00010HIDE_VISIT_IEN^T00040CATEGORY^T00060EVENT^D00015EVNT_DATE"
 S @DATA@(II)=@DATA@(II)_"^I00010HIDE_EVENTTYPE_IEN^D00030RESULT^T01024HIDE_RESULT^T00050INTERPRETATION^T00050HIDE_INTERPRETATION^T01024FINDINGS^T01024HIDE_FINDINGS^D00015FINDING_DATE"
 S @DATA@(II)=@DATA@(II)_"^T01024FOLLOW_UPS^T01024HIDE_FOLLOW_UPS^D00015FOLLOW_UP_DATE^T01024NOTIFICATIONS^T01024HIDE_NOTIFICATIONS^D00015NOTIFICATION_DATE"
 S @DATA@(II)=@DATA@(II)_"^T00015STATE^D00030LAST_MODIFIED_DATE^T00035LAST_MODIFIED_BY"_$C(30)
 ;
 I STATE'="" S RIEN="" F  S RIEN=$O(^BTPWP("AE",DFN,STATE,RIEN)) Q:RIEN=""  D
 . ;
 . ;If individual event request, check against list
 . I $G(CMLST)]"",'$D(CMLST(RIEN)) Q
 . ;
 . D TREC(RIEN,.RESULT) Q:RESULT=""
 . S II=II+1,@DATA@(II)=RESULT_$C(30)
 I STATE="" S RIEN="" F  S RIEN=$O(^BTPWP("AD",DFN,RIEN)) Q:RIEN=""  D
 . ;
 . ;If individual event request, check against list
 . I $G(CMLST)]"",'$D(CMLST(RIEN)) Q
 . ;
 . D TREC(RIEN,.RESULT) Q:RESULT=""
 . S II=II+1,@DATA@(II)=RESULT_$C(30)
 Q
 ;
TREC(TIEN,RESULT) ; EP - Get a tracked event record
 NEW TDATA,PROC,PROCNM,CAT,VISIT,PRCDT,RES,PEV,FND,FUP,NOT,STATE,WHO,WHEN,FNDDT,FUPDT,NOTDT,QIEN,STATUS
 NEW HFND,HFUP,HNOT,HRES,INT,HINT
 ;
 S RESULT=""
 S TDATA=^BTPWP(TIEN,0)
 ;
 ;Status Check - Must be Tracked
 S QIEN=$P(TDATA,U,14)
 I QIEN]"" S STATUS=$$GET1^DIQ(90629,QIEN_",",.08,"I") I STATUS'="",STATUS'="T" Q
 ;
 S PROC=$P(TDATA,U,1),PROCNM=$P(^BTPW(90621,PROC,0),U,1)
 S CAT=$$CAT^BTPWPDSP(PROC)
 S VISIT=$P(TDATA,U,4) I VISIT="~" S VISIT=""
 S PRCDT=$$FMTE^BQIUL1($P(TDATA,U,3))
 ;
 ;Result
 S RES=$$LNK^BTPWPTRG(TIEN,.06),HRES=$P(RES,$C(28),2,3),RES=$P(RES,$C(28))
 ;
 S PEV=$P(TDATA,U,11) S:PEV]"" PEV="Y"  ;Preceding Event
 ;
 S FNDDT=$$FND(TIEN)  ;Latest Finding Date
 S FUPDT=$$FOL(TIEN)  ;Latest Follow-up Date
 S NOTDT=$$NOT(TIEN)  ;Latest Notification Date
 ;
 S FND=$$FND^BTPWPEVT(TIEN),HFND=$P(FND,$C(28),2),FND=$P(FND,$C(28))  ;Findings
 S FUP=$$FUP^BTPWPEVT(TIEN),HFUP=$P(FUP,$C(28),2),FUP=$P(FUP,$C(28))  ;Follow Ups
 S NOT=$$NOT^BTPWPEVT(TIEN),HNOT=$P(NOT,$C(28),2),NOT=$P(NOT,$C(28))  ;Notifications
 ;
 S INT=$$INTER^BTPWPEVT(TIEN),HINT=$P(INT,$C(26),2),INT=$P(INT,$C(26))  ;Interpretation
 ;
 S STATE=$$GET1^DIQ(90620,TIEN_",",1.01,"E")  ;STATE
 I STATE="FUTURE" Q   ;Do not include Future Events
 ;
 S WHO=$$GET1^DIQ(90620,TIEN_",",1.1,"E")  ;LAST MODIFIED BY
 S WHEN=$$FMTE^BQIUL1($$GET1^DIQ(90620,TIEN_",",1.09,"I"))  ;LAST MODIFIED DATE
 ;
 S RESULT=TIEN_U_VISIT_U_CAT_U_PROCNM_U_PRCDT_U_PROC_U_RES_U_HRES_U_INT_U_HINT_U_FND_U_HFND_U_FNDDT_U_FUP_U_HFUP_U_FUPDT_U_NOT_U_HNOT_U_NOTDT_U_STATE_U_WHEN_U_WHO
 Q
 ;
PL(DFN) ; Loop through and retrieve Planned Events
 ;
 N RIEN,RESULT
 ;
 ;Planned Header
 S @DATA@(II)="I00010HIDE_CMET_IEN^I00010HIDE_VISIT_IEN^T00040CATEGORY^T00060PLANNED_EVENT^D00015PLANNED_EVNT_DATE^I00010HIDE_PREVIOUS_EVENT^D00030PRECEDING_EVENT^T00060HIDE_PRVEVT"_$C(30)
 ;
 S RIEN="" F  S RIEN=$O(^BTPWP("AE",DFN,"F",RIEN)) Q:RIEN=""  D
 . ;
 . ;If individual event request, check against list
 . I $G(CMLST)]"",'$D(CMLST(RIEN)) Q
 . ;
 . D PREC(RIEN,.RESULT)
 . S II=II+1,@DATA@(II)=RESULT_$C(30)
 ;
 Q
 ;
PREC(QIEN,RESULT) ; EP - Get a planned event record
 NEW TDATA,PROC,PROCNM,CAT,VISIT,PTNAME,DUE,PRV,PRVEVT
 S TDATA=$G(^BTPWP(QIEN,0))
 S PROC=$P(TDATA,U,1),PROCNM=$P(^BTPW(90621,PROC,0),U,1)
 S CAT=$$CAT^BTPWPDSP(PROC)
 S VISIT=$P(TDATA,U,4) I VISIT="~" S VISIT=""
 S DUE=$$FMTE^BQIUL1($P(TDATA,U,13))
 S PRV=$P(TDATA,U,11)  ;Previous event
 ;
 S (PRVDT,PRVEVT)="" I PRV]"" S PRVDT=$$GET1^DIQ(90620,PRV_",",".03","I"),PRVDT=$$FMTE^BQIUL1(PRVDT),PRVEVT=$$GET1^DIQ(90620,PRV_",",".01","E") ;Prv DT
 ;
 ;
 S RESULT=QIEN_U_VISIT_U_CAT_U_PROCNM_U_DUE_U_PRV_U_PRVDT_U_PRVEVT
 ;
 Q
 ;
QU(DFN,STATE) ; EP - Loop through and retrieve Queued Events
 ;
 N RIEN,RESULT
 ;
 ;Queued Header
 S @DATA@(II)="I00010HIDE_CMET_IEN^I00010HIDE_VISIT_IEN^T00040CATEGORY^T00060EVENT^D00015EVNT_DATE"
 S @DATA@(II)=@DATA@(II)_"^D00030RESULT^T01024HIDE_RESULT^T00015STATUS^T01024STATUS_COMMENT^D00030LAST_MODIFIED_DT^T00030LAST_MODIFIED_BY"_$C(30)
 ;
 I STATE'="" S RIEN="" F  S RIEN=$O(^BTPWQ("AE",DFN,STATE,RIEN)) Q:RIEN=""  D
 . ;
 . ;If individual event request, check against list
 . I $G(CMLST)]"",'$D(CMLST(RIEN)) Q
 . ;
 . ;Screen out Tracked records
 . ;I $$GET1^DIQ(90629,RIEN_",",.08,"I")="T" Q
 . ;
 . D QREC(RIEN,.RESULT)
 . S II=II+1,@DATA@(II)=RESULT_$C(30)
 I STATE="" S RIEN="" F  S RIEN=$O(^BTPWQ("AD",DFN,RIEN)) Q:RIEN=""  D
 . ;
 . ;If individual event request, check against list
 . I $G(CMLST)]"",'$D(CMLST(RIEN)) Q
 . ;
 . ;Screen out Tracked records
 . ;I $$GET1^DIQ(90629,RIEN_",",.08,"I")="T" Q
 . ;
 . D QREC(RIEN,.RESULT)
 . S II=II+1,@DATA@(II)=RESULT_$C(30)
 Q
 ;
QREC(QIEN,RESULT) ; EP - Get a queued event record
 NEW TDATA,PROC,PROCNM,CAT,VISIT,PRCDT,STAT,PTNAME,SCOMM,LMDT,LMBY,RES,HRES
 S TDATA=$G(^BTPWQ(QIEN,0))
 S PROC=$P(TDATA,U,1),PROCNM=$P(^BTPW(90621,PROC,0),U,1)
 S CAT=$$CAT^BTPWPDSP(PROC)
 S STAT=$$GET1^DIQ(90629,QIEN_",",.08,"E")
 S VISIT=$P(TDATA,U,4) I VISIT="~" S VISIT=""
 S PRCDT=$$FMTE^BQIUL1($P(TDATA,U,3))
 S LMDT=$$FMTE^BQIUL1($P(TDATA,U,11))
 S LMBY=$P(TDATA,U,12)
 ;         
 ;Retrieve Status Comments
 S SCOMM=$$SCOMM^BTPWPDSP(QIEN)
 ;
 ;Retrieve Result
 S RES=$$QLNK^BTPWPTRG(QIEN,.06),HRES=$P(RES,$C(28),2,3),RES=$P(RES,$C(28))
 ;
 ;Build Result String
 S RESULT=QIEN_U_VISIT_U_CAT_U_PROCNM_U_PRCDT_U_RES_U_HRES_U_STAT_U_SCOMM_U_LMDT_U_LMBY
 Q
 ;
FND(TIEN) ;Calculate latest finding date
 N FDATA,CDT,FDT,FIEN
 D GETS^DIQ(90620,TIEN_",","10*","I","FDATA")
 ;
 S FDT="",FIEN=0 F  S FIEN=$O(FDATA(90620.01,FIEN)) Q:FIEN=""  D
 . ;
 . ;Skip ENTERED IN ERROR
 . I $G(FDATA(90620.01,FIEN,".08","I"))="Y" Q
 . ;
 . S CDT=$P($G(FDATA(90620.01,FIEN,".01","I")),".") S:CDT>FDT FDT=CDT
 ;
 S FDT=$$FMTE^BQIUL1(FDT)
 Q FDT
 ;
FOL(TIEN) ;Calculate latest follow-up date
 ;
 N FDATA,CDT,FDT,FIEN
 D GETS^DIQ(90620,TIEN_",","12*","I","FDATA")
 ;
 S FDT="",FIEN="" F  S FIEN=$O(FDATA(90620.012,FIEN)) Q:FIEN=""  D
 . ;
 . ;Skip ENTERED IN ERROR
 . I $G(FDATA(90620.012,FIEN,".07","I"))="Y" Q
 . ;
 . S CDT=$P($G(FDATA(90620.012,FIEN,".05","I")),".") S:CDT>FDT FDT=CDT
 ;
 S FDT=$$FMTE^BQIUL1(FDT)
 Q FDT
 ;
NOT(TIEN) ;Calculate latest notification date
 ;
 N NDATA,CDT,NDT,NIEN
 D GETS^DIQ(90620,TIEN_",","11*","I","NDATA")
 ;
 S NDT="",NIEN="" F  S NIEN=$O(NDATA(90620.011,NIEN)) Q:NIEN=""  D
 . ;
 . ;Skip ENTERED IN ERROR
 . I $G(NDATA(90620.011,NIEN,".09","I"))="Y" Q
 . ;
 . S CDT=$P($G(NDATA(90620.011,NIEN,".01","I")),".") S:CDT>NDT NDT=CDT
 ;
 S NDT=$$FMTE^BQIUL1(NDT)
 Q NDT
 ;
FLG(DFN) ; EP - Return TICKLER INDICATOR for patient
 ;
 N TIEN,FLG
 ;
 Q:DFN="" ""
 ;
 S (FLG,TIEN)="" F  S TIEN=$O(^BTPWP("AD",DFN,TIEN)) Q:TIEN=""  D  Q:FLG="T"
 . S FLG=$$FLG^BTPWPDSP(TIEN) Q:FLG="T"
 . S FLG=""
 ;
 S:FLG="T" FLG="Y"
 Q FLG