APSPBING ;IHS/CIA/PLS - Bingo Board support;08-Jul-2004 09:28;PLS
 ;;7.0;IHS PHARMACY MODIFICATIONS;;12/23/2003
 ; This routine contains the set and kill logic for the "BA"
 ; xref in File 52.11 Field 8.
SNMXREF ;
 N PAT,ID
 S PAT=+$P(^PS(52.11,DA,0),U)
 S ID=$$GETID(PAT,.PSOSITE)
 S:ID ^PS(52.11,"BA",$E(X,1,30),DA,ID)=""
 Q
 ;
KNMXREF ;
 N PAT,ID
 S PAT=+$P(^PS(52.11,DA,0),U)
 S ID=$$GETID(PAT,.PSOSITE)
 K ^PS(52.11,"BA",$E(X,1,30),DA,ID)
 Q
 ;
GETID(DFN,PSOSITE) ;
 N ID,SITE
 S PSOSITE=$G(PSOSITE,0)
 S ID=$$HRN^AUPNPAT(+$G(DFN),$$GET1^DIQ(59,PSOSITE,100,"I"))
 S:ID<1 ID=0
 S ID=$$RJ^XLFSTR(ID,6,0)
 Q +ID