BGPM3ADR ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON APR 21, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"785,00406206860 ",.01)
 ;;00406206860
 ;;9002226.02101,"785,00406206860 ",.02)
 ;;00406206860
 ;;9002226.02101,"785,00406206890 ",.01)
 ;;00406206890
 ;;9002226.02101,"785,00406206890 ",.02)
 ;;00406206890
 ;;9002226.02101,"785,00406206891 ",.01)
 ;;00406206891
 ;;9002226.02101,"785,00406206891 ",.02)
 ;;00406206891
 ;;9002226.02101,"785,00406206903 ",.01)
 ;;00406206903
 ;;9002226.02101,"785,00406206903 ",.02)
 ;;00406206903
 ;;9002226.02101,"785,00406206905 ",.01)
 ;;00406206905
 ;;9002226.02101,"785,00406206905 ",.02)
 ;;00406206905
 ;;9002226.02101,"785,00406206910 ",.01)
 ;;00406206910
 ;;9002226.02101,"785,00406206910 ",.02)
 ;;00406206910
 ;;9002226.02101,"785,00406206960 ",.01)
 ;;00406206960
 ;;9002226.02101,"785,00406206960 ",.02)
 ;;00406206960
 ;;9002226.02101,"785,00406206990 ",.01)
 ;;00406206990
 ;;9002226.02101,"785,00406206990 ",.02)
 ;;00406206990
 ;;9002226.02101,"785,00480715256 ",.01)
 ;;00480715256
 ;;9002226.02101,"785,00480715256 ",.02)
 ;;00480715256
 ;;9002226.02101,"785,00480715298 ",.01)
 ;;00480715298
 ;;9002226.02101,"785,00480715298 ",.02)
 ;;00480715298
 ;;9002226.02101,"785,00480715310 ",.01)
 ;;00480715310
 ;;9002226.02101,"785,00480715310 ",.02)
 ;;00480715310
 ;;9002226.02101,"785,00480715356 ",.01)
 ;;00480715356
 ;;9002226.02101,"785,00480715356 ",.02)
 ;;00480715356
 ;;9002226.02101,"785,00480715398 ",.01)
 ;;00480715398
 ;;9002226.02101,"785,00480715398 ",.02)
 ;;00480715398
 ;;9002226.02101,"785,00480715410 ",.01)
 ;;00480715410
 ;;9002226.02101,"785,00480715410 ",.02)
 ;;00480715410
 ;;9002226.02101,"785,00480715456 ",.01)
 ;;00480715456
 ;;9002226.02101,"785,00480715456 ",.02)
 ;;00480715456
 ;;9002226.02101,"785,00480715498 ",.01)
 ;;00480715498
 ;;9002226.02101,"785,00480715498 ",.02)
 ;;00480715498
 ;;9002226.02101,"785,00480715510 ",.01)
 ;;00480715510
 ;;9002226.02101,"785,00480715510 ",.02)
 ;;00480715510
 ;;9002226.02101,"785,00480715556 ",.01)
 ;;00480715556
 ;;9002226.02101,"785,00480715556 ",.02)
 ;;00480715556
 ;;9002226.02101,"785,00480715598 ",.01)
 ;;00480715598
 ;;9002226.02101,"785,00480715598 ",.02)
 ;;00480715598
 ;;9002226.02101,"785,00480715610 ",.01)
 ;;00480715610
 ;;9002226.02101,"785,00480715610 ",.02)
 ;;00480715610
 ;;9002226.02101,"785,00480715656 ",.01)
 ;;00480715656
 ;;9002226.02101,"785,00480715656 ",.02)
 ;;00480715656
 ;;9002226.02101,"785,00480715698 ",.01)
 ;;00480715698
 ;;9002226.02101,"785,00480715698 ",.02)
 ;;00480715698
 ;;9002226.02101,"785,00615558931 ",.01)
 ;;00615558931
 ;;9002226.02101,"785,00615558931 ",.02)
 ;;00615558931
 ;;9002226.02101,"785,00615558939 ",.01)
 ;;00615558939
 ;;9002226.02101,"785,00615558939 ",.02)
 ;;00615558939
 ;;9002226.02101,"785,00615568839 ",.01)
 ;;00615568839
 ;;9002226.02101,"785,00615568839 ",.02)
 ;;00615568839
 ;;9002226.02101,"785,00615655139 ",.01)
 ;;00615655139
 ;;9002226.02101,"785,00615655139 ",.02)
 ;;00615655139
 ;;9002226.02101,"785,00615657939 ",.01)
 ;;00615657939
 ;;9002226.02101,"785,00615657939 ",.02)
 ;;00615657939
 ;;9002226.02101,"785,00615658039 ",.01)
 ;;00615658039
 ;;9002226.02101,"785,00615658039 ",.02)
 ;;00615658039
 ;;9002226.02101,"785,00615658139 ",.01)
 ;;00615658139
 ;;9002226.02101,"785,00615658139 ",.02)
 ;;00615658139
 ;;9002226.02101,"785,00615658739 ",.01)
 ;;00615658739
 ;;9002226.02101,"785,00615658739 ",.02)
 ;;00615658739
 ;;9002226.02101,"785,00615658839 ",.01)
 ;;00615658839
 ;;9002226.02101,"785,00615658839 ",.02)
 ;;00615658839
 ;;9002226.02101,"785,00615659039 ",.01)
 ;;00615659039
 ;;9002226.02101,"785,00615659039 ",.02)
 ;;00615659039
 ;;9002226.02101,"785,00781121010 ",.01)
 ;;00781121010
 ;;9002226.02101,"785,00781121010 ",.02)
 ;;00781121010
 ;;9002226.02101,"785,00781121013 ",.01)
 ;;00781121013
 ;;9002226.02101,"785,00781121013 ",.02)
 ;;00781121013
 ;;9002226.02101,"785,00781121060 ",.01)
 ;;00781121060
 ;;9002226.02101,"785,00781121060 ",.02)
 ;;00781121060
 ;;9002226.02101,"785,00781121310 ",.01)
 ;;00781121310
 ;;9002226.02101,"785,00781121310 ",.02)
 ;;00781121310
 ;;9002226.02101,"785,00781121313 ",.01)
 ;;00781121313
 ;;9002226.02101,"785,00781121313 ",.02)
 ;;00781121313
 ;;9002226.02101,"785,00781121360 ",.01)
 ;;00781121360
 ;;9002226.02101,"785,00781121360 ",.02)
 ;;00781121360
 ;;9002226.02101,"785,00781132305 ",.01)
 ;;00781132305
 ;;9002226.02101,"785,00781132305 ",.02)
 ;;00781132305
 ;;9002226.02101,"785,00781132313 ",.01)
 ;;00781132313
 ;;9002226.02101,"785,00781132313 ",.02)
 ;;00781132313
 ;;9002226.02101,"785,00781132360 ",.01)
 ;;00781132360
 ;;9002226.02101,"785,00781132360 ",.02)
 ;;00781132360
 ;;9002226.02101,"785,00781507031 ",.01)
 ;;00781507031
 ;;9002226.02101,"785,00781507031 ",.02)
 ;;00781507031
 ;;9002226.02101,"785,00781507092 ",.01)
 ;;00781507092
 ;;9002226.02101,"785,00781507092 ",.02)
 ;;00781507092
 ;;9002226.02101,"785,00781507131 ",.01)
 ;;00781507131
 ;;9002226.02101,"785,00781507131 ",.02)
 ;;00781507131
 ;;9002226.02101,"785,00781507192 ",.01)
 ;;00781507192
 ;;9002226.02101,"785,00781507192 ",.02)
 ;;00781507192
 ;;9002226.02101,"785,00781507231 ",.01)
 ;;00781507231
 ;;9002226.02101,"785,00781507231 ",.02)
 ;;00781507231
 ;;9002226.02101,"785,00781507292 ",.01)
 ;;00781507292
 ;;9002226.02101,"785,00781507292 ",.02)
 ;;00781507292
 ;;9002226.02101,"785,00781507331 ",.01)
 ;;00781507331
 ;;9002226.02101,"785,00781507331 ",.02)
 ;;00781507331
 ;;9002226.02101,"785,00781507392 ",.01)
 ;;00781507392
 ;;9002226.02101,"785,00781507392 ",.02)
 ;;00781507392
 ;;9002226.02101,"785,00781507431 ",.01)
 ;;00781507431
 ;;9002226.02101,"785,00781507431 ",.02)
 ;;00781507431
 ;;9002226.02101,"785,00781507492 ",.01)
 ;;00781507492
 ;;9002226.02101,"785,00781507492 ",.02)
 ;;00781507492
 ;;9002226.02101,"785,00904558152 ",.01)
 ;;00904558152
 ;;9002226.02101,"785,00904558152 ",.02)
 ;;00904558152
 ;;9002226.02101,"785,00904558161 ",.01)
 ;;00904558161
 ;;9002226.02101,"785,00904558161 ",.02)
 ;;00904558161
 ;;9002226.02101,"785,00904558252 ",.01)
 ;;00904558252
 ;;9002226.02101,"785,00904558252 ",.02)
 ;;00904558252
 ;;9002226.02101,"785,00904558261 ",.01)
 ;;00904558261
 ;;9002226.02101,"785,00904558261 ",.02)
 ;;00904558261
 ;;9002226.02101,"785,00904558352 ",.01)
 ;;00904558352
 ;;9002226.02101,"785,00904558352 ",.02)
 ;;00904558352
 ;;9002226.02101,"785,00904558361 ",.01)
 ;;00904558361
 ;;9002226.02101,"785,00904558361 ",.02)
 ;;00904558361
 ;;9002226.02101,"785,00904580061 ",.01)
 ;;00904580061
 ;;9002226.02101,"785,00904580061 ",.02)
 ;;00904580061
 ;;9002226.02101,"785,00904580161 ",.01)
 ;;00904580161
 ;;9002226.02101,"785,00904580161 ",.02)
 ;;00904580161
 ;;9002226.02101,"785,00904580261 ",.01)
 ;;00904580261
 ;;9002226.02101,"785,00904580261 ",.02)
 ;;00904580261
 ;;9002226.02101,"785,06059800701 ",.01)
 ;;06059800701
 ;;9002226.02101,"785,06059800701 ",.02)
 ;;06059800701
 ;;9002226.02101,"785,10135050805 ",.01)
 ;;10135050805
 ;;9002226.02101,"785,10135050805 ",.02)
 ;;10135050805
 ;;9002226.02101,"785,10135050890 ",.01)
 ;;10135050890
 ;;9002226.02101,"785,10135050890 ",.02)
 ;;10135050890
 ;;9002226.02101,"785,10135050905 ",.01)
 ;;10135050905
 ;;9002226.02101,"785,10135050905 ",.02)
 ;;10135050905
 ;;9002226.02101,"785,10135050930 ",.01)
 ;;10135050930
 ;;9002226.02101,"785,10135050930 ",.02)
 ;;10135050930
 ;;9002226.02101,"785,10135050990 ",.01)
 ;;10135050990
 ;;9002226.02101,"785,10135050990 ",.02)
 ;;10135050990
 ;;9002226.02101,"785,10135051005 ",.01)
 ;;10135051005
 ;;9002226.02101,"785,10135051005 ",.02)
 ;;10135051005
 ;;9002226.02101,"785,10135051030 ",.01)
 ;;10135051030
 ;;9002226.02101,"785,10135051030 ",.02)
 ;;10135051030
 ;;9002226.02101,"785,10135051090 ",.01)
 ;;10135051090
 ;;9002226.02101,"785,10135051090 ",.02)
 ;;10135051090
 ;;9002226.02101,"785,10135051105 ",.01)
 ;;10135051105
 ;;9002226.02101,"785,10135051105 ",.02)
 ;;10135051105
 ;;9002226.02101,"785,10135051130 ",.01)
 ;;10135051130
 ;;9002226.02101,"785,10135051130 ",.02)
 ;;10135051130
 ;;9002226.02101,"785,10135051190 ",.01)
 ;;10135051190
 ;;9002226.02101,"785,10135051190 ",.02)
 ;;10135051190
 ;;9002226.02101,"785,10135051205 ",.01)
 ;;10135051205
 ;;9002226.02101,"785,10135051205 ",.02)
 ;;10135051205
 ;;9002226.02101,"785,10135051230 ",.01)
 ;;10135051230
 ;;9002226.02101,"785,10135051230 ",.02)
 ;;10135051230
 ;;9002226.02101,"785,10135051290 ",.01)
 ;;10135051290
 ;;9002226.02101,"785,10135051290 ",.02)
 ;;10135051290
 ;;9002226.02101,"785,10544015230 ",.01)
 ;;10544015230
 ;;9002226.02101,"785,10544015230 ",.02)
 ;;10544015230
 ;;9002226.02101,"785,11819013030 ",.01)
 ;;11819013030
 ;;9002226.02101,"785,11819013030 ",.02)
 ;;11819013030
 ;;9002226.02101,"785,11819013530 ",.01)
 ;;11819013530
 ;;9002226.02101,"785,11819013530 ",.02)
 ;;11819013530
 ;;9002226.02101,"785,11819013590 ",.01)
 ;;11819013590
 ;;9002226.02101,"785,11819013590 ",.02)
 ;;11819013590
 ;;9002226.02101,"785,11819025630 ",.01)
 ;;11819025630
 ;;9002226.02101,"785,11819025630 ",.02)
 ;;11819025630
 ;;9002226.02101,"785,11819025645 ",.01)
 ;;11819025645
 ;;9002226.02101,"785,11819025645 ",.02)
 ;;11819025645
 ;;9002226.02101,"785,11819025690 ",.01)
 ;;11819025690
 ;;9002226.02101,"785,11819025690 ",.02)
 ;;11819025690
 ;;9002226.02101,"785,12280010860 ",.01)
 ;;12280010860
 ;;9002226.02101,"785,12280010860 ",.02)
 ;;12280010860
 ;;9002226.02101,"785,12634082390 ",.01)
 ;;12634082390
 ;;9002226.02101,"785,12634082390 ",.02)
 ;;12634082390
 ;;9002226.02101,"785,13411016703 ",.01)
 ;;13411016703
 ;;9002226.02101,"785,13411016703 ",.02)
 ;;13411016703
 ;;9002226.02101,"785,13411016710 ",.01)
 ;;13411016710
 ;;9002226.02101,"785,13411016710 ",.02)
 ;;13411016710
 ;;9002226.02101,"785,13411054403 ",.01)
 ;;13411054403
 ;;9002226.02101,"785,13411054403 ",.02)
 ;;13411054403
 ;;9002226.02101,"785,13411054503 ",.01)
 ;;13411054503
 ;;9002226.02101,"785,13411054503 ",.02)
 ;;13411054503
 ;;9002226.02101,"785,13411054603 ",.01)
 ;;13411054603
 ;;9002226.02101,"785,13411054603 ",.02)
 ;;13411054603
 ;;9002226.02101,"785,14550051401 ",.01)
 ;;14550051401
 ;;9002226.02101,"785,14550051401 ",.02)
 ;;14550051401
 ;;9002226.02101,"785,14550051404 ",.01)
 ;;14550051404
 ;;9002226.02101,"785,14550051404 ",.02)
 ;;14550051404
 ;;9002226.02101,"785,14550051501 ",.01)
 ;;14550051501
 ;;9002226.02101,"785,14550051501 ",.02)
 ;;14550051501
 ;;9002226.02101,"785,14550051504 ",.01)
 ;;14550051504
 ;;9002226.02101,"785,14550051504 ",.02)
 ;;14550051504
 ;;9002226.02101,"785,14550051601 ",.01)
 ;;14550051601
 ;;9002226.02101,"785,14550051601 ",.02)
 ;;14550051601
 ;;9002226.02101,"785,14550051604 ",.01)
 ;;14550051604
 ;;9002226.02101,"785,14550051604 ",.02)
 ;;14550051604
 ;;9002226.02101,"785,16252050530 ",.01)
 ;;16252050530
 ;;9002226.02101,"785,16252050530 ",.02)
 ;;16252050530
 ;;9002226.02101,"785,16252050550 ",.01)
 ;;16252050550
 ;;9002226.02101,"785,16252050550 ",.02)
 ;;16252050550
 ;;9002226.02101,"785,16252050590 ",.01)
 ;;16252050590
 ;;9002226.02101,"785,16252050590 ",.02)
 ;;16252050590
 ;;9002226.02101,"785,16252050600 ",.01)
 ;;16252050600
 ;;9002226.02101,"785,16252050600 ",.02)
 ;;16252050600
 ;;9002226.02101,"785,16252050630 ",.01)
 ;;16252050630
 ;;9002226.02101,"785,16252050630 ",.02)
 ;;16252050630
 ;;9002226.02101,"785,16252050650 ",.01)
 ;;16252050650
 ;;9002226.02101,"785,16252050650 ",.02)
 ;;16252050650
 ;;9002226.02101,"785,16252050690 ",.01)
 ;;16252050690
 ;;9002226.02101,"785,16252050690 ",.02)
 ;;16252050690