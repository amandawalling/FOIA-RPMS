BGP21N2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1203,12280-0409-15 ",.02)
 ;;12280-0409-15
 ;;9002226.02101,"1203,16590-0004-17 ",.01)
 ;;16590-0004-17
 ;;9002226.02101,"1203,16590-0004-17 ",.02)
 ;;16590-0004-17
 ;;9002226.02101,"1203,16590-0339-60 ",.01)
 ;;16590-0339-60
 ;;9002226.02101,"1203,16590-0339-60 ",.02)
 ;;16590-0339-60
 ;;9002226.02101,"1203,17270-0721-01 ",.01)
 ;;17270-0721-01
 ;;9002226.02101,"1203,17270-0721-01 ",.02)
 ;;17270-0721-01
 ;;9002226.02101,"1203,21695-0198-01 ",.01)
 ;;21695-0198-01
 ;;9002226.02101,"1203,21695-0198-01 ",.02)
 ;;21695-0198-01
 ;;9002226.02101,"1203,21695-0423-08 ",.01)
 ;;21695-0423-08
 ;;9002226.02101,"1203,21695-0423-08 ",.02)
 ;;21695-0423-08
 ;;9002226.02101,"1203,21695-0851-85 ",.01)
 ;;21695-0851-85
 ;;9002226.02101,"1203,21695-0851-85 ",.02)
 ;;21695-0851-85
 ;;9002226.02101,"1203,23490-5019-01 ",.01)
 ;;23490-5019-01
 ;;9002226.02101,"1203,23490-5019-01 ",.02)
 ;;23490-5019-01
 ;;9002226.02101,"1203,23490-7972-01 ",.01)
 ;;23490-7972-01
 ;;9002226.02101,"1203,23490-7972-01 ",.02)
 ;;23490-7972-01
 ;;9002226.02101,"1203,29336-0815-21 ",.01)
 ;;29336-0815-21
 ;;9002226.02101,"1203,29336-0815-21 ",.02)
 ;;29336-0815-21
 ;;9002226.02101,"1203,35356-0166-01 ",.01)
 ;;35356-0166-01
 ;;9002226.02101,"1203,35356-0166-01 ",.02)
 ;;35356-0166-01
 ;;9002226.02101,"1203,49502-0333-17 ",.01)
 ;;49502-0333-17
 ;;9002226.02101,"1203,49502-0333-17 ",.02)
 ;;49502-0333-17
 ;;9002226.02101,"1203,49999-0171-17 ",.01)
 ;;49999-0171-17
 ;;9002226.02101,"1203,49999-0171-17 ",.02)
 ;;49999-0171-17
 ;;9002226.02101,"1203,49999-0907-67 ",.01)
 ;;49999-0907-67
 ;;9002226.02101,"1203,49999-0907-67 ",.02)
 ;;49999-0907-67
 ;;9002226.02101,"1203,49999-0908-85 ",.01)
 ;;49999-0908-85
 ;;9002226.02101,"1203,49999-0908-85 ",.02)
 ;;49999-0908-85
 ;;9002226.02101,"1203,49999-0922-15 ",.01)
 ;;49999-0922-15
 ;;9002226.02101,"1203,49999-0922-15 ",.02)
 ;;49999-0922-15
 ;;9002226.02101,"1203,50111-0801-31 ",.01)
 ;;50111-0801-31
 ;;9002226.02101,"1203,50111-0801-31 ",.02)
 ;;50111-0801-31
 ;;9002226.02101,"1203,50111-0801-32 ",.01)
 ;;50111-0801-32
 ;;9002226.02101,"1203,50111-0801-32 ",.02)
 ;;50111-0801-32
 ;;9002226.02101,"1203,52555-0594-17 ",.01)
 ;;52555-0594-17
 ;;9002226.02101,"1203,52555-0594-17 ",.02)
 ;;52555-0594-17
 ;;9002226.02101,"1203,52959-0094-03 ",.01)
 ;;52959-0094-03
 ;;9002226.02101,"1203,52959-0094-03 ",.02)
 ;;52959-0094-03
 ;;9002226.02101,"1203,52959-0293-00 ",.01)
 ;;52959-0293-00
 ;;9002226.02101,"1203,52959-0293-00 ",.02)
 ;;52959-0293-00
 ;;9002226.02101,"1203,52959-0569-01 ",.01)
 ;;52959-0569-01
 ;;9002226.02101,"1203,52959-0569-01 ",.02)
 ;;52959-0569-01
 ;;9002226.02101,"1203,52959-0978-01 ",.01)
 ;;52959-0978-01
 ;;9002226.02101,"1203,52959-0978-01 ",.02)
 ;;52959-0978-01
 ;;9002226.02101,"1203,52959-1121-00 ",.01)
 ;;52959-1121-00
 ;;9002226.02101,"1203,52959-1121-00 ",.02)
 ;;52959-1121-00
 ;;9002226.02101,"1203,52959-1293-01 ",.01)
 ;;52959-1293-01
 ;;9002226.02101,"1203,52959-1293-01 ",.02)
 ;;52959-1293-01
 ;;9002226.02101,"1203,52959-1467-01 ",.01)
 ;;52959-1467-01
 ;;9002226.02101,"1203,52959-1467-01 ",.02)
 ;;52959-1467-01
 ;;9002226.02101,"1203,53002-1550-01 ",.01)
 ;;53002-1550-01
 ;;9002226.02101,"1203,53002-1550-01 ",.02)
 ;;53002-1550-01
 ;;9002226.02101,"1203,54569-0052-00 ",.01)
 ;;54569-0052-00
 ;;9002226.02101,"1203,54569-0052-00 ",.02)
 ;;54569-0052-00
 ;;9002226.02101,"1203,54569-1003-00 ",.01)
 ;;54569-1003-00
 ;;9002226.02101,"1203,54569-1003-00 ",.02)
 ;;54569-1003-00
 ;;9002226.02101,"1203,54569-1008-00 ",.01)
 ;;54569-1008-00
 ;;9002226.02101,"1203,54569-1008-00 ",.02)
 ;;54569-1008-00
 ;;9002226.02101,"1203,54569-1011-00 ",.01)
 ;;54569-1011-00
 ;;9002226.02101,"1203,54569-1011-00 ",.02)
 ;;54569-1011-00
 ;;9002226.02101,"1203,54569-2253-00 ",.01)
 ;;54569-2253-00
 ;;9002226.02101,"1203,54569-2253-00 ",.02)
 ;;54569-2253-00
 ;;9002226.02101,"1203,54569-4245-00 ",.01)
 ;;54569-4245-00
 ;;9002226.02101,"1203,54569-4245-00 ",.02)
 ;;54569-4245-00
 ;;9002226.02101,"1203,54569-4615-00 ",.01)
 ;;54569-4615-00
 ;;9002226.02101,"1203,54569-4615-00 ",.02)
 ;;54569-4615-00
 ;;9002226.02101,"1203,54569-4621-00 ",.01)
 ;;54569-4621-00
 ;;9002226.02101,"1203,54569-4621-00 ",.02)
 ;;54569-4621-00
 ;;9002226.02101,"1203,54569-5777-00 ",.01)
 ;;54569-5777-00
 ;;9002226.02101,"1203,54569-5777-00 ",.02)
 ;;54569-5777-00
 ;;9002226.02101,"1203,54569-5853-00 ",.01)
 ;;54569-5853-00
 ;;9002226.02101,"1203,54569-5853-00 ",.02)
 ;;54569-5853-00
 ;;9002226.02101,"1203,54569-6166-00 ",.01)
 ;;54569-6166-00
 ;;9002226.02101,"1203,54569-6166-00 ",.02)
 ;;54569-6166-00
 ;;9002226.02101,"1203,54569-6167-00 ",.01)
 ;;54569-6167-00
 ;;9002226.02101,"1203,54569-6167-00 ",.02)
 ;;54569-6167-00
 ;;9002226.02101,"1203,54868-0730-01 ",.01)
 ;;54868-0730-01
 ;;9002226.02101,"1203,54868-0730-01 ",.02)
 ;;54868-0730-01
 ;;9002226.02101,"1203,54868-1041-01 ",.01)
 ;;54868-1041-01
 ;;9002226.02101,"1203,54868-1041-01 ",.02)
 ;;54868-1041-01
 ;;9002226.02101,"1203,54868-1903-00 ",.01)
 ;;54868-1903-00
 ;;9002226.02101,"1203,54868-1903-00 ",.02)
 ;;54868-1903-00
 ;;9002226.02101,"1203,54868-2821-01 ",.01)
 ;;54868-2821-01
 ;;9002226.02101,"1203,54868-2821-01 ",.02)
 ;;54868-2821-01