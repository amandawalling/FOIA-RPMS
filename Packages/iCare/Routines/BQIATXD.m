BQIATXD ;PRXM/HC/ALA-CREATED BY ^ATXSTX ON SEP 19, 2006;
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;;BQI KNOWN CVD-1 DXS
 ;
 ; This routine loads Taxonomy BQI KNOWN CVD-1 DXS
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
 ;;21,"431. ")
 ;;1
 ;;21,"433.01 ")
 ;;7
 ;;21,"433.11 ")
 ;;8
 ;;21,"433.21 ")
 ;;9
 ;;21,"433.31 ")
 ;;10
 ;;21,"433.81 ")
 ;;11
 ;;21,"433.91 ")
 ;;12
 ;;21,"434.01 ")
 ;;13
 ;;21,"434.11 ")
 ;;14
 ;;21,"434.91 ")
 ;;15
 ;;21,"435.3 ")
 ;;2
 ;;21,"440.30 ")
 ;;4
 ;;21,"440.31 ")
 ;;5
 ;;21,"440.32 ")
 ;;6
 ;;21,"557.1 ")
 ;;3
 ;;9002226,569,.01)
 ;;BQI KNOWN CVD-1 DXS
 ;;9002226,569,.02)
 ;;@
 ;;9002226,569,.04)
 ;;@
 ;;9002226,569,.06)
 ;;@
 ;;9002226,569,.08)
 ;;0
 ;;9002226,569,.09)
 ;;3060811
 ;;9002226,569,.11)
 ;;@
 ;;9002226,569,.12)
 ;;31
 ;;9002226,569,.13)
 ;;1
 ;;9002226,569,.14)
 ;;@
 ;;9002226,569,.15)
 ;;80
 ;;9002226,569,.16)
 ;;@
 ;;9002226,569,.17)
 ;;@
 ;;9002226,569,3101)
 ;;@
 ;;9002226.02101,"569,431. ",.01)
 ;;431. 
 ;;9002226.02101,"569,431. ",.02)
 ;;431. 
 ;;9002226.02101,"569,433.01 ",.01)
 ;;433.01
 ;;9002226.02101,"569,433.01 ",.02)
 ;;433.01
 ;;9002226.02101,"569,433.11 ",.01)
 ;;433.11
 ;;9002226.02101,"569,433.11 ",.02)
 ;;433.11
 ;;9002226.02101,"569,433.21 ",.01)
 ;;433.21
 ;;9002226.02101,"569,433.21 ",.02)
 ;;433.21
 ;;9002226.02101,"569,433.31 ",.01)
 ;;433.31
 ;;9002226.02101,"569,433.31 ",.02)
 ;;433.31
 ;;9002226.02101,"569,433.81 ",.01)
 ;;433.81
 ;;9002226.02101,"569,433.81 ",.02)
 ;;433.81
 ;;9002226.02101,"569,433.91 ",.01)
 ;;433.91
 ;;9002226.02101,"569,433.91 ",.02)
 ;;433.91
 ;;9002226.02101,"569,434.01 ",.01)
 ;;434.01
 ;;9002226.02101,"569,434.01 ",.02)
 ;;434.01
 ;;9002226.02101,"569,434.11 ",.01)
 ;;434.11
 ;;9002226.02101,"569,434.11 ",.02)
 ;;434.11
 ;;9002226.02101,"569,434.91 ",.01)
 ;;434.91
 ;;9002226.02101,"569,434.91 ",.02)
 ;;434.91
 ;;9002226.02101,"569,435.3 ",.01)
 ;;435.3 
 ;;9002226.02101,"569,435.3 ",.02)
 ;;435.3 
 ;;9002226.02101,"569,440.30 ",.01)
 ;;440.30
 ;;9002226.02101,"569,440.30 ",.02)
 ;;440.30
 ;;9002226.02101,"569,440.31 ",.01)
 ;;440.31
 ;;9002226.02101,"569,440.31 ",.02)
 ;;440.31
 ;;9002226.02101,"569,440.32 ",.01)
 ;;440.32
 ;;9002226.02101,"569,440.32 ",.02)
 ;;440.32
 ;;9002226.02101,"569,557.1 ",.01)
 ;;557.1 
 ;;9002226.02101,"569,557.1 ",.02)
 ;;557.1 
 ;
OTHER ; OTHER ROUTINES
 Q
