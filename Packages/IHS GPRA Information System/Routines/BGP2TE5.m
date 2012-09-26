BGP2TE5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 12, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"55111-0271-90 ")
 ;;409
 ;;21,"55111-0338-01 ")
 ;;69
 ;;21,"55111-0339-01 ")
 ;;79
 ;;21,"55111-0339-05 ")
 ;;80
 ;;21,"55111-0340-01 ")
 ;;121
 ;;21,"55111-0340-05 ")
 ;;122
 ;;21,"55111-0341-01 ")
 ;;5
 ;;21,"55111-0341-05 ")
 ;;6
 ;;21,"55111-0586-01 ")
 ;;43
 ;;21,"55111-0587-01 ")
 ;;165
 ;;21,"55289-0039-30 ")
 ;;159
 ;;21,"55289-0078-30 ")
 ;;2275
 ;;21,"55289-0096-30 ")
 ;;115
 ;;21,"55289-0103-30 ")
 ;;758
 ;;21,"55289-0103-60 ")
 ;;759
 ;;21,"55289-0270-30 ")
 ;;681
 ;;21,"55289-0270-90 ")
 ;;682
 ;;21,"55289-0289-90 ")
 ;;1449
 ;;21,"55289-0299-30 ")
 ;;403
 ;;21,"55289-0299-90 ")
 ;;404
 ;;21,"55289-0306-30 ")
 ;;1520
 ;;21,"55289-0306-90 ")
 ;;1521
 ;;21,"55289-0323-01 ")
 ;;1800
 ;;21,"55289-0323-30 ")
 ;;1801
 ;;21,"55289-0329-01 ")
 ;;1362
 ;;21,"55289-0335-01 ")
 ;;1303
 ;;21,"55289-0335-10 ")
 ;;1304
 ;;21,"55289-0335-50 ")
 ;;1305
 ;;21,"55289-0357-01 ")
 ;;1851
 ;;21,"55289-0357-30 ")
 ;;1852
 ;;21,"55289-0448-30 ")
 ;;546
 ;;21,"55289-0481-01 ")
 ;;2054
 ;;21,"55289-0481-30 ")
 ;;2055
 ;;21,"55289-0481-60 ")
 ;;2056
 ;;21,"55289-0543-30 ")
 ;;1694
 ;;21,"55289-0545-30 ")
 ;;1747
 ;;21,"55289-0549-30 ")
 ;;483
 ;;21,"55289-0549-60 ")
 ;;484
 ;;21,"55289-0583-30 ")
 ;;1925
 ;;21,"55289-0602-30 ")
 ;;578
 ;;21,"55289-0607-14 ")
 ;;2223
 ;;21,"55289-0607-30 ")
 ;;2224
 ;;21,"55289-0723-30 ")
 ;;2340
 ;;21,"55289-0723-90 ")
 ;;2341
 ;;21,"55289-0723-93 ")
 ;;2342
 ;;21,"55289-0770-14 ")
 ;;959
 ;;21,"55289-0774-14 ")
 ;;1011
 ;;21,"55289-0798-07 ")
 ;;1795
 ;;21,"55289-0798-30 ")
 ;;1796
 ;;21,"55289-0853-30 ")
 ;;911
 ;;21,"55289-0893-30 ")
 ;;1413
 ;;21,"55289-0893-97 ")
 ;;1414
 ;;21,"55289-0896-08 ")
 ;;2137
 ;;21,"55289-0896-30 ")
 ;;2138
 ;;21,"55289-0896-97 ")
 ;;2139
 ;;21,"55289-0981-30 ")
 ;;38
 ;;21,"55887-0135-90 ")
 ;;410
 ;;21,"55887-0136-90 ")
 ;;675
 ;;21,"55887-0361-30 ")
 ;;1797
 ;;21,"55887-0361-60 ")
 ;;1798
 ;;21,"55887-0361-90 ")
 ;;1799
 ;;21,"55887-0363-30 ")
 ;;788
 ;;21,"55887-0363-60 ")
 ;;789
 ;;21,"55887-0363-90 ")
 ;;790
 ;;21,"55887-0389-30 ")
 ;;1884
 ;;21,"55887-0389-60 ")
 ;;1885
 ;;21,"55887-0389-82 ")
 ;;1886
 ;;21,"55887-0389-90 ")
 ;;1887
 ;;21,"55887-0402-30 ")
 ;;2184
 ;;21,"55887-0402-60 ")
 ;;2185
 ;;21,"55887-0402-82 ")
 ;;2186
 ;;21,"55887-0402-90 ")
 ;;2187
 ;;21,"55887-0418-30 ")
 ;;2320
 ;;21,"55887-0449-30 ")
 ;;2069
 ;;21,"55887-0449-60 ")
 ;;2070
 ;;21,"55887-0449-90 ")
 ;;2071
 ;;21,"55887-0597-30 ")
 ;;1315
 ;;21,"55887-0597-60 ")
 ;;1316
 ;;21,"55887-0597-90 ")
 ;;1317
 ;;21,"55887-0598-30 ")
 ;;1365
 ;;21,"55887-0598-60 ")
 ;;1366
 ;;21,"55887-0598-90 ")
 ;;1367
 ;;21,"55887-0701-30 ")
 ;;916
 ;;21,"55887-0701-60 ")
 ;;917
 ;;21,"55887-0701-82 ")
 ;;918
 ;;21,"55887-0701-90 ")
 ;;919
 ;;21,"55887-0802-90 ")
 ;;1848
 ;;21,"55887-0824-30 ")
 ;;748
 ;;21,"55887-0824-60 ")
 ;;749
 ;;21,"55887-0824-82 ")
 ;;750
 ;;21,"55887-0824-90 ")
 ;;751
 ;;21,"55887-0864-30 ")
 ;;476
 ;;21,"55887-0864-60 ")
 ;;477
 ;;21,"55887-0864-90 ")
 ;;478
 ;;21,"55887-0920-30 ")
 ;;841
 ;;21,"55887-0986-30 ")
 ;;863
 ;;21,"55887-0986-90 ")
 ;;864
 ;;21,"57664-0568-13 ")
 ;;547
 ;;21,"57664-0568-99 ")
 ;;548
 ;;21,"57664-0569-13 ")
 ;;697
 ;;21,"57664-0569-99 ")
 ;;698
 ;;21,"57664-0570-13 ")
 ;;424
 ;;21,"57664-0570-18 ")
 ;;425
 ;;21,"57664-0570-99 ")
 ;;426
 ;;21,"57866-0102-01 ")
 ;;1787
 ;;21,"57866-0229-01 ")
 ;;907
 ;;21,"57866-0230-01 ")
 ;;958
 ;;21,"57866-0234-01 ")
 ;;1467
 ;;21,"57866-0284-01 ")
 ;;423
 ;;21,"57866-3025-01 ")
 ;;1542
 ;;21,"57866-3138-01 ")
 ;;480
 ;;21,"57866-4068-01 ")
 ;;1786
 ;;21,"57866-4069-01 ")
 ;;1849
 ;;21,"57866-4070-01 ")
 ;;1883
 ;;21,"57866-6126-01 ")
 ;;1039
 ;;21,"57866-6127-01 ")
 ;;1003
 ;;21,"57866-6127-02 ")
 ;;1004
 ;;21,"57866-6414-02 ")
 ;;2282
 ;;21,"57866-6625-01 ")
 ;;752
 ;;21,"57866-6626-01 ")
 ;;479
 ;;21,"57866-6717-02 ")
 ;;1748
 ;;21,"57866-6719-03 ")
 ;;1637
 ;;21,"57866-6912-01 ")
 ;;2190
 ;;21,"57866-6914-01 ")
 ;;2281
 ;;21,"57866-7076-01 ")
 ;;693
 ;;21,"58016-0374-30 ")
 ;;2280
 ;;21,"58016-0504-00 ")
 ;;928
 ;;21,"58016-0504-20 ")
 ;;929
 ;;21,"58016-0504-30 ")
 ;;930
 ;;21,"58016-0504-60 ")
 ;;931
 ;;21,"58016-0509-00 ")
 ;;2062
 ;;21,"58016-0509-02 ")
 ;;2063
 ;;21,"58016-0509-12 ")
 ;;2064
 ;;21,"58016-0509-15 ")
 ;;2065
 ;;21,"58016-0509-20 ")
 ;;2066
 ;;21,"58016-0509-30 ")
 ;;2067
 ;;21,"58016-0509-60 ")
 ;;2068
 ;;21,"58016-0511-00 ")
 ;;2147
 ;;21,"58016-0511-08 ")
 ;;2148
 ;;21,"58016-0511-30 ")
 ;;2149
 ;;21,"58016-0606-00 ")
 ;;1309
 ;;21,"58016-0606-12 ")
 ;;1310
 ;;21,"58016-0606-15 ")
 ;;1311
 ;;21,"58016-0606-20 ")
 ;;1312
 ;;21,"58016-0606-30 ")
 ;;1313
 ;;21,"58016-0606-90 ")
 ;;1314
 ;;21,"58016-0607-00 ")
 ;;1368
 ;;21,"58016-0607-12 ")
 ;;1369
 ;;21,"58016-0607-15 ")
 ;;1370
 ;;21,"58016-0607-20 ")
 ;;1371
 ;;21,"58016-0607-30 ")
 ;;1372
 ;;21,"58016-0607-90 ")
 ;;1373
 ;;21,"58016-0608-00 ")
 ;;1406
 ;;21,"58016-0608-12 ")
 ;;1407
 ;;21,"58016-0608-15 ")
 ;;1408
 ;;21,"58016-0608-20 ")
 ;;1409
 ;;21,"58016-0608-30 ")
 ;;1410
 ;;21,"58016-0608-90 ")
 ;;1411
 ;;21,"58016-0721-00 ")
 ;;2180
 ;;21,"58016-0721-30 ")
 ;;2181
 ;;21,"58016-0721-60 ")
 ;;2182
 ;;21,"58016-0721-90 ")
 ;;2183
 ;;21,"58016-0860-00 ")
 ;;2343
 ;;21,"58016-0860-12 ")
 ;;2344
 ;;21,"58016-0860-15 ")
 ;;2345
 ;;21,"58016-0860-20 ")
 ;;2346
 ;;21,"58016-0860-30 ")
 ;;2347
 ;;21,"58177-0061-09 ")
 ;;1152
 ;;21,"58177-0061-11 ")
 ;;1153
 ;;21,"58177-0061-19 ")
 ;;1154
 ;;21,"58177-0061-26 ")
 ;;1155
 ;;21,"58177-0062-09 ")
 ;;1175
 ;;21,"58177-0062-11 ")
 ;;1176
 ;;21,"58177-0062-19 ")
 ;;1177
 ;;21,"58177-0062-26 ")
 ;;1178
 ;;21,"58177-0063-09 ")
 ;;1201
 ;;21,"58177-0063-11 ")
 ;;1202
 ;;21,"58177-0063-19 ")
 ;;1203
 ;;21,"58177-0063-26 ")
 ;;1204
 ;;21,"58177-0064-09 ")
 ;;1224
 ;;21,"58177-0064-11 ")
 ;;1225
 ;;21,"58177-0064-19 ")
 ;;1226
 ;;21,"58177-0064-26 ")
 ;;1227
 ;;21,"58177-0065-09 ")
 ;;1250
 ;;21,"58177-0065-11 ")
 ;;1251
 ;;21,"58177-0065-19 ")
 ;;1252
 ;;21,"58177-0065-26 ")
 ;;1253
 ;;21,"58177-0066-19 ")
 ;;1268
 ;;21,"58177-0066-26 ")
 ;;1269
 ;;21,"58177-0536-26 ")
 ;;549
 ;;21,"58177-0537-07 ")
 ;;694
 ;;21,"58177-0537-11 ")
 ;;695
 ;;21,"58177-0537-26 ")
 ;;696
 ;;21,"58177-0538-11 ")
 ;;421
 ;;21,"58177-0538-26 ")
 ;;422
 ;;21,"58864-0101-20 ")
 ;;1307
 ;;21,"58864-0101-30 ")
 ;;1308
 ;;21,"58864-0102-20 ")
 ;;1540
 ;;21,"58864-0102-30 ")
 ;;1541
 ;;21,"58864-0530-30 ")
 ;;2060
 ;;21,"58864-0530-60 ")
 ;;2061
 ;;21,"58864-0606-30 ")
 ;;816
 ;;21,"58864-0619-30 ")
 ;;865
 ;;21,"58864-0620-14 ")
 ;;753
 ;;21,"58864-0620-30 ")
 ;;754
 ;;21,"58864-0635-14 ")
 ;;1184
 ;;21,"58864-0649-14 ")
 ;;2321
 ;;21,"58864-0649-30 ")
 ;;2322
 ;;21,"58864-0649-60 ")
 ;;2323
 ;;21,"58864-0657-30 ")
 ;;481
 ;;21,"58864-0669-14 ")
 ;;1636
 ;;21,"58864-0677-30 ")
 ;;1961
 ;;21,"58864-0706-14 ")
 ;;2226
 ;;21,"58864-0706-60 ")
 ;;2227
 ;;21,"58864-0713-30 ")
 ;;1468
 ;;21,"58864-0714-30 ")
 ;;1210
 ;;21,"58864-0720-30 ")
 ;;2145
 ;;21,"58864-0720-60 ")
 ;;2146
 ;;21,"58864-0723-30 ")
 ;;1494
 ;;21,"58864-0724-30 ")
 ;;1161
 ;;21,"58864-0810-30 ")
 ;;1538
 ;;21,"58864-0810-90 ")
 ;;1539
 ;;21,"58864-0824-01 ")
 ;;1660
 ;;21,"58864-0824-14 ")
 ;;1661
 ;;21,"58864-0873-14 ")
 ;;837
 ;;21,"58864-0873-30 ")
 ;;838
 ;;21,"58864-0966-01 ")
 ;;1662
 ;;21,"59630-0440-10 ")
 ;;1905
 ;;21,"59630-0441-10 ")
 ;;1921
 ;;21,"59630-0442-10 ")
 ;;1935
 ;;21,"59630-0443-10 ")
 ;;1946
 ;;21,"59630-0500-10 ")
 ;;1949
 ;;21,"59630-0501-10 ")
 ;;1916
 ;;21,"59630-0502-10 ")
 ;;1930
 ;;21,"59630-0503-10 ")
 ;;1938
 ;;21,"59762-1520-01 ")
 ;;550
 ;;21,"59762-1520-02 ")
 ;;551
 ;;21,"59762-1530-01 ")
 ;;688
 ;;21,"59762-1530-02 ")
 ;;689
 ;;21,"59762-1530-03 ")
 ;;690
 ;;21,"59762-1530-04 ")
 ;;691
 ;;21,"59762-1530-05 ")
 ;;692
 ;;21,"59762-1540-01 ")
 ;;417
 ;;21,"59762-1540-02 ")
 ;;418
 ;;21,"59762-1540-03 ")
 ;;419
 ;;21,"59762-1540-04 ")
 ;;420
 ;;21,"59762-6690-03 ")
 ;;1788
 ;;21,"59762-6690-05 ")
 ;;1789
 ;;21,"59762-6690-08 ")
 ;;1790
 ;;21,"59762-6691-03 ")
 ;;1845
 ;;21,"59762-6691-05 ")
 ;;1846
 ;;21,"59762-6691-08 ")
 ;;1847
 ;;21,"59762-6692-03 ")
 ;;1888
 ;;21,"59762-6692-08 ")
 ;;1889
 ;;21,"60346-0186-20 ")
 ;;1896
 ;;21,"60346-0186-30 ")
 ;;1897
 ;;21,"60346-0296-60 ")
 ;;2058
 ;;21,"60346-0296-90 ")
 ;;2059
 ;;21,"60346-0298-30 ")
 ;;2150
 ;;21,"60346-0781-30 ")
 ;;2225
 ;;21,"60346-0813-08 ")
 ;;2140
 ;;21,"60346-0813-25 ")
 ;;2141
 ;;21,"60346-0813-30 ")
 ;;2142
 ;;21,"60346-0813-60 ")
 ;;2143
 ;;21,"60346-0813-90 ")
 ;;2144
 ;;21,"60346-0916-30 ")
 ;;1850
 ;;21,"60346-0917-30 ")
 ;;1802
 ;;21,"60346-0959-30 ")
 ;;2353
 ;;21,"60346-0960-10 ")
 ;;1318
 ;;21,"60346-0960-13 ")
 ;;1319
 ;;21,"60346-0960-25 ")
 ;;1320
 ;;21,"60346-0960-30 ")
 ;;1321
 ;;21,"60346-0960-62 ")
 ;;1322
 ;;21,"60346-0960-90 ")
 ;;1323
 ;;21,"60346-0962-25 ")
 ;;1412
 ;;21,"60346-0995-30 ")
 ;;755
 ;;21,"60346-0995-60 ")
 ;;756
 ;;21,"60429-0197-60 ")
 ;;2072
 ;;21,"60429-0198-30 ")
 ;;2350
 ;;21,"60429-0198-60 ")
 ;;2351
 ;;21,"60429-0198-90 ")
 ;;2352
 ;;21,"60429-0237-90 ")
 ;;2258
 ;;21,"60505-0007-04 ")
 ;;891
 ;;21,"60505-0007-08 ")
 ;;892
 ;;21,"60505-0008-04 ")
 ;;950
 ;;21,"60505-0008-08 ")
 ;;951
 ;;21,"60505-0009-04 ")
 ;;1001
 ;;21,"60505-0009-08 ")
 ;;1002
 ;;21,"60505-0010-04 ")
 ;;1054
 ;;21,"60505-0010-08 ")
 ;;1055
 ;;21,"60505-0014-06 ")
 ;;814
 ;;21,"60505-0014-08 ")
 ;;815
 ;;21,"60505-0015-06 ")
 ;;839
 ;;21,"60505-0015-08 ")
 ;;840
 ;;21,"60505-0016-06 ")
 ;;861
 ;;21,"60505-0016-08 ")
 ;;862
 ;;21,"60505-0193-02 ")
 ;;552
 ;;21,"60505-0193-03 ")
 ;;553
 ;;21,"60505-0194-02 ")
 ;;686
 ;;21,"60505-0194-03 ")
 ;;687
 ;;21,"60505-0195-02 ")
 ;;414
 ;;21,"60505-0195-03 ")
 ;;415
 ;;21,"60505-0210-03 ")
 ;;1156
 ;;21,"60505-0210-09 ")
 ;;1157
 ;;21,"60505-0211-03 ")
 ;;1179
 ;;21,"60505-0211-09 ")
 ;;1180
 ;;21,"60505-0212-03 ")
 ;;1205
 ;;21,"60505-0212-09 ")
 ;;1206
 ;;21,"60505-0213-03 ")
 ;;1228
 ;;21,"60505-0213-09 ")
 ;;1229
 ;;21,"60505-0214-03 ")
 ;;1254
 ;;21,"60505-0214-09 ")
 ;;1255
 ;;21,"60598-0120-30 ")
 ;;1086
 ;;21,"60598-0120-90 ")
 ;;1087
 ;;21,"60598-0121-30 ")
 ;;1088
 ;;21,"60598-0121-60 ")
 ;;1089
 ;;21,"60598-0121-90 ")
 ;;1090
 ;;21,"60598-0122-30 ")
 ;;1102
 ;;21,"60598-0122-90 ")
 ;;1103
 ;;21,"60598-0123-30 ")
 ;;1114
 ;;21,"60598-0123-90 ")
 ;;1115
 ;;21,"60598-0124-30 ")
 ;;1126
 ;;21,"60598-0124-90 ")
 ;;1127
 ;;21,"60598-0125-30 ")
 ;;1137
 ;;21,"60598-0125-90 ")
 ;;1138
 ;;21,"60760-0239-30 ")
 ;;416
 ;;21,"62037-0548-01 ")
 ;;812
 ;;21,"62037-0548-10 ")
 ;;813
 ;;21,"62037-0549-01 ")
 ;;835
 ;;21,"62037-0549-10 ")
 ;;836
 ;;21,"62037-0550-01 ")
 ;;859
 ;;21,"62037-0550-10 ")
 ;;860
 ;;21,"62037-0597-05 ")
 ;;889
 ;;21,"62037-0597-90 ")
 ;;890
 ;;21,"62037-0598-05 ")
 ;;948
 ;;21,"62037-0598-90 ")
 ;;949
 ;;21,"62037-0599-05 ")
 ;;998
 ;;21,"62037-0599-90 ")
 ;;999
 ;;21,"62037-0600-05 ")
 ;;1052
 ;;21,"62037-0600-90 ")
 ;;1053
 ;;21,"62037-0691-30 ")
 ;;1096
 ;;21,"62037-0691-90 ")
 ;;1097
 ;;21,"62037-0692-30 ")
 ;;1108
 ;;21,"62037-0692-90 ")
 ;;1109
 ;;21,"62037-0693-30 ")
 ;;1118
 ;;21,"62037-0693-90 ")
 ;;1119
 ;;21,"62037-0694-30 ")
 ;;1131
 ;;21,"62037-0694-90 ")
 ;;1132
 ;;21,"62037-0695-30 ")
 ;;1142
 ;;21,"62037-0695-90 ")
 ;;1143
 ;;21,"62037-0696-05 ")
 ;;1158
 ;;21,"62037-0696-30 ")
 ;;1159
 ;;21,"62037-0696-90 ")
 ;;1160
 ;;21,"62037-0697-05 ")
 ;;1181
 ;;21,"62037-0697-30 ")
 ;;1182
 ;;21,"62037-0697-90 ")
 ;;1183
 ;;21,"62037-0698-05 ")
 ;;1207
 ;;21,"62037-0698-30 ")
 ;;1208
 ;;21,"62037-0698-90 ")
 ;;1209
 ;;21,"62037-0699-05 ")
 ;;1230
 ;;21,"62037-0699-30 ")
 ;;1231
 ;;21,"62037-0699-90 ")
 ;;1232
 ;;21,"62037-0700-05 ")
 ;;1256
 ;;21,"62037-0700-30 ")
 ;;1257
 ;;21,"62037-0700-90 ")
 ;;1258
 ;;21,"62037-0787-01 ")
 ;;1882
 ;;21,"62175-0260-37 ")
 ;;1791
 ;;21,"62175-0260-43 ")
 ;;1792
 ;;21,"62175-0260-46 ")
 ;;1793
 ;;21,"62175-0260-55 ")
 ;;1794
 ;;21,"62175-0261-37 ")
 ;;1841
 ;;21,"62175-0261-43 ")
 ;;1842
 ;;21,"62175-0261-46 ")
 ;;1843
 ;;21,"62175-0261-55 ")
 ;;1844
 ;;21,"62175-0262-32 ")
 ;;1879
 ;;21,"62175-0262-37 ")
 ;;1880
 ;;21,"62175-0262-46 ")
 ;;1881
 ;;21,"62175-0485-37 ")
 ;;1950
 ;;21,"62175-0486-37 ")
 ;;1976
 ;;21,"62175-0487-37 ")
 ;;1994
 ;;21,"62451-0733-19 ")
 ;;848
 ;;21,"62451-0734-19 ")
 ;;869
 ;;21,"62451-8841-54 ")
 ;;1649
 ;;21,"62451-8841-72 ")
 ;;1650
 ;;21,"62451-8851-54 ")
 ;;1711
 ;;21,"62451-8851-72 ")
 ;;1712
 ;;21,"62451-8861-51 ")
 ;;1758
 ;;21,"62584-0366-33 ")
 ;;1324
 ;;21,"62584-0367-01 ")
 ;;1363