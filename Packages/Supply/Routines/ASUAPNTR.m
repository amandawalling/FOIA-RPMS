ASUAPNTR ;DSD/DFM - DIRECT ISSUE ENTRY ;  [ 04/15/98  2:38 PM ]
 ;;3.0;SAMS;**1**;AUG 20, 1993
 W !,"1. ENTER TRANSACTION CODE: ",ASUTRNS("TRANSACTION CODE")
 D ^ASUAUAST Q:$D(DUOUT)!($D(DIROUT))!($D(DTOUT))
 D REQD^ASUAUPON Q:$D(DUOUT)!($D(DIROUT))!($D(DTOUT))
 S ASUV("ITEM #")=5 D ^ASUAUSRC Q:$D(DUOUT)!($D(DIROUT))!($D(DTOUT))
 S ASUV("ITEM #")=6 D ^ASUAUACC Q:$D(DUOUT)!($D(DIROUT))!($D(DTOUT))
 S ASUV("ITEM #")=7 D ^ASUAUDOJ Q:$D(DUOUT)!($D(DIROUT))!($D(DTOUT))
 S ASUV("ITEM #")=8 D ^ASUAPSST Q:$D(DUOUT)!($D(DIROUT))!($D(DTOUT))
 K ASUSW("OPTIONAL")
 S ASUV("ITEM #")=9 D ^ASUAUUSR Q:$D(DUOUT)!($D(DIROUT))!($D(DTOUT))
 S ASUV("ITEM #")=10 D ^ASUAPCAN Q:$D(DUOUT)!($D(DIROUT))!($D(DTOUT))
 S ASUV("ITEM #")=11 D ^ASUAUSSA Q:$D(DUOUT)!($D(DIROUT))!($D(DTOUT))
 D ^ASUAPNLI Q:$D(DUOUT)!($D(DIROUT))!($D(DTOUT))
 S ASUV("ITEM #")=13,ASUV("LOWEST")=1 D ^ASUAUVAL
 S ASUV("ITEM #")=14 D ^ASUAUVOU
EXIT ;RETURN TO CALLING ROUTINE
 K X,Y
 Q
