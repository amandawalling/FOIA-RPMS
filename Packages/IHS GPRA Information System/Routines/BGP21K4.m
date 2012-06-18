BGP21K4 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1200,54569-4881-00 ",.01)
 ;;54569-4881-00
 ;;9002226.02101,"1200,54569-4881-00 ",.02)
 ;;54569-4881-00
 ;;9002226.02101,"1200,54569-4882-00 ",.01)
 ;;54569-4882-00
 ;;9002226.02101,"1200,54569-4882-00 ",.02)
 ;;54569-4882-00
 ;;9002226.02101,"1200,54569-5603-00 ",.01)
 ;;54569-5603-00
 ;;9002226.02101,"1200,54569-5603-00 ",.02)
 ;;54569-5603-00
 ;;9002226.02101,"1200,54868-4198-00 ",.01)
 ;;54868-4198-00
 ;;9002226.02101,"1200,54868-4198-00 ",.02)
 ;;54868-4198-00
 ;;9002226.02101,"1200,54868-4198-01 ",.01)
 ;;54868-4198-01
 ;;9002226.02101,"1200,54868-4198-01 ",.02)
 ;;54868-4198-01
 ;;9002226.02101,"1200,54868-4221-00 ",.01)
 ;;54868-4221-00
 ;;9002226.02101,"1200,54868-4221-00 ",.02)
 ;;54868-4221-00
 ;;9002226.02101,"1200,54868-4343-00 ",.01)
 ;;54868-4343-00
 ;;9002226.02101,"1200,54868-4343-00 ",.02)
 ;;54868-4343-00
 ;;9002226.02101,"1200,54868-4343-01 ",.01)
 ;;54868-4343-01
 ;;9002226.02101,"1200,54868-4343-01 ",.02)
 ;;54868-4343-01
 ;;9002226.02101,"1200,54868-4354-00 ",.01)
 ;;54868-4354-00
 ;;9002226.02101,"1200,54868-4354-00 ",.02)
 ;;54868-4354-00
 ;;9002226.02101,"1200,54868-4354-01 ",.01)
 ;;54868-4354-01
 ;;9002226.02101,"1200,54868-4354-01 ",.02)
 ;;54868-4354-01
 ;;9002226.02101,"1200,54868-4391-00 ",.01)
 ;;54868-4391-00
 ;;9002226.02101,"1200,54868-4391-00 ",.02)
 ;;54868-4391-00
 ;;9002226.02101,"1200,54868-4391-01 ",.01)
 ;;54868-4391-01
 ;;9002226.02101,"1200,54868-4391-01 ",.02)
 ;;54868-4391-01
 ;;9002226.02101,"1200,54868-4965-00 ",.01)
 ;;54868-4965-00
 ;;9002226.02101,"1200,54868-4965-00 ",.02)
 ;;54868-4965-00
 ;;9002226.02101,"1200,54868-4965-01 ",.01)
 ;;54868-4965-01
 ;;9002226.02101,"1200,54868-4965-01 ",.02)
 ;;54868-4965-01
 ;;9002226.02101,"1200,54868-4965-02 ",.01)
 ;;54868-4965-02
 ;;9002226.02101,"1200,54868-4965-02 ",.02)
 ;;54868-4965-02
 ;;9002226.02101,"1200,54868-5157-00 ",.01)
 ;;54868-5157-00
 ;;9002226.02101,"1200,54868-5157-00 ",.02)
 ;;54868-5157-00
 ;;9002226.02101,"1200,54868-5157-01 ",.01)
 ;;54868-5157-01
 ;;9002226.02101,"1200,54868-5157-01 ",.02)
 ;;54868-5157-01
 ;;9002226.02101,"1200,54868-5249-00 ",.01)
 ;;54868-5249-00
 ;;9002226.02101,"1200,54868-5249-00 ",.02)
 ;;54868-5249-00
 ;;9002226.02101,"1200,54868-5249-01 ",.01)
 ;;54868-5249-01
 ;;9002226.02101,"1200,54868-5249-01 ",.02)
 ;;54868-5249-01
 ;;9002226.02101,"1200,54868-5262-00 ",.01)
 ;;54868-5262-00
 ;;9002226.02101,"1200,54868-5262-00 ",.02)
 ;;54868-5262-00
 ;;9002226.02101,"1200,54868-5262-01 ",.01)
 ;;54868-5262-01
 ;;9002226.02101,"1200,54868-5262-01 ",.02)
 ;;54868-5262-01
 ;;9002226.02101,"1200,54868-5376-00 ",.01)
 ;;54868-5376-00
 ;;9002226.02101,"1200,54868-5376-00 ",.02)
 ;;54868-5376-00
 ;;9002226.02101,"1200,54868-5379-00 ",.01)
 ;;54868-5379-00
 ;;9002226.02101,"1200,54868-5379-00 ",.02)
 ;;54868-5379-00
 ;;9002226.02101,"1200,54868-5500-00 ",.01)
 ;;54868-5500-00
 ;;9002226.02101,"1200,54868-5500-00 ",.02)
 ;;54868-5500-00
 ;;9002226.02101,"1200,54868-5500-01 ",.01)
 ;;54868-5500-01
 ;;9002226.02101,"1200,54868-5500-01 ",.02)
 ;;54868-5500-01
 ;;9002226.02101,"1200,54868-5553-00 ",.01)
 ;;54868-5553-00
 ;;9002226.02101,"1200,54868-5553-00 ",.02)
 ;;54868-5553-00
 ;;9002226.02101,"1200,54868-5553-01 ",.01)
 ;;54868-5553-01
 ;;9002226.02101,"1200,54868-5553-01 ",.02)
 ;;54868-5553-01
 ;;9002226.02101,"1200,54868-5553-02 ",.01)
 ;;54868-5553-02
 ;;9002226.02101,"1200,54868-5553-02 ",.02)
 ;;54868-5553-02
 ;;9002226.02101,"1200,54868-5739-00 ",.01)
 ;;54868-5739-00
 ;;9002226.02101,"1200,54868-5739-00 ",.02)
 ;;54868-5739-00
 ;;9002226.02101,"1200,55289-0540-30 ",.01)
 ;;55289-0540-30
 ;;9002226.02101,"1200,55289-0540-30 ",.02)
 ;;55289-0540-30
 ;;9002226.02101,"1200,55289-0862-15 ",.01)
 ;;55289-0862-15
 ;;9002226.02101,"1200,55289-0862-15 ",.02)
 ;;55289-0862-15
 ;;9002226.02101,"1200,55289-0862-30 ",.01)
 ;;55289-0862-30
 ;;9002226.02101,"1200,55289-0862-30 ",.02)
 ;;55289-0862-30
 ;;9002226.02101,"1200,55289-0938-30 ",.01)
 ;;55289-0938-30
 ;;9002226.02101,"1200,55289-0938-30 ",.02)
 ;;55289-0938-30
 ;;9002226.02101,"1200,57866-0069-08 ",.01)
 ;;57866-0069-08
 ;;9002226.02101,"1200,57866-0069-08 ",.02)
 ;;57866-0069-08
 ;;9002226.02101,"1200,57866-0069-09 ",.01)
 ;;57866-0069-09
 ;;9002226.02101,"1200,57866-0069-09 ",.02)
 ;;57866-0069-09
 ;;9002226.02101,"1200,57866-1264-02 ",.01)
 ;;57866-1264-02
 ;;9002226.02101,"1200,57866-1264-02 ",.02)
 ;;57866-1264-02
 ;;9002226.02101,"1200,57866-1364-03 ",.01)
 ;;57866-1364-03
 ;;9002226.02101,"1200,57866-1364-03 ",.02)
 ;;57866-1364-03
 ;;9002226.02101,"1200,58016-0081-00 ",.01)
 ;;58016-0081-00
 ;;9002226.02101,"1200,58016-0081-00 ",.02)
 ;;58016-0081-00
 ;;9002226.02101,"1200,58016-0081-30 ",.01)
 ;;58016-0081-30
 ;;9002226.02101,"1200,58016-0081-30 ",.02)
 ;;58016-0081-30
 ;;9002226.02101,"1200,58016-0081-60 ",.01)
 ;;58016-0081-60
 ;;9002226.02101,"1200,58016-0081-60 ",.02)
 ;;58016-0081-60
 ;;9002226.02101,"1200,58016-0081-90 ",.01)
 ;;58016-0081-90
 ;;9002226.02101,"1200,58016-0081-90 ",.02)
 ;;58016-0081-90
 ;;9002226.02101,"1200,58016-0082-00 ",.01)
 ;;58016-0082-00
 ;;9002226.02101,"1200,58016-0082-00 ",.02)
 ;;58016-0082-00
 ;;9002226.02101,"1200,58016-0082-30 ",.01)
 ;;58016-0082-30