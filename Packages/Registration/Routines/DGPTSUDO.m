DGPTSUDO ;ALB/MTC - PTF UPDATE TRANSFER DRG NODE; 30 MAR 89@09 ; 3/12/02 12:14pm
 ;;5.3;Registration;**441**;Aug 13, 1993
UTIL S ^UTILITY($J,"T",(9999999.999999-$E(I,1,14)))=K_"^"_$S($D(^DIC(45.7,J,0)):$P(^(0),"^",2),1:0)_"^"_X_"^^"_$P(Y,"^",8)
 Q
SUDO1 K ^UTILITY($J,"T"),T
 F I=0:0 S I=$O(^DGPM("ATS",DFN,DGPMCA,I)) Q:I'>0  D
 . S J=$O(^DGPM("ATS",DFN,DGPMCA,I,0)) I J D
 .. S K=+$O(^(J,0)) I $D(^DGPM(K,0)) S Y=^(0),X=$S($D(^("PTF")):$P(^("PTF"),"^",2),1:"") I $D(^DGPT(PTF,"M",+X,0))!($D(^DGPM("APHY",+$P(Y,"^",14),K))) D UTIL
 Q:'$D(^UTILITY($J,"T"))
VARS I '$D(^UTILITY($J,"T")) G SUDO1
 S (DGPRD,DGNXD)=$O(^UTILITY($J,"T",0)) G Q:DGPRD'>0 S T(DGPRD)=^(DGPRD),(DGEXP,DGDMS,DGTRS,DGTLOS,DGLOS)=0,DGPT(70)=$S($D(^DGPT(PTF,70)):^(70),1:""),SEX=$P(^DPT(DFN,0),U,2),DOB=$P(^(0),U,3),(DGDX,DGNSV,DGPSV)=""
 K DGSURG,DGPROC S (DGSURG,DGPROC)=U
 ;-- build DGSURG array
 F I=0:0 S I=$O(^DGPT(PTF,"S",I)) Q:I'>0  S X=$P(^(I,0),U,8,12) D
 . I X]"",X'="^^^^" S Y=+^(0),Y=$S('$D(DGSURG(Y)):Y,Y[".":Y_I_1,1:Y_".0000"_I_1),DGSURG(Y)="" D
 .. F J=1:1:5 I $P(X,U,J)]"",$D(^ICD0($P(X,U,J),0)) S DGSURG(Y)=DGSURG(Y)_$P(X,U,J)_U
 ;-- build DGPROC array
 F I=0:0 S I=$O(^DGPT(PTF,"P",I)) Q:I'>0  S X=$P(^(I,0),U,5,9) D
 . I X]"",X'="^^^^" S Y=+^(0),Y=$S('$D(DGPROC(Y)):Y,Y[".":Y_I_1,1:Y_".0000"_I_1),DGPROC(Y)="" D
 .. F J=1:1:5 I $P(X,U,J)]"",$D(^ICD0($P(X,U,J),0)) S DGPROC(Y)=DGPROC(Y)_$P(X,U,J)_U
 ;
 I $D(^DGPT(PTF,"401P")),+DGPT(70),+DGPT(70)<2871000 S X=^("401P") I X]"",X'="^^^^" D
 . F I=1:1:5 I $P(X,U,I)]"",$D(^ICD0($P(X,U,I),0)) S DGPROC=DGPROC_$P(X,U,I)_U,DG401P=1
 ;
SUDO2 ;
 S DGNXD=$O(^UTILITY($J,"T",DGNXD))
 G ONE:DGNXD'>0 S T(DGNXD)=^UTILITY($J,"T",DGNXD),I1=+$P(T(DGNXD),U,3),DGDOC=$P(T(DGNXD),U,5)
 F I=DGPRD,DGNXD S L1(I)=$P(T(I),U,2)
 G:L1(DGPRD)=L1(DGNXD) SWCH
 S DGPSV=$S($D(^DIC(42.4,+L1(DGPRD),0)):$P(^(0),U,3),1:""),DGNSV=$S($D(^DIC(42.4,+L1(DGNXD),0)):$P(^(0),U,3),1:"")
 G:DGPSV']""!(DGNSV']"") SWCH
 I "^I^SCI^B^NH^D^RE^"'[(U_DGPSV_U),$D(^DGPT(PTF,"M",I1,0)) S DGNODE=^(0) D
 . D BLD I DGPSV'=DGNSV D DRG S DGSURG=U,DGDX="",DGLOS=0 I '$D(DG401P) S DGPROC=U
SWCH ;
 K DGLEV,DGPAS
 S DGPRD=DGNXD,T(DGPRD)=T(DGNXD),(DGNSV,DGPSV)=""
 G SUDO2
 ;
BLD ;
 F I=9:-1:5 I $P(DGNODE,U,I)]"",$D(^ICD9($P(DGNODE,U,I),0)) S DGDX=$P(DGNODE,U,I)_U_DGDX
 S:$L(DGDX)>200 DGDX=$P(DGDX,U,1,30)
 S DGLEV=$P(DGNODE,U,3),DGPAS=$P(DGNODE,U,4),X1=DGNXD,X2=DGPRD D ^%DTC S X=$S(X>0:X,1:1)-DGLEV-DGPAS,DGLOS=DGLOS+X
 N I,J,X,Y,Z
 F I=0:0 S I=$O(DGSURG(I)) Q:I'>0!(I\1>(DGNXD\1))  D SU
 I '$D(DG401P) F I=0:0 S I=$O(DGPROC(I)) Q:I'>0!((I\1)>(DGNXD\1))  D  ;S DGPROC=DGPROC(I)_DGPROC K DGPROC(I) I $L(DGPROC)>200 S DGPROC=$P(DGPROC,U,1,30)
 .S X=DGPROC(I)
 .F J=1:1:5 S Y=$P(X,U,J) Q:Y=""  D
 ..Q:$L(DGPROC)>240
 ..S Z=U_Y_U Q:DGPROC[Z
 ..S DGPROC=DGPROC_Y_U
 .K DGPROC(I)
 Q
SU ;
 ;S:$L(DGSURG)>200 DGSURG=$P(DGSURG,U,1,30)
 ;I I<DGNXD S DGSURG=DGSURG(I)_DGSURG K DGSURG(I) Q  ; surgery date is prior to movement date
 ; only gets here if surgery occurred on movement date
 ;I DGPSV=DGNSV S DGSURG=DGSURG(I)_DGSURG K DGSURG(I) Q  ; no RAM movement occurred so surgery should be grouped
 ;I DGPSV="S" S DGSURG=DGSURG(I)_DGSURG K DGSURG(I) Q  ; RAM movement occurred and losing service is surgery, so surgery should be grouped
 ;Q
 ; 2002 coding replaces above,eliminates dupes,allows more codes
 I I<DGNXD!(DGPSV=DGNSV)!(DGPSV="S") D
 .S X=DGSURG(I)
 .F J=1:1:5 S Y=$P(X,U,J) Q:Y=""  D
 ..Q:$L(DGSURG)>240
 ..S Z=U_Y_U Q:DGSURG[Z
 ..S DGSURG=DGSURG_Y_U
 .K DGSURG(I)
 Q
 ;
DRG ;
 S AGE=DGPRD-DOB\10000,DGTLOS=DGTLOS+DGLOS,DRG=""
 D ^DGPTICD
 S DGDOC=$S($D(^VA(200,+DGDOC)):DGDOC,1:"")
 S $P(^DGPT(PTF,"M",I1,"P"),U,1,6)=DRG_U_DGPSV_U_DGNXD_U_DGLOS_U_DGDOC_U_DGTLOS
 Q
 ;
ONE ;
 S DGNXD=$S(+$P(^DGPT(PTF,"M",1,0),U,10):$P(^(0),U,10),1:DT),L1(DGNXD)=$P(^(0),U,2) S:'$D(T(DGNXD)) T(DGNXD)=T(DGPRD),DGDOC=$P(T(DGNXD),U,5)
 S:$P(DGPT(70),U,3)>5 DGEXP=1 S:$P(DGPT(70),U,3)=4 DGDMS=1 S:$P(DGPT(70),U,13) DGTRS=1
 I L1(DGNXD),$D(^DIC(42.4,+L1(DGNXD),0)) S I1=1,DGPSV=$P(^(0),U,3),DGADM=$P(^DGPT(PTF,0),U,2)
 S DGNODE=$S($D(^DGPT(PTF,"M",1,0)):^(0),1:"") D BLD
 I $D(^DGPT("AADA",DGADM,PTF)) S I=$S($P(DGPT(70),U,10):$P(DGPT(70),U,10),$P(DGPT(70),U,11):$P(DGPT(70),U,11),1:"") I I]"" S DGDX=I_U_DGDX
 S I1=1 D DRG,^DGPTSUD1
Q ;
 K DGDMS,DGDOC,DGDX,DGEXP,DGLEV,DGLOS,DGNODE,DGNSV,DGNXD,DGPAS,DGPRD,DGPROC,DGPSV,DGPT,DGSURG,DGTLOS,DGTRS,DG401P,I,I1,I2,J,L1,T,X,X1,X2,Y Q
 ;