DGBTOA2 ;ALB/TT,ALB/MAC - BENEFICIARY TRAVEL OUTPUTS (Cont) ;2/21/91  15:57
 ;;5.3;Registration;;Aug 13, 1993
 ;sort by ACCT, CARrier or PATient=DGBTBY
 ;associated cross-ref =DGBTIX
START D NOW^%DTC S Y=$E(%,1,12) S VADAT("W")=Y D ^VADATE S U="^",DGBTDT=VADATE("E"),$P(DGBTCL,"=",81)="",(DGBTU,DGBTA,DGBTV,DGBT2,DGBTDV,DGBTCH,DGBTS,DGBTSD,X2,DGBTD,DGBTU,DGBTY,DGBT4,DGBTDN,DGBTI,DGBTOTX)=0 D PID^VADPT
 S DGBTIX=$S(DGBTSL="ACCT":"AC",DGBTSL="CAR":"AS",DGBTSL="TYP":"ACTP",1:"C") D SORT G:DGBTU QUIT1 I $D(^UTILITY($J)) D TOTAL^DGBTOA4 G QUIT1
 W !,"=====>NO PATIENTS FOUND"
QUIT1 D CLOSE^DGUTQ Q
 ;Loops thru the  "AC","AS","ACTP" or "C" X-ref, depending upon selected sort list
SORT F DGBTBY=0:0 S DGBTBY=$O(^DGBT(392,DGBTIX,DGBTBY)) Q:DGBTBY=""!(DGBTU)  I $D(VAUTN(DGBTBY))!(VAUTN) D DATE
 D PR^DGBTOA3 Q
DATE F DGBTD=DGBTBEG:0 S DGBTD=$O(^DGBT(392,DGBTIX,DGBTBY,DGBTD)) Q:DGBTD=""!(DGBTU)!(DGBTD>DGBTEND)  I $D(^DGBT(392,DGBTIX,DGBTBY,DGBTD)) D SET
 Q
SET ;Sets up variables and does validity checks, also sets up Utility 
 ;for individual totals
 Q:'$D(^DGBT(392,DGBTD,0))
 S DGBTK=^DGBT(392,DGBTD,0) Q:'$D(^DPT(+$P(DGBTK,U,2),0))  S DGBTO=^(0),DGBTDN=$S($P(DGBTK,U,11):$P(DGBTK,U,11),1:""),DGBTDV=$S('DGBTDN:"ZNOT SPECIFIED",1:$P(^DG(40.8,DGBTDN,0),U,1))
 Q:('VAUTD)&'$D(VAUTD(+DGBTDN))
 S DGBTB=$S($P(DGBTK,U,7):$P(^PRC(440,$P(DGBTK,U,7),0),U,1),1:""),DGBTK9=$P(DGBTK,U,9),DGBTK10=$P(DGBTK,U,10)
 S DGBTCW=$S('+$P(DGBTK,U,6):"UNKNOWN",1:$P(^DGBT(392.3,+$P(DGBTK,U,6),0),U,1)),DGBTCH=$S(+DGBTCW:+DGBTCW,1:""),DGBTC=$S(+DGBTCW:$E($P(DGBTCW," ",2,$L(DGBTCW," ")),1,15),1:"")
 S (DGBTG,DGBTXX)=0,DGBTI=$S(DGBTSL="PAT":$P(DGBTO,U,1),DGBTSL="CAR":DGBTB,1:DGBTC)
 S DGBTP=$P(DGBTO,U,1),DFN=$P(DGBTK,U,2) D PID^VADPT6 S SSN=$S(VA("PID")]"":VA("PID"),1:"UNKNOWN") D PATU:DGBTSL="PAT",ACCTU:DGBTSL'="PAT"
 S DGBTS=$S($P(DGBTK,U,2):$P(DGBTK,U,2),1:""),DGBTSD=$S($P(DGBTK,U,6):$P(DGBTK,U,6),1:"")
 I $D(^UTILITY($J,2,DGBTDN,DGBTP,SSN,"T")) S DGBTS=$S($P(^UTILITY($J,2,DGBTDN,DGBTP,SSN,"T"),U,1):$P(^("T"),U,1),1:"")+DGBTS,DGBTSD=$S($P(^UTILITY($J,2,DGBTDN,DGBTP,SSN,"T"),U,2):$P(^("T"),U,2),1:"")+DGBTSD
 I $D(^UTILITY($J,2,DGBTDN,DGBTCW,"T")) S DGBTS=$S($P(^UTILITY($J,2,DGBTDN,DGBTCW,"T"),U,1):$P(^("T"),U,1),1:"")+DGBTS,DGBTSD=$S($P(^UTILITY($J,2,DGBTDN,DGBTCW,"T"),U,2):$P(^("T"),U,2),1:"")+DGBTSD
 I DGBTSL="PAT" S ^UTILITY($J,2,DGBTDN,DGBTP,SSN,"T")=DGBTS_U_DGBTSD_U_SSN Q
 S ^UTILITY($J,2,DGBTDN,DGBTCW,"T")=DGBTS_U_DGBTSD_U_DGBTBY Q
 ;Sets up Utility for valid patients
PATU S ^UTILITY($J,1,DGBTDN,DGBTP,SSN,DGBTD)=DGBTP_U_DGBTK10_U_DGBTCH_U_DGBTC_U_DGBTB_U_DGBTK9,DGBTK=^(DGBTD) Q
 ;Sets up Utility for valid accounts, account types and carriers
ACCTU S DGBTCW=$S(DGBTSL="CAR":$P(^PRC(440,DGBTBY,0),U,1),1:DGBTCW),DGBTOTX(DGBTDN,DGBTCW)=$S('$D(DGBTOTX(DGBTDN,DGBTCW)):0,1:DGBTOTX(DGBTDN,DGBTCW)),DGBTOTX(DGBTDN,DGBTCW)=DGBTOTX(DGBTDN,DGBTCW)+1
 S DGBTPTC(DGBTDV)=$S('$D(DGBTPTC(DGBTDV)):0,1:DGBTPTC(DGBTDV)) S DGBTPTC(DGBTDV)=DGBTPTC(DGBTDV)+1
 S ^UTILITY($J,1,DGBTDN,DGBTCW,DGBTP,SSN,DGBTD)=DGBTP_U_DGBTK10_U_DGBTCH_U_DGBTC_U_DGBTB_U_DGBTK9,DGBTK=^(DGBTD) Q
CM D COMMA^%DTC Q