BGPM5AQN ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON AUG 16, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1005,00186003228 ",.02)
 ;;00186003228
 ;;9002226.02101,"1005,00186003231 ",.01)
 ;;00186003231
 ;;9002226.02101,"1005,00186003231 ",.02)
 ;;00186003231
 ;;9002226.02101,"1005,00186003254 ",.01)
 ;;00186003254
 ;;9002226.02101,"1005,00186003254 ",.02)
 ;;00186003254
 ;;9002226.02101,"1005,00186016228 ",.01)
 ;;00186016228
 ;;9002226.02101,"1005,00186016228 ",.02)
 ;;00186016228
 ;;9002226.02101,"1005,00186016254 ",.01)
 ;;00186016254
 ;;9002226.02101,"1005,00186016254 ",.02)
 ;;00186016254
 ;;9002226.02101,"1005,00186032228 ",.01)
 ;;00186032228
 ;;9002226.02101,"1005,00186032228 ",.02)
 ;;00186032228
 ;;9002226.02101,"1005,00186032254 ",.01)
 ;;00186032254
 ;;9002226.02101,"1005,00186032254 ",.02)
 ;;00186032254
 ;;9002226.02101,"1005,00228270603 ",.01)
 ;;00228270603
 ;;9002226.02101,"1005,00228270603 ",.02)
 ;;00228270603
 ;;9002226.02101,"1005,00228270611 ",.01)
 ;;00228270611
 ;;9002226.02101,"1005,00228270611 ",.02)
 ;;00228270611
 ;;9002226.02101,"1005,00228270650 ",.01)
 ;;00228270650
 ;;9002226.02101,"1005,00228270650 ",.02)
 ;;00228270650
 ;;9002226.02101,"1005,00228270696 ",.01)
 ;;00228270696
 ;;9002226.02101,"1005,00228270696 ",.02)
 ;;00228270696
 ;;9002226.02101,"1005,00228270703 ",.01)
 ;;00228270703
 ;;9002226.02101,"1005,00228270703 ",.02)
 ;;00228270703
 ;;9002226.02101,"1005,00228270711 ",.01)
 ;;00228270711
 ;;9002226.02101,"1005,00228270711 ",.02)
 ;;00228270711
 ;;9002226.02101,"1005,00228270750 ",.01)
 ;;00228270750
 ;;9002226.02101,"1005,00228270750 ",.02)
 ;;00228270750
 ;;9002226.02101,"1005,00228270796 ",.01)
 ;;00228270796
 ;;9002226.02101,"1005,00228270796 ",.02)
 ;;00228270796
 ;;9002226.02101,"1005,00228270803 ",.01)
 ;;00228270803
 ;;9002226.02101,"1005,00228270803 ",.02)
 ;;00228270803
 ;;9002226.02101,"1005,00228270811 ",.01)
 ;;00228270811
 ;;9002226.02101,"1005,00228270811 ",.02)
 ;;00228270811
 ;;9002226.02101,"1005,00228270850 ",.01)
 ;;00228270850
 ;;9002226.02101,"1005,00228270850 ",.02)
 ;;00228270850
 ;;9002226.02101,"1005,00228270896 ",.01)
 ;;00228270896
 ;;9002226.02101,"1005,00228270896 ",.02)
 ;;00228270896
 ;;9002226.02101,"1005,00247057802 ",.01)
 ;;00247057802
 ;;9002226.02101,"1005,00247057802 ",.02)
 ;;00247057802
 ;;9002226.02101,"1005,00247057803 ",.01)
 ;;00247057803
 ;;9002226.02101,"1005,00247057803 ",.02)
 ;;00247057803
 ;;9002226.02101,"1005,00247057830 ",.01)
 ;;00247057830
 ;;9002226.02101,"1005,00247057830 ",.02)
 ;;00247057830
 ;;9002226.02101,"1005,00247057845 ",.01)
 ;;00247057845
 ;;9002226.02101,"1005,00247057845 ",.02)
 ;;00247057845
 ;;9002226.02101,"1005,00247057903 ",.01)
 ;;00247057903
 ;;9002226.02101,"1005,00247057903 ",.02)
 ;;00247057903
 ;;9002226.02101,"1005,00247057930 ",.01)
 ;;00247057930
 ;;9002226.02101,"1005,00247057930 ",.02)
 ;;00247057930
 ;;9002226.02101,"1005,00247102359 ",.01)
 ;;00247102359
 ;;9002226.02101,"1005,00247102359 ",.02)
 ;;00247102359
 ;;9002226.02101,"1005,00247102377 ",.01)
 ;;00247102377
 ;;9002226.02101,"1005,00247102377 ",.02)
 ;;00247102377
 ;;9002226.02101,"1005,00247102379 ",.01)
 ;;00247102379
 ;;9002226.02101,"1005,00247102379 ",.02)
 ;;00247102379
 ;;9002226.02101,"1005,00247102395 ",.01)
 ;;00247102395
 ;;9002226.02101,"1005,00247102395 ",.02)
 ;;00247102395
 ;;9002226.02101,"1005,00247109103 ",.01)
 ;;00247109103
 ;;9002226.02101,"1005,00247109103 ",.02)
 ;;00247109103
 ;;9002226.02101,"1005,00247113130 ",.01)
 ;;00247113130
 ;;9002226.02101,"1005,00247113130 ",.02)
 ;;00247113130
 ;;9002226.02101,"1005,00247113160 ",.01)
 ;;00247113160
 ;;9002226.02101,"1005,00247113160 ",.02)
 ;;00247113160
 ;;9002226.02101,"1005,00247113230 ",.01)
 ;;00247113230
 ;;9002226.02101,"1005,00247113230 ",.02)
 ;;00247113230
 ;;9002226.02101,"1005,00247113260 ",.01)
 ;;00247113260
 ;;9002226.02101,"1005,00247113260 ",.02)
 ;;00247113260
 ;;9002226.02101,"1005,00247114810 ",.01)
 ;;00247114810
 ;;9002226.02101,"1005,00247114810 ",.02)
 ;;00247114810
 ;;9002226.02101,"1005,00247127700 ",.01)
 ;;00247127700
 ;;9002226.02101,"1005,00247127700 ",.02)
 ;;00247127700
 ;;9002226.02101,"1005,00247138014 ",.01)
 ;;00247138014
 ;;9002226.02101,"1005,00247138014 ",.02)
 ;;00247138014
 ;;9002226.02101,"1005,00247143904 ",.01)
 ;;00247143904
 ;;9002226.02101,"1005,00247143904 ",.02)
 ;;00247143904
 ;;9002226.02101,"1005,00247144004 ",.01)
 ;;00247144004
 ;;9002226.02101,"1005,00247144004 ",.02)
 ;;00247144004
 ;;9002226.02101,"1005,00247152530 ",.01)
 ;;00247152530
 ;;9002226.02101,"1005,00247152530 ",.02)
 ;;00247152530
 ;;9002226.02101,"1005,00247152559 ",.01)
 ;;00247152559
 ;;9002226.02101,"1005,00247152559 ",.02)
 ;;00247152559
 ;;9002226.02101,"1005,00247152590 ",.01)
 ;;00247152590
 ;;9002226.02101,"1005,00247152590 ",.02)
 ;;00247152590
 ;;9002226.02101,"1005,00247163530 ",.01)
 ;;00247163530
 ;;9002226.02101,"1005,00247163530 ",.02)
 ;;00247163530
 ;;9002226.02101,"1005,00247163600 ",.01)
 ;;00247163600
 ;;9002226.02101,"1005,00247163600 ",.02)
 ;;00247163600
 ;;9002226.02101,"1005,00247163601 ",.01)
 ;;00247163601
 ;;9002226.02101,"1005,00247163601 ",.02)
 ;;00247163601
 ;;9002226.02101,"1005,00247163614 ",.01)
 ;;00247163614
 ;;9002226.02101,"1005,00247163614 ",.02)
 ;;00247163614
 ;;9002226.02101,"1005,00247163630 ",.01)
 ;;00247163630
 ;;9002226.02101,"1005,00247163630 ",.02)
 ;;00247163630
 ;;9002226.02101,"1005,00247163660 ",.01)
 ;;00247163660
 ;;9002226.02101,"1005,00247163660 ",.02)
 ;;00247163660
 ;;9002226.02101,"1005,00247163690 ",.01)
 ;;00247163690
 ;;9002226.02101,"1005,00247163690 ",.02)
 ;;00247163690
 ;;9002226.02101,"1005,00247163699 ",.01)
 ;;00247163699
 ;;9002226.02101,"1005,00247163699 ",.02)
 ;;00247163699
 ;;9002226.02101,"1005,00247163700 ",.01)
 ;;00247163700
 ;;9002226.02101,"1005,00247163700 ",.02)
 ;;00247163700
 ;;9002226.02101,"1005,00247163730 ",.01)
 ;;00247163730
 ;;9002226.02101,"1005,00247163730 ",.02)
 ;;00247163730
 ;;9002226.02101,"1005,00247163760 ",.01)
 ;;00247163760
 ;;9002226.02101,"1005,00247163760 ",.02)
 ;;00247163760
 ;;9002226.02101,"1005,00247188102 ",.01)
 ;;00247188102
 ;;9002226.02101,"1005,00247188102 ",.02)
 ;;00247188102
 ;;9002226.02101,"1005,00247188105 ",.01)
 ;;00247188105
 ;;9002226.02101,"1005,00247188105 ",.02)
 ;;00247188105
 ;;9002226.02101,"1005,00247188130 ",.01)
 ;;00247188130
 ;;9002226.02101,"1005,00247188130 ",.02)
 ;;00247188130
 ;;9002226.02101,"1005,00247188160 ",.01)
 ;;00247188160
 ;;9002226.02101,"1005,00247188160 ",.02)
 ;;00247188160
 ;;9002226.02101,"1005,00247188230 ",.01)
 ;;00247188230
 ;;9002226.02101,"1005,00247188230 ",.02)
 ;;00247188230
 ;;9002226.02101,"1005,00247188260 ",.01)
 ;;00247188260
 ;;9002226.02101,"1005,00247188260 ",.02)
 ;;00247188260
 ;;9002226.02101,"1005,00247188299 ",.01)
 ;;00247188299
 ;;9002226.02101,"1005,00247188299 ",.02)
 ;;00247188299
 ;;9002226.02101,"1005,00247191930 ",.01)
 ;;00247191930
 ;;9002226.02101,"1005,00247191930 ",.02)
 ;;00247191930
 ;;9002226.02101,"1005,00247192030 ",.01)
 ;;00247192030
 ;;9002226.02101,"1005,00247192030 ",.02)
 ;;00247192030
 ;;9002226.02101,"1005,00247192130 ",.01)
 ;;00247192130
 ;;9002226.02101,"1005,00247192130 ",.02)
 ;;00247192130
 ;;9002226.02101,"1005,00247195530 ",.01)
 ;;00247195530
 ;;9002226.02101,"1005,00247195530 ",.02)
 ;;00247195530
 ;;9002226.02101,"1005,00247195560 ",.01)
 ;;00247195560
 ;;9002226.02101,"1005,00247195560 ",.02)
 ;;00247195560
 ;;9002226.02101,"1005,00247195590 ",.01)
 ;;00247195590
 ;;9002226.02101,"1005,00247195590 ",.02)
 ;;00247195590
 ;;9002226.02101,"1005,00247195630 ",.01)
 ;;00247195630
 ;;9002226.02101,"1005,00247195630 ",.02)
 ;;00247195630
 ;;9002226.02101,"1005,00247195660 ",.01)
 ;;00247195660
 ;;9002226.02101,"1005,00247195660 ",.02)
 ;;00247195660
 ;;9002226.02101,"1005,00247195690 ",.01)
 ;;00247195690
 ;;9002226.02101,"1005,00247195690 ",.02)
 ;;00247195690
 ;;9002226.02101,"1005,00247195730 ",.01)
 ;;00247195730
 ;;9002226.02101,"1005,00247195730 ",.02)
 ;;00247195730
 ;;9002226.02101,"1005,00247195760 ",.01)
 ;;00247195760
 ;;9002226.02101,"1005,00247195760 ",.02)
 ;;00247195760
 ;;9002226.02101,"1005,00247195790 ",.01)
 ;;00247195790
 ;;9002226.02101,"1005,00247195790 ",.02)
 ;;00247195790
 ;;9002226.02101,"1005,00247196200 ",.01)
 ;;00247196200
 ;;9002226.02101,"1005,00247196200 ",.02)
 ;;00247196200
 ;;9002226.02101,"1005,00247196230 ",.01)
 ;;00247196230
 ;;9002226.02101,"1005,00247196230 ",.02)
 ;;00247196230
 ;;9002226.02101,"1005,00247200106 ",.01)
 ;;00247200106
 ;;9002226.02101,"1005,00247200106 ",.02)
 ;;00247200106
 ;;9002226.02101,"1005,00247200130 ",.01)
 ;;00247200130
 ;;9002226.02101,"1005,00247200130 ",.02)
 ;;00247200130
 ;;9002226.02101,"1005,00247202100 ",.01)
 ;;00247202100
 ;;9002226.02101,"1005,00247202100 ",.02)
 ;;00247202100
 ;;9002226.02101,"1005,00247202130 ",.01)
 ;;00247202130
 ;;9002226.02101,"1005,00247202130 ",.02)
 ;;00247202130
 ;;9002226.02101,"1005,00247202160 ",.01)
 ;;00247202160
 ;;9002226.02101,"1005,00247202160 ",.02)
 ;;00247202160
 ;;9002226.02101,"1005,00247205830 ",.01)
 ;;00247205830
 ;;9002226.02101,"1005,00247205830 ",.02)
 ;;00247205830
 ;;9002226.02101,"1005,00247210700 ",.01)
 ;;00247210700
 ;;9002226.02101,"1005,00247210700 ",.02)
 ;;00247210700
 ;;9002226.02101,"1005,00247210730 ",.01)
 ;;00247210730
 ;;9002226.02101,"1005,00247210730 ",.02)
 ;;00247210730
 ;;9002226.02101,"1005,00247210760 ",.01)
 ;;00247210760
 ;;9002226.02101,"1005,00247210760 ",.02)
 ;;00247210760
 ;;9002226.02101,"1005,00247210779 ",.01)
 ;;00247210779
 ;;9002226.02101,"1005,00247210779 ",.02)
 ;;00247210779
 ;;9002226.02101,"1005,00247210790 ",.01)
 ;;00247210790
 ;;9002226.02101,"1005,00247210790 ",.02)
 ;;00247210790
 ;;9002226.02101,"1005,00247215530 ",.01)
 ;;00247215530
 ;;9002226.02101,"1005,00247215530 ",.02)
 ;;00247215530
 ;;9002226.02101,"1005,00247215560 ",.01)
 ;;00247215560
 ;;9002226.02101,"1005,00247215560 ",.02)
 ;;00247215560
 ;;9002226.02101,"1005,00247215590 ",.01)
 ;;00247215590
 ;;9002226.02101,"1005,00247215590 ",.02)
 ;;00247215590
 ;;9002226.02101,"1005,00247217130 ",.01)
 ;;00247217130
 ;;9002226.02101,"1005,00247217130 ",.02)
 ;;00247217130
 ;;9002226.02101,"1005,00247223700 ",.01)
 ;;00247223700
 ;;9002226.02101,"1005,00247223700 ",.02)
 ;;00247223700
 ;;9002226.02101,"1005,00247223730 ",.01)
 ;;00247223730
 ;;9002226.02101,"1005,00247223730 ",.02)
 ;;00247223730
 ;;9002226.02101,"1005,00247225790 ",.01)
 ;;00247225790
 ;;9002226.02101,"1005,00247225790 ",.02)
 ;;00247225790
 ;;9002226.02101,"1005,00247228530 ",.01)
 ;;00247228530
 ;;9002226.02101,"1005,00247228530 ",.02)
 ;;00247228530
 ;;9002226.02101,"1005,00247228560 ",.01)
 ;;00247228560
 ;;9002226.02101,"1005,00247228560 ",.02)
 ;;00247228560
 ;;9002226.02101,"1005,00247228590 ",.01)
 ;;00247228590
 ;;9002226.02101,"1005,00247228590 ",.02)
 ;;00247228590
 ;;9002226.02101,"1005,00247228630 ",.01)
 ;;00247228630
 ;;9002226.02101,"1005,00247228630 ",.02)
 ;;00247228630
 ;;9002226.02101,"1005,00247228660 ",.01)
 ;;00247228660
 ;;9002226.02101,"1005,00247228660 ",.02)
 ;;00247228660
 ;;9002226.02101,"1005,00247228690 ",.01)
 ;;00247228690
 ;;9002226.02101,"1005,00247228690 ",.02)
 ;;00247228690
 ;;9002226.02101,"1005,00247228730 ",.01)
 ;;00247228730
 ;;9002226.02101,"1005,00247228730 ",.02)
 ;;00247228730
 ;;9002226.02101,"1005,00247228760 ",.01)
 ;;00247228760
 ;;9002226.02101,"1005,00247228760 ",.02)
 ;;00247228760
 ;;9002226.02101,"1005,00247228790 ",.01)
 ;;00247228790
 ;;9002226.02101,"1005,00247228790 ",.02)
 ;;00247228790