BDMDM3 ; IHS/CMI/LAB -CONTINUATION OF DM AUDIT RETRIEVAL ROUTINE ;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**2**;JUN 14, 2007
 ;IHS/CMI/LAB - patch 4 new imm package
 ;
EN ; - EP - from ^BDMDM1
 ;
 F BDMI=1:1 Q:$T(@BDMI)=""  K BDMX S BDMY="BDM(" D @BDMI K BDM
 Q
1 ;
EDUC S BDMX=BDMPD_"^EDUC [DM AUDIT DIABETES EDUC TOPICS"_BDMDATE S BDMER=$$START1^APCLDF(BDMX,BDMY)
 I BDMER G X5
 NEW %
 I '$D(BDM(1)) F %=15.1,15.2,15.3 S ^TMP("BDM",$J,%)="NO"
 I '$D(BDM(1)) G X5
 S %=0 F  S %=$O(BDM(%)) Q:'%  S BDMDIET($P(BDM(%),U,3),%)=""
 S %="" F  S %=$O(BDMDIET(%)) Q:%=""!($D(^TMP("BDM",$J,15.3)))  I %'="DM-DIET"&(%'="DM-NUTRITION")&(%'="DM-EXCERCISE") S ^TMP("BDM",$J,15.3)="YES"
 I '$D(^TMP("BDM",$J,15.3)) S ^TMP("BDM",$J,15.3)="NO"
 I $D(BDMDIET("DM-DIET"))!($D(BDMDIET("DM-NUTRITION"))) D  I 1
 . S BDMPCL=$O(^DIC(7,"D",29,""))
 . S BDML=0 F  S BDML=$O(^TMP("BDMDM VST",$J,BDML)) Q:'BDML!($G(^TMP("BDM",$J,15.1))="RD and OTHER")  S BDMPRD=0 F  S BDMPRD=$O(^AUPNVPRV("AD",BDML,BDMPRD)) Q:'BDMPRD!($G(^TMP("BDM",$J,15.1))="RD and OTHER")  D
 .. S BDMPRV=$P(^AUPNVPRV(BDMPRD,0),U)
 .. I BDMPCL]"",$S($P(^DD(9000010.06,.01,0),U,2)[200:$$PROVCLS^XBFUNC1(BDMPRV,"I"),1:$P(^DIC(6,BDMPRV,0),U,4))=BDMPCL S ^TMP("BDM",$J,15.1)=$S($G(^TMP("BDM",$J,15.1))="OTHER":"RD and OTHER",1:"RD")
 .. E  S ^TMP("BDM",$J,15.1)="OTHER"
 E  S ^TMP("BDM",$J,15.1)="NO"
 I $D(BDMDIET("DM-EXERCISE")) S ^TMP("BDM",$J,15.2)="YES"
 E  S ^TMP("BDM",$J,15.2)="NO"
X5 I BDMER S ^TMP("BDM",$J,15.1)="*** SCRIPT ERROR IN EDUC^BDMDM3.  CONTACT SITE MANAGER" Q
 I BDMCUML S BDMGOT1=$S(^TMP("BDM",$J,15.1)="NO":0,1:1),BDMSUB=25 D CUML^BDMDM1
 I BDMCUML S BDMGOT1=$S(^TMP("BDM",$J,15.2)="NO":0,1:1),BDMSUB=26 D CUML^BDMDM1
 I BDMCUML S BDMGOT1=$S(^TMP("BDM",$J,15.3)="NO":0,1:1),BDMSUB=27 D CUML^BDMDM1
 K BDMDIET,BDM
 Q
2 ;
THERAPY ;
 S X=BDMEDT,%DT="" D ^%DT S X1=$S(Y>DT:DT,1:Y),X2=-122 D C^%DTC S Y=X D DD^%DT S BDMHTNE=Y
 S BDMX=BDMPD_"^MEDS [DM AUDIT INSULIN DRUGS"_";DURING "_BDMHTNE_"-"_BDMEDT S BDMER=$$START1^APCLDF(BDMX,BDMY)
 I BDMER G X10
 S ^TMP("BDM",$J,30)=$S($D(BDM(1)):"Insulin",1:"") K BDM
 S BDMX=BDMPD_"^MEDS [DM AUDIT ORAL HYPOGLYCEMICS"_";DURING "_BDMHTNE_"-"_BDMEDT S BDMER=$$START1^APCLDF(BDMX,BDMY)
 I BDMER G X10
 S ^(30)=$S($D(BDM(1))&(^TMP("BDM",$J,30)]""):"Oral Agent & Insulin",'$D(BDM(1))&(^(30)]""):^(30),$D(BDM(1))&(^(30)=""):"Oral Agent",1:"Diet Alone")
 I BDMCUML S BDMTX=^TMP("BDM",$J,30) D
 . I BDMTX="Oral Agent & Insulin" S BDMGOT1=1,BDMSUB=6 D CUML^BDMDM1 S BDMGOT1=0 F BDMSUB=3,4,5 D CUML^BDMDM1
 . I BDMTX="Oral Agent" S BDMGOT1=1,BDMSUB=5 D CUML^BDMDM1 S BDMGOT1=0 F BDMSUB=3,4,6 D CUML^BDMDM1
 . I BDMTX="Insulin" S BDMGOT1=1,BDMSUB=4 D CUML^BDMDM1 S BDMGOT1=0 F BDMSUB=3,5,6 D CUML^BDMDM1
 . I BDMTX="Diet Alone" S BDMGOT1=1,BDMSUB=3 D CUML^BDMDM1 S BDMGOT1=0 F BDMSUB=4:1:6 D CUML^BDMDM1
 . K BDMTX
X10 I BDMER S ^TMP("BDM",$J,30)="*** SCRIPT ERROR IN THERAPY^BDMDM3.  CONTACT SITE MANAGER"
 Q
 ;IHS/CMI/LAB - new sub routine for new imm package
BI() ; check to see if running new imm package
 Q $S($O(^AUTTIMM(0))>100:1,1:0)
 ;end new subroutine IHS/CMI/LAB
3 ;
FLU S BDMX=BDMPD_"^LAST IMM "_$S($$BI:88,1:12)_BDMDATE S BDMER=$$START1^APCLDF(BDMX,BDMY) ;IHS/CMI/LAB - changed line for new imm package
 I $D(BDM(1)) S Y=+BDM(1) D DD^%DT
 S ^TMP("BDM",$J,29)=$S($D(BDM(1)):"YES - "_Y,1:"NO")
 I BDMCUML S BDMGOT1=$S(^TMP("BDM",$J,29)="NO":0,1:1),BDMSUB=28 D CUML^BDMDM1
 Q
4 ;
PNEUMOVX S BDMX=BDMPD_"^LAST IMM "_$S($$BI:33,1:19) S BDMER=$$START1^APCLDF(BDMX,BDMY) ;IHS/CMI/LAB - changed line for new imm package
 S ^TMP("BDM",$J,18)=$S($D(BDM(1)):"YES",1:"NO")
 I BDMCUML S BDMGOT1=$S(^TMP("BDM",$J,18)="NO":0,1:1),BDMSUB=29 D CUML^BDMDM1
 Q
5 ;
TD S X=BDMTDTE D ^%DT S X1=Y,X2=-3652 D C^%DTC S Y=X D DD^%DT S BDMTD=";DURING "_Y_"-"_BDMTDTE
 S BDMX=BDMPD_"^LAST IMM "_$S($$BI:9,1:"02")_BDMTD S BDMER=$$START1^APCLDF(BDMX,BDMY) ;IHS/CMI/LAB -changed line for new imm package
 S ^TMP("BDM",$J,19)=$S($D(BDM(1)):"YES",1:"NO")
 I BDMCUML S BDMGOT1=$S(^TMP("BDM",$J,19)="NO":0,1:1),BDMSUB=30 D CUML^BDMDM1
 Q
6 ;
EKG ;
 Q
7 ;ACE INHIBITOR
 S BDMX=BDMPD_"^MEDS [DM AUDIT ACE INHIBITORS"_";DURING "_BDMHTNE_"-"_BDMEDT S BDMER=$$START1^APCLDF(BDMX,BDMY)
 I BDMER G X7
 S BDMGOT=0 D C7
 S ^TMP("BDM",$J,41)=$S('BDMGOT:"Does not currently use/undetermined",1:"Currently uses (is prescribed)")
 I BDMCUML D
 .I BDMGOT S BDMGOT1=1,BDMSUB=80 D CUML^BDMDM1 S BDMGOT1=0,BDMSUB=82 D CUML^BDMDM1
 .I 'BDMGOT S BDMGOT1=0,BDMSUB=80 D CUML^BDMDM1 S BDMGOT1=1,BDMSUB=82 D CUML^BDMDM1
 .Q
X7 ;XIT ACE 7
 I BDMER S ^TMP("BDM",$J,41)="ACE INHIBITOR TAXONOMY MISSING"
 Q
C7 ;check for currently prescribed
 S BDMX=0 F  S BDMX=$O(BDM(BDMX)) Q:BDMX'=+BDMX!(BDMGOT)  D
 .S BDMVMED=+$P(BDM(BDMX),U,4),BDMDAYS=$P(^AUPNVMED(BDMVMED,0),U,7),BDMDP=$P(BDM(BDMX),U)
 .Q:'BDMDAYS
 .S B=$$FMADD^XLFDT(BDMDP,BDMDAYS)
 .I B'<BDMUED S BDMGOT=1
 .Q
 Q