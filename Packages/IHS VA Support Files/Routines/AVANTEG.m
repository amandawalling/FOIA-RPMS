AVANTEG ; DSM/GTH - Package checksum checker ; 27-MAY-1993
 ;;93.2;VA SUPPORT FILES;;JUL 01, 1993
 ;;7.0;MAY 27, 1993@15:14:55
 S XT4="I 1",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
CONT F XT1=1:1 S XT2=$T(ROU+XT1) Q:XT2=""  S X=$P(XT2," ",1),XT3=$P(XT2,";",3) X XT4 I $T W !,X X ^%ZOSF("TEST") S:'$T XT3=0 X:XT3 ^%ZOSF("RSUM") W ?10,$S('XT3:"Routine not in UCI",XT3'=Y:"Calculated "_$C(7)_Y_", off by "_(Y-XT3),1:"ok")
 G CONT^AVANTEG0
 K %1,%2,%3,X,Y,XT1,XT2,XT3,XT4 Q
ONE S XT4="I $D(^UTILITY($J,X))",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
 W !,"Check a subset of routines:" K ^UTILITY($J) X ^%ZOSF("RSEL")
 W ! G CONT
ROU ;;
AVA200 ;;4893267
AVA4A7 ;;1273718
AVAIN001 ;;6181162
AVAIN002 ;;3859050
AVAIN003 ;;9769675
AVAIN004 ;;11090397
AVAIN005 ;;10330111
AVAIN006 ;;9522525
AVAIN007 ;;8780866
AVAIN008 ;;12082079
AVAIN009 ;;11786103
AVAIN010 ;;8323260
AVAIN011 ;;8171316
AVAIN012 ;;10198302
AVAIN013 ;;7459876
AVAIN014 ;;10714881
AVAIN015 ;;8390304
AVAIN016 ;;1593617
AVAIN017 ;;4250085
AVAIN018 ;;2150340
AVAIN019 ;;5536933
AVAIN020 ;;8698888
AVAIN021 ;;10526526
AVAIN022 ;;10411818
AVAIN023 ;;11490332
AVAIN024 ;;8600537
AVAIN025 ;;4707619
AVAIN026 ;;3673430
AVAIN027 ;;1846277
AVAIN028 ;;2064626
AVAIN029 ;;8834909
AVAIN030 ;;6751052
AVAIN031 ;;6625021
AVAIN032 ;;2881448
AVAIN033 ;;1849355
AVAIN034 ;;1941725
AVAIN035 ;;2114576
AVAIN036 ;;2513043
AVAIN037 ;;11612476
AVAIN038 ;;11271598
AVAIN039 ;;9674317
AVAIN040 ;;12043843
AVAIN041 ;;14812660
AVAIN042 ;;11797498
AVAIN043 ;;10115714
AVAIN044 ;;10255889
AVAIN045 ;;8853561
AVAIN046 ;;9523592
AVAIN047 ;;8974915
AVAIN048 ;;9128591
AVAIN049 ;;2329345
AVAIN050 ;;10097116
AVAIN051 ;;10976282
AVAIN052 ;;11232302
AVAIN053 ;;12989361
AVAIN054 ;;11175689
AVAIN055 ;;9561591
AVAIN056 ;;10376653
AVAIN057 ;;8509631
AVAIN058 ;;7995990
AVAIN059 ;;11536450
AVAIN060 ;;10297534
AVAIN061 ;;7633718
AVAIN062 ;;14887261
AVAIN063 ;;8154152
AVAIN064 ;;9263986
AVAIN065 ;;9688368
AVAIN066 ;;10872687
AVAIN067 ;;9946436
AVAIN068 ;;9431781
AVAIN069 ;;11806927
AVAIN070 ;;11003664
AVAIN071 ;;9224213
AVAIN072 ;;9356379
AVAIN073 ;;9325419
AVAIN074 ;;8468221
AVAIN075 ;;9391027
AVAIN076 ;;12046168
AVAIN077 ;;9220000
AVAIN078 ;;8134702
AVAIN079 ;;7844559
AVAIN080 ;;8773716
AVAIN081 ;;7815624
AVAIN082 ;;2602467
AVAIN083 ;;2290414
AVAIN084 ;;1621247
AVAIN085 ;;2081779
AVAIN086 ;;1446015
AVAIN087 ;;1759280
AVAIN088 ;;1825386
AVAIN089 ;;4228708
AVAIN090 ;;3289024
AVAIN091 ;;5209042
AVAIN092 ;;6093342
AVAIN093 ;;7658613
AVAIN094 ;;13881893
AVAIN095 ;;8957544
AVAIN096 ;;11425227
AVAIN097 ;;12188388
AVAIN098 ;;3303086
AVAIN099 ;;7327918
AVAIN100 ;;5814898
AVAIN101 ;;1088488
AVAIN102 ;;9753980
AVAIN103 ;;10008776
AVAIN104 ;;8548053
AVAIN105 ;;10129460
AVAIN106 ;;10838126
AVAIN107 ;;808250
AVAIN108 ;;8530334
AVAIN109 ;;8766483
AVAIN110 ;;8845418
AVAIN111 ;;9299977
AVAIN112 ;;8873901
AVAIN113 ;;15778882
AVAIN114 ;;9596641
AVAIN115 ;;6550437
AVAIN116 ;;4399594
AVAIN117 ;;5241112
AVAIN118 ;;6932723
AVAIN119 ;;10532933
AVAIN120 ;;10088353
AVAIN121 ;;8041896
AVAIN122 ;;10316751
AVAIN123 ;;8865273
AVAIN124 ;;10216436
AVAIN125 ;;9302772
AVAIN126 ;;9507931
AVAIN127 ;;9234924
AVAIN128 ;;10732375
AVAIN129 ;;10458707
AVAIN130 ;;9796648
AVAIN131 ;;11386522
AVAIN132 ;;10503716
AVAIN133 ;;9374372
AVAIN134 ;;8321699
AVAIN135 ;;9184472
AVAIN136 ;;8541252
AVAIN137 ;;9335867
AVAIN138 ;;10960321
AVAIN139 ;;9565157
AVAIN140 ;;8767210
AVAIN141 ;;9493645
AVAIN142 ;;9139993
AVAIN143 ;;6681094
AVAIN144 ;;7656333
AVAIN145 ;;9662750
AVAIN146 ;;6382245
AVAIN147 ;;7887160
AVAIN148 ;;6370251