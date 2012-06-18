ADECDT ; IHS/HQT/MJL - ADA CODE TABLE UPDATE (CDT3) ;  
 ;;6.0;ADE;**7,14**;APR 03, 2001
 S U="^"
 D ADA,EDITGRP,EDIT,OPSITE
 Q
 ;
ADA ;
 S ADEFILE=9999999.31,ADEWPFLD=1101,ADEIENST="?+1,",ADECNT=0,ADEDONE=0
 ;Copy ^AUTTADA to ^ADEOADA to backup ADA Codes before the update
 I '$D(^ADEOADA) S %X="^AUTTADA(",%Y="^ADEOADA(" D %XY^%RCR K %X,%Y
 S DIK="^AUTTADA(" D IXALL^DIK K DIK
 ;Update ADA codes with CDT3 Update
 F ADERN=1:1 D ADA1 Q:ADEDONE
 D ADAUPD
 ; Remove the Op Site prompt from the following codes
 F ADEADA="0277","0350","9241","9248" S DIC=ADEFILE,DIC(0)="X",X=ADEADA D ^DIC I Y>0 S DIE=ADEFILE,DA=+Y,DR=".09////n" D ^DIE
 ; Add the Op Site prompt for the following codes
 F ADEADA=9221,9242,9920 S DIC=ADEFILE,DIC(0)="X",X=ADEADA D ^DIC I Y>0 S DIE=ADEFILE,DA=+Y,DR=".09////@" D ^DIE
 ; Codes to be deactivated
 D NOW^%DTC S ADETDT=X
 F ADEADA="0471","2210","2810","3960","4250","7470","7942","9240" S DIC=ADEFILE,DIC(0)="X",X=ADEADA D ^DIC I Y>0 S DIE=ADEFILE,DA=+Y,DR=".08////"_ADETDT D ^DIE
 D KILL
 Q
 ;
ADA1 ;
 S ADERTN="ADECDT"_ADERN
 F ADERLN=4:1 S X=$T(+ADERLN^@ADERTN) Q:X=""  D  Q:ADEDONE
 .S X=$P(X,";",3,$L(X,";")) Q:X=""
 .S ADEID=$P(X,U) I ADEID="***END***" S ADEDONE=1 Q
 .I ADEID="CODE" D:ADECNT ADAUPD S ADECODE=$P(X,U,2),ADEDESC=$P(X,U,3),ADECNT=ADECNT+1,ADEUSE=0,ADETXT=0,(ADELEV,ADESYN,ADEMNE)=""
 .I ADEID="SVC" S ADELEV=$P(X,U,2),ADEMIN=$P(X,U,3),ADEICD9=$P(X,U,4) Q
 .I ADEID="SYN" S ADESYN=$P(X,U,2) Q
 .I ADEID="MNE" S ADEMNE=$P(X,U,2) Q
 .I ADEID="USE" S ADEUSE=1 Q
 .I ADEUSE S ADETXT=ADETXT+1,ADETEXT(ADETXT)=X Q
 ; Just in case the last routine doesn't end with ***END***
 I X="",ADERLN=4,$T(+ADERLN^@ADERTN)="" S ADEDONE=1
 Q
 ;
ADAUPD ;
 S ADEFDA(ADEFILE,ADEIENST,.01)=ADECODE,ADEFDA(ADEFILE,ADEIENST,.02)=ADEDESC
 S:ADEICD9'="" ADEFDA(ADEFILE,ADEIENST,.03)=ADEICD9
 S:ADEMIN'="" ADEFDA(ADEFILE,ADEIENST,.04)=ADEMIN
 S:ADELEV'="" ADEFDA(ADEFILE,ADEIENST,.05)=ADELEV
 S:ADESYN'="" ADEFDA(ADEFILE,ADEIENST,.06)=ADESYN
 S:ADEMNE'="" ADEFDA(ADEFILE,ADEIENST,8801)=ADEMNE
 D FILE
 Q
 ;
EDIT ;
 ;Copy ^ADEDIT to ^ADEOEDIT to backup DENTAL EDIT codes and DENTAL CODE EDIT groups before the update
 I '$D(^ADEOEDIT) S %X="^ADEDIT(",%Y="^ADEOEDIT(" D %XY^%RCR K %X,%Y
 S ADEFILE=9002007.9,ADEIENST="?+1,",ADEWPFLD=1101,ADETXT=0
 S ADEFDA(ADEFILE,ADEIENST,.01)="[PERMANENT TOOTH PROCEDURES 2",ADEFDA(ADEFILE,ADEIENST,1)=2,ADEFDA(ADEFILE,ADEIENST,1.3)="y"
 S ADEFDA(ADEFILE,ADEIENST,2)="[EXTRACTIONS",ADEFDA(ADEFILE,ADEIENST,3)="99999",ADEFDA(ADEFILE,ADEIENST,4)=1
 S ADEFDA(ADEFILE,ADEIENST,6)="W *7,""An extraction has previously been reported for this tooth"""
 D FILE
 S ADEFDA(ADEFILE,ADEIENST,.01)="[PERMANENT TOOTH PROCEDURES 2",ADEFDA(ADEFILE,ADEIENST,1)=1,ADEFDA(ADEFILE,ADEIENST,1.3)="y"
 S ADEFDA(ADEFILE,ADEIENST,2)="[EXTRACTIONS",ADEFDA(ADEFILE,ADEIENST,4)=1,ADEFDA(ADEFILE,ADEIENST,6)="W *7,""An extraction is also being reported for this tooth"""
 D FILE
 S ADEFDA(ADEFILE,ADEIENST,.01)="[PERMANENT TOOTH PROCEDURES 2",ADEFDA(ADEFILE,ADEIENST,1)=4,ADEFDA(ADEFILE,ADEIENST,1.3)="y"
 S ADEFDA(ADEFILE,ADEIENST,4)=1,ADEFDA(ADEFILE,ADEIENST,6)="W *7,""This code may only be used for permanent teeth""",ADEFDA(ADEFILE,ADEIENST,4.1)="[PERMANENT TEETH"
 D FILE
 ;ULQ,URQ,LLQ,LRQ
 ;7471 mimics 4341
 S ADEFDA(ADEFILE,ADEIENST,.01)="7471",ADEFDA(ADEFILE,ADEIENST,1)=4,ADEFDA(ADEFILE,ADEIENST,1.3)="y"
 S ADEFDA(ADEFILE,ADEIENST,4)=1,ADEFDA(ADEFILE,ADEIENST,4.1)="[QUADRANTS",ADEFDA(ADEFILE,ADEIENST,6)="W *7,""Only QUADRANTS may be reported for this code"""
 D FILE
 F ADEADA=9221,9242,9920 D
 .S ADEFDA(ADEFILE,ADEIENST,.01)=ADEADA,ADEFDA(ADEFILE,ADEIENST,1)=4,ADEFDA(ADEFILE,ADEIENST,1.3)="y",ADEFDA(ADEFILE,ADEIENST,1.4)="y",ADEFDA(ADEFILE,ADEIENST,4)=1,ADEFDA(ADEFILE,ADEIENST,4.1)="[INCREMENTS"
 .S ADEFDA(ADEFILE,ADEIENST,6)="W *7,""A 15 minute increment of general anesthesia, intravenous sedation, or behavior management."""
 .D FILE
 S DIK="^ADEDIT(" D IXALL^DIK K DIK
 D KILL
 Q
 ;
EDITGRP ;
 S ADEFILE=9002007.91,ADEIENST="?+1,",ADEWPFLD=1101,ADETXT=0
 ;1 to 32
 S ADEFDA(ADEFILE,ADEIENST,.01)="PERMANENT TOOTH PROCEDURES 2"
 S ADEFDA(ADEFILE,ADEIENST,1)="2337|2388|2542|2780|2781|2782|2783|2799|2953|2957|3331|3332|3333|4245|4268|5867|6056|6057|6058|6059|6060|6061|6062|6063|6064|6065|6066|6067|6068|6069|6070|6071|6072|6073|6074|6075|6076|6077|6078|6079|6245|6519|6548|6740|6781|6782|6783|6976|6977|9911"
 D FILE
 ;1 to 32; A to S; 4D to 29D
 ;3221,9971,9973,9974 mimic 7110
 S ADEFDA(ADEFILE,ADEIENST,.01)="EXTRACTIONS"
 S ADEFDA(ADEFILE,ADEIENST,1)="7110|7120|7111|7113|7112|7114|7210|7220|7230|7240|7241|7250|3221|9971|9973|9974"
 D FILE
 ;ULQ,URQ,LLQ,LRQ
 ;7471 mimics 4341
 S ADEFDA(ADEFILE,ADEIENST,.01)="PROPHY+SURGERY"
 S ADEFDA(ADEFILE,ADEIENST,1)="1110|1120|1130|4220|4240|4260|4341|4345|7471"
 D FILE
 S ADEFDA(ADEFILE,ADEIENST,.01)="ADEPHY-4"
 S ADEFDA(ADEFILE,ADEIENST,1)="4341|4345|4910|4920|4999|7471"
 D FILE
 S ADEFDA(ADEFILE,ADEIENST,.01)="HYG/THER DATA ENTRY CHECK"
 S ADEFDA(ADEFILE,ADEIENST,1)="1350|1351|1355|1110|1120|1130|4910|1201|1205|0210|0270|0272|0274|0275|0220|0230|0240|1310|1330|1331|1336|1338|1335|0470|0330|1204|1203|1207|1208|1340|1550|4341|4345|7471"
 D FILE
 S ADEFDA(ADEFILE,ADEIENST,.01)="INCREMENTS"
 S ADEFDA(ADEFILE,ADEIENST,1)="Y1|Y2|Y3|Y4|Y5|Y6"
 D FILE
 S ADEFDA(ADEFILE,ADEIENST,.01)="QUADRANTS"
 S ADEFDA(ADEFILE,ADEIENST,1)="ULQ|URQ|LLQ|LRQ"
 D FILE
 D KILL
 Q
 ;
OPSITE ;
 S ADEFILE=9002010.03,ADEIENST="?+1,",ADEWPFLD=1101,ADETXT=0
 F ADEOP=1:1:6 S ADEFDA(ADEFILE,ADEIENST,.01)="INCREMENT,"_$P("ONE^TWO^THREE^FOUR^FIVE^SIX","^",ADEOP),ADEFDA(ADEFILE,ADEIENST,8801)="Y"_ADEOP D FILE
 D KILL K ADEOP
 Q
 ;
FILE ;
 D UPDATE^DIE(,"ADEFDA","ADEIEN","ADEEMSG")
 K ADEFDA,ADEEMSG
 ; get the IEN assigned
 ;IHS/SET/HMW 6-24-2003 **14** Replaced line below with following line to test for ADEIEN(1)
 ;I ADETXT,ADETXT>1!(ADETEXT(1)'="") D WP^DIE(ADEFILE,ADEIEN(1)_",",ADEWPFLD,,"ADETEXT","ADEEMSG")
 I +$G(ADEIEN(1)),ADETXT,ADETXT>1!(ADETEXT(1)'="") D WP^DIE(ADEFILE,ADEIEN(1)_",",ADEWPFLD,,"ADETEXT","ADEEMSG")
 K ADETEXT,ADEEMSG,ADEIEN
 Q
 ;
KILL ;
 K ADEADA,ADECNT,ADECODE,ADEDESC,ADEDONE,ADEFDA,ADEFILE,ADEICD9,ADEID,ADEIENST,ADELEV,ADEMIN,ADEMNE,ADERLN,ADERN,ADERTN,ADESYN,ADETDT,ADETEXT,ADETXT,ADEUSE,ADEWPFLD,DA,DIC,DIE,DR,X
 Q