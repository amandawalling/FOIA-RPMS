LRARCAM9 ; IHS/DIR/AAB - ARCHIVED RCS 14-4 REPORT LMIP SUPPLEMENT PAGE PRINT ; [ 5/23/95 ]
 ;;5.2;LR;**1002**;JUN 01, 1998
 ;;5.2;LAB SERVICE;**59**;Aug 31, 1995
 ;same as LRCAPAM9 except archived wkld file
EN ;
PRNTSUM ;
 S LRMT=0
 F  S LRMT=$O(^TMP($J,"LMIP",LRMT)) Q:LRMT<1  S LRMTP=$$DTF^LRAFUNC1(LRMT) D  Q:$G(LR("Q"))
 .W !,"LMIP SUPPLEMENTAL REPORT printed ",LRPRD
 .W !,LRHD0
 .W ?((132-($L(LRMTP)+$L($P(LRDA,U,2)))\2)),$P(LRDA,U,2)_"   "_LRMTP
 .S LRPG=LRPG+1 W ?122,"Page ",LRPG,!
 .S LRHDR="Supplemental Pathology Laboratory Medicine Service Workload"
 .W !!,?(132-$L(LRHDR)\2),LRHDR,!
 .W !!,?32,"STD/Rep",?44,"Manual"
 .W ?56,"Micro",?68,"Micro",?80,"In-Pat",?92,"Others",!
 .W ?58,"In",?69,"Out",?80,"Stats",!
 .W $E(LRDSHS,1,132),!
 .D PRNTNAM
 Q
PRNTNAM ;
 N LRRCNT,LRREC,LRLARE
 S LRRCNT=0
 W !,"Anatomic Pathology Division",!,$E(LRDSHS,1,27),!
 S LRLARE=0
 F  S LRLARE=$O(^TMP($J,"LMIP",LRMT,"AP",LRLARE)) Q:LRLARE=""  D
 .S LRREC=$G(^TMP($J,"LMIP",LRMT,"AP",LRLARE))
 .S LRRCNT=LRRCNT+1
 .W LRRCNT,?6,LRLARE
 .D PRNTREC
 .W !
 ;Write AP subtotals
 S LRLARE="AP subtotal"
 S LRREC=$G(^TMP($J,"LMIP",LRMT,"AP",0))
 W ?6,LRLARE
 D PRNTREC
 ;
 W !!,"Clinical Pathology Division",!,$E(LRDSHS,1,27),!
 S LRLARE=0
 F  S LRLARE=$O(^TMP($J,"LMIP",LRMT,"CP",LRLARE)) Q:LRLARE=""  D
 .S LRREC=$G(^TMP($J,"LMIP",LRMT,"CP",LRLARE))
 .S LRRCNT=LRRCNT+1
 .W LRRCNT,?6,LRLARE
 .D PRNTREC
 .W !
 ;Write CP subtotals
 S LRLARE="CP subtotal"
 S LRREC=$G(^TMP($J,"LMIP",LRMT,"CP",0))
 W ?6,LRLARE
 D PRNTREC
 ;Write grand totals
 W !
 W $E(LRDSHS,1,132),!
 S LRRCNT=LRRCNT+1,LRLARE="GRAND TOTAL"
 D EDIT1
 S LRREC=$G(^TMP($J,"LMIP",LRMT,"TOT-AP/CP"))
 W ?6,LRLARE
 D PRNTREC
 I $E(IOST,1,2)="C-",'$G(LR("Q")) D M^LRU Q:$G(LR("Q"))
 W @IOF
 Q
PRNTREC ;
 W ?31,$J($P(LRREC,U,12),7),?43,$J($P(LRREC,U,13),7)
 W ?55,$J($P(LRREC,U,14),7),?67,$J($P(LRREC,U,15),7)
 W ?79,$J($P(LRREC,U,16),7),?91,$J($P(LRREC,U,17),7)
 Q
EDIT1 ;
 N I,LRAPSUB,LRCAPSUB,LRGTOT
 S LRAPSUB=$G(^TMP($J,"LMIP",LRMT,"AP",0))
 S LRCPSUB=$G(^TMP($J,"LMIP",LRMT,"CP",0))
 F I=12:1:17 D
 . S LRGTOT=$P(LRAPSUB,U,I)+$P(LRCPSUB,U,I)
 . S $P(^TMP($J,"LMIP",LRMT,"TOT-AP/CP"),U,I)=LRGTOT
 Q