BJPC2UKD ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 17, 2009;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"751,54569-1004-00 ",.02)
 ;;54569-1004-00
 ;;9002226.02101,"751,54569-1013-00 ",.01)
 ;;54569-1013-00
 ;;9002226.02101,"751,54569-1013-00 ",.02)
 ;;54569-1013-00
 ;;9002226.02101,"751,54569-1016-00 ",.01)
 ;;54569-1016-00
 ;;9002226.02101,"751,54569-1016-00 ",.02)
 ;;54569-1016-00
 ;;9002226.02101,"751,54569-3976-00 ",.01)
 ;;54569-3976-00
 ;;9002226.02101,"751,54569-3976-00 ",.02)
 ;;54569-3976-00
 ;;9002226.02101,"751,54569-4540-00 ",.01)
 ;;54569-4540-00
 ;;9002226.02101,"751,54569-4540-00 ",.02)
 ;;54569-4540-00
 ;;9002226.02101,"751,54569-4602-00 ",.01)
 ;;54569-4602-00
 ;;9002226.02101,"751,54569-4602-00 ",.02)
 ;;54569-4602-00
 ;;9002226.02101,"751,54569-4603-00 ",.01)
 ;;54569-4603-00
 ;;9002226.02101,"751,54569-4603-00 ",.02)
 ;;54569-4603-00
 ;;9002226.02101,"751,54569-4741-00 ",.01)
 ;;54569-4741-00
 ;;9002226.02101,"751,54569-4741-00 ",.02)
 ;;54569-4741-00
 ;;9002226.02101,"751,54569-4822-00 ",.01)
 ;;54569-4822-00
 ;;9002226.02101,"751,54569-4822-00 ",.02)
 ;;54569-4822-00
 ;;9002226.02101,"751,54569-4863-00 ",.01)
 ;;54569-4863-00
 ;;9002226.02101,"751,54569-4863-00 ",.02)
 ;;54569-4863-00
 ;;9002226.02101,"751,54569-4896-00 ",.01)
 ;;54569-4896-00
 ;;9002226.02101,"751,54569-4896-00 ",.02)
 ;;54569-4896-00
 ;;9002226.02101,"751,54569-5162-00 ",.01)
 ;;54569-5162-00
 ;;9002226.02101,"751,54569-5162-00 ",.02)
 ;;54569-5162-00
 ;;9002226.02101,"751,54569-5163-00 ",.01)
 ;;54569-5163-00
 ;;9002226.02101,"751,54569-5163-00 ",.02)
 ;;54569-5163-00
 ;;9002226.02101,"751,54569-5241-00 ",.01)
 ;;54569-5241-00
 ;;9002226.02101,"751,54569-5241-00 ",.02)
 ;;54569-5241-00
 ;;9002226.02101,"751,54569-5242-00 ",.01)
 ;;54569-5242-00
 ;;9002226.02101,"751,54569-5242-00 ",.02)
 ;;54569-5242-00
 ;;9002226.02101,"751,54569-5243-00 ",.01)
 ;;54569-5243-00
 ;;9002226.02101,"751,54569-5243-00 ",.02)
 ;;54569-5243-00
 ;;9002226.02101,"751,54868-1268-01 ",.01)
 ;;54868-1268-01
 ;;9002226.02101,"751,54868-1268-01 ",.02)
 ;;54868-1268-01
 ;;9002226.02101,"751,54868-1269-01 ",.01)
 ;;54868-1269-01
 ;;9002226.02101,"751,54868-1269-01 ",.02)
 ;;54868-1269-01
 ;;9002226.02101,"751,54868-1841-01 ",.01)
 ;;54868-1841-01
 ;;9002226.02101,"751,54868-1841-01 ",.02)
 ;;54868-1841-01
 ;;9002226.02101,"751,54868-1883-01 ",.01)
 ;;54868-1883-01
 ;;9002226.02101,"751,54868-1883-01 ",.02)
 ;;54868-1883-01
 ;;9002226.02101,"751,54868-4182-00 ",.01)
 ;;54868-4182-00
 ;;9002226.02101,"751,54868-4182-00 ",.02)
 ;;54868-4182-00
 ;;9002226.02101,"751,54868-4264-00 ",.01)
 ;;54868-4264-00
 ;;9002226.02101,"751,54868-4264-00 ",.02)
 ;;54868-4264-00
 ;;9002226.02101,"751,54868-4295-00 ",.01)
 ;;54868-4295-00
 ;;9002226.02101,"751,54868-4295-00 ",.02)
 ;;54868-4295-00
 ;;9002226.02101,"751,54868-4392-00 ",.01)
 ;;54868-4392-00
 ;;9002226.02101,"751,54868-4392-00 ",.02)
 ;;54868-4392-00
 ;;9002226.02101,"751,54868-4516-00 ",.01)
 ;;54868-4516-00
 ;;9002226.02101,"751,54868-4516-00 ",.02)
 ;;54868-4516-00
 ;;9002226.02101,"751,54868-4517-00 ",.01)
 ;;54868-4517-00
 ;;9002226.02101,"751,54868-4517-00 ",.02)
 ;;54868-4517-00
 ;;9002226.02101,"751,54868-4518-00 ",.01)
 ;;54868-4518-00
 ;;9002226.02101,"751,54868-4518-00 ",.02)
 ;;54868-4518-00
 ;;9002226.02101,"751,54977-0704-01 ",.01)
 ;;54977-0704-01
 ;;9002226.02101,"751,54977-0704-01 ",.02)
 ;;54977-0704-01
 ;;9002226.02101,"751,55045-2119-07 ",.01)
 ;;55045-2119-07
 ;;9002226.02101,"751,55045-2119-07 ",.02)
 ;;55045-2119-07
 ;;9002226.02101,"751,55045-2819-00 ",.01)
 ;;55045-2819-00
 ;;9002226.02101,"751,55045-2819-00 ",.02)
 ;;55045-2819-00
 ;;9002226.02101,"751,55045-2919-01 ",.01)
 ;;55045-2919-01
 ;;9002226.02101,"751,55045-2919-01 ",.02)
 ;;55045-2919-01
 ;;9002226.02101,"751,55045-3054-01 ",.01)
 ;;55045-3054-01
 ;;9002226.02101,"751,55045-3054-01 ",.02)
 ;;55045-3054-01
 ;;9002226.02101,"751,55175-2753-01 ",.01)
 ;;55175-2753-01
 ;;9002226.02101,"751,55175-2753-01 ",.02)
 ;;55175-2753-01
 ;;9002226.02101,"751,55175-4435-01 ",.01)
 ;;55175-4435-01
 ;;9002226.02101,"751,55175-4435-01 ",.02)
 ;;55175-4435-01
 ;;9002226.02101,"751,55175-4465-01 ",.01)
 ;;55175-4465-01
 ;;9002226.02101,"751,55175-4465-01 ",.02)
 ;;55175-4465-01
 ;;9002226.02101,"751,55175-4466-01 ",.01)
 ;;55175-4466-01
 ;;9002226.02101,"751,55175-4466-01 ",.02)
 ;;55175-4466-01
 ;;9002226.02101,"751,55175-5245-01 ",.01)
 ;;55175-5245-01
 ;;9002226.02101,"751,55175-5245-01 ",.02)
 ;;55175-5245-01
 ;;9002226.02101,"751,57362-0105-01 ",.01)
 ;;57362-0105-01
 ;;9002226.02101,"751,57362-0105-01 ",.02)
 ;;57362-0105-01
 ;;9002226.02101,"751,57362-0326-55 ",.01)
 ;;57362-0326-55
 ;;9002226.02101,"751,57362-0326-55 ",.02)
 ;;57362-0326-55
 ;;9002226.02101,"751,58016-4604-01 ",.01)
 ;;58016-4604-01
 ;;9002226.02101,"751,58016-4604-01 ",.02)
 ;;58016-4604-01
 ;;9002226.02101,"751,58016-4812-01 ",.01)
 ;;58016-4812-01
 ;;9002226.02101,"751,58016-4812-01 ",.02)
 ;;58016-4812-01
 ;;9002226.02101,"751,58016-4813-01 ",.01)
 ;;58016-4813-01
 ;;9002226.02101,"751,58016-4813-01 ",.02)
 ;;58016-4813-01
 ;;9002226.02101,"751,58016-6207-00 ",.01)
 ;;58016-6207-00
 ;;9002226.02101,"751,58016-6207-00 ",.02)
 ;;58016-6207-00
 ;;9002226.02101,"751,58016-6207-01 ",.01)
 ;;58016-6207-01