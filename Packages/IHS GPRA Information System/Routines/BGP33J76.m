BGP33J76 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 23, 2013;
 ;;13.0;IHS CLINICAL REPORTING;**1**;NOV 20, 2012;Build 7
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"734,63874-0109-30 ",.01)
 ;;63874-0109-30
 ;;9002226.02101,"734,63874-0109-30 ",.02)
 ;;63874-0109-30
 ;;9002226.02101,"734,63874-0109-40 ",.01)
 ;;63874-0109-40
 ;;9002226.02101,"734,63874-0109-40 ",.02)
 ;;63874-0109-40
 ;;9002226.02101,"734,63874-0109-50 ",.01)
 ;;63874-0109-50
 ;;9002226.02101,"734,63874-0109-50 ",.02)
 ;;63874-0109-50
 ;;9002226.02101,"734,63874-0109-60 ",.01)
 ;;63874-0109-60
 ;;9002226.02101,"734,63874-0109-60 ",.02)
 ;;63874-0109-60
 ;;9002226.02101,"734,63874-0110-01 ",.01)
 ;;63874-0110-01
 ;;9002226.02101,"734,63874-0110-01 ",.02)
 ;;63874-0110-01
 ;;9002226.02101,"734,63874-0110-20 ",.01)
 ;;63874-0110-20
 ;;9002226.02101,"734,63874-0110-20 ",.02)
 ;;63874-0110-20
 ;;9002226.02101,"734,63874-0110-28 ",.01)
 ;;63874-0110-28
 ;;9002226.02101,"734,63874-0110-28 ",.02)
 ;;63874-0110-28
 ;;9002226.02101,"734,63874-0110-30 ",.01)
 ;;63874-0110-30
 ;;9002226.02101,"734,63874-0110-30 ",.02)
 ;;63874-0110-30
 ;;9002226.02101,"734,63874-0110-40 ",.01)
 ;;63874-0110-40
 ;;9002226.02101,"734,63874-0110-40 ",.02)
 ;;63874-0110-40
 ;;9002226.02101,"734,63874-0110-50 ",.01)
 ;;63874-0110-50
 ;;9002226.02101,"734,63874-0110-50 ",.02)
 ;;63874-0110-50
 ;;9002226.02101,"734,63874-0111-01 ",.01)
 ;;63874-0111-01
 ;;9002226.02101,"734,63874-0111-01 ",.02)
 ;;63874-0111-01
 ;;9002226.02101,"734,63874-0111-03 ",.01)
 ;;63874-0111-03
 ;;9002226.02101,"734,63874-0111-03 ",.02)
 ;;63874-0111-03
 ;;9002226.02101,"734,63874-0111-04 ",.01)
 ;;63874-0111-04
 ;;9002226.02101,"734,63874-0111-04 ",.02)
 ;;63874-0111-04
 ;;9002226.02101,"734,63874-0111-12 ",.01)
 ;;63874-0111-12
 ;;9002226.02101,"734,63874-0111-12 ",.02)
 ;;63874-0111-12
 ;;9002226.02101,"734,63874-0111-14 ",.01)
 ;;63874-0111-14
 ;;9002226.02101,"734,63874-0111-14 ",.02)
 ;;63874-0111-14
 ;;9002226.02101,"734,63874-0111-15 ",.01)
 ;;63874-0111-15
 ;;9002226.02101,"734,63874-0111-15 ",.02)
 ;;63874-0111-15
 ;;9002226.02101,"734,63874-0111-16 ",.01)
 ;;63874-0111-16
 ;;9002226.02101,"734,63874-0111-16 ",.02)
 ;;63874-0111-16
 ;;9002226.02101,"734,63874-0111-20 ",.01)
 ;;63874-0111-20
 ;;9002226.02101,"734,63874-0111-20 ",.02)
 ;;63874-0111-20
 ;;9002226.02101,"734,63874-0111-21 ",.01)
 ;;63874-0111-21
 ;;9002226.02101,"734,63874-0111-21 ",.02)
 ;;63874-0111-21
 ;;9002226.02101,"734,63874-0111-24 ",.01)
 ;;63874-0111-24
 ;;9002226.02101,"734,63874-0111-24 ",.02)
 ;;63874-0111-24
 ;;9002226.02101,"734,63874-0111-28 ",.01)
 ;;63874-0111-28
 ;;9002226.02101,"734,63874-0111-28 ",.02)
 ;;63874-0111-28
 ;;9002226.02101,"734,63874-0111-30 ",.01)
 ;;63874-0111-30
 ;;9002226.02101,"734,63874-0111-30 ",.02)
 ;;63874-0111-30
 ;;9002226.02101,"734,63874-0111-40 ",.01)
 ;;63874-0111-40
 ;;9002226.02101,"734,63874-0111-40 ",.02)
 ;;63874-0111-40
 ;;9002226.02101,"734,63874-0111-50 ",.01)
 ;;63874-0111-50
 ;;9002226.02101,"734,63874-0111-50 ",.02)
 ;;63874-0111-50
 ;;9002226.02101,"734,63874-0111-56 ",.01)
 ;;63874-0111-56
 ;;9002226.02101,"734,63874-0111-56 ",.02)
 ;;63874-0111-56
 ;;9002226.02101,"734,63874-0111-60 ",.01)
 ;;63874-0111-60
 ;;9002226.02101,"734,63874-0111-60 ",.02)
 ;;63874-0111-60
 ;;9002226.02101,"734,63874-0111-72 ",.01)
 ;;63874-0111-72
 ;;9002226.02101,"734,63874-0111-72 ",.02)
 ;;63874-0111-72
 ;;9002226.02101,"734,63874-0111-74 ",.01)
 ;;63874-0111-74
 ;;9002226.02101,"734,63874-0111-74 ",.02)
 ;;63874-0111-74
 ;;9002226.02101,"734,63874-0111-77 ",.01)
 ;;63874-0111-77
 ;;9002226.02101,"734,63874-0111-77 ",.02)
 ;;63874-0111-77
 ;;9002226.02101,"734,63874-0111-80 ",.01)
 ;;63874-0111-80
 ;;9002226.02101,"734,63874-0111-80 ",.02)
 ;;63874-0111-80
 ;;9002226.02101,"734,63874-0112-01 ",.01)
 ;;63874-0112-01
 ;;9002226.02101,"734,63874-0112-01 ",.02)
 ;;63874-0112-01
 ;;9002226.02101,"734,63874-0112-03 ",.01)
 ;;63874-0112-03
 ;;9002226.02101,"734,63874-0112-03 ",.02)
 ;;63874-0112-03
 ;;9002226.02101,"734,63874-0112-04 ",.01)
 ;;63874-0112-04
 ;;9002226.02101,"734,63874-0112-04 ",.02)
 ;;63874-0112-04
 ;;9002226.02101,"734,63874-0112-05 ",.01)
 ;;63874-0112-05
 ;;9002226.02101,"734,63874-0112-05 ",.02)
 ;;63874-0112-05
 ;;9002226.02101,"734,63874-0112-06 ",.01)
 ;;63874-0112-06
 ;;9002226.02101,"734,63874-0112-06 ",.02)
 ;;63874-0112-06
 ;;9002226.02101,"734,63874-0112-08 ",.01)
 ;;63874-0112-08
 ;;9002226.02101,"734,63874-0112-08 ",.02)
 ;;63874-0112-08
 ;;9002226.02101,"734,63874-0112-10 ",.01)
 ;;63874-0112-10
 ;;9002226.02101,"734,63874-0112-10 ",.02)
 ;;63874-0112-10
 ;;9002226.02101,"734,63874-0112-12 ",.01)
 ;;63874-0112-12
 ;;9002226.02101,"734,63874-0112-12 ",.02)
 ;;63874-0112-12
 ;;9002226.02101,"734,63874-0112-14 ",.01)
 ;;63874-0112-14
 ;;9002226.02101,"734,63874-0112-14 ",.02)
 ;;63874-0112-14
 ;;9002226.02101,"734,63874-0112-15 ",.01)
 ;;63874-0112-15
 ;;9002226.02101,"734,63874-0112-15 ",.02)
 ;;63874-0112-15
 ;;9002226.02101,"734,63874-0112-16 ",.01)
 ;;63874-0112-16
 ;;9002226.02101,"734,63874-0112-16 ",.02)
 ;;63874-0112-16
 ;;9002226.02101,"734,63874-0112-18 ",.01)
 ;;63874-0112-18
 ;;9002226.02101,"734,63874-0112-18 ",.02)
 ;;63874-0112-18
 ;;9002226.02101,"734,63874-0112-20 ",.01)
 ;;63874-0112-20
 ;;9002226.02101,"734,63874-0112-20 ",.02)
 ;;63874-0112-20
 ;;9002226.02101,"734,63874-0112-21 ",.01)
 ;;63874-0112-21
 ;;9002226.02101,"734,63874-0112-21 ",.02)
 ;;63874-0112-21
 ;;9002226.02101,"734,63874-0112-24 ",.01)
 ;;63874-0112-24
 ;;9002226.02101,"734,63874-0112-24 ",.02)
 ;;63874-0112-24
 ;;9002226.02101,"734,63874-0112-25 ",.01)
 ;;63874-0112-25
 ;;9002226.02101,"734,63874-0112-25 ",.02)
 ;;63874-0112-25
 ;;9002226.02101,"734,63874-0112-28 ",.01)
 ;;63874-0112-28
 ;;9002226.02101,"734,63874-0112-28 ",.02)
 ;;63874-0112-28
 ;;9002226.02101,"734,63874-0112-30 ",.01)
 ;;63874-0112-30
 ;;9002226.02101,"734,63874-0112-30 ",.02)
 ;;63874-0112-30
 ;;9002226.02101,"734,63874-0112-40 ",.01)
 ;;63874-0112-40
 ;;9002226.02101,"734,63874-0112-40 ",.02)
 ;;63874-0112-40
 ;;9002226.02101,"734,63874-0112-50 ",.01)
 ;;63874-0112-50
 ;;9002226.02101,"734,63874-0112-50 ",.02)
 ;;63874-0112-50
 ;;9002226.02101,"734,63874-0112-56 ",.01)
 ;;63874-0112-56
 ;;9002226.02101,"734,63874-0112-56 ",.02)
 ;;63874-0112-56
 ;;9002226.02101,"734,63874-0112-60 ",.01)
 ;;63874-0112-60
 ;;9002226.02101,"734,63874-0112-60 ",.02)
 ;;63874-0112-60
 ;;9002226.02101,"734,63874-0112-72 ",.01)
 ;;63874-0112-72
 ;;9002226.02101,"734,63874-0112-72 ",.02)
 ;;63874-0112-72
 ;;9002226.02101,"734,63874-0112-74 ",.01)
 ;;63874-0112-74
 ;;9002226.02101,"734,63874-0112-74 ",.02)
 ;;63874-0112-74
 ;;9002226.02101,"734,63874-0112-77 ",.01)
 ;;63874-0112-77
 ;;9002226.02101,"734,63874-0112-77 ",.02)
 ;;63874-0112-77
 ;;9002226.02101,"734,63874-0113-01 ",.01)
 ;;63874-0113-01
 ;;9002226.02101,"734,63874-0113-01 ",.02)
 ;;63874-0113-01
 ;;9002226.02101,"734,63874-0113-03 ",.01)
 ;;63874-0113-03
 ;;9002226.02101,"734,63874-0113-03 ",.02)
 ;;63874-0113-03
 ;;9002226.02101,"734,63874-0113-08 ",.01)
 ;;63874-0113-08
 ;;9002226.02101,"734,63874-0113-08 ",.02)
 ;;63874-0113-08
 ;;9002226.02101,"734,63874-0113-09 ",.01)
 ;;63874-0113-09
 ;;9002226.02101,"734,63874-0113-09 ",.02)
 ;;63874-0113-09
 ;;9002226.02101,"734,63874-0113-10 ",.01)
 ;;63874-0113-10
 ;;9002226.02101,"734,63874-0113-10 ",.02)
 ;;63874-0113-10
 ;;9002226.02101,"734,63874-0113-12 ",.01)
 ;;63874-0113-12
 ;;9002226.02101,"734,63874-0113-12 ",.02)
 ;;63874-0113-12
 ;;9002226.02101,"734,63874-0113-14 ",.01)
 ;;63874-0113-14
 ;;9002226.02101,"734,63874-0113-14 ",.02)
 ;;63874-0113-14
 ;;9002226.02101,"734,63874-0113-15 ",.01)
 ;;63874-0113-15
 ;;9002226.02101,"734,63874-0113-15 ",.02)
 ;;63874-0113-15
 ;;9002226.02101,"734,63874-0113-20 ",.01)
 ;;63874-0113-20
 ;;9002226.02101,"734,63874-0113-20 ",.02)
 ;;63874-0113-20
 ;;9002226.02101,"734,63874-0113-21 ",.01)
 ;;63874-0113-21
 ;;9002226.02101,"734,63874-0113-21 ",.02)
 ;;63874-0113-21
 ;;9002226.02101,"734,63874-0113-24 ",.01)
 ;;63874-0113-24
 ;;9002226.02101,"734,63874-0113-24 ",.02)
 ;;63874-0113-24
 ;;9002226.02101,"734,63874-0113-28 ",.01)
 ;;63874-0113-28
 ;;9002226.02101,"734,63874-0113-28 ",.02)
 ;;63874-0113-28
 ;;9002226.02101,"734,63874-0113-30 ",.01)
 ;;63874-0113-30
 ;;9002226.02101,"734,63874-0113-30 ",.02)
 ;;63874-0113-30
 ;;9002226.02101,"734,63874-0113-40 ",.01)
 ;;63874-0113-40
 ;;9002226.02101,"734,63874-0113-40 ",.02)
 ;;63874-0113-40
 ;;9002226.02101,"734,63874-0113-50 ",.01)
 ;;63874-0113-50
 ;;9002226.02101,"734,63874-0113-50 ",.02)
 ;;63874-0113-50
 ;;9002226.02101,"734,63874-0114-01 ",.01)
 ;;63874-0114-01
 ;;9002226.02101,"734,63874-0114-01 ",.02)
 ;;63874-0114-01
 ;;9002226.02101,"734,63874-0114-03 ",.01)
 ;;63874-0114-03
 ;;9002226.02101,"734,63874-0114-03 ",.02)
 ;;63874-0114-03
 ;;9002226.02101,"734,63874-0114-07 ",.01)
 ;;63874-0114-07
 ;;9002226.02101,"734,63874-0114-07 ",.02)
 ;;63874-0114-07
 ;;9002226.02101,"734,63874-0114-10 ",.01)
 ;;63874-0114-10
 ;;9002226.02101,"734,63874-0114-10 ",.02)
 ;;63874-0114-10
 ;;9002226.02101,"734,63874-0114-20 ",.01)
 ;;63874-0114-20
 ;;9002226.02101,"734,63874-0114-20 ",.02)
 ;;63874-0114-20
 ;;9002226.02101,"734,63874-0114-21 ",.01)
 ;;63874-0114-21
 ;;9002226.02101,"734,63874-0114-21 ",.02)
 ;;63874-0114-21
 ;;9002226.02101,"734,63874-0114-24 ",.01)
 ;;63874-0114-24
 ;;9002226.02101,"734,63874-0114-24 ",.02)
 ;;63874-0114-24
 ;;9002226.02101,"734,63874-0114-25 ",.01)
 ;;63874-0114-25
 ;;9002226.02101,"734,63874-0114-25 ",.02)
 ;;63874-0114-25
 ;;9002226.02101,"734,63874-0114-28 ",.01)
 ;;63874-0114-28
 ;;9002226.02101,"734,63874-0114-28 ",.02)
 ;;63874-0114-28
 ;;9002226.02101,"734,63874-0114-30 ",.01)
 ;;63874-0114-30
 ;;9002226.02101,"734,63874-0114-30 ",.02)
 ;;63874-0114-30
 ;;9002226.02101,"734,63874-0114-40 ",.01)
 ;;63874-0114-40
 ;;9002226.02101,"734,63874-0114-40 ",.02)
 ;;63874-0114-40
 ;;9002226.02101,"734,63874-0114-50 ",.01)
 ;;63874-0114-50
 ;;9002226.02101,"734,63874-0114-50 ",.02)
 ;;63874-0114-50
 ;;9002226.02101,"734,63874-0115-01 ",.01)
 ;;63874-0115-01
 ;;9002226.02101,"734,63874-0115-01 ",.02)
 ;;63874-0115-01
 ;;9002226.02101,"734,63874-0115-08 ",.01)
 ;;63874-0115-08
 ;;9002226.02101,"734,63874-0115-08 ",.02)
 ;;63874-0115-08
 ;;9002226.02101,"734,63874-0115-10 ",.01)
 ;;63874-0115-10
 ;;9002226.02101,"734,63874-0115-10 ",.02)
 ;;63874-0115-10
 ;;9002226.02101,"734,63874-0115-12 ",.01)
 ;;63874-0115-12
 ;;9002226.02101,"734,63874-0115-12 ",.02)
 ;;63874-0115-12
 ;;9002226.02101,"734,63874-0115-14 ",.01)
 ;;63874-0115-14
 ;;9002226.02101,"734,63874-0115-14 ",.02)
 ;;63874-0115-14
 ;;9002226.02101,"734,63874-0115-15 ",.01)
 ;;63874-0115-15
 ;;9002226.02101,"734,63874-0115-15 ",.02)
 ;;63874-0115-15
 ;;9002226.02101,"734,63874-0115-20 ",.01)
 ;;63874-0115-20
 ;;9002226.02101,"734,63874-0115-20 ",.02)
 ;;63874-0115-20
 ;;9002226.02101,"734,63874-0115-21 ",.01)
 ;;63874-0115-21
 ;;9002226.02101,"734,63874-0115-21 ",.02)
 ;;63874-0115-21
 ;;9002226.02101,"734,63874-0115-30 ",.01)
 ;;63874-0115-30
 ;;9002226.02101,"734,63874-0115-30 ",.02)
 ;;63874-0115-30
 ;;9002226.02101,"734,63874-0117-10 ",.01)
 ;;63874-0117-10
 ;;9002226.02101,"734,63874-0117-10 ",.02)
 ;;63874-0117-10
 ;;9002226.02101,"734,63874-0117-12 ",.01)
 ;;63874-0117-12
 ;;9002226.02101,"734,63874-0117-12 ",.02)
 ;;63874-0117-12
 ;;9002226.02101,"734,63874-0117-14 ",.01)
 ;;63874-0117-14
 ;;9002226.02101,"734,63874-0117-14 ",.02)
 ;;63874-0117-14
 ;;9002226.02101,"734,63874-0117-15 ",.01)
 ;;63874-0117-15
 ;;9002226.02101,"734,63874-0117-15 ",.02)
 ;;63874-0117-15
 ;;9002226.02101,"734,63874-0117-20 ",.01)
 ;;63874-0117-20
 ;;9002226.02101,"734,63874-0117-20 ",.02)
 ;;63874-0117-20
 ;;9002226.02101,"734,63874-0117-30 ",.01)
 ;;63874-0117-30
 ;;9002226.02101,"734,63874-0117-30 ",.02)
 ;;63874-0117-30
 ;;9002226.02101,"734,63874-0118-01 ",.01)
 ;;63874-0118-01
 ;;9002226.02101,"734,63874-0118-01 ",.02)
 ;;63874-0118-01
 ;;9002226.02101,"734,63874-0118-03 ",.01)
 ;;63874-0118-03
 ;;9002226.02101,"734,63874-0118-03 ",.02)
 ;;63874-0118-03
 ;;9002226.02101,"734,63874-0118-06 ",.01)
 ;;63874-0118-06
 ;;9002226.02101,"734,63874-0118-06 ",.02)
 ;;63874-0118-06
 ;;9002226.02101,"734,63874-0118-07 ",.01)
 ;;63874-0118-07
 ;;9002226.02101,"734,63874-0118-07 ",.02)
 ;;63874-0118-07
 ;;9002226.02101,"734,63874-0118-10 ",.01)
 ;;63874-0118-10
 ;;9002226.02101,"734,63874-0118-10 ",.02)
 ;;63874-0118-10
 ;;9002226.02101,"734,63874-0118-12 ",.01)
 ;;63874-0118-12
 ;;9002226.02101,"734,63874-0118-12 ",.02)
 ;;63874-0118-12
 ;;9002226.02101,"734,63874-0118-14 ",.01)
 ;;63874-0118-14
 ;;9002226.02101,"734,63874-0118-14 ",.02)
 ;;63874-0118-14
 ;;9002226.02101,"734,63874-0118-15 ",.01)
 ;;63874-0118-15
 ;;9002226.02101,"734,63874-0118-15 ",.02)
 ;;63874-0118-15
 ;;9002226.02101,"734,63874-0118-18 ",.01)
 ;;63874-0118-18
 ;;9002226.02101,"734,63874-0118-18 ",.02)
 ;;63874-0118-18
 ;;9002226.02101,"734,63874-0118-20 ",.01)
 ;;63874-0118-20
 ;;9002226.02101,"734,63874-0118-20 ",.02)
 ;;63874-0118-20
 ;;9002226.02101,"734,63874-0118-21 ",.01)
 ;;63874-0118-21
 ;;9002226.02101,"734,63874-0118-21 ",.02)
 ;;63874-0118-21
 ;;9002226.02101,"734,63874-0118-24 ",.01)
 ;;63874-0118-24
 ;;9002226.02101,"734,63874-0118-24 ",.02)
 ;;63874-0118-24
 ;;9002226.02101,"734,63874-0118-28 ",.01)
 ;;63874-0118-28
 ;;9002226.02101,"734,63874-0118-28 ",.02)
 ;;63874-0118-28
 ;;9002226.02101,"734,63874-0118-30 ",.01)
 ;;63874-0118-30
 ;;9002226.02101,"734,63874-0118-30 ",.02)
 ;;63874-0118-30