AMEREDIT ; IHS/OIT/SCR - Primary Routine for ER VISIT edit interface 
 ;;3.0;ER VISIT SYSTEM;**1,3**;DEC 07, 2011;Build 11
 ;
 ; ALGORITHM:
 ;    1. Allow user to select from ER VISITS
 ;    2. Check PCC last update and sych ERS info with what is in it if it is more current.
 ;    3. Display the visit information
 ;    4. Allow user to edit OR "verify" selected visit 
 ;    5. Allow user to quit or return to 1
 ;  
 ; VARIABLES: The following variables are passed to multiple editing routines
 ;  AMERDA  : the IEN of the ER VISIT that is selected for editing
 ;  AMERAIEN: The IEN of the ER AUDIT that is created when user begins editing a record
 ;  AMEREDNO: An integer representing the number of multiple fields that have been edited
 ;            for uniqueness in multiple field number in audit file
 ; Edit Auditing VARIABLES newed and used throughout edit routines:
 ;      AMEROLD : original value of edited field
 ;      AMERNEW : new value of edited field
 ;      AMERSTRG : A ";" deliminated string of edit information for a field           
 ;
RUN ; EP - from Main Menu option AMER EDIT to Edit ER VISIT
 N AMERDA,AMERAIEN,AMEREDNO,AMERDUZ,AMERLINE,DIC,DIR,X,Y
 N AMERHD1,AMERHD2,AUPNDAYS,AUPNDOB,AUPNDOD,AUPNPAT,AUPNSEX,AGE,AMERX1,AMERD1,AMERDIFF,X1,X2
 N AMERPAT,AMERDOB,AMERHRN
 I $D(IOF) W @IOF
 D UP^AMERBAN
 D EN^DDIOL("","","!!!")
 S %="",$P(%,"~",80)="",AMERLINE=% K %
 S AMEREDNO=0
 S DIR(0)="DO"
 S DIR("A")="Start with date"
 S DIR("?")="leave blank to start with first ER VISIT for this patient"
 S Y=DT
 X ^DD("DD")
 S DIR("B")=Y
 D ^DIR
 I $D(DUOUT)!($D(DTOUT)) K DTOUT,DUOUT S AMERQUIT="" Q
 I X="" D EN^DDIOL("Start at First ER VISIT","","") S Y=2950101.0001
 S AMERX1=Y
 X ^DD("DD") S AMERD1=Y
 S DIC="^DPT(",DIC(0)="AEQM",DIC("A")="Enter name, DOB or chart number: "
 S DIC("?N?",9009080)=10
 D ^DIC
 I $D(DUOUT)!($D(DTOUT)) K DTOUT,DUOUT S AMERQUIT="" Q
 I Y=-1 D EN^DDIOL("Patient not found","","!!")
 I Y>0 D
 .S DIC("S")="I $P(^(0),U,1)>"_AMERX1
 .S DIC="^AMERVSIT(",DIC(0)="E",D="AC",X=+Y
 .D IX^DIC
 .I $D(DUOUT)!($D(DTOUT)) K DTOUT,DUOUT S AMERQUIT="" Q
 .I Y<1 D EN^DDIOL("Cannot find an ER VISIT for this patient in this time frame","","!?5")
 .I Y>0 D
 ..S AMERDA=$P(Y,U,1)
 ..;IHS/OIT/SCR 12/30/08 synch ERS data with what is in PCC if PCC date is more current
 ..S AMERPCC=$$FINDVSIT^AMERPCC(AMERDA)
 ..I AMERPCC<0 D  Q  ;IHS/SCR/OIT 05/07/09 patch 1
 ...D EN^DDIOL("Cannot identify PCC VISIT for AMERVSIT IEN "_AMERDA_"!","","!!?5")
 ...S DIR(0)="Y"
 ...S DIR("A")="Do you want to delete this ERS VISIT?"
 ...S DIR("B")="YES"
 ...D ^DIR
 ...I $D(DUOUT)!($D(DTOUT)) K DTOUT,DUOUT S AMERQUIT="" Q
 ...I Y=1 D
 ....D DELETVST^AMERVSIT(AMERDA)
 ....D EN^DDIOL("This VISIT has been deleted")
 ....Q
 ...Q
 ..S AMERDIFF=0
 ..S X1=$P($G(^AMERVSIT(AMERDA,6)),"^",12)  ;AMERVSIT MOST CURRENT MEANS WE ARE IN SYNCH (X2 is subtrated from X1)
 ..S X2=$$DLM^APCLV(AMERPCC,"I")
 ..D ^%DTC
 ..S:Y AMERDIFF=X
 ..I AMERDIFF<=0 D
 ...D SYNCHERA^AMERERS(AMERDA,AMERPCC)   ;SYNCH VISIT DATA
 ...D SYNCHERD^AMERERS(AMERDA,AMERPCC)   ;SYNCH V PROVIDER DATA
 ...D SYNCHERX^AMERERS(AMERDA,AMERPCC)   ;SYNCH V POV DATA
 ...Q
 ..;IHS/OIT/SCR 12/30/08 END CHANGES
 ..;IHS/OIT/SCR 01/09/08 GET CURRENT VALUES IN PATIENT REG FOR DOB AND CHART NUMBER AND UPDATE IF DIFFERENT
 ..S AMERPAT=$P($G(^AMERVSIT(AMERDA,0)),U,2)  ; AMERPAT IS THE IEN OF PATIENT
 ..I AMERPAT'="" D SYNCHERP^AMERERS(AMERPAT,AMERDA)
 ..D PRINT(AMERDA)
 ..S DIR("A")="Do you want to EDIT this ER VISIT"
 ..S DIR(0)="Y",DIR("B")="YES"
 ..D ^DIR
 ..I Y=1 D   ;create the audit record that will track this session
 ...S AMERDUZ=DUZ
 ...S AMERAIEN=$$CREATAUD^AMEREDAU(AMERDA,AMERDUZ) Q:AMERAIEN<0  ;CREATE AN AUDIT FILE RECORD
 ...D EDITERV(AMERDA,AMERAIEN,.AMEREDNO) ;CURRENTLY EDITS ALL FIELDS
 ...D EXIT(AMERDA,0)
 ...Q
 ..Q
 .Q
 D EN^DDIOL("","","!!")
 S DIR(0)="Y"
 S DIR("A")="Would you like to EDIT another ER VISIT"
 S DIR("B")="NO"
 D ^DIR
 I Y=1 K AMERDA,AMERAIEN,AMEREDNO,AMERDUZ D RUN
 E  D EN^DDIOL("No ER VISITS selected for edit","","!!")
 K AMERDA,AMERAIEN,AMEREDNO,AMERDUZ,AMERLINE,DIC,DIR,AMERVER,AMERHD1,AMERHD2,AUPNDAYS,AUPNDOB,AUPNDOD,AUPNPAT,AUPNSEX,AGE
 Q
PRINT(DA) ; PRINT SELECTED VISIT TO SCREEN
 N DIC,BY,FR,TO,FLDS
 S DIC="^AMERVSIT(",BY="NUMBER",(FR,TO)=DA,FLDS="[AMER DETAIL"
 D EN1^DIP
 K DIC,BY,FR,TO,FLDS
 Q
 ; 
EDITERV(AMERDA,AMERAIEN,AMEREDNO)  ; EDIT SELECTED VISIT
 ; NEED TO PARTITION SELECTIONS INTO PCC FIELD EDIT AND ERS FIELD EDIT
 N AMERQUIT,AMERSEL,DIR,AMERQUIT
 S AMERQUIT=0
 ;D EN^DDIOL("***ENTRIES MARKED WITH '*' contain LOCKED fields***","","!!,?5")
 S DIR(0)="SO^1:ADMISSION SUMMARY;2:TRIAGE INFO;3:INJURY INFO;"
 S DIR(0)=DIR(0)_"4:PROCEDURES;5:DIAGNOSES;6:EXIT ASSESSMENT;"
 S DIR(0)=DIR(0)_"7:DISCHARGE INFO;8:FOLLOW UP INSTRUCTIONS;9:ER CONSULTANTS;"
 S DIR(0)=DIR(0)_"10:ALL"
 S DIR("A")="ENTER NUMBER OF SECTION TO EDIT  (OR '<return>' TO QUIT)",DIR("?")="Enter the number of the section you want to edit"
 S DA=AMERDA
 D ^DIR
 I Y=""!(Y="^") D
 .I '$D(^XUSEC("AMERZ9999",DUZ)) Q  ;only holders of the coding key can update a DX
 .S AMERQUIT=1
 .I '$$CHKVSIT^AMEREDPC(AMERDA,AMERAIEN) D
 ..D EN^DDIOL("**The primary diagnosis for this ER visit is uncoded**","","!!")
 ..S DIR(0)="Y",DIR("A")="Would you like to update the .9999 code now",DIR("B")="YES"
 ..D ^DIR
 ..I Y=0 S Y=""
 ..I Y=1 S AMERQUIT=0,Y=5
 ..Q
 .Q
 Q:AMERQUIT
 S AMERSEL=Y
 K DIR,Y,DA
 D EDIT(AMERSEL,AMERDA,AMERAIEN,.AMEREDNO)
 K AMERQUIT,AMERSEL
 Q
 ; 
EDIT(AMERSEL,AMERDA,AMERAIEN,AMEREDNO) ;
 N DIC,DR,AMERDUZ,AMERNEW,AMEROLD,AMERSTRG,AMERQUIT
 S AMERQUIT=0
 D EN^DDIOL(AMERLINE,"","!!")
 I AMERSEL=1!(AMERSEL=10) D
 .I '$$EDADMIT^AMEREDTA(AMERDA,AMERAIEN) S AMERQUIT=1 Q  ;ADMISSION SUMMARY
 .D EN^DDIOL(AMERLINE,"","!!")
 .D EN^DDIOL("","","!")
 .Q
 I AMERQUIT D EXIT(AMERDA,AMERQUIT) Q
 I AMERSEL=2!(AMERSEL=10) D                 ;TRIAGE INFO
 .I '$$ADMTRIAG^AMEREDTT(AMERDA,AMERAIEN) S AMERQUIT=1 Q  ;WORK RELATED,ADMITTING PROVIDERS,ADMITTING TRIAGE CATEGORY
 .D EN^DDIOL(AMERLINE,"","!!")
 .D EN^DDIOL("","","!")
 .Q
 I AMERQUIT D EXIT(AMERDA,AMERQUIT) Q
 I AMERSEL=3!(AMERSEL=10) D  ;INJURY
 .I '$$EDINJRY^AMEREDTI(AMERDA,AMERAIEN) S AMERQUIT=1 Q
 .D EN^DDIOL(AMERLINE,"","!!")
 .D EN^DDIOL("","","!")
 .Q
 I AMERQUIT D EXIT(AMERDA,AMERQUIT) Q
 I AMERSEL=4!(AMERSEL=10) D                                 ;PROCEDURE
 .I '$$EDPROCS^AMEREDTD(AMERDA,.AMEREDNO,AMERAIEN) S AMERQUIT=1 Q
 .D EN^DDIOL(AMERLINE,"","!!")
 .D EN^DDIOL("","","!")
 .Q
 I AMERQUIT D EXIT(AMERDA,AMERQUIT) Q
 I AMERSEL=5!(AMERSEL=10) D
 .I '$$EDDIAGS^AMEREDDX(AMERDA,.AMEREDNO,AMERAIEN) S AMERQUIT=1 Q  ;DIAGNOSES
 .D EN^DDIOL(AMERLINE,"","!!")
 .D EN^DDIOL("","","!")
 .Q
 I AMERQUIT D EXIT(AMERDA,AMERQUIT) Q
 ;IHS/OIT/SCR - 10/15/08 the visit can be deleted here and AMERDA is passed by reference
 I AMERSEL=6!(AMERSEL=10) D
 .I '$$EDEXTAS^AMEREDTD(.AMERDA,AMERAIEN) S AMERQUIT=1 Q  ;EXIT ASSESSMENT
 .D EN^DDIOL(AMERLINE,"","!!")
 .D EN^DDIOL("","","!")
 .I (AMERDA=0) S AMERQUIT=1
 .Q
 I AMERQUIT D EXIT(AMERDA,AMERQUIT) Q
 I AMERSEL=7!(AMERSEL=10) D  ;DISCHARGE
 .I '$$EDDISCHG^AMEREDTD(AMERDA,AMERAIEN) S AMERQUIT=1 Q
 .D EN^DDIOL(AMERLINE,"","!!")
 .D EN^DDIOL("","","!")
 .Q
 I AMERQUIT D EXIT(AMERDA,AMERQUIT) Q
 I AMERSEL=8!(AMERSEL=10) D  ;FOLLOW UP INSTRUCTIONS
 .I '$$EDFUINST^AMEREDTD(AMERDA,AMERAIEN) S AMERQUIT=1 Q
 .D EN^DDIOL(AMERLINE,"","!!")
 .D EN^DDIOL("","","!")
 .Q
 I AMERQUIT D EXIT(AMERDA,AMERQUIT) Q
 I AMERSEL=9!(AMERSEL=10) D   ;ER CONSULTANT
 .I '$$EDTCNSLT^AMEREDTE(AMERDA,.AMEREDNO,AMERAIEN) S AMERQUIT=1 Q
 .D EN^DDIOL(AMERLINE,"","!!")
 .D EN^DDIOL("","","!")
 .Q
 D:AMERSEL'="" EDITERV(AMERDA,AMERAIEN,.AMEREDNO)
 Q
 ;
EXIT(AMERDA,AMERQUIT) ; 
 D COMPUTE^AMERTIME(AMERDA)
 D:'AMERQUIT
 .S DIR("A")="Do you want to PRINT this ER VISIT"
 .S DIR(0)="Y",DIR("B")="NO"
 .D ^DIR
 .D:Y=1 PRINT(AMERDA)
 Q
 ;
DIE(AMERDA,AMERDR) ; EP from multiple AMERED* ROUTINES
 ; GIVEN AN ENTRY NUMBER AND A DR STRING, EDIT THE ER VISIT FILE
 N X,Y,%
 N D,D0,DI,DIC,DICR,DIE,DIG,DIH,DIV,DIU,DIW,DQ,DIK,DA,DR
 S DA=AMERDA
 S DR=AMERDR
 S DIE="^AMERVSIT("
DIE1 L +^AMERVSIT(DA):3 E  Q
 D ^DIE
 S DIK=DIE
 D EN^DIK
 L -^AMERVSIT(DA)
 ;IHS/OIT/SCR 12/18/08
 D TIMESTMP^AMERSAV1(DA)
 K DIE,DA,DR
 Q
 ;
TXTREAD ; 
 S DIR(0)="FO^1:20"
 S DIR("?")="Enter free text (30 characters max.)"
 D ^DIR K DIR
 D CKSC^AMER1 I $D(AMERCKSC) K AMERCKSC G TXTREAD
 D OUT^AMER
 Q
 ; 
MULTDIE(AMERDIE,AMERDA,AMERDA1,AMERDR)  ; EP From Multiple AMERED* routines  
 ; GIVEN AN ENTRY NUMBER AND A DR STRING, EDIT A MULTIPLE FIELD OF THE ER VISIT FILE
 ; INPUT:
 ;  AMERDIE : the subrecord identifying the multiple field to be updated
 ;  DA : the sub-record identifier that is being updated
 ;  DA1 : The IEN of the ER VISIT being updated
 ;  DR  : the "DR" string containing the multiple sub-field and value to be updated
 ;   
 N X,Y,%
 N D,D0,DI,DIC,DICR,DIE,DIG,DIH,DIV,DIU,DIW,DQ,DR,DA,DIE
 S DIE=AMERDIE,DA=AMERDA,DA(1)=AMERDA1,DR=AMERDR
 L +^AMERVSIT(AMERDA1):3 E  Q
 D ^DIE
 S DIK=AMERDIE,DA(1)=AMERDA1
 D EN^DIK
 L -^AMERVSIT(AMERDA1)
 ;IHS/OIT/SCR 12/15/08 - update ER VISIT FILE with DATE LAST UPDATED (NOW)
 D TIMESTMP^AMERSAV1(AMERDA1)
 Q
