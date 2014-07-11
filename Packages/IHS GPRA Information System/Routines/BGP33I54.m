BGP33I54 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 23, 2013;
 ;;13.0;IHS CLINICAL REPORTING;**1**;NOV 20, 2012;Build 7
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"798,65580-0304-03 ",.02)
 ;;65580-0304-03
 ;;9002226.02101,"798,65580-0304-09 ",.01)
 ;;65580-0304-09
 ;;9002226.02101,"798,65580-0304-09 ",.02)
 ;;65580-0304-09
 ;;9002226.02101,"798,65862-0001-01 ",.01)
 ;;65862-0001-01
 ;;9002226.02101,"798,65862-0001-01 ",.02)
 ;;65862-0001-01
 ;;9002226.02101,"798,65862-0001-05 ",.01)
 ;;65862-0001-05
 ;;9002226.02101,"798,65862-0001-05 ",.02)
 ;;65862-0001-05
 ;;9002226.02101,"798,65862-0001-30 ",.01)
 ;;65862-0001-30
 ;;9002226.02101,"798,65862-0001-30 ",.02)
 ;;65862-0001-30
 ;;9002226.02101,"798,65862-0003-01 ",.01)
 ;;65862-0003-01
 ;;9002226.02101,"798,65862-0003-01 ",.02)
 ;;65862-0003-01
 ;;9002226.02101,"798,65862-0003-03 ",.01)
 ;;65862-0003-03
 ;;9002226.02101,"798,65862-0003-03 ",.02)
 ;;65862-0003-03
 ;;9002226.02101,"798,65862-0003-05 ",.01)
 ;;65862-0003-05
 ;;9002226.02101,"798,65862-0003-05 ",.02)
 ;;65862-0003-05
 ;;9002226.02101,"798,65862-0003-30 ",.01)
 ;;65862-0003-30
 ;;9002226.02101,"798,65862-0003-30 ",.02)
 ;;65862-0003-30
 ;;9002226.02101,"798,65862-0003-90 ",.01)
 ;;65862-0003-90
 ;;9002226.02101,"798,65862-0003-90 ",.02)
 ;;65862-0003-90
 ;;9002226.02101,"798,65862-0005-01 ",.01)
 ;;65862-0005-01
 ;;9002226.02101,"798,65862-0005-01 ",.02)
 ;;65862-0005-01
 ;;9002226.02101,"798,65862-0005-05 ",.01)
 ;;65862-0005-05
 ;;9002226.02101,"798,65862-0005-05 ",.02)
 ;;65862-0005-05
 ;;9002226.02101,"798,65862-0005-30 ",.01)
 ;;65862-0005-30
 ;;9002226.02101,"798,65862-0005-30 ",.02)
 ;;65862-0005-30
 ;;9002226.02101,"798,65862-0006-01 ",.01)
 ;;65862-0006-01
 ;;9002226.02101,"798,65862-0006-01 ",.02)
 ;;65862-0006-01
 ;;9002226.02101,"798,65862-0006-05 ",.01)
 ;;65862-0006-05
 ;;9002226.02101,"798,65862-0006-05 ",.02)
 ;;65862-0006-05
 ;;9002226.02101,"798,65862-0006-30 ",.01)
 ;;65862-0006-30
 ;;9002226.02101,"798,65862-0006-30 ",.02)
 ;;65862-0006-30
 ;;9002226.02101,"798,65862-0007-01 ",.01)
 ;;65862-0007-01
 ;;9002226.02101,"798,65862-0007-01 ",.02)
 ;;65862-0007-01
 ;;9002226.02101,"798,65862-0007-05 ",.01)
 ;;65862-0007-05
 ;;9002226.02101,"798,65862-0007-05 ",.02)
 ;;65862-0007-05
 ;;9002226.02101,"798,65862-0007-30 ",.01)
 ;;65862-0007-30
 ;;9002226.02101,"798,65862-0007-30 ",.02)
 ;;65862-0007-30
 ;;9002226.02101,"798,65862-0011-01 ",.01)
 ;;65862-0011-01
 ;;9002226.02101,"798,65862-0011-01 ",.02)
 ;;65862-0011-01
 ;;9002226.02101,"798,65862-0011-05 ",.01)
 ;;65862-0011-05
 ;;9002226.02101,"798,65862-0011-05 ",.02)
 ;;65862-0011-05
 ;;9002226.02101,"798,65862-0011-30 ",.01)
 ;;65862-0011-30
 ;;9002226.02101,"798,65862-0011-30 ",.02)
 ;;65862-0011-30
 ;;9002226.02101,"798,65862-0011-90 ",.01)
 ;;65862-0011-90
 ;;9002226.02101,"798,65862-0011-90 ",.02)
 ;;65862-0011-90
 ;;9002226.02101,"798,65862-0012-01 ",.01)
 ;;65862-0012-01
 ;;9002226.02101,"798,65862-0012-01 ",.02)
 ;;65862-0012-01
 ;;9002226.02101,"798,65862-0012-05 ",.01)
 ;;65862-0012-05
 ;;9002226.02101,"798,65862-0012-05 ",.02)
 ;;65862-0012-05
 ;;9002226.02101,"798,65862-0012-30 ",.01)
 ;;65862-0012-30
 ;;9002226.02101,"798,65862-0012-30 ",.02)
 ;;65862-0012-30
 ;;9002226.02101,"798,65862-0012-90 ",.01)
 ;;65862-0012-90
 ;;9002226.02101,"798,65862-0012-90 ",.02)
 ;;65862-0012-90
 ;;9002226.02101,"798,65862-0013-01 ",.01)
 ;;65862-0013-01
 ;;9002226.02101,"798,65862-0013-01 ",.02)
 ;;65862-0013-01
 ;;9002226.02101,"798,65862-0013-05 ",.01)
 ;;65862-0013-05
 ;;9002226.02101,"798,65862-0013-05 ",.02)
 ;;65862-0013-05
 ;;9002226.02101,"798,65862-0013-30 ",.01)
 ;;65862-0013-30
 ;;9002226.02101,"798,65862-0013-30 ",.02)
 ;;65862-0013-30
 ;;9002226.02101,"798,65862-0013-90 ",.01)
 ;;65862-0013-90
 ;;9002226.02101,"798,65862-0013-90 ",.02)
 ;;65862-0013-90
 ;;9002226.02101,"798,65862-0021-06 ",.01)
 ;;65862-0021-06
 ;;9002226.02101,"798,65862-0021-06 ",.02)
 ;;65862-0021-06
 ;;9002226.02101,"798,65862-0022-06 ",.01)
 ;;65862-0022-06
 ;;9002226.02101,"798,65862-0022-06 ",.02)
 ;;65862-0022-06
 ;;9002226.02101,"798,65862-0023-06 ",.01)
 ;;65862-0023-06
 ;;9002226.02101,"798,65862-0023-06 ",.02)
 ;;65862-0023-06
 ;;9002226.02101,"798,65862-0031-01 ",.01)
 ;;65862-0031-01
 ;;9002226.02101,"798,65862-0031-01 ",.02)
 ;;65862-0031-01
 ;;9002226.02101,"798,65862-0031-03 ",.01)
 ;;65862-0031-03
 ;;9002226.02101,"798,65862-0031-03 ",.02)
 ;;65862-0031-03
 ;;9002226.02101,"798,65862-0031-05 ",.01)
 ;;65862-0031-05
 ;;9002226.02101,"798,65862-0031-05 ",.02)
 ;;65862-0031-05
 ;;9002226.02101,"798,65862-0031-30 ",.01)
 ;;65862-0031-30
 ;;9002226.02101,"798,65862-0031-30 ",.02)
 ;;65862-0031-30
 ;;9002226.02101,"798,65862-0031-90 ",.01)
 ;;65862-0031-90
 ;;9002226.02101,"798,65862-0031-90 ",.02)
 ;;65862-0031-90
 ;;9002226.02101,"798,65862-0032-01 ",.01)
 ;;65862-0032-01
 ;;9002226.02101,"798,65862-0032-01 ",.02)
 ;;65862-0032-01
 ;;9002226.02101,"798,65862-0032-03 ",.01)
 ;;65862-0032-03
 ;;9002226.02101,"798,65862-0032-03 ",.02)
 ;;65862-0032-03
 ;;9002226.02101,"798,65862-0032-05 ",.01)
 ;;65862-0032-05
 ;;9002226.02101,"798,65862-0032-05 ",.02)
 ;;65862-0032-05
 ;;9002226.02101,"798,65862-0032-30 ",.01)
 ;;65862-0032-30
 ;;9002226.02101,"798,65862-0032-30 ",.02)
 ;;65862-0032-30
 ;;9002226.02101,"798,65862-0032-90 ",.01)
 ;;65862-0032-90
 ;;9002226.02101,"798,65862-0032-90 ",.02)
 ;;65862-0032-90
 ;;9002226.02101,"798,65862-0074-24 ",.01)
 ;;65862-0074-24
 ;;9002226.02101,"798,65862-0074-24 ",.02)
 ;;65862-0074-24
 ;;9002226.02101,"798,65862-0154-30 ",.01)
 ;;65862-0154-30
 ;;9002226.02101,"798,65862-0154-30 ",.02)
 ;;65862-0154-30
 ;;9002226.02101,"798,65862-0155-05 ",.01)
 ;;65862-0155-05
 ;;9002226.02101,"798,65862-0155-05 ",.02)
 ;;65862-0155-05
 ;;9002226.02101,"798,65862-0155-30 ",.01)
 ;;65862-0155-30
 ;;9002226.02101,"798,65862-0155-30 ",.02)
 ;;65862-0155-30
 ;;9002226.02101,"798,65862-0155-99 ",.01)
 ;;65862-0155-99
 ;;9002226.02101,"798,65862-0155-99 ",.02)
 ;;65862-0155-99
 ;;9002226.02101,"798,65862-0156-30 ",.01)
 ;;65862-0156-30
 ;;9002226.02101,"798,65862-0156-30 ",.02)
 ;;65862-0156-30
 ;;9002226.02101,"798,65862-0156-99 ",.01)
 ;;65862-0156-99
 ;;9002226.02101,"798,65862-0156-99 ",.02)
 ;;65862-0156-99
 ;;9002226.02101,"798,65862-0157-30 ",.01)
 ;;65862-0157-30
 ;;9002226.02101,"798,65862-0157-30 ",.02)
 ;;65862-0157-30
 ;;9002226.02101,"798,65862-0157-99 ",.01)
 ;;65862-0157-99
 ;;9002226.02101,"798,65862-0157-99 ",.02)
 ;;65862-0157-99
 ;;9002226.02101,"798,65862-0192-01 ",.01)
 ;;65862-0192-01
 ;;9002226.02101,"798,65862-0192-01 ",.02)
 ;;65862-0192-01
 ;;9002226.02101,"798,65862-0192-05 ",.01)
 ;;65862-0192-05
 ;;9002226.02101,"798,65862-0192-05 ",.02)
 ;;65862-0192-05
 ;;9002226.02101,"798,65862-0192-99 ",.01)
 ;;65862-0192-99
 ;;9002226.02101,"798,65862-0192-99 ",.02)
 ;;65862-0192-99
 ;;9002226.02101,"798,65862-0193-01 ",.01)
 ;;65862-0193-01
 ;;9002226.02101,"798,65862-0193-01 ",.02)
 ;;65862-0193-01
 ;;9002226.02101,"798,65862-0193-05 ",.01)
 ;;65862-0193-05
 ;;9002226.02101,"798,65862-0193-05 ",.02)
 ;;65862-0193-05
 ;;9002226.02101,"798,65862-0193-99 ",.01)
 ;;65862-0193-99
 ;;9002226.02101,"798,65862-0193-99 ",.02)
 ;;65862-0193-99
 ;;9002226.02101,"798,65862-0194-01 ",.01)
 ;;65862-0194-01
 ;;9002226.02101,"798,65862-0194-01 ",.02)
 ;;65862-0194-01
 ;;9002226.02101,"798,65862-0194-30 ",.01)
 ;;65862-0194-30
 ;;9002226.02101,"798,65862-0194-30 ",.02)
 ;;65862-0194-30
 ;;9002226.02101,"798,65862-0248-24 ",.01)
 ;;65862-0248-24
 ;;9002226.02101,"798,65862-0248-24 ",.02)
 ;;65862-0248-24
 ;;9002226.02101,"798,65862-0405-01 ",.01)
 ;;65862-0405-01
 ;;9002226.02101,"798,65862-0405-01 ",.02)
 ;;65862-0405-01
 ;;9002226.02101,"798,65862-0407-01 ",.01)
 ;;65862-0407-01
 ;;9002226.02101,"798,65862-0407-01 ",.02)
 ;;65862-0407-01
 ;;9002226.02101,"798,65862-0408-01 ",.01)
 ;;65862-0408-01
 ;;9002226.02101,"798,65862-0408-01 ",.02)
 ;;65862-0408-01
 ;;9002226.02101,"798,65862-0527-01 ",.01)
 ;;65862-0527-01
 ;;9002226.02101,"798,65862-0527-01 ",.02)
 ;;65862-0527-01
 ;;9002226.02101,"798,65862-0527-30 ",.01)
 ;;65862-0527-30
 ;;9002226.02101,"798,65862-0527-30 ",.02)
 ;;65862-0527-30
 ;;9002226.02101,"798,65862-0527-90 ",.01)
 ;;65862-0527-90
 ;;9002226.02101,"798,65862-0527-90 ",.02)
 ;;65862-0527-90
 ;;9002226.02101,"798,65862-0527-99 ",.01)
 ;;65862-0527-99
 ;;9002226.02101,"798,65862-0527-99 ",.02)
 ;;65862-0527-99
 ;;9002226.02101,"798,65862-0528-01 ",.01)
 ;;65862-0528-01
 ;;9002226.02101,"798,65862-0528-01 ",.02)
 ;;65862-0528-01
 ;;9002226.02101,"798,65862-0528-30 ",.01)
 ;;65862-0528-30
 ;;9002226.02101,"798,65862-0528-30 ",.02)
 ;;65862-0528-30
 ;;9002226.02101,"798,65862-0528-90 ",.01)
 ;;65862-0528-90
 ;;9002226.02101,"798,65862-0528-90 ",.02)
 ;;65862-0528-90
 ;;9002226.02101,"798,65862-0528-99 ",.01)
 ;;65862-0528-99
 ;;9002226.02101,"798,65862-0528-99 ",.02)
 ;;65862-0528-99
 ;;9002226.02101,"798,65862-0529-30 ",.01)
 ;;65862-0529-30
 ;;9002226.02101,"798,65862-0529-30 ",.02)
 ;;65862-0529-30
 ;;9002226.02101,"798,65862-0529-90 ",.01)
 ;;65862-0529-90
 ;;9002226.02101,"798,65862-0529-90 ",.02)
 ;;65862-0529-90
 ;;9002226.02101,"798,65862-0697-01 ",.01)
 ;;65862-0697-01
 ;;9002226.02101,"798,65862-0697-01 ",.02)
 ;;65862-0697-01
 ;;9002226.02101,"798,65862-0697-05 ",.01)
 ;;65862-0697-05
 ;;9002226.02101,"798,65862-0697-05 ",.02)
 ;;65862-0697-05
 ;;9002226.02101,"798,65862-0697-30 ",.01)
 ;;65862-0697-30
 ;;9002226.02101,"798,65862-0697-30 ",.02)
 ;;65862-0697-30
 ;;9002226.02101,"798,65862-0697-90 ",.01)
 ;;65862-0697-90
 ;;9002226.02101,"798,65862-0697-90 ",.02)
 ;;65862-0697-90
 ;;9002226.02101,"798,66105-0111-10 ",.01)
 ;;66105-0111-10
 ;;9002226.02101,"798,66105-0111-10 ",.02)
 ;;66105-0111-10
 ;;9002226.02101,"798,66105-0112-01 ",.01)
 ;;66105-0112-01
 ;;9002226.02101,"798,66105-0112-01 ",.02)
 ;;66105-0112-01
 ;;9002226.02101,"798,66105-0112-03 ",.01)
 ;;66105-0112-03
 ;;9002226.02101,"798,66105-0112-03 ",.02)
 ;;66105-0112-03
 ;;9002226.02101,"798,66105-0112-06 ",.01)
 ;;66105-0112-06
 ;;9002226.02101,"798,66105-0112-06 ",.02)
 ;;66105-0112-06
 ;;9002226.02101,"798,66105-0112-10 ",.01)
 ;;66105-0112-10
 ;;9002226.02101,"798,66105-0112-10 ",.02)
 ;;66105-0112-10
 ;;9002226.02101,"798,66105-0112-15 ",.01)
 ;;66105-0112-15
 ;;9002226.02101,"798,66105-0112-15 ",.02)
 ;;66105-0112-15
 ;;9002226.02101,"798,66105-0116-03 ",.01)
 ;;66105-0116-03
 ;;9002226.02101,"798,66105-0116-03 ",.02)
 ;;66105-0116-03
 ;;9002226.02101,"798,66105-0117-03 ",.01)
 ;;66105-0117-03
 ;;9002226.02101,"798,66105-0117-03 ",.02)
 ;;66105-0117-03
 ;;9002226.02101,"798,66105-0118-10 ",.01)
 ;;66105-0118-10
 ;;9002226.02101,"798,66105-0118-10 ",.02)
 ;;66105-0118-10
 ;;9002226.02101,"798,66105-0480-01 ",.01)
 ;;66105-0480-01
 ;;9002226.02101,"798,66105-0480-01 ",.02)
 ;;66105-0480-01
 ;;9002226.02101,"798,66105-0480-02 ",.01)
 ;;66105-0480-02
 ;;9002226.02101,"798,66105-0480-02 ",.02)
 ;;66105-0480-02
 ;;9002226.02101,"798,66105-0480-03 ",.01)
 ;;66105-0480-03
 ;;9002226.02101,"798,66105-0480-03 ",.02)
 ;;66105-0480-03
 ;;9002226.02101,"798,66105-0480-06 ",.01)
 ;;66105-0480-06
 ;;9002226.02101,"798,66105-0480-06 ",.02)
 ;;66105-0480-06
 ;;9002226.02101,"798,66105-0480-15 ",.01)
 ;;66105-0480-15
 ;;9002226.02101,"798,66105-0480-15 ",.02)
 ;;66105-0480-15
 ;;9002226.02101,"798,66105-0481-01 ",.01)
 ;;66105-0481-01
 ;;9002226.02101,"798,66105-0481-01 ",.02)
 ;;66105-0481-01
 ;;9002226.02101,"798,66105-0481-02 ",.01)
 ;;66105-0481-02
 ;;9002226.02101,"798,66105-0481-02 ",.02)
 ;;66105-0481-02
 ;;9002226.02101,"798,66105-0481-03 ",.01)
 ;;66105-0481-03
 ;;9002226.02101,"798,66105-0481-03 ",.02)
 ;;66105-0481-03
 ;;9002226.02101,"798,66105-0481-06 ",.01)
 ;;66105-0481-06
 ;;9002226.02101,"798,66105-0481-06 ",.02)
 ;;66105-0481-06
 ;;9002226.02101,"798,66105-0481-15 ",.01)
 ;;66105-0481-15
 ;;9002226.02101,"798,66105-0481-15 ",.02)
 ;;66105-0481-15
 ;;9002226.02101,"798,66105-0550-03 ",.01)
 ;;66105-0550-03
 ;;9002226.02101,"798,66105-0550-03 ",.02)
 ;;66105-0550-03
 ;;9002226.02101,"798,66105-0564-03 ",.01)
 ;;66105-0564-03
 ;;9002226.02101,"798,66105-0564-03 ",.02)
 ;;66105-0564-03
 ;;9002226.02101,"798,66105-0969-03 ",.01)
 ;;66105-0969-03
 ;;9002226.02101,"798,66105-0969-03 ",.02)
 ;;66105-0969-03
 ;;9002226.02101,"798,66105-0977-03 ",.01)
 ;;66105-0977-03
 ;;9002226.02101,"798,66105-0977-03 ",.02)
 ;;66105-0977-03
 ;;9002226.02101,"798,66267-0018-30 ",.01)
 ;;66267-0018-30
 ;;9002226.02101,"798,66267-0018-30 ",.02)
 ;;66267-0018-30
 ;;9002226.02101,"798,66267-0018-60 ",.01)
 ;;66267-0018-60
 ;;9002226.02101,"798,66267-0018-60 ",.02)
 ;;66267-0018-60
 ;;9002226.02101,"798,66267-0018-90 ",.01)
 ;;66267-0018-90
 ;;9002226.02101,"798,66267-0018-90 ",.02)
 ;;66267-0018-90
 ;;9002226.02101,"798,66267-0019-14 ",.01)
 ;;66267-0019-14
 ;;9002226.02101,"798,66267-0019-14 ",.02)
 ;;66267-0019-14
 ;;9002226.02101,"798,66267-0019-90 ",.01)
 ;;66267-0019-90
 ;;9002226.02101,"798,66267-0019-90 ",.02)
 ;;66267-0019-90
 ;;9002226.02101,"798,66267-0205-30 ",.01)
 ;;66267-0205-30
 ;;9002226.02101,"798,66267-0205-30 ",.02)
 ;;66267-0205-30
 ;;9002226.02101,"798,66267-0205-60 ",.01)
 ;;66267-0205-60
 ;;9002226.02101,"798,66267-0205-60 ",.02)
 ;;66267-0205-60
 ;;9002226.02101,"798,66267-0392-30 ",.01)
 ;;66267-0392-30
 ;;9002226.02101,"798,66267-0392-30 ",.02)
 ;;66267-0392-30
 ;;9002226.02101,"798,66267-0392-60 ",.01)
 ;;66267-0392-60
 ;;9002226.02101,"798,66267-0392-60 ",.02)
 ;;66267-0392-60
 ;;9002226.02101,"798,66267-0483-30 ",.01)
 ;;66267-0483-30