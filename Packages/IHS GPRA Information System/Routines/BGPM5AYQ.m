BGPM5AYQ ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON AUG 31, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1027,72197 ",.01)
 ;;72197
 ;;9002226.02101,"1027,72197 ",.02)
 ;;72197
 ;;9002226.02101,"1027,72198 ",.01)
 ;;72198
 ;;9002226.02101,"1027,72198 ",.02)
 ;;72198
 ;;9002226.02101,"1027,72200 ",.01)
 ;;72200
 ;;9002226.02101,"1027,72200 ",.02)
 ;;72200
 ;;9002226.02101,"1027,72202 ",.01)
 ;;72202
 ;;9002226.02101,"1027,72202 ",.02)
 ;;72202
 ;;9002226.02101,"1027,72220 ",.01)
 ;;72220
 ;;9002226.02101,"1027,72220 ",.02)
 ;;72220
 ;;9002226.02101,"1027,72240 ",.01)
 ;;72240
 ;;9002226.02101,"1027,72240 ",.02)
 ;;72240
 ;;9002226.02101,"1027,72255 ",.01)
 ;;72255
 ;;9002226.02101,"1027,72255 ",.02)
 ;;72255
 ;;9002226.02101,"1027,72265 ",.01)
 ;;72265
 ;;9002226.02101,"1027,72265 ",.02)
 ;;72265
 ;;9002226.02101,"1027,72270 ",.01)
 ;;72270
 ;;9002226.02101,"1027,72270 ",.02)
 ;;72270
 ;;9002226.02101,"1027,72275 ",.01)
 ;;72275
 ;;9002226.02101,"1027,72275 ",.02)
 ;;72275
 ;;9002226.02101,"1027,72285 ",.01)
 ;;72285
 ;;9002226.02101,"1027,72285 ",.02)
 ;;72285
 ;;9002226.02101,"1027,72291 ",.01)
 ;;72291
 ;;9002226.02101,"1027,72291 ",.02)
 ;;72291
 ;;9002226.02101,"1027,72292 ",.01)
 ;;72292
 ;;9002226.02101,"1027,72292 ",.02)
 ;;72292
 ;;9002226.02101,"1027,72295 ",.01)
 ;;72295
 ;;9002226.02101,"1027,72295 ",.02)
 ;;72295
 ;;9002226.02101,"1027,73000 ",.01)
 ;;73000
 ;;9002226.02101,"1027,73000 ",.02)
 ;;73000
 ;;9002226.02101,"1027,73010 ",.01)
 ;;73010
 ;;9002226.02101,"1027,73010 ",.02)
 ;;73010
 ;;9002226.02101,"1027,73020 ",.01)
 ;;73020
 ;;9002226.02101,"1027,73020 ",.02)
 ;;73020
 ;;9002226.02101,"1027,73030 ",.01)
 ;;73030
 ;;9002226.02101,"1027,73030 ",.02)
 ;;73030
 ;;9002226.02101,"1027,73040 ",.01)
 ;;73040
 ;;9002226.02101,"1027,73040 ",.02)
 ;;73040
 ;;9002226.02101,"1027,73050 ",.01)
 ;;73050
 ;;9002226.02101,"1027,73050 ",.02)
 ;;73050
 ;;9002226.02101,"1027,73060 ",.01)
 ;;73060
 ;;9002226.02101,"1027,73060 ",.02)
 ;;73060
 ;;9002226.02101,"1027,73070 ",.01)
 ;;73070
 ;;9002226.02101,"1027,73070 ",.02)
 ;;73070
 ;;9002226.02101,"1027,73080 ",.01)
 ;;73080
 ;;9002226.02101,"1027,73080 ",.02)
 ;;73080
 ;;9002226.02101,"1027,73085 ",.01)
 ;;73085
 ;;9002226.02101,"1027,73085 ",.02)
 ;;73085
 ;;9002226.02101,"1027,73090 ",.01)
 ;;73090
 ;;9002226.02101,"1027,73090 ",.02)
 ;;73090
 ;;9002226.02101,"1027,73092 ",.01)
 ;;73092
 ;;9002226.02101,"1027,73092 ",.02)
 ;;73092
 ;;9002226.02101,"1027,73100 ",.01)
 ;;73100
 ;;9002226.02101,"1027,73100 ",.02)
 ;;73100
 ;;9002226.02101,"1027,73110 ",.01)
 ;;73110
 ;;9002226.02101,"1027,73110 ",.02)
 ;;73110
 ;;9002226.02101,"1027,73115 ",.01)
 ;;73115
 ;;9002226.02101,"1027,73115 ",.02)
 ;;73115
 ;;9002226.02101,"1027,73120 ",.01)
 ;;73120
 ;;9002226.02101,"1027,73120 ",.02)
 ;;73120
 ;;9002226.02101,"1027,73130 ",.01)
 ;;73130
 ;;9002226.02101,"1027,73130 ",.02)
 ;;73130
 ;;9002226.02101,"1027,73140 ",.01)
 ;;73140
 ;;9002226.02101,"1027,73140 ",.02)
 ;;73140
 ;;9002226.02101,"1027,73200 ",.01)
 ;;73200
 ;;9002226.02101,"1027,73200 ",.02)
 ;;73200
 ;;9002226.02101,"1027,73201 ",.01)
 ;;73201
 ;;9002226.02101,"1027,73201 ",.02)
 ;;73201
 ;;9002226.02101,"1027,73202 ",.01)
 ;;73202
 ;;9002226.02101,"1027,73202 ",.02)
 ;;73202
 ;;9002226.02101,"1027,73206 ",.01)
 ;;73206
 ;;9002226.02101,"1027,73206 ",.02)
 ;;73206
 ;;9002226.02101,"1027,73218 ",.01)
 ;;73218
 ;;9002226.02101,"1027,73218 ",.02)
 ;;73218
 ;;9002226.02101,"1027,73219 ",.01)
 ;;73219
 ;;9002226.02101,"1027,73219 ",.02)
 ;;73219
 ;;9002226.02101,"1027,73220 ",.01)
 ;;73220
 ;;9002226.02101,"1027,73220 ",.02)
 ;;73220
 ;;9002226.02101,"1027,73221 ",.01)
 ;;73221
 ;;9002226.02101,"1027,73221 ",.02)
 ;;73221
 ;;9002226.02101,"1027,73222 ",.01)
 ;;73222
 ;;9002226.02101,"1027,73222 ",.02)
 ;;73222
 ;;9002226.02101,"1027,73223 ",.01)
 ;;73223
 ;;9002226.02101,"1027,73223 ",.02)
 ;;73223
 ;;9002226.02101,"1027,73225 ",.01)
 ;;73225
 ;;9002226.02101,"1027,73225 ",.02)
 ;;73225
 ;;9002226.02101,"1027,73500 ",.01)
 ;;73500
 ;;9002226.02101,"1027,73500 ",.02)
 ;;73500
 ;;9002226.02101,"1027,73510 ",.01)
 ;;73510
 ;;9002226.02101,"1027,73510 ",.02)
 ;;73510
 ;;9002226.02101,"1027,73520 ",.01)
 ;;73520
 ;;9002226.02101,"1027,73520 ",.02)
 ;;73520
 ;;9002226.02101,"1027,73525 ",.01)
 ;;73525
 ;;9002226.02101,"1027,73525 ",.02)
 ;;73525
 ;;9002226.02101,"1027,73530 ",.01)
 ;;73530
 ;;9002226.02101,"1027,73530 ",.02)
 ;;73530
 ;;9002226.02101,"1027,73540 ",.01)
 ;;73540
 ;;9002226.02101,"1027,73540 ",.02)
 ;;73540
 ;;9002226.02101,"1027,73542 ",.01)
 ;;73542
 ;;9002226.02101,"1027,73542 ",.02)
 ;;73542
 ;;9002226.02101,"1027,73550 ",.01)
 ;;73550
 ;;9002226.02101,"1027,73550 ",.02)
 ;;73550
 ;;9002226.02101,"1027,73560 ",.01)
 ;;73560
 ;;9002226.02101,"1027,73560 ",.02)
 ;;73560
 ;;9002226.02101,"1027,73562 ",.01)
 ;;73562
 ;;9002226.02101,"1027,73562 ",.02)
 ;;73562
 ;;9002226.02101,"1027,73564 ",.01)
 ;;73564
 ;;9002226.02101,"1027,73564 ",.02)
 ;;73564
 ;;9002226.02101,"1027,73565 ",.01)
 ;;73565
 ;;9002226.02101,"1027,73565 ",.02)
 ;;73565
 ;;9002226.02101,"1027,73580 ",.01)
 ;;73580
 ;;9002226.02101,"1027,73580 ",.02)
 ;;73580
 ;;9002226.02101,"1027,73590 ",.01)
 ;;73590
 ;;9002226.02101,"1027,73590 ",.02)
 ;;73590
 ;;9002226.02101,"1027,73592 ",.01)
 ;;73592
 ;;9002226.02101,"1027,73592 ",.02)
 ;;73592
 ;;9002226.02101,"1027,73600 ",.01)
 ;;73600
 ;;9002226.02101,"1027,73600 ",.02)
 ;;73600
 ;;9002226.02101,"1027,73610 ",.01)
 ;;73610
 ;;9002226.02101,"1027,73610 ",.02)
 ;;73610
 ;;9002226.02101,"1027,73615 ",.01)
 ;;73615
 ;;9002226.02101,"1027,73615 ",.02)
 ;;73615
 ;;9002226.02101,"1027,73620 ",.01)
 ;;73620
 ;;9002226.02101,"1027,73620 ",.02)
 ;;73620
 ;;9002226.02101,"1027,73630 ",.01)
 ;;73630
 ;;9002226.02101,"1027,73630 ",.02)
 ;;73630
 ;;9002226.02101,"1027,73650 ",.01)
 ;;73650
 ;;9002226.02101,"1027,73650 ",.02)
 ;;73650
 ;;9002226.02101,"1027,73660 ",.01)
 ;;73660
 ;;9002226.02101,"1027,73660 ",.02)
 ;;73660
 ;;9002226.02101,"1027,73700 ",.01)
 ;;73700
 ;;9002226.02101,"1027,73700 ",.02)
 ;;73700
 ;;9002226.02101,"1027,73701 ",.01)
 ;;73701
 ;;9002226.02101,"1027,73701 ",.02)
 ;;73701
 ;;9002226.02101,"1027,73702 ",.01)
 ;;73702
 ;;9002226.02101,"1027,73702 ",.02)
 ;;73702
 ;;9002226.02101,"1027,73706 ",.01)
 ;;73706
 ;;9002226.02101,"1027,73706 ",.02)
 ;;73706
 ;;9002226.02101,"1027,73718 ",.01)
 ;;73718
 ;;9002226.02101,"1027,73718 ",.02)
 ;;73718
 ;;9002226.02101,"1027,73719 ",.01)
 ;;73719
 ;;9002226.02101,"1027,73719 ",.02)
 ;;73719
 ;;9002226.02101,"1027,73720 ",.01)
 ;;73720
 ;;9002226.02101,"1027,73720 ",.02)
 ;;73720
 ;;9002226.02101,"1027,73721 ",.01)
 ;;73721
 ;;9002226.02101,"1027,73721 ",.02)
 ;;73721
 ;;9002226.02101,"1027,73722 ",.01)
 ;;73722
 ;;9002226.02101,"1027,73722 ",.02)
 ;;73722
 ;;9002226.02101,"1027,73723 ",.01)
 ;;73723
 ;;9002226.02101,"1027,73723 ",.02)
 ;;73723
 ;;9002226.02101,"1027,73725 ",.01)
 ;;73725
 ;;9002226.02101,"1027,73725 ",.02)
 ;;73725
 ;;9002226.02101,"1027,74000 ",.01)
 ;;74000
 ;;9002226.02101,"1027,74000 ",.02)
 ;;74000
 ;;9002226.02101,"1027,74010 ",.01)
 ;;74010
 ;;9002226.02101,"1027,74010 ",.02)
 ;;74010
 ;;9002226.02101,"1027,74020 ",.01)
 ;;74020
 ;;9002226.02101,"1027,74020 ",.02)
 ;;74020
 ;;9002226.02101,"1027,74022 ",.01)
 ;;74022
 ;;9002226.02101,"1027,74022 ",.02)
 ;;74022
 ;;9002226.02101,"1027,74150 ",.01)
 ;;74150
 ;;9002226.02101,"1027,74150 ",.02)
 ;;74150
 ;;9002226.02101,"1027,74160 ",.01)
 ;;74160
 ;;9002226.02101,"1027,74160 ",.02)
 ;;74160
 ;;9002226.02101,"1027,74170 ",.01)
 ;;74170
 ;;9002226.02101,"1027,74170 ",.02)
 ;;74170
 ;;9002226.02101,"1027,74175 ",.01)
 ;;74175
 ;;9002226.02101,"1027,74175 ",.02)
 ;;74175
 ;;9002226.02101,"1027,74181 ",.01)
 ;;74181
 ;;9002226.02101,"1027,74181 ",.02)
 ;;74181
 ;;9002226.02101,"1027,74182 ",.01)
 ;;74182
 ;;9002226.02101,"1027,74182 ",.02)
 ;;74182
 ;;9002226.02101,"1027,74183 ",.01)
 ;;74183
 ;;9002226.02101,"1027,74183 ",.02)
 ;;74183
 ;;9002226.02101,"1027,74185 ",.01)
 ;;74185
 ;;9002226.02101,"1027,74185 ",.02)
 ;;74185
 ;;9002226.02101,"1027,74190 ",.01)
 ;;74190
 ;;9002226.02101,"1027,74190 ",.02)
 ;;74190
 ;;9002226.02101,"1027,74210 ",.01)
 ;;74210
 ;;9002226.02101,"1027,74210 ",.02)
 ;;74210
 ;;9002226.02101,"1027,74220 ",.01)
 ;;74220
 ;;9002226.02101,"1027,74220 ",.02)
 ;;74220
 ;;9002226.02101,"1027,74230 ",.01)
 ;;74230
 ;;9002226.02101,"1027,74230 ",.02)
 ;;74230
 ;;9002226.02101,"1027,74235 ",.01)
 ;;74235
 ;;9002226.02101,"1027,74235 ",.02)
 ;;74235
 ;;9002226.02101,"1027,74240 ",.01)
 ;;74240
 ;;9002226.02101,"1027,74240 ",.02)
 ;;74240
 ;;9002226.02101,"1027,74241 ",.01)
 ;;74241
 ;;9002226.02101,"1027,74241 ",.02)
 ;;74241
 ;;9002226.02101,"1027,74245 ",.01)
 ;;74245
 ;;9002226.02101,"1027,74245 ",.02)
 ;;74245
 ;;9002226.02101,"1027,74246 ",.01)
 ;;74246
 ;;9002226.02101,"1027,74246 ",.02)
 ;;74246
 ;;9002226.02101,"1027,74247 ",.01)
 ;;74247
 ;;9002226.02101,"1027,74247 ",.02)
 ;;74247
 ;;9002226.02101,"1027,74249 ",.01)
 ;;74249
 ;;9002226.02101,"1027,74249 ",.02)
 ;;74249
 ;;9002226.02101,"1027,74250 ",.01)
 ;;74250
 ;;9002226.02101,"1027,74250 ",.02)
 ;;74250
 ;;9002226.02101,"1027,74251 ",.01)
 ;;74251
 ;;9002226.02101,"1027,74251 ",.02)
 ;;74251
 ;;9002226.02101,"1027,74260 ",.01)
 ;;74260
 ;;9002226.02101,"1027,74260 ",.02)
 ;;74260
 ;;9002226.02101,"1027,74270 ",.01)
 ;;74270
 ;;9002226.02101,"1027,74270 ",.02)
 ;;74270
 ;;9002226.02101,"1027,74280 ",.01)
 ;;74280
 ;;9002226.02101,"1027,74280 ",.02)
 ;;74280
 ;;9002226.02101,"1027,74283 ",.01)
 ;;74283
 ;;9002226.02101,"1027,74283 ",.02)
 ;;74283
 ;;9002226.02101,"1027,74290 ",.01)
 ;;74290
 ;;9002226.02101,"1027,74290 ",.02)
 ;;74290
 ;;9002226.02101,"1027,74291 ",.01)
 ;;74291
 ;;9002226.02101,"1027,74291 ",.02)
 ;;74291
 ;;9002226.02101,"1027,74300 ",.01)
 ;;74300
 ;;9002226.02101,"1027,74300 ",.02)
 ;;74300
 ;;9002226.02101,"1027,74301 ",.01)
 ;;74301
 ;;9002226.02101,"1027,74301 ",.02)
 ;;74301
 ;;9002226.02101,"1027,74305 ",.01)
 ;;74305
 ;;9002226.02101,"1027,74305 ",.02)
 ;;74305
 ;;9002226.02101,"1027,74320 ",.01)
 ;;74320
 ;;9002226.02101,"1027,74320 ",.02)
 ;;74320
 ;;9002226.02101,"1027,74327 ",.01)
 ;;74327
 ;;9002226.02101,"1027,74327 ",.02)
 ;;74327
 ;;9002226.02101,"1027,74328 ",.01)
 ;;74328
 ;;9002226.02101,"1027,74328 ",.02)
 ;;74328
 ;;9002226.02101,"1027,74329 ",.01)
 ;;74329
 ;;9002226.02101,"1027,74329 ",.02)
 ;;74329
 ;;9002226.02101,"1027,74330 ",.01)
 ;;74330
 ;;9002226.02101,"1027,74330 ",.02)
 ;;74330
 ;;9002226.02101,"1027,74340 ",.01)
 ;;74340
 ;;9002226.02101,"1027,74340 ",.02)
 ;;74340
 ;;9002226.02101,"1027,74350 ",.01)
 ;;74350
 ;;9002226.02101,"1027,74350 ",.02)
 ;;74350
 ;;9002226.02101,"1027,74355 ",.01)
 ;;74355
 ;;9002226.02101,"1027,74355 ",.02)
 ;;74355
 ;;9002226.02101,"1027,74360 ",.01)
 ;;74360
 ;;9002226.02101,"1027,74360 ",.02)
 ;;74360
 ;;9002226.02101,"1027,74363 ",.01)
 ;;74363
 ;;9002226.02101,"1027,74363 ",.02)
 ;;74363
 ;;9002226.02101,"1027,74400 ",.01)
 ;;74400
 ;;9002226.02101,"1027,74400 ",.02)
 ;;74400
 ;;9002226.02101,"1027,74410 ",.01)
 ;;74410
 ;;9002226.02101,"1027,74410 ",.02)
 ;;74410
 ;;9002226.02101,"1027,74415 ",.01)
 ;;74415
 ;;9002226.02101,"1027,74415 ",.02)
 ;;74415
 ;;9002226.02101,"1027,74420 ",.01)
 ;;74420
 ;;9002226.02101,"1027,74420 ",.02)
 ;;74420