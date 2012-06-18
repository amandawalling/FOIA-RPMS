BGPMATXT ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON FEB 02, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;;BGPMU MAMMOGRAM ENC ICD
 ;
 ; This routine loads Taxonomy BGPMU MAMMOGRAM ENC ICD
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
 ;;21,"V70.0 ")
 ;;1
 ;;21,"V70.3 ")
 ;;2
 ;;21,"V70.5 ")
 ;;3
 ;;21,"V70.6 ")
 ;;6
 ;;21,"V70.8 ")
 ;;4
 ;;21,"V70.9 ")
 ;;5
 ;;9002226,742,.01)
 ;;BGPMU MAMMOGRAM ENC ICD
 ;;9002226,742,.02)
 ;;Encounter ICD for mammogram
 ;;9002226,742,.04)
 ;;n
 ;;9002226,742,.06)
 ;;@
 ;;9002226,742,.08)
 ;;@
 ;;9002226,742,.09)
 ;;3110118
 ;;9002226,742,.11)
 ;;@
 ;;9002226,742,.12)
 ;;@
 ;;9002226,742,.13)
 ;;@
 ;;9002226,742,.14)
 ;;@
 ;;9002226,742,.15)
 ;;80
 ;;9002226,742,.16)
 ;;1
 ;;9002226,742,.17)
 ;;@
 ;;9002226,742,3101)
 ;;@
 ;;9002226.02101,"742,V70.0 ",.01)
 ;;V70.0
 ;;9002226.02101,"742,V70.0 ",.02)
 ;;V70.0
 ;;9002226.02101,"742,V70.3 ",.01)
 ;;V70.3
 ;;9002226.02101,"742,V70.3 ",.02)
 ;;V70.3
 ;;9002226.02101,"742,V70.5 ",.01)
 ;;V70.5
 ;;9002226.02101,"742,V70.5 ",.02)
 ;;V70.5
 ;;9002226.02101,"742,V70.6 ",.01)
 ;;V70.6
 ;;9002226.02101,"742,V70.6 ",.02)
 ;;V70.6
 ;;9002226.02101,"742,V70.8 ",.01)
 ;;V70.8
 ;;9002226.02101,"742,V70.8 ",.02)
 ;;V0.8
 ;;9002226.02101,"742,V70.9 ",.01)
 ;;V70.9
 ;;9002226.02101,"742,V70.9 ",.02)
 ;;V70.9
 ;
OTHER ; OTHER ROUTINES
 Q