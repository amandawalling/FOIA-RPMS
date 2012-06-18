AMHRTEN ; IHS/CMI/LAB - TOP TEN POVS ;
 ;;4.0;IHS BEHAVIORAL HEALTH;;MAY 14, 2010
PREPROC ;
 D XTMP^AMHUTIL("AMHTEN","BH - TOP TEN REPORT")
 S %="^XTMP(""AMHTEN"",AMHJOB,AMHBT,",AMHA=%_"""POV"",AMHPOV)",AMHC=%_"1)",E=%_"2)",F=%_"3)",G=%_"4)",AMHTOT=0,AMHVTOT=0,AMHLINO=0
 Q
POSTPROC ;
 D SET
 Q
 ;
 ;
SET ;  
 S AMHPOV="" F  S AMHPOV=$O(@AMHA) Q:AMHPOV=""  S %=^(AMHPOV),@AMHC@(9999999-%,AMHPOV)="" ;AMHA,AMHC global references are set in PREPROC+1
S1 S (X,I)=0 F  S X=$O(@AMHC@(X)) Q:'X  F Y=0:0 S Y=$O(@AMHC@(X,Y)) Q:'Y  S I=I+1,@F@(I)=Y I I=AMHLNO G S2
S2 S (X,I)=0 F  S X=$O(@E@(X)) Q:'X  F Y=0:0 S Y=$O(@E@(X,Y)) Q:'Y  S I=I+1,@G@(I)=Y I I=AMHLNO G S3
S3 Q
 ;
 ;
 ;
PRNTPRE ;EP
 K DIRUT,DTOUT,DUOUT,DIR
PRIM ;
 S AMHPRIM=""
 I $E(AMHRRPT)="A",'$D(DIRUT) G CHRT
 S DIR(0)="S^P:PRIMARY POV Only;S:PRIMARY and SECONDARY POV's",DIR("A")="Include which POV's",DIR("B")="P" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) S AMHQUIT=1 Q
 S AMHPRIM=Y
CHRT ;EP
 S DIR(0)="S^L:List of items with Counts;B:Bar Chart (REQUIRES 132 COLUMN PRINTER)",DIR("A")="Select Type of Report",DIR("B")="L" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) S AMHQUIT=1 Q
 S AMHCHRT=Y
NUM ;get # entries
 S DIR(0)="NO^5:"_$S(AMHCHRT="B":35,1:100)_":0",DIR("A")="How many entries do you want in the "_$S(AMHCHRT="B":"bar chart",1:"list"),DIR("B")="10",DIR("?")="" D ^DIR S:$D(DUOUT) DIRUT=1 K DIR
 I $D(DIRUT) G CHRT
 S AMHLNO=Y
 I $D(DTOUT)!(Y=-1) G NUM
 Q
 ;
PRINT ;EP;PRINT TOP TEN RECORDS
 D NOW^%DTC S Y=X D DD^%DT S AMHDT=Y
 S Y=AMHBD D DD^%DT S AMHBDD=Y S Y=AMHED D DD^%DT S AMHEDD=Y
 D COVPAGE^AMHRPTCP
 S AMHPG=0 D HEAD
 S %="^XTMP(""AMHTEN"",AMHJOB,AMHBT,",A=%_"""POV"",AMHPOV)",B=%_"""APC"",AMHAPC)",AMHC=%_"1)",E=%_"2)",F=%_"3)",G=%_"4)"
 S (J,I)=0 F  S I=$O(^XTMP("AMHTEN",AMHJOB,AMHBT,1,I)) Q:I'=+I!($D(AMHQUIT))!(J>(AMHLNO-1))  D
 .S AMHPOV="" F  S AMHPOV=$O(^XTMP("AMHTEN",AMHJOB,AMHBT,1,I,AMHPOV)) Q:AMHPOV=""!($D(AMHQUIT))  S J=J+1  D
 ..I J=1,AMHCHRT="B" D SETDASH
 ..I $Y>(IOSL-4) D HEAD Q:$D(AMHQUIT)
 ..;I AMHCHRT="L" W !,J,".",?6,$E(AMHPOV,1,30),?39,$E($P(@AMHA,U,2),1,15),?56,+(@AMHA),?66,$P(@AMHA,U,3) Q
 ..I AMHCHRT="L" W !,J,".",?6,$E(AMHPOV,1,30),?39,$E($P(@AMHA,U,2),1,15),?56,+(@AMHA),?66,$J(($P(@AMHA,U,3)/60),7,1) Q
 ..W !,$E(AMHPOV,1,17),?18," (",$E($P(@AMHA,U,2),1,6),")",?27,"|" S L=+(@AMHA),D=L\AMHDASH F %=1:1:D W "*"
 ..W " ",+(@AMHA)
 I AMHCHRT="B",$G(AMHDASH) D
 .W ! S J=27 F X=1:1:10 W ?J,"|_________" S J=J+10
 .W "|",!
 .S J=27 F X=0:1:10 W ?J,AMHDASH*10*X S J=J+10
PEXIT D DONE^AMHLEIN,^AMHEKL Q
SETDASH ;set dash limits for bar chart
 NEW L,D
 S L=+(@AMHA)
 S M=$L(L),F=$E(L)+1,L=F F %=1:1:(M-1) S L=L_"0"
 I L<100 S L=100
 S AMHDASH=L\100
 Q
HEAD I 'AMHPG G HEAD1
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S AMHQUIT="" Q
HEAD1 ;
 W:$D(IOF) @IOF S AMHPG=AMHPG+1
 W !?2,AMHDT,?72,"Page ",AMHPG
 S AMHLENG=$L($P(^DIC(4,DUZ(2),0),U))
 W !?((80-AMHLENG)/2),$P(^DIC(4,DUZ(2),0),U)
 W !
 W !,"TOP ",AMHLNO," ",AMHINF,"'s."
 I $E(AMHRRPT)="P" W !,$S(AMHPRIM="P":"PRIMARY POV Only",1:"Both PRIMARY and SECONDARY POV's are included.")
 W !,"DATES:  ",AMHBDD,"  TO  ",AMHEDD,!
 I AMHCHRT="L" W !,"No.",?6,AMHHD1,?39,AMHHD2,?56,"# RECS",?65,"ACT TIME (HRS)"
 I AMHCHRT="B" W !,AMHHD1
 I AMHCHRT="L" W !,$TR($J(" ",80)," ","-")
 I AMHCHRT="B" W !,$TR($J(" ",132)," ","-")
 Q