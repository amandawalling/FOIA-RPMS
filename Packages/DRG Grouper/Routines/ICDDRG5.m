ICDDRG5 ;NEISC/GRR/EG - FIX SURGERY HIERARCHY ;03 MAR 89
 ;;8.0
 Q:$O(ICDODRG(0))'>0  K ICDJ,ICDJJ F ICDJ=0:0 S ICDJ=$O(ICDODRG(ICDJ)) Q:ICDJ'>0  S ICDJJ(ICDJ)="" D F
END S ICDJ=$O(ICDJ(0)) Q:ICDJ'>0  S ICDJ=ICDJ(ICDJ) K ICDODRG S ICDODRG(ICDJ)="" Q
F I ICDJ=103 S ICDJ(1)=ICDJ Q
 I ICDJ=104 S ICDJ(2)=ICDJ Q
 I ICDJ=108 S ICDJ(3)=ICDJ Q
 I ICDJ=106 S ICDJ(4)=ICDJ Q
 I ICDJ=110 S ICDJ(4.5)=ICDJ Q
 I ICDJ=111 S ICDJ(5)=ICDJ Q
 I ICDJ=115 S ICDJ(6)=ICDJ Q
 I ICDJ=116 S ICDJ(7)=ICDJ Q
 I ICDJ=113 S ICDJ(8)=ICDJ Q
 I ICDJ=478 S ICDJ(9)=ICDJ Q
 I ICDJ=479 S ICDJ(9.5)=ICDJ Q
 I ICDJ=112 S ICDJ(10)=ICDJ Q
 I ICDJ=118 S ICDJ(11)=ICDJ Q
 I ICDJ=117 S ICDJ(11.5)=ICDJ Q
 I ICDJ=114 S ICDJ(12)=ICDJ Q
 I ICDJ=119 S ICDJ(13)=ICDJ Q
 I ICDJ=120 S ICDJ(14)=ICDJ
 Q
EN1 S ICDCC3=0
 I $D(ICDOP(" 37.70"))!($D(ICDOP(" 37.71")))!($D(ICDOP(" 37.73"))) D MORE I  Q
 I $D(ICDOP(" 37.72")) I $D(ICDOP(" 37.80"))!($D(ICDOP(" 37.83"))) S ICDCC3=1 Q
 I $D(ICDOP(" 37.74")) I $D(ICDOP(" 37.80"))!($D(ICDOP(" 37.81")))!($D(ICDOP(" 37.82")))!($D(ICDOP(" 37.83")))!($D(ICDOP(" 37.85")))!($D(ICDOP(" 37.86")))!($D(ICDOP(" 37.87"))) S ICDCC3=1 Q
 I $D(ICDOP(" 37.76")) I $D(ICDOP(" 37.80"))!($D(ICDOP(" 37.85")))!($D(ICDOP(" 37.86")))!($D(ICDOP(" 37.87"))) S ICDCC3=1 Q
 Q
MORE I $D(ICDOP(" 37.80"))!($D(ICDOP(" 37.81")))!($D(ICDOP(" 37.82")))!($D(ICDOP(" 37.85")))!($D(ICDOP(" 37.86")))!($D(ICDOP(" 37.87"))) S ICDCC3=1 Q
 Q
VALV ;valve procedure
 S (ICDCATH,ICDAJ)="" F ICDI=1:1 Q:'$D(ICDPRC(ICDI))  S ICDAJ=ICDPRC(ICDI),ICDY(0)=$S($D(^ICD0(ICDAJ)):^ICD0(ICDAJ,0),1:0) S:ICDY(0) ICDOP($P(ICDY(0),"^",1))="",ICDCATH=ICDCATH_$P(ICDY(0),"^",2)
 S ICDE1=$S($D(ICDOP(37.95))&($D(ICDOP(37.96))):1,1:0),ICDE2=$S($D(ICDOP(37.97))&($D(ICDOP(37.98))):1,1:0)
 S:ICDCATH["H" ICDRG=$S(ICDCATH["N"&ICDE1:104,ICDCATH["N"&ICDE2:104,ICDCATH["O":104,1:ICDRG)
 S:ICDCATH'["H" ICDRG=$S(ICDCATH["N"&ICDE1:105,ICDCATH["N"&ICDE2:105,ICDCATH["O":105,1:ICDRG)
 K ICDCATH,ICDAJ,ICDE1,ICDE2,ICDI,ICDOP,ICDY Q
VALV1 ;dx combo's for DRG120
 S ICDE1=$S($D(ICDOP(" 37.95"))&($D(ICDOP(" 37.96"))):1,1:0),ICDE2=$S($D(ICDOP(" 37.97"))&($D(ICDOP(" 37.98"))):1,1:0)
 S ICDRG=$S((ICDE1&(ICDOR["H")):104,(ICDE1&(ICDOR'["H")):105,(ICDE2&(ICDOR["H")):104,(ICDE2&(ICDOR'["H")):105,1:120)
 K ICDE1,ICDE2
 Q