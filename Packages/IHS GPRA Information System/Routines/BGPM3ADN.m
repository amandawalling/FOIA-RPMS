BGPM3ADN ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON APR 21, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"55111026878 ")
 ;;1399
 ;;21,"55111026890 ")
 ;;1400
 ;;21,"55111072610 ")
 ;;1280
 ;;21,"55111072630 ")
 ;;1281
 ;;21,"55111072690 ")
 ;;1282
 ;;21,"55111073510 ")
 ;;726
 ;;21,"55111073530 ")
 ;;727
 ;;21,"55111073590 ")
 ;;728
 ;;21,"55111074010 ")
 ;;897
 ;;21,"55111074030 ")
 ;;898
 ;;21,"55111074090 ")
 ;;899
 ;;21,"55111074910 ")
 ;;1118
 ;;21,"55111074930 ")
 ;;1119
 ;;21,"55111074990 ")
 ;;1120
 ;;21,"55111075010 ")
 ;;1401
 ;;21,"55111075030 ")
 ;;1402
 ;;21,"55111075090 ")
 ;;1403
 ;;21,"55154347609 ")
 ;;900
 ;;21,"55154347709 ")
 ;;1121
 ;;21,"55154347809 ")
 ;;1404
 ;;21,"55154506200 ")
 ;;729
 ;;21,"55154506300 ")
 ;;901
 ;;21,"55154506400 ")
 ;;1122
 ;;21,"55154566600 ")
 ;;259
 ;;21,"55175532503 ")
 ;;12
 ;;21,"55289029314 ")
 ;;902
 ;;21,"55289029330 ")
 ;;903
 ;;21,"55289029390 ")
 ;;904
 ;;21,"55289033814 ")
 ;;730
 ;;21,"55289033830 ")
 ;;731
 ;;21,"55289033890 ")
 ;;732
 ;;21,"55289039530 ")
 ;;1123
 ;;21,"55289039590 ")
 ;;1124
 ;;21,"55289069214 ")
 ;;501
 ;;21,"55289069230 ")
 ;;502
 ;;21,"55289088130 ")
 ;;260
 ;;21,"55567012700 ")
 ;;55
 ;;21,"55567012706 ")
 ;;56
 ;;21,"55567012718 ")
 ;;57
 ;;21,"55567012735 ")
 ;;58
 ;;21,"55567012769 ")
 ;;59
 ;;21,"55567012800 ")
 ;;261
 ;;21,"55567012806 ")
 ;;262
 ;;21,"55567012818 ")
 ;;263
 ;;21,"55567012835 ")
 ;;264
 ;;21,"55567012869 ")
 ;;265
 ;;21,"55567012900 ")
 ;;503
 ;;21,"55567012906 ")
 ;;504
 ;;21,"55567012918 ")
 ;;505
 ;;21,"55567012935 ")
 ;;506
 ;;21,"55567012969 ")
 ;;507
 ;;21,"55887031830 ")
 ;;1405
 ;;21,"55887031860 ")
 ;;1406
 ;;21,"55887031890 ")
 ;;1407
 ;;21,"55887032730 ")
 ;;905
 ;;21,"55887032760 ")
 ;;906
 ;;21,"55887032790 ")
 ;;907
 ;;21,"55887035001 ")
 ;;60
 ;;21,"55887035030 ")
 ;;61
 ;;21,"55887035060 ")
 ;;62
 ;;21,"55887035090 ")
 ;;63
 ;;21,"55887036930 ")
 ;;508
 ;;21,"55887036940 ")
 ;;509
 ;;21,"55887036960 ")
 ;;510
 ;;21,"55887036990 ")
 ;;511
 ;;21,"55887085810 ")
 ;;1125
 ;;21,"55887085830 ")
 ;;1126
 ;;21,"55887085860 ")
 ;;1127
 ;;21,"55887085890 ")
 ;;1128
 ;;21,"55887086130 ")
 ;;733
 ;;21,"55887086160 ")
 ;;734
 ;;21,"55887086190 ")
 ;;735
 ;;21,"55887097430 ")
 ;;266
 ;;21,"55887097490 ")
 ;;267
 ;;21,"57297046701 ")
 ;;64
 ;;21,"57297046703 ")
 ;;65
 ;;21,"57297046707 ")
 ;;66
 ;;21,"57297046801 ")
 ;;268
 ;;21,"57297046803 ")
 ;;269
 ;;21,"57297046807 ")
 ;;270
 ;;21,"57297046809 ")
 ;;271
 ;;21,"57297046901 ")
 ;;512
 ;;21,"57297046903 ")
 ;;513
 ;;21,"57297046907 ")
 ;;514
 ;;21,"57297046909 ")
 ;;515
 ;;21,"57297047801 ")
 ;;736
 ;;21,"57297047802 ")
 ;;737
 ;;21,"57297047803 ")
 ;;738
 ;;21,"57297047901 ")
 ;;908
 ;;21,"57297047902 ")
 ;;909
 ;;21,"57297047903 ")
 ;;910
 ;;21,"57297048001 ")
 ;;1129
 ;;21,"57297048002 ")
 ;;1130
 ;;21,"57297048003 ")
 ;;1131
 ;;21,"57297048101 ")
 ;;1408
 ;;21,"57297048102 ")
 ;;1409
 ;;21,"57297048103 ")
 ;;1410
 ;;21,"57297048203 ")
 ;;1283
 ;;21,"57297048206 ")
 ;;1284
 ;;21,"57297048209 ")
 ;;1285
 ;;21,"57297048213 ")
 ;;1286
 ;;21,"57866393601 ")
 ;;911
 ;;21,"57866394901 ")
 ;;1132
 ;;21,"57866640001 ")
 ;;67
 ;;21,"57866650001 ")
 ;;516
 ;;21,"57866660101 ")
 ;;272
 ;;21,"58016000600 ")
 ;;1133
 ;;21,"58016000601 ")
 ;;1134
 ;;21,"58016000602 ")
 ;;1135
 ;;21,"58016000603 ")
 ;;1136
 ;;21,"58016000604 ")
 ;;1137
 ;;21,"58016000605 ")
 ;;1138
 ;;21,"58016000606 ")
 ;;1139
 ;;21,"58016000607 ")
 ;;1140
 ;;21,"58016000608 ")
 ;;1141
 ;;21,"58016000609 ")
 ;;1142
 ;;21,"58016000610 ")
 ;;1143
 ;;21,"58016000630 ")
 ;;1144
 ;;21,"58016000660 ")
 ;;1145
 ;;21,"58016000690 ")
 ;;1146
 ;;21,"58016000700 ")
 ;;912
 ;;21,"58016000701 ")
 ;;913
 ;;21,"58016000702 ")
 ;;914
 ;;21,"58016000703 ")
 ;;915
 ;;21,"58016000704 ")
 ;;916
 ;;21,"58016000705 ")
 ;;917
 ;;21,"58016000706 ")
 ;;918
 ;;21,"58016000707 ")
 ;;919
 ;;21,"58016000708 ")
 ;;920
 ;;21,"58016000709 ")
 ;;921
 ;;21,"58016000710 ")
 ;;922
 ;;21,"58016000730 ")
 ;;923
 ;;21,"58016000760 ")
 ;;924
 ;;21,"58016000790 ")
 ;;925
 ;;21,"58016000800 ")
 ;;739
 ;;21,"58016000830 ")
 ;;740
 ;;21,"58016000860 ")
 ;;741
 ;;21,"58016000890 ")
 ;;742
 ;;21,"58016090000 ")
 ;;273
 ;;21,"58016090001 ")
 ;;274
 ;;21,"58016090002 ")
 ;;275
 ;;21,"58016090003 ")
 ;;276
 ;;21,"58016090004 ")
 ;;277
 ;;21,"58016090005 ")
 ;;278
 ;;21,"58016090006 ")
 ;;279
 ;;21,"58016090007 ")
 ;;280
 ;;21,"58016090008 ")
 ;;281
 ;;21,"58016090009 ")
 ;;282
 ;;21,"58016090010 ")
 ;;283
 ;;21,"58016090012 ")
 ;;284
 ;;21,"58016090014 ")
 ;;285
 ;;21,"58016090015 ")
 ;;286
 ;;21,"58016090016 ")
 ;;287
 ;;21,"58016090018 ")
 ;;288
 ;;21,"58016090020 ")
 ;;289
 ;;21,"58016090021 ")
 ;;290
 ;;21,"58016090024 ")
 ;;291
 ;;21,"58016090025 ")
 ;;292
 ;;21,"58016090026 ")
 ;;293
 ;;21,"58016090027 ")
 ;;294
 ;;21,"58016090028 ")
 ;;295
 ;;21,"58016090030 ")
 ;;296
 ;;21,"58016090032 ")
 ;;297
 ;;21,"58016090035 ")
 ;;298
 ;;21,"58016090036 ")
 ;;299
 ;;21,"58016090040 ")
 ;;300
 ;;21,"58016090042 ")
 ;;301
 ;;21,"58016090044 ")
 ;;302
 ;;21,"58016090045 ")
 ;;303
 ;;21,"58016090056 ")
 ;;304
 ;;21,"58016090060 ")
 ;;305
 ;;21,"58016090067 ")
 ;;306
 ;;21,"58016090069 ")
 ;;307
 ;;21,"58016090070 ")
 ;;308
 ;;21,"58016090071 ")
 ;;309
 ;;21,"58016090072 ")
 ;;310
 ;;21,"58016090073 ")
 ;;311
 ;;21,"58016090075 ")
 ;;312
 ;;21,"58016090076 ")
 ;;313
 ;;21,"58016090077 ")
 ;;314
 ;;21,"58016090079 ")
 ;;315
 ;;21,"58016090080 ")
 ;;316
 ;;21,"58016090081 ")
 ;;317
 ;;21,"58016090083 ")
 ;;318
 ;;21,"58016090084 ")
 ;;319
 ;;21,"58016090087 ")
 ;;320
 ;;21,"58016090089 ")
 ;;321
 ;;21,"58016090090 ")
 ;;322
 ;;21,"58016090091 ")
 ;;323
 ;;21,"58016090092 ")
 ;;324
 ;;21,"58016090093 ")
 ;;325
 ;;21,"58016090096 ")
 ;;326
 ;;21,"58016090097 ")
 ;;327
 ;;21,"58016090098 ")
 ;;328
 ;;21,"58016090099 ")
 ;;329
 ;;21,"58016092200 ")
 ;;517
 ;;21,"58016092201 ")
 ;;518
 ;;21,"58016092202 ")
 ;;519
 ;;21,"58016092203 ")
 ;;520
 ;;21,"58016092204 ")
 ;;521
 ;;21,"58016092205 ")
 ;;522
 ;;21,"58016092206 ")
 ;;523
 ;;21,"58016092207 ")
 ;;524
 ;;21,"58016092208 ")
 ;;525
 ;;21,"58016092209 ")
 ;;526
 ;;21,"58016092210 ")
 ;;527
 ;;21,"58016092212 ")
 ;;528
 ;;21,"58016092214 ")
 ;;529
 ;;21,"58016092215 ")
 ;;530
 ;;21,"58016092216 ")
 ;;531
 ;;21,"58016092218 ")
 ;;532
 ;;21,"58016092220 ")
 ;;533
 ;;21,"58016092221 ")
 ;;534
 ;;21,"58016092224 ")
 ;;535
 ;;21,"58016092225 ")
 ;;536
 ;;21,"58016092226 ")
 ;;537
 ;;21,"58016092227 ")
 ;;538
 ;;21,"58016092228 ")
 ;;539
 ;;21,"58016092230 ")
 ;;540
 ;;21,"58016092232 ")
 ;;541
 ;;21,"58016092235 ")
 ;;542
 ;;21,"58016092236 ")
 ;;543
 ;;21,"58016092240 ")
 ;;544
 ;;21,"58016092242 ")
 ;;545
 ;;21,"58016092244 ")
 ;;546
 ;;21,"58016092245 ")
 ;;547
 ;;21,"58016092248 ")
 ;;548
 ;;21,"58016092256 ")
 ;;549
 ;;21,"58016092260 ")
 ;;550
 ;;21,"58016092267 ")
 ;;551
 ;;21,"58016092269 ")
 ;;552
 ;;21,"58016092270 ")
 ;;553
 ;;21,"58016092271 ")
 ;;554
 ;;21,"58016092272 ")
 ;;555
 ;;21,"58016092273 ")
 ;;556
 ;;21,"58016092275 ")
 ;;557
 ;;21,"58016092276 ")
 ;;558
 ;;21,"58016092277 ")
 ;;559
 ;;21,"58016092279 ")
 ;;560
 ;;21,"58016092280 ")
 ;;561
 ;;21,"58016092281 ")
 ;;562
 ;;21,"58016092282 ")
 ;;563
 ;;21,"58016092283 ")
 ;;564
 ;;21,"58016092284 ")
 ;;565
 ;;21,"58016092287 ")
 ;;566
 ;;21,"58016092289 ")
 ;;567
 ;;21,"58016092290 ")
 ;;568
 ;;21,"58016092291 ")
 ;;569
 ;;21,"58016092292 ")
 ;;570
 ;;21,"58016092293 ")
 ;;571
 ;;21,"58016092296 ")
 ;;572
 ;;21,"58016092297 ")
 ;;573
 ;;21,"58016092298 ")
 ;;574
 ;;21,"58016092299 ")
 ;;575
 ;;21,"58016097900 ")
 ;;68
 ;;21,"58016097901 ")
 ;;69
 ;;21,"58016097902 ")
 ;;70
 ;;21,"58016097903 ")
 ;;71
 ;;21,"58016097904 ")
 ;;72
 ;;21,"58016097905 ")
 ;;73
 ;;21,"58016097906 ")
 ;;74
 ;;21,"58016097907 ")
 ;;75
 ;;21,"58016097908 ")
 ;;76
 ;;21,"58016097909 ")
 ;;77
 ;;21,"58016097910 ")
 ;;78
 ;;21,"58016097912 ")
 ;;79
 ;;21,"58016097914 ")
 ;;80
 ;;21,"58016097915 ")
 ;;81
 ;;21,"58016097916 ")
 ;;82
 ;;21,"58016097918 ")
 ;;83
 ;;21,"58016097920 ")
 ;;84
 ;;21,"58016097921 ")
 ;;85
 ;;21,"58016097924 ")
 ;;86
 ;;21,"58016097925 ")
 ;;87
 ;;21,"58016097926 ")
 ;;88
 ;;21,"58016097928 ")
 ;;89
 ;;21,"58016097930 ")
 ;;90
 ;;21,"58016097932 ")
 ;;91
 ;;21,"58016097935 ")
 ;;92
 ;;21,"58016097936 ")
 ;;93
 ;;21,"58016097940 ")
 ;;94
 ;;21,"58016097942 ")
 ;;95
 ;;21,"58016097944 ")
 ;;96
 ;;21,"58016097945 ")
 ;;97
 ;;21,"58016097948 ")
 ;;98
 ;;21,"58016097950 ")
 ;;99
 ;;21,"58016097956 ")
 ;;100
 ;;21,"58016097960 ")
 ;;101
 ;;21,"58016097967 ")
 ;;102
 ;;21,"58016097969 ")
 ;;103
 ;;21,"58016097970 ")
 ;;104
 ;;21,"58016097971 ")
 ;;105
 ;;21,"58016097972 ")
 ;;106
 ;;21,"58016097973 ")
 ;;107
 ;;21,"58016097975 ")
 ;;108
 ;;21,"58016097976 ")
 ;;109
 ;;21,"58016097977 ")
 ;;110
 ;;21,"58016097979 ")
 ;;111
 ;;21,"58016097980 ")
 ;;112
 ;;21,"58016097981 ")
 ;;113
 ;;21,"58016097982 ")
 ;;114
 ;;21,"58016097983 ")
 ;;115
 ;;21,"58016097984 ")
 ;;116
 ;;21,"58016097987 ")
 ;;117
 ;;21,"58016097989 ")
 ;;118
 ;;21,"58016097990 ")
 ;;119
 ;;21,"58016097991 ")
 ;;120
 ;;21,"58016097992 ")
 ;;121
 ;;21,"58016097993 ")
 ;;122
 ;;21,"58016097996 ")
 ;;123
 ;;21,"58016097997 ")
 ;;124
 ;;21,"58016097998 ")
 ;;125
 ;;21,"58016097999 ")
 ;;126
 ;;21,"58864078030 ")
 ;;330
 ;;21,"58864078060 ")
 ;;331
 ;;21,"58864078130 ")
 ;;127
 ;;21,"59630062899 ")
 ;;669
 ;;21,"60312036300 ")
 ;;1492
 ;;21,"60312036400 ")
 ;;1495
 ;;21,"60312036500 ")
 ;;1498
 ;;21,"60312036600 ")
 ;;1501
 ;;21,"60312054300 ")
 ;;1411
 ;;21,"60312054307 ")
 ;;1412
 ;;21,"60312054328 ")
 ;;1413
 ;;21,"60312054330 ")
 ;;1414
 ;;21,"60312054331 ")
 ;;1415
 ;;21,"60312054340 ")
 ;;1416
 ;;21,"60312054354 ")
 ;;1417
 ;;21,"60312054382 ")
 ;;1418
 ;;21,"60312080000 ")
 ;;1287
 ;;21,"60312080100 ")
 ;;743
 ;;21,"60312080200 ")
 ;;926
 ;;21,"60312080300 ")
 ;;1147
 ;;21,"60312089200 ")
 ;;1419
 ;;21,"60312089210 ")
 ;;1420
 ;;21,"60312089230 ")
 ;;1421
 ;;21,"60312089290 ")
 ;;1422
 ;;21,"60505017700 ")
 ;;128
 ;;21,"60505017701 ")
 ;;129
 ;;21,"60505017703 ")
 ;;130
 ;;21,"60505017709 ")
 ;;131
 ;;21,"60505017800 ")
 ;;332
 ;;21,"60505017801 ")
 ;;333
 ;;21,"60505017803 ")
 ;;334
 ;;21,"60505017809 ")
 ;;335
 ;;21,"60505017900 ")
 ;;576
 ;;21,"60505017901 ")
 ;;577
 ;;21,"60505017903 ")
 ;;578
 ;;21,"60505017909 ")
 ;;579
 ;;21,"61258336901 ")
 ;;1493
 ;;21,"61258337000 ")
 ;;1496
 ;;21,"61258337100 ")
 ;;1499
 ;;21,"61392073731 ")
 ;;580
 ;;21,"61392073739 ")
 ;;581
 ;;21,"61392079725 ")
 ;;132
 ;;21,"61392079730 ")
 ;;133
 ;;21,"61392079731 ")
 ;;134
 ;;21,"61392079739 ")
 ;;135
 ;;21,"61442014101 ")
 ;;136
 ;;21,"61442014110 ")
 ;;137
 ;;21,"61442014201 ")
 ;;336