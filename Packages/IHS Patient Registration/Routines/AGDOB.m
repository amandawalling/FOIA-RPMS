AGDOB ; IHS/ASDS/EFG - LIST PAT'S BY DOB ;  
 ;;7.1;PATIENT REGISTRATION;**4**;AUG 25,2005
A1 I '$D(DT) S %DT="",X="T" D ^%DT S DT=Y
ALL W !,"Do you want ALL (Universal Look-up) patients in your data base?  N // " D READ^AG G KILL:$D(DUOUT)!$D(DFOUT)!$D(DTOUT) S AGUNIV=$S($D(DLOUT)!("Nn"[Y):0,"Yy"[Y:1,1:-1) I AGUNIV<0 D YN^AG G ALL
A2 W !!,"Enter the BEGINNING DOB for this report: EARLIEST DOB ON FILE// " D READ^AG I $D(DLOUT) S AGBDATE=0 G A3
 G KILL:$D(DUOUT)!$D(DFOUT)!$D(DTOUT) S:$D(DQOUT) Y="?" S X=Y,%DT="XEP" D ^%DT G A2:Y<1 S AGBDATE=Y I Y>DT W !!,*7,"Do not use future dates." G A2
A3 W !!,"Enter the ENDING DOB for this report: LATEST DOB ON FILE// " D READ^AG I $D(DLOUT) S AGEDATE=9999999 G A4
 G KILL:$D(DFOUT)!$D(DTOUT),A2:$D(DUOUT) S:$D(DQOUT) Y="?" S X=Y,%DT="XEP" D ^%DT G A3:Y<1 S AGEDATE=Y I Y>DT W !!,*7,"Do not use future dates." G A3
A4 I AGEDATE<AGBDATE W !!,*7,"INVALID ENTRY - The END is before the BEGINNING." G A2
 D BEGEND
B W !!!,"Print the patient list for dates-of-birth from:",!!?10,AGB," through ",AGE,".",!!!,"Is this correct? Y // " D READ^AG S Y=$E(Y_"Y") G KILL:$D(DTOUT)!$D(DFOUT),A1:$D(DUOUT)!(Y="N") I Y'="Y" D YN^AG G B
 S AGIO=IO,AG("HAT")=""
DEV S %ZIS="OPQ" D ^%ZIS I POP S IOP=ION D ^%ZIS Q
 G:'$D(IO("Q")) START K IO("Q") I $D(IO("S"))!($E(IOST)'="P") W *7,!,"Please queue to system printers." D ^%ZISC G DEV
 X ^%ZOSF("UCI") S ZTRTN="START^AGDOB",ZTUCI=Y,ZTDESC="PATIENTS IN DOB ORDER for "_$P(^AUTTLOC(DUZ(2),0),U,2)_"." F G="AGBDATE","AGEDATE","AGUNIV" S ZTSAVE(G)=""
 D ^%ZTLOAD G:'$D(ZTSK) DEV K AG,AGIO,AGBDATE,AGEDATE,AGUNIV,G,ZTDESC,ZTRTN,ZTSK,ZTUCI D ^%ZISC
 Q
START ;EP - From TaskMan.
 S (AGPGPG,AGTOT)=0,AG("LOC")=$S(AGUNIV:"***   UNIVERSAL   ***",1:$P(^DIC(4,DUZ(2),0),U)),AG("USR")="" I $D(^VA(200,DUZ,0)) S AG("USR")=$P(^(0),U)
 S AG("USRLOC")=AG("USR")_$J("",40-($L(AG("LOC"))\2)-$L(AG("USR")))_AG("LOC"),AGBM=IOSL-10 I $D(AGIO),AGIO=IO S AGBM=IOSL-4
 K AG("USR") X ^%ZOSF("UCI") S X="UCI: "_$P(Y,",") D CTR^AG S AGUCI=X D BEGEND S X="DOB's from "_AGB_" through "_AGE D CTR^AG S AGTTL=X
 S:AGBDATE=0 AGBDATE=1 S N=AGBDATE-1 D LINES^AG,NOW^AG S X="as of "_AGTIME D CTR^AG S AGTIME=X U IO D HDR
L1 S N=$O(^DPT("ADOB",N)) G END:N=""!(+N>AGEDATE) S DFN=0
L2 S DFN=$O(^DPT("ADOB",N,DFN)) G L1:DFN="",L2:'$D(^DPT(DFN,0))!('AGUNIV&'$D(^AUPNPAT(DFN,41,DUZ(2),0)))
 S AGTOT=AGTOT+1,AGA0=^DPT(DFN,0),AGA41="" I 'AGUNIV!(AGUNIV&$D(^AUPNPAT(DFN,41,DUZ(2),0))) S AGA41=^AUPNPAT(DFN,41,DUZ(2),0)
 W $P(AGA0,U),"  " S AG=$S($P(AGA41,U,3)]"":"*",1:"") D DEAD^AGMAN S AG=AG_$S($D(AG("DEAD")):"D",1:"") W:AG]"" "(",AG,")" I 'AGUNIV W ?45,$J($P(AGA41,U,2),6)
 ;S Y=$P(AGA0,U,9) I +Y S:$L(Y)=9 Y=$E(Y,1,3)_"-"_$E(Y,4,5)_"-"_$E(Y,6,99) W ?54,Y
 W ?54,$$GET1^DIQ(9000001,DFN_",",1107.3)  ;IHS/SD/TPF AG*7.1*4
 S Y=$P(AGA0,U,3) I +Y D DD^%DT W ?67,Y
 W ! W:$D(^DPT(DFN,.24)) ?20,$P(^(.24),U,3) W:$D(^AUPNPAT(DFN,11)) ?55,$E($P(^(11),U,18),1,23)
 I AGUNIV,$D(^AUPNPAT(DFN,41)) S L=0 D FACS G:$D(DUOUT)!$D(DFOUT)!$D(DTOUT) END
 W ! I $Y>AGBM D RTRN^AG G END:$D(DUOUT)!$D(DFOUT)!$D(DTOUT) D HDR
 G L2
FACS S L=$O(^AUPNPAT(DFN,41,L)) Q:'L
 I $D(^DIC(4,L,0)) W !?45,$J($P(^AUPNPAT(DFN,41,L,0),U,2),6)," ",$E($P(^DIC(4,L,0),U),1,26) I $Y>AGBM D RTRN^AG Q:$D(DUOUT)!$D(DFOUT)!$D(DTOUT)  D HDR W:$O(^AUPNPAT(DFN,41,L)) $P(AGA0,U)," (cont.)"
 G FACS
 Q
END W !!,"Total Patients on this list: ",AGTOT K AG("HAT") D RTRN^AG W $$S^AGVDF("IOF") D ^%ZISC
KILL K A,AGA0,AGA41,AG,AGB,AGBM,AGE,AGIO,AGTIME,AGTOT,AGBDATE,DA,DFN,DIC,DR,AGEDATE,L,AG("LOC"),N,AGPGPG,AGTTL,AGUCI,AGUNIV,AG("USRLOC"),X,Y D:$D(ZTQUEUED) KILL^%ZTLOAD
 Q
HDR S AGPGPG=AGPGPG+1 W $$S^AGVDF("IOF"),!!,AG("USRLOC"),?72,"page ",AGPGPG,!?21,"REGISTERED PATIENTS - DOB-ORDER LISTING",!,AGUCI,!?23,"(""D"" = DECEASED)   (""*"" = INACTIVE)"
 W !,AGTIME,!,AGTTL,!!!,"Patient's Name",?46,"IHS #",?58,"SSN",?72,"DOB",!?20,"Mother's maiden name",?55,"Current Community",!,AG("="),!
 Q
BEGEND S Y=AGBDATE D DD^%DT S AGB=$S('AGBDATE:"EARLIEST DOB ON FILE",1:Y),Y=AGEDATE D DD^%DT S AGE=$S(AGEDATE=9999999:"LATEST DOB ON FILE",1:Y)
 Q