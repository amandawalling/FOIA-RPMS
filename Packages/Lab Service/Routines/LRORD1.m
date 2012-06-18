LRORD1 ;VA/DALOI/RWF - LAZY ACCESSION LOGGING ;JUL 06, 2010 3:14 PM
 ;;5.2;LAB SERVICE;**1027,1030**;NOV 01, 1997
 ;;5.2;LAB SERVICE;**1,8,121,153,201,286**;Sep 27, 1994
L2 Q:$G(LREND)
 K LROT,LRSAME,LRKIL,LRGCOM,LRCCOM,LR696IEN,LRNATURE
 S LRWPC=LRWP G:$D(LROR) LRFIRST
 I '$D(LRADDTST) K DFN,DIC S PNM="",DIC(0)="EMQ"_$S($P(LRPARAM,U,6)&$D(LRLABKY):"L",1:"") W ! D ^LRDPA I (LRDFN=-1)!$D(DUOUT)!$D(DTOUT) Q
 I $D(LRADDTST),LRADDTST="" Q
 S:'$D(LREND) LREND=0 I LRORDR="" D COLTY^LRWU G DROP:LREND
 S LRDPF=$P(^LR(LRDFN,0),U,2),DFN=$P(^(0),U,3)
Q12 D LOC^LRWU G DROP:LREND
Q11 D PRAC^LRWU1 G DROP:LREND
 K T,TT,LRDMAX,LRDTST,LRTMAX
 S DA=0
 F  S DA=$O(^LRO(69,LRODT,1,"AA",LRDFN,DA)) Q:DA<1  I $S($D(^LRO(69,LRODT,1,DA,1)):$P(^(1),U,4)'="U",1:1) S S=$S($D(^LRO(69,LRODT,1,DA,4,1,0)):+^(0),1:0) D
 . S I=0 F  S I=$O(^LRO(69,LRODT,1,DA,2,I)) Q:I<1  I $D(^(I,0)) S T(+^(0),DA)=S,X=+^(0) S:'$D(TT(X,S)) TT(X,S)=0 S TT(X,S)=TT(X,S)+1
 K DIC
 I $D(LRADDTST) S LRORD=+LRADDTST,LRADDTST="" G LRFIRST
 D ORDER^LROW2
 I $D(LRFLOG),$P(LRFLOG,U,3)="MI",$G(LRORDRR)'="R" K DUOUT D MICRO G L2:$D(DUOUT)!$D(DTOUT)
 ;
LRFIRST S LRSX=1 G Q13:'LRFIRST!(LRWP<2)
 W !,"Choose one (or more, separated by commas)  ('*' AFTER NUMBER TO CHANGE URGENCY) "
 F I=1:1:LRWPD D
 . N X
 . S X=^TMP("LRSTIK",$J,"B",I)
 . W !,X,?4,$P(^TMP("LRSTIK",$J,X),U,2)
 . S X=$G(^TMP("LRSTIK",$J,"B",I+LRWPD))
 . I X W ?39," ",X,?44,$P(^TMP("LRSTIK",$J,X),U,2)
Q13 S LREDO=0
LEDI ;
 ;
 ; If LEDI accessioning then check for pending orders in file #69.6
 I $G(LRRSTAT)="I",$G(LRRSITE("SMID"))'="",$G(LRSD("RUID"))'="" D  I $O(LROT(0)) G BAR
 . D EN^LRORDB(LRSD("RUID"),LRRSITE("SMID"))
 G:LRWP'>1 Q13A
 W ! W:'LRFIRST "'?' for list,  " S LRFIRST=0
 R "TEST number(s): ",LRSX:DTIME S:LRSX["?" LRFIRST=1 G LRFIRST:LRFIRST
 I LRSX=""!(LRSX["^") G BAR
 F I=1:1:$L(LRSX,",") D  Q:LREDO
 . S LRSSX=$P(LRSX,",",I)
 . I LRSSX'?1.3N.1"*" S LREDO=1 Q
 . S LRSSX=$P(LRSSX,"*")
 . I '$D(^TMP("LRSTIK",$J,LRSSX)) S LREDO=1
Q13A I LREDO W !,"Something was mistyped, try again." G Q13
 F LRK=1:1 S LRSSX=$P(LRSX,",",LRK) Q:LRSSX=""  D
 . N X
 . S LRST=$S(LRSSX["*":1,1:0),LRSSX=+LRSSX
 . S X=^TMP("LRSTIK",$J,LRSSX)
 . S LRSAMP=$P(X,U,3),LRSPEC=$P(X,U,5),LRTSTS=+X
 . D Q20^LRORDD
BAR S LRM=LRWPC+1,K=0 W !,"Other tests? N//" D % G Q14:'(%["Y")
LRM D MORE^LRORD2
Q14 ; D:$P(LRPARAM,U,17) ^LRORDD D ^LRORD2A D ENSTIK^LROW3 G LRM:'$D(%)&($D(LROT)'=11),DROP:$O(LROT(-1))="",LRM:'$D(%),DROP:%[U K DIC G DROP:'$D(LROT)!(%["N")
 ; ----- BEGIN IHS/OIT/MKK - LR*5.2*1030
 D Q14A
 G LRM:'$D(%)&($D(LROT)'=11),DROP:$O(LROT(-1))="",LRM:'$D(%),DROP:%[U
 K DIC
 G DROP:'$D(LROT)!(%["N")
 ; ----- END IHS/OIT/MKK - LR*5.2*1030
 ;
 W !!,"LAB Order number: ",LRORD,!!
 ;
 I LRECT D  G DROP:LRCDT<1
 . I $G(LRORDRR)="R",$G(LRSD("CDT")) D  Q
 . . S LRCDT=LRSD("CDT")_"^"
 . . S LRORDTIM=$P(LRSD("CDT"),".",2)
 . . I 'LRORDTIM S $P(LRCDT,"^",2)=1
 . D TIME^LROE
 . I LRCDT<1 Q
 . S LRORDTIM=$P(Y,".",2)
 D NOW^%DTC S LRNT=% S:'LRECT LRCDT=LRNT_"^1"
 S LRIDT=9999999-LRCDT
 D ^LRORDST Q:$D(LROR)
 ;
 D ASKATORD^BLRAAORU(LRORD)           ; IHS/OIT/MKK - LR*5.2*1030
 ;
 I $D(LRFASTS) D LRWU4^LRFASTS
 ; --- BEGIN IHS MODIFICATION cmi/anch/maw REF LAB -- LR*5.2*1021
 I '$G(BLRGUI),$G(^BLRSITE(DUZ(2),"RL")),'$P($G(^BLRSITE(DUZ(2),"RL")),U,22) D BLRRL^LROE  ;cmi/flag/maw 7/28/03 for reference lab shipping manifest 6/22/10 added check of LEDI
 ;--- END IHS MODIFICATION cmi/anch/maw end REF LAB -- LR*5.2*1021
 Q:$G(LRKIK)  G L2
% R %:DTIME Q:%=""!(%["N")!(%["Y")  W !,"Answer 'Y' or 'N': " G %
 ;
 ; ----- BEGIN IHS/OIT/MKK - LR*5.2*1030
 ; Being done because the % variable is being reset somewhere
Q14A ; EP
 NEW %ORIGQ14
 S %ORIGQ14=$G(%)    ; Save off original % variable
 ;
 NEW %
 S %=$G(%ORIGQ14)    ; Done in case the other routines need the % variable to be set
 D:$P(LRPARAM,U,17) ^LRORDD
 D ^LRORD2A
 D ENSTIK^LROW3
 ;
 I +$P($G(^BLRSITE($G(DUZ(2)),0)),U,10),$G(%ORIGQ14)'=$G(%) D ENTRYAUD^BLRUTIL("Q14A^LRORD1 9.0")
 Q
 ; ----- END IHS/OIT/MKK - LR*5.2*1030
 ;
Q20A ;from LRORD2
MAX ; CHECK FOR MAXIUM ORDER FREQUENCY
 I $D(TT(LRTSTS,LRSPEC)),$D(^LAB(60,LRTSTS,3,"B",LRCS(LRCSN))) D EN2^LRORDD I %'["Y" Q
 S I7=0 F I9=0:0 S I9=$O(T(LRTSTS,I9)) Q:I9=""  I $D(^LAB(60,LRTSTS,3,+$O(^LAB(60,LRTSTS,3,"B",LRSAMP,0)),0)),+$P(^(0),U,5),LRSPEC=T(LRTSTS,I9) S I7=1
 I I7 W $C(7),!!,"You have a duplicate: " S LRSN=0 F  S LRSN=$O(T(LRTSTS,LRSN)) Q:LRSN<1  W "  for ",$P(^LAB(60,LRTSTS,0),U) S LRZT=LRTSTS D ORDER^LROS S LRTSTS=LRZT
 I I7 W !,"You already have that test, do you really want another? N//" D %
 Q
 ;
URGG ; EP ; W !,"For ",$P(^TMP("LRSTIK",$J,LRSSX),U,2)
 W:'$G(BLRGUI) !,"For ",$P(^TMP("LRSTIK",$J,LRSSX),U,2)    ; IHS/OIT/MKK - LR*5.2*1027
 D URG^LRORD2
 Q
 ;
 ;
DROP W !!,"ORDER CANCELED",$C(7),!! Q:$D(LROR)  G L2 ; !($G(LREND))  G L2
 ;
 ;
MICRO W !,"Is there one sample for this patient's order"
 S %=1 D YN^DICN
 I %=2!(%=-1) S:%=-1 DUOUT=1 Q
 I %=0 W !,"The collection sample and site/specimen will be used for all tests ordered",!,"at this time for this patient." G MICRO
 D GSNO^LRORD3 Q:$D(DUOUT)!$D(DTOUT)
 I +LRSAMP=-1&(LRSPEC=-1) W !,"Incompletely defined." G MICRO
 S LRSAME=LRSAMP_U_LRSPEC
 S LRECOM=0 D GCOM^LRORD2
 Q
 ;
 ;
PRAC ;from LRFAST
 S X=$S(+DIC("B"):$P(^VA(200,+DIC("B"),0),U),1:"")
 W !,"PRACTITIONER: ",X,$S($L(X):"//",1:"")
 R X:DTIME
 I DIC("B"),X="" S Y=DIC("B") Q
 D ^DIC K DIC
 Q