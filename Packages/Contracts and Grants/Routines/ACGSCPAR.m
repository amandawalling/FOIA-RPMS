ACGSCPAR ;IHS/OIRM/DSD/THL,AEF - UTILITY TO PRINT THE COMPETITIVE PROCUREMENT ACTIVITY REPORT; [ 03/27/2000   2:22 PM ]
 ;;2.0t1;CONTRACT INFORMATION SYSTEM;;FEB 16, 2000
 ;;UTILITY TO PRINT THE COMPETITIVE PROCUREMENT ACTIVITY REPORT
 ;;modified for y2k;mlp;01/31/2000
EN S:'$D(ACGPARA) ACGPARA=^ACGPARA(ACGPODA,0),ACG4=$P(ACGPARA,U,3)
 D EN1
EXIT K ACG,ACG1,ACG4,ACG4X,ACG19,ACG26,ACG27,ACGFY,ACGQT,ACGT,ACGX,ACGQIT,ACGTODAY,ACGBEG,ACGBEGIN,ACGEND,ACGRDA,ZTRTN,ZTDESC,ACGQUIT
 Q
EN1 K ACGQUIT
 D QT
 I $D(ACGQUIT) K ACGQUIT Q
 I ACG4=236 D CO Q:$D(ACGQUIT)  I 1
 E  S (ACG4,ACG4X)=ACG4
ZIS S ZTRTN="REPORT^ACGSCPAR",ZTDESC="COMP. PROCUREMENT ACT. REPORT"
 D ^ACGSZIS
 Q:$D(ACGQUIT)
REPORT I '$D(ZTQUEUED) S (ACGIOP,IOP)=ION D ^%ZIS I POP S ACGQUIT="" Q
 U IO
 I ACG4X=88 F ACG4=102,121,161,235,239,241:1:249,284,285 K ACGQUIT D R1
 G:ACG4X=88 DONE
R1 G:$D(ACGQUIT) DONE
 D BEGIN,HEAD,^ACGSCPA1
 W:$D(IOF) @IOF
 D:ACG4X'=88 DONE
 Q
DONE D DONE^ACGSZIS
 Q
HEAD ;EP;TO PRINT HEADER
 W:$D(IOF) @IOF
 S ACGT="ACGT("_ACG4_")"
 S Y=DT X ^DD("DD") S ACGTODAY=Y
 W !?20,"COMPETITIVE PROCUREMENT ACTIVITY REPORT",!!,"PERIOD BEGINNING DATE: ",$E(ACGBEGIN,2,7),!,"PERIOD ENDING DATE...: ",$E(ACGEND,2,7),!,"CURRENT DATE.........: ",ACGTODAY,!,"PROCURING ACTIVITY...: "
TEMP W $S($D(^ACGPO("C",ACG4)):ACG4_" "_$P(^ACGPO($O(^ACGPO("C",ACG4,0)),0),U),1:"COMBINED REPORT")
 W !!,"     (1)      |    (2)     |    (3)     |    (4)     |    (5)     |    (6)"
 W !,"     P.L.     |    BUY     |   SB/LSA   |    8(A)    |    ALL     |"
 W !,"    93-638    |   INDIAN   | SET ASIDES |   AWARD    |   OTHERS   |   TOTALS"
 W !,"--------------|------------|------------|------------|------------|-------------"
 W !," NO.          | NO.        | NO.        | NO.        | NO.        | NO."
 W !,"      AMOUNT  |    AMOUNT  |    AMOUNT  |    AMOUNT  |    AMOUNT  |   AMOUNT"
 W !,"--------------|------------|------------|------------|------------|-------------"
 Q
BEGIN K ACGT
 F ACG=50,56,58:1:63 F ACG1="C","M","O","T","Q" S ACGT(ACG4,ACG,ACG1)=0
 F ACG="CCT","CMT","COT","CT","NCCT","NCMT","NCOT","NCT","T","Q" S ACGT(ACG4,ACG)=0
 S ACGBEG=ACGBEGIN,ACG26X=0
 F  S ACGBEG=$O(^ACGS("T",ACGBEG)) Q:'ACGBEG!(ACGBEG>ACGEND)  D B1
 Q
B1 S ACGRDA=0
 F  S ACGRDA=$O(^ACGS("T",ACGBEG,ACGRDA)) Q:'ACGRDA  I $D(^ACGS(ACGRDA,"DT")),$D(^("DT1")) D
 .I ACG4X'=99 Q:$P(^ACGS(ACGRDA,"DT"),U,4)'=ACG4
 .S ACG1=$P(^ACGS(ACGRDA,"DT"),U),ACG19=$P(^("DT"),U,19),ACG26=$P(^("DT1"),U,5),ACG27=$P(^("DT1"),U,6),ACG26X=ACG26X+ACG26
 .Q:'ACG1
 .Q:ACG1=15!(ACG1=17)
 .I 'ACG19 S ACG19=56
 .S ACG19=$S(ACG19<56:50,ACG19=56!(ACG19=57):56,1:ACG19),ACG27=$S(ACG27:$P(^ACGPPC(ACG27,0),U),1:""),ACG1=$P(^ACGTPA(ACG1,0),U),ACG1=$S("DIA"[$E(ACG1):"C","RCM"[$E(ACG1):"M",1:"O")
 .S ACGX=$S(ACG19<60:"C",1:"NC")_ACG1_"T",ACG=$S(ACG19<60:"C",1:"NC")_"T" F ACG=ACG,ACGX,"T" S $P(ACGT(ACG4,ACG),U)=$P(ACGT(ACG4,ACG),U)+ACG26,$P(ACGT(ACG4,ACG),U,2)=$P(ACGT(ACG4,ACG),U,2)+1
 .I $E(ACG27)="Q" S ACG="Q",$P(ACGT(ACG4,ACG),U)=$P(ACGT(ACG4,ACG),U)+ACG26,$P(ACGT(ACG4,ACG),U,2)=$P(ACGT(ACG4,ACG),U,2)+1
 .S:$E(ACG27)="Q" $P(ACGT(ACG4,ACG19,"Q"),U)=$P(ACGT(ACG4,ACG19,"Q"),U)+ACG26,$P(ACGT(ACG4,ACG19,"Q"),U,2)=$P(ACGT(ACG4,ACG19,"Q"),U,2)+1
 .F ACG1=ACG1,"T" S $P(ACGT(ACG4,ACG19,ACG1),U)=$P(ACGT(ACG4,ACG19,ACG1),U)+ACG26,$P(ACGT(ACG4,ACG19,ACG1),U,2)=$P(ACGT(ACG4,ACG19,ACG1),U,2)+1
 Q
QT ;EP;TO DETERMINE DATE RANGE FOR QUARTERS
 S DIR(0)="SO^1:FIRST;2:SECOND;3:THIRD;4:FOURTH;5:YEAR-TO-DATE",DIR("A")="Quarter....",DIR("?")="Enter the quarter for the report"
 W !
 D DIR^ACGSDIC
 Q:$D(ACGQUIT)
 S ACGQT=+Y
 I ACGQT=5 S ACGQTX=5,ACGQT=1
 D FY^ACGSEXP
 I $D(ACGQTX) S ACGQT=5 K ACGQTX
 Q:$D(ACGQUIT)
PERIOD S:ACGQT=1!(ACGQT=5) ACGFY=ACGFY-1
 ;S ACGBEGIN=2_ACGFY_$S(ACGQT=1!(ACGQT=5):10,ACGQT=2:"01",ACGQT=3:"04",1:"07")_"01",ACGEND=2_ACGFY_$S(ACGQT=1:12,ACGQT=2:"03",ACGQT=3:"06",1:"09")_$S(ACGQT<3:31,1:30),ACGBEGIN=ACGBEGIN-1
 S ACGBEGIN=ACGFY_$S(ACGQT=1!(ACGQT=5):10,ACGQT=2:"01",ACGQT=3:"04",1:"07")_"01",ACGEND=ACGFY_$S(ACGQT=1:12,ACGQT=2:"03",ACGQT=3:"06",1:"09")_$S(ACGQT<3:31,1:30),ACGBEGIN=ACGBEGIN-1 ;y2k;mlp
 ;S:ACGQT=5 ACGEND=2_(ACGFY+1)_"0930"
 S:ACGQT=5 ACGEND=(ACGFY+1)_"0930" ;y2k;mlp
 Q
CO ;EP
 S DIR(0)="SO^102:OES Seattle;121:OES New York;161:OES Dallas;235:California;236:Headquarters;239:Bemidji;241:Aberdeen;242:Albuquerque;243:Alaska;244:Billings;245:Navajo;246:Oklahoma;247:Phoenix;248:Portland;249:Tucson"
 S DIR(0)=DIR(0)_";284:Perry Point;285:Nashville;88:Each Office;99:Summary Report",DIR("A")="Contracting Office",DIR("?")="Enter the number of the Contracting office"
 D DIR^ACGSDIC
 Q:$D(ACGQUIT)
 S (ACG4X,ACG4)=+Y
 Q
DIR D ^DIR S:$D(DIRUT) ACGQUIT="" K DIR,DIRUT,DUOUT,DTOUT Q
 ;