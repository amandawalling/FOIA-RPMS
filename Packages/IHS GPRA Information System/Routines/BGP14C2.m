BGP14C2 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"13411-0161-06 ")
 ;;1301
 ;;21,"13411-0161-09 ")
 ;;1302
 ;;21,"13411-0161-15 ")
 ;;1303
 ;;21,"13411-0162-01 ")
 ;;891
 ;;21,"13411-0162-03 ")
 ;;892
 ;;21,"13411-0162-06 ")
 ;;893
 ;;21,"13411-0162-09 ")
 ;;894
 ;;21,"13411-0162-15 ")
 ;;895
 ;;21,"16252-0505-30 ")
 ;;1304
 ;;21,"16252-0505-50 ")
 ;;1305
 ;;21,"16252-0505-90 ")
 ;;1306
 ;;21,"16252-0506-30 ")
 ;;896
 ;;21,"16252-0506-50 ")
 ;;897
 ;;21,"16252-0506-90 ")
 ;;898
 ;;21,"16252-0507-30 ")
 ;;1009
 ;;21,"16252-0507-50 ")
 ;;1010
 ;;21,"16252-0507-90 ")
 ;;1011
 ;;21,"16252-0508-30 ")
 ;;1152
 ;;21,"16252-0508-50 ")
 ;;1153
 ;;21,"16252-0508-90 ")
 ;;1154
 ;;21,"16252-0509-30 ")
 ;;1366
 ;;21,"16252-0509-50 ")
 ;;1367
 ;;21,"16252-0509-90 ")
 ;;1368
 ;;21,"16252-0526-90 ")
 ;;565
 ;;21,"16252-0527-50 ")
 ;;624
 ;;21,"16252-0527-90 ")
 ;;625
 ;;21,"16252-0528-50 ")
 ;;706
 ;;21,"16252-0528-90 ")
 ;;707
 ;;21,"16252-0529-90 ")
 ;;779
 ;;21,"16590-0446-30 ")
 ;;1110
 ;;21,"16590-0546-30 ")
 ;;708
 ;;21,"16590-0546-90 ")
 ;;709
 ;;21,"16590-0547-30 ")
 ;;345
 ;;21,"16590-0547-60 ")
 ;;346
 ;;21,"16590-0547-72 ")
 ;;347
 ;;21,"16590-0547-90 ")
 ;;348
 ;;21,"16714-0681-01 ")
 ;;1307
 ;;21,"16714-0681-02 ")
 ;;1308
 ;;21,"16714-0682-01 ")
 ;;899
 ;;21,"16714-0682-02 ")
 ;;900
 ;;21,"16714-0682-03 ")
 ;;901
 ;;21,"16714-0683-01 ")
 ;;1012
 ;;21,"16714-0683-02 ")
 ;;1013
 ;;21,"16714-0683-03 ")
 ;;1014
 ;;21,"16714-0684-01 ")
 ;;1155
 ;;21,"16714-0684-02 ")
 ;;1156
 ;;21,"16714-0684-03 ")
 ;;1157
 ;;21,"16714-0685-01 ")
 ;;1369
 ;;21,"16714-0685-02 ")
 ;;1370
 ;;21,"16714-0685-03 ")
 ;;1371
 ;;21,"16729-0004-10 ")
 ;;902
 ;;21,"16729-0004-15 ")
 ;;903
 ;;21,"16729-0004-17 ")
 ;;904
 ;;21,"16729-0005-10 ")
 ;;1015
 ;;21,"16729-0005-15 ")
 ;;1016
 ;;21,"16729-0005-17 ")
 ;;1017
 ;;21,"16729-0006-10 ")
 ;;1158
 ;;21,"16729-0006-15 ")
 ;;1159
 ;;21,"16729-0006-17 ")
 ;;1160
 ;;21,"16729-0007-10 ")
 ;;1372
 ;;21,"16729-0007-15 ")
 ;;1373
 ;;21,"16729-0007-17 ")
 ;;1374
 ;;21,"21695-0178-30 ")
 ;;566
 ;;21,"21695-0179-30 ")
 ;;626
 ;;21,"21695-0179-90 ")
 ;;627
 ;;21,"21695-0180-30 ")
 ;;710
 ;;21,"21695-0180-90 ")
 ;;711
 ;;21,"21695-0255-90 ")
 ;;192
 ;;21,"21695-0287-90 ")
 ;;815
 ;;21,"21695-0288-90 ")
 ;;836
 ;;21,"21695-0534-30 ")
 ;;264
 ;;21,"21695-0535-30 ")
 ;;349
 ;;21,"21695-0535-90 ")
 ;;350
 ;;21,"21695-0536-30 ")
 ;;454
 ;;21,"21695-0536-90 ")
 ;;455
 ;;21,"21695-0659-30 ")
 ;;857
 ;;21,"21695-0738-90 ")
 ;;1309
 ;;21,"21695-0739-30 ")
 ;;905
 ;;21,"21695-0739-90 ")
 ;;906
 ;;21,"21695-0740-30 ")
 ;;1018
 ;;21,"21695-0740-90 ")
 ;;1019
 ;;21,"21695-0741-30 ")
 ;;1161
 ;;21,"21695-0741-90 ")
 ;;1162
 ;;21,"21695-0742-30 ")
 ;;1375
 ;;21,"21695-0742-90 ")
 ;;1441
 ;;21,"21695-0759-90 ")
 ;;864
 ;;21,"23490-5838-02 ")
 ;;265
 ;;21,"23490-5838-06 ")
 ;;266
 ;;21,"23490-5838-09 ")
 ;;267
 ;;21,"23490-5839-00 ")
 ;;351
 ;;21,"23490-5839-01 ")
 ;;352
 ;;21,"23490-5840-01 ")
 ;;456
 ;;21,"23490-5840-02 ")
 ;;457
 ;;21,"23490-9350-03 ")
 ;;567
 ;;21,"23490-9350-06 ")
 ;;568
 ;;21,"23490-9350-09 ")
 ;;569
 ;;21,"23490-9351-03 ")
 ;;628
 ;;21,"23490-9351-06 ")
 ;;629
 ;;21,"23490-9351-09 ")
 ;;630
 ;;21,"23490-9352-03 ")
 ;;712
 ;;21,"23490-9352-06 ")
 ;;713
 ;;21,"23490-9352-09 ")
 ;;714
 ;;21,"23490-9353-03 ")
 ;;907
 ;;21,"23490-9353-06 ")
 ;;908
 ;;21,"23490-9353-09 ")
 ;;909
 ;;21,"23490-9354-03 ")
 ;;1020
 ;;21,"23490-9354-06 ")
 ;;1021
 ;;21,"23490-9354-09 ")
 ;;1022
 ;;21,"23490-9355-03 ")
 ;;1163
 ;;21,"23490-9355-06 ")
 ;;1164
 ;;21,"23490-9355-09 ")
 ;;1165
 ;;21,"23490-9356-03 ")
 ;;1310
 ;;21,"23490-9356-06 ")
 ;;1311
 ;;21,"23490-9356-09 ")
 ;;1312
 ;;21,"23490-9357-03 ")
 ;;1376
 ;;21,"23490-9357-06 ")
 ;;1377
 ;;21,"23490-9357-09 ")
 ;;1378
 ;;21,"24658-0210-10 ")
 ;;1313
 ;;21,"24658-0210-30 ")
 ;;1314
 ;;21,"24658-0210-45 ")
 ;;1315
 ;;21,"24658-0210-90 ")
 ;;1316
 ;;21,"24658-0211-10 ")
 ;;910
 ;;21,"24658-0211-30 ")
 ;;911
 ;;21,"24658-0211-45 ")
 ;;912
 ;;21,"24658-0211-90 ")
 ;;913
 ;;21,"24658-0212-10 ")
 ;;1023
 ;;21,"24658-0212-30 ")
 ;;1024
 ;;21,"24658-0212-45 ")
 ;;1025
 ;;21,"24658-0212-90 ")
 ;;1026
 ;;21,"24658-0213-10 ")
 ;;1166
 ;;21,"24658-0213-30 ")
 ;;1167
 ;;21,"24658-0213-45 ")
 ;;1168
 ;;21,"24658-0213-90 ")
 ;;1169
 ;;21,"24658-0214-10 ")
 ;;1379
 ;;21,"24658-0214-30 ")
 ;;1380
 ;;21,"24658-0214-45 ")
 ;;1381
 ;;21,"24658-0214-90 ")
 ;;1382
 ;;21,"33261-0541-02 ")
 ;;1111
 ;;21,"33261-0541-30 ")
 ;;1112
 ;;21,"33261-0541-60 ")
 ;;1113
 ;;21,"33261-0541-90 ")
 ;;1114
 ;;21,"33261-0542-02 ")
 ;;1261
 ;;21,"33261-0542-30 ")
 ;;1262
 ;;21,"33261-0542-60 ")
 ;;1263
 ;;21,"33261-0542-90 ")
 ;;1264
 ;;21,"33358-0210-01 ")
 ;;93
 ;;21,"33358-0210-30 ")
 ;;94
 ;;21,"33358-0210-60 ")
 ;;95
 ;;21,"33358-0210-90 ")
 ;;96
 ;;21,"33358-0223-30 ")
 ;;268
 ;;21,"33358-0224-30 ")
 ;;353
 ;;21,"33358-0225-00 ")
 ;;354
 ;;21,"33358-0225-60 ")
 ;;355
 ;;21,"33358-0226-30 ")
 ;;458
 ;;21,"35356-0125-30 ")
 ;;715
 ;;21,"35356-0413-30 ")
 ;;842
 ;;21,"35356-0519-30 ")
 ;;859
 ;;21,"43063-0008-01 ")
 ;;1027
 ;;21,"43063-0080-30 ")
 ;;1383
 ;;21,"43063-0080-90 ")
 ;;1384
 ;;21,"43063-0143-30 ")
 ;;631
 ;;21,"43063-0195-30 ")
 ;;767
 ;;21,"43353-0031-15 ")
 ;;843
 ;;21,"43353-0031-45 ")
 ;;844
 ;;21,"43353-0031-60 ")
 ;;845
 ;;21,"43353-0031-82 ")
 ;;846
 ;;21,"43353-0227-15 ")
 ;;1265
 ;;21,"43353-0227-45 ")
 ;;1170
 ;;21,"43353-0228-15 ")
 ;;1385
 ;;21,"43353-0228-30 ")
 ;;1386
 ;;21,"43353-0228-45 ")
 ;;1387
 ;;21,"43353-0228-60 ")
 ;;1388
 ;;21,"43353-0229-45 ")
 ;;1028
 ;;21,"43353-0229-60 ")
 ;;1029
 ;;21,"43353-0289-15 ")
 ;;837
 ;;21,"43353-0289-45 ")
 ;;838
 ;;21,"43353-0394-15 ")
 ;;1389
 ;;21,"43353-0394-30 ")
 ;;1442
 ;;21,"43353-0394-45 ")
 ;;1443
 ;;21,"43353-0394-60 ")
 ;;1444
 ;;21,"43353-0496-45 ")
 ;;716
 ;;21,"43353-0625-15 ")
 ;;1115
 ;;21,"43353-0625-30 ")
 ;;1116
 ;;21,"43353-0625-45 ")
 ;;1117
 ;;21,"43353-0625-60 ")
 ;;1118
 ;;21,"43353-0664-15 ")
 ;;1445
 ;;21,"43353-0664-30 ")
 ;;1446
 ;;21,"43353-0664-45 ")
 ;;1447
 ;;21,"43353-0664-60 ")
 ;;1448
 ;;21,"43353-0665-15 ")
 ;;1266
 ;;21,"43353-0665-30 ")
 ;;1267
 ;;21,"43353-0665-45 ")
 ;;1268
 ;;21,"43353-0665-60 ")
 ;;1269
 ;;21,"43353-0666-30 ")
 ;;1449
 ;;21,"43353-0666-45 ")
 ;;1450
 ;;21,"43353-0666-60 ")
 ;;1451
 ;;21,"43683-0152-30 ")
 ;;1270
 ;;21,"45802-0093-01 ")
 ;;914
 ;;21,"45802-0093-65 ")
 ;;915
 ;;21,"45802-0093-75 ")
 ;;916
 ;;21,"45802-0292-65 ")
 ;;1390
 ;;21,"45802-0292-75 ")
 ;;1391
 ;;21,"45802-0384-01 ")
 ;;1030
 ;;21,"45802-0384-65 ")
 ;;1031
 ;;21,"45802-0384-75 ")
 ;;1032
 ;;21,"45802-0384-93 ")
 ;;1033
 ;;21,"45802-0879-01 ")
 ;;1171
 ;;21,"45802-0879-65 ")
 ;;1172
 ;;21,"45802-0879-75 ")
 ;;1173
 ;;21,"45802-0879-93 ")
 ;;1174
 ;;21,"45802-0924-65 ")
 ;;1317
 ;;21,"49884-0176-09 ")
 ;;570
 ;;21,"49884-0176-10 ")
 ;;571
 ;;21,"49884-0179-09 ")
 ;;632
 ;;21,"49884-0179-10 ")
 ;;633
 ;;21,"49884-0180-09 ")
 ;;717
 ;;21,"49884-0180-10 ")
 ;;718
 ;;21,"49884-0754-01 ")
 ;;269
 ;;21,"49884-0754-02 ")
 ;;270
 ;;21,"49884-0754-10 ")
 ;;271
 ;;21,"49884-0755-01 ")
 ;;356
 ;;21,"49884-0755-02 ")
 ;;357
 ;;21,"49884-0755-10 ")
 ;;358
 ;;21,"49884-0756-01 ")
 ;;459
 ;;21,"49884-0756-02 ")
 ;;460
 ;;21,"49884-0756-10 ")
 ;;461
 ;;21,"49999-0293-30 ")
 ;;272
 ;;21,"49999-0306-30 ")
 ;;1034
 ;;21,"49999-0392-30 ")
 ;;97
 ;;21,"49999-0392-90 ")
 ;;98
 ;;21,"49999-0467-30 ")
 ;;135
 ;;21,"49999-0467-90 ")
 ;;136
 ;;21,"49999-0468-30 ")
 ;;168
 ;;21,"49999-0468-90 ")
 ;;169
 ;;21,"49999-0470-30 ")
 ;;359
 ;;21,"49999-0470-60 ")
 ;;360
 ;;21,"49999-0470-90 ")
 ;;361
 ;;21,"49999-0471-00 ")
 ;;462
 ;;21,"49999-0471-30 ")
 ;;463
 ;;21,"49999-0471-60 ")
 ;;464
 ;;21,"49999-0488-30 ")
 ;;1175
 ;;21,"49999-0873-30 ")
 ;;800
 ;;21,"49999-0873-90 ")
 ;;801
 ;;21,"49999-0882-30 ")
 ;;199
 ;;21,"49999-0882-90 ")
 ;;200
 ;;21,"49999-0889-30 ")
 ;;1035
 ;;21,"49999-0889-60 ")
 ;;1036
 ;;21,"49999-0889-90 ")
 ;;1037
 ;;21,"49999-0900-90 ")
 ;;1318
 ;;21,"49999-0903-15 ")
 ;;1176
 ;;21,"49999-0903-30 ")
 ;;1177
 ;;21,"49999-0957-30 ")
 ;;11
 ;;21,"49999-0958-30 ")
 ;;25
 ;;21,"49999-0989-30 ")
 ;;74
 ;;21,"49999-0992-30 ")
 ;;824
 ;;21,"49999-0992-90 ")
 ;;825
 ;;21,"50111-0761-17 ")
 ;;572
 ;;21,"50111-0762-03 ")
 ;;634
 ;;21,"50111-0762-17 ")
 ;;635
 ;;21,"50111-0764-03 ")
 ;;719
 ;;21,"50111-0764-17 ")
 ;;720
 ;;21,"51079-0454-01 ")
 ;;917
 ;;21,"51079-0454-20 ")
 ;;918
 ;;21,"51079-0455-01 ")
 ;;1038
 ;;21,"51079-0455-20 ")
 ;;1039
 ;;21,"51079-0456-01 ")
 ;;1178
 ;;21,"51079-0456-20 ")
 ;;1179
 ;;21,"51079-0458-01 ")
 ;;636
 ;;21,"51079-0458-20 ")
 ;;637
 ;;21,"51079-0782-01 ")
 ;;721
 ;;21,"51079-0782-20 ")
 ;;722
 ;;21,"51079-0974-01 ")
 ;;273
 ;;21,"51079-0974-20 ")
 ;;274
 ;;21,"51079-0975-01 ")
 ;;362
 ;;21,"51079-0975-20 ")
 ;;363
 ;;21,"51079-0975-56 ")
 ;;364
 ;;21,"51079-0976-01 ")
 ;;465
 ;;21,"51079-0976-20 ")
 ;;466
 ;;21,"51079-0976-56 ")
 ;;467
 ;;21,"52959-0046-30 ")
 ;;170
 ;;21,"52959-0112-30 ")
 ;;1180
 ;;21,"52959-0720-30 ")
 ;;365
 ;;21,"52959-0759-90 ")
 ;;99
 ;;21,"52959-0760-90 ")
 ;;137
 ;;21,"52959-0944-30 ")
 ;;1181
 ;;21,"52959-0974-00 ")
 ;;275
 ;;21,"52959-0974-30 ")
 ;;276
 ;;21,"52959-0988-30 ")
 ;;919
 ;;21,"52959-0989-30 ")
 ;;1040
 ;;21,"53002-0570-00 ")
 ;;430
 ;;21,"53002-0570-30 ")
 ;;431
 ;;21,"53002-1177-00 ")
 ;;521
 ;;21,"53002-1177-03 ")
 ;;522
 ;;21,"53002-1385-00 ")
 ;;315
 ;;21,"53002-1385-03 ")
 ;;316
 ;;21,"53002-1527-00 ")
 ;;975
 ;;21,"53002-1527-03 ")
 ;;976
 ;;21,"53002-1528-00 ")
 ;;1108
 ;;21,"53002-1528-03 ")
 ;;1109
 ;;21,"53002-1569-00 ")
 ;;1276
 ;;21,"53002-1569-03 ")
 ;;1277
 ;;21,"53489-0607-01 ")
 ;;277
 ;;21,"53489-0607-06 ")
 ;;278
 ;;21,"53489-0608-01 ")
 ;;366
 ;;21,"53489-0608-06 ")
 ;;367
 ;;21,"53489-0608-10 ")
 ;;368
 ;;21,"53489-0609-01 ")
 ;;468
 ;;21,"53489-0609-06 ")
 ;;469
 ;;21,"53489-0609-10 ")
 ;;470
 ;;21,"54458-0936-10 ")
 ;;523
 ;;21,"54458-0937-10 ")
 ;;422
 ;;21,"54458-0938-10 ")
 ;;317
 ;;21,"54458-0982-10 ")
 ;;471
 ;;21,"54458-0983-10 ")
 ;;369
 ;;21,"54458-0984-10 ")
 ;;279
 ;;21,"54458-0985-07 ")
 ;;723
 ;;21,"54458-0985-10 ")
 ;;724
 ;;21,"54458-0986-10 ")
 ;;638
 ;;21,"54458-0987-09 ")
 ;;573
 ;;21,"54569-0613-00 ")
 ;;370
 ;;21,"54569-0613-02 ")
 ;;371
 ;;21,"54569-3256-00 ")
 ;;472
 ;;21,"54569-3256-01 ")
 ;;473
 ;;21,"54569-3821-00 ")
 ;;225
 ;;21,"54569-3821-01 ")
 ;;226
 ;;21,"54569-4071-00 ")
 ;;639
 ;;21,"54569-4180-01 ")
 ;;920
 ;;21,"54569-4346-01 ")
 ;;574
 ;;21,"54569-4403-00 ")
 ;;1041
 ;;21,"54569-4404-00 ")
 ;;1182
 ;;21,"54569-4466-00 ")
 ;;100
 ;;21,"54569-4466-01 ")
 ;;101
 ;;21,"54569-4466-02 ")
 ;;102
 ;;21,"54569-4467-00 ")
 ;;138
 ;;21,"54569-4467-01 ")
 ;;139
 ;;21,"54569-4584-00 ")
 ;;280
 ;;21,"54569-4587-00 ")
 ;;171
 ;;21,"54569-4587-01 ")
 ;;172
 ;;21,"54569-4610-00 ")
 ;;725
 ;;21,"54569-4761-00 ")
 ;;236
 ;;21,"54569-4761-01 ")
 ;;237
 ;;21,"54569-5345-00 ")
 ;;281
 ;;21,"54569-5346-00 ")
 ;;372
 ;;21,"54569-5346-02 ")
 ;;423
 ;;21,"54569-5347-00 ")
 ;;474
 ;;21,"54569-5347-02 ")
 ;;524
 ;;21,"54569-5382-00 ")
 ;;201
 ;;21,"54569-5498-00 ")
 ;;244
 ;;21,"54569-5600-00 ")
 ;;802
 ;;21,"54569-5600-01 ")
 ;;803
 ;;21,"54569-5640-00 ")
 ;;1392
 ;;21,"54569-5648-00 ")
 ;;26
 ;;21,"54569-5672-00 ")
 ;;826
 ;;21,"54569-5704-00 ")
 ;;75
 ;;21,"54569-5746-00 ")
 ;;860
 ;;21,"54569-5766-00 ")
 ;;12
 ;;21,"54569-5768-00 ")
 ;;1
 ;;21,"54569-5793-00 ")
 ;;640
 ;;21,"54569-5794-00 ")
 ;;726
 ;;21,"54569-5833-00 ")
 ;;1042
 ;;21,"54569-5833-01 ")
 ;;1043
 ;;21,"54569-5833-02 ")
 ;;1044
 ;;21,"54569-5833-03 ")
 ;;1045
 ;;21,"54569-5834-00 ")
 ;;1183
 ;;21,"54569-5834-01 ")
 ;;1184
 ;;21,"54569-5834-02 ")
 ;;1185