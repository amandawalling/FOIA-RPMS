BGP45X ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 26, 2013;
 ;;14.0;IHS CLINICAL REPORTING;;NOV 14, 2013;Build 101
 ;;BGP RA METHOTREXATE VAPI
 ;
 ; This routine loads Taxonomy BGP RA METHOTREXATE VAPI
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
 ;;21,"M0056 ")
 ;;1
 ;;9002226,1839,.01)
 ;;BGP RA METHOTREXATE VAPI
 ;;9002226,1839,.02)
 ;;@
 ;;9002226,1839,.04)
 ;;@
 ;;9002226,1839,.06)
 ;;@
 ;;9002226,1839,.08)
 ;;@
 ;;9002226,1839,.09)
 ;;3130926
 ;;9002226,1839,.11)
 ;;@
 ;;9002226,1839,.12)
 ;;@
 ;;9002226,1839,.13)
 ;;1
 ;;9002226,1839,.14)
 ;;@
 ;;9002226,1839,.15)
 ;;50.68
 ;;9002226,1839,.16)
 ;;@
 ;;9002226,1839,.17)
 ;;@
 ;;9002226,1839,3101)
 ;;@
 ;;9002226.02101,"1839,M0056 ",.01)
 ;;M0056
 ;;9002226.02101,"1839,M0056 ",.02)
 ;;M0056
 ;
OTHER ; OTHER ROUTINES
 Q