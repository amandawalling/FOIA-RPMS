DGRPXI ; GENERATED FROM 'DGRP ENTER/EDIT ANNUAL INCOME' INPUT TEMPLATE(#2449), FILE 408.21;10/29/04
 D DE G BEGIN
DE S DIE="^DGMT(408.21,",DIC=DIE,DP=408.21,DL=1,DIEL=0,DU="" K DG,DE,DB Q:$O(^DGMT(408.21,DA,""))=""
 I $D(^(0)) S %Z=^(0) S %=$P(%Z,U,8) S:%]"" DE(5)=% S %=$P(%Z,U,9) S:%]"" DE(8)=% S %=$P(%Z,U,10) S:%]"" DE(11)=% S %=$P(%Z,U,11) S:%]"" DE(14)=% S %=$P(%Z,U,12) S:%]"" DE(17)=% S %=$P(%Z,U,13) S:%]"" DE(20)=% S %=$P(%Z,U,14) S:%]"" DE(23)=%
 I  S %=$P(%Z,U,15) S:%]"" DE(26)=% S %=$P(%Z,U,16) S:%]"" DE(29)=% S %=$P(%Z,U,17) S:%]"" DE(32)=%
 K %Z Q
 ;
W W !?DL+DL-2,DLB_": "
 Q
O D W W Y W:$X>45 !?9
 I $L(Y)>19,'DV,DV'["I",(DV["F"!(DV["K")) G RW^DIR2
 W:Y]"" "// " I 'DV,DV["I",$D(DE(DQ))#2 S X="" W "  (No Editing)" Q
TR R X:DTIME E  S (DTOUT,X)=U W $C(7)
 Q
A K DQ(DQ) S DQ=DQ+1
B G @DQ
RE G PR:$D(DE(DQ)) D W,TR
N I X="" G NKEY:$D(^DD("KEY","F",DP,DIFLD)),A:DV'["R",X:'DV,X:D'>0,A
RD G QS:X?."?" I X["^" D D G ^DIE17
 I X="@" D D G Z^DIE2
 I X=" ",DV["d",DV'["P",$D(^DISV(DUZ,"DIE",DLB)) S X=^(DLB) I DV'["D",DV'["S" W "  "_X
T G M^DIE17:DV,^DIE3:DV["V",P:DV'["S" X:$D(^DD(DP,DIFLD,12.1)) ^(12.1) I X?.ANP D SET I 'DDER X:$D(DIC("S")) DIC("S") I  W:'$D(DB(DQ)) "  "_% G V
 K DDER G X
P I DV["P" S DIC=U_DU,DIC(0)=$E("EN",$D(DB(DQ))+1)_"M"_$E("L",DV'["'") S:DIC(0)["L" DLAYGO=+$P(DV,"P",2) G:DV["*" AST^DIED D NOSCR^DIED S X=+Y,DIC=DIE G X:X<0
 G V:DV'["N" D D I $L($P(X,"."))>24 K X G Z
 I $P(DQ(DQ),U,5)'["$",X?.1"-".N.1".".N,$P(DQ(DQ),U,5,99)["+X'=X" S X=+X
V D @("X"_DQ) K YS
Z K DIC("S"),DLAYGO I $D(X),X'=U D:$G(DE(DW,"INDEX")) SAVEVALS G:'$$KEYCHK UNIQFERR^DIE17 S DG(DW)=X S:DV["d" ^DISV(DUZ,"DIE",DLB)=X G A
X W:'$D(ZTQUEUED) $C(7),"??" I $D(DB(DQ)) G Z^DIE17
 S X="?BAD"
QS S DZ=X D D,QQ^DIEQ G B
D S D=DIFLD,DQ(DQ)=DLB_U_DV_U_DU_U_DW_U_$P($T(@("X"_DQ))," ",2,99) Q
Y I '$D(DE(DQ)) D O G RD:"@"'[X,A:DV'["R"&(X="@"),X:X="@" S X=Y G N
PR S DG=DV,Y=DE(DQ),X=DU I $D(DQ(DQ,2)) X DQ(DQ,2) G RP
R I DG["P",@("$D(^"_X_"0))") S X=+$P(^(0),U,2) G RP:'$D(^(Y,0)) S Y=$P(^(0),U),X=$P(^DD(X,.01,0),U,3),DG=$P(^(0),U,2) G R
 I DG["V",+Y,$P(Y,";",2)["(",$D(@(U_$P(Y,";",2)_"0)")) S X=+$P(^(0),U,2) G RP:'$D(^(+Y,0)) S Y=$P(^(0),U) I $D(^DD(+X,.01,0)) S DG=$P(^(0),U,2),X=$P(^(0),U,3) G R
 X:DG["D" ^DD("DD") I DG["S" S %=$P($P(";"_X,";"_Y_":",2),";") S:%]"" Y=%
RP D O I X="" S X=DE(DQ) G A:'DV,A:DC<2,N^DIE17
I I DV'["I",DV'["#" G RD
 D E^DIE0 G RD:$D(X),PR
 Q
SET N DIR S DIR(0)="SV"_$E("o",$D(DB(DQ)))_U_DU,DIR("V")=1
 I $D(DB(DQ)),'$D(DIQUIET) N DIQUIET S DIQUIET=1
 D ^DIR I 'DDER S %=Y(0),X=Y
 Q
SAVEVALS S @DIEZTMP@("V",DP,DIIENS,DIFLD,"O")=$G(DE(DQ)) S:$D(^("F"))[0 ^("F")=$G(DE(DQ))
 I $D(DE(DW,"4/")) S @DIEZTMP@("V",DP,DIIENS,DIFLD,"4/")=""
 E  K @DIEZTMP@("V",DP,DIIENS,DIFLD,"4/")
 Q
NKEY W:'$D(ZTQUEUED) "??  Required key field" S X="?BAD" G QS
KEYCHK() Q:$G(DE(DW,"KEY"))="" 1 Q @DE(DW,"KEY")
BEGIN S DNM="DGRPXI",DQ=1
 N DIEZTMP,DIEZAR,DIEZRXR,DIIENS,DIXR K DIEFIRE,DIEBADK S DIEZTMP=$$GETTMP^DIKC1("DIEZ")
 M DIEZAR=^DIE(2449,"AR") S DICRREC="TRIG^DIE17"
 S:$D(DTIME)[0 DTIME=300 S D0=DA,DIIENS=DA_",",DIEZ=2449,U="^"
1 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=1 D X1 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X1 K DGFIN
 Q
2 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=2 D X2 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X2 I '$D(DGDR) W !,*7,"Variable DGDR must be defined!" S Y="@999"
 Q
3 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=3 D X3 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X3 S:DGDR'[901 Y="@902"
 Q
4 S DQ=5 ;@901
5 S DW="0;8",DV="NJ10,2X",DU="",DLB="SOCIAL SECURITY (NOT SSI)",DIFLD=.08
 G RE
X5 S:X["$" X=$P(X,"$",2) X:X["*" "S X=X*12 W ""  "",X" K:X'?.N.1".".2N!(X>9999999)!(X<0) X
 Q
 ;
6 S DQ=7 ;@902
7 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=7 D X7 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X7 S:DGDR'[902 Y="@903"
 Q
8 S DW="0;9",DV="NJ8,2X",DU="",DLB="U.S. CIVIL SERVICE",DIFLD=.09
 G RE
X8 S:X["$" X=$P(X,"$",2) X:X["*" "S X=X*12 W ""  "",X" K:X'?.N.1".".2N!(X>9999999)!(X<0) X
 Q
 ;
9 S DQ=10 ;@903
10 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=10 D X10 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X10 S:DGDR'[903 Y="@904"
 Q
11 S DW="0;10",DV="NJ8,2X",DU="",DLB="U.S. RAILROAD RETIREMENT",DIFLD=.1
 G RE
X11 S:X["$" X=$P(X,"$",2) X:X["*" "S X=X*12 W ""  "",X" K:X'?.N.1".".2N!(X>9999999)!(X<0) X
 Q
 ;
12 S DQ=13 ;@904
13 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=13 D X13 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X13 S:DGDR'[904 Y="@905"
 Q
14 S DW="0;11",DV="NJ8,2X",DU="",DLB="MILITARY RETIREMENT",DIFLD=.11
 G RE
X14 S:X["$" X=$P(X,"$",2) X:X["*" "S X=X*12 W ""  "",X" K:X'?.N.1".".2N!(X>9999999)!(X<0) X
 Q
 ;
15 S DQ=16 ;@905
16 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=16 D X16 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X16 S:DGDR'[905 Y="@906"
 Q
17 S DW="0;12",DV="NJ8,2X",DU="",DLB="UNEMPLOYMENT COMPENSATION",DIFLD=.12
 G RE
X17 S:X["$" X=$P(X,"$",2) X:X["*" "S X=X*12 W ""  "",X" K:X'?.N.1".".2N!(X>9999999)!(X<0) X
 Q
 ;
18 S DQ=19 ;@906
19 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=19 D X19 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X19 S:DGDR'[906 Y="@907"
 Q
20 S DW="0;13",DV="NJ8,2X",DU="",DLB="OTHER RETIREMENT",DIFLD=.13
 G RE
X20 S:X["$" X=$P(X,"$",2) X:X["*" "S X=X*12 W ""  "",X" K:X'?.N.1".".2N!(X>9999999)!(X<0) X
 Q
 ;
21 S DQ=22 ;@907
22 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=22 D X22 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X22 S:DGDR'[907 Y="@908"
 Q
23 S DW="0;14",DV="NJ9,2X",DU="",DLB="TOTAL INCOME FROM EMPLOYMENT",DIFLD=.14
 S DE(DW)="C23^DGRPXI"
 G RE
C23 G C23S:$D(DE(23))[0 K DB
 S X=DE(23),DIC=DIE
 I $D(^DGMT(408.21,DA,0)),$P(^(0),U,14)="" D EMP^DGMTDD3
C23S S X="" G:DG(DQ)=X C23F1 K DB
 S X=DG(DQ),DIC=DIE
 D EMP^DGMTDD3
C23F1 Q
X23 S:X["$" X=$P(X,"$",2) X:X["*" "S X=X*12 W ""  "",X" K:X'?.N.1".".2N!(X>9999999)!(X<0) X
 Q
 ;
24 S DQ=25 ;@908
25 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=25 D X25 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X25 S:DGDR'[908 Y="@909"
 Q
26 D:$D(DG)>9 F^DIE17,DE S DQ=26,DW="0;15",DV="NJ8,2X",DU="",DLB="INTEREST, DIVIDEND, OR ANNUITY",DIFLD=.15
 G RE
X26 S:X["$" X=$P(X,"$",2) X:X["*" "S X=X*12 W ""  "",X" K:X'?.N.1".".2N!(X>9999999)!(X<0) X
 Q
 ;
27 S DQ=28 ;@909
28 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=28 D X28 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X28 S:DGDR'[909 Y="@910"
 Q
29 S DW="0;16",DV="NJ8,2X",DU="",DLB="WORKERS COMP. OR BLACK LUNG",DIFLD=.16
 G RE
X29 S:X["$" X=$P(X,"$",2) X:X["*" "S X=X*12 W ""  "",X" K:X'?.N.1".".2N!(X>9999999)!(X<0) X
 Q
 ;
30 S DQ=31 ;@910
31 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=31 D X31 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X31 S:DGDR'[910 Y="@998"
 Q
32 S DW="0;17",DV="NJ9,2X",DU="",DLB="ALL OTHER INCOME",DIFLD=.17
 G RE
X32 S:X["$" X=$P(X,"$",2) X:X["*" "S X=X*12 W ""  "",X" K:X'?.N.1".".2N!(X>9999999)!(X<0) X
 Q
 ;
33 S DQ=34 ;@998
34 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=34 D X34 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X34 S DGFIN=""
 Q
35 S DQ=36 ;@999
36 G 0^DIE17