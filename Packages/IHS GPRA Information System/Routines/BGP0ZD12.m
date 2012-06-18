BGP0ZD12 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"976,00378-0451-05 ",.02)
 ;;00378-0451-05
 ;;9002226.02101,"976,00378-0471-01 ",.01)
 ;;00378-0471-01
 ;;9002226.02101,"976,00378-0471-01 ",.02)
 ;;00378-0471-01
 ;;9002226.02101,"976,00378-0531-01 ",.01)
 ;;00378-0531-01
 ;;9002226.02101,"976,00378-0531-01 ",.02)
 ;;00378-0531-01
 ;;9002226.02101,"976,00378-0555-01 ",.01)
 ;;00378-0555-01
 ;;9002226.02101,"976,00378-0555-01 ",.02)
 ;;00378-0555-01
 ;;9002226.02101,"976,00378-0555-05 ",.01)
 ;;00378-0555-05
 ;;9002226.02101,"976,00378-0555-05 ",.02)
 ;;00378-0555-05
 ;;9002226.02101,"976,00378-1010-01 ",.01)
 ;;00378-1010-01
 ;;9002226.02101,"976,00378-1010-01 ",.02)
 ;;00378-1010-01
 ;;9002226.02101,"976,00378-1134-01 ",.01)
 ;;00378-1134-01
 ;;9002226.02101,"976,00378-1134-01 ",.02)
 ;;00378-1134-01
 ;;9002226.02101,"976,00378-1242-01 ",.01)
 ;;00378-1242-01
 ;;9002226.02101,"976,00378-1242-01 ",.02)
 ;;00378-1242-01
 ;;9002226.02101,"976,00378-2020-01 ",.01)
 ;;00378-2020-01
 ;;9002226.02101,"976,00378-2020-01 ",.02)
 ;;00378-2020-01
 ;;9002226.02101,"976,00378-2020-05 ",.01)
 ;;00378-2020-05
 ;;9002226.02101,"976,00378-2020-05 ",.02)
 ;;00378-2020-05
 ;;9002226.02101,"976,00378-2150-01 ",.01)
 ;;00378-2150-01
 ;;9002226.02101,"976,00378-2150-01 ",.02)
 ;;00378-2150-01
 ;;9002226.02101,"976,00378-2474-01 ",.01)
 ;;00378-2474-01
 ;;9002226.02101,"976,00378-2474-01 ",.02)
 ;;00378-2474-01
 ;;9002226.02101,"976,00378-3000-01 ",.01)
 ;;00378-3000-01
 ;;9002226.02101,"976,00378-3000-01 ",.02)
 ;;00378-3000-01
 ;;9002226.02101,"976,00378-3000-05 ",.01)
 ;;00378-3000-05
 ;;9002226.02101,"976,00378-3000-05 ",.02)
 ;;00378-3000-05
 ;;9002226.02101,"976,00378-4070-01 ",.01)
 ;;00378-4070-01
 ;;9002226.02101,"976,00378-4070-01 ",.02)
 ;;00378-4070-01
 ;;9002226.02101,"976,00378-5200-01 ",.01)
 ;;00378-5200-01
 ;;9002226.02101,"976,00378-5200-01 ",.02)
 ;;00378-5200-01
 ;;9002226.02101,"976,00378-5750-01 ",.01)
 ;;00378-5750-01
 ;;9002226.02101,"976,00378-5750-01 ",.02)
 ;;00378-5750-01
 ;;9002226.02101,"976,00378-8200-01 ",.01)
 ;;00378-8200-01
 ;;9002226.02101,"976,00378-8200-01 ",.02)
 ;;00378-8200-01
 ;;9002226.02101,"976,00463-6113-05 ",.01)
 ;;00463-6113-05
 ;;9002226.02101,"976,00463-6113-05 ",.02)
 ;;00463-6113-05
 ;;9002226.02101,"976,00463-6114-05 ",.01)
 ;;00463-6114-05
 ;;9002226.02101,"976,00463-6114-05 ",.02)
 ;;00463-6114-05
 ;;9002226.02101,"976,00463-6311-05 ",.01)
 ;;00463-6311-05
 ;;9002226.02101,"976,00463-6311-05 ",.02)
 ;;00463-6311-05
 ;;9002226.02101,"976,00472-1270-16 ",.01)
 ;;00472-1270-16
 ;;9002226.02101,"976,00472-1270-16 ",.02)
 ;;00472-1270-16
 ;;9002226.02101,"976,00472-1270-94 ",.01)
 ;;00472-1270-94
 ;;9002226.02101,"976,00472-1270-94 ",.02)
 ;;00472-1270-94
 ;;9002226.02101,"976,00591-0338-01 ",.01)
 ;;00591-0338-01
 ;;9002226.02101,"976,00591-0338-01 ",.02)
 ;;00591-0338-01
 ;;9002226.02101,"976,00591-0338-10 ",.01)
 ;;00591-0338-10
 ;;9002226.02101,"976,00591-0338-10 ",.02)
 ;;00591-0338-10
 ;;9002226.02101,"976,00591-0338-60 ",.01)
 ;;00591-0338-60
 ;;9002226.02101,"976,00591-0338-60 ",.02)
 ;;00591-0338-60
 ;;9002226.02101,"976,00591-0339-01 ",.01)
 ;;00591-0339-01
 ;;9002226.02101,"976,00591-0339-01 ",.02)
 ;;00591-0339-01
 ;;9002226.02101,"976,00591-0339-05 ",.01)
 ;;00591-0339-05
 ;;9002226.02101,"976,00591-0339-05 ",.02)
 ;;00591-0339-05
 ;;9002226.02101,"976,00591-0339-10 ",.01)
 ;;00591-0339-10
 ;;9002226.02101,"976,00591-0339-10 ",.02)
 ;;00591-0339-10
 ;;9002226.02101,"976,00591-0339-60 ",.01)
 ;;00591-0339-60
 ;;9002226.02101,"976,00591-0339-60 ",.02)
 ;;00591-0339-60
 ;;9002226.02101,"976,00591-0676-01 ",.01)
 ;;00591-0676-01
 ;;9002226.02101,"976,00591-0676-01 ",.02)
 ;;00591-0676-01
 ;;9002226.02101,"976,00591-0791-01 ",.01)
 ;;00591-0791-01
 ;;9002226.02101,"976,00591-0791-01 ",.02)
 ;;00591-0791-01
 ;;9002226.02101,"976,00591-0791-05 ",.01)
 ;;00591-0791-05
 ;;9002226.02101,"976,00591-0791-05 ",.02)
 ;;00591-0791-05
 ;;9002226.02101,"976,00591-0792-01 ",.01)
 ;;00591-0792-01
 ;;9002226.02101,"976,00591-0792-01 ",.02)
 ;;00591-0792-01
 ;;9002226.02101,"976,00591-0792-05 ",.01)
 ;;00591-0792-05
 ;;9002226.02101,"976,00591-0792-05 ",.02)
 ;;00591-0792-05
 ;;9002226.02101,"976,00591-0793-01 ",.01)
 ;;00591-0793-01
 ;;9002226.02101,"976,00591-0793-01 ",.02)
 ;;00591-0793-01
 ;;9002226.02101,"976,00591-0793-05 ",.01)
 ;;00591-0793-05
 ;;9002226.02101,"976,00591-0793-05 ",.02)
 ;;00591-0793-05
 ;;9002226.02101,"976,00591-0821-01 ",.01)
 ;;00591-0821-01
 ;;9002226.02101,"976,00591-0821-01 ",.02)
 ;;00591-0821-01
 ;;9002226.02101,"976,00591-0822-01 ",.01)
 ;;00591-0822-01
 ;;9002226.02101,"976,00591-0822-01 ",.02)
 ;;00591-0822-01
 ;;9002226.02101,"976,00591-0822-05 ",.01)
 ;;00591-0822-05
 ;;9002226.02101,"976,00591-0822-05 ",.02)
 ;;00591-0822-05
 ;;9002226.02101,"976,00591-2137-01 ",.01)
 ;;00591-2137-01
 ;;9002226.02101,"976,00591-2137-01 ",.02)
 ;;00591-2137-01
 ;;9002226.02101,"976,00591-2137-05 ",.01)
 ;;00591-2137-05
 ;;9002226.02101,"976,00591-2137-05 ",.02)
 ;;00591-2137-05
 ;;9002226.02101,"976,00591-4010-01 ",.01)
 ;;00591-4010-01
 ;;9002226.02101,"976,00591-4010-01 ",.02)
 ;;00591-4010-01
 ;;9002226.02101,"976,00591-4010-05 ",.01)
 ;;00591-4010-05
 ;;9002226.02101,"976,00591-4010-05 ",.02)
 ;;00591-4010-05
 ;;9002226.02101,"976,00591-4011-01 ",.01)
 ;;00591-4011-01
 ;;9002226.02101,"976,00591-4011-01 ",.02)
 ;;00591-4011-01
 ;;9002226.02101,"976,00591-4011-05 ",.01)
 ;;00591-4011-05
 ;;9002226.02101,"976,00591-4011-05 ",.02)
 ;;00591-4011-05
 ;;9002226.02101,"976,00591-5660-01 ",.01)
 ;;00591-5660-01
 ;;9002226.02101,"976,00591-5660-01 ",.02)
 ;;00591-5660-01
 ;;9002226.02101,"976,00591-5660-05 ",.01)
 ;;00591-5660-05
 ;;9002226.02101,"976,00591-5660-05 ",.02)
 ;;00591-5660-05
 ;;9002226.02101,"976,00591-5661-01 ",.01)
 ;;00591-5661-01
 ;;9002226.02101,"976,00591-5661-01 ",.02)
 ;;00591-5661-01
 ;;9002226.02101,"976,00591-5661-05 ",.01)
 ;;00591-5661-05
 ;;9002226.02101,"976,00591-5661-05 ",.02)
 ;;00591-5661-05
 ;;9002226.02101,"976,00597-0029-01 ",.01)
 ;;00597-0029-01
 ;;9002226.02101,"976,00597-0029-01 ",.02)
 ;;00597-0029-01
 ;;9002226.02101,"976,00597-0030-01 ",.01)
 ;;00597-0030-01
 ;;9002226.02101,"976,00597-0030-01 ",.02)
 ;;00597-0030-01
 ;;9002226.02101,"976,00603-4018-21 ",.01)
 ;;00603-4018-21
 ;;9002226.02101,"976,00603-4018-21 ",.02)
 ;;00603-4018-21
 ;;9002226.02101,"976,00603-4018-28 ",.01)
 ;;00603-4018-28
 ;;9002226.02101,"976,00603-4018-28 ",.02)
 ;;00603-4018-28
 ;;9002226.02101,"976,00603-4019-21 ",.01)
 ;;00603-4019-21
 ;;9002226.02101,"976,00603-4019-21 ",.02)
 ;;00603-4019-21
 ;;9002226.02101,"976,00603-4019-28 ",.01)
 ;;00603-4019-28
 ;;9002226.02101,"976,00603-4019-28 ",.02)
 ;;00603-4019-28
 ;;9002226.02101,"976,00603-4020-21 ",.01)
 ;;00603-4020-21
 ;;9002226.02101,"976,00603-4020-21 ",.02)
 ;;00603-4020-21
 ;;9002226.02101,"976,00603-4020-28 ",.01)
 ;;00603-4020-28
 ;;9002226.02101,"976,00603-4020-28 ",.02)
 ;;00603-4020-28
 ;;9002226.02101,"976,00603-6215-21 ",.01)
 ;;00603-6215-21
 ;;9002226.02101,"976,00603-6215-21 ",.02)
 ;;00603-6215-21
 ;;9002226.02101,"976,00603-6216-21 ",.01)
 ;;00603-6216-21
 ;;9002226.02101,"976,00603-6216-21 ",.02)
 ;;00603-6216-21
 ;;9002226.02101,"976,00603-6217-21 ",.01)
 ;;00603-6217-21
 ;;9002226.02101,"976,00603-6217-21 ",.02)
 ;;00603-6217-21
 ;;9002226.02101,"976,00677-1031-01 ",.01)
 ;;00677-1031-01
 ;;9002226.02101,"976,00677-1031-01 ",.02)
 ;;00677-1031-01
 ;;9002226.02101,"976,00677-1031-05 ",.01)
 ;;00677-1031-05
 ;;9002226.02101,"976,00677-1031-05 ",.02)
 ;;00677-1031-05
 ;;9002226.02101,"976,00677-1032-01 ",.01)
 ;;00677-1032-01
 ;;9002226.02101,"976,00677-1032-01 ",.02)
 ;;00677-1032-01
 ;;9002226.02101,"976,00677-1032-05 ",.01)
 ;;00677-1032-05
 ;;9002226.02101,"976,00677-1032-05 ",.02)
 ;;00677-1032-05
 ;;9002226.02101,"976,00677-1119-01 ",.01)
 ;;00677-1119-01
 ;;9002226.02101,"976,00677-1119-01 ",.02)
 ;;00677-1119-01
 ;;9002226.02101,"976,00677-1119-05 ",.01)
 ;;00677-1119-05
 ;;9002226.02101,"976,00677-1119-05 ",.02)
 ;;00677-1119-05
 ;;9002226.02101,"976,00677-1173-01 ",.01)
 ;;00677-1173-01
 ;;9002226.02101,"976,00677-1173-01 ",.02)
 ;;00677-1173-01
 ;;9002226.02101,"976,00677-1173-05 ",.01)
 ;;00677-1173-05
 ;;9002226.02101,"976,00677-1173-05 ",.02)
 ;;00677-1173-05
 ;;9002226.02101,"976,00677-1173-06 ",.01)
 ;;00677-1173-06
 ;;9002226.02101,"976,00677-1173-06 ",.02)
 ;;00677-1173-06
 ;;9002226.02101,"976,00677-1174-01 ",.01)
 ;;00677-1174-01
 ;;9002226.02101,"976,00677-1174-01 ",.02)
 ;;00677-1174-01
 ;;9002226.02101,"976,00677-1174-05 ",.01)
 ;;00677-1174-05
 ;;9002226.02101,"976,00677-1174-05 ",.02)
 ;;00677-1174-05
 ;;9002226.02101,"976,00677-1174-06 ",.01)
 ;;00677-1174-06
 ;;9002226.02101,"976,00677-1174-06 ",.02)
 ;;00677-1174-06
 ;;9002226.02101,"976,00677-1425-01 ",.01)
 ;;00677-1425-01
 ;;9002226.02101,"976,00677-1425-01 ",.02)
 ;;00677-1425-01
 ;;9002226.02101,"976,00781-1163-01 ",.01)
 ;;00781-1163-01
 ;;9002226.02101,"976,00781-1163-01 ",.02)
 ;;00781-1163-01
 ;;9002226.02101,"976,00781-1163-05 ",.01)
 ;;00781-1163-05
 ;;9002226.02101,"976,00781-1163-05 ",.02)
 ;;00781-1163-05
 ;;9002226.02101,"976,00781-1164-01 ",.01)
 ;;00781-1164-01
 ;;9002226.02101,"976,00781-1164-01 ",.02)
 ;;00781-1164-01
 ;;9002226.02101,"976,00781-1164-05 ",.01)
 ;;00781-1164-05
 ;;9002226.02101,"976,00781-1164-05 ",.02)
 ;;00781-1164-05
 ;;9002226.02101,"976,00781-1165-01 ",.01)
 ;;00781-1165-01
 ;;9002226.02101,"976,00781-1165-01 ",.02)
 ;;00781-1165-01
 ;;9002226.02101,"976,00781-1165-05 ",.01)
 ;;00781-1165-05
 ;;9002226.02101,"976,00781-1165-05 ",.02)
 ;;00781-1165-05
 ;;9002226.02101,"976,00781-1187-01 ",.01)
 ;;00781-1187-01
 ;;9002226.02101,"976,00781-1187-01 ",.02)
 ;;00781-1187-01
 ;;9002226.02101,"976,00781-1187-10 ",.01)
 ;;00781-1187-10
 ;;9002226.02101,"976,00781-1187-10 ",.02)
 ;;00781-1187-10
 ;;9002226.02101,"976,00781-1188-01 ",.01)
 ;;00781-1188-01
 ;;9002226.02101,"976,00781-1188-01 ",.02)
 ;;00781-1188-01
 ;;9002226.02101,"976,00781-1188-10 ",.01)
 ;;00781-1188-10
 ;;9002226.02101,"976,00781-1188-10 ",.02)
 ;;00781-1188-10
 ;;9002226.02101,"976,00781-1381-01 ",.01)
 ;;00781-1381-01
 ;;9002226.02101,"976,00781-1381-01 ",.02)
 ;;00781-1381-01
 ;;9002226.02101,"976,00781-1646-01 ",.01)
 ;;00781-1646-01
 ;;9002226.02101,"976,00781-1646-01 ",.02)
 ;;00781-1646-01
 ;;9002226.02101,"976,00781-1653-01 ",.01)
 ;;00781-1653-01
 ;;9002226.02101,"976,00781-1653-01 ",.02)
 ;;00781-1653-01
 ;;9002226.02101,"976,00781-1785-01 ",.01)
 ;;00781-1785-01
 ;;9002226.02101,"976,00781-1785-01 ",.02)
 ;;00781-1785-01
 ;;9002226.02101,"976,00781-1787-01 ",.01)
 ;;00781-1787-01
 ;;9002226.02101,"976,00781-1787-01 ",.02)
 ;;00781-1787-01
 ;;9002226.02101,"976,00781-1789-01 ",.01)
 ;;00781-1789-01
 ;;9002226.02101,"976,00781-1789-01 ",.02)
 ;;00781-1789-01
 ;;9002226.02101,"976,00781-5017-01 ",.01)
 ;;00781-5017-01
 ;;9002226.02101,"976,00781-5017-01 ",.02)
 ;;00781-5017-01
 ;;9002226.02101,"976,00904-1748-40 ",.01)
 ;;00904-1748-40
 ;;9002226.02101,"976,00904-1748-40 ",.02)
 ;;00904-1748-40
 ;;9002226.02101,"976,00904-1748-60 ",.01)
 ;;00904-1748-60
 ;;9002226.02101,"976,00904-1748-60 ",.02)
 ;;00904-1748-60
 ;;9002226.02101,"976,00904-1748-61 ",.01)
 ;;00904-1748-61
 ;;9002226.02101,"976,00904-1748-61 ",.02)
 ;;00904-1748-61
 ;;9002226.02101,"976,00904-3379-60 ",.01)
 ;;00904-3379-60
 ;;9002226.02101,"976,00904-3379-60 ",.02)
 ;;00904-3379-60
 ;;9002226.02101,"976,00904-5186-40 ",.01)
 ;;00904-5186-40
 ;;9002226.02101,"976,00904-5186-40 ",.02)
 ;;00904-5186-40
 ;;9002226.02101,"976,00904-5186-60 ",.01)
 ;;00904-5186-60
 ;;9002226.02101,"976,00904-5186-60 ",.02)
 ;;00904-5186-60
 ;;9002226.02101,"976,00904-5186-61 ",.01)
 ;;00904-5186-61
 ;;9002226.02101,"976,00904-5186-61 ",.02)
 ;;00904-5186-61
 ;;9002226.02101,"976,00904-5187-40 ",.01)
 ;;00904-5187-40
 ;;9002226.02101,"976,00904-5187-40 ",.02)
 ;;00904-5187-40
 ;;9002226.02101,"976,00904-5187-60 ",.01)
 ;;00904-5187-60
 ;;9002226.02101,"976,00904-5187-60 ",.02)
 ;;00904-5187-60
 ;;9002226.02101,"976,00904-5187-61 ",.01)
 ;;00904-5187-61
 ;;9002226.02101,"976,00904-5187-61 ",.02)
 ;;00904-5187-61
 ;;9002226.02101,"976,00904-5535-61 ",.01)
 ;;00904-5535-61
 ;;9002226.02101,"976,00904-5535-61 ",.02)
 ;;00904-5535-61
 ;;9002226.02101,"976,00904-5536-61 ",.01)
 ;;00904-5536-61
 ;;9002226.02101,"976,00904-5536-61 ",.02)
 ;;00904-5536-61
 ;;9002226.02101,"976,00904-5537-61 ",.01)
 ;;00904-5537-61
 ;;9002226.02101,"976,00904-5537-61 ",.02)
 ;;00904-5537-61
 ;;9002226.02101,"976,00904-5590-40 ",.01)
 ;;00904-5590-40
 ;;9002226.02101,"976,00904-5590-40 ",.02)
 ;;00904-5590-40
 ;;9002226.02101,"976,00904-5590-60 ",.01)
 ;;00904-5590-60
 ;;9002226.02101,"976,00904-5590-60 ",.02)
 ;;00904-5590-60
 ;;9002226.02101,"976,00904-5591-40 ",.01)
 ;;00904-5591-40
 ;;9002226.02101,"976,00904-5591-40 ",.02)
 ;;00904-5591-40
 ;;9002226.02101,"976,10019-0021-09 ",.01)
 ;;10019-0021-09
 ;;9002226.02101,"976,10019-0021-09 ",.02)
 ;;10019-0021-09
 ;;9002226.02101,"976,10019-0022-09 ",.01)
 ;;10019-0022-09
 ;;9002226.02101,"976,10019-0022-09 ",.02)
 ;;10019-0022-09
 ;;9002226.02101,"976,10019-0022-32 ",.01)
 ;;10019-0022-32
 ;;9002226.02101,"976,10019-0022-32 ",.02)
 ;;10019-0022-32
 ;;9002226.02101,"976,10019-0029-02 ",.01)
 ;;10019-0029-02
 ;;9002226.02101,"976,10019-0029-02 ",.02)
 ;;10019-0029-02
 ;;9002226.02101,"976,10019-0030-03 ",.01)
 ;;10019-0030-03