BJPC2UJL ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 17, 2009;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"750,00349-8266-05 ",.01)
 ;;00349-8266-05
 ;;9002226.02101,"750,00349-8266-05 ",.02)
 ;;00349-8266-05
 ;;9002226.02101,"750,00349-8266-10 ",.01)
 ;;00349-8266-10
 ;;9002226.02101,"750,00349-8266-10 ",.02)
 ;;00349-8266-10
 ;;9002226.02101,"750,00349-8280-01 ",.01)
 ;;00349-8280-01
 ;;9002226.02101,"750,00349-8280-01 ",.02)
 ;;00349-8280-01
 ;;9002226.02101,"750,00349-8281-01 ",.01)
 ;;00349-8281-01
 ;;9002226.02101,"750,00349-8281-01 ",.02)
 ;;00349-8281-01
 ;;9002226.02101,"750,00349-8281-05 ",.01)
 ;;00349-8281-05
 ;;9002226.02101,"750,00349-8281-05 ",.02)
 ;;00349-8281-05
 ;;9002226.02101,"750,00349-8281-10 ",.01)
 ;;00349-8281-10
 ;;9002226.02101,"750,00349-8281-10 ",.02)
 ;;00349-8281-10
 ;;9002226.02101,"750,00349-8683-01 ",.01)
 ;;00349-8683-01
 ;;9002226.02101,"750,00349-8683-01 ",.02)
 ;;00349-8683-01
 ;;9002226.02101,"750,00349-8684-01 ",.01)
 ;;00349-8684-01
 ;;9002226.02101,"750,00349-8684-01 ",.02)
 ;;00349-8684-01
 ;;9002226.02101,"750,00349-8684-05 ",.01)
 ;;00349-8684-05
 ;;9002226.02101,"750,00349-8684-05 ",.02)
 ;;00349-8684-05
 ;;9002226.02101,"750,00349-8684-10 ",.01)
 ;;00349-8684-10
 ;;9002226.02101,"750,00349-8684-10 ",.02)
 ;;00349-8684-10
 ;;9002226.02101,"750,00349-8685-01 ",.01)
 ;;00349-8685-01
 ;;9002226.02101,"750,00349-8685-01 ",.02)
 ;;00349-8685-01
 ;;9002226.02101,"750,00349-8685-05 ",.01)
 ;;00349-8685-05
 ;;9002226.02101,"750,00349-8685-05 ",.02)
 ;;00349-8685-05
 ;;9002226.02101,"750,00349-8685-10 ",.01)
 ;;00349-8685-10
 ;;9002226.02101,"750,00349-8685-10 ",.02)
 ;;00349-8685-10
 ;;9002226.02101,"750,00364-0597-01 ",.01)
 ;;00364-0597-01
 ;;9002226.02101,"750,00364-0597-01 ",.02)
 ;;00364-0597-01
 ;;9002226.02101,"750,00364-0597-02 ",.01)
 ;;00364-0597-02
 ;;9002226.02101,"750,00364-0597-02 ",.02)
 ;;00364-0597-02
 ;;9002226.02101,"750,00364-0660-01 ",.01)
 ;;00364-0660-01
 ;;9002226.02101,"750,00364-0660-01 ",.02)
 ;;00364-0660-01
 ;;9002226.02101,"750,00364-0660-02 ",.01)
 ;;00364-0660-02
 ;;9002226.02101,"750,00364-0660-02 ",.02)
 ;;00364-0660-02
 ;;9002226.02101,"750,00364-0660-05 ",.01)
 ;;00364-0660-05
 ;;9002226.02101,"750,00364-0660-05 ",.02)
 ;;00364-0660-05
 ;;9002226.02101,"750,00364-0680-01 ",.01)
 ;;00364-0680-01
 ;;9002226.02101,"750,00364-0680-01 ",.02)
 ;;00364-0680-01
 ;;9002226.02101,"750,00364-0681-01 ",.01)
 ;;00364-0681-01
 ;;9002226.02101,"750,00364-0681-01 ",.02)
 ;;00364-0681-01
 ;;9002226.02101,"750,00364-0681-05 ",.01)
 ;;00364-0681-05
 ;;9002226.02101,"750,00364-0681-05 ",.02)
 ;;00364-0681-05
 ;;9002226.02101,"750,00364-2490-01 ",.01)
 ;;00364-2490-01
 ;;9002226.02101,"750,00364-2490-01 ",.02)
 ;;00364-2490-01
 ;;9002226.02101,"750,00364-2585-01 ",.01)
 ;;00364-2585-01
 ;;9002226.02101,"750,00364-2585-01 ",.02)
 ;;00364-2585-01
 ;;9002226.02101,"750,00364-2586-01 ",.01)
 ;;00364-2586-01
 ;;9002226.02101,"750,00364-2586-01 ",.02)
 ;;00364-2586-01
 ;;9002226.02101,"750,00364-2587-01 ",.01)
 ;;00364-2587-01
 ;;9002226.02101,"750,00364-2587-01 ",.02)
 ;;00364-2587-01
 ;;9002226.02101,"750,00364-2588-01 ",.01)
 ;;00364-2588-01
 ;;9002226.02101,"750,00364-2588-01 ",.02)
 ;;00364-2588-01
 ;;9002226.02101,"750,00369-0812-01 ",.01)
 ;;00369-0812-01
 ;;9002226.02101,"750,00369-0812-01 ",.02)
 ;;00369-0812-01
 ;;9002226.02101,"750,00369-0820-01 ",.01)
 ;;00369-0820-01
 ;;9002226.02101,"750,00369-0820-01 ",.02)
 ;;00369-0820-01
 ;;9002226.02101,"750,00369-0850-01 ",.01)
 ;;00369-0850-01
 ;;9002226.02101,"750,00369-0850-01 ",.02)
 ;;00369-0850-01
 ;;9002226.02101,"750,00369-0875-01 ",.01)
 ;;00369-0875-01
 ;;9002226.02101,"750,00369-0875-01 ",.02)
 ;;00369-0875-01
 ;;9002226.02101,"750,00405-4983-01 ",.01)
 ;;00405-4983-01
 ;;9002226.02101,"750,00405-4983-01 ",.02)
 ;;00405-4983-01
 ;;9002226.02101,"750,00405-4984-01 ",.01)
 ;;00405-4984-01
 ;;9002226.02101,"750,00405-4984-01 ",.02)
 ;;00405-4984-01
 ;;9002226.02101,"750,00405-4985-01 ",.01)
 ;;00405-4985-01
 ;;9002226.02101,"750,00405-4985-01 ",.02)
 ;;00405-4985-01
 ;;9002226.02101,"750,00405-4986-01 ",.01)
 ;;00405-4986-01
 ;;9002226.02101,"750,00405-4986-01 ",.02)
 ;;00405-4986-01
 ;;9002226.02101,"750,00405-4987-01 ",.01)
 ;;00405-4987-01
 ;;9002226.02101,"750,00405-4987-01 ",.02)
 ;;00405-4987-01
 ;;9002226.02101,"750,00405-4987-02 ",.01)
 ;;00405-4987-02
 ;;9002226.02101,"750,00405-4987-02 ",.02)
 ;;00405-4987-02
 ;;9002226.02101,"750,00405-4988-01 ",.01)
 ;;00405-4988-01
 ;;9002226.02101,"750,00405-4988-01 ",.02)
 ;;00405-4988-01
 ;;9002226.02101,"750,00405-4988-02 ",.01)
 ;;00405-4988-02
 ;;9002226.02101,"750,00405-4988-02 ",.02)
 ;;00405-4988-02
 ;;9002226.02101,"750,00405-4990-01 ",.01)
 ;;00405-4990-01
 ;;9002226.02101,"750,00405-4990-01 ",.02)
 ;;00405-4990-01
 ;;9002226.02101,"750,00430-0214-24 ",.01)
 ;;00430-0214-24
 ;;9002226.02101,"750,00430-0214-24 ",.02)
 ;;00430-0214-24
 ;;9002226.02101,"750,00430-0221-24 ",.01)
 ;;00430-0221-24
 ;;9002226.02101,"750,00430-0221-24 ",.02)
 ;;00430-0221-24
 ;;9002226.02101,"750,00456-0646-00 ",.01)
 ;;00456-0646-00
 ;;9002226.02101,"750,00456-0646-00 ",.02)
 ;;00456-0646-00
 ;;9002226.02101,"750,00456-0646-01 ",.01)
 ;;00456-0646-01
 ;;9002226.02101,"750,00456-0646-01 ",.02)
 ;;00456-0646-01