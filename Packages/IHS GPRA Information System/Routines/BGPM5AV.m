BGPM5AV ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON AUG 29, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1033,54569014702 ",.01)
 ;;54569014702
 ;;9002226.02101,"1033,54569014702 ",.02)
 ;;54569014702
 ;;9002226.02101,"1033,54569014704 ",.01)
 ;;54569014704
 ;;9002226.02101,"1033,54569014704 ",.02)
 ;;54569014704
 ;;9002226.02101,"1033,54569026900 ",.01)
 ;;54569026900
 ;;9002226.02101,"1033,54569026900 ",.02)
 ;;54569026900
 ;;9002226.02101,"1033,54569030402 ",.01)
 ;;54569030402
 ;;9002226.02101,"1033,54569030402 ",.02)
 ;;54569030402
 ;;9002226.02101,"1033,54569030403 ",.01)
 ;;54569030403
 ;;9002226.02101,"1033,54569030403 ",.02)
 ;;54569030403
 ;;9002226.02101,"1033,54569030404 ",.01)
 ;;54569030404
 ;;9002226.02101,"1033,54569030404 ",.02)
 ;;54569030404
 ;;9002226.02101,"1033,54569030405 ",.01)
 ;;54569030405
 ;;9002226.02101,"1033,54569030405 ",.02)
 ;;54569030405
 ;;9002226.02101,"1033,54569030406 ",.01)
 ;;54569030406
 ;;9002226.02101,"1033,54569030406 ",.02)
 ;;54569030406
 ;;9002226.02101,"1033,54569030408 ",.01)
 ;;54569030408
 ;;9002226.02101,"1033,54569030408 ",.02)
 ;;54569030408
 ;;9002226.02101,"1033,54569030500 ",.01)
 ;;54569030500
 ;;9002226.02101,"1033,54569030500 ",.02)
 ;;54569030500
 ;;9002226.02101,"1033,54569030501 ",.01)
 ;;54569030501
 ;;9002226.02101,"1033,54569030501 ",.02)
 ;;54569030501
 ;;9002226.02101,"1033,54569030502 ",.01)
 ;;54569030502
 ;;9002226.02101,"1033,54569030502 ",.02)
 ;;54569030502
 ;;9002226.02101,"1033,54569030503 ",.01)
 ;;54569030503
 ;;9002226.02101,"1033,54569030503 ",.02)
 ;;54569030503
 ;;9002226.02101,"1033,54569030505 ",.01)
 ;;54569030505
 ;;9002226.02101,"1033,54569030505 ",.02)
 ;;54569030505
 ;;9002226.02101,"1033,54569030506 ",.01)
 ;;54569030506
 ;;9002226.02101,"1033,54569030506 ",.02)
 ;;54569030506
 ;;9002226.02101,"1033,54569030507 ",.01)
 ;;54569030507
 ;;9002226.02101,"1033,54569030507 ",.02)
 ;;54569030507
 ;;9002226.02101,"1033,54569030508 ",.01)
 ;;54569030508
 ;;9002226.02101,"1033,54569030508 ",.02)
 ;;54569030508
 ;;9002226.02101,"1033,54569038400 ",.01)
 ;;54569038400
 ;;9002226.02101,"1033,54569038400 ",.02)
 ;;54569038400
 ;;9002226.02101,"1033,54569038401 ",.01)
 ;;54569038401
 ;;9002226.02101,"1033,54569038401 ",.02)
 ;;54569038401
 ;;9002226.02101,"1033,54569038404 ",.01)
 ;;54569038404
 ;;9002226.02101,"1033,54569038404 ",.02)
 ;;54569038404
 ;;9002226.02101,"1033,54569038405 ",.01)
 ;;54569038405
 ;;9002226.02101,"1033,54569038405 ",.02)
 ;;54569038405
 ;;9002226.02101,"1033,54569102300 ",.01)
 ;;54569102300
 ;;9002226.02101,"1033,54569102300 ",.02)
 ;;54569102300
 ;;9002226.02101,"1033,54569102400 ",.01)
 ;;54569102400
 ;;9002226.02101,"1033,54569102400 ",.02)
 ;;54569102400
 ;;9002226.02101,"1033,54569102500 ",.01)
 ;;54569102500
 ;;9002226.02101,"1033,54569102500 ",.02)
 ;;54569102500
 ;;9002226.02101,"1033,54569171900 ",.01)
 ;;54569171900
 ;;9002226.02101,"1033,54569171900 ",.02)
 ;;54569171900
 ;;9002226.02101,"1033,54569171902 ",.01)
 ;;54569171902
 ;;9002226.02101,"1033,54569171902 ",.02)
 ;;54569171902
 ;;9002226.02101,"1033,54569174600 ",.01)
 ;;54569174600
 ;;9002226.02101,"1033,54569174600 ",.02)
 ;;54569174600
 ;;9002226.02101,"1033,54569174601 ",.01)
 ;;54569174601
 ;;9002226.02101,"1033,54569174601 ",.02)
 ;;54569174601
 ;;9002226.02101,"1033,54569174605 ",.01)
 ;;54569174605
 ;;9002226.02101,"1033,54569174605 ",.02)
 ;;54569174605
 ;;9002226.02101,"1033,54569174608 ",.01)
 ;;54569174608
 ;;9002226.02101,"1033,54569174608 ",.02)
 ;;54569174608
 ;;9002226.02101,"1033,54569174609 ",.01)
 ;;54569174609
 ;;9002226.02101,"1033,54569174609 ",.02)
 ;;54569174609
 ;;9002226.02101,"1033,54569184000 ",.01)
 ;;54569184000
 ;;9002226.02101,"1033,54569184000 ",.02)
 ;;54569184000
 ;;9002226.02101,"1033,54569184001 ",.01)
 ;;54569184001
 ;;9002226.02101,"1033,54569184001 ",.02)
 ;;54569184001
 ;;9002226.02101,"1033,54569184003 ",.01)
 ;;54569184003
 ;;9002226.02101,"1033,54569184003 ",.02)
 ;;54569184003
 ;;9002226.02101,"1033,54569184004 ",.01)
 ;;54569184004
 ;;9002226.02101,"1033,54569184004 ",.02)
 ;;54569184004
 ;;9002226.02101,"1033,54569184007 ",.01)
 ;;54569184007
 ;;9002226.02101,"1033,54569184007 ",.02)
 ;;54569184007
 ;;9002226.02101,"1033,54569186100 ",.01)
 ;;54569186100
 ;;9002226.02101,"1033,54569186100 ",.02)
 ;;54569186100
 ;;9002226.02101,"1033,54569186101 ",.01)
 ;;54569186101
 ;;9002226.02101,"1033,54569186101 ",.02)
 ;;54569186101
 ;;9002226.02101,"1033,54569186102 ",.01)
 ;;54569186102
 ;;9002226.02101,"1033,54569186102 ",.02)
 ;;54569186102
 ;;9002226.02101,"1033,54569186104 ",.01)
 ;;54569186104
 ;;9002226.02101,"1033,54569186104 ",.02)
 ;;54569186104
 ;;9002226.02101,"1033,54569186105 ",.01)
 ;;54569186105
 ;;9002226.02101,"1033,54569186105 ",.02)
 ;;54569186105
 ;;9002226.02101,"1033,54569186108 ",.01)
 ;;54569186108
 ;;9002226.02101,"1033,54569186108 ",.02)
 ;;54569186108
 ;;9002226.02101,"1033,54569186109 ",.01)
 ;;54569186109
 ;;9002226.02101,"1033,54569186109 ",.02)
 ;;54569186109
 ;;9002226.02101,"1033,54569188900 ",.01)
 ;;54569188900
 ;;9002226.02101,"1033,54569188900 ",.02)
 ;;54569188900
 ;;9002226.02101,"1033,54569188901 ",.01)
 ;;54569188901
 ;;9002226.02101,"1033,54569188901 ",.02)
 ;;54569188901
 ;;9002226.02101,"1033,54569188904 ",.01)
 ;;54569188904
 ;;9002226.02101,"1033,54569188904 ",.02)
 ;;54569188904
 ;;9002226.02101,"1033,54569200000 ",.01)
 ;;54569200000
 ;;9002226.02101,"1033,54569200000 ",.02)
 ;;54569200000
 ;;9002226.02101,"1033,54569200200 ",.01)
 ;;54569200200
 ;;9002226.02101,"1033,54569200200 ",.02)
 ;;54569200200
 ;;9002226.02101,"1033,54569218700 ",.01)
 ;;54569218700
 ;;9002226.02101,"1033,54569218700 ",.02)
 ;;54569218700
 ;;9002226.02101,"1033,54569227900 ",.01)
 ;;54569227900
 ;;9002226.02101,"1033,54569227900 ",.02)
 ;;54569227900
 ;;9002226.02101,"1033,54569227901 ",.01)
 ;;54569227901
 ;;9002226.02101,"1033,54569227901 ",.02)
 ;;54569227901
 ;;9002226.02101,"1033,54569227902 ",.01)
 ;;54569227902
 ;;9002226.02101,"1033,54569227902 ",.02)
 ;;54569227902
 ;;9002226.02101,"1033,54569227903 ",.01)
 ;;54569227903
 ;;9002226.02101,"1033,54569227903 ",.02)
 ;;54569227903
 ;;9002226.02101,"1033,54569227905 ",.01)
 ;;54569227905
 ;;9002226.02101,"1033,54569227905 ",.02)
 ;;54569227905
 ;;9002226.02101,"1033,54569227906 ",.01)
 ;;54569227906
 ;;9002226.02101,"1033,54569227906 ",.02)
 ;;54569227906
 ;;9002226.02101,"1033,54569227907 ",.01)
 ;;54569227907
 ;;9002226.02101,"1033,54569227907 ",.02)
 ;;54569227907
 ;;9002226.02101,"1033,54569227908 ",.01)
 ;;54569227908
 ;;9002226.02101,"1033,54569227908 ",.02)
 ;;54569227908
 ;;9002226.02101,"1033,54569241100 ",.01)
 ;;54569241100
 ;;9002226.02101,"1033,54569241100 ",.02)
 ;;54569241100
 ;;9002226.02101,"1033,54569241101 ",.01)
 ;;54569241101
 ;;9002226.02101,"1033,54569241101 ",.02)
 ;;54569241101
 ;;9002226.02101,"1033,54569241106 ",.01)
 ;;54569241106
 ;;9002226.02101,"1033,54569241106 ",.02)
 ;;54569241106
 ;;9002226.02101,"1033,54569250100 ",.01)
 ;;54569250100
 ;;9002226.02101,"1033,54569250100 ",.02)
 ;;54569250100
 ;;9002226.02101,"1033,54569250102 ",.01)
 ;;54569250102
 ;;9002226.02101,"1033,54569250102 ",.02)
 ;;54569250102
 ;;9002226.02101,"1033,54569250103 ",.01)
 ;;54569250103
 ;;9002226.02101,"1033,54569250103 ",.02)
 ;;54569250103
 ;;9002226.02101,"1033,54569250104 ",.01)
 ;;54569250104
 ;;9002226.02101,"1033,54569250104 ",.02)
 ;;54569250104
 ;;9002226.02101,"1033,54569250108 ",.01)
 ;;54569250108
 ;;9002226.02101,"1033,54569250108 ",.02)
 ;;54569250108
 ;;9002226.02101,"1033,54569250200 ",.01)
 ;;54569250200
 ;;9002226.02101,"1033,54569250200 ",.02)
 ;;54569250200
 ;;9002226.02101,"1033,54569250201 ",.01)
 ;;54569250201
 ;;9002226.02101,"1033,54569250201 ",.02)
 ;;54569250201
 ;;9002226.02101,"1033,54569250203 ",.01)
 ;;54569250203
 ;;9002226.02101,"1033,54569250203 ",.02)
 ;;54569250203
 ;;9002226.02101,"1033,54569250205 ",.01)
 ;;54569250205
 ;;9002226.02101,"1033,54569250205 ",.02)
 ;;54569250205
 ;;9002226.02101,"1033,54569250206 ",.01)
 ;;54569250206
 ;;9002226.02101,"1033,54569250206 ",.02)
 ;;54569250206
 ;;9002226.02101,"1033,54569250207 ",.01)
 ;;54569250207
 ;;9002226.02101,"1033,54569250207 ",.02)
 ;;54569250207
 ;;9002226.02101,"1033,54569250702 ",.01)
 ;;54569250702
 ;;9002226.02101,"1033,54569250702 ",.02)
 ;;54569250702
 ;;9002226.02101,"1033,54569250703 ",.01)
 ;;54569250703
 ;;9002226.02101,"1033,54569250703 ",.02)
 ;;54569250703
 ;;9002226.02101,"1033,54569250704 ",.01)
 ;;54569250704
 ;;9002226.02101,"1033,54569250704 ",.02)
 ;;54569250704
 ;;9002226.02101,"1033,54569250705 ",.01)
 ;;54569250705
 ;;9002226.02101,"1033,54569250705 ",.02)
 ;;54569250705
 ;;9002226.02101,"1033,54569250707 ",.01)
 ;;54569250707
 ;;9002226.02101,"1033,54569250707 ",.02)
 ;;54569250707
 ;;9002226.02101,"1033,54569250709 ",.01)
 ;;54569250709
 ;;9002226.02101,"1033,54569250709 ",.02)
 ;;54569250709
 ;;9002226.02101,"1033,54569270200 ",.01)
 ;;54569270200
 ;;9002226.02101,"1033,54569270200 ",.02)
 ;;54569270200
 ;;9002226.02101,"1033,54569270202 ",.01)
 ;;54569270202
 ;;9002226.02101,"1033,54569270202 ",.02)
 ;;54569270202
 ;;9002226.02101,"1033,54569270203 ",.01)
 ;;54569270203
 ;;9002226.02101,"1033,54569270203 ",.02)
 ;;54569270203
 ;;9002226.02101,"1033,54569270204 ",.01)
 ;;54569270204
 ;;9002226.02101,"1033,54569270204 ",.02)
 ;;54569270204
 ;;9002226.02101,"1033,54569270206 ",.01)
 ;;54569270206
 ;;9002226.02101,"1033,54569270206 ",.02)
 ;;54569270206
 ;;9002226.02101,"1033,54569270208 ",.01)
 ;;54569270208
 ;;9002226.02101,"1033,54569270208 ",.02)
 ;;54569270208
 ;;9002226.02101,"1033,54569271001 ",.01)
 ;;54569271001
 ;;9002226.02101,"1033,54569271001 ",.02)
 ;;54569271001
 ;;9002226.02101,"1033,54569271002 ",.01)
 ;;54569271002
 ;;9002226.02101,"1033,54569271002 ",.02)
 ;;54569271002
 ;;9002226.02101,"1033,54569271004 ",.01)
 ;;54569271004
 ;;9002226.02101,"1033,54569271004 ",.02)
 ;;54569271004
 ;;9002226.02101,"1033,54569271005 ",.01)
 ;;54569271005
 ;;9002226.02101,"1033,54569271005 ",.02)
 ;;54569271005
 ;;9002226.02101,"1033,54569271006 ",.01)
 ;;54569271006
 ;;9002226.02101,"1033,54569271006 ",.02)
 ;;54569271006
 ;;9002226.02101,"1033,54569282100 ",.01)
 ;;54569282100
 ;;9002226.02101,"1033,54569282100 ",.02)
 ;;54569282100
 ;;9002226.02101,"1033,54569292800 ",.01)
 ;;54569292800
 ;;9002226.02101,"1033,54569292800 ",.02)
 ;;54569292800
 ;;9002226.02101,"1033,54569292900 ",.01)
 ;;54569292900
 ;;9002226.02101,"1033,54569292900 ",.02)
 ;;54569292900
 ;;9002226.02101,"1033,54569293000 ",.01)
 ;;54569293000
 ;;9002226.02101,"1033,54569293000 ",.02)
 ;;54569293000
 ;;9002226.02101,"1033,54569293100 ",.01)
 ;;54569293100
 ;;9002226.02101,"1033,54569293100 ",.02)
 ;;54569293100
 ;;9002226.02101,"1033,54569293300 ",.01)
 ;;54569293300
 ;;9002226.02101,"1033,54569293300 ",.02)
 ;;54569293300
 ;;9002226.02101,"1033,54569293500 ",.01)
 ;;54569293500
 ;;9002226.02101,"1033,54569293500 ",.02)
 ;;54569293500
 ;;9002226.02101,"1033,54569295300 ",.01)
 ;;54569295300
 ;;9002226.02101,"1033,54569295300 ",.02)
 ;;54569295300
 ;;9002226.02101,"1033,54569295400 ",.01)
 ;;54569295400
 ;;9002226.02101,"1033,54569295400 ",.02)
 ;;54569295400
 ;;9002226.02101,"1033,54569298600 ",.01)
 ;;54569298600
 ;;9002226.02101,"1033,54569298600 ",.02)
 ;;54569298600
 ;;9002226.02101,"1033,54569298604 ",.01)
 ;;54569298604
 ;;9002226.02101,"1033,54569298604 ",.02)
 ;;54569298604
 ;;9002226.02101,"1033,54569298605 ",.01)
 ;;54569298605
 ;;9002226.02101,"1033,54569298605 ",.02)
 ;;54569298605
 ;;9002226.02101,"1033,54569307400 ",.01)
 ;;54569307400