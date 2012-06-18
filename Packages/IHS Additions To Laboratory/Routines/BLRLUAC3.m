BLRLUAC3  ; IHS/OIT/MKK - IHS LRUPAC 3, files 44 & 60 report ; [ 05/15/11  7:50 AM ]
 ;;5.2;IHS LABORATORY;**1030**;NOV 01, 1997
 ;;
 ;; Emulates the Lab accession and test counts Report, Part 5
 ;;
F4460RPT ; EP
 NEW F44DESC,F44IEN,LAB60IEN,L60DESC
 NEW BLRVERN,HEADER,LINES,MAXLINES,PG,QFLG,HEDONE
 NEW LRLDT,LRSDT,SELRAAAB,XTMPNODE
 NEW F44GTOT,F44STOT,F60GTOT
 ;
 Q:$$F4460INV()="Q"
 ;
 F  S F44IEN=$O(^BLRLUPAC(DATETIME,"LOCSORT",F44IEN))  Q:F44IEN<1!(QFLG="Q")  D
 . D F44LINE
 . F  S LAB60IEN=$O(^BLRLUPAC(DATETIME,"LOCSORT",F44IEN,LAB60IEN))  Q:LAB60IEN<1!(QFLG="Q")  D
 .. D F4460LNE
 . D F44SUBLN
 ;
 I QFLG="Q"  D ^%ZISC  Q
 ;
 D F4460TOT
 ;
 D ^%ZISC
 ;
 D PRESSKEY^BLRGMENU(9)
 ;
 Q
 ;
F4460INV() ; EP - File 61 with File 60 detail report INitialization of Variables
 D SETXTMPN^BLRLUAC1(.XTMPNODE)     ; Set the ^TMP node
 S BLRVERN=$P($P($T(+1),";")," ")
 ;
 NEW DATERNGE,BADMSG,STR
 ;
 S BADMSG="No Location nor Laboratory Test File Data Found."
 Q:$$GETXTMPV^BLRLUAC2("SPECSORT",.SELRAAAB,.LRSDT,.LRLDT,BADMSG)="Q" "Q"
 ;
 S DATERNGE="Date Range: "_$$FMTE^XLFDT(LRSDT,"5DZ")
 S DATERNGE=DATERNGE_" thru "_$$FMTE^XLFDT(LRLDT,"5DZ")
 ;
 K HEADER
 S HEADER(1)="Lab Accession and Test Counts"
 S HEADER(2)=SELRAAAB_" Accession Area Counts Only"
 S HEADER(3)=$$CJ^XLFSTR("Hospital Location (# 44) & Laboratory Test (# 60) Report",IOM)
 S HEADER(4)=$$CJ^XLFSTR(DATERNGE,IOM)
 ;
 S MAXLINES=22,LINES=MAXLINES+10,PG=0,(HEDONE,QFLG)="NO"
 ;
 D OPENIO^BLRLUAC9(.MAXLINES,.LINES)
 ;
 I IOST["C-VT" D HEADONE2^BLRLUAC2(.HEDONE)  W !
 ;
 S HEADER(5)=" "
 S HEADER(6)=$TR($$CJ^XLFSTR("@HOSPITAL@LOCATION@(File@44)@",38)," @","= ")
 S $E(HEADER(6),42)=$TR($$CJ^XLFSTR("@LABORATORY@TEST@(File@60)@",39)," @","= ")
 S HEADER(7)="IEN"
 S $E(HEADER(7),10)="Description"
 ; S $E(HEADER(7),32)="Count"
 S $E(HEADER(7),42)="IEN"
 S $E(HEADER(7),52)="Description"
 S $E(HEADER(7),74)="Count"
 ;
 S (F44GTOT,F44STOT,F60GTOT,F44IEN)=0
 ;
 Q "OK"
 ;
F44LINE ; EP
 S F44DESC=$P($G(^SC(F44IEN,0)),"^")
 I LINES<(MAXLINES+1) D JUSTSPEC
 I LINES>MAXLINES D F4460PG  Q:QFLG="Q"
 S LAB60IEN=0
 Q
 ;
F4460LNE ; EP 
 I LINES>MAXLINES&(HEDONE'="YES") D F4460PG  Q:QFLG="Q"
 ;
 S L60DESC=$$TRIM^XLFSTR($P($G(^LAB(60,LAB60IEN,0)),"^"),"LR"," ")
 ;
 W ?41,LAB60IEN
 W ?51,$E(L60DESC,1,18)
 W ?73,$J($G(^BLRLUPAC(DATETIME,"LOCSORT",F44IEN,LAB60IEN)),7)
 W !
 ;
 S LINES=LINES+1
 S F44STOT=F44STOT+$G(^BLRLUPAC(DATETIME,"LOCSORT",F44IEN,LAB60IEN))
 S F60GTOT=F60GTOT+$G(^BLRLUPAC(DATETIME,"LOCSORT",F44IEN,LAB60IEN))
 Q
 ;
F44SUBLN ; EP - F44 Sub total line
 W ?73,$TR($J("",7)," ","-"),!
 W ?9,F44DESC," TOTAL",?73,$J(F44STOT,7),!!
 S LINES=LINES+3
 S F44GTOT=F44GTOT+$G(^BLRLUPAC(DATETIME,"LOCSORT",F44IEN))
 S F44STOT=0
 Q
 ;
F4460TOT ; EP
 ; W ?31,$TR($J("",7)," ","-")
 W ?73,$TR($J("",7)," ","-")
 W !
 W ?9,"HOSPITAL LOCATION (File 44) TOTALS"
 ; W ?31,F44GTOT
 W ?73,$J(F60GTOT,7)
 W !
 Q
 ;
F4460PG ; EP
 D HEADERPG^BLRGMENU(.PG,.QFLG,HEDONE)  Q:QFLG="Q"
 ;
JUSTSPEC ; EP
 W F44IEN
 W ?9,$E(F44DESC,1,18)
 ; W ?31,$G(^BLRLUPAC(DATETIME,"LOCSORT",F44IEN))
 S:HEDONE="YES" PG=PG+1,LINES=7
 Q