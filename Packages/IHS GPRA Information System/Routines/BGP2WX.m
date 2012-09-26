BGP2WX ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 28, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP LIVER FUNCTION LOINC
 ;
 ; This routine loads Taxonomy BGP LIVER FUNCTION LOINC
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"13874-3 ")
 ;;10
 ;;21,"13875-0 ")
 ;;11
 ;;21,"14630-8 ")
 ;;12
 ;;21,"15015-1 ")
 ;;13
 ;;21,"15348-6 ")
 ;;14
 ;;21,"15349-4 ")
 ;;15
 ;;21,"1742-6 ")
 ;;9
 ;;21,"1751-7 ")
 ;;4
 ;;21,"1779-8 ")
 ;;16
 ;;21,"17858-2 ")
 ;;17
 ;;21,"1920-8 ")
 ;;8
 ;;21,"1968-7 ")
 ;;6
 ;;21,"1971-1 ")
 ;;18
 ;;21,"1975-2 ")
 ;;5
 ;;21,"2322-6 ")
 ;;19
 ;;21,"2323-4 ")
 ;;20
 ;;21,"2324-2 ")
 ;;21
 ;;21,"24324-6 ")
 ;;1
 ;;21,"24325-3 ")
 ;;2
 ;;21,"27403-5 ")
 ;;22
 ;;21,"2885-2 ")
 ;;3
 ;;21,"33898-8 ")
 ;;23
 ;;21,"33899-6 ")
 ;;24
 ;;21,"44786-2 ")
 ;;25
 ;;21,"48134-1 ")
 ;;26
 ;;21,"48136-6 ")
 ;;27
 ;;21,"53432-1 ")
 ;;28
 ;;21,"54500-4 ")
 ;;29
 ;;21,"58768-3 ")
 ;;30
 ;;21,"6768-6 ")
 ;;7
 ;;9002226,562,.01)
 ;;BGP LIVER FUNCTION LOINC
 ;;9002226,562,.02)
 ;;AST LOINC CODES
 ;;9002226,562,.04)
 ;;n
 ;;9002226,562,.06)
 ;;@
 ;;9002226,562,.08)
 ;;@
 ;;9002226,562,.09)
 ;;@
 ;;9002226,562,.11)
 ;;@
 ;;9002226,562,.12)
 ;;@
 ;;9002226,562,.13)
 ;;1
 ;;9002226,562,.14)
 ;;FIHS
 ;;9002226,562,.15)
 ;;95.3
 ;;9002226,562,.16)
 ;;@
 ;;9002226,562,.17)
 ;;@
 ;;9002226,562,3101)
 ;;@
 ;;9002226.02101,"562,13874-3 ",.01)
 ;;13874-3
 ;;9002226.02101,"562,13874-3 ",.02)
 ;;13874-3
 ;;9002226.02101,"562,13875-0 ",.01)
 ;;13875-0
 ;;9002226.02101,"562,13875-0 ",.02)
 ;;13875-0
 ;;9002226.02101,"562,14630-8 ",.01)
 ;;14630-8
 ;;9002226.02101,"562,14630-8 ",.02)
 ;;14630-8
 ;;9002226.02101,"562,15015-1 ",.01)
 ;;15015-1
 ;;9002226.02101,"562,15015-1 ",.02)
 ;;15015-1
 ;;9002226.02101,"562,15348-6 ",.01)
 ;;15348-6
 ;;9002226.02101,"562,15348-6 ",.02)
 ;;15348-6
 ;;9002226.02101,"562,15349-4 ",.01)
 ;;15349-4
 ;;9002226.02101,"562,15349-4 ",.02)
 ;;15349-4
 ;;9002226.02101,"562,1742-6 ",.01)
 ;;1742-6
 ;;9002226.02101,"562,1742-6 ",.02)
 ;;1742-6
 ;;9002226.02101,"562,1751-7 ",.01)
 ;;1751-7
 ;;9002226.02101,"562,1751-7 ",.02)
 ;;1751-7
 ;;9002226.02101,"562,1779-8 ",.01)
 ;;1779-8
 ;;9002226.02101,"562,1779-8 ",.02)
 ;;1779-8
 ;;9002226.02101,"562,17858-2 ",.01)
 ;;17858-2
 ;;9002226.02101,"562,17858-2 ",.02)
 ;;17858-2
 ;;9002226.02101,"562,1920-8 ",.01)
 ;;1920-8
 ;;9002226.02101,"562,1920-8 ",.02)
 ;;1920-8
 ;;9002226.02101,"562,1968-7 ",.01)
 ;;1968-7
 ;;9002226.02101,"562,1968-7 ",.02)
 ;;1968-7
 ;;9002226.02101,"562,1971-1 ",.01)
 ;;1971-1
 ;;9002226.02101,"562,1971-1 ",.02)
 ;;1971-1
 ;;9002226.02101,"562,1975-2 ",.01)
 ;;1975-2
 ;;9002226.02101,"562,1975-2 ",.02)
 ;;1975-2
 ;;9002226.02101,"562,2322-6 ",.01)
 ;;2322-6
 ;;9002226.02101,"562,2322-6 ",.02)
 ;;2322-6
 ;;9002226.02101,"562,2323-4 ",.01)
 ;;2323-4
 ;;9002226.02101,"562,2323-4 ",.02)
 ;;2323-4
 ;;9002226.02101,"562,2324-2 ",.01)
 ;;2324-2
 ;;9002226.02101,"562,2324-2 ",.02)
 ;;2324-2
 ;;9002226.02101,"562,24324-6 ",.01)
 ;;24324-6
 ;;9002226.02101,"562,24324-6 ",.02)
 ;;24324-6
 ;;9002226.02101,"562,24325-3 ",.01)
 ;;24325-3
 ;;9002226.02101,"562,24325-3 ",.02)
 ;;24325-3
 ;;9002226.02101,"562,27403-5 ",.01)
 ;;27403-5
 ;;9002226.02101,"562,27403-5 ",.02)
 ;;27403-5
 ;;9002226.02101,"562,2885-2 ",.01)
 ;;2885-2
 ;;9002226.02101,"562,2885-2 ",.02)
 ;;2885-2
 ;;9002226.02101,"562,33898-8 ",.01)
 ;;33898-8
 ;;9002226.02101,"562,33898-8 ",.02)
 ;;33898-8
 ;;9002226.02101,"562,33899-6 ",.01)
 ;;33899-6
 ;;9002226.02101,"562,33899-6 ",.02)
 ;;33899-6
 ;;9002226.02101,"562,44786-2 ",.01)
 ;;44786-2
 ;;9002226.02101,"562,44786-2 ",.02)
 ;;44786-2
 ;;9002226.02101,"562,48134-1 ",.01)
 ;;48134-1
 ;;9002226.02101,"562,48134-1 ",.02)
 ;;48134-1
 ;;9002226.02101,"562,48136-6 ",.01)
 ;;48136-6
 ;;9002226.02101,"562,48136-6 ",.02)
 ;;48136-6
 ;;9002226.02101,"562,53432-1 ",.01)
 ;;53432-1
 ;;9002226.02101,"562,53432-1 ",.02)
 ;;53432-1
 ;;9002226.02101,"562,54500-4 ",.01)
 ;;54500-4
 ;;9002226.02101,"562,54500-4 ",.02)
 ;;54500-4
 ;;9002226.02101,"562,58768-3 ",.01)
 ;;58768-3
 ;;9002226.02101,"562,58768-3 ",.02)
 ;;58768-3
 ;;9002226.02101,"562,6768-6 ",.01)
 ;;6768-6
 ;;9002226.02101,"562,6768-6 ",.02)
 ;;6768-6
 ;
OTHER ; OTHER ROUTINES
 Q