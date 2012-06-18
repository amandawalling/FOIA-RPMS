BGP12XB ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"23490-7955-03 ")
 ;;550
 ;;21,"23490-7973-03 ")
 ;;88
 ;;21,"23490-7974-03 ")
 ;;89
 ;;21,"23490-7975-06 ")
 ;;90
 ;;21,"23589-0036-16 ")
 ;;1045
 ;;21,"25332-1113-01 ")
 ;;1083
 ;;21,"33358-0287-15 ")
 ;;580
 ;;21,"33358-0287-30 ")
 ;;581
 ;;21,"33358-0287-60 ")
 ;;582
 ;;21,"35356-0003-28 ")
 ;;583
 ;;21,"35356-0003-30 ")
 ;;584
 ;;21,"35356-0003-60 ")
 ;;585
 ;;21,"35356-0003-90 ")
 ;;586
 ;;21,"35356-0147-30 ")
 ;;23
 ;;21,"35356-0147-90 ")
 ;;24
 ;;21,"35356-0148-30 ")
 ;;25
 ;;21,"35356-0148-90 ")
 ;;26
 ;;21,"35356-0149-30 ")
 ;;27
 ;;21,"35356-0149-90 ")
 ;;28
 ;;21,"35356-0150-30 ")
 ;;29
 ;;21,"35356-0150-90 ")
 ;;30
 ;;21,"35356-0151-30 ")
 ;;204
 ;;21,"35356-0151-90 ")
 ;;205
 ;;21,"35356-0152-30 ")
 ;;206
 ;;21,"35356-0152-90 ")
 ;;207
 ;;21,"35356-0153-30 ")
 ;;208
 ;;21,"35356-0153-90 ")
 ;;209
 ;;21,"35356-0154-30 ")
 ;;210
 ;;21,"35356-0154-90 ")
 ;;211
 ;;21,"35356-0158-30 ")
 ;;403
 ;;21,"35356-0158-90 ")
 ;;404
 ;;21,"35356-0159-30 ")
 ;;405
 ;;21,"35356-0159-90 ")
 ;;406
 ;;21,"35356-0160-30 ")
 ;;407
 ;;21,"35356-0160-90 ")
 ;;408
 ;;21,"35356-0165-30 ")
 ;;1063
 ;;21,"35356-0165-90 ")
 ;;1064
 ;;21,"49999-0003-28 ")
 ;;587
 ;;21,"49999-0360-30 ")
 ;;680
 ;;21,"49999-0361-15 ")
 ;;822
 ;;21,"49999-0361-30 ")
 ;;823
 ;;21,"49999-0405-07 ")
 ;;824
 ;;21,"49999-0405-28 ")
 ;;825
 ;;21,"49999-0405-30 ")
 ;;826
 ;;21,"49999-0457-28 ")
 ;;365
 ;;21,"49999-0517-15 ")
 ;;827
 ;;21,"49999-0517-30 ")
 ;;828
 ;;21,"49999-0517-45 ")
 ;;829
 ;;21,"49999-0517-60 ")
 ;;830
 ;;21,"49999-0724-28 ")
 ;;831
 ;;21,"49999-0724-30 ")
 ;;832
 ;;21,"49999-0724-60 ")
 ;;833
 ;;21,"49999-0842-30 ")
 ;;504
 ;;21,"49999-0843-30 ")
 ;;505
 ;;21,"49999-0844-30 ")
 ;;506
 ;;21,"49999-0925-00 ")
 ;;311
 ;;21,"50458-0585-01 ")
 ;;212
 ;;21,"50458-0586-01 ")
 ;;213
 ;;21,"50458-0587-01 ")
 ;;214
 ;;21,"50458-0588-01 ")
 ;;215
 ;;21,"51991-0712-50 ")
 ;;507
 ;;21,"51991-0713-50 ")
 ;;508
 ;;21,"52152-0159-02 ")
 ;;834
 ;;21,"52152-0159-05 ")
 ;;835
 ;;21,"52152-0160-02 ")
 ;;836
 ;;21,"52152-0160-05 ")
 ;;837
 ;;21,"52152-0167-02 ")
 ;;838
 ;;21,"52152-0167-05 ")
 ;;839
 ;;21,"52152-0170-02 ")
 ;;840
 ;;21,"52152-0170-05 ")
 ;;841
 ;;21,"52152-0173-02 ")
 ;;842
 ;;21,"52152-0173-05 ")
 ;;843
 ;;21,"52152-0327-02 ")
 ;;588
 ;;21,"52152-0327-05 ")
 ;;589
 ;;21,"52604-0010-01 ")
 ;;1079
 ;;21,"52604-0470-01 ")
 ;;69
 ;;21,"52637-0030-10 ")
 ;;844
 ;;21,"52637-0035-10 ")
 ;;845
 ;;21,"52637-0036-10 ")
 ;;846
 ;;21,"52637-0051-10 ")
 ;;366
 ;;21,"52637-0052-10 ")
 ;;312
 ;;21,"52959-0150-30 ")
 ;;313
 ;;21,"52959-0150-90 ")
 ;;314
 ;;21,"52959-0282-00 ")
 ;;590
 ;;21,"52959-0282-21 ")
 ;;591
 ;;21,"52959-0282-28 ")
 ;;592
 ;;21,"52959-0282-30 ")
 ;;593
 ;;21,"52959-0282-42 ")
 ;;594
 ;;21,"52959-0282-90 ")
 ;;595
 ;;21,"52959-0329-14 ")
 ;;367
 ;;21,"52959-0329-28 ")
 ;;368
 ;;21,"52959-0329-30 ")
 ;;369
 ;;21,"52959-0329-90 ")
 ;;370
 ;;21,"52959-0418-30 ")
 ;;411
 ;;21,"52959-0426-06 ")
 ;;847
 ;;21,"52959-0426-07 ")
 ;;848
 ;;21,"52959-0426-14 ")
 ;;849
 ;;21,"52959-0426-15 ")
 ;;850
 ;;21,"52959-0426-24 ")
 ;;851
 ;;21,"52959-0426-28 ")
 ;;852
 ;;21,"52959-0426-30 ")
 ;;853
 ;;21,"52959-0426-60 ")
 ;;854
 ;;21,"52959-0432-07 ")
 ;;855
 ;;21,"52959-0432-14 ")
 ;;856
 ;;21,"52959-0432-30 ")
 ;;857
 ;;21,"52959-0440-07 ")
 ;;858
 ;;21,"52959-0440-14 ")
 ;;859
 ;;21,"52959-0440-15 ")
 ;;860
 ;;21,"52959-0440-28 ")
 ;;861
 ;;21,"52959-0440-30 ")
 ;;862
 ;;21,"52959-0628-28 ")
 ;;183
 ;;21,"52959-0628-30 ")
 ;;184
 ;;21,"52959-0812-07 ")
 ;;863
 ;;21,"52959-0812-10 ")
 ;;864
 ;;21,"52959-0812-14 ")
 ;;865
 ;;21,"52959-0812-20 ")
 ;;866
 ;;21,"52959-0812-30 ")
 ;;867
 ;;21,"52959-0812-60 ")
 ;;868
 ;;21,"52959-0812-90 ")
 ;;869
 ;;21,"52959-0886-07 ")
 ;;681
 ;;21,"52959-0886-30 ")
 ;;682
 ;;21,"53014-0530-07 ")
 ;;509
 ;;21,"53014-0530-12 ")
 ;;510
 ;;21,"53014-0531-07 ")
 ;;511
 ;;21,"53014-0531-12 ")
 ;;512
 ;;21,"53014-0532-07 ")
 ;;513
 ;;21,"53014-0532-12 ")
 ;;514
 ;;21,"53014-0574-07 ")
 ;;418
 ;;21,"53014-0575-07 ")
 ;;419
 ;;21,"53014-0575-72 ")
 ;;420
 ;;21,"53014-0576-07 ")
 ;;421
 ;;21,"53014-0579-07 ")
 ;;422
 ;;21,"53014-0580-07 ")
 ;;423
 ;;21,"53014-0581-07 ")
 ;;424
 ;;21,"53014-0582-07 ")
 ;;425
 ;;21,"53014-0583-07 ")
 ;;426
 ;;21,"53014-0584-07 ")
 ;;427
 ;;21,"53014-0593-07 ")
 ;;434
 ;;21,"53014-0594-07 ")
 ;;435
 ;;21,"53014-0903-71 ")
 ;;412
 ;;21,"53014-0904-71 ")
 ;;413
 ;;21,"53014-0904-84 ")
 ;;414
 ;;21,"53489-0406-01 ")
 ;;870
 ;;21,"53489-0406-10 ")
 ;;871
 ;;21,"53489-0433-01 ")
 ;;872
 ;;21,"53489-0433-10 ")
 ;;873
 ;;21,"53489-0564-01 ")
 ;;91
 ;;21,"53489-0565-01 ")
 ;;92
 ;;21,"53489-0566-01 ")
 ;;93
 ;;21,"53489-0567-01 ")
 ;;94
 ;;21,"53489-0568-01 ")
 ;;95
 ;;21,"53489-0569-01 ")
 ;;96
 ;;21,"53489-0570-01 ")
 ;;97
 ;;21,"54092-0371-01 ")
 ;;8
 ;;21,"54092-0372-01 ")
 ;;9
 ;;21,"54092-0373-01 ")
 ;;10
 ;;21,"54092-0374-01 ")
 ;;11
 ;;21,"54092-0375-01 ")
 ;;12
 ;;21,"54092-0376-01 ")
 ;;13
 ;;21,"54092-0377-01 ")
 ;;14
 ;;21,"54092-0381-01 ")
 ;;31
 ;;21,"54092-0383-01 ")
 ;;32
 ;;21,"54092-0385-01 ")
 ;;33
 ;;21,"54092-0387-01 ")
 ;;34
 ;;21,"54092-0389-01 ")
 ;;35
 ;;21,"54092-0391-01 ")
 ;;36
 ;;21,"54092-0552-10 ")
 ;;235
 ;;21,"54092-0552-30 ")
 ;;236
 ;;21,"54092-0553-10 ")
 ;;237
 ;;21,"54092-0553-30 ")
 ;;238
 ;;21,"54092-0554-10 ")
 ;;239
 ;;21,"54092-0554-30 ")
 ;;240
 ;;21,"54092-0555-10 ")
 ;;241
 ;;21,"54092-0555-30 ")
 ;;242
 ;;21,"54569-0389-00 ")
 ;;281
 ;;21,"54569-0389-01 ")
 ;;282
 ;;21,"54569-0389-05 ")
 ;;283
 ;;21,"54569-0389-06 ")
 ;;284
 ;;21,"54569-0392-00 ")
 ;;874
 ;;21,"54569-0392-02 ")
 ;;875
 ;;21,"54569-0392-03 ")
 ;;876
 ;;21,"54569-0392-04 ")
 ;;877
 ;;21,"54569-0396-00 ")
 ;;371
 ;;21,"54569-0396-01 ")
 ;;372
 ;;21,"54569-0396-05 ")
 ;;373
 ;;21,"54569-1718-00 ")
 ;;56
 ;;21,"54569-1718-01 ")
 ;;57
 ;;21,"54569-1718-03 ")
 ;;58
 ;;21,"54569-1718-04 ")
 ;;59
 ;;21,"54569-1718-05 ")
 ;;60
 ;;21,"54569-1798-02 ")
 ;;185
 ;;21,"54569-1798-03 ")
 ;;186
 ;;21,"54569-1798-06 ")
 ;;187
 ;;21,"54569-1798-09 ")
 ;;188
 ;;21,"54569-2059-03 ")
 ;;315
 ;;21,"54569-2059-04 ")
 ;;316
 ;;21,"54569-2059-05 ")
 ;;317
 ;;21,"54569-2059-07 ")
 ;;318
 ;;21,"54569-2059-08 ")
 ;;319
 ;;21,"54569-2059-09 ")
 ;;320
 ;;21,"54569-2198-00 ")
 ;;683
 ;;21,"54569-2198-01 ")
 ;;684
 ;;21,"54569-2198-02 ")
 ;;685
 ;;21,"54569-2668-00 ")
 ;;596
 ;;21,"54569-2668-01 ")
 ;;597
 ;;21,"54569-2668-04 ")
 ;;598
 ;;21,"54569-2668-05 ")
 ;;599
 ;;21,"54569-2668-06 ")
 ;;600
 ;;21,"54569-2668-07 ")
 ;;601
 ;;21,"54569-2668-09 ")
 ;;602
 ;;21,"54569-2669-00 ")
 ;;878
 ;;21,"54569-2669-01 ")
 ;;879
 ;;21,"54569-2669-02 ")
 ;;880
 ;;21,"54569-2669-03 ")
 ;;881
 ;;21,"54569-2949-03 ")
 ;;285
 ;;21,"54569-2949-04 ")
 ;;286
 ;;21,"54569-3069-00 ")
 ;;882
 ;;21,"54569-3069-02 ")
 ;;883
 ;;21,"54569-3069-03 ")
 ;;884
 ;;21,"54569-3069-04 ")
 ;;885
 ;;21,"54569-3069-05 ")
 ;;886
 ;;21,"54569-3069-06 ")
 ;;887
 ;;21,"54569-3203-00 ")
 ;;888
 ;;21,"54569-3203-01 ")
 ;;889
 ;;21,"54569-3203-02 ")
 ;;890
 ;;21,"54569-3203-03 ")
 ;;891
 ;;21,"54569-3203-04 ")
 ;;892
 ;;21,"54569-3203-08 ")
 ;;893
 ;;21,"54569-4143-00 ")
 ;;894
 ;;21,"54569-4143-02 ")
 ;;895
 ;;21,"54569-4143-04 ")
 ;;896
 ;;21,"54569-4143-05 ")
 ;;897
 ;;21,"54569-4336-00 ")
 ;;603
 ;;21,"54569-4816-01 ")
 ;;898
 ;;21,"54569-4816-02 ")
 ;;899
 ;;21,"54569-5120-02 ")
 ;;321
 ;;21,"54569-5195-00 ")
 ;;604
 ;;21,"54569-5195-01 ")
 ;;605
 ;;21,"54569-5195-02 ")
 ;;606
 ;;21,"54569-5195-03 ")
 ;;607
 ;;21,"54569-5195-04 ")
 ;;608
 ;;21,"54569-5195-05 ")
 ;;609
 ;;21,"54569-5195-06 ")
 ;;610
 ;;21,"54569-5195-07 ")
 ;;611
 ;;21,"54569-5195-08 ")
 ;;612
 ;;21,"54569-5195-09 ")
 ;;613
 ;;21,"54569-5224-02 ")
 ;;900
 ;;21,"54569-5233-00 ")
 ;;614
 ;;21,"54569-5233-01 ")
 ;;615
 ;;21,"54569-6078-00 ")
 ;;159
 ;;21,"54868-0087-00 ")
 ;;901
 ;;21,"54868-0087-01 ")
 ;;902
 ;;21,"54868-0087-02 ")
 ;;903
 ;;21,"54868-0087-03 ")
 ;;904
 ;;21,"54868-0192-00 ")
 ;;905
 ;;21,"54868-0192-01 ")
 ;;906
 ;;21,"54868-0192-04 ")
 ;;907
 ;;21,"54868-0252-00 ")
 ;;616
 ;;21,"54868-0252-01 ")
 ;;617
 ;;21,"54868-0252-03 ")
 ;;618
 ;;21,"54868-0253-00 ")
 ;;908
 ;;21,"54868-0253-01 ")
 ;;909
 ;;21,"54868-0283-00 ")
 ;;910
 ;;21,"54868-0283-01 ")
 ;;911
 ;;21,"54868-0479-01 ")
 ;;61
 ;;21,"54868-0668-00 ")
 ;;428
 ;;21,"54868-0668-01 ")
 ;;429
 ;;21,"54868-0733-00 ")
 ;;515
 ;;21,"54868-0733-01 ")
 ;;516
 ;;21,"54868-0733-02 ")
 ;;517
 ;;21,"54868-0733-03 ")
 ;;518
 ;;21,"54868-0733-04 ")
 ;;519
 ;;21,"54868-1051-01 ")
 ;;912
 ;;21,"54868-1462-00 ")
 ;;322
 ;;21,"54868-1462-01 ")
 ;;323
 ;;21,"54868-1463-00 ")
 ;;374
 ;;21,"54868-1704-00 ")
 ;;520
 ;;21,"54868-1704-01 ")
 ;;521
 ;;21,"54868-1704-02 ")
 ;;522
 ;;21,"54868-1704-03 ")
 ;;523
 ;;21,"54868-1704-04 ")
 ;;524
 ;;21,"54868-1704-05 ")
 ;;525
 ;;21,"54868-1706-00 ")
 ;;1054
 ;;21,"54868-1706-01 ")
 ;;1055
 ;;21,"54868-1706-02 ")
 ;;1056
 ;;21,"54868-1706-03 ")
 ;;1057
 ;;21,"54868-2418-00 ")
 ;;1076
 ;;21,"54868-2418-01 ")
 ;;1077
 ;;21,"54868-2418-02 ")
 ;;1078
 ;;21,"54868-2762-00 ")
 ;;1058
 ;;21,"54868-2974-00 ")
 ;;526
 ;;21,"54868-2974-01 ")
 ;;527
 ;;21,"54868-2974-02 ")
 ;;528
 ;;21,"54868-2974-03 ")
 ;;529
 ;;21,"54868-3071-00 ")
 ;;686
 ;;21,"54868-3402-00 ")
 ;;252
 ;;21,"54868-3402-01 ")
 ;;253
 ;;21,"54868-3403-00 ")
 ;;245
 ;;21,"54868-3454-00 ")
 ;;551
 ;;21,"54868-3454-01 ")
 ;;552
 ;;21,"54868-3454-02 ")
 ;;553
 ;;21,"54868-3454-03 ")
 ;;554
 ;;21,"54868-3454-04 ")
 ;;555
 ;;21,"54868-3454-05 ")
 ;;556
 ;;21,"54868-3454-06 ")
 ;;557
 ;;21,"54868-3674-00 ")
 ;;15
 ;;21,"54868-3674-01 ")
 ;;16
 ;;21,"54868-3674-02 ")
 ;;17
 ;;21,"54868-3811-00 ")
 ;;254
 ;;21,"54868-3976-00 ")
 ;;18
 ;;21,"54868-4410-00 ")
 ;;19
 ;;21,"54868-4410-01 ")
 ;;20
 ;;21,"54868-4489-00 ")
 ;;216
 ;;21,"54868-4489-01 ")
 ;;217
 ;;21,"54868-4489-02 ")
 ;;218
 ;;21,"54868-4489-03 ")
 ;;219
 ;;21,"54868-4631-00 ")
 ;;98
 ;;21,"54868-4631-01 ")
 ;;99
 ;;21,"54868-4631-02 ")
 ;;100
 ;;21,"54868-4631-03 ")
 ;;101
 ;;21,"54868-4640-00 ")
 ;;37
 ;;21,"54868-4640-01 ")
 ;;38
 ;;21,"54868-4640-02 ")
 ;;39
 ;;21,"54868-4718-00 ")
 ;;430
 ;;21,"54868-4718-01 ")
 ;;431
 ;;21,"54868-4728-00 ")
 ;;102
 ;;21,"54868-4728-01 ")
 ;;103
 ;;21,"54868-4728-02 ")
 ;;104
 ;;21,"54868-4728-03 ")
 ;;105
 ;;21,"54868-4728-04 ")
 ;;106
 ;;21,"54868-4728-05 ")
 ;;107
 ;;21,"54868-4758-00 ")
 ;;255
 ;;21,"54868-4758-01 ")
 ;;256
 ;;21,"54868-4759-00 ")
 ;;220
 ;;21,"54868-4759-01 ")
 ;;221
 ;;21,"54868-4759-02 ")
 ;;222
 ;;21,"54868-4759-03 ")
 ;;223
 ;;21,"54868-4760-00 ")
 ;;40
 ;;21,"54868-4760-01 ")
 ;;41
 ;;21,"54868-4760-02 ")
 ;;42
 ;;21,"54868-4760-03 ")
 ;;43
 ;;21,"54868-4789-00 ")
 ;;224
 ;;21,"54868-4789-01 ")
 ;;225
 ;;21,"54868-4863-00 ")
 ;;108
 ;;21,"54868-4863-01 ")
 ;;109
 ;;21,"54868-4957-00 ")
 ;;226
 ;;21,"54868-4957-01 ")
 ;;227
 ;;21,"54868-5007-00 ")
 ;;44
 ;;21,"54868-5007-01 ")
 ;;45
 ;;21,"54868-5007-02 ")
 ;;46
 ;;21,"54868-5073-00 ")
 ;;444
 ;;21,"54868-5073-01 ")
 ;;445
 ;;21,"54868-5073-02 ")
 ;;446
 ;;21,"54868-5073-03 ")
 ;;447
 ;;21,"54868-5103-00 ")
 ;;110
 ;;21,"54868-5103-01 ")
 ;;111
 ;;21,"54868-5103-02 ")
 ;;112
 ;;21,"54868-5103-03 ")
 ;;113
 ;;21,"54868-5136-00 ")
 ;;437
 ;;21,"54868-5140-00 ")
 ;;47
 ;;21,"54868-5140-01 ")
 ;;48
 ;;21,"54868-5142-00 ")
 ;;49
 ;;21,"54868-5142-01 ")
 ;;50
 ;;21,"54868-5142-02 ")
 ;;51
 ;;21,"54868-5367-00 ")
 ;;1065
 ;;21,"54868-5367-01 ")
 ;;1066
 ;;21,"54868-5368-00 ")
 ;;52
 ;;21,"54868-5368-01 ")
 ;;53
 ;;21,"54868-5387-00 ")
 ;;114
 ;;21,"54868-5388-00 ")
 ;;272
 ;;21,"54868-5388-01 ")
 ;;273