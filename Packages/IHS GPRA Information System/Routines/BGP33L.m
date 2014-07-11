BGP33L ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 23, 2013;
 ;;13.0;IHS CLINICAL REPORTING;**1**;NOV 20, 2012;Build 7
 ;;BGP HEDIS ASTHMA LEUK NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS ASTHMA LEUK NDC
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
 ;;21,"00006-0117-01 ")
 ;;1
 ;;21,"00006-0117-28 ")
 ;;2
 ;;21,"00006-0117-31 ")
 ;;3
 ;;21,"00006-0117-54 ")
 ;;4
 ;;21,"00006-0117-80 ")
 ;;5
 ;;21,"00006-0275-01 ")
 ;;6
 ;;21,"00006-0275-28 ")
 ;;7
 ;;21,"00006-0275-31 ")
 ;;8
 ;;21,"00006-0275-54 ")
 ;;9
 ;;21,"00006-0275-82 ")
 ;;10
 ;;21,"00006-0711-01 ")
 ;;11
 ;;21,"00006-0711-28 ")
 ;;12
 ;;21,"00006-0711-31 ")
 ;;13
 ;;21,"00006-0711-54 ")
 ;;14
 ;;21,"00006-1711-31 ")
 ;;15
 ;;21,"00006-1711-54 ")
 ;;16
 ;;21,"00006-3841-01 ")
 ;;17
 ;;21,"00006-3841-30 ")
 ;;18
 ;;21,"00006-9117-31 ")
 ;;19
 ;;21,"00006-9117-54 ")
 ;;20
 ;;21,"00006-9117-80 ")
 ;;21
 ;;21,"00006-9275-31 ")
 ;;22
 ;;21,"00006-9275-54 ")
 ;;23
 ;;21,"00006-9275-82 ")
 ;;24
 ;;21,"00054-0259-13 ")
 ;;25
 ;;21,"00054-0259-22 ")
 ;;26
 ;;21,"00054-0288-13 ")
 ;;27
 ;;21,"00054-0288-22 ")
 ;;28
 ;;21,"00054-0289-13 ")
 ;;29
 ;;21,"00054-0289-22 ")
 ;;30
 ;;21,"00093-7424-56 ")
 ;;31
 ;;21,"00093-7424-98 ")
 ;;32
 ;;21,"00093-7425-56 ")
 ;;33
 ;;21,"00093-7425-98 ")
 ;;34
 ;;21,"00093-7426-10 ")
 ;;35
 ;;21,"00093-7426-56 ")
 ;;36
 ;;21,"00093-7426-98 ")
 ;;37
 ;;21,"00247-1897-00 ")
 ;;38
 ;;21,"00247-1897-30 ")
 ;;39
 ;;21,"00247-1897-60 ")
 ;;40
 ;;21,"00247-1897-77 ")
 ;;41
 ;;21,"00247-1897-90 ")
 ;;42
 ;;21,"00247-1898-00 ")
 ;;43
 ;;21,"00247-1898-14 ")
 ;;44
 ;;21,"00247-1898-30 ")
 ;;45
 ;;21,"00247-1898-60 ")
 ;;46
 ;;21,"00247-1898-77 ")
 ;;47
 ;;21,"00247-1898-90 ")
 ;;48
 ;;21,"00247-1988-30 ")
 ;;49
 ;;21,"00310-0401-60 ")
 ;;50
 ;;21,"00310-0402-39 ")
 ;;51
 ;;21,"00310-0402-60 ")
 ;;52
 ;;21,"00310-0411-60 ")
 ;;53
 ;;21,"00310-0412-60 ")
 ;;54
 ;;21,"00378-5201-93 ")
 ;;55
 ;;21,"00378-5204-93 ")
 ;;56
 ;;21,"00378-5205-93 ")
 ;;57
 ;;21,"00603-4653-02 ")
 ;;58
 ;;21,"00603-4653-16 ")
 ;;59
 ;;21,"00603-4654-02 ")
 ;;60
 ;;21,"00603-4654-16 ")
 ;;61
 ;;21,"00603-4655-02 ")
 ;;62
 ;;21,"00603-4655-16 ")
 ;;63
 ;;21,"00781-5555-31 ")
 ;;64
 ;;21,"00781-5555-92 ")
 ;;65
 ;;21,"00781-5560-31 ")
 ;;66
 ;;21,"00781-5560-92 ")
 ;;67
 ;;21,"10122-0901-12 ")
 ;;68
 ;;21,"10122-0902-12 ")
 ;;69
 ;;21,"12280-0042-90 ")
 ;;70
 ;;21,"13411-0151-01 ")
 ;;71
 ;;21,"13411-0151-03 ")
 ;;72
 ;;21,"13411-0151-06 ")
 ;;73
 ;;21,"13411-0151-09 ")
 ;;74
 ;;21,"13411-0151-15 ")
 ;;75
 ;;21,"13411-0160-01 ")
 ;;76
 ;;21,"13411-0160-03 ")
 ;;77
 ;;21,"13411-0160-06 ")
 ;;78
 ;;21,"13411-0160-09 ")
 ;;79
 ;;21,"13411-0160-15 ")
 ;;80
 ;;21,"13668-0079-05 ")
 ;;81
 ;;21,"13668-0079-30 ")
 ;;82
 ;;21,"13668-0079-90 ")
 ;;83
 ;;21,"13668-0080-05 ")
 ;;84
 ;;21,"13668-0080-30 ")
 ;;85
 ;;21,"13668-0080-90 ")
 ;;86
 ;;21,"13668-0081-30 ")
 ;;87
 ;;21,"13668-0081-90 ")
 ;;88
 ;;21,"42291-0621-90 ")
 ;;89
 ;;21,"43063-0380-15 ")
 ;;90
 ;;21,"43063-0380-30 ")
 ;;91
 ;;21,"43063-0381-21 ")
 ;;92
 ;;21,"43063-0381-30 ")
 ;;93
 ;;21,"49884-0303-02 ")
 ;;94
 ;;21,"49884-0304-02 ")
 ;;95
 ;;21,"49999-0533-30 ")
 ;;96
 ;;21,"49999-0533-90 ")
 ;;97
 ;;21,"49999-0884-30 ")
 ;;98
 ;;21,"49999-0884-90 ")
 ;;99
 ;;21,"49999-0952-30 ")
 ;;100
 ;;21,"51079-0223-01 ")
 ;;101
 ;;21,"51079-0223-20 ")
 ;;102
 ;;21,"54569-4604-01 ")
 ;;103
 ;;21,"54569-4605-00 ")
 ;;104
 ;;21,"54569-4736-00 ")
 ;;105
 ;;21,"54569-6321-00 ")
 ;;106
 ;;21,"54569-6348-00 ")
 ;;107
 ;;21,"54868-3283-00 ")
 ;;108
 ;;21,"54868-3283-01 ")
 ;;109
 ;;21,"54868-3283-02 ")
 ;;110
 ;;21,"54868-4172-00 ")
 ;;111
 ;;21,"54868-4172-01 ")
 ;;112
 ;;21,"54868-4172-02 ")
 ;;113
 ;;21,"54868-4630-00 ")
 ;;114
 ;;21,"54868-4847-00 ")
 ;;115
 ;;21,"55111-0593-30 ")
 ;;116
 ;;21,"55111-0593-90 ")
 ;;117
 ;;21,"55111-0594-30 ")
 ;;118
 ;;21,"55111-0594-90 ")
 ;;119
 ;;21,"55111-0625-60 ")
 ;;120
 ;;21,"55111-0626-60 ")
 ;;121
 ;;21,"55111-0725-30 ")
 ;;122
 ;;21,"55111-0725-90 ")
 ;;123
 ;;21,"55111-0763-03 ")
 ;;124
 ;;21,"55289-0961-15 ")
 ;;125
 ;;21,"55289-0961-30 ")
 ;;126
 ;;21,"55289-0989-21 ")
 ;;127
 ;;21,"55289-0989-30 ")
 ;;128
 ;;21,"55289-0990-21 ")
 ;;129
 ;;21,"55289-0990-30 ")
 ;;130
 ;;21,"55887-0120-90 ")
 ;;131
 ;;21,"58864-0658-30 ")
 ;;132
 ;;21,"58864-0694-30 ")
 ;;133
 ;;21,"59762-0030-01 ")
 ;;134
 ;;21,"59762-0030-02 ")
 ;;135
 ;;21,"59762-0045-01 ")
 ;;136
 ;;21,"59762-0045-02 ")
 ;;137
 ;;21,"59762-0046-01 ")
 ;;138
 ;;21,"59762-0046-02 ")
 ;;139
 ;;21,"60505-3562-03 ")
 ;;140
 ;;21,"60505-3562-08 ")
 ;;141
 ;;21,"60505-3562-09 ")
 ;;142
 ;;21,"60505-3573-03 ")
 ;;143
 ;;21,"60505-3573-08 ")
 ;;144
 ;;21,"60505-3573-09 ")
 ;;145
 ;;21,"60505-3574-03 ")
 ;;146
 ;;21,"60505-3574-08 ")
 ;;147
 ;;21,"60505-3574-09 ")
 ;;148
 ;;21,"62175-0204-32 ")
 ;;149
 ;;21,"62175-0204-46 ")
 ;;150
 ;;21,"62175-0205-32 ")
 ;;151
 ;;21,"62175-0205-46 ")
 ;;152
 ;;21,"62175-0210-32 ")
 ;;153
 ;;21,"62175-0210-46 ")
 ;;154
 ;;21,"63629-1639-01 ")
 ;;155
 ;;21,"65862-0567-05 ")
 ;;156
 ;;21,"65862-0567-30 ")
 ;;157
 ;;21,"65862-0567-90 ")
 ;;158
 ;;21,"65862-0568-05 ")
 ;;159
 ;;21,"65862-0568-30 ")
 ;;160
 ;;21,"65862-0568-90 ")
 ;;161
 ;;21,"65862-0574-19 ")
 ;;162
 ;;21,"65862-0574-30 ")
 ;;163
 ;;21,"65862-0574-90 ")
 ;;164
 ;;21,"66105-0164-02 ")
 ;;165
 ;;21,"66105-0164-03 ")
 ;;166
 ;;21,"66105-0164-06 ")
 ;;167
 ;;21,"66105-0164-09 ")
 ;;168
 ;;21,"66105-0164-10 ")
 ;;169
 ;;21,"66105-0501-06 ")
 ;;170
 ;;21,"66105-0502-06 ")
 ;;171
 ;;21,"67801-0305-03 ")
 ;;172
 ;;21,"68084-0619-01 ")
 ;;173
 ;;21,"68084-0620-01 ")
 ;;174
 ;;21,"68115-0638-60 ")
 ;;175
 ;;21,"68115-0923-30 ")
 ;;176
 ;;21,"68115-0923-90 ")
 ;;177
 ;;21,"68258-3032-03 ")
 ;;178
 ;;21,"68258-3033-03 ")
 ;;179
 ;;21,"68462-0392-30 ")
 ;;180
 ;;21,"68462-0392-90 ")
 ;;181
 ;;21,"68734-0700-10 ")
 ;;182
 ;;21,"68734-0710-10 ")
 ;;183
 ;;9002226,558,.01)
 ;;BGP HEDIS ASTHMA LEUK NDC
 ;;9002226,558,.02)
 ;;@
 ;;9002226,558,.04)
 ;;n
 ;;9002226,558,.06)
 ;;@
 ;;9002226,558,.08)
 ;;@
 ;;9002226,558,.09)
 ;;3130123
 ;;9002226,558,.11)
 ;;@
 ;;9002226,558,.12)
 ;;@
 ;;9002226,558,.13)
 ;;1
 ;;9002226,558,.14)
 ;;@
 ;;9002226,558,.15)
 ;;@
 ;;9002226,558,.16)
 ;;@
 ;;9002226,558,.17)
 ;;@
 ;;9002226,558,3101)
 ;;@
 ;;9002226.02101,"558,00006-0117-01 ",.01)
 ;;00006-0117-01
 ;;9002226.02101,"558,00006-0117-01 ",.02)
 ;;00006-0117-01
 ;;9002226.02101,"558,00006-0117-28 ",.01)
 ;;00006-0117-28
 ;;9002226.02101,"558,00006-0117-28 ",.02)
 ;;00006-0117-28
 ;;9002226.02101,"558,00006-0117-31 ",.01)
 ;;00006-0117-31
 ;;9002226.02101,"558,00006-0117-31 ",.02)
 ;;00006-0117-31
 ;;9002226.02101,"558,00006-0117-54 ",.01)
 ;;00006-0117-54
 ;;9002226.02101,"558,00006-0117-54 ",.02)
 ;;00006-0117-54
 ;;9002226.02101,"558,00006-0117-80 ",.01)
 ;;00006-0117-80
 ;;9002226.02101,"558,00006-0117-80 ",.02)
 ;;00006-0117-80
 ;;9002226.02101,"558,00006-0275-01 ",.01)
 ;;00006-0275-01
 ;;9002226.02101,"558,00006-0275-01 ",.02)
 ;;00006-0275-01
 ;;9002226.02101,"558,00006-0275-28 ",.01)
 ;;00006-0275-28
 ;;9002226.02101,"558,00006-0275-28 ",.02)
 ;;00006-0275-28
 ;;9002226.02101,"558,00006-0275-31 ",.01)
 ;;00006-0275-31
 ;;9002226.02101,"558,00006-0275-31 ",.02)
 ;;00006-0275-31
 ;;9002226.02101,"558,00006-0275-54 ",.01)
 ;;00006-0275-54
 ;;9002226.02101,"558,00006-0275-54 ",.02)
 ;;00006-0275-54
 ;;9002226.02101,"558,00006-0275-82 ",.01)
 ;;00006-0275-82
 ;;9002226.02101,"558,00006-0275-82 ",.02)
 ;;00006-0275-82
 ;;9002226.02101,"558,00006-0711-01 ",.01)
 ;;00006-0711-01
 ;;9002226.02101,"558,00006-0711-01 ",.02)
 ;;00006-0711-01
 ;;9002226.02101,"558,00006-0711-28 ",.01)
 ;;00006-0711-28
 ;;9002226.02101,"558,00006-0711-28 ",.02)
 ;;00006-0711-28
 ;;9002226.02101,"558,00006-0711-31 ",.01)
 ;;00006-0711-31
 ;;9002226.02101,"558,00006-0711-31 ",.02)
 ;;00006-0711-31
 ;;9002226.02101,"558,00006-0711-54 ",.01)
 ;;00006-0711-54
 ;;9002226.02101,"558,00006-0711-54 ",.02)
 ;;00006-0711-54
 ;;9002226.02101,"558,00006-1711-31 ",.01)
 ;;00006-1711-31
 ;;9002226.02101,"558,00006-1711-31 ",.02)
 ;;00006-1711-31
 ;;9002226.02101,"558,00006-1711-54 ",.01)
 ;;00006-1711-54
 ;;9002226.02101,"558,00006-1711-54 ",.02)
 ;;00006-1711-54
 ;;9002226.02101,"558,00006-3841-01 ",.01)
 ;;00006-3841-01
 ;;9002226.02101,"558,00006-3841-01 ",.02)
 ;;00006-3841-01
 ;;9002226.02101,"558,00006-3841-30 ",.01)
 ;;00006-3841-30
 ;;9002226.02101,"558,00006-3841-30 ",.02)
 ;;00006-3841-30
 ;;9002226.02101,"558,00006-9117-31 ",.01)
 ;;00006-9117-31
 ;;9002226.02101,"558,00006-9117-31 ",.02)
 ;;00006-9117-31
 ;;9002226.02101,"558,00006-9117-54 ",.01)
 ;;00006-9117-54
 ;;9002226.02101,"558,00006-9117-54 ",.02)
 ;;00006-9117-54
 ;;9002226.02101,"558,00006-9117-80 ",.01)
 ;;00006-9117-80
 ;;9002226.02101,"558,00006-9117-80 ",.02)
 ;;00006-9117-80
 ;;9002226.02101,"558,00006-9275-31 ",.01)
 ;;00006-9275-31
 ;;9002226.02101,"558,00006-9275-31 ",.02)
 ;;00006-9275-31
 ;;9002226.02101,"558,00006-9275-54 ",.01)
 ;;00006-9275-54
 ;;9002226.02101,"558,00006-9275-54 ",.02)
 ;;00006-9275-54
 ;;9002226.02101,"558,00006-9275-82 ",.01)
 ;;00006-9275-82
 ;;9002226.02101,"558,00006-9275-82 ",.02)
 ;;00006-9275-82
 ;;9002226.02101,"558,00054-0259-13 ",.01)
 ;;00054-0259-13
 ;;9002226.02101,"558,00054-0259-13 ",.02)
 ;;00054-0259-13
 ;;9002226.02101,"558,00054-0259-22 ",.01)
 ;;00054-0259-22
 ;;9002226.02101,"558,00054-0259-22 ",.02)
 ;;00054-0259-22
 ;;9002226.02101,"558,00054-0288-13 ",.01)
 ;;00054-0288-13
 ;;9002226.02101,"558,00054-0288-13 ",.02)
 ;;00054-0288-13
 ;;9002226.02101,"558,00054-0288-22 ",.01)
 ;;00054-0288-22
 ;;9002226.02101,"558,00054-0288-22 ",.02)
 ;;00054-0288-22
 ;;9002226.02101,"558,00054-0289-13 ",.01)
 ;;00054-0289-13
 ;;9002226.02101,"558,00054-0289-13 ",.02)
 ;;00054-0289-13
 ;;9002226.02101,"558,00054-0289-22 ",.01)
 ;;00054-0289-22
 ;;9002226.02101,"558,00054-0289-22 ",.02)
 ;;00054-0289-22
 ;;9002226.02101,"558,00093-7424-56 ",.01)
 ;;00093-7424-56
 ;;9002226.02101,"558,00093-7424-56 ",.02)
 ;;00093-7424-56
 ;;9002226.02101,"558,00093-7424-98 ",.01)
 ;;00093-7424-98
 ;;9002226.02101,"558,00093-7424-98 ",.02)
 ;;00093-7424-98
 ;;9002226.02101,"558,00093-7425-56 ",.01)
 ;;00093-7425-56
 ;;9002226.02101,"558,00093-7425-56 ",.02)
 ;;00093-7425-56
 ;;9002226.02101,"558,00093-7425-98 ",.01)
 ;;00093-7425-98
 ;;9002226.02101,"558,00093-7425-98 ",.02)
 ;;00093-7425-98
 ;;9002226.02101,"558,00093-7426-10 ",.01)
 ;;00093-7426-10
 ;;9002226.02101,"558,00093-7426-10 ",.02)
 ;;00093-7426-10
 ;;9002226.02101,"558,00093-7426-56 ",.01)
 ;;00093-7426-56
 ;;9002226.02101,"558,00093-7426-56 ",.02)
 ;;00093-7426-56
 ;;9002226.02101,"558,00093-7426-98 ",.01)
 ;;00093-7426-98
 ;;9002226.02101,"558,00093-7426-98 ",.02)
 ;;00093-7426-98
 ;;9002226.02101,"558,00247-1897-00 ",.01)
 ;;00247-1897-00
 ;;9002226.02101,"558,00247-1897-00 ",.02)
 ;;00247-1897-00
 ;;9002226.02101,"558,00247-1897-30 ",.01)
 ;;00247-1897-30
 ;;9002226.02101,"558,00247-1897-30 ",.02)
 ;;00247-1897-30
 ;;9002226.02101,"558,00247-1897-60 ",.01)
 ;;00247-1897-60
 ;;9002226.02101,"558,00247-1897-60 ",.02)
 ;;00247-1897-60
 ;;9002226.02101,"558,00247-1897-77 ",.01)
 ;;00247-1897-77
 ;;9002226.02101,"558,00247-1897-77 ",.02)
 ;;00247-1897-77
 ;;9002226.02101,"558,00247-1897-90 ",.01)
 ;;00247-1897-90
 ;;9002226.02101,"558,00247-1897-90 ",.02)
 ;;00247-1897-90
 ;;9002226.02101,"558,00247-1898-00 ",.01)
 ;;00247-1898-00
 ;;9002226.02101,"558,00247-1898-00 ",.02)
 ;;00247-1898-00
 ;;9002226.02101,"558,00247-1898-14 ",.01)
 ;;00247-1898-14
 ;;9002226.02101,"558,00247-1898-14 ",.02)
 ;;00247-1898-14
 ;;9002226.02101,"558,00247-1898-30 ",.01)
 ;;00247-1898-30
 ;;9002226.02101,"558,00247-1898-30 ",.02)
 ;;00247-1898-30
 ;;9002226.02101,"558,00247-1898-60 ",.01)
 ;;00247-1898-60
 ;;9002226.02101,"558,00247-1898-60 ",.02)
 ;;00247-1898-60
 ;;9002226.02101,"558,00247-1898-77 ",.01)
 ;;00247-1898-77
 ;;9002226.02101,"558,00247-1898-77 ",.02)
 ;;00247-1898-77
 ;;9002226.02101,"558,00247-1898-90 ",.01)
 ;;00247-1898-90
 ;;9002226.02101,"558,00247-1898-90 ",.02)
 ;;00247-1898-90
 ;;9002226.02101,"558,00247-1988-30 ",.01)
 ;;00247-1988-30
 ;;9002226.02101,"558,00247-1988-30 ",.02)
 ;;00247-1988-30
 ;;9002226.02101,"558,00310-0401-60 ",.01)
 ;;00310-0401-60
 ;;9002226.02101,"558,00310-0401-60 ",.02)
 ;;00310-0401-60
 ;;9002226.02101,"558,00310-0402-39 ",.01)
 ;;00310-0402-39
 ;;9002226.02101,"558,00310-0402-39 ",.02)
 ;;00310-0402-39
 ;;9002226.02101,"558,00310-0402-60 ",.01)
 ;;00310-0402-60
 ;;9002226.02101,"558,00310-0402-60 ",.02)
 ;;00310-0402-60
 ;;9002226.02101,"558,00310-0411-60 ",.01)
 ;;00310-0411-60
 ;;9002226.02101,"558,00310-0411-60 ",.02)
 ;;00310-0411-60
 ;;9002226.02101,"558,00310-0412-60 ",.01)
 ;;00310-0412-60
 ;;9002226.02101,"558,00310-0412-60 ",.02)
 ;;00310-0412-60
 ;;9002226.02101,"558,00378-5201-93 ",.01)
 ;;00378-5201-93
 ;;9002226.02101,"558,00378-5201-93 ",.02)
 ;;00378-5201-93
 ;;9002226.02101,"558,00378-5204-93 ",.01)
 ;;00378-5204-93
 ;
OTHER ; OTHER ROUTINES
 D ^BGP33L2
 D ^BGP33L3
 Q