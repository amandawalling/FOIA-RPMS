LACOARA4 ; IHS/DIR/FJE - ORGANON RA4 INTERFACE 07:00 ; [ 09/12/94 ]
 ;;5.2;LA;;NOV 01, 1997
 ;;5.2;AUTOMATED LAB INSTRUMENTS;;Sep 27, 1994
 ;This routine has been modified by RAF/SLC for Miles City, it is
 ;to be considered class III software until Dallas releases it as
 ;part of the verified LAB package.
 ;SET PARAM 3:=1,TEST:=PT
 ;SET PARAM 3:=0,TEST:=PTT
 ;
LA1 S:$D(ZTQUEUED) ZTREQ="@"
 S LANM=$T(+0),TSK=$O(^LAB(62.4,"C",LANM,0)) Q:TSK<1
 Q:'$D(^LA(TSK,"I",0))
 D ^LASET Q:'TSK  S X="TRAP"_LANM,@^%ZOSF("TRAP")
 F  S I=$O(TC(I)) Q:'I  S TEST(TC(I,4))=TC(I,1),FIX(TC(I,4))=TC(I,2)
LA2 K TV S TOUT=0 D IN G QUIT:TOUT,LA2:$E(IN,1,4)'="DATE" D IN,IN
LA21 D IN G LA2:IN=255 S V=$E(IN,1,3) D NUM S CUP=+V,(IDE,ID)=+$E(IN,5,10),TRAY=1
 S V=$E(IN,13,14) D NUM S TEST=+V,V=$E(IN,19,24) D NUM
 I $D(TEST(TEST)) X:$L($G(FIX(TEST))) FIX(TEST) S @TEST(TEST)=V
LA3 X LAGEN Q:'ISQN  ;CAN BE CHANGED BY CROSS-LINK CODE
 F I=0:0 S I=$O(TV(I)) Q:I<1  S:TV(I,1)]"" ^LAH(LWL,1,ISQN,I)=TV(I,1)
 K TV G LA21
 Q
NUM S X="" F JJ=1:1:$L(V) S:$A(V,JJ)>32 X=X_$E(V,JJ)
 S V=X Q
IN S CNT=^LA(TSK,"I",0)+1 IF '$D(^(CNT)) S TOUT=TOUT+1 Q:TOUT>9  H 20 G IN
 S ^LA(TSK,"I",0)=CNT,IN=^(CNT),TOUT=0
 S:IN["~" CTRL=$P(IN,"~",2),IN=$P(IN,"~",1)
 Q
QUIT L ^LA(TSK) H 1 K ^LA(TSK),^LA("LOCK",TSK) D
 .K CNT,CTRL,CUP,FIX,I,ID,IDE,IN,ISQN,JJ,LAGEN,LANM,LWL,T,TC,TEST,TOUT
 .K TRAY,TSK,TV,U,V,X
 Q
TRAP K ^LA("LOCK",TSK) S T=TSK D SET^LAB,ERROR^LASET Q:'$D(^LA(TSK,"I",0))
 G @("LA2^"_LANM) ;ERROR TRAP
 Q