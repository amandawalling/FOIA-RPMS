BDMDM1A ; IHS/CMI/LAB -CONTINUATION OF BDMDM1 FOR DM AUDIT DATA FETCHING ;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**2**;JUN 14, 2007
 ;
EN ; - EP - from ^BDMDM1
 ;
 F BDMI=1:1 Q:$T(@BDMI)=""  K BDMX S BDMY="BDM(" D @BDMI K BDM
 Q
 ;
1 ;
WTTAKEN S BDMMEAS=$O(^AUTTMSR("B","WT","")) D TAKEN
 S ^TMP("BDM",$J,4)=BDMMEAS
 K BDMMEAS
 I BDMCUML S BDMGOT1=$S(^TMP("BDM",$J,4)["YES":1,1:0),BDMSUB=10 D CUML^BDMDM1
 Q
2 ;
LASTWT S BDMW="" S BDMX=BDMPD_"^LAST 24 MEAS WT" S BDMER=$$START1^APCLDF(BDMX,BDMY)
 S BDMV221=$O(^ICD9("BA","V22.1 ",""))
 F BDMN=1:1 Q:'$D(BDM(BDMN))!$D(^TMP("BDM",$J,5))  S BDMZ=$P(BDM(BDMN),U,5) S BDMD=0 F  S BDMD=$O(^AUPNVPOV("AD",BDMZ,BDMD)) Q:'BDMD!$D(^TMP("BDM",$J,5))  D
 . I $P(^AUPNVPOV(BDMD,0),U)'=BDMV221 S BDMW=$P(BDM(BDMN),U,2),^TMP("BDM",$J,5)=$P(BDM(BDMN),U,2)_" lbs",Y=$P(BDM(BDMN),U) D DD^%DT S ^TMP("BDM",$J,33)=Y
 .Q
 I '$D(^TMP("BDM",$J,5)) S ^(5)="NO WT AVAILABLE",^TMP("BDM",$J,33.1)="" I BDMCUML S BDMSUB=54,BDMGOT1=1 D CUML^BDMDM1 S BDMGOT1=0 S BDMSUB=48 D CUML^BDMDM1 S BDMSUB=49,BDMGOT1=0 D CUML^BDMDM1 G X2
 I '$G(BDMCUML) G X2
 S H=BDMHTKI I 'H S ^TMP("BDM",$J,33.1)="",BDMSUB=54,BDMGOT1=1 D CUML^BDMDM1 S BDMSUB=48,BDMGOT1=0 D CUML^BDMDM1 S BDMSUB=49,BDMGOT1=0 D CUML^BDMDM1 G X2
 S BDMW=BDMW*.4536,H=((H*.0254)*(H*.0254)),B=BDMW/H,^TMP("BDM",$J,33.1)=$J(B,4,1)
 I $$SEX^AUPNPAT(BDMPD)="M"&(B>31.0)!($$SEX^AUPNPAT(BDMPD)="F"&(B>32.2)) S BDMSUB=49,BDMGOT1=1 D CUML^BDMDM1 S BDMSUB=54,BDMGOT1=0 D CUML^BDMDM1 S BDMGOT1=1,BDMSUB=48 D CUML^BDMDM1 G X2
 I $$SEX^AUPNPAT(BDMPD)="M"&(B>27.7)!($$SEX^AUPNPAT(BDMPD)="F"&(B>27.2)) S BDMSUB=48,BDMGOT1=1 D CUML^BDMDM1 S BDMSUB=54,BDMGOT1=0 D CUML^BDMDM1 S BDMSUB=49,BDMGOT1=0 D CUML^BDMDM1 G X2
 ;I $E(BDMRWPT)="*" S BDMSUB=54,BDMGOT1=1 D CUML^BDMDM1 S BDMGOT1=0,BDMSUB=48 D CUML^BDMDM1 S BDMSUB=49 D CUML^BDMDM1 G X2
 ;I +BDMRWPT>154 S BDMSUB=49,BDMGOT1=1 D CUML^BDMDM1 S BDMGOT1=0,BDMSUB=48 D CUML^BDMDM1 S BDMSUB=54 D CUML^BDMDM1 G X2
 ;I +BDMRWPT>125 S BDMSUB=48,BDMGOT1=1 D CUML^BDMDM1 S BDMGOT1=0,BDMSUB=49 D CUML^BDMDM1 S BDMSUB=54 D CUML^BDMDM1 G X2
 F BDMSUB=48,49,54 S BDMGOT1=0 D CUML^BDMDM1
X2 ;
 K BDMSUB,BDMGOT1,BDMRWPT,BDMZ,BDMN,BDMD,BDMV221,BDMX
 Q
3 ;
BPTAKEN S BDMMEAS=$O(^AUTTMSR("B","BP","")) D TAKEN
 S ^TMP("BDM",$J,6)=BDMMEAS
 I BDMCUML S BDMGOT1=$S(^TMP("BDM",$J,6)["YES":1,1:0),BDMSUB=11 D CUML^BDMDM1
 K BDMMEAS
 Q
 ;
TAKEN ; Is BP or WT taken 75% of time during the last year's diabetic visits 
 S (BDMYES,BDMNTOT)=0 F BDML=1:1:BDMTOT Q:'$D(^TMP("BDMDM DXVS",$J,BDML))  D
 .S BDMVDFN=^TMP("BDMDM DXVS",$J,BDML)
 .S BDMNTOT=BDMNTOT+1
 .S (BDMMDFN,BDMFOUN)=0 F  S BDMMDFN=$O(^AUPNVMSR("AD",BDMVDFN,BDMMDFN)) Q:'BDMMDFN!(BDMFOUN)  D
 ..I BDMMDFN,+^AUPNVMSR(BDMMDFN,0)=BDMMEAS S BDMYES=BDMYES+1,BDMFOUN=1 Q
 ..Q
 ;***
 I 'BDMNTOT S BDMMEAS="No DM visits (01,06,28 clinics only)" G TAKENX
 NEW V
 S V=(BDMYES/BDMNTOT)*100,V=$J(V,2,0)
 S BDMMEAS=$S(V<75:"NO",1:"YES")_" - "_V_"%"
 K BDMNTOT
TAKENX Q
 ;
4 ;
HTNDX ;
 D HTNPLDX I $D(BDM(1)) G X
 S X=BDMEDT,%DT="" D ^%DT S X1=$S(Y>DT:DT,1:Y) S BDMHTNE=Y,X2=1 D C^%DTC S BDMHTNE=($E(X,1,3)-5)_$E(X,4,7) S Y=BDMHTNE D DD^%DT S BDMHTNE=Y
 S BDMX=BDMPD_"^LAST DX [SURVEILLANCE HYPERTENSION;DURING "_BDMHTNE_"-"_BDMEDT S BDMER=$$START1^APCLDF(BDMX,BDMY) G:BDMER X S ^TMP("BDM",$J,7)=$S($D(BDM(1)):"YES",1:"NO")
X I BDMER S ^TMP("BDM",$J,7)="*** SCRIPT ERROR IN HTNDX^BDMDM1A.  CONTACT SITE MANAGER"
 K BDM
 Q
HTNPLDX ;see if htn on problem list
 S BDMX=BDMPD_"^PROBLEM [DM AUDIT PROBLEM HTN DIAGNOSES",BDMY="BDM(" S BDMER=$$START1^APCLDF(BDMX,BDMY) G:BDMER X I $D(BDM(1)) S ^TMP("BDM",$J,7)="YES"
 Q
5 ;
BPS ;
 S BDMERCO=$O(^DIC(40.7,"C",30,"")),BDMLL=0
 S BDMX=BDMPD_"^LAST 50 MEAS BP"_BDMDATE S BDMER=$$START1^APCLDF(BDMX,BDMY) F BDML=1:1:20 Q:'$D(BDM(BDML))  S BDMBP=$P($G(BDM(BDML)),U,2)_$S($P($G(BDM(BDML)),U,2)]"":" mm HG",1:"") D
 .Q:$P(^AUPNVSIT($P(BDM(BDML),U,5),0),U,8)=BDMERCO
 .S BDMLL=BDMLL+1,^TMP("BDM",$J,8_"."_BDMLL)=BDMBP S Y=$P(BDM(BDML),U,1) D DD^%DT S ^TMP("BDM",$J,34_"."_BDMLL)=Y
 I BDMCUML,$G(^TMP("BDM",$J,8.1))]"" S (BDMSYS,BDMDIA,BDMBPS)=0 F BDML=1:1:3 Q:'$D(^TMP("BDM",$J,8_"."_BDML))  S BDMBPS=BDMBPS+1,BDMSYS=BDMSYS+^(8_"."_BDML),BDMDIA=BDMDIA+$P(^(8_"."_BDML),"/",2)
CONTROL ;
 I '$G(BDMCUML) G X5
 I $G(^TMP("BDM",$J,8.3))="" S BDMGOT1=1,BDMSUB=61 D CUML^BDMDM1 D  G X5  ;if not at least 3 bps - undocumented
 .S BDMGOT1=0 F BDMSUB=12,13,14,60 D CUML^BDMDM1
 S BDMSYS=$J((BDMSYS/BDMBPS),0,0),BDMDIA=$J((BDMDIA/BDMBPS),0,0)
 I ^TMP("BDM",$J,7)="NO",BDMSYS<140,BDMDIA<90 S BDMGOT1=1,BDMSUB=12 D CUML^BDMDM1 D  G X5
 .S BDMGOT1=0 F BDMSUB=13,14,60,61 D CUML^BDMDM1
 I ^TMP("BDM",$J,7)="YES",BDMSYS<140,BDMDIA<90 S BDMGOT1=1,BDMSUB=13 D CUML^BDMDM1 D  G X5
 .S BDMGOT1=0 F BDMSUB=12,14,60,61 D CUML^BDMDM1
 I BDMSYS>159!(BDMDIA>94) S BDMGOT1=1,BDMSUB=60 D CUML^BDMDM1 D  G X5
 .S BDMGOT1=0 F BDMSUB=12,13,14,61 D CUML^BDMDM1
 I (BDMSYS>139&(BDMSYS<160))!(BDMDIA>89&(BDMDIA<95)) S BDMGOT1=1,BDMSUB=14 D CUML^BDMDM1 D  G X5
 .S BDMGOT1=0 F BDMSUB=12,13,60,61 D CUML^BDMDM1
X5 K BDMBP,BDMBPS,BDMSYS,BDMDIA,BDMHYP
 Q
6 ;
BSTAKEN ;
 D BSTAKEN^BDMDM7
 Q
 ;