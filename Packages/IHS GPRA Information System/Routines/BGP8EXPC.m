BGP8EXPC ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
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
 ;;9002226.02101,"549,1548-7 ",.02)
 ;;1548-7
 ;;9002226.02101,"549,1549-5 ",.01)
 ;;1549-5
 ;;9002226.02101,"549,1549-5 ",.02)
 ;;1549-5
 ;;9002226.02101,"549,1550-3 ",.01)
 ;;1550-3
 ;;9002226.02101,"549,1550-3 ",.02)
 ;;1550-3
 ;;9002226.02101,"549,1551-1 ",.01)
 ;;1551-1
 ;;9002226.02101,"549,1551-1 ",.02)
 ;;1551-1
 ;;9002226.02101,"549,1552-9 ",.01)
 ;;1552-9
 ;;9002226.02101,"549,1552-9 ",.02)
 ;;1552-9
 ;;9002226.02101,"549,1553-7 ",.01)
 ;;1553-7
 ;;9002226.02101,"549,1553-7 ",.02)
 ;;1553-7
 ;;9002226.02101,"549,1554-5 ",.01)
 ;;1554-5
 ;;9002226.02101,"549,1554-5 ",.02)
 ;;1554-5
 ;;9002226.02101,"549,1555-2 ",.01)
 ;;1555-2
 ;;9002226.02101,"549,1555-2 ",.02)
 ;;1555-2
 ;;9002226.02101,"549,1556-0 ",.01)
 ;;1556-0
 ;;9002226.02101,"549,1556-0 ",.02)
 ;;1556-0
 ;;9002226.02101,"549,1557-8 ",.01)
 ;;1557-8
 ;;9002226.02101,"549,1557-8 ",.02)
 ;;1557-8
 ;;9002226.02101,"549,1558-6 ",.01)
 ;;1558-6
 ;;9002226.02101,"549,1558-6 ",.02)
 ;;1558-6
 ;;9002226.02101,"549,16165-3 ",.01)
 ;;16165-3
 ;;9002226.02101,"549,16165-3 ",.02)
 ;;16165-3
 ;;9002226.02101,"549,16166-1 ",.01)
 ;;16166-1
 ;;9002226.02101,"549,16166-1 ",.02)
 ;;16166-1
 ;;9002226.02101,"549,16167-9 ",.01)
 ;;16167-9
 ;;9002226.02101,"549,16167-9 ",.02)
 ;;16167-9
 ;;9002226.02101,"549,16168-7 ",.01)
 ;;16168-7
 ;;9002226.02101,"549,16168-7 ",.02)
 ;;16168-7
 ;;9002226.02101,"549,16169-5 ",.01)
 ;;16169-5
 ;;9002226.02101,"549,16169-5 ",.02)
 ;;16169-5
 ;;9002226.02101,"549,16170-3 ",.01)
 ;;16170-3
 ;;9002226.02101,"549,16170-3 ",.02)
 ;;16170-3
 ;;9002226.02101,"549,16906-0 ",.01)
 ;;16906-0
 ;;9002226.02101,"549,16906-0 ",.02)
 ;;16906-0
 ;;9002226.02101,"549,16907-8 ",.01)
 ;;16907-8
 ;;9002226.02101,"549,16907-8 ",.02)
 ;;16907-8
 ;;9002226.02101,"549,16908-6 ",.01)
 ;;16908-6
 ;;9002226.02101,"549,16908-6 ",.02)
 ;;16908-6
 ;;9002226.02101,"549,16909-4 ",.01)
 ;;16909-4
 ;;9002226.02101,"549,16909-4 ",.02)
 ;;16909-4
 ;;9002226.02101,"549,16910-2 ",.01)
 ;;16910-2
 ;;9002226.02101,"549,16910-2 ",.02)
 ;;16910-2
 ;;9002226.02101,"549,16911-0 ",.01)
 ;;16911-0
 ;;9002226.02101,"549,16911-0 ",.02)
 ;;16911-0
 ;;9002226.02101,"549,16912-8 ",.01)
 ;;16912-8
 ;;9002226.02101,"549,16912-8 ",.02)
 ;;16912-8
 ;;9002226.02101,"549,16913-6 ",.01)
 ;;16913-6
 ;;9002226.02101,"549,16913-6 ",.02)
 ;;16913-6
 ;;9002226.02101,"549,16914-4 ",.01)
 ;;16914-4
 ;;9002226.02101,"549,16914-4 ",.02)
 ;;16914-4
 ;;9002226.02101,"549,16915-1 ",.01)
 ;;16915-1
 ;;9002226.02101,"549,16915-1 ",.02)
 ;;16915-1
 ;;9002226.02101,"549,17865-7 ",.01)
 ;;17865-7
 ;;9002226.02101,"549,17865-7 ",.02)
 ;;17865-7
 ;;9002226.02101,"549,18296-4 ",.01)
 ;;18296-4
 ;;9002226.02101,"549,18296-4 ",.02)
 ;;18296-4
 ;;9002226.02101,"549,18342-6 ",.01)
 ;;18342-6
 ;;9002226.02101,"549,18342-6 ",.02)
 ;;18342-6
 ;;9002226.02101,"549,18353-3 ",.01)
 ;;18353-3
 ;;9002226.02101,"549,18353-3 ",.02)
 ;;18353-3
 ;;9002226.02101,"549,18354-1 ",.01)
 ;;18354-1
 ;;9002226.02101,"549,18354-1 ",.02)
 ;;18354-1
 ;;9002226.02101,"549,19104-9 ",.01)
 ;;19104-9
 ;;9002226.02101,"549,19104-9 ",.02)
 ;;19104-9
 ;;9002226.02101,"549,19105-6 ",.01)
 ;;19105-6
 ;;9002226.02101,"549,19105-6 ",.02)
 ;;19105-6
 ;;9002226.02101,"549,20436-2 ",.01)
 ;;20436-2
 ;;9002226.02101,"549,20436-2 ",.02)
 ;;20436-2
 ;;9002226.02101,"549,20437-0 ",.01)
 ;;20437-0
 ;;9002226.02101,"549,20437-0 ",.02)
 ;;20437-0
 ;;9002226.02101,"549,20438-8 ",.01)
 ;;20438-8
 ;;9002226.02101,"549,20438-8 ",.02)
 ;;20438-8
 ;;9002226.02101,"549,20439-6 ",.01)
 ;;20439-6
 ;;9002226.02101,"549,20439-6 ",.02)
 ;;20439-6
 ;;9002226.02101,"549,20440-4 ",.01)
 ;;20440-4
 ;;9002226.02101,"549,20440-4 ",.02)
 ;;20440-4
 ;;9002226.02101,"549,20441-2 ",.01)
 ;;20441-2
 ;;9002226.02101,"549,20441-2 ",.02)
 ;;20441-2
 ;;9002226.02101,"549,21308-2 ",.01)
 ;;21308-2
 ;;9002226.02101,"549,21308-2 ",.02)
 ;;21308-2
 ;;9002226.02101,"549,21309-0 ",.01)
 ;;21309-0
 ;;9002226.02101,"549,21309-0 ",.02)
 ;;21309-0
 ;;9002226.02101,"549,21310-8 ",.01)
 ;;21310-8
 ;;9002226.02101,"549,21310-8 ",.02)
 ;;21310-8
 ;;9002226.02101,"549,2339-0 ",.01)
 ;;2339-0
 ;;9002226.02101,"549,2339-0 ",.02)
 ;;2339-0
 ;;9002226.02101,"549,2340-8 ",.01)
 ;;2340-8
 ;;9002226.02101,"549,2340-8 ",.02)
 ;;2340-8
 ;;9002226.02101,"549,2341-6 ",.01)
 ;;2341-6
 ;;9002226.02101,"549,2341-6 ",.02)
 ;;2341-6
 ;;9002226.02101,"549,2345-7 ",.01)
 ;;2345-7
 ;;9002226.02101,"549,2345-7 ",.02)
 ;;2345-7
 ;;9002226.02101,"549,25663-6 ",.01)
 ;;25663-6
 ;;9002226.02101,"549,25663-6 ",.02)
 ;;25663-6
 ;;9002226.02101,"549,25665-1 ",.01)
 ;;25665-1
 ;;9002226.02101,"549,25665-1 ",.02)
 ;;25665-1
 ;;9002226.02101,"549,25666-9 ",.01)
 ;;25666-9
 ;;9002226.02101,"549,25666-9 ",.02)
 ;;25666-9
 ;;9002226.02101,"549,25668-5 ",.01)
 ;;25668-5
 ;;9002226.02101,"549,25668-5 ",.02)
 ;;25668-5
 ;;9002226.02101,"549,25669-3 ",.01)
 ;;25669-3
 ;;9002226.02101,"549,25669-3 ",.02)
 ;;25669-3
 ;;9002226.02101,"549,25671-9 ",.01)
 ;;25671-9
 ;;9002226.02101,"549,25671-9 ",.02)
 ;;25671-9
 ;;9002226.02101,"549,25672-7 ",.01)
 ;;25672-7
 ;;9002226.02101,"549,25672-7 ",.02)
 ;;25672-7
 ;;9002226.02101,"549,25673-5 ",.01)
 ;;25673-5
 ;;9002226.02101,"549,25673-5 ",.02)
 ;;25673-5
 ;;9002226.02101,"549,25674-3 ",.01)
 ;;25674-3
 ;;9002226.02101,"549,25674-3 ",.02)
 ;;25674-3
 ;;9002226.02101,"549,25676-8 ",.01)
 ;;25676-8
 ;;9002226.02101,"549,25676-8 ",.02)
 ;;25676-8
 ;;9002226.02101,"549,25677-6 ",.01)
 ;;25677-6
 ;;9002226.02101,"549,25677-6 ",.02)
 ;;25677-6
 ;;9002226.02101,"549,25679-2 ",.01)
 ;;25679-2
 ;;9002226.02101,"549,25679-2 ",.02)
 ;;25679-2
 ;;9002226.02101,"549,25680-0 ",.01)
 ;;25680-0
 ;;9002226.02101,"549,25680-0 ",.02)
 ;;25680-0
 ;;9002226.02101,"549,26538-9 ",.01)
 ;;26538-9
 ;;9002226.02101,"549,26538-9 ",.02)
 ;;26538-9
 ;;9002226.02101,"549,26539-7 ",.01)
 ;;26539-7
 ;;9002226.02101,"549,26539-7 ",.02)
 ;;26539-7
 ;;9002226.02101,"549,26540-5 ",.01)
 ;;26540-5
 ;;9002226.02101,"549,26540-5 ",.02)
 ;;26540-5
 ;;9002226.02101,"549,26541-3 ",.01)
 ;;26541-3
 ;;9002226.02101,"549,26541-3 ",.02)
 ;;26541-3
 ;;9002226.02101,"549,26543-9 ",.01)
 ;;26543-9
 ;;9002226.02101,"549,26543-9 ",.02)
 ;;26543-9
 ;;9002226.02101,"549,26544-7 ",.01)
 ;;26544-7
 ;;9002226.02101,"549,26544-7 ",.02)
 ;;26544-7
 ;;9002226.02101,"549,26548-8 ",.01)
 ;;26548-8
 ;;9002226.02101,"549,26548-8 ",.02)
 ;;26548-8
 ;;9002226.02101,"549,26549-6 ",.01)
 ;;26549-6
 ;;9002226.02101,"549,26549-6 ",.02)
 ;;26549-6
 ;;9002226.02101,"549,26552-0 ",.01)
 ;;26552-0
 ;;9002226.02101,"549,26552-0 ",.02)
 ;;26552-0
 ;;9002226.02101,"549,26554-6 ",.01)
 ;;26554-6
 ;;9002226.02101,"549,26554-6 ",.02)
 ;;26554-6
 ;;9002226.02101,"549,26555-3 ",.01)
 ;;26555-3
 ;;9002226.02101,"549,26555-3 ",.02)
 ;;26555-3
 ;;9002226.02101,"549,26695-7 ",.01)
 ;;26695-7
 ;;9002226.02101,"549,26695-7 ",.02)
 ;;26695-7
 ;;9002226.02101,"549,26777-3 ",.01)
 ;;26777-3
 ;;9002226.02101,"549,26777-3 ",.02)
 ;;26777-3
 ;;9002226.02101,"549,26778-1 ",.01)
 ;;26778-1
 ;;9002226.02101,"549,26778-1 ",.02)
 ;;26778-1
 ;;9002226.02101,"549,26779-9 ",.01)
 ;;26779-9
 ;;9002226.02101,"549,26779-9 ",.02)
 ;;26779-9
 ;;9002226.02101,"549,26780-7 ",.01)
 ;;26780-7
 ;;9002226.02101,"549,26780-7 ",.02)
 ;;26780-7
 ;;9002226.02101,"549,26781-5 ",.01)
 ;;26781-5
 ;;9002226.02101,"549,26781-5 ",.02)
 ;;26781-5
 ;;9002226.02101,"549,26782-3 ",.01)
 ;;26782-3
 ;;9002226.02101,"549,26782-3 ",.02)
 ;;26782-3
 ;;9002226.02101,"549,26783-1 ",.01)
 ;;26783-1
 ;;9002226.02101,"549,26783-1 ",.02)
 ;;26783-1
 ;;9002226.02101,"549,26817-7 ",.01)
 ;;26817-7
 ;;9002226.02101,"549,26817-7 ",.02)
 ;;26817-7
 ;;9002226.02101,"549,26853-2 ",.01)
 ;;26853-2
 ;;9002226.02101,"549,26853-2 ",.02)
 ;;26853-2
 ;;9002226.02101,"549,26854-0 ",.01)
 ;;26854-0
 ;;9002226.02101,"549,26854-0 ",.02)
 ;;26854-0
 ;;9002226.02101,"549,27353-2 ",.01)
 ;;27353-2
 ;;9002226.02101,"549,27353-2 ",.02)
 ;;27353-2
 ;;9002226.02101,"549,27432-4 ",.01)
 ;;27432-4
 ;;9002226.02101,"549,27432-4 ",.02)
 ;;27432-4
 ;;9002226.02101,"549,29329-0 ",.01)
 ;;29329-0
 ;;9002226.02101,"549,29329-0 ",.02)
 ;;29329-0
 ;;9002226.02101,"549,29330-8 ",.01)
 ;;29330-8
 ;;9002226.02101,"549,29330-8 ",.02)
 ;;29330-8
 ;;9002226.02101,"549,29331-6 ",.01)
 ;;29331-6
 ;;9002226.02101,"549,29331-6 ",.02)
 ;;29331-6
 ;;9002226.02101,"549,29332-4 ",.01)
 ;;29332-4
 ;;9002226.02101,"549,29332-4 ",.02)
 ;;29332-4
 ;;9002226.02101,"549,29412-4 ",.01)
 ;;29412-4
 ;;9002226.02101,"549,29412-4 ",.02)
 ;;29412-4
 ;;9002226.02101,"549,30251-3 ",.01)
 ;;30251-3
 ;;9002226.02101,"549,30251-3 ",.02)
 ;;30251-3
 ;;9002226.02101,"549,30252-1 ",.01)
 ;;30252-1
 ;;9002226.02101,"549,30252-1 ",.02)
 ;;30252-1
 ;;9002226.02101,"549,30253-9 ",.01)
 ;;30253-9
 ;;9002226.02101,"549,30253-9 ",.02)
 ;;30253-9
 ;;9002226.02101,"549,30263-8 ",.01)
 ;;30263-8
 ;;9002226.02101,"549,30263-8 ",.02)
 ;;30263-8
 ;;9002226.02101,"549,30264-6 ",.01)
 ;;30264-6
 ;;9002226.02101,"549,30264-6 ",.02)
 ;;30264-6
 ;;9002226.02101,"549,30265-3 ",.01)
 ;;30265-3
 ;;9002226.02101,"549,30265-3 ",.02)
 ;;30265-3
 ;;9002226.02101,"549,30266-1 ",.01)
 ;;30266-1
 ;;9002226.02101,"549,30266-1 ",.02)
 ;;30266-1
 ;;9002226.02101,"549,30267-9 ",.01)
 ;;30267-9
 ;;9002226.02101,"549,30267-9 ",.02)
 ;;30267-9
 ;;9002226.02101,"549,30344-6 ",.01)
 ;;30344-6
 ;;9002226.02101,"549,30344-6 ",.02)
 ;;30344-6
 ;;9002226.02101,"549,30345-3 ",.01)
 ;;30345-3
 ;;9002226.02101,"549,30345-3 ",.02)
 ;;30345-3
 ;;9002226.02101,"549,30346-1 ",.01)
 ;;30346-1
 ;;9002226.02101,"549,30346-1 ",.02)
 ;;30346-1
 ;;9002226.02101,"549,32016-8 ",.01)
 ;;32016-8
 ;;9002226.02101,"549,32016-8 ",.02)
 ;;32016-8
 ;;9002226.02101,"549,32319-6 ",.01)
 ;;32319-6
 ;;9002226.02101,"549,32319-6 ",.02)
 ;;32319-6
 ;;9002226.02101,"549,32320-4 ",.01)
 ;;32320-4
 ;;9002226.02101,"549,32320-4 ",.02)
 ;;32320-4
 ;;9002226.02101,"549,32321-2 ",.01)
 ;;32321-2
 ;;9002226.02101,"549,32321-2 ",.02)
 ;;32321-2
 ;;9002226.02101,"549,32322-0 ",.01)
 ;;32322-0
 ;;9002226.02101,"549,32322-0 ",.02)
 ;;32322-0
 ;;9002226.02101,"549,32359-2 ",.01)
 ;;32359-2
 ;;9002226.02101,"549,32359-2 ",.02)
 ;;32359-2
 ;;9002226.02101,"549,32820-3 ",.01)
 ;;32820-3
 ;;9002226.02101,"549,32820-3 ",.02)
 ;;32820-3
 ;;9002226.02101,"549,33024-1 ",.01)
 ;;33024-1
 ;;9002226.02101,"549,33024-1 ",.02)
 ;;33024-1
 ;;9002226.02101,"549,34056-2 ",.01)
 ;;34056-2
 ;;9002226.02101,"549,34056-2 ",.02)
 ;;34056-2
 ;;9002226.02101,"549,34057-0 ",.01)
 ;;34057-0
 ;;9002226.02101,"549,34057-0 ",.02)
 ;;34057-0
 ;;9002226.02101,"549,34058-8 ",.01)
 ;;34058-8
 ;;9002226.02101,"549,34058-8 ",.02)
 ;;34058-8
 ;;9002226.02101,"549,34059-6 ",.01)
 ;;34059-6
 ;;9002226.02101,"549,34059-6 ",.02)
 ;;34059-6
 ;;9002226.02101,"549,34060-4 ",.01)
 ;;34060-4
 ;;9002226.02101,"549,34060-4 ",.02)
 ;;34060-4
 ;;9002226.02101,"549,35184-1 ",.01)
 ;;35184-1
 ;;9002226.02101,"549,35184-1 ",.02)
 ;;35184-1
 ;;9002226.02101,"549,35211-2 ",.01)
 ;;35211-2
 ;;9002226.02101,"549,35211-2 ",.02)
 ;;35211-2
 ;;9002226.02101,"549,39480-9 ",.01)
 ;;39480-9
 ;;9002226.02101,"549,39480-9 ",.02)
 ;;39480-9
 ;;9002226.02101,"549,39481-7 ",.01)
 ;;39481-7
 ;;9002226.02101,"549,39481-7 ",.02)
 ;;39481-7
 ;;9002226.02101,"549,39561-6 ",.01)
 ;;39561-6
 ;;9002226.02101,"549,39561-6 ",.02)
 ;;39561-6
 ;;9002226.02101,"549,39562-4 ",.01)
 ;;39562-4
 ;;9002226.02101,"549,39562-4 ",.02)
 ;;39562-4
 ;;9002226.02101,"549,39563-2 ",.01)
 ;;39563-2
 ;;9002226.02101,"549,39563-2 ",.02)
 ;;39563-2
 ;;9002226.02101,"549,39997-2 ",.01)
 ;;39997-2
 ;;9002226.02101,"549,39997-2 ",.02)
 ;;39997-2
 ;;9002226.02101,"549,39998-0 ",.01)
 ;;39998-0
 ;;9002226.02101,"549,39998-0 ",.02)
 ;;39998-0
 ;;9002226.02101,"549,39999-8 ",.01)
 ;;39999-8
 ;;9002226.02101,"549,39999-8 ",.02)
 ;;39999-8
 ;;9002226.02101,"549,40000-2 ",.01)
 ;;40000-2
 ;;9002226.02101,"549,40000-2 ",.02)
 ;;40000-2
 ;;9002226.02101,"549,40001-0 ",.01)
 ;;40001-0
 ;;9002226.02101,"549,40001-0 ",.02)
 ;;40001-0
 ;;9002226.02101,"549,40002-8 ",.01)
 ;;40002-8
 ;;9002226.02101,"549,40002-8 ",.02)
 ;;40002-8
 ;;9002226.02101,"549,40003-6 ",.01)
 ;;40003-6
 ;;9002226.02101,"549,40003-6 ",.02)
 ;;40003-6
 ;;9002226.02101,"549,40004-4 ",.01)
 ;;40004-4
 ;;9002226.02101,"549,40004-4 ",.02)
 ;;40004-4
 ;;9002226.02101,"549,40005-1 ",.01)
 ;;40005-1
 ;;9002226.02101,"549,40005-1 ",.02)
 ;;40005-1
 ;;9002226.02101,"549,40006-9 ",.01)
 ;;40006-9
 ;;9002226.02101,"549,40006-9 ",.02)
 ;;40006-9
 ;;9002226.02101,"549,40007-7 ",.01)
 ;;40007-7
 ;;9002226.02101,"549,40007-7 ",.02)
 ;;40007-7
 ;;9002226.02101,"549,40008-5 ",.01)
 ;;40008-5
 ;;9002226.02101,"549,40008-5 ",.02)
 ;;40008-5
 ;;9002226.02101,"549,40009-3 ",.01)
 ;;40009-3
 ;;9002226.02101,"549,40009-3 ",.02)
 ;;40009-3
 ;;9002226.02101,"549,40010-1 ",.01)
 ;;40010-1
 ;;9002226.02101,"549,40010-1 ",.02)
 ;;40010-1
 ;;9002226.02101,"549,40011-9 ",.01)
 ;;40011-9
 ;;9002226.02101,"549,40011-9 ",.02)
 ;;40011-9
 ;;9002226.02101,"549,40012-7 ",.01)
 ;;40012-7
 ;;9002226.02101,"549,40012-7 ",.02)
 ;;40012-7
 ;;9002226.02101,"549,40013-5 ",.01)
 ;;40013-5
 ;;9002226.02101,"549,40013-5 ",.02)
 ;;40013-5