BGP8FXSD ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"63874-0330-45 ")
 ;;348
 ;;21,"63874-0330-50 ")
 ;;349
 ;;21,"63874-0330-56 ")
 ;;350
 ;;21,"63874-0330-60 ")
 ;;351
 ;;21,"63874-0330-72 ")
 ;;352
 ;;21,"63874-0330-74 ")
 ;;353
 ;;21,"63874-0330-75 ")
 ;;354
 ;;21,"63874-0330-77 ")
 ;;355
 ;;21,"63874-0330-80 ")
 ;;356
 ;;21,"63874-0330-84 ")
 ;;357
 ;;21,"63874-0330-90 ")
 ;;358
 ;;21,"63874-0371-01 ")
 ;;1078
 ;;21,"63874-0371-03 ")
 ;;1079
 ;;21,"63874-0371-04 ")
 ;;1080
 ;;21,"63874-0371-12 ")
 ;;1081
 ;;21,"63874-0371-14 ")
 ;;1082
 ;;21,"63874-0371-15 ")
 ;;1083
 ;;21,"63874-0371-20 ")
 ;;1084
 ;;21,"63874-0371-24 ")
 ;;1085
 ;;21,"63874-0371-30 ")
 ;;1086
 ;;21,"63874-0371-40 ")
 ;;1087
 ;;21,"63874-0371-50 ")
 ;;1088
 ;;21,"63874-0371-60 ")
 ;;1089
 ;;21,"63874-0371-73 ")
 ;;1090
 ;;21,"63874-0371-84 ")
 ;;1091
 ;;21,"63874-0372-01 ")
 ;;1253
 ;;21,"63874-0372-03 ")
 ;;1254
 ;;21,"63874-0372-04 ")
 ;;1255
 ;;21,"63874-0372-08 ")
 ;;1256
 ;;21,"63874-0372-10 ")
 ;;1257
 ;;21,"63874-0372-12 ")
 ;;1258
 ;;21,"63874-0372-14 ")
 ;;1259
 ;;21,"63874-0372-15 ")
 ;;1260
 ;;21,"63874-0372-20 ")
 ;;1261
 ;;21,"63874-0372-21 ")
 ;;1262
 ;;21,"63874-0372-24 ")
 ;;1263
 ;;21,"63874-0372-28 ")
 ;;1264
 ;;21,"63874-0372-30 ")
 ;;1265
 ;;21,"63874-0372-40 ")
 ;;1266
 ;;21,"63874-0372-42 ")
 ;;1267
 ;;21,"63874-0372-50 ")
 ;;1268
 ;;21,"63874-0372-56 ")
 ;;1269
 ;;21,"63874-0372-60 ")
 ;;1270
 ;;21,"63874-0372-90 ")
 ;;1271
 ;;21,"63874-0419-01 ")
 ;;524
 ;;21,"63874-0419-03 ")
 ;;525
 ;;21,"63874-0419-04 ")
 ;;526
 ;;21,"63874-0419-08 ")
 ;;527
 ;;21,"63874-0419-10 ")
 ;;528
 ;;21,"63874-0419-12 ")
 ;;529
 ;;21,"63874-0419-14 ")
 ;;530
 ;;21,"63874-0419-15 ")
 ;;531
 ;;21,"63874-0419-16 ")
 ;;532
 ;;21,"63874-0419-20 ")
 ;;533
 ;;21,"63874-0419-21 ")
 ;;534
 ;;21,"63874-0419-24 ")
 ;;535
 ;;21,"63874-0419-28 ")
 ;;536
 ;;21,"63874-0419-30 ")
 ;;537
 ;;21,"63874-0419-40 ")
 ;;538
 ;;21,"63874-0419-42 ")
 ;;539
 ;;21,"63874-0419-50 ")
 ;;540
 ;;21,"63874-0419-56 ")
 ;;541
 ;;21,"63874-0419-60 ")
 ;;542
 ;;21,"63874-0419-72 ")
 ;;543
 ;;21,"63874-0419-74 ")
 ;;544
 ;;21,"63874-0419-77 ")
 ;;545
 ;;21,"63874-0419-90 ")
 ;;546
 ;;21,"63874-0531-10 ")
 ;;1359
 ;;21,"63874-0531-14 ")
 ;;1360
 ;;21,"63874-0531-30 ")
 ;;1361
 ;;21,"63874-0531-40 ")
 ;;1362
 ;;21,"66267-0042-12 ")
 ;;359
 ;;21,"66267-0042-15 ")
 ;;360
 ;;21,"66267-0042-20 ")
 ;;361
 ;;21,"66267-0042-30 ")
 ;;362
 ;;21,"66267-0042-40 ")
 ;;363
 ;;21,"66267-0042-60 ")
 ;;364
 ;;21,"66267-0042-90 ")
 ;;365
 ;;21,"66267-0042-91 ")
 ;;366
 ;;21,"66267-0043-12 ")
 ;;367
 ;;21,"66267-0043-15 ")
 ;;368
 ;;21,"66267-0043-20 ")
 ;;369
 ;;21,"66267-0043-30 ")
 ;;370
 ;;21,"66267-0043-40 ")
 ;;371
 ;;21,"66267-0043-45 ")
 ;;372
 ;;21,"66267-0043-60 ")
 ;;373
 ;;21,"66267-0043-90 ")
 ;;374
 ;;21,"66267-0043-91 ")
 ;;375
 ;;21,"66267-0055-20 ")
 ;;547
 ;;21,"66267-0055-30 ")
 ;;548
 ;;21,"66267-0055-40 ")
 ;;549
 ;;21,"66267-0064-10 ")
 ;;796
 ;;21,"66267-0064-15 ")
 ;;797
 ;;21,"66267-0064-20 ")
 ;;798
 ;;21,"66267-0064-30 ")
 ;;799
 ;;21,"66267-0064-40 ")
 ;;800
 ;;21,"66267-0064-45 ")
 ;;801
 ;;21,"66267-0064-60 ")
 ;;802
 ;;21,"66267-0064-90 ")
 ;;803
 ;;21,"66267-0064-91 ")
 ;;804
 ;;21,"66267-0145-20 ")
 ;;1092
 ;;21,"66267-0145-30 ")
 ;;1093
 ;;21,"66267-0145-40 ")
 ;;1094
 ;;21,"66267-0145-60 ")
 ;;1095
 ;;21,"66267-0145-90 ")
 ;;1096
 ;;21,"66267-0146-12 ")
 ;;1272
 ;;21,"66267-0146-20 ")
 ;;1273
 ;;21,"66267-0146-30 ")
 ;;1274
 ;;21,"66267-0146-40 ")
 ;;1275
 ;;21,"66267-0146-60 ")
 ;;1276
 ;;21,"66267-0157-14 ")
 ;;1363
 ;;21,"66267-0157-20 ")
 ;;1364
 ;;21,"66267-0158-15 ")
 ;;1365
 ;;21,"66267-0158-30 ")
 ;;1366
 ;;21,"66267-0158-60 ")
 ;;1367
 ;;21,"66267-0193-07 ")
 ;;896
 ;;21,"66267-0193-10 ")
 ;;897
 ;;21,"66267-0193-14 ")
 ;;898
 ;;21,"66267-0193-20 ")
 ;;899
 ;;21,"66267-0193-28 ")
 ;;900
 ;;21,"66267-0193-30 ")
 ;;901
 ;;21,"66267-0193-40 ")
 ;;902
 ;;21,"66267-0611-08 ")
 ;;932
 ;;21,"66267-0611-15 ")
 ;;933
 ;;21,"66267-0611-20 ")
 ;;934
 ;;21,"66267-0611-21 ")
 ;;935
 ;;21,"66267-0611-30 ")
 ;;936
 ;;21,"66267-0611-40 ")
 ;;937
 ;;21,"66267-0611-42 ")
 ;;938
 ;;21,"66267-1007-00 ")
 ;;376
 ;;21,"66336-0581-15 ")
 ;;805
 ;;21,"66336-0581-20 ")
 ;;806
 ;;21,"66336-0581-30 ")
 ;;807
 ;;21,"68115-0063-00 ")
 ;;377
 ;;21,"68115-0063-04 ")
 ;;378
 ;;21,"68115-0063-12 ")
 ;;379
 ;;21,"68115-0063-15 ")
 ;;380
 ;;21,"68115-0063-20 ")
 ;;381
 ;;21,"68115-0063-28 ")
 ;;382
 ;;21,"68115-0063-30 ")
 ;;383
 ;;21,"68115-0063-40 ")
 ;;384
 ;;21,"68115-0063-45 ")
 ;;385
 ;;21,"68115-0063-48 ")
 ;;386
 ;;21,"68115-0063-50 ")
 ;;387
 ;;21,"68115-0063-56 ")
 ;;388
 ;;21,"68115-0063-60 ")
 ;;389
 ;;21,"68115-0063-90 ")
 ;;390
 ;;21,"68115-0063-96 ")
 ;;391
 ;;21,"68115-0063-99 ")
 ;;392
 ;;21,"68115-0077-00 ")
 ;;550
 ;;21,"68115-0077-15 ")
 ;;551
 ;;21,"68115-0077-30 ")
 ;;552
 ;;21,"68115-0077-40 ")
 ;;553
 ;;21,"68115-0077-60 ")
 ;;554
 ;;21,"68115-0077-90 ")
 ;;555
 ;;21,"68115-0095-00 ")
 ;;808
 ;;21,"68115-0095-12 ")
 ;;809
 ;;21,"68115-0095-15 ")
 ;;810
 ;;21,"68115-0095-20 ")
 ;;811
 ;;21,"68115-0095-30 ")
 ;;812
 ;;21,"68115-0095-40 ")
 ;;813
 ;;21,"68115-0095-45 ")
 ;;814
 ;;21,"68115-0095-60 ")
 ;;815
 ;;21,"68115-0095-90 ")
 ;;816
 ;;21,"68115-0095-99 ")
 ;;817
 ;;21,"68115-0234-00 ")
 ;;1097
 ;;21,"68115-0234-20 ")
 ;;1098
 ;;21,"68115-0234-30 ")
 ;;1099
 ;;21,"68115-0234-40 ")
 ;;1100
 ;;21,"68115-0234-60 ")
 ;;1101
 ;;21,"68115-0234-90 ")
 ;;1102
 ;;21,"68115-0235-20 ")
 ;;1277
 ;;21,"68115-0235-30 ")
 ;;1278
 ;;21,"68115-0235-60 ")
 ;;1279
 ;;21,"68115-0235-90 ")
 ;;1280
 ;;21,"68115-0235-99 ")
 ;;1281
 ;;21,"68115-0264-30 ")
 ;;1368
 ;;21,"68115-0264-60 ")
 ;;1369
 ;;21,"68115-0318-30 ")
 ;;903
 ;;21,"68115-0318-40 ")
 ;;904
 ;;21,"68115-0319-00 ")
 ;;939
 ;;21,"68115-0319-08 ")
 ;;940
 ;;21,"68115-0319-15 ")
 ;;941
 ;;21,"68115-0319-20 ")
 ;;942
 ;;21,"68115-0319-30 ")
 ;;943
 ;;21,"68115-0319-90 ")
 ;;944
 ;;21,"68115-0319-99 ")
 ;;945
 ;;21,"68115-0440-00 ")
 ;;393
 ;;21,"68115-0440-04 ")
 ;;394
 ;;21,"68115-0440-12 ")
 ;;395
 ;;21,"68115-0440-15 ")
 ;;396
 ;;21,"68115-0440-20 ")
 ;;397
 ;;21,"68115-0440-28 ")
 ;;398
 ;;21,"68115-0440-30 ")
 ;;399
 ;;21,"68115-0440-40 ")
 ;;400
 ;;21,"68115-0440-45 ")
 ;;401
 ;;21,"68115-0440-48 ")
 ;;402
 ;;21,"68115-0440-50 ")
 ;;403
 ;;21,"68115-0440-56 ")
 ;;404
 ;;21,"68115-0440-60 ")
 ;;405
 ;;21,"68115-0440-90 ")
 ;;406
 ;;21,"68115-0440-97 ")
 ;;407
 ;;21,"68115-0440-99 ")
 ;;408
 ;;21,"68115-0450-30 ")
 ;;838
 ;;9002226,629,.01)
 ;;BGP HEDIS SKL MUSCLE RELAX NDC
 ;;9002226,629,.02)
 ;;@
 ;;9002226,629,.04)
 ;;n
 ;;9002226,629,.06)
 ;;@
 ;;9002226,629,.08)
 ;;@
 ;;9002226,629,.09)
 ;;@
 ;;9002226,629,.11)
 ;;@
 ;;9002226,629,.12)
 ;;@
 ;;9002226,629,.13)
 ;;1
 ;;9002226,629,.14)
 ;;@
 ;;9002226,629,.15)
 ;;@
 ;;9002226,629,.16)
 ;;@
 ;;9002226,629,.17)
 ;;@
 ;;9002226,629,3101)
 ;;@
 ;;9002226.02101,"629,00005-3562-23 ",.01)
 ;;00005-3562-23
 ;;9002226.02101,"629,00005-3562-23 ",.02)
 ;;00005-3562-23
 ;;9002226.02101,"629,00005-3563-23 ",.01)
 ;;00005-3563-23
 ;;9002226.02101,"629,00005-3563-23 ",.02)
 ;;00005-3563-23
 ;;9002226.02101,"629,00005-3563-31 ",.01)
 ;;00005-3563-31
 ;;9002226.02101,"629,00005-3563-31 ",.02)
 ;;00005-3563-31
 ;;9002226.02101,"629,00006-0931-28 ",.01)
 ;;00006-0931-28
 ;;9002226.02101,"629,00006-0931-28 ",.02)
 ;;00006-0931-28
 ;;9002226.02101,"629,00006-0931-68 ",.01)
 ;;00006-0931-68
 ;;9002226.02101,"629,00006-0931-68 ",.02)
 ;;00006-0931-68
 ;;9002226.02101,"629,00031-7409-87 ",.01)
 ;;00031-7409-87
 ;;9002226.02101,"629,00031-7409-87 ",.02)
 ;;00031-7409-87
 ;;9002226.02101,"629,00031-7409-94 ",.01)
 ;;00031-7409-94
 ;;9002226.02101,"629,00031-7409-94 ",.02)
 ;;00031-7409-94
 ;;9002226.02101,"629,00031-7429-63 ",.01)
 ;;00031-7429-63
 ;;9002226.02101,"629,00031-7429-63 ",.02)
 ;;00031-7429-63
 ;;9002226.02101,"629,00031-7429-70 ",.01)
 ;;00031-7429-70
 ;;9002226.02101,"629,00031-7429-70 ",.02)
 ;;00031-7429-70
 ;;9002226.02101,"629,00031-7449-63 ",.01)
 ;;00031-7449-63
 ;;9002226.02101,"629,00031-7449-63 ",.02)
 ;;00031-7449-63
 ;;9002226.02101,"629,00031-7449-70 ",.01)
 ;;00031-7449-70
 ;;9002226.02101,"629,00031-7449-70 ",.02)
 ;;00031-7449-70
 ;;9002226.02101,"629,00031-7469-63 ",.01)
 ;;00031-7469-63
 ;;9002226.02101,"629,00031-7469-63 ",.02)
 ;;00031-7469-63
 ;;9002226.02101,"629,00037-2001-01 ",.01)
 ;;00037-2001-01
 ;;9002226.02101,"629,00037-2001-01 ",.02)
 ;;00037-2001-01
 ;;9002226.02101,"629,00037-2001-03 ",.01)
 ;;00037-2001-03
 ;;9002226.02101,"629,00037-2001-03 ",.02)
 ;;00037-2001-03
 ;;9002226.02101,"629,00037-2001-85 ",.01)
 ;;00037-2001-85
 ;;9002226.02101,"629,00037-2001-85 ",.02)
 ;;00037-2001-85
 ;;9002226.02101,"629,00037-2103-01 ",.01)
 ;;00037-2103-01
 ;;9002226.02101,"629,00037-2103-01 ",.02)
 ;;00037-2103-01
 ;;9002226.02101,"629,00037-2103-03 ",.01)
 ;;00037-2103-03
 ;;9002226.02101,"629,00037-2103-03 ",.02)
 ;;00037-2103-03
 ;;9002226.02101,"629,00037-2103-85 ",.01)
 ;;00037-2103-85
 ;;9002226.02101,"629,00037-2103-85 ",.02)
 ;;00037-2103-85
 ;;9002226.02101,"629,00037-2403-01 ",.01)
 ;;00037-2403-01
 ;;9002226.02101,"629,00037-2403-01 ",.02)
 ;;00037-2403-01
 ;;9002226.02101,"629,00045-0325-60 ",.01)
 ;;00045-0325-60
 ;;9002226.02101,"629,00045-0325-60 ",.02)
 ;;00045-0325-60
 ;;9002226.02101,"629,00086-0062-10 ",.01)
 ;;00086-0062-10
 ;;9002226.02101,"629,00086-0062-10 ",.02)
 ;;00086-0062-10
 ;;9002226.02101,"629,00086-0062-50 ",.01)
 ;;00086-0062-50
 ;;9002226.02101,"629,00086-0062-50 ",.02)
 ;;00086-0062-50
 ;;9002226.02101,"629,00089-0221-10 ",.01)
 ;;00089-0221-10
 ;;9002226.02101,"629,00089-0221-10 ",.02)
 ;;00089-0221-10
 ;;9002226.02101,"629,00089-0231-10 ",.01)
 ;;00089-0231-10
 ;;9002226.02101,"629,00089-0231-10 ",.02)
 ;;00089-0231-10
 ;;9002226.02101,"629,00089-0233-10 ",.01)
 ;;00089-0233-10
 ;;9002226.02101,"629,00089-0233-10 ",.02)
 ;;00089-0233-10
 ;;9002226.02101,"629,00089-0233-50 ",.01)
 ;;00089-0233-50
 ;;9002226.02101,"629,00089-0233-50 ",.02)
 ;;00089-0233-50
 ;;9002226.02101,"629,00089-0540-06 ",.01)
 ;;00089-0540-06
 ;;9002226.02101,"629,00089-0540-06 ",.02)
 ;;00089-0540-06
 ;;9002226.02101,"629,00091-7429-63 ",.01)
 ;;00091-7429-63
 ;;9002226.02101,"629,00091-7429-63 ",.02)
 ;;00091-7429-63
 ;;9002226.02101,"629,00091-7449-63 ",.01)
 ;;00091-7449-63
 ;;9002226.02101,"629,00091-7449-63 ",.02)
 ;;00091-7449-63
 ;;9002226.02101,"629,00091-7449-70 ",.01)
 ;;00091-7449-70
 ;;9002226.02101,"629,00091-7449-70 ",.02)
 ;;00091-7449-70
 ;;9002226.02101,"629,00093-0542-01 ",.01)
 ;;00093-0542-01
 ;;9002226.02101,"629,00093-0542-01 ",.02)
 ;;00093-0542-01
 ;;9002226.02101,"629,00093-0542-05 ",.01)
 ;;00093-0542-05
 ;;9002226.02101,"629,00093-0542-05 ",.02)
 ;;00093-0542-05
 ;;9002226.02101,"629,00115-2011-01 ",.01)
 ;;00115-2011-01
 ;;9002226.02101,"629,00115-2011-01 ",.02)
 ;;00115-2011-01
 ;;9002226.02101,"629,00115-2011-02 ",.01)
 ;;00115-2011-02
 ;;9002226.02101,"629,00115-2011-02 ",.02)
 ;;00115-2011-02
 ;;9002226.02101,"629,00115-3900-01 ",.01)
 ;;00115-3900-01
 ;;9002226.02101,"629,00115-3900-01 ",.02)
 ;;00115-3900-01
 ;;9002226.02101,"629,00115-3900-02 ",.01)
 ;;00115-3900-02
 ;;9002226.02101,"629,00115-3900-02 ",.02)
 ;;00115-3900-02
 ;;9002226.02101,"629,00115-3900-03 ",.01)
 ;;00115-3900-03
 ;;9002226.02101,"629,00115-3900-03 ",.02)
 ;;00115-3900-03
 ;;9002226.02101,"629,00115-3902-01 ",.01)
 ;;00115-3902-01
 ;;9002226.02101,"629,00115-3902-01 ",.02)
 ;;00115-3902-01
 ;;9002226.02101,"629,00115-3902-02 ",.01)
 ;;00115-3902-02
 ;;9002226.02101,"629,00115-3902-02 ",.02)
 ;;00115-3902-02
 ;;9002226.02101,"629,00115-3902-03 ",.01)
 ;;00115-3902-03
 ;;9002226.02101,"629,00115-3902-03 ",.02)
 ;;00115-3902-03
 ;;9002226.02101,"629,00143-1176-01 ",.01)
 ;;00143-1176-01
 ;;9002226.02101,"629,00143-1176-01 ",.02)
 ;;00143-1176-01
 ;;9002226.02101,"629,00143-1176-05 ",.01)
 ;;00143-1176-05
 ;;9002226.02101,"629,00143-1176-05 ",.02)
 ;;00143-1176-05
 ;;9002226.02101,"629,00143-1176-10 ",.01)
 ;;00143-1176-10
 ;;9002226.02101,"629,00143-1176-10 ",.02)
 ;;00143-1176-10
 ;;9002226.02101,"629,00143-1290-01 ",.01)
 ;;00143-1290-01
 ;;9002226.02101,"629,00143-1290-01 ",.02)
 ;;00143-1290-01
 ;;9002226.02101,"629,00143-1290-05 ",.01)
 ;;00143-1290-05
 ;;9002226.02101,"629,00143-1290-05 ",.02)
 ;;00143-1290-05
 ;;9002226.02101,"629,00143-1292-01 ",.01)
 ;;00143-1292-01
 ;;9002226.02101,"629,00143-1292-01 ",.02)
 ;;00143-1292-01
 ;;9002226.02101,"629,00143-1292-05 ",.01)
 ;;00143-1292-05
 ;;9002226.02101,"629,00143-1292-05 ",.02)
 ;;00143-1292-05
 ;;9002226.02101,"629,00172-2813-60 ",.01)
 ;;00172-2813-60
 ;;9002226.02101,"629,00172-2813-60 ",.02)
 ;;00172-2813-60
 ;;9002226.02101,"629,00172-2813-70 ",.01)
 ;;00172-2813-70
 ;;9002226.02101,"629,00172-2813-70 ",.02)
 ;;00172-2813-70
 ;;9002226.02101,"629,00182-0572-01 ",.01)
 ;;00182-0572-01
 ;;9002226.02101,"629,00182-0572-01 ",.02)
 ;;00182-0572-01