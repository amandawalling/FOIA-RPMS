BTPWYXC ;VNGT/HS/ALA-CREATED BY ^ATXSTX ON JAN 22, 2010;
 ;;1.0;CARE MANAGEMENT EVENT TRACKING;;Feb 07, 2011
 ;;BTPW TUBAL LIGATION PROC
 ;
 ; This routine loads Taxonomy BTPW TUBAL LIGATION PROC
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"66.21 ")
 ;;1
 ;;21,"66.22 ")
 ;;2
 ;;21,"66.29 ")
 ;;3
 ;;21,"66.31 ")
 ;;4
 ;;21,"66.32 ")
 ;;5
 ;;21,"66.39 ")
 ;;6
 ;;21,"66.51 ")
 ;;7
 ;;21,"66.52 ")
 ;;8
 ;;21,"66.92 ")
 ;;9
 ;;9002226,1324,.01)
 ;;BTPW TUBAL LIGATION PROC
 ;;9002226,1324,.02)
 ;;@
 ;;9002226,1324,.04)
 ;;n
 ;;9002226,1324,.06)
 ;;@
 ;;9002226,1324,.08)
 ;;@
 ;;9002226,1324,.09)
 ;;3060516
 ;;9002226,1324,.11)
 ;;@
 ;;9002226,1324,.12)
 ;;255
 ;;9002226,1324,.13)
 ;;1
 ;;9002226,1324,.14)
 ;;@
 ;;9002226,1324,.15)
 ;;80.1
 ;;9002226,1324,.16)
 ;;@
 ;;9002226,1324,.17)
 ;;@
 ;;9002226,1324,3101)
 ;;@
 ;;9002226.02101,"1324,66.21 ",.01)
 ;;66.21
 ;;9002226.02101,"1324,66.21 ",.02)
 ;;66.21
 ;;9002226.02101,"1324,66.22 ",.01)
 ;;66.22
 ;;9002226.02101,"1324,66.22 ",.02)
 ;;66.22
 ;;9002226.02101,"1324,66.29 ",.01)
 ;;66.29
 ;;9002226.02101,"1324,66.29 ",.02)
 ;;66.29
 ;;9002226.02101,"1324,66.31 ",.01)
 ;;66.31
 ;;9002226.02101,"1324,66.31 ",.02)
 ;;66.31
 ;;9002226.02101,"1324,66.32 ",.01)
 ;;66.32
 ;;9002226.02101,"1324,66.32 ",.02)
 ;;66.32
 ;;9002226.02101,"1324,66.39 ",.01)
 ;;66.39
 ;;9002226.02101,"1324,66.39 ",.02)
 ;;66.39
 ;;9002226.02101,"1324,66.51 ",.01)
 ;;66.51
 ;;9002226.02101,"1324,66.51 ",.02)
 ;;66.51
 ;;9002226.02101,"1324,66.52 ",.01)
 ;;66.52
 ;;9002226.02101,"1324,66.52 ",.02)
 ;;66.52
 ;;9002226.02101,"1324,66.92 ",.01)
 ;;66.92
 ;;9002226.02101,"1324,66.92 ",.02)
 ;;66.92
 ;
OTHER ; OTHER ROUTINES
 Q