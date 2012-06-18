BGP13W ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;;BGP PQA BETA BLOCKER NDC
 ;
 ; This routine loads Taxonomy BGP PQA BETA BLOCKER NDC
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
 ;;21,"00003-0207-50 ")
 ;;1825
 ;;21,"00003-0207-76 ")
 ;;1826
 ;;21,"00003-0208-50 ")
 ;;1792
 ;;21,"00003-0232-50 ")
 ;;1803
 ;;21,"00003-0241-50 ")
 ;;1861
 ;;21,"00003-0241-76 ")
 ;;1862
 ;;21,"00003-0246-49 ")
 ;;1797
 ;;21,"00003-0283-50 ")
 ;;190
 ;;21,"00005-3219-43 ")
 ;;500
 ;;21,"00005-3220-34 ")
 ;;243
 ;;21,"00005-3234-23 ")
 ;;128
 ;;21,"00005-3235-38 ")
 ;;59
 ;;21,"00005-3238-23 ")
 ;;94
 ;;21,"00005-3816-38 ")
 ;;736
 ;;21,"00005-3817-38 ")
 ;;715
 ;;21,"00006-0059-68 ")
 ;;2345
 ;;21,"00006-0067-68 ")
 ;;216
 ;;21,"00006-0136-68 ")
 ;;2339
 ;;21,"00006-0437-68 ")
 ;;2342
 ;;21,"00007-3370-13 ")
 ;;764
 ;;21,"00007-3370-59 ")
 ;;765
 ;;21,"00007-3371-13 ")
 ;;769
 ;;21,"00007-3371-59 ")
 ;;770
 ;;21,"00007-3372-13 ")
 ;;775
 ;;21,"00007-3372-59 ")
 ;;776
 ;;21,"00007-3373-13 ")
 ;;780
 ;;21,"00007-3373-59 ")
 ;;781
 ;;21,"00007-4139-20 ")
 ;;940
 ;;21,"00007-4139-55 ")
 ;;941
 ;;21,"00007-4140-20 ")
 ;;1000
 ;;21,"00007-4140-55 ")
 ;;1001
 ;;21,"00007-4141-20 ")
 ;;786
 ;;21,"00007-4141-55 ")
 ;;787
 ;;21,"00007-4142-20 ")
 ;;860
 ;;21,"00007-4142-55 ")
 ;;861
 ;;21,"00008-4177-01 ")
 ;;217
 ;;21,"00008-4179-01 ")
 ;;235
 ;;21,"00024-2300-20 ")
 ;;708
 ;;21,"00024-2301-10 ")
 ;;699
 ;;21,"00025-5101-31 ")
 ;;700
 ;;21,"00025-5201-31 ")
 ;;709
 ;;21,"00028-0035-01 ")
 ;;182
 ;;21,"00028-0051-01 ")
 ;;1558
 ;;21,"00028-0051-10 ")
 ;;1559
 ;;21,"00028-0053-01 ")
 ;;169
 ;;21,"00028-0071-01 ")
 ;;1372
 ;;21,"00028-0071-10 ")
 ;;1373
 ;;21,"00028-0071-61 ")
 ;;1374
 ;;21,"00028-0073-01 ")
 ;;177
 ;;21,"00046-0421-81 ")
 ;;2048
 ;;21,"00046-0421-95 ")
 ;;2049
 ;;21,"00046-0422-81 ")
 ;;2116
 ;;21,"00046-0422-95 ")
 ;;2117
 ;;21,"00046-0424-81 ")
 ;;2210
 ;;21,"00046-0424-95 ")
 ;;2211
 ;;21,"00046-0426-81 ")
 ;;2275
 ;;21,"00046-0428-81 ")
 ;;2301
 ;;21,"00046-0470-81 ")
 ;;1961
 ;;21,"00046-0471-81 ")
 ;;1987
 ;;21,"00046-0473-81 ")
 ;;1915
 ;;21,"00046-0479-81 ")
 ;;1940
 ;;21,"00046-0484-81 ")
 ;;202
 ;;21,"00046-0488-81 ")
 ;;212
 ;;21,"00054-3727-63 ")
 ;;2019
 ;;21,"00054-3728-44 ")
 ;;2018
 ;;21,"00054-3730-63 ")
 ;;2021
 ;;21,"00054-8764-16 ")
 ;;2020
 ;;21,"00074-1664-13 ")
 ;;762
 ;;21,"00074-1665-13 ")
 ;;763
 ;;21,"00078-0458-05 ")
 ;;1560
 ;;21,"00078-0458-09 ")
 ;;1561
 ;;21,"00078-0459-05 ")
 ;;1375
 ;;21,"00078-0459-09 ")
 ;;1376
 ;;21,"00078-0460-05 ")
 ;;183
 ;;21,"00078-0461-05 ")
 ;;170
 ;;21,"00078-0462-05 ")
 ;;178
 ;;21,"00085-0244-04 ")
 ;;1076
 ;;21,"00085-0244-05 ")
 ;;1077
 ;;21,"00085-0244-07 ")
 ;;1078
 ;;21,"00085-0244-08 ")
 ;;1079
 ;;21,"00085-0438-03 ")
 ;;1167
 ;;21,"00085-0438-05 ")
 ;;1168
 ;;21,"00085-0438-06 ")
 ;;1169
 ;;21,"00085-0752-04 ")
 ;;1122
 ;;21,"00085-0752-05 ")
 ;;1123
 ;;21,"00085-0752-07 ")
 ;;1124
 ;;21,"00085-0752-08 ")
 ;;1125
 ;;21,"00091-4500-15 ")
 ;;1901
 ;;21,"00093-0051-01 ")
 ;;942
 ;;21,"00093-0051-05 ")
 ;;943
 ;;21,"00093-0135-01 ")
 ;;1002
 ;;21,"00093-0135-05 ")
 ;;1003
 ;;21,"00093-0733-01 ")
 ;;1562
 ;;21,"00093-0733-10 ")
 ;;1563
 ;;21,"00093-0734-01 ")
 ;;1377
 ;;21,"00093-0734-10 ")
 ;;1378
 ;;21,"00093-0752-01 ")
 ;;501
 ;;21,"00093-0752-10 ")
 ;;502
 ;;21,"00093-0753-01 ")
 ;;244
 ;;21,"00093-0753-05 ")
 ;;245
 ;;21,"00093-0787-01 ")
 ;;364
 ;;21,"00093-0787-10 ")
 ;;365
 ;;21,"00093-4235-01 ")
 ;;1804
 ;;21,"00093-4236-01 ")
 ;;1827
 ;;21,"00093-4237-01 ")
 ;;1863
 ;;21,"00093-5270-56 ")
 ;;737
 ;;21,"00093-5271-56 ")
 ;;716
 ;;21,"00093-7295-01 ")
 ;;788
 ;;21,"00093-7295-05 ")
 ;;789
 ;;21,"00093-7296-01 ")
 ;;862
 ;;21,"00093-7296-05 ")
 ;;863
 ;;21,"00115-5311-01 ")
 ;;191
 ;;21,"00115-5322-01 ")
 ;;195
 ;;21,"00172-4217-60 ")
 ;;1908
 ;;21,"00172-4218-60 ")
 ;;1902
 ;;21,"00172-4235-60 ")
 ;;1805
 ;;21,"00172-4235-70 ")
 ;;1806
 ;;21,"00172-4236-60 ")
 ;;1828
 ;;21,"00172-4237-60 ")
 ;;1864
 ;;21,"00172-4238-60 ")
 ;;1793
 ;;21,"00172-4239-60 ")
 ;;1798
 ;;21,"00172-4364-00 ")
 ;;1119
 ;;21,"00172-4364-10 ")
 ;;1120
 ;;21,"00172-4364-60 ")
 ;;1080
 ;;21,"00172-4364-70 ")
 ;;1081
 ;;21,"00172-4365-00 ")
 ;;1165
 ;;21,"00172-4365-10 ")
 ;;1166
 ;;21,"00172-4365-60 ")
 ;;1126
 ;;21,"00172-4365-70 ")
 ;;1127
 ;;21,"00172-4366-60 ")
 ;;1170
 ;;21,"00172-5730-60 ")
 ;;95
 ;;21,"00172-5730-70 ")
 ;;96
 ;;21,"00172-5731-60 ")
 ;;129
 ;;21,"00172-5731-70 ")
 ;;130
 ;;21,"00172-5732-60 ")
 ;;60
 ;;21,"00172-5732-70 ")
 ;;61
 ;;21,"00173-0346-44 ")
 ;;1082
 ;;21,"00173-0346-47 ")
 ;;1083
 ;;21,"00173-0347-43 ")
 ;;1128
 ;;21,"00173-0347-44 ")
 ;;1129
 ;;21,"00173-0347-47 ")
 ;;1130
 ;;21,"00173-0348-43 ")
 ;;1171
 ;;21,"00173-0348-44 ")
 ;;1172
 ;;21,"00173-0348-47 ")
 ;;1173
 ;;21,"00173-0790-01 ")
 ;;2039
 ;;21,"00173-0790-02 ")
 ;;2040
 ;;21,"00173-0791-01 ")
 ;;2030
 ;;21,"00173-0791-02 ")
 ;;2031
 ;;21,"00182-1001-89 ")
 ;;366
 ;;21,"00182-1812-89 ")
 ;;2050
 ;;21,"00182-1813-89 ")
 ;;2118
 ;;21,"00182-1814-89 ")
 ;;2212
 ;;21,"00182-1815-89 ")
 ;;2302
 ;;21,"00182-2632-89 ")
 ;;1807
 ;;21,"00182-2633-89 ")
 ;;1829
 ;;21,"00182-2634-89 ")
 ;;1865
 ;;21,"00182-8202-00 ")
 ;;1084
 ;;21,"00182-8202-89 ")
 ;;1085
 ;;21,"00182-8203-00 ")
 ;;1131
 ;;21,"00182-8203-89 ")
 ;;1132
 ;;21,"00182-8235-00 ")
 ;;367
 ;;21,"00182-8235-89 ")
 ;;368
 ;;21,"00182-8236-00 ")
 ;;503
 ;;21,"00182-8236-89 ")
 ;;504
 ;;21,"00185-0010-01 ")
 ;;1086
 ;;21,"00185-0010-05 ")
 ;;1087
 ;;21,"00185-0117-01 ")
 ;;1133
 ;;21,"00185-0117-05 ")
 ;;1134
 ;;21,"00185-0118-01 ")
 ;;1174
 ;;21,"00185-0118-05 ")
 ;;1175
 ;;21,"00185-0281-01 ")
 ;;1268
 ;;21,"00185-0281-10 ")
 ;;1269
 ;;21,"00185-0282-01 ")
 ;;1308
 ;;21,"00185-0282-10 ")
 ;;1309
 ;;21,"00185-0283-01 ")
 ;;1190
 ;;21,"00185-0283-10 ")
 ;;1191
 ;;21,"00185-0284-01 ")
 ;;1237
 ;;21,"00185-0284-10 ")
 ;;1238
 ;;21,"00185-0701-01 ")
 ;;97
 ;;21,"00185-0701-05 ")
 ;;98
 ;;21,"00185-0701-30 ")
 ;;99
 ;;21,"00185-0704-01 ")
 ;;131
 ;;21,"00185-0704-05 ")
 ;;132
 ;;21,"00185-0704-30 ")
 ;;133
 ;;21,"00185-0707-01 ")
 ;;62
 ;;21,"00185-0707-05 ")
 ;;63
 ;;21,"00185-0707-30 ")
 ;;64
 ;;21,"00185-0771-01 ")
 ;;738
 ;;21,"00185-0771-30 ")
 ;;739
 ;;21,"00185-0774-01 ")
 ;;717
 ;;21,"00185-0774-30 ")
 ;;718
 ;;21,"00186-1088-05 ")
 ;;1270
 ;;21,"00186-1088-39 ")
 ;;1271
 ;;21,"00186-1090-05 ")
 ;;1310
 ;;21,"00186-1090-39 ")
 ;;1311
 ;;21,"00186-1090-50 ")
 ;;1312
 ;;21,"00186-1092-05 ")
 ;;1192
 ;;21,"00186-1092-39 ")
 ;;1193
 ;;21,"00186-1094-05 ")
 ;;1239
 ;;21,"00186-7300-05 ")
 ;;1272
 ;;21,"00186-7301-05 ")
 ;;1313
 ;;21,"00186-7302-05 ")
 ;;1194
 ;;21,"00186-7303-05 ")
 ;;1240
 ;;21,"00228-2175-11 ")
 ;;944
 ;;21,"00228-2176-11 ")
 ;;1004
 ;;21,"00228-2177-11 ")
 ;;790
 ;;21,"00228-2178-11 ")
 ;;864
 ;;21,"00228-2358-10 ")
 ;;203
 ;;21,"00228-2358-50 ")
 ;;204
 ;;21,"00228-2358-96 ")
 ;;205
 ;;21,"00228-2360-10 ")
 ;;213
 ;;21,"00228-2650-10 ")
 ;;100
 ;;21,"00228-2651-10 ")
 ;;134
 ;;21,"00228-2652-03 ")
 ;;65
 ;;21,"00228-2778-11 ")
 ;;1962
 ;;21,"00228-2778-50 ")
 ;;1963
 ;;21,"00228-2779-11 ")
 ;;1988
 ;;21,"00228-2779-50 ")
 ;;1989
 ;;21,"00228-2780-11 ")
 ;;1916
 ;;21,"00228-2780-50 ")
 ;;1917
 ;;21,"00228-2781-11 ")
 ;;1941
 ;;21,"00228-2781-50 ")
 ;;1942
 ;;21,"00245-0084-10 ")
 ;;1964
 ;;21,"00245-0084-11 ")
 ;;1965
 ;;21,"00245-0085-10 ")
 ;;1990
 ;;21,"00245-0085-11 ")
 ;;1991
 ;;21,"00245-0086-10 ")
 ;;1918
 ;;21,"00245-0086-11 ")
 ;;1919
 ;;21,"00245-0087-10 ")
 ;;1943
 ;;21,"00245-0087-11 ")
 ;;1944
 ;;21,"00247-1012-00 ")
 ;;246
 ;;21,"00247-1050-04 ")
 ;;2051
 ;;21,"00247-1050-30 ")
 ;;2052
 ;;21,"00247-1050-52 ")
 ;;2053
 ;;21,"00247-1050-59 ")
 ;;2054
 ;;21,"00247-1050-60 ")
 ;;2055
 ;;21,"00247-1051-00 ")
 ;;2213
 ;;21,"00247-1051-30 ")
 ;;2214
 ;;21,"00247-1052-30 ")
 ;;206
 ;;21,"00247-1052-45 ")
 ;;207
 ;;21,"00247-1065-30 ")
 ;;1564
 ;;21,"00247-1072-30 ")
 ;;505
 ;;21,"00247-1072-60 ")
 ;;506
 ;;21,"00247-1119-14 ")
 ;;1565
 ;;21,"00247-1119-30 ")
 ;;1566
 ;;21,"00247-1119-52 ")
 ;;1567
 ;;21,"00247-1119-60 ")
 ;;1568
 ;;21,"00247-1120-30 ")
 ;;1379
 ;;21,"00247-1120-60 ")
 ;;1380
 ;;21,"00247-1121-30 ")
 ;;184
 ;;21,"00247-1121-60 ")
 ;;185
 ;;21,"00247-1122-30 ")
 ;;171
 ;;21,"00247-1122-60 ")
 ;;172
 ;;21,"00247-1123-30 ")
 ;;179
 ;;21,"00247-1123-60 ")
 ;;180
 ;;21,"00247-1146-30 ")
 ;;369
 ;;21,"00247-1146-60 ")
 ;;370
 ;;21,"00247-1273-00 ")
 ;;2119
 ;;21,"00247-1273-79 ")
 ;;2120
 ;;21,"00247-1274-00 ")
 ;;1195
 ;;21,"00247-1274-60 ")
 ;;1196
 ;;21,"00310-0101-10 ")
 ;;247
 ;;21,"00310-0105-10 ")
 ;;507
 ;;21,"00310-0105-34 ")
 ;;508
 ;;21,"00310-0107-10 ")
 ;;371
 ;;21,"00310-0115-10 ")
 ;;24
 ;;21,"00310-0117-10 ")
 ;;1
 ;;21,"00378-0018-01 ")
 ;;1514
 ;;21,"00378-0018-05 ")
 ;;1515
 ;;21,"00378-0018-91 ")
 ;;1516
 ;;21,"00378-0028-01 ")
 ;;1808
 ;;21,"00378-0032-01 ")
 ;;1569
 ;;21,"00378-0032-10 ")
 ;;1570
 ;;21,"00378-0047-01 ")
 ;;1381
 ;;21,"00378-0047-10 ")
 ;;1382
 ;;21,"00378-0052-01 ")
 ;;1909
 ;;21,"00378-0055-01 ")
 ;;2346
 ;;21,"00378-0096-01 ")
 ;;192
 ;;21,"00378-0099-01 ")
 ;;196
 ;;21,"00378-0127-01 ")
 ;;1903
 ;;21,"00378-0182-01 ")
 ;;2056
 ;;21,"00378-0182-10 ")
 ;;2057
 ;;21,"00378-0183-01 ")
 ;;2121
 ;;21,"00378-0183-10 ")
 ;;2122
 ;;21,"00378-0184-01 ")
 ;;2215
 ;;21,"00378-0184-10 ")
 ;;2216
 ;;21,"00378-0185-01 ")
 ;;2303
 ;;21,"00378-0185-05 ")
 ;;2304
 ;;21,"00378-0218-01 ")
 ;;372
 ;;21,"00378-0218-10 ")
 ;;373
 ;;21,"00378-0221-01 ")
 ;;2340
 ;;21,"00378-0231-01 ")
 ;;509
 ;;21,"00378-0231-10 ")
 ;;510
 ;;21,"00378-0347-01 ")
 ;;214
 ;;21,"00378-0424-01 ")
 ;;186
 ;;21,"00378-0434-01 ")
 ;;173
 ;;21,"00378-0445-01 ")
 ;;181
 ;;21,"00378-0501-01 ")
 ;;101
 ;;21,"00378-0501-10 ")
 ;;102
 ;;21,"00378-0503-01 ")
 ;;135
 ;;21,"00378-0503-10 ")
 ;;136
 ;;21,"00378-0505-01 ")
 ;;66
 ;;21,"00378-0505-05 ")
 ;;67
 ;;21,"00378-0523-01 ")
 ;;740
 ;;21,"00378-0523-93 ")
 ;;741
 ;;21,"00378-0524-01 ")
 ;;719
 ;;21,"00378-0524-93 ")
 ;;720
 ;;21,"00378-0715-01 ")
 ;;2343
 ;;21,"00378-0731-01 ")
 ;;208
 ;;21,"00378-0757-01 ")
 ;;248
 ;;21,"00378-0757-10 ")
 ;;249
 ;;21,"00378-0757-93 ")
 ;;250
 ;;21,"00378-1132-01 ")
 ;;1866
 ;;21,"00378-1132-10 ")
 ;;1867
 ;;21,"00378-1171-01 ")
 ;;1830
 ;;21,"00378-1171-10 ")
 ;;1831
 ;;21,"00378-1200-01 ")
 ;;218
 ;;21,"00378-1400-01 ")
 ;;236
 ;;21,"00378-2063-01 ")
 ;;25
 ;;21,"00378-2064-01 ")
 ;;2
 ;;21,"00378-2064-93 ")
 ;;3
 ;;21,"00378-3631-01 ")
 ;;945
 ;;21,"00378-3631-05 ")
 ;;946
 ;;21,"00378-3632-01 ")
 ;;1005
 ;;21,"00378-3632-05 ")
 ;;1006
 ;;21,"00378-3633-01 ")
 ;;791
 ;;21,"00378-3633-05 ")
 ;;792
 ;;21,"00378-3634-01 ")
 ;;865
 ;;21,"00378-3634-05 ")
 ;;866
 ;;21,"00378-6160-01 ")
 ;;1966
 ;;21,"00378-6160-05 ")
 ;;1967
 ;;21,"00378-6180-01 ")
 ;;1992
 ;;21,"00378-6180-05 ")
 ;;1993
 ;;21,"00378-6220-01 ")
 ;;1920
 ;;21,"00378-6220-05 ")
 ;;1921
 ;;21,"00378-6260-01 ")
 ;;1945
 ;;21,"00378-6260-05 ")
 ;;1946
 ;;21,"00406-2022-01 ")
 ;;374
 ;;21,"00406-2022-10 ")
 ;;375
 ;;21,"00406-2023-01 ")
 ;;511
 ;;21,"00406-2023-10 ")
 ;;512
 ;;21,"00406-2024-01 ")
 ;;251
 ;;21,"00406-2024-10 ")
 ;;252
 ;;21,"00440-7170-30 ")
 ;;376
 ;;21,"00440-7170-45 ")
 ;;377
 ;;21,"00440-7170-90 ")
 ;;378
 ;;21,"00440-7171-10 ")
 ;;513
 ;;21,"00440-7171-30 ")
 ;;514
 ;;21,"00440-7171-45 ")
 ;;515
 ;;21,"00440-7171-60 ")
 ;;516
 ;;21,"00440-7171-90 ")
 ;;517
 ;;21,"00440-7171-92 ")
 ;;518
 ;;21,"00440-7172-30 ")
 ;;253
 ;;21,"00440-7172-90 ")
 ;;254
 ;;21,"00440-7680-60 ")
 ;;1088
 ;;21,"00440-7681-60 ")
 ;;1135
 ;;21,"00440-7784-45 ")
 ;;1517
 ;;21,"00440-7784-90 ")
 ;;1518
 ;
OTHER ; OTHER ROUTINES
 D ^BGP13W10
 D ^BGP13W11
 D ^BGP13W12
 D ^BGP13W13
 D ^BGP13W14
 D ^BGP13W15
 D ^BGP13W16
 D ^BGP13W17
 D ^BGP13W18
 D ^BGP13W19
 D ^BGP13W2
 D ^BGP13W20
 D ^BGP13W21
 D ^BGP13W22
 D ^BGP13W23
 D ^BGP13W24
 D ^BGP13W25
 D ^BGP13W26
 D ^BGP13W27
 D ^BGP13W28
 D ^BGP13W29
 D ^BGP13W3
 D ^BGP13W30
 D ^BGP13W4
 D ^BGP13W5
 D ^BGP13W6
 D ^BGP13W7
 D ^BGP13W8
 D ^BGP13W9
 Q