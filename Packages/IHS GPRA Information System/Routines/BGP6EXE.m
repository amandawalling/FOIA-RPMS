BGP6EXE ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 21, 2005 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;;BGP6;;AUG 21, 2005
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
 ;;9002226,312,.01)
 ;;BGP GPRA PREGNANCY DIAGNOSES
 ;;9002226,312,.02)
 ;;@
 ;;9002226,312,.04)
 ;;n
 ;;9002226,312,.06)
 ;;@
 ;;9002226,312,.08)
 ;;0
 ;;9002226,312,.09)
 ;;3030305
 ;;9002226,312,.11)
 ;;@
 ;;9002226,312,.12)
 ;;31
 ;;9002226,312,.13)
 ;;1
 ;;9002226,312,.14)
 ;;@
 ;;9002226,312,.15)
 ;;80
 ;;9002226,312,.16)
 ;;@
 ;;9002226,312,.17)
 ;;@
 ;;9002226,312,3101)
 ;;@
 ;;9002226.02101,"312,640.00 ",.01)
 ;;640.00 
 ;;9002226.02101,"312,640.00 ",.02)
 ;;648.94 
 ;;9002226.02101,"312,651.00 ",.01)
 ;;651.00 
 ;;9002226.02101,"312,651.00 ",.02)
 ;;676.94 
 ;;9002226.02101,"312,V22.0 ",.01)
 ;;V22.0 
 ;;9002226.02101,"312,V22.0 ",.02)
 ;;V23.9 
 ;
OTHER ; OTHER ROUTINES
 Q