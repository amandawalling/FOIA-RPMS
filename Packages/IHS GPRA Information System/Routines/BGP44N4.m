BGP44N4 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 11, 2013;
 ;;14.0;IHS CLINICAL REPORTING;;NOV 14, 2013;Build 101
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"54569-5975-01 ")
 ;;1690
 ;;21,"54569-5975-02 ")
 ;;1691
 ;;21,"54569-5976-00 ")
 ;;1820
 ;;21,"54569-5976-01 ")
 ;;1821
 ;;21,"54569-5976-02 ")
 ;;1822
 ;;21,"54569-5977-00 ")
 ;;1901
 ;;21,"54569-5977-01 ")
 ;;1857
 ;;21,"54569-5977-02 ")
 ;;1858
 ;;21,"54569-6119-00 ")
 ;;1528
 ;;21,"54569-6169-00 ")
 ;;1990
 ;;21,"54569-6298-00 ")
 ;;1147
 ;;21,"54569-6298-01 ")
 ;;1148
 ;;21,"54569-6314-00 ")
 ;;2018
 ;;21,"54569-6315-00 ")
 ;;2041
 ;;21,"54569-6342-00 ")
 ;;1539
 ;;21,"54569-6342-01 ")
 ;;1540
 ;;21,"54738-0133-03 ")
 ;;394
 ;;21,"54738-0134-03 ")
 ;;577
 ;;21,"54868-0052-00 ")
 ;;66
 ;;21,"54868-0052-01 ")
 ;;67
 ;;21,"54868-0052-02 ")
 ;;68
 ;;21,"54868-0053-02 ")
 ;;184
 ;;21,"54868-0053-03 ")
 ;;185
 ;;21,"54868-0053-07 ")
 ;;186
 ;;21,"54868-0106-00 ")
 ;;1950
 ;;21,"54868-0106-01 ")
 ;;1951
 ;;21,"54868-0293-00 ")
 ;;116
 ;;21,"54868-0293-01 ")
 ;;117
 ;;21,"54868-0293-05 ")
 ;;118
 ;;21,"54868-0293-06 ")
 ;;119
 ;;21,"54868-0321-00 ")
 ;;2073
 ;;21,"54868-0674-00 ")
 ;;13
 ;;21,"54868-0674-01 ")
 ;;14
 ;;21,"54868-0680-00 ")
 ;;288
 ;;21,"54868-0680-01 ")
 ;;289
 ;;21,"54868-0685-01 ")
 ;;1181
 ;;21,"54868-0696-01 ")
 ;;242
 ;;21,"54868-0696-02 ")
 ;;243
 ;;21,"54868-0696-03 ")
 ;;244
 ;;21,"54868-0701-00 ")
 ;;679
 ;;21,"54868-0854-00 ")
 ;;355
 ;;21,"54868-0854-01 ")
 ;;356
 ;;21,"54868-1063-00 ")
 ;;1393
 ;;21,"54868-1063-01 ")
 ;;1394
 ;;21,"54868-1063-02 ")
 ;;1395
 ;;21,"54868-1441-00 ")
 ;;262
 ;;21,"54868-1441-01 ")
 ;;263
 ;;21,"54868-1442-00 ")
 ;;315
 ;;21,"54868-1442-01 ")
 ;;316
 ;;21,"54868-1442-02 ")
 ;;317
 ;;21,"54868-1517-00 ")
 ;;264
 ;;21,"54868-1517-03 ")
 ;;265
 ;;21,"54868-1518-00 ")
 ;;333
 ;;21,"54868-1518-01 ")
 ;;334
 ;;21,"54868-1518-02 ")
 ;;335
 ;;21,"54868-1518-03 ")
 ;;336
 ;;21,"54868-1871-00 ")
 ;;632
 ;;21,"54868-1871-01 ")
 ;;633
 ;;21,"54868-1871-02 ")
 ;;634
 ;;21,"54868-1871-04 ")
 ;;635
 ;;21,"54868-1971-00 ")
 ;;763
 ;;21,"54868-1971-01 ")
 ;;764
 ;;21,"54868-1971-03 ")
 ;;765
 ;;21,"54868-1971-04 ")
 ;;766
 ;;21,"54868-1980-00 ")
 ;;1602
 ;;21,"54868-1980-01 ")
 ;;1603
 ;;21,"54868-2349-01 ")
 ;;418
 ;;21,"54868-2349-02 ")
 ;;419
 ;;21,"54868-2349-03 ")
 ;;420
 ;;21,"54868-2349-04 ")
 ;;421
 ;;21,"54868-2349-05 ")
 ;;422
 ;;21,"54868-2572-00 ")
 ;;339
 ;;21,"54868-2572-01 ")
 ;;340
 ;;21,"54868-2572-02 ")
 ;;341
 ;;21,"54868-2683-00 ")
 ;;2065
 ;;21,"54868-2683-01 ")
 ;;2066
 ;;21,"54868-2683-02 ")
 ;;2067
 ;;21,"54868-2864-00 ")
 ;;1995
 ;;21,"54868-2864-01 ")
 ;;1996
 ;;21,"54868-2989-00 ")
 ;;1371
 ;;21,"54868-2989-02 ")
 ;;1372
 ;;21,"54868-2989-03 ")
 ;;1373
 ;;21,"54868-2989-04 ")
 ;;1374
 ;;21,"54868-2989-05 ")
 ;;1375
 ;;21,"54868-2989-06 ")
 ;;1376
 ;;21,"54868-2990-00 ")
 ;;1447
 ;;21,"54868-2990-02 ")
 ;;1448
 ;;21,"54868-2990-03 ")
 ;;1449
 ;;21,"54868-2990-04 ")
 ;;1467
 ;;21,"54868-2990-05 ")
 ;;1427
 ;;21,"54868-3062-00 ")
 ;;1659
 ;;21,"54868-3062-01 ")
 ;;1660
 ;;21,"54868-3062-02 ")
 ;;1661
 ;;21,"54868-3062-03 ")
 ;;1662
 ;;21,"54868-3064-00 ")
 ;;2076
 ;;21,"54868-3064-01 ")
 ;;2077
 ;;21,"54868-3257-01 ")
 ;;17
 ;;21,"54868-3257-02 ")
 ;;18
 ;;21,"54868-3257-03 ")
 ;;19
 ;;21,"54868-3257-04 ")
 ;;20
 ;;21,"54868-3257-05 ")
 ;;21
 ;;21,"54868-3257-06 ")
 ;;22
 ;;21,"54868-3587-00 ")
 ;;990
 ;;21,"54868-3587-01 ")
 ;;991
 ;;21,"54868-3587-02 ")
 ;;992
 ;;21,"54868-3587-03 ")
 ;;993
 ;;21,"54868-3587-04 ")
 ;;994
 ;;21,"54868-3602-00 ")
 ;;49
 ;;21,"54868-3721-01 ")
 ;;44
 ;;21,"54868-3721-02 ")
 ;;45
 ;;21,"54868-4173-00 ")
 ;;2152
 ;;21,"54868-4179-00 ")
 ;;2178
 ;;21,"54868-4223-00 ")
 ;;1066
 ;;21,"54868-4223-01 ")
 ;;1067
 ;;21,"54868-4223-02 ")
 ;;1068
 ;;21,"54868-4223-03 ")
 ;;1069
 ;;21,"54868-4395-00 ")
 ;;1939
 ;;21,"54868-4395-01 ")
 ;;1940
 ;;21,"54868-4395-02 ")
 ;;1941
 ;;21,"54868-4395-03 ")
 ;;1942
 ;;21,"54868-4396-00 ")
 ;;1828
 ;;21,"54868-4396-01 ")
 ;;1829
 ;;21,"54868-4396-02 ")
 ;;1830
 ;;21,"54868-4396-03 ")
 ;;1831
 ;;21,"54868-4421-00 ")
 ;;1626
 ;;21,"54868-4421-01 ")
 ;;1627
 ;;21,"54868-4421-02 ")
 ;;1628
 ;;21,"54868-4424-00 ")
 ;;1728
 ;;21,"54868-4424-01 ")
 ;;1729
 ;;21,"54868-4424-02 ")
 ;;1730
 ;;21,"54868-4424-03 ")
 ;;1731
 ;;21,"54868-4576-00 ")
 ;;2134
 ;;21,"54868-4576-01 ")
 ;;2135
 ;;21,"54868-4576-02 ")
 ;;2136
 ;;21,"54868-4576-03 ")
 ;;2137
 ;;21,"54868-4577-00 ")
 ;;2099
 ;;21,"54868-4577-01 ")
 ;;2100
 ;;21,"54868-4577-03 ")
 ;;2101
 ;;21,"54868-4578-00 ")
 ;;2155
 ;;21,"54868-4578-01 ")
 ;;2156
 ;;21,"54868-4578-02 ")
 ;;2157
 ;;21,"54868-4578-03 ")
 ;;2158
 ;;21,"54868-4621-00 ")
 ;;821
 ;;21,"54868-4661-00 ")
 ;;897
 ;;21,"54868-4661-01 ")
 ;;898
 ;;21,"54868-4844-00 ")
 ;;2019
 ;;21,"54868-4844-01 ")
 ;;2020
 ;;21,"54868-4844-02 ")
 ;;2021
 ;;21,"54868-4844-03 ")
 ;;2022
 ;;21,"54868-4903-00 ")
 ;;2034
 ;;21,"54868-4903-01 ")
 ;;2035
 ;;21,"54868-4903-02 ")
 ;;2036
 ;;21,"54868-4921-00 ")
 ;;1975
 ;;21,"54868-4921-01 ")
 ;;1976
 ;;21,"54868-4921-02 ")
 ;;1977
 ;;21,"54868-4921-03 ")
 ;;1978
 ;;21,"54868-4921-04 ")
 ;;1979
 ;;21,"54868-4932-00 ")
 ;;792
 ;;21,"54868-4932-01 ")
 ;;793
 ;;21,"54868-5013-00 ")
 ;;833
 ;;21,"54868-5021-00 ")
 ;;1166
 ;;21,"54868-5021-01 ")
 ;;1167
 ;;21,"54868-5021-02 ")
 ;;1168
 ;;21,"54868-5021-03 ")
 ;;1124
 ;;21,"54868-5021-04 ")
 ;;1125
 ;;21,"54868-5068-00 ")
 ;;1103
 ;;21,"54868-5068-01 ")
 ;;1104
 ;;21,"54868-5068-03 ")
 ;;1105
 ;;21,"54868-5095-00 ")
 ;;812
 ;;21,"54868-5095-01 ")
 ;;813
 ;;21,"54868-5095-02 ")
 ;;814
 ;;21,"54868-5095-03 ")
 ;;815
 ;;21,"54868-5295-00 ")
 ;;5
 ;;21,"54868-5295-01 ")
 ;;6
 ;;21,"54868-5344-00 ")
 ;;2206
 ;;21,"54868-5344-01 ")
 ;;2207
 ;;21,"54868-5344-02 ")
 ;;2208
 ;;21,"54868-5395-00 ")
 ;;367
 ;;21,"54868-5400-00 ")
 ;;2185
 ;;21,"54868-5400-01 ")
 ;;2186
 ;;21,"54868-5520-00 ")
 ;;375
 ;;21,"54868-5524-00 ")
 ;;2194
 ;;21,"54868-5524-01 ")
 ;;2195
 ;;21,"54868-5564-00 ")
 ;;222
 ;;21,"54868-5564-01 ")
 ;;223
 ;;21,"54868-5729-00 ")
 ;;844
 ;;21,"54868-5729-01 ")
 ;;845
 ;;21,"54868-5729-02 ")
 ;;846
 ;;21,"54868-5729-03 ")
 ;;847
 ;;21,"54868-5729-04 ")
 ;;848
 ;;21,"54868-5729-05 ")
 ;;849
 ;;21,"54868-5729-06 ")
 ;;850
 ;;21,"54868-5730-00 ")
 ;;919
 ;;21,"54868-5730-01 ")
 ;;920
 ;;21,"54868-5730-02 ")
 ;;921
 ;;21,"54868-5730-03 ")
 ;;922
 ;;21,"54868-5730-04 ")
 ;;923
 ;;21,"54868-5730-05 ")
 ;;924
 ;;21,"54868-5731-00 ")
 ;;1008
 ;;21,"54868-5731-01 ")
 ;;1009
 ;;21,"54868-5731-02 ")
 ;;1010
 ;;21,"54868-5731-03 ")
 ;;1011
 ;;21,"54868-5731-04 ")
 ;;1012
 ;;21,"54868-5731-05 ")
 ;;1013
 ;;21,"54868-5732-00 ")
 ;;1079
 ;;21,"54868-5732-01 ")
 ;;1080
 ;;21,"54868-5732-02 ")
 ;;1081
 ;;21,"54868-5755-00 ")
 ;;313
 ;;21,"54868-5755-01 ")
 ;;314
 ;;21,"54868-5771-00 ")
 ;;1959
 ;;21,"54868-5771-01 ")
 ;;1960
 ;;21,"54868-5773-00 ")
 ;;1781
 ;;21,"54868-5773-01 ")
 ;;1782
 ;;21,"54868-5773-02 ")
 ;;1783
 ;;21,"54868-5773-03 ")
 ;;1784
 ;;21,"54868-5817-00 ")
 ;;1872
 ;;21,"54868-5817-01 ")
 ;;1873
 ;;21,"54868-5817-02 ")
 ;;1874
 ;;21,"54868-5817-03 ")
 ;;1875
 ;;21,"54868-5869-00 ")
 ;;1952
 ;;21,"54868-5869-01 ")
 ;;1953
 ;;21,"54868-5944-00 ")
 ;;1532
 ;;21,"54868-5944-01 ")
 ;;1533
 ;;21,"54868-6018-00 ")
 ;;1534
 ;;21,"54868-6018-01 ")
 ;;1535
 ;;21,"54868-6019-00 ")
 ;;1943
 ;;21,"54868-6019-01 ")
 ;;1944
 ;;21,"55045-1236-08 ")
 ;;137
 ;;21,"55045-1860-01 ")
 ;;619
 ;;21,"55045-1860-02 ")
 ;;620
 ;;21,"55045-1860-08 ")
 ;;621
 ;;21,"55045-1860-09 ")
 ;;622
 ;;21,"55045-2078-01 ")
 ;;88
 ;;21,"55045-2217-08 ")
 ;;1441
 ;;21,"55045-2269-01 ")
 ;;738
 ;;21,"55045-2269-06 ")
 ;;739
 ;;21,"55045-2269-08 ")
 ;;740
 ;;21,"55045-2269-09 ")
 ;;741
 ;;21,"55045-2282-00 ")
 ;;1377
 ;;21,"55045-2282-06 ")
 ;;1378
 ;;21,"55045-2498-08 ")
 ;;388
 ;;21,"55045-2754-00 ")
 ;;2089
 ;;21,"55045-2755-00 ")
 ;;2063
 ;;21,"55045-3361-01 ")
 ;;891
 ;;21,"55045-3762-08 ")
 ;;1350
 ;;21,"55045-3798-01 ")
 ;;857
 ;;21,"55045-3867-01 ")
 ;;1601
 ;;21,"55048-0028-30 ")
 ;;486
 ;;21,"55048-0029-30 ")
 ;;630
 ;;21,"55048-0029-90 ")
 ;;631
 ;;21,"55048-0030-30 ")
 ;;767
 ;;21,"55048-0056-30 ")
 ;;1818
 ;;21,"55048-0056-60 ")
 ;;1819
 ;;21,"55048-0057-30 ")
 ;;1692
 ;;21,"55048-0057-60 ")
 ;;1693
 ;;21,"55048-0058-30 ")
 ;;1902
 ;;21,"55048-0058-60 ")
 ;;1903
 ;;21,"55048-0059-30 ")
 ;;1599
 ;;21,"55048-0059-60 ")
 ;;1600
 ;;21,"55048-0127-30 ")
 ;;492
 ;;21,"55048-0128-30 ")
 ;;618
 ;;21,"55048-0134-60 ")
 ;;1715
 ;;21,"55048-0135-60 ")
 ;;1803
 ;;21,"55048-0137-60 ")
 ;;1804
 ;;21,"55048-0138-60 ")
 ;;1896
 ;;21,"55048-0144-60 ")
 ;;1897
 ;;21,"55048-0519-30 ")
 ;;957
 ;;21,"55048-0519-60 ")
 ;;958
 ;;21,"55048-0520-30 ")
 ;;1042
 ;;21,"55048-0521-30 ")
 ;;877
 ;;21,"55048-0522-30 ")
 ;;1440
 ;;21,"55048-0523-30 ")
 ;;1149
 ;;21,"55048-0524-30 ")
 ;;1192
 ;;21,"55048-0524-60 ")
 ;;1193
 ;;21,"55048-0524-74 ")
 ;;1194
 ;;21,"55111-0252-01 ")
 ;;1564
 ;;21,"55111-0252-05 ")
 ;;1565
 ;;21,"55111-0253-01 ")
 ;;1629
 ;;21,"55111-0253-05 ")
 ;;1630
 ;;21,"55111-0254-01 ")
 ;;1732
 ;;21,"55111-0254-05 ")
 ;;1733
 ;;21,"55111-0255-01 ")
 ;;1832
 ;;21,"55111-0255-05 ")
 ;;1833
 ;;21,"55111-0466-01 ")
 ;;838
 ;;21,"55111-0466-05 ")
 ;;839
 ;;21,"55111-0467-01 ")
 ;;905
 ;;21,"55111-0467-05 ")
 ;;906
 ;;21,"55111-0468-01 ")
 ;;1004
 ;;21,"55111-0468-05 ")
 ;;1005
 ;;21,"55111-0469-01 ")
 ;;1073
 ;;21,"55111-0469-05 ")
 ;;1074
 ;;21,"55289-0093-30 ")
 ;;1477
 ;;21,"55289-0093-60 ")
 ;;1421
 ;;21,"55289-0093-90 ")
 ;;1475
 ;;21,"55289-0093-93 ")
 ;;1476
 ;;21,"55289-0227-01 ")
 ;;487
 ;;21,"55289-0227-30 ")
 ;;488
 ;;21,"55289-0227-90 ")
 ;;489
 ;;21,"55289-0228-01 ")
 ;;623
 ;;21,"55289-0228-03 ")
 ;;624
 ;;21,"55289-0228-06 ")
 ;;625
 ;;21,"55289-0228-14 ")
 ;;626
 ;;21,"55289-0228-30 ")
 ;;627
 ;;21,"55289-0228-60 ")
 ;;628
 ;;21,"55289-0228-90 ")
 ;;629
 ;;21,"55289-0233-01 ")
 ;;138
 ;;21,"55289-0233-12 ")
 ;;107
 ;;21,"55289-0233-60 ")
 ;;108
 ;;21,"55289-0233-90 ")
 ;;109
 ;;21,"55289-0234-01 ")
 ;;201
 ;;21,"55289-0234-30 ")
 ;;202
 ;;21,"55289-0234-90 ")
 ;;203
 ;;21,"55289-0254-30 ")
 ;;681
 ;;21,"55289-0382-30 ")
 ;;1159
 ;;21,"55289-0382-93 ")
 ;;1140
 ;;21,"55289-0413-30 ")
 ;;1326
 ;;21,"55289-0413-60 ")
 ;;1327
 ;;21,"55289-0413-90 ")
 ;;1328
 ;;21,"55289-0413-93 ")
 ;;1329
 ;;21,"55289-0413-94 ")
 ;;1218
 ;;21,"55289-0587-30 ")
 ;;786
 ;;21,"55289-0627-30 ")
 ;;1187
 ;;21,"55289-0630-30 ")
 ;;2122
 ;;21,"55289-0630-90 ")
 ;;2123
 ;;21,"55289-0653-30 ")
 ;;774
 ;;21,"55289-0653-90 ")
 ;;775
 ;;21,"55289-0855-30 ")
 ;;989
 ;;21,"55289-0902-30 ")
 ;;892
 ;;21,"55289-0986-30 ")
 ;;1722
 ;;21,"55289-0988-30 ")
 ;;2082
 ;;21,"55289-0993-30 ")
 ;;2068
 ;;21,"55289-0993-60 ")
 ;;2069
 ;;21,"55289-0993-90 ")
 ;;2070
 ;;21,"57664-0166-08 ")
 ;;1332
 ;;21,"57664-0166-18 ")
 ;;1333
 ;;21,"57664-0166-52 ")
 ;;1210
 ;;21,"57664-0166-58 ")
 ;;1211
 ;;21,"57664-0167-08 ")
 ;;1468
 ;;21,"57664-0167-18 ")
 ;;1469
 ;;21,"57664-0167-52 ")
 ;;1425
 ;;21,"57664-0167-58 ")
 ;;1426
 ;;21,"57664-0242-13 ")
 ;;1551
 ;;21,"57664-0242-18 ")
 ;;1552
 ;;21,"57664-0242-88 ")
 ;;1553
 ;;21,"57664-0244-13 ")
 ;;1656
 ;;21,"57664-0244-18 ")
 ;;1657
 ;;21,"57664-0244-88 ")
 ;;1658
 ;;21,"57664-0245-13 ")
 ;;1757
 ;;21,"57664-0245-18 ")
 ;;1758
 ;;21,"57664-0245-88 ")
 ;;1759
 ;;21,"57664-0247-13 ")
 ;;1869
 ;;21,"57664-0247-18 ")
 ;;1870
 ;;21,"57664-0247-88 ")
 ;;1871
 ;;21,"57664-0264-18 ")
 ;;451
 ;;21,"57664-0264-88 ")
 ;;452
 ;;21,"57664-0265-18 ")
 ;;519
 ;;21,"57664-0265-88 ")
 ;;520
 ;;21,"57664-0266-18 ")
 ;;688
 ;;21,"57664-0266-88 ")
 ;;689
 ;;21,"57664-0477-08 ")
 ;;1324
 ;;21,"57664-0477-18 ")
 ;;1325
 ;;21,"57664-0477-52 ")
 ;;1216
 ;;21,"57664-0477-58 ")
 ;;1217
 ;;21,"57664-0506-08 ")
 ;;1162
 ;;21,"57664-0506-18 ")
 ;;1163
 ;;21,"57664-0506-52 ")
 ;;1138
 ;;21,"57664-0506-58 ")
 ;;1139
 ;;21,"58016-0001-00 ")
 ;;229
 ;;21,"58016-0001-30 ")
 ;;230
 ;;21,"58016-0001-60 ")
 ;;231
 ;;21,"58016-0001-90 ")
 ;;232
 ;;21,"58016-0045-00 ")
 ;;1106
 ;;21,"58016-0045-30 ")
 ;;1107
 ;;21,"58016-0045-60 ")
 ;;1108
 ;;21,"58016-0045-90 ")
 ;;1109
 ;;21,"58016-0286-00 ")
 ;;2126
 ;;21,"58016-0286-02 ")
 ;;2127
 ;;21,"58016-0286-30 ")
 ;;2128
 ;;21,"58016-0286-60 ")
 ;;2129
 ;;21,"58016-0286-90 ")
 ;;2130
 ;;21,"58016-0300-00 ")
 ;;378
 ;;21,"58016-0300-30 ")
 ;;379
 ;;21,"58016-0300-60 ")
 ;;380
 ;;21,"58016-0300-90 ")
 ;;381
 ;;21,"58016-0331-00 ")
 ;;2085
 ;;21,"58016-0331-30 ")
 ;;2086
 ;;21,"58016-0331-60 ")
 ;;2087
 ;;21,"58016-0331-90 ")
 ;;2088
 ;;21,"58016-0333-00 ")
 ;;585
 ;;21,"58016-0333-15 ")
 ;;586