BQIRMDR ;PRXM/HC/ALA-Find all reminder values ; 15 Mar 2007  2:30 PM
 ;;2.3;ICARE MANAGEMENT SYSTEM;;Apr 18, 2012;Build 59
 ;
PAT(DFN,REF) ;EP
 NEW APCHSPAT,APCHSAGE,APCHSEX,APCHSANY,APCHSITM,APCHNON,APCHSURX
 NEW ZAPCHS,APCHSCVD,APCHSITI,APCHLBE,APCHLCOL,APCHOVR,APCHSBP
 NEW AMQQTAXN,APCHBHD,AMQQTAXN,APCHBHD,APCHC,APCHIMMC,APCHLADX
 NEW APCHLED,APCHLEX,APCHLEXB,APCHLHF,APCHLPV,APCHLSIG,APCHNEXT
 NEW APCHSBRK,APCHSBWR,APCHSC,APCHSCAT,APCHSCKP,APCHSCRI,APCHSDAT
 NEW APCHSDF,APCHSDF1,APCHSDIS,APCHSINT,APCHSIVD,APCHSKD,APCHSMSC
 NEW APCHSDO,APCHSDOB,APCHSDT,APCHSDUE,APCHSEXD,APCHSEXN,APCHSFLX
 NEW APCHSKDT,APCHSKN,APCHSKND,APCHSLAB,APCHSLBD,APCHSLDT,APCHSLP
 NEW APCHSMAM,APCHSMDT,APCHSYRY,APCHT,APCHTAXN,RIEN,DIC,DAYS,CODE
 NEW APCHSMSD,APCHSNPG,APCHSOLD,APCHSQIT,APCHSTEX,APCHSURD,APCHSWD
 NEW APCHTEST,APCHX,APCLAST,RMHDR,APCHNME,IMM,IMN,OT,OTH,REMTEXT,RJ
 NEW VER,NAME,APCHA,APCHCOLW,APCHDX4,APCHHR,APCHIC,APCHLR,APCHLSTR
 NEW APCHWHI,APCHWHL,APCHWHN,IQFL,IMOK,APCHRVAL,APCHSWHR,APCHR
 NEW APCHNUMD,APCHLAST
 ;
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIRMDR D UNWIND^%ZTER"
 ;
 ; Sometimes if Postmaster is the Task owner, DUZ is not defined correctly for some reminders
 I $G(DUZ(2))=""!(DUZ=.5) M DUZ=^XTMP("BQIRMDR","DUZ")
 ;
 S IMOK=0 I $$PATCH^XPDUTL("BI*8.3*1") S IMOK=1
 ; Delete any previous reminders
 NEW DA,DIK
 S DA(1)=DFN,DA=0,DIK="^BQIPAT("_DA(1)_",40,"
 F  S DA=$O(^BQIPAT(DFN,40,DA)) Q:'DA  D ^DIK
 ;
 ; If deceased, don't include
 I $P($G(^DPT(DFN,.35)),U,1)'="" Q
 ; If no active HRN, don't include
 I '$$HRN^BQIUL1(DFN) Q
 ; If no visit in last 3 years, quit
 I '$$VTHR^BQIUL1(DFN) Q
 ;
 S REF=$G(REF,0)
 ;
 S APCHSPAT=DFN
 S APCHSDOB=$P($G(^DPT(APCHSPAT,0)),U,3) I APCHSDOB="" Q
 S APCHSAGE=$$AGE^BQIAGE(APCHSPAT)
 S APCHSEX=$P(^DPT(APCHSPAT,0),U,2)
 S APCHSCVD="S:Y]"""" Y=+Y,Y=$E(Y,4,5)_""/""_$S($E(Y,6,7):$E(Y,6,7)_""/"",1:"""")_$E(Y,2,3)"
 S (APCHSANY,APCHSITM)=0,APCHNON=1,APCHSURX=""
 S APCHSCKP="S APCHSQIT=1 Q"
 S APCHSBRK="Q"
 S APCHSNPG=0
 K APCHSTEX
 ;
 ; If patient not in BQIPAT yet, add them
 I $G(^BQIPAT(DFN,0))="" D
 . NEW DIC,X,DINUM,DLAYGO
 . S (X,DINUM)=DFN,DLAYGO=90507.5,DIC="^BQIPAT(",DIC(0)="L"
 . K DO,DD D FILE^DICN
 ;
 S RIEN=""
 F  S RIEN=$O(^BQI(90506.1,"AC","R",RIEN)) Q:RIEN=""  D
 . I $P(^BQI(90506.1,RIEN,0),U,10)=1 Q
 . S NAME=$P(^BQI(90506.1,RIEN,0),U,3)
 . S CODE=$P(^BQI(90506.1,RIEN,0),U,1)
 . S HIEN=$P(CODE,"_",2)
 . ;
 . I $P(CODE,"_",1)="REG" D REG^BQIRMDR1(DFN,CODE) Q
 . ;
 . I $P(CODE,"_",1)="EHR" D EMR^BQIRMDR1(DFN,CODE) Q
 . ;
 . I $P(CODE,"_",1)="CMET" D CMT^BQIRMDR1(DFN,CODE) Q
 . ;
 . I $P(CODE,"_",1)="AUTTIMM" D
 .. S NAME="IMMUNIZATIONS"
 .. S HIEN=$$FIND1^DIC(9001018,"","Q",NAME,"B","","ERROR")
 . ;
 . I $P(CODE,"_",1)="COLO" D
 .. S NAME="COLORECTAL CA-SCOPE/XRAY"
 .. S HIEN=$$FIND1^DIC(9001018,"","Q",NAME,"B","","ERROR")
 . ;
 . D RMR(DFN,HIEN)
 ;
 ; Fill in all missing immunizations
 S IEN=""
 F  S IEN=$O(^BQI(90506.1,"AC","R",IEN)) Q:IEN=""  D
 . I $P(^BQI(90506.1,IEN,0),U,10)=1 Q
 . S CODE=$P(^BQI(90506.1,IEN,0),U,1)
 . I CODE["AUTTIMM" Q
 . I $O(^BQIPAT(DFN,40,"B",CODE,""))'="" Q
 . I $E(CODE,1,3)="REG" Q
 . I $E(CODE,1,4)="CMET" Q
 . S (REMDUE,REMLAST,REMNEXT)=""
 . D FIL
 Q
 ;
RMR(DFN,HIEN) ;EP
 NEW RCIEN,RCFILE,VISIT,APCHSPAT,APCHSDOB,APCHSAGE,APCHSCVD,APCHSCKP,RCFILE
 NEW APCHSBRK,APCHSNPG,APCHSANY,APCHSITM,APCHNON,APCHSURX,IMNIEN,REMDUE
 NEW REMLAST,REMNEXT
 S APCHSPAT=DFN
 S APCHSDOB=$P($G(^DPT(APCHSPAT,0)),U,3) I APCHSDOB="" Q
 S APCHSAGE=$$AGE^BQIAGE(APCHSPAT)
 S APCHSEX=$P(^DPT(APCHSPAT,0),U,2)
 S APCHSCVD="S:Y]"""" Y=+Y,Y=$E(Y,4,5)_""/""_$S($E(Y,6,7):$E(Y,6,7)_""/"",1:"""")_$E(Y,2,3)"
 S (APCHSANY,APCHSITM)=0,APCHNON=1,APCHSURX=""
 S APCHSCKP="S APCHSQIT=1 Q"
 S APCHSBRK="Q"
 S APCHSNPG=0
 K APCHSTEX
 S APCHNME=$P($G(^APCHSURV(HIEN,0)),U,1) I APCHNME="" Q
 ; Sometimes if Postmaster is the Task owner, DUZ is not defined correctly for some reminders
 I $G(DUZ(2))="" M DUZ=^XTMP("BQIRMDR","DUZ")
 S IQFL=0
 I $G(IMOK)="" S IMOK=0 I $$PATCH^XPDUTL("BI*8.3*1") S IMOK=1
 I APCHNME="IMMUNIZATIONS" D  Q:IQFL
 . I '$G(REF),'IMOK S IQFL=1 Q
 S X=$$GVHMR^APCHSMU(DFN,HIEN)
 I APCHNME="IMMUNIZATIONS" D  Q
 . I X["Immunization Forecasting disabled" Q
 . I +$P(^BQI(90508,1,0),U,15)=0 Q
 . NEW VALUE,IMM
 . S IMM=X,VALUE=""
 . F PC=4:1:$L(IMM,"^") S IMN=$P(IMM,U,PC) Q:IMN=""!(IMN[$C(31))  D
 .. S REMNME=$P(IMN,"|",1),REMTEXT=$P(IMN,"|",2)
 .. ;  Need to strip off leading spaces
 .. F RJ=1:1 Q:$E(REMNME,RJ,RJ)'=" "
 .. S REMNME=$E(REMNME,RJ,$L(REMNME))
 .. S IMNIEN=$O(^AUTTIMM("D",REMNME,"")) I IMNIEN="" Q
 .. I IMOK D
 ... S VALUE=$$IMM^BQIREM(DFN,IMNIEN)
 ... S REMDUE=$P(VALUE,U,1),REMNEXT=$P(VALUE,U,2),REMLAST=$P(VALUE,U,3),VISIT=$P(VALUE,U,4),RCIEN=$P(VALUE,U,5)
 ... I VISIT'="" S RCFILE=9000010.11
 .. I 'IMOK D
 ... S X=REMNME_U_U_$$IMM^BQIREM(DFN,IMNIEN)
 ... D PRS(X,HIEN)
 .. I REMTEXT'="",REMNEXT'="" S REMNEXT=REMTEXT_" ("_REMNEXT_")"
 .. I REMTEXT'="",REMNEXT="" S REMNEXT=REMTEXT
 .. S CODE="AUTTIMM_"_IMNIEN
 .. D FIL
 I APCHNME="COLORECTAL CA-SCOPE/XRAY" D  Q
 . I X["|" D  Q
 .. K OTH,OT,BQINEXT,BQIDUE,BQILAST
 .. S OTH=X
 .. F PC=1:1:$L(OTH,"|") S OT=$P(OTH,"|",PC) Q:OT=""  D
 ... D PRS(OT,HIEN)
 ... I REMNEXT'="" S BQINEXT(REMNEXT)=""
 ... I REMDUE'="" S BQIDUE(REMDUE)=""
 ... I REMLAST'="" S BQILAST(REMLAST)=""
 .. S REMNEXT=$O(BQINEXT(""),-1)
 .. S REMDUE=$O(BQIDUE(""),-1)
 .. S REMLAST=$O(BQILAST(""),-1)
 .. D FIL
 . I $P(X,U,2)="" D PRS(X,HIEN),FIL Q
 . I $P(X,U,2)'="" D
 .. S OTH=$P(X,U,4),OT=$P(X,U,1)_U_$P(X,U,2)_U_$P(OTH,"  ",2)_U_$$DATE^BQIUL1($P(OTH,"  ",2))
 .. D PRS(OT,HIEN)
 .. D FIL
 . D PRS(X,HIEN)
 . D FIL
 . Q
 D PRS(X,HIEN)
 D FIL
 Q
 ;
PRS(VAL,HIEN) ;EP - Parse
 S REMNME=$P(VAL,U,1)
 I X="" S REMNME=$P(^APCHSURV(HIEN,0),U,1)
 S REMDUE="",REMLAST=""
 S REMLAST=$P(VAL,U,2),REMNEXT=$P(VAL,U,4),REMDUE=$P(VAL,U,5)
 S VISIT=$P(VAL,U,6),RCIEN=$P(VAL,U,7),RCFILE=$P(VAL,U,8)
 I REMNEXT["/",$E(REMNEXT,1,1)'?.N D
 . I $E(REMNEXT,1,14)="MAY BE DUE NOW" Q
 . I REMNEXT["per Women's Health system" D
 .. NEW BQS,BQ,BQT,BQRDATE
 .. S BQS=$F(REMNEXT,"(by"),BQRDATE=""
 .. F BQ=BQS+1:1 S BQT=$E(REMNEXT,BQ,BQ) Q:BQT=")"  S BQRDATE=BQRDATE_BQT
 .. I $L(BQRDATE,"/")=2 S BQRDATE=$P(BQRDATE,"/",1)_"/01/"_$P(BQRDATE,"/",2)
 .. S REMDUE=BQRDATE
 . I APCHNME="COLORECTAL CA-SCOPE/XRAY" D
 .. NEW XREMNXT,REMNME
 .. S XREMNXT=$TR(REMNEXT," ",":")
 .. S REMNEXT=$P(XREMNXT,":",$L(XREMNXT,":"))
 .. S REMNME=$P(XREMNXT,":",1)
 .. ;
 I REMNEXT?2N1"/"2N1"/"2N S REMDUE=REMNEXT
 I REMNEXT["MAY BE DUE NOW" S REMDUE=""
 I REMNEXT["WAS DUE" S REMDUE=$P($P(REMNEXT,"WAS DUE ",2),")")
 ;
 Q
 ;
FIL ;EP - File the reminder
 NEW DIC,X,DINUM,DLAYGO,DA,IENS,BQIUPD
 S X=CODE,DLAYGO=90507.54,DA(1)=DFN,DIC("P")=DLAYGO
 I $G(^BQIPAT(DA(1),40,0))="" S ^BQIPAT(DA(1),40,0)="^90507.54P^^"
 S DIC="^BQIPAT("_DA(1)_",40,",DIC(0)="L"
 ;K DO,DD D FILE^DICN
 D ^DIC
 S DA=+Y I DA=-1 Q
 I REMDUE["." S REMDUE=REMDUE\1
 I REMLAST["." S REMLAST=REMLAST\1
 S IENS=$$IENS^DILF(.DA)
 S BQIUPD(90507.54,IENS,.02)=$$DATE^BQIUL1(REMLAST)
 S BQIUPD(90507.54,IENS,.03)=$G(REMNEXT)
 S BQIUPD(90507.54,IENS,.04)=$$DATE^BQIUL1(REMDUE)
 S BQIUPD(90507.54,IENS,.05)=$$NOW^XLFDT()
 S BQIUPD(90507.5,DFN_",",.08)=$$NOW^XLFDT()
 I $$VFIELD^DILFD(90507.54,.06) S BQIUPD(90507.54,IENS,.06)=$G(VISIT)
 I $$VFIELD^DILFD(90507.54,.07) S BQIUPD(90507.54,IENS,.07)=$G(RCIEN)
 I $$VFIELD^DILFD(90507.54,.08) S BQIUPD(90507.54,IENS,.08)=$G(RCFILE)
 D FILE^DIE("","BQIUPD","ERROR")
 Q
 ;
CHK(TJOB) ;EP - Check for reminders and add new ones if found and inactivate
 ;  ones no longer in list
 ;  Input
 ;    TJOB - Type of job
 ;
 S REF=0
 ;  Delete reminders in 'All Reminders'
 NEW DIC,DIE,DA,NDX,NDX2,RMNDR,X,Y,DR,REMNDX,CALL,TAG
 S REMNDX=$$FIND1^DIC(9001015,"","","ALL REMINDERS","B","","")
 ; Kill Health Summary nodes
 S DA(1)=REMNDX,DA=0,DIK="^APCHSCTL("_DA(1)_",5,"
 F  S DA=$O(^APCHSCTL(REMNDX,5,DA)) Q:'DA  D ^DIK
 ;
 ;  Add reminders back to 'All Reminders'
 S DA(1)=REMNDX,DLAYGO=9001015.06,DIC(0)="LZ"
 S DIC="^APCHSCTL("_DA(1)_",5,"
 ;
 S RMNDR=0
 F  S RMNDR=$O(^APCHSURV(RMNDR)) Q:'RMNDR  D
 . I $$GET1^DIQ(9001018,RMNDR,.03,"I")=1 D
 .. ; if not an official IHS reminder, quit
 .. I $$GET1^DIQ(9001018,RMNDR,.06,"I")'=1 Q
 .. ; if it is a treatment prompt instead, quit
 .. I $$GET1^DIQ(9001018,RMNDR,.07,"I")="T" Q
 .. S NDX=+$P(^APCHSURV(RMNDR,0),U,5)
 .. S (DA,NDX2)=(NDX*100)+RMNDR
 .. S X=NDX2
 .. K DO,DD D FILE^DICN
 .. S DA=+Y,DIE=DIC
 .. S DR="1////"_RMNDR
 .. D ^DIE
 .. Q
 ;
 ; Inactive all reminders
 K BQIUPD
 NEW SRCE,QFL
 S IEN=""
 F  S IEN=$O(^BQI(90506.1,"AC","R",IEN)) Q:IEN=""  D
 . S BQIUPD(90506.1,IEN_",",.1)=1
 . I $P(^BQI(90506.1,IEN,0),U,11)="" S BQIUPD(90506.1,IEN_",",.11)=DT
 D FILE^DIE("","BQIUPD","ERROR")
 K BQIUPD
 ;
FND ; Find the reminders and either reactivate or create new entry
 NEW BQIRM,SOURCE,DEF,ERROR,GCAT,RCAT,RCLIN,GCLIN,HDR,QFL,TEXT
 S BQIRM=$$FIND1^DIC(9001015,"","","ALL REMINDERS","B","","")
 S IEN=0,SOURCE="Reminders",GCAT="",GCLIN=""
 F  S IEN=$O(^APCHSCTL(BQIRM,5,IEN)) Q:'IEN  D
 . S HIEN=$P(^APCHSCTL(BQIRM,5,IEN,0),U,2)
 . I $P($G(^APCHSURV(HIEN,0)),U,3)'=1 Q
 . I $P($G(^APCHSURV(HIEN,0)),U,7)="T" Q
 . S TEXT=$P(^APCHSURV(HIEN,0),U,1),DEF=$P(^APCHSURV(HIEN,0),U,6)
 . S CALL=$P(^APCHSURV(HIEN,0),U,2),TAG=$P(CALL,";",1)
 . I TAG="" Q
 . S RCAT="Health Summary",RCLIN=$$GET1^DIQ(9001018,HIEN_",",.05,"E")
 . S:RCLIN="" RCLIN="No Category"
 . ; if reminder is an official IHS reminder with a category of GENERAL
 . ; make it a default
 . S DEF=$S(DEF=1&(RCLIN="GENERAL"):1,1:0)
 . I TEXT="IMMUNIZATIONS" D  Q
 .. I $G(IMOK)="" S IMOK=0 I $$PATCH^XPDUTL("BI*8.3*1") S IMOK=1
 .. I +$P(^BQI(90508,1,0),U,15)=0 Q
 .. NEW IIEN
 .. S IIEN=0
 .. F  S IIEN=$O(^AUTTIMM(IIEN)) Q:'IIEN  D
 ... ; If inactive, quit
 ... I $P(^AUTTIMM(IIEN,0),U,7)=1 Q
 ... S TEXT=$P(^AUTTIMM(IIEN,0),U,2)
 ... S CODE="AUTTIMM_"_IIEN,RCLIN="IZ Forecast"
 ... S HDR="T00050"_CODE
 ... S RIEN="",RIEN=$O(^BQI(90506.1,"B",CODE,RIEN))
 ... I RIEN'="" D REA^BQIRMDR1 Q
 ... D FILE
 . ;
 . ; If IMMUNIZATION category and disabled, quit
 . I $$GET1^DIQ(9001018,HIEN_",",.05,"E")["IMMUNIZATION",+$P(^BQI(90508,1,0),U,18)=0 Q
 . S CODE=TAG_"_"_HIEN
 . S HDR="T00050"_CODE
 . S RIEN="",RIEN=$O(^BQI(90506.1,"B",CODE,RIEN))
 . I RIEN'="" D REA^BQIRMDR1 Q
 . D FILE
 ;
RGR ; Register Reminders
 S RGIEN=0
 F  S RGIEN=$O(^BQI(90507,RGIEN)) Q:'RGIEN  D
 . I $P(^BQI(90507,RGIEN,0),U,8)=1 Q
 . S RMIEN=0
 . F  S RMIEN=$O(^BQI(90507,RGIEN,15,RMIEN)) Q:'RMIEN  D
 .. I $P(^BQI(90507,RGIEN,15,RMIEN,0),U,3)'=1 Q
 .. S CODE="REG_"_RGIEN_"_"_RMIEN
 .. NEW DA,IENS
 .. S DA(1)=RGIEN,DA=RMIEN,IENS=$$IENS^DILF(.DA)
 .. S RCLIN=$$GET1^DIQ(90507.015,IENS,.05,"E")
 .. S TEXT=$$GET1^DIQ(90507.015,IENS,.01,"E")
 .. S RCAT="Care Management",SOURCE="Reminders",GCAT="",GCLIN=""
 .. S HDR="T00050"_CODE,DEF=0
 .. S RIEN=$O(^BQI(90506.1,"B",CODE,""))
 .. I RIEN="" D FILE Q
 .. D REA^BQIRMDR1
 D EHR^BQIRMDR1
 D CMET^BQIRMDR1
 ;
NOT ; Check for any newly inactive reminders and send notifications
 S RIEN=""
 F  S RIEN=$O(^BQI(90506.1,"AC","R",RIEN)) Q:RIEN=""  D
 . I $P(^BQI(90506.1,RIEN,0),U,10)'=1 Q
 . I $P(^BQI(90506.1,RIEN,0),U,11)<DT Q
 . NEW OWNR,PLIEN,SUBJECT,CODE
 . S CODE=$P(^BQI(90506.1,RIEN,0),U,1)
 . S TEXT=$P(^BQI(90506.1,RIEN,0),U,3)
 . S OWNR=0
 . F  S OWNR=$O(^BQICARE(OWNR)) Q:'OWNR  D
 .. S PLIEN=0,QFL=0
 .. F  S PLIEN=$O(^BQICARE(OWNR,1,PLIEN)) Q:'PLIEN  D  Q:QFL
 ... I $O(^BQICARE(OWNR,1,PLIEN,22,"B",CODE,""))'="" D
 .... S SUBJECT="Reminder ["_TEXT_"] has been deactivated/deleted. You may need to change your panel Reminder View layouts."
 .... I '$$DUP^BQINOTF(OWNR,SUBJECT,DT) S QFL=1 Q
 .... D ADD^BQINOTF("",OWNR,SUBJECT,,1)
 .... S QFL=1
 ... S SHR=0,QFL=0
 ... F  S SHR=$O(^BQICARE(OWNR,1,PLIEN,30,SHR)) Q:'SHR  D  Q:QFL
 .... I $O(^BQICARE(OWNR,1,PLIEN,30,SHR,22,"B",CODE,""))'="" D
 ..... S SUBJECT="Reminder ["_TEXT_"] has been deactivated/deleted. You may need to change your panel Reminder View layouts."
 ..... I '$$DUP^BQINOTF(SHR,SUBJECT,DT) S QFL=1 Q
 ..... D ADD^BQINOTF("",SHR,SUBJECT,,1)
 ..... S QFL=1
 Q
 ;
FILE ;File record
 NEW DA,X,DIC,DLAYGO
 S DIC="^BQI(90506.1,",DIC(0)="L",X=CODE
 K DO,DD D FILE^DICN
 S DA=+Y I DA=-1 S ERROR=1 Q
 ;S HIEN=DA
 S BQIUPD(90506.1,DA_",",.03)=TEXT
 ;S BQIUPD(90506.1,DA_",",2.01)=SOURCE
 ;S BQIUPD(90506.1,DA_",",2.02)=GCAT
 ;S BQIUPD(90506.1,DA_",",2.03)=RCAT
 S BQIUPD(90506.1,DA_",",3.03)=RCAT
 ;S BQIUPD(90506.1,DA_",",2.05)=RCLIN
 ;S BQIUPD(90506.1,DA_",",2.06)=GCLIN
 S BQIUPD(90506.1,DA_",",.08)=HDR
 S BQIUPD(90506.1,DA_",",.09)=$S($G(DEF)=1:"D",1:"O")
 S BQIUPD(90506.1,DA_",",3.04)=$S($G(DEF)=1:"Default",1:"Optional")
 S BQIUPD(90506.1,DA_",",.15)=100
 I SOURCE="Reminders" D
 . S BQIUPD(90506.1,DA_",",1)="S VAL=$$REM^BQIULPT(DFN,STVW)"
 . I CODE["AUTTIMM" D
 .. I 'IMOK S BQIUPD(90506.1,DA_",",3.07)=1 Q
 .. I IMOK S BQIUPD(90506.1,DA_",",3.07)="@"
 I SOURCE="Performance" S BQIUPD(90506.1,DA_",",1)="S VAL=$$PER^BQIULPT(DFN,STVW)"
 D FILE^DIE("","BQIUPD","ERROR")
 ;
 S BQIUPD(90506.1,DA_",",3.01)=SOURCE
 S BQIUPD(90506.1,DA_",",3.02)=RCLIN
 S BQIUPD(90506.1,DA_",",3.03)=RCAT
 S BQIUPD(90506.1,DA_",",3.04)=$S($G(DEF)=1:"Default",1:"Optional")
 D FILE^DIE("E","BQIUPD","ERROR")
 ;
 ; Make sure that the new style cross-references are set
 NEW DIK
 S DIK="^BQI(90506.1,",DIK(1)="3.01"
 D ENALL^DIK
 ;
 ;I $D(ERROR)
 ; Send a notification that a new reminder was added
 NEW OWNR,PLIEN,SUBJECT
 S OWNR=0
 F  S OWNR=$O(^BQICARE(OWNR)) Q:'OWNR  D
 . S SUBJECT="Reminder ["_TEXT_"] has been newly added. You may want to update your panel Reminder View layouts."
 . D ADD^BQINOTF("",OWNR,SUBJECT,,1)
 ;
 I TJOB="Weekly" Q
 ;
 ; Create a reminder record for every patient with new reminder
 NEW RMN
 I $P($G(^XTMP("BQIRMOM",0)),U,2)'=$$DT^XLFDT() D
 . S RMN=0
 . F  S RMN=$O(^XTMP("BQIRMOM",RMN)) Q:RMN=""  K ^XTMP("BQIRMOM",RMN)
 . S ZTDESC="iCare Reminder Update",ZTRTN="ORM^BQITASK1",ZTIO=""
 . S JBDATE=$$FMADD^XLFDT($$NOW^XLFDT(),,,+15)
 . S ZTDTH=JBDATE
 . D ^%ZTLOAD
 . K ZTDESC,ZTRTN,ZTIO,JBDATE,ZTDTH,ZTSK
 S ^XTMP("BQIRMOM",0)=$$FMADD^XLFDT(DT,1)_U_$$DT^XLFDT()_U_"Newly activated Reminders"
 S RMN=$O(^XTMP("BQIRMOM",""),-1)+1
 I RCAT'="Care Management" S ^XTMP("BQIRMOM",RMN)=RCAT_U_HIEN_U_CODE
 I RCAT="Care Management" S ^XTMP("BQIRMOM",RMN)=RCAT_U_U_CODE
 Q
 ;
ERR ;
 ;
 NEW DA
 S DA=$O(^BQI(90508,0))
 S BQIUPD(90508,DA_",",3.12)="@"
 S BQIUPD(90508,DA_",",4.09)="@"
 D FILE^DIE("","BQIUPD")
 K BQIUPD
 S ERRCNT=$G(ERRCNT)+1
 ;
 D ^%ZTER
 Q
