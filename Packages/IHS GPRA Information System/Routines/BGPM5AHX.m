BGPM5AHX ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON AUG 19, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;;BGPMU NURSING FAC EM
 ;
 ; This routine loads Taxonomy BGPMU NURSING FAC EM
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
 ;;21,"99304 ")
 ;;1
 ;;9002226,751,.01)
 ;;BGPMU NURSING FAC EM
 ;;9002226,751,.02)
 ;;Enc codes for Nursing Fac
 ;;9002226,751,.04)
 ;;n
 ;;9002226,751,.06)
 ;;@
 ;;9002226,751,.08)
 ;;@
 ;;9002226,751,.09)
 ;;3110124
 ;;9002226,751,.11)
 ;;@
 ;;9002226,751,.12)
 ;;@
 ;;9002226,751,.13)
 ;;@
 ;;9002226,751,.14)
 ;;@
 ;;9002226,751,.15)
 ;;81
 ;;9002226,751,.16)
 ;;1
 ;;9002226,751,.17)
 ;;@
 ;;9002226,751,3101)
 ;;@
 ;;9002226.02101,"751,99304 ",.01)
 ;;99304
 ;;9002226.02101,"751,99304 ",.02)
 ;;99310
 ;
OTHER ; OTHER ROUTINES
 Q