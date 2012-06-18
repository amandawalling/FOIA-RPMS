BGP21L10 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"67544-0106-15 ")
 ;;441
 ;;21,"67544-0106-30 ")
 ;;442
 ;;21,"67544-0106-45 ")
 ;;443
 ;;21,"67544-0106-53 ")
 ;;444
 ;;21,"67544-0106-60 ")
 ;;445
 ;;21,"67544-0106-80 ")
 ;;446
 ;;21,"67544-0225-15 ")
 ;;550
 ;;21,"67544-0225-30 ")
 ;;551
 ;;21,"67544-0225-45 ")
 ;;552
 ;;21,"67544-0225-53 ")
 ;;553
 ;;21,"67544-0225-60 ")
 ;;554
 ;;21,"67544-0225-80 ")
 ;;555
 ;;21,"67544-0245-30 ")
 ;;331
 ;;21,"67544-0245-60 ")
 ;;332
 ;;21,"67544-0247-30 ")
 ;;203
 ;;21,"67544-0854-45 ")
 ;;1010
 ;;21,"67544-0854-60 ")
 ;;1011
 ;;21,"67544-0855-15 ")
 ;;1159
 ;;21,"67544-0855-30 ")
 ;;1160
 ;;21,"67544-0855-45 ")
 ;;1161
 ;;21,"67544-0855-60 ")
 ;;1162
 ;;21,"67544-0856-15 ")
 ;;1319
 ;;21,"67544-0856-45 ")
 ;;1320
 ;;21,"67544-0857-15 ")
 ;;1502
 ;;21,"67544-0857-45 ")
 ;;1503
 ;;21,"67544-0857-60 ")
 ;;1504
 ;;21,"67544-1001-30 ")
 ;;1393
 ;;21,"67544-1001-60 ")
 ;;1394
 ;;21,"67544-1003-15 ")
 ;;1505
 ;;21,"67544-1003-45 ")
 ;;1506
 ;;21,"67544-1003-53 ")
 ;;1507
 ;;21,"67544-1029-99 ")
 ;;261
 ;;21,"67544-1030-99 ")
 ;;256
 ;;21,"67544-1032-15 ")
 ;;899
 ;;21,"67544-1032-45 ")
 ;;900
 ;;21,"67544-1032-82 ")
 ;;901
 ;;21,"67544-1032-99 ")
 ;;902
 ;;21,"67544-1078-30 ")
 ;;1321
 ;;21,"67544-1254-15 ")
 ;;1322
 ;;21,"67544-1254-45 ")
 ;;1323
 ;;21,"67544-1255-15 ")
 ;;1508
 ;;21,"67544-1255-30 ")
 ;;1509
 ;;21,"67544-1255-45 ")
 ;;1510
 ;;21,"67544-1255-60 ")
 ;;1414
 ;;21,"67544-1256-15 ")
 ;;1163
 ;;21,"67544-1256-30 ")
 ;;1164
 ;;21,"67544-1256-45 ")
 ;;1165
 ;;21,"67544-1257-45 ")
 ;;1012
 ;;21,"67544-1257-60 ")
 ;;1013
 ;;21,"68071-0154-30 ")
 ;;166
 ;;21,"68071-0263-30 ")
 ;;885
 ;;21,"68071-0310-30 ")
 ;;204
 ;;21,"68071-0399-30 ")
 ;;132
 ;;21,"68071-0433-30 ")
 ;;862
 ;;21,"68071-0784-30 ")
 ;;910
 ;;21,"68084-0131-01 ")
 ;;333
 ;;21,"68084-0131-11 ")
 ;;334
 ;;21,"68084-0132-01 ")
 ;;447
 ;;21,"68084-0132-11 ")
 ;;448
 ;;21,"68084-0133-01 ")
 ;;556
 ;;21,"68084-0133-11 ")
 ;;557
 ;;21,"68084-0161-01 ")
 ;;1395
 ;;21,"68084-0161-11 ")
 ;;1396
 ;;21,"68084-0162-01 ")
 ;;1014
 ;;21,"68084-0162-11 ")
 ;;1015
 ;;21,"68084-0163-01 ")
 ;;1166
 ;;21,"68084-0163-11 ")
 ;;1167
 ;;21,"68084-0164-01 ")
 ;;1324
 ;;21,"68084-0164-11 ")
 ;;1325
 ;;21,"68084-0165-01 ")
 ;;1511
 ;;21,"68084-0165-11 ")
 ;;1512
 ;;21,"68084-0186-01 ")
 ;;623
 ;;21,"68084-0186-11 ")
 ;;624
 ;;21,"68084-0187-01 ")
 ;;706
 ;;21,"68084-0187-11 ")
 ;;707
 ;;21,"68084-0188-01 ")
 ;;799
 ;;21,"68084-0188-11 ")
 ;;800
 ;;21,"68115-0218-30 ")
 ;;271
 ;;21,"68115-0219-30 ")
 ;;348
 ;;21,"68115-0219-60 ")
 ;;349
 ;;21,"68115-0494-30 ")
 ;;135
 ;;21,"68115-0494-60 ")
 ;;136
 ;;21,"68115-0658-00 ")
 ;;461
 ;;21,"68115-0658-60 ")
 ;;462
 ;;21,"68115-0664-90 ")
 ;;725
 ;;21,"68115-0668-15 ")
 ;;170
 ;;21,"68115-0668-30 ")
 ;;171
 ;;21,"68115-0668-90 ")
 ;;172
 ;;21,"68115-0672-30 ")
 ;;1039
 ;;21,"68115-0720-30 ")
 ;;922
 ;;21,"68115-0759-30 ")
 ;;1415
 ;;21,"68115-0777-30 ")
 ;;1193
 ;;21,"68115-0777-90 ")
 ;;1194
 ;;21,"68115-0800-90 ")
 ;;137
 ;;21,"68115-0836-30 ")
 ;;98
 ;;21,"68115-0836-90 ")
 ;;99
 ;;21,"68180-0467-01 ")
 ;;335
 ;;21,"68180-0467-03 ")
 ;;336
 ;;21,"68180-0467-07 ")
 ;;337
 ;;21,"68180-0468-01 ")
 ;;449
 ;;21,"68180-0468-03 ")
 ;;450
 ;;21,"68180-0468-05 ")
 ;;451
 ;;21,"68180-0468-07 ")
 ;;452
 ;;21,"68180-0469-01 ")
 ;;558
 ;;21,"68180-0469-03 ")
 ;;559
 ;;21,"68180-0469-05 ")
 ;;560
 ;;21,"68180-0469-07 ")
 ;;561
 ;;21,"68180-0478-01 ")
 ;;1016
 ;;21,"68180-0478-02 ")
 ;;1017
 ;;21,"68180-0478-03 ")
 ;;1018
 ;;21,"68180-0479-01 ")
 ;;1168
 ;;21,"68180-0479-02 ")
 ;;1169
 ;;21,"68180-0479-03 ")
 ;;1170
 ;;21,"68180-0480-01 ")
 ;;1326
 ;;21,"68180-0480-02 ")
 ;;1327
 ;;21,"68180-0480-03 ")
 ;;1328
 ;;21,"68180-0481-01 ")
 ;;1513
 ;;21,"68180-0481-02 ")
 ;;1514
 ;;21,"68180-0481-03 ")
 ;;1515
 ;;21,"68180-0482-06 ")
 ;;1397
 ;;21,"68180-0482-09 ")
 ;;1398
 ;;21,"68180-0485-02 ")
 ;;625
 ;;21,"68180-0485-09 ")
 ;;626
 ;;21,"68180-0486-02 ")
 ;;708
 ;;21,"68180-0486-09 ")
 ;;709
 ;;21,"68180-0487-02 ")
 ;;801
 ;;21,"68180-0487-09 ")
 ;;802
 ;;21,"68180-0488-02 ")
 ;;830
 ;;21,"68180-0488-09 ")
 ;;831
 ;;21,"68258-1040-01 ")
 ;;138
 ;;21,"68258-1057-01 ")
 ;;355
 ;;21,"68258-6000-03 ")
 ;;133
 ;;21,"68258-6000-09 ")
 ;;134
 ;;21,"68258-6001-03 ")
 ;;167
 ;;21,"68258-6001-09 ")
 ;;168
 ;;21,"68258-6002-03 ")
 ;;205
 ;;21,"68258-6002-09 ")
 ;;206
 ;;21,"68258-6009-03 ")
 ;;1019
 ;;21,"68258-6013-03 ")
 ;;832
 ;;21,"68258-9001-01 ")
 ;;208
 ;;21,"68258-9128-01 ")
 ;;585
 ;;21,"68258-9154-01 ")
 ;;173
 ;;21,"68382-0065-05 ")
 ;;1399
 ;;21,"68382-0065-06 ")
 ;;1400
 ;;21,"68382-0065-10 ")
 ;;1401
 ;;21,"68382-0065-14 ")
 ;;1402
 ;;21,"68382-0065-16 ")
 ;;1403
 ;;21,"68382-0066-05 ")
 ;;1020
 ;;21,"68382-0066-06 ")
 ;;1021
 ;;21,"68382-0066-10 ")
 ;;1022
 ;;21,"68382-0066-14 ")
 ;;1023