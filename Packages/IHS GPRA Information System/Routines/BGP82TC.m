BGP82TC ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JUN 09, 2008;
 ;;8.0;IHS CLINICAL REPORTING;**2**;MAR 12, 2008
 ;;BGP TIA DXS
 ;
 ; This routine loads Taxonomy BGP TIA DXS
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
 ;;21,"433.01 ")
 ;;1
 ;;21,"433.11 ")
 ;;2
 ;;21,"433.21 ")
 ;;3
 ;;21,"433.31 ")
 ;;4
 ;;21,"433.81 ")
 ;;5
 ;;21,"433.91 ")
 ;;6
 ;;21,"434.01 ")
 ;;7
 ;;21,"434.11 ")
 ;;8
 ;;21,"434.91 ")
 ;;9
 ;;9002226,788,.01)
 ;;BGP TIA DXS
 ;;9002226,788,.02)
 ;;@
 ;;9002226,788,.04)
 ;;@
 ;;9002226,788,.06)
 ;;@
 ;;9002226,788,.08)
 ;;0
 ;;9002226,788,.09)
 ;;3080407
 ;;9002226,788,.11)
 ;;@
 ;;9002226,788,.12)
 ;;31
 ;;9002226,788,.13)
 ;;1
 ;;9002226,788,.14)
 ;;@
 ;;9002226,788,.15)
 ;;80
 ;;9002226,788,.16)
 ;;@
 ;;9002226,788,.17)
 ;;@
 ;;9002226,788,3101)
 ;;@
 ;;9002226.02101,"788,433.01 ",.01)
 ;;433.01 
 ;;9002226.02101,"788,433.01 ",.02)
 ;;433.01 
 ;;9002226.02101,"788,433.11 ",.01)
 ;;433.11 
 ;;9002226.02101,"788,433.11 ",.02)
 ;;433.11 
 ;;9002226.02101,"788,433.21 ",.01)
 ;;433.21 
 ;;9002226.02101,"788,433.21 ",.02)
 ;;433.21 
 ;;9002226.02101,"788,433.31 ",.01)
 ;;433.31 
 ;;9002226.02101,"788,433.31 ",.02)
 ;;433.31 
 ;;9002226.02101,"788,433.81 ",.01)
 ;;433.81 
 ;;9002226.02101,"788,433.81 ",.02)
 ;;433.81 
 ;;9002226.02101,"788,433.91 ",.01)
 ;;433.91 
 ;;9002226.02101,"788,433.91 ",.02)
 ;;433.91 
 ;;9002226.02101,"788,434.01 ",.01)
 ;;434.01 
 ;;9002226.02101,"788,434.01 ",.02)
 ;;434.01 
 ;;9002226.02101,"788,434.11 ",.01)
 ;;434.11 
 ;;9002226.02101,"788,434.11 ",.02)
 ;;434.11 
 ;;9002226.02101,"788,434.91 ",.01)
 ;;434.91 
 ;;9002226.02101,"788,434.91 ",.02)
 ;;435.9 
 ;
OTHER ; OTHER ROUTINES
 Q