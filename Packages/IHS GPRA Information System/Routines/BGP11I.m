BGP11I ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 28, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;;BGP HEPATITIS A CPTS
 ;
 ; This routine loads Taxonomy BGP HEPATITIS A CPTS
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
 ;;21,"90632 ")
 ;;1
 ;;21,"90730 ")
 ;;2
 ;;9002226,1013,.01)
 ;;BGP HEPATITIS A CPTS
 ;;9002226,1013,.02)
 ;;@
 ;;9002226,1013,.04)
 ;;@
 ;;9002226,1013,.06)
 ;;@
 ;;9002226,1013,.08)
 ;;0
 ;;9002226,1013,.09)
 ;;3110328
 ;;9002226,1013,.11)
 ;;@
 ;;9002226,1013,.12)
 ;;455
 ;;9002226,1013,.13)
 ;;1
 ;;9002226,1013,.14)
 ;;@
 ;;9002226,1013,.15)
 ;;81
 ;;9002226,1013,.16)
 ;;@
 ;;9002226,1013,.17)
 ;;@
 ;;9002226,1013,3101)
 ;;@
 ;;9002226.02101,"1013,90632 ",.01)
 ;;90632 
 ;;9002226.02101,"1013,90632 ",.02)
 ;;90636 
 ;;9002226.02101,"1013,90730 ",.01)
 ;;90730 
 ;;9002226.02101,"1013,90730 ",.02)
 ;;90730 
 ;
OTHER ; OTHER ROUTINES
 Q
