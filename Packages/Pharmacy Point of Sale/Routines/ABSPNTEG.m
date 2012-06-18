ABSPNTEG ;ISC/XTSUMBLD KERNEL - Package checksum checker ;3080409.163058
 ;;0.0;
 ;;7.3;3080409.163058
 S XT4="I 1",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
CONT F XT1=1:1 S XT2=$T(ROU+XT1) Q:XT2=""  S X=$P(XT2," ",1),XT3=$P(XT2,";",3) X XT4 I $T W !,X X ^%ZOSF("TEST") S:'$T XT3=0 X:XT3 ^%ZOSF("RSUM") W ?10,$S('XT3:"Routine not in UCI",XT3'=Y:"Calculated "_$C(7)_Y_", off by "_(Y-XT3),1:"ok")
 G CONT^ABSPNTE0
 K %1,%2,%3,X,Y,XT1,XT2,XT3,XT4 Q
ONE S XT4="I $D(^UTILITY($J,X))",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
 W !,"Check a subset of routines:" K ^UTILITY($J) X ^%ZOSF("RSEL")
 W ! G CONT
ROU ;;
ABSPECA1 ;;6264924
ABSPECA2 ;;1706376
ABSPECA4 ;;6231325
ABSPECA5 ;;4928249
ABSPECA7 ;;734394
ABSPECA8 ;;3563165
ABSPECFM ;;2113792
ABSPECP1 ;;11804774
ABSPECP2 ;;4648706
ABSPECP3 ;;8910043
ABSPECR0 ;;1414727
ABSPECR1 ;;1751080
ABSPECR2 ;;3195335
ABSPECX0 ;;1422548
ABSPECX1 ;;1771694
ABSPECX4 ;;317936
ABSPECZ2 ;;3739667
ABSPECZ3 ;;4456971
ABSPECZA ;;4491424
ABSPER10 ;;8063061
ABSPER1A ;;4064275
ABSPER20 ;;7544724
ABSPER2A ;;5108415
ABSPER30 ;;5699425
ABSPER3A ;;3122160
ABSPER40 ;;5624885
ABSPER4A ;;4172451
ABSPES00 ;;1686480
ABSPES01 ;;2642047
ABSPES02 ;;2771865
ABSPFUNC ;;357149
ABSPMHDR ;;5189469
ABSPOS ;;1269028
ABSPOS03 ;;4335830
ABSPOS25 ;;7949651
ABSPOS28 ;;6969408
ABSPOS29 ;;7735672
ABSPOS31 ;;4068031
ABSPOS57 ;;8663426
ABSPOS6D ;;12817062
ABSPOS6E ;;2324586
ABSPOS6F ;;1021089
ABSPOS6H ;;4306425
ABSPOSA ;;2305756
ABSPOSAA ;;2769422
ABSPOSAB ;;9118148
ABSPOSAD ;;291049
ABSPOSAE ;;10495546
ABSPOSAM ;;11072784
ABSPOSAN ;;2041613
ABSPOSAO ;;1885863
ABSPOSAP ;;2295700
ABSPOSAQ ;;706548
ABSPOSAR ;;7584921
ABSPOSAS ;;1609390
ABSPOSAW ;;4563796
ABSPOSAY ;;1403994
ABSPOSAZ ;;1203532
ABSPOSBB ;;14531055
ABSPOSBD ;;4024099
ABSPOSBH ;;12019354
ABSPOSCB ;;2956317
ABSPOSCC ;;14297733
ABSPOSCD ;;13431411
ABSPOSCE ;;4838832
ABSPOSCF ;;7454987
ABSPOSCG ;;1635769
ABSPOSD2 ;;2803730
ABSPOSD3 ;;2928777
ABSPOSE1 ;;10689265
ABSPOSE2 ;;14482687
ABSPOSEV ;;5365984
ABSPOSF ;;8639080
ABSPOSFA ;;7586556
ABSPOSFB ;;1478936
ABSPOSFC ;;12315748
ABSPOSFD ;;8052498
ABSPOSFP ;;8609625
ABSPOSFX ;;2243582
ABSPOSH2 ;;7098764
ABSPOSH4 ;;7679423
ABSPOSH5 ;;4816969
ABSPOSH6 ;;7000815
ABSPOSH7 ;;10171560
ABSPOSHF ;;4716906
ABSPOSHR ;;3886233
ABSPOSHU ;;366521
ABSPOSI ;;7670969
ABSPOSI1 ;;11610084
ABSPOSI2 ;;6282492
ABSPOSI7 ;;2219965
ABSPOSI8 ;;7921036
ABSPOSIB ;;1893032
ABSPOSID ;;5636655
ABSPOSIF ;;10441638
ABSPOSIH ;;2626329
ABSPOSII ;;6664563
ABSPOSIO ;;1838946
ABSPOSIV ;;12413801
ABSPOSIY ;;6434266
ABSPOSIZ ;;10236957
ABSPOSJ1 ;;8235860
ABSPOSK1 ;;10951453
ABSPOSM ;;1893632
ABSPOSM1 ;;9926306
ABSPOSM2 ;;2428830
ABSPOSMA ;;3093349
ABSPOSMB ;;3347676
ABSPOSMC ;;6033332
ABSPOSMD ;;2702906
ABSPOSMF ;;6203072
ABSPOSMG ;;1896520
ABSPOSMH ;;4548143
ABSPOSMI ;;2527975
ABSPOSMZ ;;1934772
ABSPOSN1 ;;6477908
ABSPOSN2 ;;5174243
ABSPOSN3 ;;11838124
ABSPOSN4 ;;845093
ABSPOSN5 ;;2271754
ABSPOSN6 ;;9099707
ABSPOSN7 ;;289835
ABSPOSN8 ;;241874
ABSPOSO ;;3195755
ABSPOSO1 ;;1756721
ABSPOSO2 ;;7171330
ABSPOSP ;;4143491
ABSPOSP1 ;;5928162
ABSPOSP2 ;;10224325
ABSPOSPW ;;8839340
ABSPOSPX ;;7434174
ABSPOSQ1 ;;2248158
ABSPOSQ2 ;;8085648
ABSPOSQ3 ;;9781254
ABSPOSQ4 ;;9124143
ABSPOSQA ;;13660663
ABSPOSQB ;;7579908
ABSPOSQL ;;10833804
ABSPOSQP ;;9650881
ABSPOSQQ ;;11005741
ABSPOSQS ;;8451649
ABSPOSRX ;;4228738
ABSPOSS7 ;;140648
ABSPOSS8 ;;9885077
ABSPOSSC ;;711278
ABSPOSSG ;;7026600
ABSPOSSH ;;512437
ABSPOSU1 ;;2618785
ABSPOSU2 ;;1004700
ABSPOSU3 ;;878266
ABSPOSU4 ;;4731222
ABSPOSU5 ;;775308