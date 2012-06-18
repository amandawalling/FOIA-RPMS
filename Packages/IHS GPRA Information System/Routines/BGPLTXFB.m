BGPLTXFB ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 19, 2004 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;;BGPL;;MAR 19, 2004
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"795,14341-2 ",.02)
 ;;14341-2
 ;;9002226.02101,"795,14585-4 ",.01)
 ;;14585-4
 ;;9002226.02101,"795,14585-4 ",.02)
 ;;14585-4
 ;;9002226.02101,"795,14795-9 ",.01)
 ;;14795-9
 ;;9002226.02101,"795,14795-9 ",.02)
 ;;14795-9
 ;;9002226.02101,"795,14896-5 ",.01)
 ;;14896-5
 ;;9002226.02101,"795,14896-5 ",.02)
 ;;14896-5
 ;;9002226.02101,"795,14956-7 ",.01)
 ;;14956-7
 ;;9002226.02101,"795,14956-7 ",.02)
 ;;14956-7
 ;;9002226.02101,"795,14957-5 ",.01)
 ;;14957-5
 ;;9002226.02101,"795,14957-5 ",.02)
 ;;14957-5
 ;;9002226.02101,"795,14958-3 ",.01)
 ;;14958-3
 ;;9002226.02101,"795,14958-3 ",.02)
 ;;14958-3
 ;;9002226.02101,"795,14959-1 ",.01)
 ;;14959-1
 ;;9002226.02101,"795,14959-1 ",.02)
 ;;14959-1
 ;;9002226.02101,"795,14977-3 ",.01)
 ;;14977-3
 ;;9002226.02101,"795,14977-3 ",.02)
 ;;14977-3
 ;;9002226.02101,"795,15187-8 ",.01)
 ;;15187-8
 ;;9002226.02101,"795,15187-8 ",.02)
 ;;15187-8
 ;;9002226.02101,"795,15188-6 ",.01)
 ;;15188-6
 ;;9002226.02101,"795,15188-6 ",.02)
 ;;15188-6
 ;;9002226.02101,"795,16285-9 ",.01)
 ;;16285-9
 ;;9002226.02101,"795,16285-9 ",.02)
 ;;16285-9
 ;;9002226.02101,"795,1753-3 ",.01)
 ;;1753-3
 ;;9002226.02101,"795,1753-3 ",.02)
 ;;1753-3
 ;;9002226.02101,"795,1754-1 ",.01)
 ;;1754-1
 ;;9002226.02101,"795,1754-1 ",.02)
 ;;1754-1
 ;;9002226.02101,"795,1755-8 ",.01)
 ;;1755-8
 ;;9002226.02101,"795,1755-8 ",.02)
 ;;1755-8
 ;;9002226.02101,"795,1757-4 ",.01)
 ;;1757-4
 ;;9002226.02101,"795,1757-4 ",.02)
 ;;1757-4
 ;;9002226.02101,"795,17793-1 ",.01)
 ;;17793-1
 ;;9002226.02101,"795,17793-1 ",.02)
 ;;17793-1
 ;;9002226.02101,"795,17811-1 ",.01)
 ;;17811-1
 ;;9002226.02101,"795,17811-1 ",.02)
 ;;17811-1
 ;;9002226.02101,"795,17813-7 ",.01)
 ;;17813-7
 ;;9002226.02101,"795,17813-7 ",.02)
 ;;17813-7
 ;;9002226.02101,"795,17815-2 ",.01)
 ;;17815-2
 ;;9002226.02101,"795,17815-2 ",.02)
 ;;17815-2
 ;;9002226.02101,"795,17817-8 ",.01)
 ;;17817-8
 ;;9002226.02101,"795,17817-8 ",.02)
 ;;17817-8
 ;;9002226.02101,"795,17819-4 ",.01)
 ;;17819-4
 ;;9002226.02101,"795,17819-4 ",.02)
 ;;17819-4
 ;;9002226.02101,"795,17867-3 ",.01)
 ;;17867-3
 ;;9002226.02101,"795,17867-3 ",.02)
 ;;17867-3
 ;;9002226.02101,"795,18362-4 ",.01)
 ;;18362-4
 ;;9002226.02101,"795,18362-4 ",.02)
 ;;18362-4
 ;;9002226.02101,"795,18373-1 ",.01)
 ;;18373-1
 ;;9002226.02101,"795,18373-1 ",.02)
 ;;18373-1
 ;;9002226.02101,"795,1928-1 ",.01)
 ;;1928-1
 ;;9002226.02101,"795,1928-1 ",.02)
 ;;1928-1
 ;;9002226.02101,"795,1929-9 ",.01)
 ;;1929-9
 ;;9002226.02101,"795,1929-9 ",.02)
 ;;1929-9
 ;;9002226.02101,"795,20454-5 ",.01)
 ;;20454-5
 ;;9002226.02101,"795,20454-5 ",.02)
 ;;20454-5
 ;;9002226.02101,"795,20621-9 ",.01)
 ;;20621-9
 ;;9002226.02101,"795,20621-9 ",.02)
 ;;20621-9
 ;;9002226.02101,"795,21028-6 ",.01)
 ;;21028-6
 ;;9002226.02101,"795,21028-6 ",.02)
 ;;21028-6
 ;;9002226.02101,"795,21059-1 ",.01)
 ;;21059-1
 ;;9002226.02101,"795,21059-1 ",.02)
 ;;21059-1
 ;;9002226.02101,"795,21482-5 ",.01)
 ;;21482-5
 ;;9002226.02101,"795,21482-5 ",.02)
 ;;21482-5
 ;;9002226.02101,"795,22064-0 ",.01)
 ;;22064-0
 ;;9002226.02101,"795,22064-0 ",.02)
 ;;22064-0
 ;;9002226.02101,"795,22704-1 ",.01)
 ;;22704-1
 ;;9002226.02101,"795,22704-1 ",.02)
 ;;22704-1
 ;;9002226.02101,"795,25682-6 ",.01)
 ;;25682-6
 ;;9002226.02101,"795,25682-6 ",.02)
 ;;25682-6
 ;;9002226.02101,"795,25684-2 ",.01)
 ;;25684-2
 ;;9002226.02101,"795,25684-2 ",.02)
 ;;25684-2
 ;;9002226.02101,"795,26034-9 ",.01)
 ;;26034-9
 ;;9002226.02101,"795,26034-9 ",.02)
 ;;26034-9
 ;;9002226.02101,"795,26801-1 ",.01)
 ;;26801-1
 ;;9002226.02101,"795,26801-1 ",.02)
 ;;26801-1
 ;;9002226.02101,"795,27184-1 ",.01)
 ;;27184-1
 ;;9002226.02101,"795,27184-1 ",.02)
 ;;27184-1
 ;;9002226.02101,"795,27298-9 ",.01)
 ;;27298-9
 ;;9002226.02101,"795,27298-9 ",.02)
 ;;27298-9
 ;;9002226.02101,"795,27365-6 ",.01)
 ;;27365-6
 ;;9002226.02101,"795,27365-6 ",.02)
 ;;27365-6
 ;;9002226.02101,"795,27394-6 ",.01)
 ;;27394-6
 ;;9002226.02101,"795,27394-6 ",.02)
 ;;27394-6
 ;;9002226.02101,"795,2860-5 ",.01)
 ;;2860-5
 ;;9002226.02101,"795,2860-5 ",.02)
 ;;2860-5
 ;;9002226.02101,"795,2887-8 ",.01)
 ;;2887-8
 ;;9002226.02101,"795,2887-8 ",.02)
 ;;2887-8
 ;;9002226.02101,"795,2888-6 ",.01)
 ;;2888-6
 ;;9002226.02101,"795,2888-6 ",.02)
 ;;2888-6
 ;;9002226.02101,"795,2889-4 ",.01)
 ;;2889-4
 ;;9002226.02101,"795,2889-4 ",.02)
 ;;2889-4
 ;;9002226.02101,"795,2890-2 ",.01)
 ;;2890-2
 ;;9002226.02101,"795,2890-2 ",.02)
 ;;2890-2
 ;;9002226.02101,"795,29899-2 ",.01)
 ;;29899-2
 ;;9002226.02101,"795,29899-2 ",.02)
 ;;29899-2
 ;;9002226.02101,"795,29945-3 ",.01)
 ;;29945-3
 ;;9002226.02101,"795,29945-3 ",.02)
 ;;29945-3
 ;;9002226.02101,"795,29946-1 ",.01)
 ;;29946-1
 ;;9002226.02101,"795,29946-1 ",.02)
 ;;29946-1
 ;;9002226.02101,"795,29947-9 ",.01)
 ;;29947-9
 ;;9002226.02101,"795,29947-9 ",.02)
 ;;29947-9
 ;;9002226.02101,"795,29951-1 ",.01)
 ;;29951-1
 ;;9002226.02101,"795,29951-1 ",.02)
 ;;29951-1
 ;;9002226.02101,"795,30000-4 ",.01)
 ;;30000-4
 ;;9002226.02101,"795,30000-4 ",.02)
 ;;30000-4
 ;;9002226.02101,"795,30001-2 ",.01)
 ;;30001-2