BGP20X ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 19, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP PED LICE DXS
 ;
 ; This routine loads Taxonomy BGP PED LICE DXS
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
 ;;21,"132.0 ")
 ;;1
 ;;21,"132.3 ")
 ;;2
 ;;9002226,1635,.01)
 ;;BGP PED LICE DXS
 ;;9002226,1635,.02)
 ;;@
 ;;9002226,1635,.04)
 ;;@
 ;;9002226,1635,.06)
 ;;@
 ;;9002226,1635,.08)
 ;;0
 ;;9002226,1635,.09)
 ;;3120219
 ;;9002226,1635,.11)
 ;;@
 ;;9002226,1635,.12)
 ;;31
 ;;9002226,1635,.13)
 ;;1
 ;;9002226,1635,.14)
 ;;@
 ;;9002226,1635,.15)
 ;;80
 ;;9002226,1635,.16)
 ;;@
 ;;9002226,1635,.17)
 ;;@
 ;;9002226,1635,3101)
 ;;@
 ;;9002226.02101,"1635,132.0 ",.01)
 ;;132.0 
 ;;9002226.02101,"1635,132.0 ",.02)
 ;;132.0 
 ;;9002226.02101,"1635,132.3 ",.01)
 ;;132.3 
 ;;9002226.02101,"1635,132.3 ",.02)
 ;;132.3 
 ;
OTHER ; OTHER ROUTINES
 Q