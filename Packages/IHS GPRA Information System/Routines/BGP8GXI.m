BGP8GXI ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;;BGP LBBB ON ECG CPT
 ;
 ; This routine loads Taxonomy BGP LBBB ON ECG CPT
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
 ;;21,"93000 ")
 ;;1
 ;;21,"93010 ")
 ;;2
 ;;21,"93014 ")
 ;;3
 ;;21,"93018 ")
 ;;4
 ;;21,"93040 ")
 ;;5
 ;;21,"93042 ")
 ;;6
 ;;21,"93224 ")
 ;;7
 ;;21,"93227 ")
 ;;8
 ;;21,"93233 ")
 ;;9
 ;;21,"93237 ")
 ;;10
 ;;21,"93268 ")
 ;;11
 ;;21,"93270 ")
 ;;12
 ;;21,"93272 ")
 ;;13
 ;;9002226,377,.01)
 ;;BGP LBBB ON ECG CPT
 ;;9002226,377,.02)
 ;;@
 ;;9002226,377,.04)
 ;;n
 ;;9002226,377,.06)
 ;;@
 ;;9002226,377,.08)
 ;;0
 ;;9002226,377,.09)
 ;;3060322
 ;;9002226,377,.11)
 ;;@
 ;;9002226,377,.12)
 ;;455
 ;;9002226,377,.13)
 ;;1
 ;;9002226,377,.14)
 ;;@
 ;;9002226,377,.15)
 ;;81
 ;;9002226,377,.16)
 ;;@
 ;;9002226,377,.17)
 ;;@
 ;;9002226,377,3101)
 ;;@
 ;;9002226.02101,"377,93000 ",.01)
 ;;93000 
 ;;9002226.02101,"377,93000 ",.02)
 ;;93000 
 ;;9002226.02101,"377,93010 ",.01)
 ;;93010 
 ;;9002226.02101,"377,93010 ",.02)
 ;;93010 
 ;;9002226.02101,"377,93014 ",.01)
 ;;93014 
 ;;9002226.02101,"377,93014 ",.02)
 ;;93015 
 ;;9002226.02101,"377,93018 ",.01)
 ;;93018 
 ;;9002226.02101,"377,93018 ",.02)
 ;;93018 
 ;;9002226.02101,"377,93040 ",.01)
 ;;93040 
 ;;9002226.02101,"377,93040 ",.02)
 ;;93040 
 ;;9002226.02101,"377,93042 ",.01)
 ;;93042 
 ;;9002226.02101,"377,93042 ",.02)
 ;;93042 
 ;;9002226.02101,"377,93224 ",.01)
 ;;93224 
 ;;9002226.02101,"377,93224 ",.02)
 ;;93224 
 ;;9002226.02101,"377,93227 ",.01)
 ;;93227 
 ;;9002226.02101,"377,93227 ",.02)
 ;;93230 
 ;;9002226.02101,"377,93233 ",.01)
 ;;93233 
 ;;9002226.02101,"377,93233 ",.02)
 ;;93235 
 ;;9002226.02101,"377,93237 ",.01)
 ;;93237 
 ;;9002226.02101,"377,93237 ",.02)
 ;;93237 
 ;;9002226.02101,"377,93268 ",.01)
 ;;93268 
 ;;9002226.02101,"377,93268 ",.02)
 ;;93268 
 ;;9002226.02101,"377,93270 ",.01)
 ;;93270 
 ;;9002226.02101,"377,93270 ",.02)
 ;;93270 
 ;;9002226.02101,"377,93272 ",.01)
 ;;93272 
 ;;9002226.02101,"377,93272 ",.02)
 ;;93272 
 ;
OTHER ; OTHER ROUTINES
 Q