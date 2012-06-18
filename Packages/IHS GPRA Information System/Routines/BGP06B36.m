BGP06B36 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"975,63739-0245-01 ",.01)
 ;;63739-0245-01
 ;;9002226.02101,"975,63739-0245-01 ",.02)
 ;;63739-0245-01
 ;;9002226.02101,"975,63739-0245-03 ",.01)
 ;;63739-0245-03
 ;;9002226.02101,"975,63739-0245-03 ",.02)
 ;;63739-0245-03
 ;;9002226.02101,"975,63739-0245-15 ",.01)
 ;;63739-0245-15
 ;;9002226.02101,"975,63739-0245-15 ",.02)
 ;;63739-0245-15
 ;;9002226.02101,"975,63739-0246-01 ",.01)
 ;;63739-0246-01
 ;;9002226.02101,"975,63739-0246-01 ",.02)
 ;;63739-0246-01
 ;;9002226.02101,"975,63739-0246-03 ",.01)
 ;;63739-0246-03
 ;;9002226.02101,"975,63739-0246-03 ",.02)
 ;;63739-0246-03
 ;;9002226.02101,"975,63739-0246-15 ",.01)
 ;;63739-0246-15
 ;;9002226.02101,"975,63739-0246-15 ",.02)
 ;;63739-0246-15
 ;;9002226.02101,"975,63739-0295-15 ",.01)
 ;;63739-0295-15
 ;;9002226.02101,"975,63739-0295-15 ",.02)
 ;;63739-0295-15
 ;;9002226.02101,"975,63739-0296-15 ",.01)
 ;;63739-0296-15
 ;;9002226.02101,"975,63739-0296-15 ",.02)
 ;;63739-0296-15
 ;;9002226.02101,"975,63739-0317-15 ",.01)
 ;;63739-0317-15
 ;;9002226.02101,"975,63739-0317-15 ",.02)
 ;;63739-0317-15
 ;;9002226.02101,"975,63739-0318-15 ",.01)
 ;;63739-0318-15
 ;;9002226.02101,"975,63739-0318-15 ",.02)
 ;;63739-0318-15
 ;;9002226.02101,"975,63739-0355-15 ",.01)
 ;;63739-0355-15
 ;;9002226.02101,"975,63739-0355-15 ",.02)
 ;;63739-0355-15
 ;;9002226.02101,"975,63739-0356-15 ",.01)
 ;;63739-0356-15
 ;;9002226.02101,"975,63739-0356-15 ",.02)
 ;;63739-0356-15
 ;;9002226.02101,"975,63874-0296-01 ",.01)
 ;;63874-0296-01
 ;;9002226.02101,"975,63874-0296-01 ",.02)
 ;;63874-0296-01
 ;;9002226.02101,"975,63874-0296-04 ",.01)
 ;;63874-0296-04
 ;;9002226.02101,"975,63874-0296-04 ",.02)
 ;;63874-0296-04
 ;;9002226.02101,"975,63874-0296-15 ",.01)
 ;;63874-0296-15
 ;;9002226.02101,"975,63874-0296-15 ",.02)
 ;;63874-0296-15
 ;;9002226.02101,"975,63874-0296-20 ",.01)
 ;;63874-0296-20
 ;;9002226.02101,"975,63874-0296-20 ",.02)
 ;;63874-0296-20
 ;;9002226.02101,"975,63874-0296-30 ",.01)
 ;;63874-0296-30
 ;;9002226.02101,"975,63874-0296-30 ",.02)
 ;;63874-0296-30
 ;;9002226.02101,"975,63874-0296-40 ",.01)
 ;;63874-0296-40
 ;;9002226.02101,"975,63874-0296-40 ",.02)
 ;;63874-0296-40
 ;;9002226.02101,"975,63874-0296-60 ",.01)
 ;;63874-0296-60
 ;;9002226.02101,"975,63874-0296-60 ",.02)
 ;;63874-0296-60
 ;;9002226.02101,"975,63874-0296-90 ",.01)
 ;;63874-0296-90
 ;;9002226.02101,"975,63874-0296-90 ",.02)
 ;;63874-0296-90
 ;;9002226.02101,"975,63874-0311-01 ",.01)
 ;;63874-0311-01
 ;;9002226.02101,"975,63874-0311-01 ",.02)
 ;;63874-0311-01
 ;;9002226.02101,"975,63874-0311-02 ",.01)
 ;;63874-0311-02
 ;;9002226.02101,"975,63874-0311-02 ",.02)
 ;;63874-0311-02
 ;;9002226.02101,"975,63874-0311-10 ",.01)
 ;;63874-0311-10
 ;;9002226.02101,"975,63874-0311-10 ",.02)
 ;;63874-0311-10
 ;;9002226.02101,"975,63874-0311-12 ",.01)
 ;;63874-0311-12
 ;;9002226.02101,"975,63874-0311-12 ",.02)
 ;;63874-0311-12
 ;;9002226.02101,"975,63874-0311-15 ",.01)
 ;;63874-0311-15
 ;;9002226.02101,"975,63874-0311-15 ",.02)
 ;;63874-0311-15
 ;;9002226.02101,"975,63874-0311-20 ",.01)
 ;;63874-0311-20
 ;;9002226.02101,"975,63874-0311-20 ",.02)
 ;;63874-0311-20
 ;;9002226.02101,"975,63874-0311-24 ",.01)
 ;;63874-0311-24
 ;;9002226.02101,"975,63874-0311-24 ",.02)
 ;;63874-0311-24
 ;;9002226.02101,"975,63874-0311-30 ",.01)
 ;;63874-0311-30
 ;;9002226.02101,"975,63874-0311-30 ",.02)
 ;;63874-0311-30
 ;;9002226.02101,"975,63874-0311-40 ",.01)
 ;;63874-0311-40
 ;;9002226.02101,"975,63874-0311-40 ",.02)
 ;;63874-0311-40
 ;;9002226.02101,"975,63874-0311-50 ",.01)
 ;;63874-0311-50
 ;;9002226.02101,"975,63874-0311-50 ",.02)
 ;;63874-0311-50
 ;;9002226.02101,"975,63874-0311-60 ",.01)
 ;;63874-0311-60
 ;;9002226.02101,"975,63874-0311-60 ",.02)
 ;;63874-0311-60
 ;;9002226.02101,"975,63874-0311-72 ",.01)
 ;;63874-0311-72
 ;;9002226.02101,"975,63874-0311-72 ",.02)
 ;;63874-0311-72
 ;;9002226.02101,"975,63874-0311-74 ",.01)
 ;;63874-0311-74
 ;;9002226.02101,"975,63874-0311-74 ",.02)
 ;;63874-0311-74
 ;;9002226.02101,"975,63874-0311-77 ",.01)
 ;;63874-0311-77
 ;;9002226.02101,"975,63874-0311-77 ",.02)
 ;;63874-0311-77
 ;;9002226.02101,"975,63874-0311-82 ",.01)
 ;;63874-0311-82
 ;;9002226.02101,"975,63874-0311-82 ",.02)
 ;;63874-0311-82
 ;;9002226.02101,"975,63874-0311-90 ",.01)
 ;;63874-0311-90
 ;;9002226.02101,"975,63874-0311-90 ",.02)
 ;;63874-0311-90
 ;;9002226.02101,"975,63874-0359-01 ",.01)
 ;;63874-0359-01
 ;;9002226.02101,"975,63874-0359-01 ",.02)
 ;;63874-0359-01
 ;;9002226.02101,"975,63874-0359-02 ",.01)
 ;;63874-0359-02
 ;;9002226.02101,"975,63874-0359-02 ",.02)
 ;;63874-0359-02
 ;;9002226.02101,"975,63874-0359-14 ",.01)
 ;;63874-0359-14
 ;;9002226.02101,"975,63874-0359-14 ",.02)
 ;;63874-0359-14
 ;;9002226.02101,"975,63874-0359-15 ",.01)
 ;;63874-0359-15
 ;;9002226.02101,"975,63874-0359-15 ",.02)
 ;;63874-0359-15
 ;;9002226.02101,"975,63874-0359-20 ",.01)
 ;;63874-0359-20
 ;;9002226.02101,"975,63874-0359-20 ",.02)
 ;;63874-0359-20
 ;;9002226.02101,"975,63874-0359-28 ",.01)
 ;;63874-0359-28
 ;;9002226.02101,"975,63874-0359-28 ",.02)
 ;;63874-0359-28
 ;;9002226.02101,"975,63874-0359-30 ",.01)
 ;;63874-0359-30
 ;;9002226.02101,"975,63874-0359-30 ",.02)
 ;;63874-0359-30
 ;;9002226.02101,"975,63874-0359-40 ",.01)
 ;;63874-0359-40
 ;;9002226.02101,"975,63874-0359-40 ",.02)
 ;;63874-0359-40
 ;;9002226.02101,"975,63874-0359-50 ",.01)
 ;;63874-0359-50
 ;;9002226.02101,"975,63874-0359-50 ",.02)
 ;;63874-0359-50
 ;;9002226.02101,"975,63874-0359-60 ",.01)
 ;;63874-0359-60
 ;;9002226.02101,"975,63874-0359-60 ",.02)
 ;;63874-0359-60
 ;;9002226.02101,"975,63874-0359-90 ",.01)
 ;;63874-0359-90
 ;;9002226.02101,"975,63874-0359-90 ",.02)
 ;;63874-0359-90
 ;;9002226.02101,"975,63874-0430-01 ",.01)
 ;;63874-0430-01
 ;;9002226.02101,"975,63874-0430-01 ",.02)
 ;;63874-0430-01
 ;;9002226.02101,"975,63874-0430-02 ",.01)
 ;;63874-0430-02
 ;;9002226.02101,"975,63874-0430-02 ",.02)
 ;;63874-0430-02
 ;;9002226.02101,"975,63874-0430-04 ",.01)
 ;;63874-0430-04
 ;;9002226.02101,"975,63874-0430-04 ",.02)
 ;;63874-0430-04
 ;;9002226.02101,"975,63874-0430-14 ",.01)
 ;;63874-0430-14
 ;;9002226.02101,"975,63874-0430-14 ",.02)
 ;;63874-0430-14
 ;;9002226.02101,"975,63874-0430-15 ",.01)
 ;;63874-0430-15
 ;;9002226.02101,"975,63874-0430-15 ",.02)
 ;;63874-0430-15
 ;;9002226.02101,"975,63874-0430-20 ",.01)
 ;;63874-0430-20
 ;;9002226.02101,"975,63874-0430-20 ",.02)
 ;;63874-0430-20
 ;;9002226.02101,"975,63874-0430-25 ",.01)
 ;;63874-0430-25
 ;;9002226.02101,"975,63874-0430-25 ",.02)
 ;;63874-0430-25
 ;;9002226.02101,"975,63874-0430-28 ",.01)
 ;;63874-0430-28
 ;;9002226.02101,"975,63874-0430-28 ",.02)
 ;;63874-0430-28
 ;;9002226.02101,"975,63874-0430-30 ",.01)
 ;;63874-0430-30
 ;;9002226.02101,"975,63874-0430-30 ",.02)
 ;;63874-0430-30
 ;;9002226.02101,"975,63874-0430-40 ",.01)
 ;;63874-0430-40
 ;;9002226.02101,"975,63874-0430-40 ",.02)
 ;;63874-0430-40
 ;;9002226.02101,"975,63874-0430-50 ",.01)
 ;;63874-0430-50
 ;;9002226.02101,"975,63874-0430-50 ",.02)
 ;;63874-0430-50
 ;;9002226.02101,"975,63874-0430-60 ",.01)
 ;;63874-0430-60
 ;;9002226.02101,"975,63874-0430-60 ",.02)
 ;;63874-0430-60
 ;;9002226.02101,"975,63874-0430-90 ",.01)
 ;;63874-0430-90
 ;;9002226.02101,"975,63874-0430-90 ",.02)
 ;;63874-0430-90
 ;;9002226.02101,"975,63874-0537-01 ",.01)
 ;;63874-0537-01
 ;;9002226.02101,"975,63874-0537-01 ",.02)
 ;;63874-0537-01
 ;;9002226.02101,"975,63874-0537-04 ",.01)
 ;;63874-0537-04
 ;;9002226.02101,"975,63874-0537-04 ",.02)
 ;;63874-0537-04
 ;;9002226.02101,"975,63874-0537-10 ",.01)
 ;;63874-0537-10
 ;;9002226.02101,"975,63874-0537-10 ",.02)
 ;;63874-0537-10
 ;;9002226.02101,"975,63874-0537-12 ",.01)
 ;;63874-0537-12
 ;;9002226.02101,"975,63874-0537-12 ",.02)
 ;;63874-0537-12
 ;;9002226.02101,"975,63874-0537-14 ",.01)
 ;;63874-0537-14
 ;;9002226.02101,"975,63874-0537-14 ",.02)
 ;;63874-0537-14
 ;;9002226.02101,"975,63874-0537-15 ",.01)
 ;;63874-0537-15
 ;;9002226.02101,"975,63874-0537-15 ",.02)
 ;;63874-0537-15
 ;;9002226.02101,"975,63874-0537-20 ",.01)
 ;;63874-0537-20
 ;;9002226.02101,"975,63874-0537-20 ",.02)
 ;;63874-0537-20
 ;;9002226.02101,"975,63874-0537-30 ",.01)
 ;;63874-0537-30
 ;;9002226.02101,"975,63874-0537-30 ",.02)
 ;;63874-0537-30
 ;;9002226.02101,"975,63874-0537-60 ",.01)
 ;;63874-0537-60
 ;;9002226.02101,"975,63874-0537-60 ",.02)
 ;;63874-0537-60
 ;;9002226.02101,"975,63874-0537-90 ",.01)
 ;;63874-0537-90
 ;;9002226.02101,"975,63874-0537-90 ",.02)
 ;;63874-0537-90
 ;;9002226.02101,"975,63874-0560-01 ",.01)
 ;;63874-0560-01
 ;;9002226.02101,"975,63874-0560-01 ",.02)
 ;;63874-0560-01
 ;;9002226.02101,"975,63874-0560-04 ",.01)
 ;;63874-0560-04
 ;;9002226.02101,"975,63874-0560-04 ",.02)
 ;;63874-0560-04
 ;;9002226.02101,"975,63874-0560-10 ",.01)
 ;;63874-0560-10
 ;;9002226.02101,"975,63874-0560-10 ",.02)
 ;;63874-0560-10
 ;;9002226.02101,"975,63874-0560-12 ",.01)
 ;;63874-0560-12
 ;;9002226.02101,"975,63874-0560-12 ",.02)
 ;;63874-0560-12
 ;;9002226.02101,"975,63874-0560-14 ",.01)
 ;;63874-0560-14
 ;;9002226.02101,"975,63874-0560-14 ",.02)
 ;;63874-0560-14
 ;;9002226.02101,"975,63874-0560-15 ",.01)
 ;;63874-0560-15
 ;;9002226.02101,"975,63874-0560-15 ",.02)
 ;;63874-0560-15
 ;;9002226.02101,"975,63874-0560-20 ",.01)
 ;;63874-0560-20
 ;;9002226.02101,"975,63874-0560-20 ",.02)
 ;;63874-0560-20
 ;;9002226.02101,"975,63874-0560-28 ",.01)
 ;;63874-0560-28
 ;;9002226.02101,"975,63874-0560-28 ",.02)
 ;;63874-0560-28
 ;;9002226.02101,"975,63874-0560-30 ",.01)
 ;;63874-0560-30
 ;;9002226.02101,"975,63874-0560-30 ",.02)
 ;;63874-0560-30
 ;;9002226.02101,"975,63874-0560-60 ",.01)
 ;;63874-0560-60
 ;;9002226.02101,"975,63874-0560-60 ",.02)
 ;;63874-0560-60
 ;;9002226.02101,"975,63874-0560-90 ",.01)
 ;;63874-0560-90
 ;;9002226.02101,"975,63874-0560-90 ",.02)
 ;;63874-0560-90
 ;;9002226.02101,"975,63874-0567-30 ",.01)
 ;;63874-0567-30
 ;;9002226.02101,"975,63874-0567-30 ",.02)
 ;;63874-0567-30
 ;;9002226.02101,"975,63874-0567-60 ",.01)
 ;;63874-0567-60
 ;;9002226.02101,"975,63874-0567-60 ",.02)
 ;;63874-0567-60
 ;;9002226.02101,"975,63874-0573-01 ",.01)
 ;;63874-0573-01
 ;;9002226.02101,"975,63874-0573-01 ",.02)
 ;;63874-0573-01
 ;;9002226.02101,"975,63874-0573-04 ",.01)
 ;;63874-0573-04
 ;;9002226.02101,"975,63874-0573-04 ",.02)
 ;;63874-0573-04
 ;;9002226.02101,"975,63874-0573-10 ",.01)
 ;;63874-0573-10
 ;;9002226.02101,"975,63874-0573-10 ",.02)
 ;;63874-0573-10
 ;;9002226.02101,"975,63874-0573-14 ",.01)
 ;;63874-0573-14
 ;;9002226.02101,"975,63874-0573-14 ",.02)
 ;;63874-0573-14
 ;;9002226.02101,"975,63874-0573-15 ",.01)
 ;;63874-0573-15
 ;;9002226.02101,"975,63874-0573-15 ",.02)
 ;;63874-0573-15
 ;;9002226.02101,"975,63874-0573-20 ",.01)
 ;;63874-0573-20
 ;;9002226.02101,"975,63874-0573-20 ",.02)
 ;;63874-0573-20
 ;;9002226.02101,"975,63874-0573-21 ",.01)
 ;;63874-0573-21
 ;;9002226.02101,"975,63874-0573-21 ",.02)
 ;;63874-0573-21
 ;;9002226.02101,"975,63874-0573-28 ",.01)
 ;;63874-0573-28
 ;;9002226.02101,"975,63874-0573-28 ",.02)
 ;;63874-0573-28
 ;;9002226.02101,"975,63874-0573-30 ",.01)
 ;;63874-0573-30
 ;;9002226.02101,"975,63874-0573-30 ",.02)
 ;;63874-0573-30
 ;;9002226.02101,"975,63874-0573-60 ",.01)
 ;;63874-0573-60
 ;;9002226.02101,"975,63874-0573-60 ",.02)
 ;;63874-0573-60
 ;;9002226.02101,"975,63874-0573-72 ",.01)
 ;;63874-0573-72
 ;;9002226.02101,"975,63874-0573-72 ",.02)
 ;;63874-0573-72
 ;;9002226.02101,"975,63874-0573-74 ",.01)
 ;;63874-0573-74
 ;;9002226.02101,"975,63874-0573-74 ",.02)
 ;;63874-0573-74
 ;;9002226.02101,"975,63874-0573-77 ",.01)
 ;;63874-0573-77
 ;;9002226.02101,"975,63874-0573-77 ",.02)
 ;;63874-0573-77
 ;;9002226.02101,"975,63874-0573-90 ",.01)
 ;;63874-0573-90
 ;;9002226.02101,"975,63874-0573-90 ",.02)
 ;;63874-0573-90
 ;;9002226.02101,"975,63874-0574-01 ",.01)
 ;;63874-0574-01
 ;;9002226.02101,"975,63874-0574-01 ",.02)
 ;;63874-0574-01
 ;;9002226.02101,"975,63874-0574-04 ",.01)
 ;;63874-0574-04
 ;;9002226.02101,"975,63874-0574-04 ",.02)
 ;;63874-0574-04
 ;;9002226.02101,"975,63874-0574-10 ",.01)
 ;;63874-0574-10
 ;;9002226.02101,"975,63874-0574-10 ",.02)
 ;;63874-0574-10
 ;;9002226.02101,"975,63874-0574-14 ",.01)
 ;;63874-0574-14
 ;;9002226.02101,"975,63874-0574-14 ",.02)
 ;;63874-0574-14
 ;;9002226.02101,"975,63874-0574-20 ",.01)
 ;;63874-0574-20
 ;;9002226.02101,"975,63874-0574-20 ",.02)
 ;;63874-0574-20
 ;;9002226.02101,"975,63874-0574-21 ",.01)
 ;;63874-0574-21
 ;;9002226.02101,"975,63874-0574-21 ",.02)
 ;;63874-0574-21
 ;;9002226.02101,"975,63874-0574-28 ",.01)
 ;;63874-0574-28
 ;;9002226.02101,"975,63874-0574-28 ",.02)
 ;;63874-0574-28
 ;;9002226.02101,"975,63874-0574-30 ",.01)
 ;;63874-0574-30
 ;;9002226.02101,"975,63874-0574-30 ",.02)
 ;;63874-0574-30
 ;;9002226.02101,"975,63874-0574-60 ",.01)
 ;;63874-0574-60
 ;;9002226.02101,"975,63874-0574-60 ",.02)
 ;;63874-0574-60
 ;;9002226.02101,"975,63874-0574-72 ",.01)
 ;;63874-0574-72
 ;;9002226.02101,"975,63874-0574-72 ",.02)
 ;;63874-0574-72
 ;;9002226.02101,"975,63874-0574-74 ",.01)
 ;;63874-0574-74
 ;;9002226.02101,"975,63874-0574-74 ",.02)
 ;;63874-0574-74
 ;;9002226.02101,"975,63874-0574-77 ",.01)
 ;;63874-0574-77
 ;;9002226.02101,"975,63874-0574-77 ",.02)
 ;;63874-0574-77
 ;;9002226.02101,"975,63874-0574-90 ",.01)
 ;;63874-0574-90
 ;;9002226.02101,"975,63874-0574-90 ",.02)
 ;;63874-0574-90
 ;;9002226.02101,"975,63874-0579-01 ",.01)
 ;;63874-0579-01
 ;;9002226.02101,"975,63874-0579-01 ",.02)
 ;;63874-0579-01