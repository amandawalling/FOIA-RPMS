BGP9RXE ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP HGBA1C CPTS
 ;
 ; This routine loads Taxonomy BGP HGBA1C CPTS
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
 ;;21,"3044F ")
 ;;1
 ;;21,"3045F ")
 ;;2
 ;;21,"3046F ")
 ;;3
 ;;21,"3047F ")
 ;;4
 ;;21,"83036 ")
 ;;5
 ;;9002226,742,.01)
 ;;BGP HGBA1C CPTS
 ;;9002226,742,.02)
 ;;@
 ;;9002226,742,.04)
 ;;n
 ;;9002226,742,.06)
 ;;@
 ;;9002226,742,.08)
 ;;0
 ;;9002226,742,.09)
 ;;3080402
 ;;9002226,742,.11)
 ;;@
 ;;9002226,742,.12)
 ;;455
 ;;9002226,742,.13)
 ;;1
 ;;9002226,742,.14)
 ;;@
 ;;9002226,742,.15)
 ;;81
 ;;9002226,742,.16)
 ;;@
 ;;9002226,742,.17)
 ;;@
 ;;9002226,742,3101)
 ;;@
 ;;9002226.02101,"742,3044F ",.01)
 ;;3044F 
 ;;9002226.02101,"742,3044F ",.02)
 ;;3044F 
 ;;9002226.02101,"742,3045F ",.01)
 ;;3045F 
 ;;9002226.02101,"742,3045F ",.02)
 ;;3045F 
 ;;9002226.02101,"742,3046F ",.01)
 ;;3046F 
 ;;9002226.02101,"742,3046F ",.02)
 ;;3046F 
 ;;9002226.02101,"742,3047F ",.01)
 ;;3047F 
 ;;9002226.02101,"742,3047F ",.02)
 ;;3047F 
 ;;9002226.02101,"742,83036 ",.01)
 ;;83036 
 ;;9002226.02101,"742,83036 ",.02)
 ;;83037 
 ;
OTHER ; OTHER ROUTINES
 Q