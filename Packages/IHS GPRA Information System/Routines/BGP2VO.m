BGP2VO ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 12, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP HEDIS ANTIPSYCHOTIC NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS ANTIPSYCHOTIC NDC
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
 ;;21,"00247-0800-07 ")
 ;;1
 ;;21,"00247-0800-14 ")
 ;;2
 ;;21,"00247-0800-30 ")
 ;;3
 ;;21,"00247-0801-07 ")
 ;;32
 ;;21,"00247-0801-14 ")
 ;;33
 ;;21,"00247-0801-30 ")
 ;;34
 ;;21,"00247-0802-07 ")
 ;;47
 ;;21,"00247-0802-14 ")
 ;;48
 ;;21,"00247-0802-30 ")
 ;;49
 ;;21,"00378-0612-01 ")
 ;;4
 ;;21,"00378-0612-10 ")
 ;;5
 ;;21,"00378-0614-01 ")
 ;;35
 ;;21,"00378-0614-10 ")
 ;;36
 ;;21,"00378-0616-01 ")
 ;;50
 ;;21,"00378-0616-10 ")
 ;;51
 ;;21,"00378-0618-01 ")
 ;;16
 ;;21,"00781-1674-01 ")
 ;;31
 ;;21,"00904-1614-60 ")
 ;;6
 ;;21,"51079-0565-01 ")
 ;;7
 ;;21,"51079-0565-20 ")
 ;;8
 ;;21,"51079-0566-01 ")
 ;;37
 ;;21,"51079-0566-20 ")
 ;;38
 ;;21,"51079-0567-01 ")
 ;;52
 ;;21,"51079-0567-20 ")
 ;;53
 ;;21,"51079-0580-01 ")
 ;;17
 ;;21,"51079-0580-20 ")
 ;;18
 ;;21,"53489-0148-01 ")
 ;;9
 ;;21,"53489-0148-10 ")
 ;;10
 ;;21,"53489-0149-01 ")
 ;;39
 ;;21,"53489-0149-10 ")
 ;;40
 ;;21,"53489-0150-01 ")
 ;;54
 ;;21,"53489-0150-10 ")
 ;;55
 ;;21,"53489-0500-01 ")
 ;;19
 ;;21,"54868-0067-00 ")
 ;;41
 ;;21,"54868-0067-04 ")
 ;;42
 ;;21,"54868-0067-05 ")
 ;;43
 ;;21,"54868-1828-00 ")
 ;;20
 ;;21,"54868-1828-02 ")
 ;;21
 ;;21,"54868-1832-00 ")
 ;;56
 ;;21,"54868-1832-02 ")
 ;;57
 ;;21,"54868-1832-03 ")
 ;;58
 ;;21,"57866-1042-01 ")
 ;;11
 ;;21,"61392-0462-15 ")
 ;;12
 ;;21,"61392-0462-45 ")
 ;;13
 ;;21,"61392-0462-56 ")
 ;;14
 ;;21,"61392-0462-91 ")
 ;;15
 ;;21,"61392-0463-45 ")
 ;;44
 ;;21,"61392-0463-54 ")
 ;;45
 ;;21,"61392-0463-91 ")
 ;;46
 ;;21,"61392-0464-30 ")
 ;;59
 ;;21,"61392-0464-31 ")
 ;;60
 ;;21,"61392-0464-32 ")
 ;;61
 ;;21,"61392-0464-39 ")
 ;;62
 ;;21,"61392-0464-45 ")
 ;;63
 ;;21,"61392-0464-51 ")
 ;;64
 ;;21,"61392-0464-54 ")
 ;;65
 ;;21,"61392-0464-60 ")
 ;;66
 ;;21,"61392-0464-90 ")
 ;;67
 ;;21,"61392-0464-91 ")
 ;;68
 ;;21,"61392-0465-30 ")
 ;;22
 ;;21,"61392-0465-31 ")
 ;;23
 ;;21,"61392-0465-32 ")
 ;;24
 ;;21,"61392-0465-39 ")
 ;;25
 ;;21,"61392-0465-45 ")
 ;;26
 ;;21,"61392-0465-51 ")
 ;;27
 ;;21,"61392-0465-54 ")
 ;;28
 ;;21,"61392-0465-60 ")
 ;;29
 ;;21,"61392-0465-90 ")
 ;;30
 ;;9002226,716,.01)
 ;;BGP HEDIS ANTIPSYCHOTIC NDC
 ;;9002226,716,.02)
 ;;@
 ;;9002226,716,.04)
 ;;n
 ;;9002226,716,.06)
 ;;@
 ;;9002226,716,.08)
 ;;@
 ;;9002226,716,.09)
 ;;3120312
 ;;9002226,716,.11)
 ;;@
 ;;9002226,716,.12)
 ;;@
 ;;9002226,716,.13)
 ;;1
 ;;9002226,716,.14)
 ;;@
 ;;9002226,716,.15)
 ;;@
 ;;9002226,716,.16)
 ;;@
 ;;9002226,716,.17)
 ;;@
 ;;9002226,716,3101)
 ;;@
 ;;9002226.02101,"716,00247-0800-07 ",.01)
 ;;00247-0800-07
 ;;9002226.02101,"716,00247-0800-07 ",.02)
 ;;00247-0800-07
 ;;9002226.02101,"716,00247-0800-14 ",.01)
 ;;00247-0800-14
 ;;9002226.02101,"716,00247-0800-14 ",.02)
 ;;00247-0800-14
 ;;9002226.02101,"716,00247-0800-30 ",.01)
 ;;00247-0800-30
 ;;9002226.02101,"716,00247-0800-30 ",.02)
 ;;00247-0800-30
 ;;9002226.02101,"716,00247-0801-07 ",.01)
 ;;00247-0801-07
 ;;9002226.02101,"716,00247-0801-07 ",.02)
 ;;00247-0801-07
 ;;9002226.02101,"716,00247-0801-14 ",.01)
 ;;00247-0801-14
 ;;9002226.02101,"716,00247-0801-14 ",.02)
 ;;00247-0801-14
 ;;9002226.02101,"716,00247-0801-30 ",.01)
 ;;00247-0801-30
 ;;9002226.02101,"716,00247-0801-30 ",.02)
 ;;00247-0801-30
 ;;9002226.02101,"716,00247-0802-07 ",.01)
 ;;00247-0802-07
 ;;9002226.02101,"716,00247-0802-07 ",.02)
 ;;00247-0802-07
 ;;9002226.02101,"716,00247-0802-14 ",.01)
 ;;00247-0802-14
 ;;9002226.02101,"716,00247-0802-14 ",.02)
 ;;00247-0802-14
 ;;9002226.02101,"716,00247-0802-30 ",.01)
 ;;00247-0802-30
 ;;9002226.02101,"716,00247-0802-30 ",.02)
 ;;00247-0802-30
 ;;9002226.02101,"716,00378-0612-01 ",.01)
 ;;00378-0612-01
 ;;9002226.02101,"716,00378-0612-01 ",.02)
 ;;00378-0612-01
 ;;9002226.02101,"716,00378-0612-10 ",.01)
 ;;00378-0612-10
 ;;9002226.02101,"716,00378-0612-10 ",.02)
 ;;00378-0612-10
 ;;9002226.02101,"716,00378-0614-01 ",.01)
 ;;00378-0614-01
 ;;9002226.02101,"716,00378-0614-01 ",.02)
 ;;00378-0614-01
 ;;9002226.02101,"716,00378-0614-10 ",.01)
 ;;00378-0614-10
 ;;9002226.02101,"716,00378-0614-10 ",.02)
 ;;00378-0614-10
 ;;9002226.02101,"716,00378-0616-01 ",.01)
 ;;00378-0616-01
 ;;9002226.02101,"716,00378-0616-01 ",.02)
 ;;00378-0616-01
 ;;9002226.02101,"716,00378-0616-10 ",.01)
 ;;00378-0616-10
 ;;9002226.02101,"716,00378-0616-10 ",.02)
 ;;00378-0616-10
 ;;9002226.02101,"716,00378-0618-01 ",.01)
 ;;00378-0618-01
 ;;9002226.02101,"716,00378-0618-01 ",.02)
 ;;00378-0618-01
 ;;9002226.02101,"716,00781-1674-01 ",.01)
 ;;00781-1674-01
 ;;9002226.02101,"716,00781-1674-01 ",.02)
 ;;00781-1674-01
 ;;9002226.02101,"716,00904-1614-60 ",.01)
 ;;00904-1614-60
 ;;9002226.02101,"716,00904-1614-60 ",.02)
 ;;00904-1614-60
 ;;9002226.02101,"716,51079-0565-01 ",.01)
 ;;51079-0565-01
 ;;9002226.02101,"716,51079-0565-01 ",.02)
 ;;51079-0565-01
 ;;9002226.02101,"716,51079-0565-20 ",.01)
 ;;51079-0565-20
 ;;9002226.02101,"716,51079-0565-20 ",.02)
 ;;51079-0565-20
 ;;9002226.02101,"716,51079-0566-01 ",.01)
 ;;51079-0566-01
 ;;9002226.02101,"716,51079-0566-01 ",.02)
 ;;51079-0566-01
 ;;9002226.02101,"716,51079-0566-20 ",.01)
 ;;51079-0566-20
 ;;9002226.02101,"716,51079-0566-20 ",.02)
 ;;51079-0566-20
 ;;9002226.02101,"716,51079-0567-01 ",.01)
 ;;51079-0567-01
 ;;9002226.02101,"716,51079-0567-01 ",.02)
 ;;51079-0567-01
 ;;9002226.02101,"716,51079-0567-20 ",.01)
 ;;51079-0567-20
 ;;9002226.02101,"716,51079-0567-20 ",.02)
 ;;51079-0567-20
 ;;9002226.02101,"716,51079-0580-01 ",.01)
 ;;51079-0580-01
 ;;9002226.02101,"716,51079-0580-01 ",.02)
 ;;51079-0580-01
 ;;9002226.02101,"716,51079-0580-20 ",.01)
 ;;51079-0580-20
 ;;9002226.02101,"716,51079-0580-20 ",.02)
 ;;51079-0580-20
 ;;9002226.02101,"716,53489-0148-01 ",.01)
 ;;53489-0148-01
 ;;9002226.02101,"716,53489-0148-01 ",.02)
 ;;53489-0148-01
 ;;9002226.02101,"716,53489-0148-10 ",.01)
 ;;53489-0148-10
 ;;9002226.02101,"716,53489-0148-10 ",.02)
 ;;53489-0148-10
 ;;9002226.02101,"716,53489-0149-01 ",.01)
 ;;53489-0149-01
 ;;9002226.02101,"716,53489-0149-01 ",.02)
 ;;53489-0149-01
 ;;9002226.02101,"716,53489-0149-10 ",.01)
 ;;53489-0149-10
 ;;9002226.02101,"716,53489-0149-10 ",.02)
 ;;53489-0149-10
 ;;9002226.02101,"716,53489-0150-01 ",.01)
 ;;53489-0150-01
 ;;9002226.02101,"716,53489-0150-01 ",.02)
 ;;53489-0150-01
 ;;9002226.02101,"716,53489-0150-10 ",.01)
 ;;53489-0150-10
 ;;9002226.02101,"716,53489-0150-10 ",.02)
 ;;53489-0150-10
 ;;9002226.02101,"716,53489-0500-01 ",.01)
 ;;53489-0500-01
 ;;9002226.02101,"716,53489-0500-01 ",.02)
 ;;53489-0500-01
 ;;9002226.02101,"716,54868-0067-00 ",.01)
 ;;54868-0067-00
 ;;9002226.02101,"716,54868-0067-00 ",.02)
 ;;54868-0067-00
 ;;9002226.02101,"716,54868-0067-04 ",.01)
 ;;54868-0067-04
 ;;9002226.02101,"716,54868-0067-04 ",.02)
 ;;54868-0067-04
 ;;9002226.02101,"716,54868-0067-05 ",.01)
 ;;54868-0067-05
 ;;9002226.02101,"716,54868-0067-05 ",.02)
 ;;54868-0067-05
 ;;9002226.02101,"716,54868-1828-00 ",.01)
 ;;54868-1828-00
 ;;9002226.02101,"716,54868-1828-00 ",.02)
 ;;54868-1828-00
 ;;9002226.02101,"716,54868-1828-02 ",.01)
 ;;54868-1828-02
 ;;9002226.02101,"716,54868-1828-02 ",.02)
 ;;54868-1828-02
 ;;9002226.02101,"716,54868-1832-00 ",.01)
 ;;54868-1832-00
 ;;9002226.02101,"716,54868-1832-00 ",.02)
 ;;54868-1832-00
 ;;9002226.02101,"716,54868-1832-02 ",.01)
 ;;54868-1832-02
 ;;9002226.02101,"716,54868-1832-02 ",.02)
 ;;54868-1832-02
 ;;9002226.02101,"716,54868-1832-03 ",.01)
 ;;54868-1832-03
 ;;9002226.02101,"716,54868-1832-03 ",.02)
 ;;54868-1832-03
 ;;9002226.02101,"716,57866-1042-01 ",.01)
 ;;57866-1042-01
 ;;9002226.02101,"716,57866-1042-01 ",.02)
 ;;57866-1042-01
 ;;9002226.02101,"716,61392-0462-15 ",.01)
 ;;61392-0462-15
 ;;9002226.02101,"716,61392-0462-15 ",.02)
 ;;61392-0462-15
 ;;9002226.02101,"716,61392-0462-45 ",.01)
 ;;61392-0462-45
 ;;9002226.02101,"716,61392-0462-45 ",.02)
 ;;61392-0462-45
 ;;9002226.02101,"716,61392-0462-56 ",.01)
 ;;61392-0462-56
 ;;9002226.02101,"716,61392-0462-56 ",.02)
 ;;61392-0462-56
 ;;9002226.02101,"716,61392-0462-91 ",.01)
 ;;61392-0462-91
 ;;9002226.02101,"716,61392-0462-91 ",.02)
 ;;61392-0462-91
 ;;9002226.02101,"716,61392-0463-45 ",.01)
 ;;61392-0463-45
 ;;9002226.02101,"716,61392-0463-45 ",.02)
 ;;61392-0463-45
 ;;9002226.02101,"716,61392-0463-54 ",.01)
 ;;61392-0463-54
 ;;9002226.02101,"716,61392-0463-54 ",.02)
 ;;61392-0463-54
 ;;9002226.02101,"716,61392-0463-91 ",.01)
 ;;61392-0463-91
 ;;9002226.02101,"716,61392-0463-91 ",.02)
 ;;61392-0463-91
 ;;9002226.02101,"716,61392-0464-30 ",.01)
 ;;61392-0464-30
 ;;9002226.02101,"716,61392-0464-30 ",.02)
 ;;61392-0464-30
 ;;9002226.02101,"716,61392-0464-31 ",.01)
 ;;61392-0464-31
 ;;9002226.02101,"716,61392-0464-31 ",.02)
 ;;61392-0464-31
 ;;9002226.02101,"716,61392-0464-32 ",.01)
 ;;61392-0464-32
 ;;9002226.02101,"716,61392-0464-32 ",.02)
 ;;61392-0464-32
 ;;9002226.02101,"716,61392-0464-39 ",.01)
 ;;61392-0464-39
 ;;9002226.02101,"716,61392-0464-39 ",.02)
 ;;61392-0464-39
 ;;9002226.02101,"716,61392-0464-45 ",.01)
 ;;61392-0464-45
 ;;9002226.02101,"716,61392-0464-45 ",.02)
 ;;61392-0464-45
 ;;9002226.02101,"716,61392-0464-51 ",.01)
 ;;61392-0464-51
 ;;9002226.02101,"716,61392-0464-51 ",.02)
 ;;61392-0464-51
 ;;9002226.02101,"716,61392-0464-54 ",.01)
 ;;61392-0464-54
 ;;9002226.02101,"716,61392-0464-54 ",.02)
 ;;61392-0464-54
 ;;9002226.02101,"716,61392-0464-60 ",.01)
 ;;61392-0464-60
 ;;9002226.02101,"716,61392-0464-60 ",.02)
 ;;61392-0464-60
 ;;9002226.02101,"716,61392-0464-90 ",.01)
 ;;61392-0464-90
 ;;9002226.02101,"716,61392-0464-90 ",.02)
 ;;61392-0464-90
 ;;9002226.02101,"716,61392-0464-91 ",.01)
 ;;61392-0464-91
 ;;9002226.02101,"716,61392-0464-91 ",.02)
 ;;61392-0464-91
 ;;9002226.02101,"716,61392-0465-30 ",.01)
 ;;61392-0465-30
 ;;9002226.02101,"716,61392-0465-30 ",.02)
 ;;61392-0465-30
 ;;9002226.02101,"716,61392-0465-31 ",.01)
 ;;61392-0465-31
 ;;9002226.02101,"716,61392-0465-31 ",.02)
 ;;61392-0465-31
 ;;9002226.02101,"716,61392-0465-32 ",.01)
 ;;61392-0465-32
 ;;9002226.02101,"716,61392-0465-32 ",.02)
 ;;61392-0465-32
 ;;9002226.02101,"716,61392-0465-39 ",.01)
 ;;61392-0465-39
 ;;9002226.02101,"716,61392-0465-39 ",.02)
 ;;61392-0465-39
 ;;9002226.02101,"716,61392-0465-45 ",.01)
 ;;61392-0465-45
 ;;9002226.02101,"716,61392-0465-45 ",.02)
 ;;61392-0465-45
 ;;9002226.02101,"716,61392-0465-51 ",.01)
 ;;61392-0465-51
 ;;9002226.02101,"716,61392-0465-51 ",.02)
 ;;61392-0465-51
 ;;9002226.02101,"716,61392-0465-54 ",.01)
 ;;61392-0465-54
 ;;9002226.02101,"716,61392-0465-54 ",.02)
 ;;61392-0465-54
 ;;9002226.02101,"716,61392-0465-60 ",.01)
 ;;61392-0465-60
 ;;9002226.02101,"716,61392-0465-60 ",.02)
 ;;61392-0465-60
 ;;9002226.02101,"716,61392-0465-90 ",.01)
 ;;61392-0465-90
 ;;9002226.02101,"716,61392-0465-90 ",.02)
 ;;61392-0465-90
 ;
OTHER ; OTHER ROUTINES
 Q