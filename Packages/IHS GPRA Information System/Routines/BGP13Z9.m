BGP13Z9 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1102,54569-5211-01 ",.02)
 ;;54569-5211-01
 ;;9002226.02101,"1102,54569-5252-00 ",.01)
 ;;54569-5252-00
 ;;9002226.02101,"1102,54569-5252-00 ",.02)
 ;;54569-5252-00
 ;;9002226.02101,"1102,54569-5252-01 ",.01)
 ;;54569-5252-01
 ;;9002226.02101,"1102,54569-5252-01 ",.02)
 ;;54569-5252-01
 ;;9002226.02101,"1102,54569-5252-02 ",.01)
 ;;54569-5252-02
 ;;9002226.02101,"1102,54569-5252-02 ",.02)
 ;;54569-5252-02
 ;;9002226.02101,"1102,54569-5353-00 ",.01)
 ;;54569-5353-00
 ;;9002226.02101,"1102,54569-5353-00 ",.02)
 ;;54569-5353-00
 ;;9002226.02101,"1102,54569-5353-02 ",.01)
 ;;54569-5353-02
 ;;9002226.02101,"1102,54569-5353-02 ",.02)
 ;;54569-5353-02
 ;;9002226.02101,"1102,54569-5353-03 ",.01)
 ;;54569-5353-03
 ;;9002226.02101,"1102,54569-5353-03 ",.02)
 ;;54569-5353-03
 ;;9002226.02101,"1102,54569-5353-04 ",.01)
 ;;54569-5353-04
 ;;9002226.02101,"1102,54569-5353-04 ",.02)
 ;;54569-5353-04
 ;;9002226.02101,"1102,54569-5360-00 ",.01)
 ;;54569-5360-00
 ;;9002226.02101,"1102,54569-5360-00 ",.02)
 ;;54569-5360-00
 ;;9002226.02101,"1102,54569-5360-03 ",.01)
 ;;54569-5360-03
 ;;9002226.02101,"1102,54569-5360-03 ",.02)
 ;;54569-5360-03
 ;;9002226.02101,"1102,54569-5373-00 ",.01)
 ;;54569-5373-00
 ;;9002226.02101,"1102,54569-5373-00 ",.02)
 ;;54569-5373-00
 ;;9002226.02101,"1102,54569-5373-02 ",.01)
 ;;54569-5373-02
 ;;9002226.02101,"1102,54569-5373-02 ",.02)
 ;;54569-5373-02
 ;;9002226.02101,"1102,54569-5546-00 ",.01)
 ;;54569-5546-00
 ;;9002226.02101,"1102,54569-5546-00 ",.02)
 ;;54569-5546-00
 ;;9002226.02101,"1102,54569-5546-01 ",.01)
 ;;54569-5546-01
 ;;9002226.02101,"1102,54569-5546-01 ",.02)
 ;;54569-5546-01
 ;;9002226.02101,"1102,54569-5603-00 ",.01)
 ;;54569-5603-00
 ;;9002226.02101,"1102,54569-5603-00 ",.02)
 ;;54569-5603-00
 ;;9002226.02101,"1102,54569-5618-00 ",.01)
 ;;54569-5618-00
 ;;9002226.02101,"1102,54569-5618-00 ",.02)
 ;;54569-5618-00
 ;;9002226.02101,"1102,54569-5618-01 ",.01)
 ;;54569-5618-01
 ;;9002226.02101,"1102,54569-5618-01 ",.02)
 ;;54569-5618-01
 ;;9002226.02101,"1102,54569-5619-00 ",.01)
 ;;54569-5619-00
 ;;9002226.02101,"1102,54569-5619-00 ",.02)
 ;;54569-5619-00
 ;;9002226.02101,"1102,54569-5619-01 ",.01)
 ;;54569-5619-01
 ;;9002226.02101,"1102,54569-5619-01 ",.02)
 ;;54569-5619-01
 ;;9002226.02101,"1102,54569-5991-00 ",.01)
 ;;54569-5991-00
 ;;9002226.02101,"1102,54569-5991-00 ",.02)
 ;;54569-5991-00
 ;;9002226.02101,"1102,54569-5992-00 ",.01)
 ;;54569-5992-00
 ;;9002226.02101,"1102,54569-5992-00 ",.02)
 ;;54569-5992-00
 ;;9002226.02101,"1102,54569-5993-00 ",.01)
 ;;54569-5993-00
 ;;9002226.02101,"1102,54569-5993-00 ",.02)
 ;;54569-5993-00
 ;;9002226.02101,"1102,54569-5993-01 ",.01)
 ;;54569-5993-01
 ;;9002226.02101,"1102,54569-5993-01 ",.02)
 ;;54569-5993-01
 ;;9002226.02101,"1102,54738-0925-01 ",.01)
 ;;54738-0925-01
 ;;9002226.02101,"1102,54738-0925-01 ",.02)
 ;;54738-0925-01
 ;;9002226.02101,"1102,54738-0925-02 ",.01)
 ;;54738-0925-02
 ;;9002226.02101,"1102,54738-0925-02 ",.02)
 ;;54738-0925-02
 ;;9002226.02101,"1102,54738-0925-03 ",.01)
 ;;54738-0925-03
 ;;9002226.02101,"1102,54738-0925-03 ",.02)
 ;;54738-0925-03
 ;;9002226.02101,"1102,54738-0926-01 ",.01)
 ;;54738-0926-01
 ;;9002226.02101,"1102,54738-0926-01 ",.02)
 ;;54738-0926-01
 ;;9002226.02101,"1102,54738-0926-02 ",.01)
 ;;54738-0926-02
 ;;9002226.02101,"1102,54738-0926-02 ",.02)
 ;;54738-0926-02
 ;;9002226.02101,"1102,54738-0926-03 ",.01)
 ;;54738-0926-03
 ;;9002226.02101,"1102,54738-0926-03 ",.02)
 ;;54738-0926-03
 ;;9002226.02101,"1102,54738-0927-01 ",.01)
 ;;54738-0927-01
 ;;9002226.02101,"1102,54738-0927-01 ",.02)
 ;;54738-0927-01
 ;;9002226.02101,"1102,54738-0927-02 ",.01)
 ;;54738-0927-02
 ;;9002226.02101,"1102,54738-0927-02 ",.02)
 ;;54738-0927-02
 ;;9002226.02101,"1102,54738-0927-03 ",.01)
 ;;54738-0927-03
 ;;9002226.02101,"1102,54738-0927-03 ",.02)
 ;;54738-0927-03
 ;;9002226.02101,"1102,54868-0795-00 ",.01)
 ;;54868-0795-00
 ;;9002226.02101,"1102,54868-0795-00 ",.02)
 ;;54868-0795-00
 ;;9002226.02101,"1102,54868-0830-00 ",.01)
 ;;54868-0830-00
 ;;9002226.02101,"1102,54868-0830-00 ",.02)
 ;;54868-0830-00
 ;;9002226.02101,"1102,54868-0830-01 ",.01)
 ;;54868-0830-01
 ;;9002226.02101,"1102,54868-0830-01 ",.02)
 ;;54868-0830-01
 ;;9002226.02101,"1102,54868-1097-00 ",.01)
 ;;54868-1097-00
 ;;9002226.02101,"1102,54868-1097-00 ",.02)
 ;;54868-1097-00
 ;;9002226.02101,"1102,54868-1097-01 ",.01)
 ;;54868-1097-01
 ;;9002226.02101,"1102,54868-1097-01 ",.02)
 ;;54868-1097-01
 ;;9002226.02101,"1102,54868-2894-00 ",.01)
 ;;54868-2894-00
 ;;9002226.02101,"1102,54868-2894-00 ",.02)
 ;;54868-2894-00
 ;;9002226.02101,"1102,54868-3545-00 ",.01)
 ;;54868-3545-00
 ;;9002226.02101,"1102,54868-3545-00 ",.02)
 ;;54868-3545-00
 ;;9002226.02101,"1102,54868-3545-01 ",.01)
 ;;54868-3545-01
 ;;9002226.02101,"1102,54868-3545-01 ",.02)
 ;;54868-3545-01
 ;;9002226.02101,"1102,54868-3545-02 ",.01)
 ;;54868-3545-02
 ;;9002226.02101,"1102,54868-3545-02 ",.02)
 ;;54868-3545-02
 ;;9002226.02101,"1102,54868-3545-03 ",.01)
 ;;54868-3545-03
 ;;9002226.02101,"1102,54868-3545-03 ",.02)
 ;;54868-3545-03
 ;;9002226.02101,"1102,54868-3546-00 ",.01)
 ;;54868-3546-00
 ;;9002226.02101,"1102,54868-3546-00 ",.02)
 ;;54868-3546-00
 ;;9002226.02101,"1102,54868-3546-01 ",.01)
 ;;54868-3546-01
 ;;9002226.02101,"1102,54868-3546-01 ",.02)
 ;;54868-3546-01
 ;;9002226.02101,"1102,54868-4160-00 ",.01)
 ;;54868-4160-00
 ;;9002226.02101,"1102,54868-4160-00 ",.02)
 ;;54868-4160-00
 ;;9002226.02101,"1102,54868-4160-01 ",.01)
 ;;54868-4160-01
 ;;9002226.02101,"1102,54868-4160-01 ",.02)
 ;;54868-4160-01
 ;;9002226.02101,"1102,54868-4529-00 ",.01)
 ;;54868-4529-00
 ;;9002226.02101,"1102,54868-4529-00 ",.02)
 ;;54868-4529-00
 ;;9002226.02101,"1102,54868-4529-01 ",.01)
 ;;54868-4529-01
 ;;9002226.02101,"1102,54868-4529-01 ",.02)
 ;;54868-4529-01
 ;;9002226.02101,"1102,54868-4529-02 ",.01)
 ;;54868-4529-02
 ;;9002226.02101,"1102,54868-4529-02 ",.02)
 ;;54868-4529-02
 ;;9002226.02101,"1102,54868-4529-03 ",.01)
 ;;54868-4529-03
 ;;9002226.02101,"1102,54868-4529-03 ",.02)
 ;;54868-4529-03
 ;;9002226.02101,"1102,54868-4561-00 ",.01)
 ;;54868-4561-00
 ;;9002226.02101,"1102,54868-4561-00 ",.02)
 ;;54868-4561-00
 ;;9002226.02101,"1102,54868-4561-01 ",.01)
 ;;54868-4561-01
 ;;9002226.02101,"1102,54868-4561-01 ",.02)
 ;;54868-4561-01
 ;;9002226.02101,"1102,54868-4561-02 ",.01)
 ;;54868-4561-02
 ;;9002226.02101,"1102,54868-4561-02 ",.02)
 ;;54868-4561-02
 ;;9002226.02101,"1102,54868-4561-03 ",.01)
 ;;54868-4561-03
 ;;9002226.02101,"1102,54868-4561-03 ",.02)
 ;;54868-4561-03
 ;;9002226.02101,"1102,54868-4564-00 ",.01)
 ;;54868-4564-00
 ;;9002226.02101,"1102,54868-4564-00 ",.02)
 ;;54868-4564-00
 ;;9002226.02101,"1102,54868-4564-01 ",.01)
 ;;54868-4564-01
 ;;9002226.02101,"1102,54868-4564-01 ",.02)
 ;;54868-4564-01
 ;;9002226.02101,"1102,54868-4564-02 ",.01)
 ;;54868-4564-02
 ;;9002226.02101,"1102,54868-4564-02 ",.02)
 ;;54868-4564-02
 ;;9002226.02101,"1102,54868-4564-03 ",.01)
 ;;54868-4564-03
 ;;9002226.02101,"1102,54868-4564-03 ",.02)
 ;;54868-4564-03
 ;;9002226.02101,"1102,54868-4564-04 ",.01)
 ;;54868-4564-04
 ;;9002226.02101,"1102,54868-4564-04 ",.02)
 ;;54868-4564-04
 ;;9002226.02101,"1102,54868-4566-00 ",.01)
 ;;54868-4566-00
 ;;9002226.02101,"1102,54868-4566-00 ",.02)
 ;;54868-4566-00
 ;;9002226.02101,"1102,54868-4566-01 ",.01)
 ;;54868-4566-01
 ;;9002226.02101,"1102,54868-4566-01 ",.02)
 ;;54868-4566-01
 ;;9002226.02101,"1102,54868-4566-02 ",.01)
 ;;54868-4566-02
 ;;9002226.02101,"1102,54868-4566-02 ",.02)
 ;;54868-4566-02
 ;;9002226.02101,"1102,54868-4566-03 ",.01)
 ;;54868-4566-03
 ;;9002226.02101,"1102,54868-4566-03 ",.02)
 ;;54868-4566-03
 ;;9002226.02101,"1102,54868-4566-04 ",.01)
 ;;54868-4566-04
 ;;9002226.02101,"1102,54868-4566-04 ",.02)
 ;;54868-4566-04
 ;;9002226.02101,"1102,54868-4569-00 ",.01)
 ;;54868-4569-00
 ;;9002226.02101,"1102,54868-4569-00 ",.02)
 ;;54868-4569-00
 ;;9002226.02101,"1102,54868-4569-01 ",.01)
 ;;54868-4569-01
 ;;9002226.02101,"1102,54868-4569-01 ",.02)
 ;;54868-4569-01
 ;;9002226.02101,"1102,54868-4569-02 ",.01)
 ;;54868-4569-02
 ;;9002226.02101,"1102,54868-4569-02 ",.02)
 ;;54868-4569-02
 ;;9002226.02101,"1102,54868-4609-00 ",.01)
 ;;54868-4609-00
 ;;9002226.02101,"1102,54868-4609-00 ",.02)
 ;;54868-4609-00
 ;;9002226.02101,"1102,54868-4609-01 ",.01)
 ;;54868-4609-01
 ;;9002226.02101,"1102,54868-4609-01 ",.02)
 ;;54868-4609-01
 ;;9002226.02101,"1102,54868-4906-00 ",.01)
 ;;54868-4906-00
 ;;9002226.02101,"1102,54868-4906-00 ",.02)
 ;;54868-4906-00
 ;;9002226.02101,"1102,54868-4965-00 ",.01)
 ;;54868-4965-00
 ;;9002226.02101,"1102,54868-4965-00 ",.02)
 ;;54868-4965-00
 ;;9002226.02101,"1102,54868-4965-01 ",.01)
 ;;54868-4965-01
 ;;9002226.02101,"1102,54868-4965-01 ",.02)
 ;;54868-4965-01
 ;;9002226.02101,"1102,54868-4965-02 ",.01)
 ;;54868-4965-02
 ;;9002226.02101,"1102,54868-4965-02 ",.02)
 ;;54868-4965-02
 ;;9002226.02101,"1102,54868-5148-00 ",.01)
 ;;54868-5148-00
 ;;9002226.02101,"1102,54868-5148-00 ",.02)
 ;;54868-5148-00
 ;;9002226.02101,"1102,54868-5148-01 ",.01)
 ;;54868-5148-01
 ;;9002226.02101,"1102,54868-5148-01 ",.02)
 ;;54868-5148-01
 ;;9002226.02101,"1102,54868-5148-02 ",.01)
 ;;54868-5148-02
 ;;9002226.02101,"1102,54868-5148-02 ",.02)
 ;;54868-5148-02
 ;;9002226.02101,"1102,54868-5148-03 ",.01)
 ;;54868-5148-03
 ;;9002226.02101,"1102,54868-5148-03 ",.02)
 ;;54868-5148-03
 ;;9002226.02101,"1102,54868-5157-00 ",.01)
 ;;54868-5157-00
 ;;9002226.02101,"1102,54868-5157-00 ",.02)
 ;;54868-5157-00
 ;;9002226.02101,"1102,54868-5157-01 ",.01)
 ;;54868-5157-01
 ;;9002226.02101,"1102,54868-5157-01 ",.02)
 ;;54868-5157-01
 ;;9002226.02101,"1102,54868-5185-00 ",.01)
 ;;54868-5185-00
 ;;9002226.02101,"1102,54868-5185-00 ",.02)
 ;;54868-5185-00
 ;;9002226.02101,"1102,54868-5185-01 ",.01)
 ;;54868-5185-01
 ;;9002226.02101,"1102,54868-5185-01 ",.02)
 ;;54868-5185-01
 ;;9002226.02101,"1102,54868-5185-02 ",.01)
 ;;54868-5185-02
 ;;9002226.02101,"1102,54868-5185-02 ",.02)
 ;;54868-5185-02
 ;;9002226.02101,"1102,54868-5185-03 ",.01)
 ;;54868-5185-03
 ;;9002226.02101,"1102,54868-5185-03 ",.02)
 ;;54868-5185-03
 ;;9002226.02101,"1102,54868-5188-00 ",.01)
 ;;54868-5188-00
 ;;9002226.02101,"1102,54868-5188-00 ",.02)
 ;;54868-5188-00
 ;;9002226.02101,"1102,54868-5188-01 ",.01)
 ;;54868-5188-01
 ;;9002226.02101,"1102,54868-5188-01 ",.02)
 ;;54868-5188-01
 ;;9002226.02101,"1102,54868-5188-02 ",.01)
 ;;54868-5188-02
 ;;9002226.02101,"1102,54868-5188-02 ",.02)
 ;;54868-5188-02
 ;;9002226.02101,"1102,54868-5217-00 ",.01)
 ;;54868-5217-00
 ;;9002226.02101,"1102,54868-5217-00 ",.02)
 ;;54868-5217-00
 ;;9002226.02101,"1102,54868-5217-01 ",.01)
 ;;54868-5217-01
 ;;9002226.02101,"1102,54868-5217-01 ",.02)
 ;;54868-5217-01
 ;;9002226.02101,"1102,54868-5217-02 ",.01)
 ;;54868-5217-02
 ;;9002226.02101,"1102,54868-5217-02 ",.02)
 ;;54868-5217-02
 ;;9002226.02101,"1102,54868-5217-03 ",.01)
 ;;54868-5217-03
 ;;9002226.02101,"1102,54868-5217-03 ",.02)
 ;;54868-5217-03
 ;;9002226.02101,"1102,54868-5217-04 ",.01)
 ;;54868-5217-04
 ;;9002226.02101,"1102,54868-5217-04 ",.02)
 ;;54868-5217-04
 ;;9002226.02101,"1102,54868-5217-05 ",.01)
 ;;54868-5217-05
 ;;9002226.02101,"1102,54868-5217-05 ",.02)
 ;;54868-5217-05
 ;;9002226.02101,"1102,54868-5243-00 ",.01)
 ;;54868-5243-00
 ;;9002226.02101,"1102,54868-5243-00 ",.02)
 ;;54868-5243-00
 ;;9002226.02101,"1102,54868-5243-01 ",.01)
 ;;54868-5243-01
 ;;9002226.02101,"1102,54868-5243-01 ",.02)
 ;;54868-5243-01
 ;;9002226.02101,"1102,54868-5243-02 ",.01)
 ;;54868-5243-02
 ;;9002226.02101,"1102,54868-5243-02 ",.02)
 ;;54868-5243-02
 ;;9002226.02101,"1102,54868-5243-03 ",.01)
 ;;54868-5243-03
 ;;9002226.02101,"1102,54868-5243-03 ",.02)
 ;;54868-5243-03
 ;;9002226.02101,"1102,54868-5243-04 ",.01)
 ;;54868-5243-04
 ;;9002226.02101,"1102,54868-5243-04 ",.02)
 ;;54868-5243-04
 ;;9002226.02101,"1102,54868-5262-00 ",.01)
 ;;54868-5262-00
 ;;9002226.02101,"1102,54868-5262-00 ",.02)
 ;;54868-5262-00
 ;;9002226.02101,"1102,54868-5262-01 ",.01)
 ;;54868-5262-01
 ;;9002226.02101,"1102,54868-5262-01 ",.02)
 ;;54868-5262-01
 ;;9002226.02101,"1102,54868-5288-00 ",.01)
 ;;54868-5288-00
 ;;9002226.02101,"1102,54868-5288-00 ",.02)
 ;;54868-5288-00
 ;;9002226.02101,"1102,54868-5288-01 ",.01)
 ;;54868-5288-01
 ;;9002226.02101,"1102,54868-5288-01 ",.02)
 ;;54868-5288-01
 ;;9002226.02101,"1102,54868-5288-02 ",.01)
 ;;54868-5288-02
 ;;9002226.02101,"1102,54868-5288-02 ",.02)
 ;;54868-5288-02
 ;;9002226.02101,"1102,54868-5376-00 ",.01)
 ;;54868-5376-00