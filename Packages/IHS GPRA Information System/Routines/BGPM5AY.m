BGPM5AY ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON AUG 31, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;;BGPMU LAB CPT PREGNANCY
 ;
 ; This routine loads Taxonomy BGPMU LAB CPT PREGNANCY
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
 ;;21,"81025 ")
 ;;1
 ;;21,"84702 ")
 ;;2
 ;;21,"84703 ")
 ;;3
 ;;9002226,1015,.01)
 ;;BGPMU LAB CPT PREGNANCY
 ;;9002226,1015,.02)
 ;;CPT FOR PREGNANCY (LAB)
 ;;9002226,1015,.04)
 ;;@
 ;;9002226,1015,.06)
 ;;@
 ;;9002226,1015,.08)
 ;;@
 ;;9002226,1015,.09)
 ;;3110824
 ;;9002226,1015,.11)
 ;;@
 ;;9002226,1015,.12)
 ;;@
 ;;9002226,1015,.13)
 ;;@
 ;;9002226,1015,.14)
 ;;@
 ;;9002226,1015,.15)
 ;;81
 ;;9002226,1015,.16)
 ;;1
 ;;9002226,1015,.17)
 ;;@
 ;;9002226,1015,3101)
 ;;@
 ;;9002226.02101,"1015,81025 ",.01)
 ;;81025
 ;;9002226.02101,"1015,81025 ",.02)
 ;;81025
 ;;9002226.02101,"1015,84702 ",.01)
 ;;84702
 ;;9002226.02101,"1015,84702 ",.02)
 ;;84702
 ;;9002226.02101,"1015,84703 ",.01)
 ;;84703
 ;;9002226.02101,"1015,84703 ",.02)
 ;;84703
 ;
OTHER ; OTHER ROUTINES
 Q