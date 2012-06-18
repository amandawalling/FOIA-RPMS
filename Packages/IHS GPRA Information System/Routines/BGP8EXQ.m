BGP8EXQ ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;;BGP GPRA PREGNANCY DIAGNOSES
 ;
 ; This routine loads Taxonomy BGP GPRA PREGNANCY DIAGNOSES
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
 ;;21,"640.00 ")
 ;;1
 ;;21,"651.00 ")
 ;;2
 ;;21,"V22.0 ")
 ;;3
 ;;21,"V72.42 ")
 ;;4
 ;;9002226,662,.01)
 ;;BGP GPRA PREGNANCY DIAGNOSES
 ;;9002226,662,.02)
 ;;@
 ;;9002226,662,.04)
 ;;@
 ;;9002226,662,.06)
 ;;@
 ;;9002226,662,.08)
 ;;0
 ;;9002226,662,.09)
 ;;3070806
 ;;9002226,662,.11)
 ;;@
 ;;9002226,662,.12)
 ;;31
 ;;9002226,662,.13)
 ;;1
 ;;9002226,662,.14)
 ;;@
 ;;9002226,662,.15)
 ;;80
 ;;9002226,662,.16)
 ;;@
 ;;9002226,662,.17)
 ;;@
 ;;9002226,662,3101)
 ;;@
 ;;9002226.02101,"662,640.00 ",.01)
 ;;640.00 
 ;;9002226.02101,"662,640.00 ",.02)
 ;;649.64 
 ;;9002226.02101,"662,651.00 ",.01)
 ;;651.00 
 ;;9002226.02101,"662,651.00 ",.02)
 ;;676.94 
 ;;9002226.02101,"662,V22.0 ",.01)
 ;;V22.0 
 ;;9002226.02101,"662,V22.0 ",.02)
 ;;V23.9 
 ;;9002226.02101,"662,V72.42 ",.01)
 ;;V72.42 
 ;;9002226.02101,"662,V72.42 ",.02)
 ;;V72.42 
 ;
OTHER ; OTHER ROUTINES
 Q