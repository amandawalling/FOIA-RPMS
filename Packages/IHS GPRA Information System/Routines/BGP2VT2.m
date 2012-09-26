BGP2VT2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 12, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"732,00603-3265-32 ",.02)
 ;;00603-3265-32
 ;;9002226.02101,"732,00603-3266-21 ",.01)
 ;;00603-3266-21
 ;;9002226.02101,"732,00603-3266-21 ",.02)
 ;;00603-3266-21
 ;;9002226.02101,"732,00615-0327-01 ",.01)
 ;;00615-0327-01
 ;;9002226.02101,"732,00615-0327-01 ",.02)
 ;;00615-0327-01
 ;;9002226.02101,"732,00615-0327-10 ",.01)
 ;;00615-0327-10
 ;;9002226.02101,"732,00615-0327-10 ",.02)
 ;;00615-0327-10
 ;;9002226.02101,"732,00615-1516-10 ",.01)
 ;;00615-1516-10
 ;;9002226.02101,"732,00615-1516-10 ",.02)
 ;;00615-1516-10
 ;;9002226.02101,"732,00904-0195-60 ",.01)
 ;;00904-0195-60
 ;;9002226.02101,"732,00904-0195-60 ",.02)
 ;;00904-0195-60
 ;;9002226.02101,"732,00904-2344-40 ",.01)
 ;;00904-2344-40
 ;;9002226.02101,"732,00904-2344-40 ",.02)
 ;;00904-2344-40
 ;;9002226.02101,"732,00904-2344-60 ",.01)
 ;;00904-2344-60
 ;;9002226.02101,"732,00904-2344-60 ",.02)
 ;;00904-2344-60
 ;;9002226.02101,"732,00904-7896-80 ",.01)
 ;;00904-7896-80
 ;;9002226.02101,"732,00904-7896-80 ",.02)
 ;;00904-7896-80
 ;;9002226.02101,"732,10135-0520-01 ",.01)
 ;;10135-0520-01
 ;;9002226.02101,"732,10135-0520-01 ",.02)
 ;;10135-0520-01
 ;;9002226.02101,"732,10135-0520-10 ",.01)
 ;;10135-0520-10
 ;;9002226.02101,"732,10135-0520-10 ",.02)
 ;;10135-0520-10
 ;;9002226.02101,"732,10135-0521-01 ",.01)
 ;;10135-0521-01
 ;;9002226.02101,"732,10135-0521-01 ",.02)
 ;;10135-0521-01
 ;;9002226.02101,"732,16590-0077-30 ",.01)
 ;;16590-0077-30
 ;;9002226.02101,"732,16590-0077-30 ",.02)
 ;;16590-0077-30
 ;;9002226.02101,"732,16590-0077-60 ",.01)
 ;;16590-0077-60
 ;;9002226.02101,"732,16590-0077-60 ",.02)
 ;;16590-0077-60
 ;;9002226.02101,"732,16590-0077-72 ",.01)
 ;;16590-0077-72
 ;;9002226.02101,"732,16590-0077-72 ",.02)
 ;;16590-0077-72
 ;;9002226.02101,"732,16590-0077-90 ",.01)
 ;;16590-0077-90
 ;;9002226.02101,"732,16590-0077-90 ",.02)
 ;;16590-0077-90
 ;;9002226.02101,"732,21695-0218-30 ",.01)
 ;;21695-0218-30
 ;;9002226.02101,"732,21695-0218-30 ",.02)
 ;;21695-0218-30
 ;;9002226.02101,"732,23490-5428-01 ",.01)
 ;;23490-5428-01
 ;;9002226.02101,"732,23490-5428-01 ",.02)
 ;;23490-5428-01
 ;;9002226.02101,"732,23490-5428-02 ",.01)
 ;;23490-5428-02
 ;;9002226.02101,"732,23490-5428-02 ",.02)
 ;;23490-5428-02
 ;;9002226.02101,"732,23490-5428-03 ",.01)
 ;;23490-5428-03
 ;;9002226.02101,"732,23490-5428-03 ",.02)
 ;;23490-5428-03
 ;;9002226.02101,"732,23490-5431-02 ",.01)
 ;;23490-5431-02
 ;;9002226.02101,"732,23490-5431-02 ",.02)
 ;;23490-5431-02
 ;;9002226.02101,"732,23490-5431-03 ",.01)
 ;;23490-5431-03
 ;;9002226.02101,"732,23490-5431-03 ",.02)
 ;;23490-5431-03
 ;;9002226.02101,"732,23490-5431-04 ",.01)
 ;;23490-5431-04
 ;;9002226.02101,"732,23490-5431-04 ",.02)
 ;;23490-5431-04
 ;;9002226.02101,"732,43063-0045-04 ",.01)
 ;;43063-0045-04
 ;;9002226.02101,"732,43063-0045-04 ",.02)
 ;;43063-0045-04
 ;;9002226.02101,"732,43063-0045-06 ",.01)
 ;;43063-0045-06
 ;;9002226.02101,"732,43063-0045-06 ",.02)
 ;;43063-0045-06
 ;;9002226.02101,"732,43063-0112-04 ",.01)
 ;;43063-0112-04
 ;;9002226.02101,"732,43063-0112-04 ",.02)
 ;;43063-0112-04
 ;;9002226.02101,"732,43063-0112-06 ",.01)
 ;;43063-0112-06
 ;;9002226.02101,"732,43063-0112-06 ",.02)
 ;;43063-0112-06
 ;;9002226.02101,"732,49727-0054-05 ",.01)
 ;;49727-0054-05
 ;;9002226.02101,"732,49727-0054-05 ",.02)
 ;;49727-0054-05
 ;;9002226.02101,"732,49999-0081-00 ",.01)
 ;;49999-0081-00
 ;;9002226.02101,"732,49999-0081-00 ",.02)
 ;;49999-0081-00
 ;;9002226.02101,"732,49999-0081-20 ",.01)
 ;;49999-0081-20
 ;;9002226.02101,"732,49999-0081-20 ",.02)
 ;;49999-0081-20
 ;;9002226.02101,"732,49999-0081-30 ",.01)
 ;;49999-0081-30
 ;;9002226.02101,"732,49999-0081-30 ",.02)
 ;;49999-0081-30
 ;;9002226.02101,"732,49999-0291-20 ",.01)
 ;;49999-0291-20
 ;;9002226.02101,"732,49999-0291-20 ",.02)
 ;;49999-0291-20
 ;;9002226.02101,"732,51079-0118-01 ",.01)
 ;;51079-0118-01
 ;;9002226.02101,"732,51079-0118-01 ",.02)
 ;;51079-0118-01
 ;;9002226.02101,"732,51079-0118-20 ",.01)
 ;;51079-0118-20
 ;;9002226.02101,"732,51079-0118-20 ",.02)
 ;;51079-0118-20
 ;;9002226.02101,"732,51079-0119-01 ",.01)
 ;;51079-0119-01
 ;;9002226.02101,"732,51079-0119-01 ",.02)
 ;;51079-0119-01
 ;;9002226.02101,"732,51079-0119-20 ",.01)
 ;;51079-0119-20
 ;;9002226.02101,"732,51079-0119-20 ",.02)
 ;;51079-0119-20
 ;;9002226.02101,"732,51655-0293-24 ",.01)
 ;;51655-0293-24
 ;;9002226.02101,"732,51655-0293-24 ",.02)
 ;;51655-0293-24
 ;;9002226.02101,"732,52959-0168-00 ",.01)
 ;;52959-0168-00
 ;;9002226.02101,"732,52959-0168-00 ",.02)
 ;;52959-0168-00
 ;;9002226.02101,"732,52959-0168-30 ",.01)
 ;;52959-0168-30
 ;;9002226.02101,"732,52959-0168-30 ",.02)
 ;;52959-0168-30
 ;;9002226.02101,"732,52959-0221-00 ",.01)
 ;;52959-0221-00
 ;;9002226.02101,"732,52959-0221-00 ",.02)
 ;;52959-0221-00
 ;;9002226.02101,"732,52959-0221-20 ",.01)
 ;;52959-0221-20
 ;;9002226.02101,"732,52959-0221-20 ",.02)
 ;;52959-0221-20
 ;;9002226.02101,"732,52959-0221-30 ",.01)
 ;;52959-0221-30
 ;;9002226.02101,"732,52959-0221-30 ",.02)
 ;;52959-0221-30
 ;;9002226.02101,"732,52959-0390-30 ",.01)
 ;;52959-0390-30
 ;;9002226.02101,"732,52959-0390-30 ",.02)
 ;;52959-0390-30
 ;;9002226.02101,"732,54569-0417-00 ",.01)
 ;;54569-0417-00
 ;;9002226.02101,"732,54569-0417-00 ",.02)
 ;;54569-0417-00
 ;;9002226.02101,"732,54569-0417-02 ",.01)
 ;;54569-0417-02
 ;;9002226.02101,"732,54569-0417-02 ",.02)
 ;;54569-0417-02
 ;;9002226.02101,"732,54569-0417-03 ",.01)
 ;;54569-0417-03
 ;;9002226.02101,"732,54569-0417-03 ",.02)
 ;;54569-0417-03
 ;;9002226.02101,"732,54569-0417-04 ",.01)
 ;;54569-0417-04
 ;;9002226.02101,"732,54569-0417-04 ",.02)
 ;;54569-0417-04
 ;;9002226.02101,"732,54569-0417-06 ",.01)
 ;;54569-0417-06
 ;;9002226.02101,"732,54569-0417-06 ",.02)
 ;;54569-0417-06
 ;;9002226.02101,"732,54569-0417-07 ",.01)
 ;;54569-0417-07
 ;;9002226.02101,"732,54569-0417-07 ",.02)
 ;;54569-0417-07
 ;;9002226.02101,"732,54569-0418-00 ",.01)
 ;;54569-0418-00
 ;;9002226.02101,"732,54569-0418-00 ",.02)
 ;;54569-0418-00
 ;;9002226.02101,"732,54569-0419-00 ",.01)
 ;;54569-0419-00
 ;;9002226.02101,"732,54569-0419-00 ",.02)
 ;;54569-0419-00
 ;;9002226.02101,"732,54569-0419-02 ",.01)
 ;;54569-0419-02
 ;;9002226.02101,"732,54569-0419-02 ",.02)
 ;;54569-0419-02
 ;;9002226.02101,"732,54569-0419-04 ",.01)
 ;;54569-0419-04
 ;;9002226.02101,"732,54569-0419-04 ",.02)
 ;;54569-0419-04
 ;;9002226.02101,"732,54569-0419-07 ",.01)
 ;;54569-0419-07
 ;;9002226.02101,"732,54569-0419-07 ",.02)
 ;;54569-0419-07
 ;;9002226.02101,"732,54868-0033-00 ",.01)
 ;;54868-0033-00
 ;;9002226.02101,"732,54868-0033-00 ",.02)
 ;;54868-0033-00
 ;;9002226.02101,"732,54868-0033-02 ",.01)
 ;;54868-0033-02
 ;;9002226.02101,"732,54868-0033-02 ",.02)
 ;;54868-0033-02
 ;;9002226.02101,"732,54868-0033-03 ",.01)
 ;;54868-0033-03
 ;;9002226.02101,"732,54868-0033-03 ",.02)
 ;;54868-0033-03
 ;;9002226.02101,"732,54868-0033-05 ",.01)
 ;;54868-0033-05
 ;;9002226.02101,"732,54868-0033-05 ",.02)
 ;;54868-0033-05
 ;;9002226.02101,"732,54868-0033-06 ",.01)
 ;;54868-0033-06
 ;;9002226.02101,"732,54868-0033-06 ",.02)
 ;;54868-0033-06
 ;;9002226.02101,"732,54868-0033-07 ",.01)
 ;;54868-0033-07
 ;;9002226.02101,"732,54868-0033-07 ",.02)
 ;;54868-0033-07
 ;;9002226.02101,"732,54868-0033-08 ",.01)
 ;;54868-0033-08
 ;;9002226.02101,"732,54868-0033-08 ",.02)
 ;;54868-0033-08
 ;;9002226.02101,"732,54868-0392-01 ",.01)
 ;;54868-0392-01
 ;;9002226.02101,"732,54868-0392-01 ",.02)
 ;;54868-0392-01
 ;;9002226.02101,"732,54868-0818-00 ",.01)
 ;;54868-0818-00
 ;;9002226.02101,"732,54868-0818-00 ",.02)
 ;;54868-0818-00
 ;;9002226.02101,"732,54868-0818-01 ",.01)
 ;;54868-0818-01
 ;;9002226.02101,"732,54868-0818-01 ",.02)
 ;;54868-0818-01
 ;;9002226.02101,"732,54868-0818-03 ",.01)
 ;;54868-0818-03
 ;;9002226.02101,"732,54868-0818-03 ",.02)
 ;;54868-0818-03
 ;;9002226.02101,"732,54868-0818-05 ",.01)
 ;;54868-0818-05
 ;;9002226.02101,"732,54868-0818-05 ",.02)
 ;;54868-0818-05
 ;;9002226.02101,"732,54868-0818-07 ",.01)
 ;;54868-0818-07
 ;;9002226.02101,"732,54868-0818-07 ",.02)
 ;;54868-0818-07
 ;;9002226.02101,"732,54868-0818-08 ",.01)
 ;;54868-0818-08
 ;;9002226.02101,"732,54868-0818-08 ",.02)
 ;;54868-0818-08
 ;;9002226.02101,"732,54902-0073-01 ",.01)
 ;;54902-0073-01
 ;;9002226.02101,"732,54902-0073-01 ",.02)
 ;;54902-0073-01
 ;;9002226.02101,"732,54902-0074-01 ",.01)
 ;;54902-0074-01
 ;;9002226.02101,"732,54902-0074-01 ",.02)
 ;;54902-0074-01
 ;;9002226.02101,"732,54902-0074-05 ",.01)
 ;;54902-0074-05
 ;;9002226.02101,"732,54902-0074-05 ",.02)
 ;;54902-0074-05
 ;;9002226.02101,"732,54902-0074-52 ",.01)
 ;;54902-0074-52
 ;;9002226.02101,"732,54902-0074-52 ",.02)
 ;;54902-0074-52
 ;;9002226.02101,"732,55045-1467-01 ",.01)
 ;;55045-1467-01
 ;;9002226.02101,"732,55045-1467-01 ",.02)
 ;;55045-1467-01
 ;;9002226.02101,"732,55045-1467-02 ",.01)
 ;;55045-1467-02
 ;;9002226.02101,"732,55045-1467-02 ",.02)
 ;;55045-1467-02
 ;;9002226.02101,"732,55045-1467-03 ",.01)
 ;;55045-1467-03
 ;;9002226.02101,"732,55045-1467-03 ",.02)
 ;;55045-1467-03
 ;;9002226.02101,"732,55045-1467-06 ",.01)
 ;;55045-1467-06
 ;;9002226.02101,"732,55045-1467-06 ",.02)
 ;;55045-1467-06
 ;;9002226.02101,"732,55045-1467-08 ",.01)
 ;;55045-1467-08
 ;;9002226.02101,"732,55045-1467-08 ",.02)
 ;;55045-1467-08
 ;;9002226.02101,"732,55045-1467-09 ",.01)
 ;;55045-1467-09
 ;;9002226.02101,"732,55045-1467-09 ",.02)
 ;;55045-1467-09
 ;;9002226.02101,"732,55045-2197-01 ",.01)
 ;;55045-2197-01
 ;;9002226.02101,"732,55045-2197-01 ",.02)
 ;;55045-2197-01
 ;;9002226.02101,"732,55045-2197-02 ",.01)
 ;;55045-2197-02
 ;;9002226.02101,"732,55045-2197-02 ",.02)
 ;;55045-2197-02
 ;;9002226.02101,"732,55045-2197-05 ",.01)
 ;;55045-2197-05
 ;;9002226.02101,"732,55045-2197-05 ",.02)
 ;;55045-2197-05
 ;;9002226.02101,"732,55045-2197-06 ",.01)
 ;;55045-2197-06
 ;;9002226.02101,"732,55045-2197-06 ",.02)
 ;;55045-2197-06
 ;;9002226.02101,"732,55045-2197-08 ",.01)
 ;;55045-2197-08
 ;;9002226.02101,"732,55045-2197-08 ",.02)
 ;;55045-2197-08
 ;;9002226.02101,"732,55045-2197-09 ",.01)
 ;;55045-2197-09
 ;;9002226.02101,"732,55045-2197-09 ",.02)
 ;;55045-2197-09
 ;;9002226.02101,"732,55289-0095-15 ",.01)
 ;;55289-0095-15
 ;;9002226.02101,"732,55289-0095-15 ",.02)
 ;;55289-0095-15
 ;;9002226.02101,"732,55289-0095-17 ",.01)
 ;;55289-0095-17
 ;;9002226.02101,"732,55289-0095-17 ",.02)
 ;;55289-0095-17
 ;;9002226.02101,"732,55289-0095-20 ",.01)
 ;;55289-0095-20
 ;;9002226.02101,"732,55289-0095-20 ",.02)
 ;;55289-0095-20
 ;;9002226.02101,"732,55289-0095-30 ",.01)
 ;;55289-0095-30
 ;;9002226.02101,"732,55289-0095-30 ",.02)
 ;;55289-0095-30
 ;;9002226.02101,"732,55289-0095-60 ",.01)
 ;;55289-0095-60
 ;;9002226.02101,"732,55289-0095-60 ",.02)
 ;;55289-0095-60
 ;;9002226.02101,"732,55289-0923-20 ",.01)
 ;;55289-0923-20
 ;;9002226.02101,"732,55289-0923-20 ",.02)
 ;;55289-0923-20
 ;;9002226.02101,"732,55289-0923-30 ",.01)
 ;;55289-0923-30
 ;;9002226.02101,"732,55289-0923-30 ",.02)
 ;;55289-0923-30
 ;;9002226.02101,"732,55887-0470-16 ",.01)
 ;;55887-0470-16
 ;;9002226.02101,"732,55887-0470-16 ",.02)
 ;;55887-0470-16
 ;;9002226.02101,"732,55887-0470-30 ",.01)
 ;;55887-0470-30
 ;;9002226.02101,"732,55887-0470-30 ",.02)
 ;;55887-0470-30
 ;;9002226.02101,"732,55887-0909-15 ",.01)
 ;;55887-0909-15
 ;;9002226.02101,"732,55887-0909-15 ",.02)
 ;;55887-0909-15
 ;;9002226.02101,"732,55887-0909-30 ",.01)
 ;;55887-0909-30
 ;;9002226.02101,"732,55887-0909-30 ",.02)
 ;;55887-0909-30
 ;;9002226.02101,"732,55887-0909-60 ",.01)
 ;;55887-0909-60
 ;;9002226.02101,"732,55887-0909-60 ",.02)
 ;;55887-0909-60
 ;;9002226.02101,"732,55887-0909-90 ",.01)
 ;;55887-0909-90
 ;;9002226.02101,"732,55887-0909-90 ",.02)
 ;;55887-0909-90
 ;;9002226.02101,"732,57866-3367-03 ",.01)
 ;;57866-3367-03
 ;;9002226.02101,"732,57866-3367-03 ",.02)
 ;;57866-3367-03
 ;;9002226.02101,"732,57866-3377-01 ",.01)
 ;;57866-3377-01
 ;;9002226.02101,"732,57866-3377-01 ",.02)
 ;;57866-3377-01
 ;;9002226.02101,"732,57866-3377-04 ",.01)
 ;;57866-3377-04
 ;;9002226.02101,"732,57866-3377-04 ",.02)
 ;;57866-3377-04
 ;;9002226.02101,"732,58016-0019-00 ",.01)
 ;;58016-0019-00
 ;;9002226.02101,"732,58016-0019-00 ",.02)
 ;;58016-0019-00
 ;;9002226.02101,"732,58016-0019-30 ",.01)
 ;;58016-0019-30
 ;;9002226.02101,"732,58016-0019-30 ",.02)
 ;;58016-0019-30
 ;;9002226.02101,"732,58016-0019-60 ",.01)
 ;;58016-0019-60
 ;;9002226.02101,"732,58016-0019-60 ",.02)
 ;;58016-0019-60
 ;;9002226.02101,"732,58016-0019-90 ",.01)
 ;;58016-0019-90
 ;;9002226.02101,"732,58016-0019-90 ",.02)
 ;;58016-0019-90
 ;;9002226.02101,"732,58016-0702-12 ",.01)
 ;;58016-0702-12
 ;;9002226.02101,"732,58016-0702-12 ",.02)
 ;;58016-0702-12
 ;;9002226.02101,"732,58016-0702-30 ",.01)
 ;;58016-0702-30
 ;;9002226.02101,"732,58016-0702-30 ",.02)
 ;;58016-0702-30
 ;;9002226.02101,"732,58016-0703-00 ",.01)
 ;;58016-0703-00
 ;;9002226.02101,"732,58016-0703-00 ",.02)
 ;;58016-0703-00
 ;;9002226.02101,"732,58016-0703-12 ",.01)
 ;;58016-0703-12
 ;;9002226.02101,"732,58016-0703-12 ",.02)
 ;;58016-0703-12
 ;;9002226.02101,"732,58016-0703-30 ",.01)
 ;;58016-0703-30
 ;;9002226.02101,"732,58016-0703-30 ",.02)
 ;;58016-0703-30
 ;;9002226.02101,"732,58864-0153-30 ",.01)
 ;;58864-0153-30
 ;;9002226.02101,"732,58864-0153-30 ",.02)
 ;;58864-0153-30
 ;;9002226.02101,"732,58914-0012-10 ",.01)
 ;;58914-0012-10
 ;;9002226.02101,"732,58914-0012-10 ",.02)
 ;;58914-0012-10
 ;;9002226.02101,"732,58914-0013-10 ",.01)
 ;;58914-0013-10