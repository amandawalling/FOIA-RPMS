DGJXA ; GENERATED FROM 'DGJ ENTER IRT RECORD' INPUT TEMPLATE(#2435), FILE 393;10/29/04
 D DE G BEGIN
DE S DIE="^VAS(393,",DIC=DIE,DP=393,DL=1,DIEL=0,DU="" K DG,DE,DB Q:$O(^VAS(393,DA,""))=""
 I $D(^(0)) S %Z=^(0) S %=$P(%Z,U,2) S:%]"" DE(1)=% S %=$P(%Z,U,3) S:%]"" DE(2)=% S %=$P(%Z,U,4) S:%]"" DE(3)=% S %=$P(%Z,U,5) S:%]"" DE(4)=% S %=$P(%Z,U,6) S:%]"" DE(5)=% S %=$P(%Z,U,7) S:%]"" DE(6)=% S %=$P(%Z,U,8) S:%]"" DE(7)=%
 I  S %=$P(%Z,U,9) S:%]"" DE(8)=% S %=$P(%Z,U,10) S:%]"" DE(9)=% S %=$P(%Z,U,12) S:%]"" DE(10)=%
 I $D(^("DT")) S %Z=^("DT") S %=$P(%Z,U,1) S:%]"" DE(12)=%
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
BEGIN S DNM="DGJXA",DQ=1
 N DIEZTMP,DIEZAR,DIEZRXR,DIIENS,DIXR K DIEFIRE,DIEBADK S DIEZTMP=$$GETTMP^DIKC1("DIEZ")
 M DIEZAR=^DIE(2435,"AR") S DICRREC="TRIG^DIE17"
 S:$D(DTIME)[0 DTIME=300 S D0=DA,DIIENS=DA_",",DIEZ=2435,U="^"
1 S DW="0;2",DV="RP393.3'",DU="",DLB="TYPE OF DEFICIENCY",DIFLD=.02
 S DU="VAS(393.3,"
 S X=DGJTYP
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
X1 Q
2 S DW="0;3",DV="RD",DU="",DLB="EVENT DATE",DIFLD=.03
 S DE(DW)="C2^DGJXA"
 S X=DGJTDT
 S Y=X
 S X=Y,DB(DQ)=1 G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD
C2 G C2S:$D(DE(2))[0 K DB
 S X=DE(2),DIC=DIE
 K ^VAS(393,"C",$E(X,1,30),DA)
C2S S X="" G:DG(DQ)=X C2F1 K DB
 S X=DG(DQ),DIC=DIE
 S ^VAS(393,"C",$E(X,1,30),DA)=""
C2F1 Q
X2 S %DT="STX" D ^%DT S X=Y K:3991231<X!(2800101>X) X
 Q
 ;
3 D:$D(DG)>9 F^DIE17,DE S DQ=3,DW="0;4",DV="*P405'",DU="",DLB="ADMISSION",DIFLD=.04
 S DE(DW)="C3^DGJXA"
 S DU="DGPM("
 S X=DGJTAIFN
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
C3 G C3S:$D(DE(3))[0 K DB
 S X=DE(3),DIC=DIE
 ;
 S X=DE(3),DIC=DIE
 K ^VAS(393,"ADM",$E(X,1,30),DA)
C3S S X="" G:DG(DQ)=X C3F1 K DB
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^VAS(393,D0,0)):^(0),1:"") S X=$P(Y(1),U,13),X=X S DIU=X K Y S X=DIV S X=1 X ^DD(393,.04,1,1,1.4)
 S X=DG(DQ),DIC=DIE
 S ^VAS(393,"ADM",$E(X,1,30),DA)=""
C3F1 Q
X3 Q
4 D:$D(DG)>9 F^DIE17,DE S DQ=4,DW="0;5",DV="R*P44'",DU="",DLB="LOCATION",DIFLD=.05
 S DU="SC("
 S X=DGJTWD
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
X4 Q
5 S DW="0;6",DV="R*P40.8'",DU="",DLB="DIVISION",DIFLD=.06
 S DU="DG(40.8,"
 S X=+DGJTDV
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
X5 Q
6 S DW="0;7",DV="R*P45.7'",DU="",DLB="SPECIALTY",DIFLD=.07
 S DU="DIC(45.7,"
 S X=DGJTSP
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
X6 Q
7 S DW="0;8",DV="RP393.1'",DU="",DLB="SERVICE",DIFLD=.08
 S DE(DW)="C7^DGJXA"
 S DU="DG(393.1,"
 S X=DGJTSV
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
C7 G C7S:$D(DE(7))[0 K DB
 S X=DE(7),DIC=DIE
 K ^VAS(393,"AC",$E(X,1,30),DA)
C7S S X="" G:DG(DQ)=X C7F1 K DB
 S X=DG(DQ),DIC=DIE
 S ^VAS(393,"AC",$E(X,1,30),DA)=""
C7F1 Q
X7 Q
8 D:$D(DG)>9 F^DIE17,DE S DQ=8,DW="0;9",DV="RP200'",DU="",DLB="PRIMARY PHYSICIAN",DIFLD=.09
 S DE(DW)="C8^DGJXA"
 S DU="VA(200,"
 S X=DGJT1PH
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
C8 G C8S:$D(DE(8))[0 K DB
 S X=DE(8),DIC=DIE
 ;
C8S S X="" G:DG(DQ)=X C8F1 K DB
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^VAS(393,D0,0)):^(0),1:"") S X=$P(Y(1),U,12),X=X S DIU=X K Y S X=DIV S X=DIV,X=X X ^DD(393,.09,1,1,1.4)
C8F1 Q
X8 Q
9 D:$D(DG)>9 F^DIE17,DE S DQ=9,DW="0;10",DV="P200'",DU="",DLB="ATTENDING PHYSICIAN",DIFLD=.1
 S DE(DW)="C9^DGJXA"
 S DU="VA(200,"
 S X=DGJT2PH
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
C9 G C9S:$D(DE(9))[0 K DB
 S X=DE(9),DIC=DIE
 S DGJATTD=1 D PHYDEF^DGJTUTL
C9S S X="" G:DG(DQ)=X C9F1 K DB
 S X=DG(DQ),DIC=DIE
 S DGJATTD=1 D PHYDEF^DGJTUTL
C9F1 Q
X9 Q
10 D:$D(DG)>9 F^DIE17,DE S DQ=10,DW="0;12",DV="RP200'",DU="",DLB="PHYSICIAN RESPONSIBLE",DIFLD=.12
 S DE(DW)="C10^DGJXA"
 S DU="VA(200,"
 S X=DGJTPR
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
C10 G C10S:$D(DE(10))[0 K DB
 S X=DE(10),DIC=DIE
 ;
C10S S X="" G:DG(DQ)=X C10F1 K DB
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(0)=X D PHYSRTRG^DGJTUTL I X S X=DIV S Y(1)=$S($D(^VAS(393,D0,0)):^(0),1:"") S X=$P(Y(1),U,14),X=X S DIU=X K Y S X=DIV S X=DIV,X=X X ^DD(393,.12,1,1,1.4)
C10F1 Q
X10 Q
11 S DQ=12 ;@8
12 D:$D(DG)>9 F^DIE17,DE S DQ=12,DW="DT;1",DV="DX",DU="",DLB="DATE DICTATED",DIFLD=10.01
 S DE(DW)="C12^DGJXA"
 G RE
C12 G C12S:$D(DE(12))[0 K DB
 S X=DE(12),DIC=DIE
 S DGJFDIC=1 D PHYDEF^DGJTUTL
C12S S X="" G:DG(DQ)=X C12F1 K DB
 S X=DG(DQ),DIC=DIE
 S DGJFDIC=1 D PHYDEF^DGJTUTL
C12F1 Q
X12 S %DT(0)="-NOW",%DT="ETX" D ^%DT K %DT(0) S X=Y K:Y<1 X
 Q
 ;
13 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=13 D X13 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X13 I X="" S DGJTST="INCOMPLETE",Y="@2"
 Q
14 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=14 D X14 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X14 S DGJTDDT=$S($P(^VAS(393,D0,0),"^",4)]"":$P(^DGPM($P(^VAS(393,D0,0),"^",4),0),"^",1),1:$P(^VAS(393,D0,0),"^",3))
 Q
15 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=15 D X15 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X15 S DGJTDDT=$S(DGJTDDT[".":$P(DGJTDDT,".",1),1:DGJTDDT) I X<DGJTDDT S $P(^VAS(393,D0,"DT"),"^",1)="" W !,"Date must be equal to or after EVENT DATE...no time required." S Y="@8"
 Q
16 D:$D(DG)>9 F^DIE17 G ^DGJXA1