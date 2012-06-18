BGP9RXX ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP LDL CPTS
 ;
 ; This routine loads Taxonomy BGP LDL CPTS
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
 ;;21,"3048F ")
 ;;1
 ;;21,"3049F ")
 ;;2
 ;;21,"3050F ")
 ;;3
 ;;21,"80061 ")
 ;;4
 ;;21,"83700 ")
 ;;5
 ;;21,"83715 ")
 ;;6
 ;;21,"83721 ")
 ;;7
 ;;9002226,888,.01)
 ;;BGP LDL CPTS
 ;;9002226,888,.02)
 ;;@
 ;;9002226,888,.04)
 ;;n
 ;;9002226,888,.06)
 ;;@
 ;;9002226,888,.08)
 ;;0
 ;;9002226,888,.09)
 ;;3070705
 ;;9002226,888,.11)
 ;;@
 ;;9002226,888,.12)
 ;;455
 ;;9002226,888,.13)
 ;;1
 ;;9002226,888,.14)
 ;;@
 ;;9002226,888,.15)
 ;;81
 ;;9002226,888,.16)
 ;;@
 ;;9002226,888,.17)
 ;;@
 ;;9002226,888,3101)
 ;;@
 ;;9002226.02101,"888,3048F ",.01)
 ;;3048F 
 ;;9002226.02101,"888,3048F ",.02)
 ;;3048F 
 ;;9002226.02101,"888,3049F ",.01)
 ;;3049F 
 ;;9002226.02101,"888,3049F ",.02)
 ;;3049F 
 ;;9002226.02101,"888,3050F ",.01)
 ;;3050F 
 ;;9002226.02101,"888,3050F ",.02)
 ;;3050F 
 ;;9002226.02101,"888,80061 ",.01)
 ;;80061 
 ;;9002226.02101,"888,80061 ",.02)
 ;;80061 
 ;;9002226.02101,"888,83700 ",.01)
 ;;83700 
 ;;9002226.02101,"888,83700 ",.02)
 ;;83704 
 ;;9002226.02101,"888,83715 ",.01)
 ;;83715 
 ;;9002226.02101,"888,83715 ",.02)
 ;;83716 
 ;;9002226.02101,"888,83721 ",.01)
 ;;83721 
 ;;9002226.02101,"888,83721 ",.02)
 ;;83721 
 ;
OTHER ; OTHER ROUTINES
 Q