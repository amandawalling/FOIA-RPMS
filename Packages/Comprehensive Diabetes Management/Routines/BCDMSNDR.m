BCDMSNDR ; ILC/ABQ/JLG - CDMP SEND HL7 MESSAGE;JUL 16, 2008 3:19 PM
 ;;1.0;IHS CHRONIC DISEASE MANAGEMENT;;JUN 29, 2010
 ;
 Q
 ;
EP ;
 ;Entry point to just go through new PCC visits
 ;This assumes that the ACDMP X-ref has been created.
 S NUMSNT=0
 S (BCDMVCNT,BCDMMCNT)=0
 S X1=DT
 S X2=-4
 D C^%DTC
 S BCDMDATE=X
 F  S BCDMDATE=$O(^AUPNVSIT("ACDMP",BCDMDATE)) Q:'BCDMDATE  D  Q:NUMSNT>999
 .S VISIEN=0
 .F  S VISIEN=$O(^AUPNVSIT("ACDMP",BCDMDATE,VISIEN)) Q:'VISIEN  D  ;Q:NUMSNT>999  not sure what this was for?? don't send more than 999 visits???? so commentd out
 ..Q:$P(^AUPNVSIT(VISIEN,0),U,11)  ;deleted visit so patient wasn't really here??
 ..S DFN=$P(^AUPNVSIT(VISIEN,0),U,5)
 ..Q:DFN=""   ;no patient, bad visit
 ..I '$$A2CHK(VISIEN) K ^AUPNVSIT("ACDMP",BCDMDATE,VISIEN) Q  ;03/23/2010 check to see if this is an A2 visit if not quit
 ..I '$$VDT(DFN,BCDMDATE) K ^AUPNVSIT("ACDMP",BCDMDATE,VISIEN) Q  ;if patient is already in file with todays date don't send again TODO
 ..;I '$$A2(DFN) Q  ;K ^AUPNVSIT("ACDMP",BCDMDATE,VISIEN) Q   ;patient never had an A2 visit so skip them ONLY GET PATIENTS THAT HAD AN A2 DURING THE RUN
 ..;LOOP THROUGH LAST 5 YEARS OF VISITS AND SEND FOR EACH ONE
 ..S BCDMBD=$E(DT,1,3)-5_$E(DT,4,7)
 ..K BCDMV
 ..S B=DFN_"^ALL VISITS;DURING "_BCDMBD_"-"_DT,E=$$START1^APCLDF(B,"BCDMV(")
 ..S BCDMX=0 F  S BCDMX=$O(BCDMV(BCDMX)) Q:BCDMX'=+BCDMX  S BCDMVIEN=$P(BCDMV(BCDMX),U,5) D
 ...Q:'$D(^AUPNVSIT(BCDMVIEN,0))
 ...Q:$P(^AUPNVSIT(BCDMVIEN,0),U,11)
 ...D SEND(BCDMVIEN)
 .. D SET(DFN,DT)  ;TODO
 .. K ^AUPNVSIT("ACDMP",BCDMDATE,VISIEN) ;TODO
 K NUMSNT,BCDMDATE,VISIEN,IVISIEN,SERVCAT,BCDMBD,BCDMV,B,E,V,X,BCDMVIEN
 Q
 ;
A2CHK(V) ;-- is the visit A2
 N CLN,OK
 S CLN=$O(^DIC(40.7,"C","A2",0))
 I $P($G(^AUPNVSIT(V,0)),U,8)=CLN Q 1
 Q 0
 ;
A2(P) ;did patient ever have an A2 visit?
 NEW BCDMG,G,C,B,E
 I '$G(P) Q ""
 I '$D(^AUPNVSIT("AC",P)) Q ""
 S C=$O(^DIC(40.7,"C","A2",0))
 I C="" Q ""   ;NO A2 CLINIC CODE
 S B=P_"^ALL VISITS",E=$$START1^APCLDF(B,"BCDMG(")
 I '$D(BCDMG) Q ""
 S (X,G)=0 F  S X=$O(BCDMG(X)) Q:X'=+X!(G)  S V=$P(BCDMG(X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:$P(^AUPNVSIT(V,0),U,8)'=C
 .S G=1   ;has an A2 visit
 Q G
 ;
VDT(P,VDT) ;-- check to see if the patient has a record in ^BCDMPAT and the date so as not to send if not necessary
 I '$O(^BCDMPAT("B",P,0)) Q 1
 N BIEN
 S BIEN=$O(^BCDMPAT("B",P,0))
 I $P($G(^BCDMPAT(BIEN,0)),U,2)<VDT Q 1
 Q 0
 ;
SET(P,D) ;-- set the BCDMPAT file
 I '$O(^BCDMPAT("B",P,0)) D  Q
 . N FDA,IENS,FERR
 . S IENS=""
 . S IENS(1)=P
 . S FDA(90520,"+1,",.01)=P
 . S FDA(90520,"+1,",.02)=D
 . D UPDATE^DIE("","FDA","IENS","FERR(1)")
 . I $G(FERR(1)) S ERR="Error Adding Patient"
 Q:$P($G(^BCDMPAT(P,0)),U,2)=D
 N FDA,IENS,FERR
 S IENS=P_","
 S FDA(90520,IENS,.02)=D
 D FILE^DIE("K","FDA","FERR(1)")
 Q
 ;
TEST ;
 ;This is the test code that goes through all PCC visits.
 S CS=U
 S RS="~"
 S SCS="&"
 S ESC="\"
 S VISIEN=43000
 F  S VISIEN=$O(^AUPNVSIT("AC",DFN,VISIEN)) Q:'VISIEN  D SEND(VISIEN) Q:VISIEN>5175379
 Q
 ;
SEND(VISIEN) ;
 K INDA,INA,ID2
 S INDA(VISIEN)=""
 S INDA=VISIEN
 S INA("VISIEN")=VISIEN
 S INA("BCDMUSA")="USA"
 S IENS=VISIEN_","
 S INA("EVDT")=$$GET1^DIQ(9000010,IENS,.01,"E")
 S DFN=$P(^AUPNVSIT(VISIEN,0),U,5)
 S INDA(2,DFN)=""
 S IENS=DUZ(2)_","
 S ASUFAC=$$GET1^DIQ(9999999.06,IENS,.0799)
 S DOMAIN=$$GET1^DIQ(9999999.06,IENS,.01,"E")
 S VMEDIEN=0
 F  S VMEDIEN=$O(^AUPNVMED("AD",VISIEN,VMEDIEN)) Q:'VMEDIEN  D
 .S INDA(9000010.14,VMEDIEN)=""
 .S INA("ASUFAC",VMEDIEN)=ASUFAC_"-"
 S HRCN=$P($G(^AUPNPAT(DFN,41,DUZ(2),0)),U,2)
 I HRCN="" D
 .S DUZ2=$O(^AUPNPAT(DFN,41,0))
 .Q:'DUZ2
 .S IENS=DUZ2_","
 .S ASUFAC2=$$GET1^DIQ(9999999.06,IENS,.0799)
 .S ID2=ASUFAC2_"-"_HRCN
 E  S ID2=ASUFAC_"-"_HRCN
 ;cmi/maw 6/8/2009 changed the following for PID-3
 N BCDMDA,BCDMPSTR,R,BCDMCNTR
 S R="~"
 S BCDMPSTR=""
 S BCDMCNTR=0
 S BCDMDA=0 F  S BCDMDA=$O(^AUPNPAT(DFN,41,BCDMDA)) Q:'BCDMDA  D
 . N BCDMHRN,HRCN
 . S BCDMHRN=$G(^AUPNPAT(DFN,41,BCDMDA,0))
 . S HRCN=$P(BCDMHRN,U,2)
 . S ASUFAC=$$GET1^DIQ(9999999.06,BCDMDA,.0799)
 . I BCDMDA=DUZ(2) D
 .. S BCDMCNTR=BCDMCNTR+1
 .. S $P(BCDMPSTR,R,BCDMCNTR)=ASUFAC_"-"_DFN
 . I BCDMDA'=DUZ(2) D
 .. S BCDMCNTR=BCDMCNTR+1
 .. S $P(BCDMPSTR,R,BCDMCNTR)=ASUFAC_"-"_HRCN
 S INA("PATID",DFN)=BCDMPSTR
 S INA("PATID",1)=BCDMPSTR
 S INA("BCDUSA",DFN)="USA"
 N BCDMINHF
 S BCDMVCNT=BCDMVCNT+1
 S BCDMINHF=$$BCDM^BHLEVENT(VISIEN,.INA)  ;lori this is the call that needs to be made  TODO
 I $O(^AUPNVMED("AD",VISIEN,0)) D
 . N BCDMMED
 . S BCDMMCNT=BCDMMCNT+1
 . S BCDMMED=$$BCDMMED^BHLEVENT(VISIEN,.INA)  ; this sends the medication message  TODO
 K IENS,ASUFAC,DOMAIN,VMEDIEN,DUZ2
 Q
 ;
SENDMED ;EP - called from option to send all visits for one patient in past 5 years
 W !!,"This option is used to send all medical visits for one patient who has"
 W !,"had a Diabetic Retinopathy (A2) telehealth visit.  This is in support of"
 W !,"the Chronic Disease Management System.",!
 K DIC
 S DIC="^AUPNPAT(",DIC(0)="AEMQ" D ^DIC K DIC
 I Y=-1 Q
 S DFN=+Y
 S BCDMBD=$E(DT,1,3)-5_$E(DT,4,7)
 K BCDMV
 S B=DFN_"^ALL VISITS;DURING "_BCDMBD_"-"_DT,E=$$START1^APCLDF(B,"BCDMV(")
 S BCDMX=0 F  S BCDMX=$O(BCDMV(BCDMX)) Q:BCDMX'=+BCDMX  S BCDMVIEN=$P(BCDMV(BCDMX),U,5) D
 .Q:'$D(^AUPNVSIT(BCDMVIEN,0))
 .Q:$P(^AUPNVSIT(BCDMVIEN,0),U,11)
 .D SEND(BCDMVIEN)
 ;now create A2 event visit if there is none already on file
 I '$$A2(DFN) D EVSIT
 K BCDMV,B,BCDMBD,BCDMVIEN,DFN,E,APCDALVR,APCDVSIT,BCDMBSDV,T
 D ^XBFMK
 Q
EVSIT ;EP - get/create event visit
 S BCDMCLN=$O(^DIC(40.7,"C","A2",0))
 I BCDMCLN="" W !!,"Clinic A2 missing from clinic stop file, notify supervisor." Q
 I $L($T(^APCDAPI4)) D BSD,VFILES Q
 K APCDVSIT
 K APCDALVR
 S APCDALVR("APCDAUTO")=""
 S APCDALVR("APCDPAT")=DFN
 S APCDALVR("APCDCAT")="E"
 S APCDALVR("APCDLOC")=DUZ(2)
 S APCDALVR("APCDCLN")="`"_BCDMCLN
 S APCDALVR("APCDTYPE")=$S($P($G(^APCCCTRL(DUZ(2),0)),U,4)]"":$P(^APCCCTRL(DUZ(2),0),U,4),1:"O")
 S APCDALVR("APCDDATE")=DT_".12"
 D ^APCDALV
 S BCDMVSIT=$G(APCDALVR("APCDVSIT"))
 I $G(APCDALVR("APCDVSIT","NEW")) D DEDT^APCDEA2(BCDMVSIT)
 K APCDALVR
 D VFILES
 Q
 ;
BSD ;
 K BCDMIN
 S BCDMIN("PAT")=DFN
 S BCDMIN("VISIT DATE")=DT_".12"
 S BCDMIN("SITE")=DUZ(2)
 S BCDMIN("CLINIC CODE")=BCDMCLN
 S BCDMIN("VISIT TYPE")=$S($P($G(^APCCCTRL(DUZ(2),0)),U,4)]"":$P(^APCCCTRL(DUZ(2),0),U,4),1:"O")
 S BCDMIN("SRV CAT")="E"
 S BCDMIN("TIME RANGE")=0
 S BCDMIN("USR")=DUZ
 K APCDALVR
 K BCDMBSDV
 D GETVISIT^APCDAPI4(.BCDMIN,.BCDMBSDV)
 S T=$P(BCDMBSDV(0),U,2)
 I T]"" W !!,"error creating event visit for this patient, notify supervisor" Q
 S V=$O(BCDMBSDV(0)) S BCDMVSIT=V
 I $G(BCDMBSDV(V))="ADD" D DEDT^APCDEA2(BCDMVSIT)
 Q
 ;
VFILES ;
 ;create v pov with admin v code and narrative
 K APCDALVR
 S APCDALVR("APCDPAT")=DFN
 S APCDALVR("APCDVSIT")=BCDMVSIT
 S APCDALVR("APCDATMP")="[APCDALVR 9000010.07 (ADD)]"
 S APCDALVR("APCDTPOV")="V68.9"
 S APCDALVR("APCDTNQ")="EVENT VISIT CREATED TO FLAG PATIENT AS HAVING A DIABETIC RETINAL A2 VISIT"
 D ^APCDALVR
 I $D(APCDALVR("APCDAFLG")) W !!,"error creating V POV for event visit....notify supervisor.."
 K APCDALVR
 Q
 ;