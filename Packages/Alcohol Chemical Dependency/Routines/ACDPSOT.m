ACDPSOT ;IHS/ADC/EDE/KML - DISPLAY IN/RE/TD/FU OVER TIME; 
 ;;4.1;CHEMICAL DEPENDENCY MIS;;MAY 11, 1998
 ;
 ; This routine displays a patient's CDMIS INITIAL, REOPEN,
 ; TRANS/DISCH/CLOSE, and FOLLOWUP visits with subordinate file entry
 ; to use to track status over time.
 ;
START ;
 F  D PATLOOP Q:ACDQ
 D EOJ
 Q
 ;
PATLOOP ; DISPLAY PATIENTS UNTIL DONE
 D GETPAT
 Q:ACDQ
 D RESTRICT ;              see if restrictions apply
 Q:ACDQ
 D DISPLAY ;               write face sheet
 Q
 ;
GETPAT ; GET PATIENT
 S ACDQ=1
 S AUPNLK("ALL")=1
 S DIC="^AUPNPAT(",DIC(0)="AEMQ",DIC("S")="I $D(^ACDVIS(""D"",+Y))" D DIC^ACDFMC
 K AUPNLK("ALL")
 Q:Y<0
 S ACDDFNP=+Y,ACDDFN=$P(^DPT(ACDDFNP,0),U)
 S ACDQ=0
 Q
 ;
RESTRICT ; SEE IF RESTRICTIONS APPLY
 S (ACDCOMC,ACDCOMT)=""
 S DIR(0)="YO",DIR("A")="Do you wish to restrict the output to one Component code/type",DIR("B")="N" K DA D ^DIR K DIR
 D:Y GETCOMP^ACDDE2
 Q
 ;
DISPLAY ;
 W !
 D DEV^ACDDEU
 Q:POP
 I $D(IO("Q")) D  Q
 . S ZTRTN="DISPLAYQ^ACDPSOT",ZTDESC="CDMIS FACE SHEET",ZTDTH=$H,ZTSAVE("ACD*")=""
 . D ^%ZTLOAD
 . Q
 D DISPLAYQ
 U 0
 Q
 ;
DISPLAYQ ; EP - FOR TASKMAN
 I $D(ACDSLAVE) S IOP=ACDSLAVE D ^%ZIS
 U IO
 I '$D(ACDSLAVE) W @IOF
 D GETVSITS^ACDDEU ;       gather all visits for patient
 I $O(^TMP("ACD",$J,"VISITS",0))="" W !,"----------",!,"No CDMIS visits!",!,"----------",! Q
 S (ACDX,ACDY)=0
 F  Q:ACDQ  S ACDX=$O(^TMP("ACD",$J,"VISITS",ACDX)) Q:ACDX=""  S ACDY=0 F  S ACDY=$O(^TMP("ACD",$J,"VISITS",ACDX,ACDY)) Q:'ACDY  D  Q:ACDQ
 . S ACDQ=0
 . I ACDCOMC]"",ACDCOMT]"" D
 .. S X=$P(^ACDVIS(ACDY,0),U,2)
 .. I X'=ACDCOMC S ACDQ=1 Q
 .. S X=$P(^ACDVIS(ACDY,0),U,7)
 .. I X'=ACDCOMT S ACDQ=1 Q
 .. Q
 . I ACDQ S ACDQ=0 Q
 . S ACDTC=$P(^ACDVIS(ACDY,0),U,4)
 . Q:ACDTC'="IN"&(ACDTC'="RE")&(ACDTC'="TD")&(ACDTC'="FU")
 . S ACDVIEN=ACDY
 . NEW ACDX,ACDY,ACDCOMC,ACDCOMT
 . D DISPLAY2
 . Q
 I $D(ACDSLAVE) D ^%ZISC
 I $D(ZTQUEUED) D EOJ S ZTREQ="@"
 Q
 ;
DISPLAY2 ; WRITE ONE FACE SHEET
 U IO
 D:$E(IOST,1,2)="P-" CONF^ACDDEU
 S ACDDA=ACDVIEN,ACDWSTAF(1)=1 D ^ACDWVIS K ACDWSTAF
 S ACDTC=$P(^ACDVIS(ACDVIEN,0),U,4)
 I ACDTC="TD" S ACDDA=$O(^ACDTDC("C",ACDVIEN,0)) I 1
 E  S ACDDA=$O(^ACDIIF("C",ACDVIEN,0))
 Q:'ACDDA
 D @("^ACDW"_$S(ACDTC="TD":"TDC",1:"IIF"))
 S ACDPFACE=1
 D P1^ACDWCD1
 K ACDPFACE
 I '$D(ZTQUEUED),'$D(ACDSLAVE),$E(IOST,1,2)'="P-" D PAUSE^ACDDEU S:$D(DIRUT) ACDQ=1
 W:$D(IOF) @IOF
 Q
 ;
EOJ ;
 D ^%ZISC
 D ^ACDKILL
 Q