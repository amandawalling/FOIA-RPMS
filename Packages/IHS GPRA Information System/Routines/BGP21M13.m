BGP21M13 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1202,54868-3947-00 ",.01)
 ;;54868-3947-00
 ;;9002226.02101,"1202,54868-3947-00 ",.02)
 ;;54868-3947-00
 ;;9002226.02101,"1202,54868-4110-00 ",.01)
 ;;54868-4110-00
 ;;9002226.02101,"1202,54868-4110-00 ",.02)
 ;;54868-4110-00
 ;;9002226.02101,"1202,54868-4113-00 ",.01)
 ;;54868-4113-00
 ;;9002226.02101,"1202,54868-4113-00 ",.02)
 ;;54868-4113-00
 ;;9002226.02101,"1202,54868-4114-00 ",.01)
 ;;54868-4114-00
 ;;9002226.02101,"1202,54868-4114-00 ",.02)
 ;;54868-4114-00
 ;;9002226.02101,"1202,54868-4114-06 ",.01)
 ;;54868-4114-06
 ;;9002226.02101,"1202,54868-4114-06 ",.02)
 ;;54868-4114-06
 ;;9002226.02101,"1202,54868-4520-00 ",.01)
 ;;54868-4520-00
 ;;9002226.02101,"1202,54868-4520-00 ",.02)
 ;;54868-4520-00
 ;;9002226.02101,"1202,54868-4522-00 ",.01)
 ;;54868-4522-00
 ;;9002226.02101,"1202,54868-4522-00 ",.02)
 ;;54868-4522-00
 ;;9002226.02101,"1202,54868-4522-01 ",.01)
 ;;54868-4522-01
 ;;9002226.02101,"1202,54868-4522-01 ",.02)
 ;;54868-4522-01
 ;;9002226.02101,"1202,54868-4524-00 ",.01)
 ;;54868-4524-00
 ;;9002226.02101,"1202,54868-4524-00 ",.02)
 ;;54868-4524-00
 ;;9002226.02101,"1202,54868-4666-00 ",.01)
 ;;54868-4666-00
 ;;9002226.02101,"1202,54868-4666-00 ",.02)
 ;;54868-4666-00
 ;;9002226.02101,"1202,54868-4668-00 ",.01)
 ;;54868-4668-00
 ;;9002226.02101,"1202,54868-4668-00 ",.02)
 ;;54868-4668-00
 ;;9002226.02101,"1202,54868-4669-00 ",.01)
 ;;54868-4669-00
 ;;9002226.02101,"1202,54868-4669-00 ",.02)
 ;;54868-4669-00
 ;;9002226.02101,"1202,54868-4853-00 ",.01)
 ;;54868-4853-00
 ;;9002226.02101,"1202,54868-4853-00 ",.02)
 ;;54868-4853-00
 ;;9002226.02101,"1202,54868-4854-00 ",.01)
 ;;54868-4854-00
 ;;9002226.02101,"1202,54868-4854-00 ",.02)
 ;;54868-4854-00
 ;;9002226.02101,"1202,54868-4857-00 ",.01)
 ;;54868-4857-00
 ;;9002226.02101,"1202,54868-4857-00 ",.02)
 ;;54868-4857-00
 ;;9002226.02101,"1202,54868-4954-00 ",.01)
 ;;54868-4954-00
 ;;9002226.02101,"1202,54868-4954-00 ",.02)
 ;;54868-4954-00
 ;;9002226.02101,"1202,54868-5061-00 ",.01)
 ;;54868-5061-00
 ;;9002226.02101,"1202,54868-5061-00 ",.02)
 ;;54868-5061-00
 ;;9002226.02101,"1202,54868-5141-00 ",.01)
 ;;54868-5141-00
 ;;9002226.02101,"1202,54868-5141-00 ",.02)
 ;;54868-5141-00
 ;;9002226.02101,"1202,54868-5416-00 ",.01)
 ;;54868-5416-00
 ;;9002226.02101,"1202,54868-5416-00 ",.02)
 ;;54868-5416-00
 ;;9002226.02101,"1202,54868-5464-00 ",.01)
 ;;54868-5464-00
 ;;9002226.02101,"1202,54868-5464-00 ",.02)
 ;;54868-5464-00
 ;;9002226.02101,"1202,54868-5566-00 ",.01)
 ;;54868-5566-00
 ;;9002226.02101,"1202,54868-5566-00 ",.02)
 ;;54868-5566-00
 ;;9002226.02101,"1202,54868-5595-00 ",.01)
 ;;54868-5595-00
 ;;9002226.02101,"1202,54868-5595-00 ",.02)
 ;;54868-5595-00
 ;;9002226.02101,"1202,54868-5600-00 ",.01)
 ;;54868-5600-00
 ;;9002226.02101,"1202,54868-5600-00 ",.02)
 ;;54868-5600-00
 ;;9002226.02101,"1202,54868-5631-00 ",.01)
 ;;54868-5631-00
 ;;9002226.02101,"1202,54868-5631-00 ",.02)
 ;;54868-5631-00
 ;;9002226.02101,"1202,54868-5643-00 ",.01)
 ;;54868-5643-00
 ;;9002226.02101,"1202,54868-5643-00 ",.02)
 ;;54868-5643-00
 ;;9002226.02101,"1202,54868-5809-00 ",.01)
 ;;54868-5809-00
 ;;9002226.02101,"1202,54868-5809-00 ",.02)
 ;;54868-5809-00
 ;;9002226.02101,"1202,54868-5838-00 ",.01)
 ;;54868-5838-00
 ;;9002226.02101,"1202,54868-5838-00 ",.02)
 ;;54868-5838-00
 ;;9002226.02101,"1202,54868-5864-00 ",.01)
 ;;54868-5864-00
 ;;9002226.02101,"1202,54868-5864-00 ",.02)
 ;;54868-5864-00
 ;;9002226.02101,"1202,54868-5969-00 ",.01)
 ;;54868-5969-00
 ;;9002226.02101,"1202,54868-5969-00 ",.02)
 ;;54868-5969-00
 ;;9002226.02101,"1202,55045-2207-01 ",.01)
 ;;55045-2207-01
 ;;9002226.02101,"1202,55045-2207-01 ",.02)
 ;;55045-2207-01
 ;;9002226.02101,"1202,55045-2856-06 ",.01)
 ;;55045-2856-06
 ;;9002226.02101,"1202,55045-2856-06 ",.02)
 ;;55045-2856-06
 ;;9002226.02101,"1202,55045-3481-03 ",.01)
 ;;55045-3481-03
 ;;9002226.02101,"1202,55045-3481-03 ",.02)
 ;;55045-3481-03
 ;;9002226.02101,"1202,55045-3482-01 ",.01)
 ;;55045-3482-01
 ;;9002226.02101,"1202,55045-3482-01 ",.02)
 ;;55045-3482-01
 ;;9002226.02101,"1202,55045-3549-01 ",.01)
 ;;55045-3549-01
 ;;9002226.02101,"1202,55045-3549-01 ",.02)
 ;;55045-3549-01
 ;;9002226.02101,"1202,55289-0389-04 ",.01)
 ;;55289-0389-04
 ;;9002226.02101,"1202,55289-0389-04 ",.02)
 ;;55289-0389-04
 ;;9002226.02101,"1202,55289-0389-06 ",.01)
 ;;55289-0389-06
 ;;9002226.02101,"1202,55289-0389-06 ",.02)
 ;;55289-0389-06
 ;;9002226.02101,"1202,55289-0389-14 ",.01)
 ;;55289-0389-14
 ;;9002226.02101,"1202,55289-0389-14 ",.02)
 ;;55289-0389-14
 ;;9002226.02101,"1202,55289-0389-20 ",.01)
 ;;55289-0389-20
 ;;9002226.02101,"1202,55289-0389-20 ",.02)
 ;;55289-0389-20
 ;;9002226.02101,"1202,55289-0392-03 ",.01)
 ;;55289-0392-03
 ;;9002226.02101,"1202,55289-0392-03 ",.02)
 ;;55289-0392-03
 ;;9002226.02101,"1202,55289-0392-63 ",.01)
 ;;55289-0392-63
 ;;9002226.02101,"1202,55289-0392-63 ",.02)
 ;;55289-0392-63
 ;;9002226.02101,"1202,55289-0477-27 ",.01)
 ;;55289-0477-27
 ;;9002226.02101,"1202,55289-0477-27 ",.02)
 ;;55289-0477-27
 ;;9002226.02101,"1202,55289-0931-18 ",.01)
 ;;55289-0931-18
 ;;9002226.02101,"1202,55289-0931-18 ",.02)
 ;;55289-0931-18
 ;;9002226.02101,"1202,55289-0947-12 ",.01)
 ;;55289-0947-12