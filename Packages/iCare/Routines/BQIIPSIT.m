BQIIPSIT ;GDIT/HS/ALA-IPC Site Parameters ; 11 Oct 2011  4:31 PM
 ;;2.3;ICARE MANAGEMENT SYSTEM;;Apr 18, 2012;Build 59
 ;
 ;
GET(DATA,FAKE) ; EP -- BQI GET IPC SITE PARMS
 NEW UID,II,DA,DOM,TEST1,VALUE,BM,BX,MIN,MAX
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIIPSIT",UID))
 K @DATA
 S II=0,TYPE=$G(TYPE,"")
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQISYPRM D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S HDR="T00001DAYOFMONTH^T00001HIDE_MIN^T00001HIDE_MAX"
 S @DATA@(II)=HDR_$C(30)
 S DA=$$SPM^BQIGPUTL()
 S DOM=$$GET1^DIQ(90508,DA_",",11.02,"E")
 ;
 D FIELD^DID(90508,11.02,"","HELP-PROMPT;FIELD LENGTH","TEST1")
 S VALUE=$G(TEST1("HELP-PROMPT")),LEN=$G(TEST1("FIELD LENGTH"))
 S BM=$F(VALUE,"between "),MIN=$E(VALUE,BM)
 S BX=$F(VALUE,"and ")
 S MAX=$S(LEN=1:$E(VALUE,BX),1:$E(VALUE,BX,BX+1))
 S II=II+1,@DATA@(II)=DOM_U_MIN_U_MAX_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
UPD(DATA,DOM) ;EP -- BQI SET IPC SITE PARMS
 NEW RESULT,ERROR,RESULT,BQIUPD,MSG,DA
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIUIPST",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQISYPRM D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 S @DATA@(II)="I00010RESULT^T01024ERROR"_$C(30)
 ;
 S RESULT=1,MSG=""
 S:$G(DOM)="" DOM=1
 S DA=$$SPM^BQIGPUTL()
 I $G(DOM)'="" S BQIUPD(90508,DA_",",11.02)=DOM
 I $D(BQIUPD) D FILE^DIE("E","BQIUPD","ERROR")
 I $D(ERROR) S RESULT=-1,MSG=$G(ERROR("DIERR",1,"TEXT",1))
 ;
 S II=II+1,@DATA@(II)=RESULT_U_MSG_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
PRV(DATA,FAKE) ; EP - BQI GET IPC MICRO PROV
 NEW UID,II,PR,CRIPC,CRN,DA
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIMICRO",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIMULST D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 ; Get current IPC
 S CRIPC=$P($G(^BQI(90508,1,11)),U,1)
 S CRN=$O(^BQI(90508,1,22,"B",CRIPC,"")) I CRN="" Q
 S DA(1)=CRN
 S DA(2)=$$SPM^BQIGPUTL()
 S HDR="I00010IEN^T00050MICRO_PROV"
 S @DATA@(II)=HDR_$C(30)
 S PR=""
 F  S PR=$O(^BQI(90508,DA(2),22,DA(1),2,"B",PR)) Q:PR=""  D
 . S II=II+1,@DATA@(II)=PR_U_$P(^VA(200,PR,0),U,1)_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
UPP(DATA,PLIST) ; EP - BQI UDPATE IPC MICRO PROV
 NEW RESULT,ERROR,LIST,BN,BQ,PDATA,NAME,VALUE,BI,BQIUPD,DA,CRIPC,CRN
 NEW DIC,DLAYGO,PRV,X,Y
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIUMULS",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIMULST D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 S @DATA@(II)="I00010RESULT^T01024ERROR"_$C(30)
 ;
 ; Get current IPC
 S CRIPC=$P($G(^BQI(90508,1,11)),U,1)
 S CRN=$O(^BQI(90508,1,22,"B",CRIPC,"")) I CRN="" Q
 S DA(1)=CRN
 S DA(2)=$$SPM^BQIGPUTL()
 ; Delete previous microsystem providers
 NEW DIK
 S DIK="^BQI(90508,"_DA(2)_",22,"_DA(1)_",2,",DA=0
 F  S DA=$O(^BQI(90508,DA(2),22,DA(1),2,DA)) Q:'DA  D ^DIK
 ;
 S PLIST=$G(PLIST,"")
 I PLIST="" D
 . S LIST="",BN=""
 . F  S BN=$O(PLIST(BN)) Q:BN=""  S LIST=LIST_PLIST(BN)
 . K PLIST
 . S PLIST=LIST
 . K LIST
 ;
 S RESULT=1
 F BQ=1:1:$L(PLIST,$C(29)) D  Q:$G(BMXSEC)'=""
 . S PRV=$P(PLIST,$C(29),BQ) Q:PRV=""
 . I $G(^BQI(90508,DA(2),22,DA(1),2,0))="" S ^BQI(90508,DA(2),22,DA(1),2,0)="^90508.222P^^"
 . S DIC(0)="LNZ",DLAYGO=90508.222,DIC="^BQI(90508,"_DA(2)_",22,"_DA(1)_",2,"
 . ;I $P($G(^VA(200,PRV,0)),U,11)'="",$P($G(^VA(200,PRV,0)),U,11)<3090101 S RESULT=-1 Q
 . I PRV=1,$P($G(^VA(200,PRV,0)),U,1)["ADAM" Q
 . S X=PRV
 . K DO,DD D FILE^DICN
 . I Y=-1 S RESULT=-1
 ;
 S II=II+1,@DATA@(II)=RESULT_U_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 Q