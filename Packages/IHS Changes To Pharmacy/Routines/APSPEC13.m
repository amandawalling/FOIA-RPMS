APSPEC13 ;IHS/CIA/PLS - APSP ENVIRONMENT CHECK ROUTINE ;23-Mar-2012 14:15;PLS
 ;;7.0;IHS PHARMACY MODIFICATIONS;**1013**;Sep 23, 2004;Build 33
 ;
ENV ;EP
 ;
 S X=$$GET1^DIQ(200,DUZ,.01)
 W !!,$$CJ^XLFSTR("Hello, "_$P(X,",",2)_" "_$P(X,","),IOM)
 W !!,$$CJ^XLFSTR("Checking Environment for "_$P($T(+2),";",4)_" V "_$P($T(+2),";",3)_", Patch 1013.",IOM)
 S (XPDDIQ("XPZ1"),XPDDIQ("XPZ2"))=0  ; Suppress the Disable options and Move routines prompts
 S XPDABORT=0
 I 'XPDABORT D
 .W !!,"All requirements for installation have been met...",!
 E  D
 .W !!,"Unable to continue with the installation...",!
 Q
 ;
MES(TXT,QUIT) ;EP
 D BMES^XPDUTL("  "_$G(TXT))
 S:$G(QUIT) XPDABORT=QUIT
 Q
 ;
PRE ;EP - Pre-init
 D LMCLNUP
 Q
 ;
LMCLNUP ;EP-
 N IEN,IENC,FDA
 S IEN=$$FIND1^DIC(409.61,,"X","APSP COMPLETE ORDERS")
 Q:'IEN
 S IENC=$$FIND1^DIC(409.621,","_IEN_",","X","ORDNUM")
 Q:'IENC
 S FDA(409.621,IENC_","_IEN_",",.01)="@"
 D FILE^DIE("K","FDA")
 Q
 ;
RENXPAR(OLD,NEW) ; Rename parameter
 N IEN,FDA,FIL
 S FIL=8989.51
 Q:$$FIND1^DIC(FIL,,"X",NEW)  ; New name already exists
 S IEN=$$FIND1^DIC(FIL,,"X",OLD)
 Q:'IEN  ; Old name doesn't exist
 S FDA(FIL,IEN_",",.01)=NEW
 D FILE^DIE("E","FDA")
 Q
 ;
REMXPAR(PAR) ;Remove values stored for a given parameter
 N PIEN,ENT,INT,VIEN,DIK,DA
 S PIEN=$O(^XPAR(8989.51,"B",PAR,0))
 Q:'PIEN
 S ENT=0 F  S ENT=$O(^XPAR(8989.5,"AC",PIEN,ENT)) Q:ENT=""  D  ;Entity
 .S INT=0 F  S INT=$O(^XPAR(8989.5,"AC",PIEN,ENT,INT)) Q:INT=""  D  ;Instance
 ..S DA=0 F  S DA=$O(^XPAR(8989.5,"AC",PIEN,ENT,INT,DA)) Q:'DA  D  ;Value IEN
 ...S DIK="^XTV(8989.5," D ^DIK
 Q
POST ;EP
 ;Kill "B" xref of File 50 and rebuild
 N DIK
 S DIK="^PSDRUG("
 S DIK(1)=".01^B^BCAP"
 K ^PSDRUG("B")
 D ENALL^DIK
 D UREGPROT("PS EVSEND OR","APSP AUTO RX")
 D REGPROT("OR EVSEND PS","APSP AUTO RX",30)
 Q
 ; Add given namespace to Application
AAPPGRP(FILE,NMSP) ;EP
 N FDA,IEN,ERR
 Q:'$G(FILE)!('$L(NMSP))
 S FDA(1.005,"?+1,"_FILE_",",.01)=NMSP
 D UPDATE^DIE("","FDA","IEN","ERR")
 Q
 ; Register a protocol to an extended action protocol
 ; Input: P-Parent protocol
 ;        C-Child protocol
 ;     SEQ-Sequence Number
REGPROT(P,C,SEQ,ERR) ;EP
 N IENARY,PIEN,AIEN,FDA
 D
 .I '$L(P)!('$L(C)) S ERR="Missing input parameter" Q
 .S IENARY(1)=$$FIND1^DIC(101,"","",P)
 .S AIEN=$$FIND1^DIC(101,"","",C)
 .I 'IENARY(1)!'AIEN S ERR="Unknown protocol name" Q
 .S FDA(101.01,"?+2,"_IENARY(1)_",",.01)=AIEN
 .S FDA(101.01,"?+2,"_IENARY(1)_",",3)=SEQ
 .D UPDATE^DIE("S","FDA","IENARY","ERR")
 ;Q:$Q $G(ERR)=""
 Q
 ; UnRegister a protocol from an extended action protocol
 ; Input: P-Parent protocol
 ;        C-Child protocol
UREGPROT(P,C,ERR) ;EP-
 N IENARY,PIEN,AIEN,FDA
 D
 .I '$L(P)!('$L(C)) S ERR="Missing input parameter" Q
 .S IENARY(1)=$$FIND1^DIC(101,"","",P)
 .S AIEN=$$FIND1^DIC(101,"","",C)
 .I 'IENARY(1)!'AIEN S ERR="Unknown protocol name" Q
 .S IENARY(2)=$$FIND1^DIC(101.01,","_IENARY(1)_",","",C)
 .S FDA(101.01,IENARY(2)_","_IENARY(1)_",",.01)="@"
 .D UPDATE^DIE("S","FDA","","ERR")
 Q
SETPKGV(PKG,VER) ;EP
 N PIEN,FDA
 S PIEN=$$FIND1^DIC(9.4,,,PKG)
 Q:'PIEN
 S FDA(9.4,PIEN_",",13)=VER
 D UPDATE^DIE(,"FDA")
 Q
 ; Cleanup Drug File DD
CLN50DD ;EP -
 S DIU=50.03,DIU(0)="SD" D EN^DIU2
 Q
 ; Cleanup PCC Link in NVA node
CLNNVA ;EP -
 N DFN,IEN,FDA,NVAERR
 S DFN=0 F  S DFN=$O(^PS(55,"APCC","+1",DFN)) Q:'DFN  D
 .S IEN=0 F  S IEN=$O(^PS(55,"APCC","+1",DFN,IEN)) Q:'IEN  D
 ..S FDA(55.05,IEN_","_DFN_",",9999999.11)="@"
 D:$D(FDA) UPDATE^DIE("","FDA",,"NVAERR")
 W:$G(DIERR) $G(NVAERR("DIERR",1,"TEXT",1))
 Q