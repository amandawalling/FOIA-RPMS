BGP33O31 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 23, 2013;
 ;;13.0;IHS CLINICAL REPORTING;**1**;NOV 20, 2012;Build 7
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1064,68645-0162-59 ",.01)
 ;;68645-0162-59
 ;;9002226.02101,"1064,68645-0162-59 ",.02)
 ;;68645-0162-59
 ;;9002226.02101,"1064,68645-0163-59 ",.01)
 ;;68645-0163-59
 ;;9002226.02101,"1064,68645-0163-59 ",.02)
 ;;68645-0163-59
 ;;9002226.02101,"1064,68645-0272-54 ",.01)
 ;;68645-0272-54
 ;;9002226.02101,"1064,68645-0272-54 ",.02)
 ;;68645-0272-54
 ;;9002226.02101,"1064,76234-0000-01 ",.01)
 ;;76234-0000-01
 ;;9002226.02101,"1064,76234-0000-01 ",.02)
 ;;76234-0000-01
 ;;9002226.02101,"1064,76234-0001-01 ",.01)
 ;;76234-0001-01
 ;;9002226.02101,"1064,76234-0001-01 ",.02)
 ;;76234-0001-01
 ;;9002226.02101,"1064,76234-0002-01 ",.01)
 ;;76234-0002-01
 ;;9002226.02101,"1064,76234-0002-01 ",.02)
 ;;76234-0002-01
 ;;9002226.02101,"1064,76282-0200-10 ",.01)
 ;;76282-0200-10
 ;;9002226.02101,"1064,76282-0200-10 ",.02)
 ;;76282-0200-10
 ;;9002226.02101,"1064,76282-0200-90 ",.01)
 ;;76282-0200-90
 ;;9002226.02101,"1064,76282-0200-90 ",.02)
 ;;76282-0200-90
 ;;9002226.02101,"1064,76282-0201-10 ",.01)
 ;;76282-0201-10
 ;;9002226.02101,"1064,76282-0201-10 ",.02)
 ;;76282-0201-10
 ;;9002226.02101,"1064,76282-0201-90 ",.01)
 ;;76282-0201-90
 ;;9002226.02101,"1064,76282-0201-90 ",.02)
 ;;76282-0201-90
 ;;9002226.02101,"1064,76282-0202-10 ",.01)
 ;;76282-0202-10
 ;;9002226.02101,"1064,76282-0202-10 ",.02)
 ;;76282-0202-10
 ;;9002226.02101,"1064,76282-0202-90 ",.01)
 ;;76282-0202-90
 ;;9002226.02101,"1064,76282-0202-90 ",.02)
 ;;76282-0202-90
 ;;9002226.02101,"1064,76282-0271-01 ",.01)
 ;;76282-0271-01
 ;;9002226.02101,"1064,76282-0271-01 ",.02)
 ;;76282-0271-01
 ;;9002226.02101,"1064,76282-0272-01 ",.01)
 ;;76282-0272-01
 ;;9002226.02101,"1064,76282-0272-01 ",.02)
 ;;76282-0272-01
 ;;9002226.02101,"1064,76282-0272-05 ",.01)
 ;;76282-0272-05
 ;;9002226.02101,"1064,76282-0272-05 ",.02)
 ;;76282-0272-05
 ;;9002226.02101,"1064,76282-0273-01 ",.01)
 ;;76282-0273-01
 ;;9002226.02101,"1064,76282-0273-01 ",.02)
 ;;76282-0273-01
 ;;9002226.02101,"1064,76282-0273-05 ",.01)
 ;;76282-0273-05
 ;;9002226.02101,"1064,76282-0273-05 ",.02)
 ;;76282-0273-05
 ;;9002226.02101,"1064,76282-0274-01 ",.01)
 ;;76282-0274-01
 ;;9002226.02101,"1064,76282-0274-01 ",.02)
 ;;76282-0274-01
 ;;9002226.02101,"1064,76282-0274-05 ",.01)
 ;;76282-0274-05
 ;;9002226.02101,"1064,76282-0274-05 ",.02)
 ;;76282-0274-05