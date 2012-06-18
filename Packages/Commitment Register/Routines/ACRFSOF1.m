ACRFSOF1 ;IHS/OIRM/DSD/THL,AEF - STATUS OF FUNDS REPORT;  [ 09/23/2005   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;**19**;NOV 05, 2001
 ;;CONTINUATION OF ACRFSOF
DISPLAY ;EP;TO DISPLAY SOF
 I "^CAN^AREA^LCOD^"'[(U_ACRSOFT_U) D
 .S ACRDEPT=$S(ACRSOFT="G":$P(^ACRALC(ACRZDA,0),U,12),ACRSOFT="F":$P(^ACRLOCB(ACRZDA,0),U,5),ACRSOFT="H":$P(^ACRALW(ACRZDA,0),U,12))
 .S ACRDT=$S(ACRSOFT="G":^ACRALC(ACRZDA,"DT"),ACRSOFT="F":^ACRLOCB(ACRZDA,"DT"),ACRSOFT="H":^ACRALW(ACRZDA,"DT"))
 .S ACRFY=$P(ACRDT,U)
 .S ACRALWDA=$P(ACRDT,U,5)
 .S ACRSSADA=$P(ACRDT,U,8)
 .S ACRSSA=$P(^AUTTSSA(ACRSSADA,0),U,2)_" ("_$P(^(0),U)_")"
 Q
H1 ;EP;
 Q:$D(ACRQUIT)!$D(ACROUT)
 I $E(IOST,1,2)="C-" W @IOF
 W !?14,"STATUS OF FUNDS SUMMARY"
 S Y=DT
 X ^DD("DD")
 W ?50,"DATE: ",Y
 I ACRSOFT="CAN"!$D(ACRCANDA) D
 .S:ACRSOFT="CAN" ACRCANDA=ACRZDA
 .W !!,"Report for CAN:  ",$P(^AUTTCAN(ACRCANDA,0),U)
 I ACRSOFT="AREA"!$D(ACRADA) D
 .S:ACRSOFT="AREA" ACRADA=ACRZDA
 .W !!,"Report for AREA:  ",$P(^AUTTAREA(+^ACRSYS(ACRADA,0),0),U)
 I ACRSOFT="LCOD"!$D(ACRLCDA) D
 .S:ACRSOFT="LCOD" ACRLCDA=ACRZDA
 .W !!,"Report for LOCATION:  ",$P(^AUTTLCOD(ACRLCDA,0),U)
 I "^CAN^AREA^LCOD^"'[(U_ACRSOFT_U) D
 .W !?14,"-----------------------"
 .W !,"SUB-SUB ACT..: ",ACRSSA
 .W ?60,"ALLOWANCE: ",$P(^AUTTALLW(ACRALWDA,0),U)
 .W:ACRSOFT="F" !,"DEPARTMENT...: "
 .W:ACRSOFT="G" !,"SUB-ALLOWANCE: "
 .W:ACRSOFT="H" !,"ALLOWANCE....: "
 .W $E($S(ACRSOFT="F":$P(^AUTTPRG(ACRDEPT,0),U),1:ACRDEPT),1,25)
 .W " (ACCT ID "_ACRZDA_")"
 .W ?60,"FY.......: ",ACRFY
H11 W $$DASH^ACRFMENU
 Q
H2 D H3
 W !,"OBJECT"
 W ?27,"OBLIGATIONS"
 W ?46,"PENDING"
 W !,"CLASS"
 W ?29,"TO DATE"
 W ?44,"OBLIGATIONS"
H3 W !,"------"
 W ?25,"---------------"
 W ?42,"---------------"
 W ?59,"---------------"
 Q
CAN ;EP;TO SELECT CAN FOR SOF
 S DIC="^AUTTCAN("
 S DIC(0)="AEMQ"
 S DIC("A")="Which CAN NO.: "
 W !
 D DIC^ACRFDIC
 K DIC
 I +Y<1 S ACRQUIT="" Q
 S ACRZDA=+Y
 D FY
 Q
C1 ;EP;
 S DIR(0)="YO"
 S DIR("A")="Print report for a specific CAN"
 S DIR("B")="NO"
 K ACRCANDA
 W !
 D DIR^ACRFDIC
 Q:$D(ACRQUIT)!$D(ACROUT)
 I ACRY=1 D  Q:$D(ACRQUIT)!$D(ACROUT)
 .S ACRZZDA=ACRZDA
 .D CAN
 .Q:$D(ACRQUIT)!$D(ACROUT)
 .S ACRCANDA=ACRZDA,ACRZDA=ACRZZDA
 .K ACRZZDA
 Q
SS1 ;EP;
 D DISPLAY
 D H1
 S ACR=""
 D:'$D(ACRDTAIL) SS3
 I '$D(ACRSUBO) S ACRGREF="^TMP(""ACRSOF"",$J)"
 E  S ACRGREF="^TMP(""ACRSOF"",$J,""SUB"")"
 F  S ACR=$O(@ACRGREF@(ACR)) Q:ACR=""!$D(ACRQUIT)!$D(ACROUT)  D
 .I $D(ACRDTAIL) D SS2
 .Q:$D(ACRQUIT)!$D(ACROUT)
 .S:'$D(ACRSUBO) ACR0=^TMP("ACRSOF",$J,ACR)
 .S:$D(ACRSUBO) ACR0=^TMP("ACRSOF",$J,"SUB",ACR)
 .F ACRI=1:1:4,25 S @("ACR"_ACRI)=$P(ACR0,U,ACRI)
 .I $D(ACRDTAIL),'$D(ACRDTL1) D
 ..W $$DASH^ACRFMENU
 ..Q
 .I '$D(ACRDTL1) D
 ..W:'$D(ACRDTAIL) !,"OBJECT CODE:  ",ACR
 ..W:$D(ACRDTAIL) !
 ..W ?30," TOTALS"
 ..W ?40,$J(ACR25,8)
 ..W ?50,$J($FN(ACR1,"P,",2),15)
 ..W ?64,$J($FN(ACR2,"P,",2),15)
 ..W:ION<81 !?65
 ..W:ION>80 ?80
 ..W $J($FN($S(ACR4>ACR3:ACR4,1:ACR3),"P,",2),15)
 .S ACRREQ=ACRREQ+ACR1
 .S ACROBL=ACROBL+ACR2
 .S ACRSPT=ACRSPT+$S(ACR4>ACR3:ACR4,1:ACR3)
 .S ACRTOT=ACRTOT+ACR25
 .I $Y>(IOSL-5) D
 ..D PAUSE^ACRFWARN
 ..W @IOF
 ..D H1
 Q:$D(ACRQUIT)!$D(ACROUT)
 W $$DASH^ACRFMENU
 W ?30," TOTALS:  ",ACR
 W ?40,$J(ACRTOT,8)
 W ?50,$J($FN(ACRREQ,"P,",2),15)
 W ?64,$J($FN(ACROBL,"P,",2),15)
 W:ION<81 !?65
 W:ION>80 ?80
 W $J($FN(ACRSPT,"P,",2),15)
 I $G(ACRBUD) D
 .W !,"TOTAL ALLOWANCE: ",$J($FN(ACRBUD,"P,",2),15)
 .W ?37,"REMAINING:"
 .W ?50,$J($FN(ACRBUD-ACRREQ,"P,",2),15)
 .W ?64,$J($FN(ACRBUD-ACROBL,"P,",2),15)
 I $G(ACRBUD) D
 .W:ION<81 !?65
 .W:ION>80 ?80
 .W $J($FN(ACRBUD-ACRSPT,"P,",2),15)
 Q
SS2 S ACRX=""
 D SS3
 F  S ACRX=$O(^TMP("ACRSOF",$J,ACR,ACRX)) Q:ACRX=""!$D(ACRQUIT)!$D(ACROUT)  S ACR0=^(ACRX) D
 .F ACRI=1:1:6,11,21,22 S @("ACR"_ACRI)=$P(ACR0,U,ACRI)
 .W !,$E(ACR1,4,7),$E(ACR1,2,3)
 .W ?7,ACR2
 .W ?22,ACR3
 .W ?50,$J($FN(ACR5,"P,",2),15)
 .W ?64,$J($FN(ACR6,"P,",2),15)
 .I ION>80 W ?80,$J($FN($S(ACR21>ACR22:ACR21,1:ACR22),"P,",2),15)
 .I ACR11]""!($P(ACR0,U,10)]"")!(ION<81) W !
 .I ACR11]"" W $E(ACR11,4,7),$E(ACR11,2,3)
 .I $P(ACR0,U,10)]"" W ?7,$P(ACR0,U,10)
 .;I ACR4 W ?22,$E($P(^VA(200,ACR4,0),U),1,10)  ;ACR*2.1*19.02 IM16848
 .I ACR4 W ?22,$E($$NAME2^ACRFUTL1(ACR4),1,10)  ;ACR*2.1*19.02 IM16848
 .I ION<81 W ?65,$J($FN($S(ACR21>ACR22:ACR21,1:ACR22),"P,",2),15)
 .I $Y>(IOSL-5) D
 ..D PAUSE^ACRFWARN
 ..W @IOF
 ..I '$D(ACRQUIT) D
 ...D H1
 ...D SS3
 Q
SS3 I $D(ACRDTAIL) D
 .I '$D(ACRDTL1) D  I 1
 ..W !
 ..W "OBJECT CODE:  ",ACR
 .W !,$S($E(ACR,1,2)'=21:"DATE",1:"BEGIN")
 .W ?7,"DOCUMENT NO."
 .W:$E(ACR,1,2)'=21 ?22,"IDENTIFIER/INITIATOR"
 .W:$E(ACR,1,2)=21 ?22,"PURPOSE OF TRAVEL"
 .W ?53,"REQUESTED",?68,"OBLIGATED"
 I '$D(ACRDTAIL) D
 .W !?40,"NUMBER OF",?53,"REQUESTED",?68,"OBLIGATED"
 I ION>80 D
 .W ?40,"DOCUMENTS",?84,"SPENT"
 I ION<81 D
 .W !
 .W:'$D(ACRDTAIL) ?40,"DOCUMENTS"
 .W ?68,"SPENT"
 W $$DASH^ACRFMENU
 Q
SS5 ;EP;TO REPORT BY SUB-OBJECT CODE
 D DISPLAY
 D H1
 S ACR=""
 D SS3
 F  S ACR=$O(^TMP("ACRSOF",$J,"SUB",ACR)) Q:ACR=""!$D(ACRQUIT)!$D(ACROUT)  D
 .S ACR0=^TMP("ACRSOF",$J,"SUB",ACR)
 .F ACRI=1:1:4,25 S @("ACR"_ACRI)=$P(ACR0,U,ACRI)
 .I $D(ACRDTAIL),'$D(ACRDTL1) D
 ..W $$DASH^ACRFMENU
 ..Q
 .I '$D(ACRDTL1) D
 ..W:'$D(ACRDTAIL) !,"OBJECT CODE:  ",ACR
 ..W:$D(ACRDTAIL) !
 ..W ?30," TOTALS"
 ..W ?40,$J(ACR25,8)
 ..W ?50,$J($FN(ACR1,"P,",2),15)
 ..W ?64,$J($FN(ACR2,"P,",2),15)
 ..W:ION<81 !?65
 ..W:ION>80 ?80
 ..W $J($FN($S(ACR4>ACR3:ACR4,1:ACR3),"P,",2),15)
 .S ACRREQ=ACRREQ+ACR1
 .S ACROBL=ACROBL+ACR2
 .S ACRSPT=ACRSPT+$S(ACR4>ACR3:ACR4,1:ACR3)
 .S ACRTOT=ACRTOT+ACR25
 .I $Y>(IOSL-5) D
 ..D PAUSE^ACRFWARN
 ..W @IOF
 ..D H1
 Q:$D(ACRQUIT)!$D(ACROUT)
 W $$DASH^ACRFMENU
 W !?40,"TOTALS:  ",ACR
 W ?30," TOTALS:  ",ACR
 W ?40,$J(ACRTOT,8)
 W ?50,$J($FN(ACRREQ,"P,",2),15)
 W ?64,$J($FN(ACROBL,"P,",2),15)
 W:ION<81 !?65
 W:ION>80 ?80
 W $J($FN(ACRSPT,"P,",2),15)
 I $G(ACRBUD) D
 .W !,"TOTAL ALLOWANCE: ",$J($FN(ACRBUD,"P,",2),15)
 .W ?37,"REMAINING:"
 .W ?50,$J($FN(ACRBUD-ACRREQ,"P,",2),15)
 .W ?64,$J($FN(ACRBUD-ACROBL,"P,",2),15)
 I $G(ACRBUD) D
 .W:ION<81 !?65
 .W:ION>80 ?80
 .W $J($FN(ACRBUD-ACRSPT,"P,",2),15)
 Q
FY ;EP - SELECT FISCAL YEAR
 S DIR(0)="NOA^1000:9999"
 S DIR("A")="Fiscal Year..: "
 S DIR("B")=$S(+$E(DT,4,5)>9:DT\10000+1,1:DT\10000)+1700
 W !
 D DIR^ACRFDIC
 I 'Y S ACRQUIT="" Q
 S ACRFY=Y
 Q
LCOD ;EP;TO SELECT LOCATION CODE
 S DIC="^AUTTLCOD("
 S DIC(0)="AEMQZ"
 S DIC("A")="Location Code: "
 W !
 D DIC^ACRFDIC
 I +Y<1 S ACRQUIT="" Q
 S (ACRLCDA,ACRZDA)=+Y
 Q