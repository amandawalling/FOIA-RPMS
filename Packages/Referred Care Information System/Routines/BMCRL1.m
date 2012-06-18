BMCRL1 ; IHS/PHXAO/TMJ - PROCESS REFERRAL LIST ;    
 ;;4.0;REFERRED CARE INFO SYSTEM;;JAN 09, 2006
 ;IHS/ITSC/FCJ ADDED TEST FOR BMCSORT="" WAS SET FOR TOT AND SUBTOT
 ;   IN CANNED REPORTS ; ADDED VARS FOR COMMENTS SCREEN
 ;   TEST FOR REF: PRIM, SEC OR BOTH AND TEST FOR CALL-INS ONLY
 ;
START ;
 S (BMCBT,BMCBTH)=$H,BMCJOB=$J,BMCRCNT=0
 D PROCESS,END
 Q
 ;
PROCESS ;
 S BMCREF=0 F  S BMCREF=$O(^BMCREF(BMCREF)) Q:BMCREF'=+BMCREF  D PROC
 Q
 ;
END ;
 S BMCET=$H
 Q
PROC ;
 K BMCSPEC
 I BMCPTVS="R" S BMCRREC=^BMCREF(BMCREF,0),DFN=$P(BMCRREC,U,3)
 I BMCPTVS="P" S DFN=BMCREF
 I $D(^BMCRTMP(BMCRPT,11,191)),$P(BMCRREC,U,6)'="" Q  ;TEST FOR CALL-INS
 I '$D(^BMCRTMP(BMCRPT,11,150)),$P(BMCRREC,U,4)="N" Q
 ;4.0 IHS/ITSC/FCJ TEST FOR PRIM, SECONDARY OR BOTH......
 I BMCTYPR="P",$P($G(^BMCREF(BMCREF,1)),U)'="" Q
 I BMCTYPR="S",$P($G(^BMCREF(BMCREF,1)),U)="" Q
 D SCREENS
 Q:$D(BMCSKIP)
 K BMCSRT,BMCPRNT S BMCCRIT=BMCSORT,BMCX=0
 I BMCSORT'="" X:$D(^BMCTSORT(BMCSORT,4)) ^BMCTSORT(BMCSORT,4)
 I '$D(BMCPRNT) D
 . I BMCPTVS="R" S Y=$P(BMCRREC,U) S BMCPRNT=Y Q
 . S BMCPRNT=$P(^DPT(DFN,0),U)
 ;BMCSRT -If Null you can enter value in each sort field in lister
 S BMCSRT=BMCPRNT I BMCSRT="" S BMCSRT="NONE"
 S ^XTMP("BMCRL",BMCJOB,BMCBTH,"DATA HITS",BMCSRT,BMCREF)="",BMCRCNT=BMCRCNT+1
NUMBER ;Numeric Output choice
 I BMCCTYP="N" D
 .I '$D(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS")) S ^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS")=0
 .S $P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS"),U)=$P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS"),U)+1
 .X ^BMCTSORT(BMCNSRT,1)
 .Q:$G(X)=""
 .S $P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS"),U,6)=$P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS"),U,6)+1
 .S $P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS"),U,2)=$P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS"),U,2)+X
 .S T=$P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS"),U,2),C=$P(^("STATS"),U,6),M=T/C
 .S $P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS"),U,3)=M
 .I $P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS"),U,4)="" S $P(^("STATS"),U,4)=X
 .I $P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS"),U,4)>X S $P(^("STATS"),U,4)=X
 .I X>$P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS"),U,5) S $P(^("STATS"),U,5)=X
 .Q:BMCSORT=6
 .I '$D(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS",BMCSRT)) S ^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS",BMCSRT)=0
 .S $P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS",BMCSRT),U)=$P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS",BMCSRT),U)+1
 .X ^BMCTSORT(BMCNSRT,1)
 .Q:$G(X)=""
 .S $P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS",BMCSRT),U,2)=$P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS",BMCSRT),U,2)+X
 .S $P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS",BMCSRT),U,6)=$P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS",BMCSRT),U,6)+1
 .S T=$P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS",BMCSRT),U,2),C=$P(^(BMCPRNT),U,6),M=T/C
 .S $P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS",BMCSRT),U,3)=M
 .I $P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS",BMCSRT),U,4)="" S $P(^(BMCPRNT),U,4)=X
 .I $P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS",BMCSRT),U,4)>X S $P(^(BMCPRNT),U,4)=X
 .I X>$P(^XTMP("BMCRL",BMCJOB,BMCBTH,"STATS",BMCSRT),U,5) S $P(^(BMCPRNT),U,5)=X
 Q:'$D(DFN)!(DFN="")  ;10.22.04 IHS/ITSC/FCJ
 Q:$D(^XTMP("BMCRL",BMCJOB,BMCBTH,"PATIENTS",DFN))!($D(BMCSCNT))
 S ^XTMP("BMCRL",BMCJOB,BMCBTH,"PATIENTS",DFN)="",BMCPTCT=BMCPTCT+1
 Q
SCREENS ;
 K BMCSKIP
 S BMCI=0 F  S BMCI=$O(^BMCRTMP(BMCRPT,11,BMCI)) Q:BMCI'=+BMCI!($D(BMCSKIP))  D
 .I '$P(^BMCTSORT(BMCI,0),U,8) D SINGLE Q
 .D MULT
 S BMCI=""
 Q
SINGLE ;
 Q:BMCI=150  ;special stuff for inhouse
 K X,BMCSPEC S X="",BMCX=0
 X:$D(^BMCTSORT(BMCI,1)) ^(1)
 I X="" S BMCSKIP="" Q
 I '$D(BMCSPEC),'$D(^BMCRTMP(BMCRPT,11,BMCI,11,"B",X)) S BMCSKIP="" Q
 Q
MULT ;
 K BMCFOUN,BMCSKIP,BMCSPEC,X
 S BMCX=0,X=""
 S Y=0,Y1=BMCREF
 X:$D(^BMCTSORT(BMCI,1)) ^BMCTSORT(BMCI,1)
 I $O(X(""))="" S BMCSKIP="" Q
 I '$D(BMCSPEC) S Y="" F  S Y=$O(X(Y)) Q:Y=""  I $D(^BMCRTMP(BMCRPT,11,BMCI,11,"B",Y)) S BMCFOUN="" Q
 I $D(BMCSPEC),$G(X) S BMCFOUN=1 Q
 S:'$D(BMCFOUN) BMCSKIP=""
 Q