BGP21L23 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1201,24658-0212-30 ",.02)
 ;;24658-0212-30
 ;;9002226.02101,"1201,24658-0212-45 ",.01)
 ;;24658-0212-45
 ;;9002226.02101,"1201,24658-0212-45 ",.02)
 ;;24658-0212-45
 ;;9002226.02101,"1201,24658-0212-90 ",.01)
 ;;24658-0212-90
 ;;9002226.02101,"1201,24658-0212-90 ",.02)
 ;;24658-0212-90
 ;;9002226.02101,"1201,24658-0213-10 ",.01)
 ;;24658-0213-10
 ;;9002226.02101,"1201,24658-0213-10 ",.02)
 ;;24658-0213-10
 ;;9002226.02101,"1201,24658-0213-30 ",.01)
 ;;24658-0213-30
 ;;9002226.02101,"1201,24658-0213-30 ",.02)
 ;;24658-0213-30
 ;;9002226.02101,"1201,24658-0213-45 ",.01)
 ;;24658-0213-45
 ;;9002226.02101,"1201,24658-0213-45 ",.02)
 ;;24658-0213-45
 ;;9002226.02101,"1201,24658-0213-90 ",.01)
 ;;24658-0213-90
 ;;9002226.02101,"1201,24658-0213-90 ",.02)
 ;;24658-0213-90
 ;;9002226.02101,"1201,24658-0214-10 ",.01)
 ;;24658-0214-10
 ;;9002226.02101,"1201,24658-0214-10 ",.02)
 ;;24658-0214-10
 ;;9002226.02101,"1201,24658-0214-30 ",.01)
 ;;24658-0214-30
 ;;9002226.02101,"1201,24658-0214-30 ",.02)
 ;;24658-0214-30
 ;;9002226.02101,"1201,24658-0214-45 ",.01)
 ;;24658-0214-45
 ;;9002226.02101,"1201,24658-0214-45 ",.02)
 ;;24658-0214-45
 ;;9002226.02101,"1201,24658-0214-90 ",.01)
 ;;24658-0214-90
 ;;9002226.02101,"1201,24658-0214-90 ",.02)
 ;;24658-0214-90
 ;;9002226.02101,"1201,33261-0541-02 ",.01)
 ;;33261-0541-02
 ;;9002226.02101,"1201,33261-0541-02 ",.02)
 ;;33261-0541-02
 ;;9002226.02101,"1201,33261-0541-30 ",.01)
 ;;33261-0541-30
 ;;9002226.02101,"1201,33261-0541-30 ",.02)
 ;;33261-0541-30
 ;;9002226.02101,"1201,33261-0541-60 ",.01)
 ;;33261-0541-60
 ;;9002226.02101,"1201,33261-0541-60 ",.02)
 ;;33261-0541-60
 ;;9002226.02101,"1201,33261-0541-90 ",.01)
 ;;33261-0541-90
 ;;9002226.02101,"1201,33261-0541-90 ",.02)
 ;;33261-0541-90
 ;;9002226.02101,"1201,33261-0542-02 ",.01)
 ;;33261-0542-02
 ;;9002226.02101,"1201,33261-0542-02 ",.02)
 ;;33261-0542-02
 ;;9002226.02101,"1201,33261-0542-30 ",.01)
 ;;33261-0542-30
 ;;9002226.02101,"1201,33261-0542-30 ",.02)
 ;;33261-0542-30
 ;;9002226.02101,"1201,33261-0542-60 ",.01)
 ;;33261-0542-60
 ;;9002226.02101,"1201,33261-0542-60 ",.02)
 ;;33261-0542-60
 ;;9002226.02101,"1201,33261-0542-90 ",.01)
 ;;33261-0542-90
 ;;9002226.02101,"1201,33261-0542-90 ",.02)
 ;;33261-0542-90
 ;;9002226.02101,"1201,33261-0548-30 ",.01)
 ;;33261-0548-30
 ;;9002226.02101,"1201,33261-0548-30 ",.02)
 ;;33261-0548-30
 ;;9002226.02101,"1201,33261-0548-60 ",.01)
 ;;33261-0548-60
 ;;9002226.02101,"1201,33261-0548-60 ",.02)
 ;;33261-0548-60
 ;;9002226.02101,"1201,33358-0210-01 ",.01)
 ;;33358-0210-01
 ;;9002226.02101,"1201,33358-0210-01 ",.02)
 ;;33358-0210-01
 ;;9002226.02101,"1201,33358-0210-30 ",.01)
 ;;33358-0210-30
 ;;9002226.02101,"1201,33358-0210-30 ",.02)
 ;;33358-0210-30
 ;;9002226.02101,"1201,33358-0210-60 ",.01)
 ;;33358-0210-60
 ;;9002226.02101,"1201,33358-0210-60 ",.02)
 ;;33358-0210-60
 ;;9002226.02101,"1201,33358-0210-90 ",.01)
 ;;33358-0210-90
 ;;9002226.02101,"1201,33358-0210-90 ",.02)
 ;;33358-0210-90
 ;;9002226.02101,"1201,33358-0223-30 ",.01)
 ;;33358-0223-30
 ;;9002226.02101,"1201,33358-0223-30 ",.02)
 ;;33358-0223-30
 ;;9002226.02101,"1201,33358-0224-30 ",.01)
 ;;33358-0224-30
 ;;9002226.02101,"1201,33358-0224-30 ",.02)
 ;;33358-0224-30
 ;;9002226.02101,"1201,33358-0225-00 ",.01)
 ;;33358-0225-00
 ;;9002226.02101,"1201,33358-0225-00 ",.02)
 ;;33358-0225-00
 ;;9002226.02101,"1201,33358-0225-60 ",.01)
 ;;33358-0225-60
 ;;9002226.02101,"1201,33358-0225-60 ",.02)
 ;;33358-0225-60
 ;;9002226.02101,"1201,33358-0226-30 ",.01)
 ;;33358-0226-30
 ;;9002226.02101,"1201,33358-0226-30 ",.02)
 ;;33358-0226-30
 ;;9002226.02101,"1201,35356-0125-30 ",.01)
 ;;35356-0125-30
 ;;9002226.02101,"1201,35356-0125-30 ",.02)
 ;;35356-0125-30
 ;;9002226.02101,"1201,35356-0413-30 ",.01)
 ;;35356-0413-30
 ;;9002226.02101,"1201,35356-0413-30 ",.02)
 ;;35356-0413-30
 ;;9002226.02101,"1201,35356-0519-30 ",.01)
 ;;35356-0519-30
 ;;9002226.02101,"1201,35356-0519-30 ",.02)
 ;;35356-0519-30
 ;;9002226.02101,"1201,35356-0600-30 ",.01)
 ;;35356-0600-30
 ;;9002226.02101,"1201,35356-0600-30 ",.02)
 ;;35356-0600-30
 ;;9002226.02101,"1201,35356-0604-30 ",.01)
 ;;35356-0604-30
 ;;9002226.02101,"1201,35356-0604-30 ",.02)
 ;;35356-0604-30
 ;;9002226.02101,"1201,42291-0375-90 ",.01)
 ;;42291-0375-90
 ;;9002226.02101,"1201,42291-0375-90 ",.02)
 ;;42291-0375-90
 ;;9002226.02101,"1201,42291-0376-90 ",.01)
 ;;42291-0376-90
 ;;9002226.02101,"1201,42291-0376-90 ",.02)
 ;;42291-0376-90
 ;;9002226.02101,"1201,42291-0377-10 ",.01)
 ;;42291-0377-10
 ;;9002226.02101,"1201,42291-0377-10 ",.02)
 ;;42291-0377-10
 ;;9002226.02101,"1201,42291-0377-90 ",.01)
 ;;42291-0377-90
 ;;9002226.02101,"1201,42291-0377-90 ",.02)
 ;;42291-0377-90
 ;;9002226.02101,"1201,43063-0008-01 ",.01)
 ;;43063-0008-01
 ;;9002226.02101,"1201,43063-0008-01 ",.02)
 ;;43063-0008-01
 ;;9002226.02101,"1201,43063-0080-30 ",.01)
 ;;43063-0080-30
 ;;9002226.02101,"1201,43063-0080-30 ",.02)
 ;;43063-0080-30
 ;;9002226.02101,"1201,43063-0080-90 ",.01)
 ;;43063-0080-90
 ;;9002226.02101,"1201,43063-0080-90 ",.02)
 ;;43063-0080-90
 ;;9002226.02101,"1201,43063-0143-30 ",.01)
 ;;43063-0143-30
 ;;9002226.02101,"1201,43063-0143-30 ",.02)
 ;;43063-0143-30