BQITXH ;PRXM/HC/ALA-CREATED BY ^ATXSTX ON SEP 06, 2006;
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;;BGP COPD DXS
 ;
 ; This routine loads Taxonomy BGP COPD DXS
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
 ;;21,"491.2 ")
 ;;1
 ;;21,"496. ")
 ;;2
 ;;21,"506.0 ")
 ;;3
 ;;9002226,365,.01)
 ;;BGP COPD DXS
 ;;9002226,365,.02)
 ;;@
 ;;9002226,365,.04)
 ;;n
 ;;9002226,365,.06)
 ;;@
 ;;9002226,365,.08)
 ;;0
 ;;9002226,365,.09)
 ;;3050320
 ;;9002226,365,.11)
 ;;@
 ;;9002226,365,.12)
 ;;31
 ;;9002226,365,.13)
 ;;1
 ;;9002226,365,.14)
 ;;@
 ;;9002226,365,.15)
 ;;80
 ;;9002226,365,.16)
 ;;@
 ;;9002226,365,.17)
 ;;@
 ;;9002226,365,3101)
 ;;@
 ;;9002226.02101,"365,491.2 ",.01)
 ;;491.2 
 ;;9002226.02101,"365,491.2 ",.02)
 ;;491.22 
 ;;9002226.02101,"365,496. ",.01)
 ;;496. 
 ;;9002226.02101,"365,496. ",.02)
 ;;496. 
 ;;9002226.02101,"365,506.0 ",.01)
 ;;506.0 
 ;;9002226.02101,"365,506.0 ",.02)
 ;;506.9 
 ;
OTHER ; OTHER ROUTINES
 Q