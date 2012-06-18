PSGOE91 ;BIR/CML3-ACTIVE ORDER EDIT (CONT.) ;10 JUL 96 / 7:54 AM
 ;;5.0; INPATIENT MEDICATIONS ;**50,64,58**;16 DEC 97
 ;
41 ; admin times
 S MSG=0,PSGF2=41 S:PSGOEEF(PSGF2) BACK="41^PSGOE91"
A41 W !,"ADMIN TIMES: "_$S(PSGAT:PSGAT_"// ",1:"") R X:DTIME I X="^"!'$T W:'$T $C(7) S PSGOEE=0 G DONE
 I X="" G DONE
 I $E(X)="^" D ENFF^PSGOE92 G:Y>0 @Y G A41
 I X="@",'PSGAT!(PSGS0XT="D")!(PSGSCH["@") W $C(7),"  ??" S X="?" W:PSGS0XT="D"!(PSGSCH["@") !,"This is a 'DAY OF THE WEEK' schedule and MUST have admin times." D ENHLP^PSGOEM(55.06,41) G A41
 I X="@" D DEL G:%'=1 A41 S PSGAT="" G DONE
 I X?1."?" D ENHLP^PSGOEM(55.06,41) G A41
 D ENCHK^PSGS0 I '$D(X) W $C(7),"  ??" S X="?" D ENHLP^PSGOEM(55.06,41) G A41
 S PSGAT=X G DONE
 ;
8 ; special instructions
 S MSG=0,PSGF2=8 S:PSGOEEF(PSGF2) BACK="8^PSGOE91"
A8 N DIR S DIR(0)="FO^1:180^D ^PSGSICHK",DIR("A")="SPECIAL INSTRUCTIONS",DIR("??")="^D ENHLP^PSGOEM(55.06,8)" S:$G(PSGSI)]"" DIR("B")=$P(PSGSI,"^") D ^DIR I $D(DUOUT)!$D(DTOUT) S PSGOEE=0 G DONE
 I $E(X)=U D ENFF^PSGOE92 G:Y>0 @Y G A8
 I X="@",PSGSI="" W $C(7),"  ??" S X="?" D ENHLP^PSGOEM(55.06,8) G A8
 I X="@" D DEL G:%'=1 A8 S PSGSI="" G DONE
 I Y="",PSGSI="" G DONE
 S PSGSI=$S(Y]"":Y,1:PSGSI),PSGSI=$$ENBCMA^PSJUTL("U") G DONE
 Q
 W !,"SPECIAL INSTRUCTIONS: "_$S(PSGSI]"":PSGSI_"// ",1:"") R X:DTIME I X="^"!'$T W:'$T $C(7) S PSGOEE=0 G DONE
 I X="" S X=PSGSI I X="" G DONE
 I $E(X)="^" D ENFF^PSGOE92 G:Y>0 @Y G A8
 I X="@",PSGSI="" W $C(7),"  ??" S X="?" D ENHLP^PSGOEM(55.06,8) G A8
 I X="@" D DEL G:%'=1 A8 S PSGSI="" G DONE
 I X?1."?" D ENHLP^PSGOEM(55.06,8) G A8
 D ^PSGSICHK I '$D(X) W $C(7)," ??" S X="?" D ENHLP^PSGOEM(55.06,8) G A8
 S PSGSI=X G DONE
 ;
10 ; start date/time
 S MSG=0,PSGF2=10 S:PSGOEEF(PSGF2) BACK="10^PSGOE91"
A10 ;
 K PSGSDX
 W !,"START DATE/TIME: "_$S($P(PSGSDN,"^")]"":$P(PSGSDN,"^")_"// ",1:"") R X:DTIME I X="^"!'$T W:'$T $C(7) S PSGOEE=0 G DONE
 I X="",PSGSD W "  "_PSGSDN G DONE
 I X="P" D ENPREV^PSGDL W:'$D(X) $C(7) G:'$D(X) A10 S PSGSD=+X,PSGSDN=$$ENDD^PSGMI(PSGSD)_"^"_$$ENDTC^PSGMI(PSGSD) W "  ",$P(PSGSDN,"^") G DONE
 I X="@"!(X?1."?") W:X="@" $C(7),"  (Required)" S:X="@" X="?" D ENHLP^PSGOEM(55.06,10)
 I $E(X)="^" D ENFF^PSGOE92 G:Y>0 @Y G A10
 NEW TMPX S TMPX=X,X1=PSGDT,X2=-7 D C^%DTC K %DT S %DT="ERTX",%DT(0)=X,X=TMPX D ^%DT K %DT I Y'>0 D ENHLP^PSGOEM(55.06,10) G A10
 I PSGFD<Y W $C(7),!?5,"*** THE START DATE CANNOT BE AFTER THE STOP DATE! ***",! S MSG=1 G A10
 S (PSGSDX,PSGSD)=+Y,PSGSDN=$$ENDD^PSGMI(PSGSD)_"^"_$$ENDTC^PSGMI(PSGSD) G DONE
 ;
34 ; stop date
 S MSG=0,PSGF2=34 S:PSGOEEF(PSGF2) BACK="34^PSGOE91"
A34 ;
 K PSGFDX
 W !,"STOP DATE/TIME: "_$S($P(PSGFDN,"^")]"":$P(PSGFDN,"^")_"// ",1:"") R X:DTIME I X="^"!'$T W:'$T $C(7) S PSGOEE=0 G DONE
 I X="",PSGFD W "   "_$P(PSGFDN,"^") G W34
 I $E(X)="^" D ENFF^PSGOE92 G:Y>0 @Y G A34
 I X="@"!(X?1."?") W:X="@" $C(7),"  (Required)" S:X="@" X="?" D ENHLP^PSGOEM(55.06,34)
 I X=+X,(X>0),(X'>2000000) G A34:'$$ENDL^PSGDL(PSGSCH,X) K PSGDLS S PSGDL=X W " ...dose limit..." D ENE^PSGDL
 K %DT S %DT="ERTX",%DT(0)=PSGSD D ^%DT K %DT G:Y'>0 A34 S (PSGFDX,PSGFD)=+Y,PSGFDN=$$ENDD^PSGMI(PSGFD)_"^"_$$ENDTC^PSGMI(PSGFD)
W34 I PSGFD<PSGDT W $C(7),!!?13,"*** WARNING! THE STOP DATE ENTERED IS IN THE PAST! ***",! S MSG=1
 ;
 ;
DONE ;
 I PSGOEE G:'PSGOEEF(PSGF2) @BACK S PSGOEE=PSGOEEF(PSGF2)
 K F,F0,F1,PSGF2,F3,PSG,SDT Q
 ;
FF ; up-arrow to another field
 D ENFF^PSGOEM I Y>0,Y'=41,Y'=8,Y'=10,Y'=34 S Y=Y_"^PSGOE9"_$S("^109^13^3^7^26^"[("^"_Y_"^"):"",1:2) S:Y=2 FB=PSGF2_"^PSGOE91"
 Q
 ;
DEL ; delete entry
 W !?3,"SURE YOU WANT TO DELETE" S %=0 D YN^DICN I %'=1 W $C(7),"  <NOTHING DELETED>"
 Q