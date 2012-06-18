BGP6JXC ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON JAN 10, 2006 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;;BGP6;;JAN 10, 2006
 ;;BGP RA SULFASALAZINE NDC
 ;
 ; This routine loads Taxonomy BGP RA SULFASALAZINE NDC
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00013-0101-01 ")
 ;;51
 ;;21,"00013-0101-20 ")
 ;;52
 ;;21,"00013-0102-01 ")
 ;;53
 ;;21,"00013-0102-20 ")
 ;;54
 ;;21,"00223-1727-01 ")
 ;;1
 ;;21,"00223-1727-02 ")
 ;;3
 ;;21,"00223-1727-05 ")
 ;;2
 ;;21,"00591-0796-01 ")
 ;;24
 ;;21,"00591-0796-05 ")
 ;;25
 ;;21,"00591-0796-10 ")
 ;;26
 ;;21,"00603-5801-04 ")
 ;;47
 ;;21,"00603-5801-21 ")
 ;;18
 ;;21,"00603-5801-28 ")
 ;;19
 ;;21,"00603-5801-32 ")
 ;;48
 ;;21,"00603-5803-21 ")
 ;;49
 ;;21,"00603-5803-25 ")
 ;;50
 ;;21,"00677-0483-01 ")
 ;;22
 ;;21,"00677-0483-05 ")
 ;;23
 ;;21,"00904-1152-40 ")
 ;;10
 ;;21,"00904-1152-60 ")
 ;;9
 ;;21,"38779-0176-04 ")
 ;;11
 ;;21,"38779-0176-05 ")
 ;;12
 ;;21,"38779-0176-08 ")
 ;;13
 ;;21,"38779-0176-09 ")
 ;;14
 ;;21,"49452-7523-01 ")
 ;;20
 ;;21,"49452-7523-02 ")
 ;;21
 ;;21,"51552-1044-05 ")
 ;;4
 ;;21,"51927-1045-00 ")
 ;;17
 ;;21,"53489-0147-01 ")
 ;;15
 ;;21,"53489-0147-05 ")
 ;;16
 ;;21,"54569-0313-03 ")
 ;;27
 ;;21,"54868-1138-00 ")
 ;;41
 ;;21,"54868-1138-01 ")
 ;;43
 ;;21,"54868-1138-03 ")
 ;;40
 ;;21,"54868-1138-04 ")
 ;;42
 ;;21,"54868-1138-05 ")
 ;;45
 ;;21,"54868-1138-06 ")
 ;;46
 ;;21,"54868-1139-00 ")
 ;;44
 ;;21,"55289-0176-10 ")
 ;;38
 ;;21,"55289-0176-40 ")
 ;;39
 ;;21,"59762-0104-01 ")
 ;;5
 ;;21,"59762-0104-02 ")
 ;;6
 ;;21,"59762-5000-01 ")
 ;;7
 ;;21,"59762-5000-02 ")
 ;;8
 ;;21,"61392-0147-30 ")
 ;;28
 ;;21,"61392-0147-31 ")
 ;;30
 ;;21,"61392-0147-32 ")
 ;;31
 ;;21,"61392-0147-39 ")
 ;;29
 ;;21,"61392-0147-45 ")
 ;;32
 ;;21,"61392-0147-51 ")
 ;;35
 ;;21,"61392-0147-54 ")
 ;;36
 ;;21,"61392-0147-60 ")
 ;;33
 ;;21,"61392-0147-90 ")
 ;;34
 ;;21,"61392-0147-91 ")
 ;;37
 ;;9002226,403,.01)
 ;;BGP RA SULFASALAZINE NDC
 ;;9002226,403,.02)
 ;;RA GOLD NDC
 ;;9002226,403,.04)
 ;;@
 ;;9002226,403,.06)
 ;;@
 ;;9002226,403,.08)
 ;;@
 ;;9002226,403,.09)
 ;;3051208
 ;;9002226,403,.11)
 ;;@
 ;;9002226,403,.12)
 ;;@
 ;;9002226,403,.13)
 ;;1
 ;;9002226,403,.14)
 ;;@
 ;;9002226,403,.15)
 ;;@
 ;;9002226,403,.16)
 ;;@
 ;;9002226,403,.17)
 ;;@
 ;;9002226,403,3101)
 ;;@
 ;;9002226.02101,"403,00013-0101-01 ",.01)
 ;;00013-0101-01
 ;;9002226.02101,"403,00013-0101-01 ",.02)
 ;;00013-0101-01
 ;;9002226.02101,"403,00013-0101-20 ",.01)
 ;;00013-0101-20
 ;;9002226.02101,"403,00013-0101-20 ",.02)
 ;;00013-0101-20
 ;;9002226.02101,"403,00013-0102-01 ",.01)
 ;;00013-0102-01
 ;;9002226.02101,"403,00013-0102-01 ",.02)
 ;;00013-0102-01
 ;;9002226.02101,"403,00013-0102-20 ",.01)
 ;;00013-0102-20
 ;;9002226.02101,"403,00013-0102-20 ",.02)
 ;;00013-0102-20
 ;;9002226.02101,"403,00223-1727-01 ",.01)
 ;;00223-1727-01
 ;;9002226.02101,"403,00223-1727-01 ",.02)
 ;;00223-1727-01
 ;;9002226.02101,"403,00223-1727-02 ",.01)
 ;;00223-1727-02
 ;;9002226.02101,"403,00223-1727-02 ",.02)
 ;;00223-1727-02
 ;;9002226.02101,"403,00223-1727-05 ",.01)
 ;;00223-1727-05
 ;;9002226.02101,"403,00223-1727-05 ",.02)
 ;;00223-1727-05
 ;;9002226.02101,"403,00591-0796-01 ",.01)
 ;;00591-0796-01
 ;;9002226.02101,"403,00591-0796-01 ",.02)
 ;;00591-0796-01
 ;;9002226.02101,"403,00591-0796-05 ",.01)
 ;;00591-0796-05
 ;;9002226.02101,"403,00591-0796-05 ",.02)
 ;;00591-0796-05
 ;;9002226.02101,"403,00591-0796-10 ",.01)
 ;;00591-0796-10
 ;;9002226.02101,"403,00591-0796-10 ",.02)
 ;;00591-0796-10
 ;;9002226.02101,"403,00603-5801-04 ",.01)
 ;;00603-5801-04
 ;;9002226.02101,"403,00603-5801-04 ",.02)
 ;;00603-5801-04
 ;;9002226.02101,"403,00603-5801-21 ",.01)
 ;;00603-5801-21
 ;;9002226.02101,"403,00603-5801-21 ",.02)
 ;;00603-5801-21
 ;;9002226.02101,"403,00603-5801-28 ",.01)
 ;;00603-5801-28
 ;;9002226.02101,"403,00603-5801-28 ",.02)
 ;;00603-5801-28
 ;;9002226.02101,"403,00603-5801-32 ",.01)
 ;;00603-5801-32
 ;;9002226.02101,"403,00603-5801-32 ",.02)
 ;;00603-5801-32
 ;;9002226.02101,"403,00603-5803-21 ",.01)
 ;;00603-5803-21
 ;;9002226.02101,"403,00603-5803-21 ",.02)
 ;;00603-5803-21
 ;;9002226.02101,"403,00603-5803-25 ",.01)
 ;;00603-5803-25
 ;;9002226.02101,"403,00603-5803-25 ",.02)
 ;;00603-5803-25
 ;;9002226.02101,"403,00677-0483-01 ",.01)
 ;;00677-0483-01
 ;;9002226.02101,"403,00677-0483-01 ",.02)
 ;;00677-0483-01
 ;;9002226.02101,"403,00677-0483-05 ",.01)
 ;;00677-0483-05
 ;;9002226.02101,"403,00677-0483-05 ",.02)
 ;;00677-0483-05
 ;;9002226.02101,"403,00904-1152-40 ",.01)
 ;;00904-1152-40
 ;;9002226.02101,"403,00904-1152-40 ",.02)
 ;;00904-1152-40
 ;;9002226.02101,"403,00904-1152-60 ",.01)
 ;;00904-1152-60
 ;;9002226.02101,"403,00904-1152-60 ",.02)
 ;;00904-1152-60
 ;;9002226.02101,"403,38779-0176-04 ",.01)
 ;;38779-0176-04
 ;;9002226.02101,"403,38779-0176-04 ",.02)
 ;;38779-0176-04
 ;;9002226.02101,"403,38779-0176-05 ",.01)
 ;;38779-0176-05
 ;;9002226.02101,"403,38779-0176-05 ",.02)
 ;;38779-0176-05
 ;;9002226.02101,"403,38779-0176-08 ",.01)
 ;;38779-0176-08
 ;;9002226.02101,"403,38779-0176-08 ",.02)
 ;;38779-0176-08
 ;;9002226.02101,"403,38779-0176-09 ",.01)
 ;;38779-0176-09
 ;;9002226.02101,"403,38779-0176-09 ",.02)
 ;;38779-0176-09
 ;;9002226.02101,"403,49452-7523-01 ",.01)
 ;;49452-7523-01
 ;;9002226.02101,"403,49452-7523-01 ",.02)
 ;;49452-7523-01
 ;;9002226.02101,"403,49452-7523-02 ",.01)
 ;;49452-7523-02
 ;;9002226.02101,"403,49452-7523-02 ",.02)
 ;;49452-7523-02
 ;;9002226.02101,"403,51552-1044-05 ",.01)
 ;;51552-1044-05
 ;;9002226.02101,"403,51552-1044-05 ",.02)
 ;;51552-1044-05
 ;;9002226.02101,"403,51927-1045-00 ",.01)
 ;;51927-1045-00
 ;;9002226.02101,"403,51927-1045-00 ",.02)
 ;;51927-1045-00
 ;;9002226.02101,"403,53489-0147-01 ",.01)
 ;;53489-0147-01
 ;;9002226.02101,"403,53489-0147-01 ",.02)
 ;;53489-0147-01
 ;;9002226.02101,"403,53489-0147-05 ",.01)
 ;;53489-0147-05
 ;;9002226.02101,"403,53489-0147-05 ",.02)
 ;;53489-0147-05
 ;;9002226.02101,"403,54569-0313-03 ",.01)
 ;;54569-0313-03
 ;;9002226.02101,"403,54569-0313-03 ",.02)
 ;;54569-0313-03
 ;;9002226.02101,"403,54868-1138-00 ",.01)
 ;;54868-1138-00
 ;;9002226.02101,"403,54868-1138-00 ",.02)
 ;;54868-1138-00
 ;;9002226.02101,"403,54868-1138-01 ",.01)
 ;;54868-1138-01
 ;;9002226.02101,"403,54868-1138-01 ",.02)
 ;;54868-1138-01
 ;;9002226.02101,"403,54868-1138-03 ",.01)
 ;;54868-1138-03
 ;;9002226.02101,"403,54868-1138-03 ",.02)
 ;;54868-1138-03
 ;;9002226.02101,"403,54868-1138-04 ",.01)
 ;;54868-1138-04
 ;;9002226.02101,"403,54868-1138-04 ",.02)
 ;;54868-1138-04
 ;;9002226.02101,"403,54868-1138-05 ",.01)
 ;;54868-1138-05
 ;;9002226.02101,"403,54868-1138-05 ",.02)
 ;;54868-1138-05
 ;;9002226.02101,"403,54868-1138-06 ",.01)
 ;;54868-1138-06
 ;;9002226.02101,"403,54868-1138-06 ",.02)
 ;;54868-1138-06
 ;;9002226.02101,"403,54868-1139-00 ",.01)
 ;;54868-1139-00
 ;;9002226.02101,"403,54868-1139-00 ",.02)
 ;;54868-1139-00
 ;;9002226.02101,"403,55289-0176-10 ",.01)
 ;;55289-0176-10
 ;;9002226.02101,"403,55289-0176-10 ",.02)
 ;;55289-0176-10
 ;;9002226.02101,"403,55289-0176-40 ",.01)
 ;;55289-0176-40
 ;;9002226.02101,"403,55289-0176-40 ",.02)
 ;;55289-0176-40
 ;;9002226.02101,"403,59762-0104-01 ",.01)
 ;;59762-0104-01
 ;;9002226.02101,"403,59762-0104-01 ",.02)
 ;;59762-0104-01
 ;;9002226.02101,"403,59762-0104-02 ",.01)
 ;;59762-0104-02
 ;;9002226.02101,"403,59762-0104-02 ",.02)
 ;;59762-0104-02
 ;;9002226.02101,"403,59762-5000-01 ",.01)
 ;;59762-5000-01
 ;;9002226.02101,"403,59762-5000-01 ",.02)
 ;;59762-5000-01
 ;;9002226.02101,"403,59762-5000-02 ",.01)
 ;;59762-5000-02
 ;;9002226.02101,"403,59762-5000-02 ",.02)
 ;;59762-5000-02
 ;;9002226.02101,"403,61392-0147-30 ",.01)
 ;;61392-0147-30
 ;;9002226.02101,"403,61392-0147-30 ",.02)
 ;;61392-0147-30
 ;;9002226.02101,"403,61392-0147-31 ",.01)
 ;;61392-0147-31
 ;;9002226.02101,"403,61392-0147-31 ",.02)
 ;;61392-0147-31
 ;;9002226.02101,"403,61392-0147-32 ",.01)
 ;;61392-0147-32
 ;;9002226.02101,"403,61392-0147-32 ",.02)
 ;;61392-0147-32
 ;;9002226.02101,"403,61392-0147-39 ",.01)
 ;;61392-0147-39
 ;;9002226.02101,"403,61392-0147-39 ",.02)
 ;;61392-0147-39
 ;;9002226.02101,"403,61392-0147-45 ",.01)
 ;;61392-0147-45
 ;;9002226.02101,"403,61392-0147-45 ",.02)
 ;;61392-0147-45
 ;;9002226.02101,"403,61392-0147-51 ",.01)
 ;;61392-0147-51
 ;;9002226.02101,"403,61392-0147-51 ",.02)
 ;;61392-0147-51
 ;;9002226.02101,"403,61392-0147-54 ",.01)
 ;;61392-0147-54
 ;;9002226.02101,"403,61392-0147-54 ",.02)
 ;;61392-0147-54
 ;;9002226.02101,"403,61392-0147-60 ",.01)
 ;;61392-0147-60
 ;;9002226.02101,"403,61392-0147-60 ",.02)
 ;;61392-0147-60
 ;;9002226.02101,"403,61392-0147-90 ",.01)
 ;;61392-0147-90
 ;;9002226.02101,"403,61392-0147-90 ",.02)
 ;;61392-0147-90
 ;;9002226.02101,"403,61392-0147-91 ",.01)
 ;;61392-0147-91
 ;;9002226.02101,"403,61392-0147-91 ",.02)
 ;;61392-0147-91
 ;
OTHER ; OTHER ROUTINES
 Q