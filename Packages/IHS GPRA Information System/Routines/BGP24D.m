BGP24D ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 19, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP PED PERIO DXS
 ;
 ; This routine loads Taxonomy BGP PED PERIO DXS
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
 ;;21,"523.3 ")
 ;;1
 ;;21,"523.8 ")
 ;;2
 ;;9002226,1668,.01)
 ;;BGP PED PERIO DXS
 ;;9002226,1668,.02)
 ;;@
 ;;9002226,1668,.04)
 ;;@
 ;;9002226,1668,.06)
 ;;@
 ;;9002226,1668,.08)
 ;;0
 ;;9002226,1668,.09)
 ;;3120219
 ;;9002226,1668,.11)
 ;;@
 ;;9002226,1668,.12)
 ;;31
 ;;9002226,1668,.13)
 ;;1
 ;;9002226,1668,.14)
 ;;@
 ;;9002226,1668,.15)
 ;;80
 ;;9002226,1668,.16)
 ;;@
 ;;9002226,1668,.17)
 ;;@
 ;;9002226,1668,3101)
 ;;@
 ;;9002226.02101,"1668,523.3 ",.01)
 ;;523.3 
 ;;9002226.02101,"1668,523.3 ",.02)
 ;;523.42 
 ;;9002226.02101,"1668,523.8 ",.01)
 ;;523.8 
 ;;9002226.02101,"1668,523.8 ",.02)
 ;;523.9 
 ;
OTHER ; OTHER ROUTINES
 Q