BGP21F45 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1195,54569-4441-00 ",.02)
 ;;54569-4441-00
 ;;9002226.02101,"1195,54569-4442-00 ",.01)
 ;;54569-4442-00
 ;;9002226.02101,"1195,54569-4442-00 ",.02)
 ;;54569-4442-00
 ;;9002226.02101,"1195,54569-4707-00 ",.01)
 ;;54569-4707-00
 ;;9002226.02101,"1195,54569-4707-00 ",.02)
 ;;54569-4707-00
 ;;9002226.02101,"1195,54569-4708-00 ",.01)
 ;;54569-4708-00
 ;;9002226.02101,"1195,54569-4708-00 ",.02)
 ;;54569-4708-00
 ;;9002226.02101,"1195,54569-4718-00 ",.01)
 ;;54569-4718-00
 ;;9002226.02101,"1195,54569-4718-00 ",.02)
 ;;54569-4718-00
 ;;9002226.02101,"1195,54569-5368-00 ",.01)
 ;;54569-5368-00
 ;;9002226.02101,"1195,54569-5368-00 ",.02)
 ;;54569-5368-00
 ;;9002226.02101,"1195,54569-5384-00 ",.01)
 ;;54569-5384-00
 ;;9002226.02101,"1195,54569-5384-00 ",.02)
 ;;54569-5384-00
 ;;9002226.02101,"1195,54569-5385-00 ",.01)
 ;;54569-5385-00
 ;;9002226.02101,"1195,54569-5385-00 ",.02)
 ;;54569-5385-00
 ;;9002226.02101,"1195,54569-5404-00 ",.01)
 ;;54569-5404-00
 ;;9002226.02101,"1195,54569-5404-00 ",.02)
 ;;54569-5404-00
 ;;9002226.02101,"1195,54569-5404-01 ",.01)
 ;;54569-5404-01
 ;;9002226.02101,"1195,54569-5404-01 ",.02)
 ;;54569-5404-01
 ;;9002226.02101,"1195,54569-5417-00 ",.01)
 ;;54569-5417-00
 ;;9002226.02101,"1195,54569-5417-00 ",.02)
 ;;54569-5417-00
 ;;9002226.02101,"1195,54569-5417-01 ",.01)
 ;;54569-5417-01
 ;;9002226.02101,"1195,54569-5417-01 ",.02)
 ;;54569-5417-01
 ;;9002226.02101,"1195,54569-5419-00 ",.01)
 ;;54569-5419-00
 ;;9002226.02101,"1195,54569-5419-00 ",.02)
 ;;54569-5419-00
 ;;9002226.02101,"1195,54569-5419-01 ",.01)
 ;;54569-5419-01
 ;;9002226.02101,"1195,54569-5419-01 ",.02)
 ;;54569-5419-01
 ;;9002226.02101,"1195,54569-5701-01 ",.01)
 ;;54569-5701-01
 ;;9002226.02101,"1195,54569-5701-01 ",.02)
 ;;54569-5701-01
 ;;9002226.02101,"1195,54569-5870-00 ",.01)
 ;;54569-5870-00
 ;;9002226.02101,"1195,54569-5870-00 ",.02)
 ;;54569-5870-00
 ;;9002226.02101,"1195,54569-5870-01 ",.01)
 ;;54569-5870-01
 ;;9002226.02101,"1195,54569-5870-01 ",.02)
 ;;54569-5870-01
 ;;9002226.02101,"1195,54569-5954-00 ",.01)
 ;;54569-5954-00
 ;;9002226.02101,"1195,54569-5954-00 ",.02)
 ;;54569-5954-00
 ;;9002226.02101,"1195,54569-5954-01 ",.01)
 ;;54569-5954-01
 ;;9002226.02101,"1195,54569-5954-01 ",.02)
 ;;54569-5954-01
 ;;9002226.02101,"1195,54569-5960-01 ",.01)
 ;;54569-5960-01
 ;;9002226.02101,"1195,54569-5960-01 ",.02)
 ;;54569-5960-01
 ;;9002226.02101,"1195,54569-5961-00 ",.01)
 ;;54569-5961-00
 ;;9002226.02101,"1195,54569-5961-00 ",.02)
 ;;54569-5961-00
 ;;9002226.02101,"1195,54569-5961-01 ",.01)
 ;;54569-5961-01
 ;;9002226.02101,"1195,54569-5961-01 ",.02)
 ;;54569-5961-01
 ;;9002226.02101,"1195,54569-5974-00 ",.01)
 ;;54569-5974-00
 ;;9002226.02101,"1195,54569-5974-00 ",.02)
 ;;54569-5974-00
 ;;9002226.02101,"1195,54569-5975-00 ",.01)
 ;;54569-5975-00
 ;;9002226.02101,"1195,54569-5975-00 ",.02)
 ;;54569-5975-00
 ;;9002226.02101,"1195,54569-5976-00 ",.01)
 ;;54569-5976-00
 ;;9002226.02101,"1195,54569-5976-00 ",.02)
 ;;54569-5976-00
 ;;9002226.02101,"1195,54569-5977-00 ",.01)
 ;;54569-5977-00
 ;;9002226.02101,"1195,54569-5977-00 ",.02)
 ;;54569-5977-00
 ;;9002226.02101,"1195,54569-6119-00 ",.01)
 ;;54569-6119-00
 ;;9002226.02101,"1195,54569-6119-00 ",.02)
 ;;54569-6119-00
 ;;9002226.02101,"1195,54569-6169-00 ",.01)
 ;;54569-6169-00
 ;;9002226.02101,"1195,54569-6169-00 ",.02)
 ;;54569-6169-00
 ;;9002226.02101,"1195,54738-0133-03 ",.01)
 ;;54738-0133-03
 ;;9002226.02101,"1195,54738-0133-03 ",.02)
 ;;54738-0133-03
 ;;9002226.02101,"1195,54738-0134-03 ",.01)
 ;;54738-0134-03
 ;;9002226.02101,"1195,54738-0134-03 ",.02)
 ;;54738-0134-03
 ;;9002226.02101,"1195,54738-0467-01 ",.01)
 ;;54738-0467-01
 ;;9002226.02101,"1195,54738-0467-01 ",.02)
 ;;54738-0467-01
 ;;9002226.02101,"1195,54738-0467-03 ",.01)
 ;;54738-0467-03
 ;;9002226.02101,"1195,54738-0467-03 ",.02)
 ;;54738-0467-03
 ;;9002226.02101,"1195,54738-0468-01 ",.01)
 ;;54738-0468-01
 ;;9002226.02101,"1195,54738-0468-01 ",.02)
 ;;54738-0468-01
 ;;9002226.02101,"1195,54738-0468-03 ",.01)
 ;;54738-0468-03
 ;;9002226.02101,"1195,54738-0468-03 ",.02)
 ;;54738-0468-03
 ;;9002226.02101,"1195,54738-0469-01 ",.01)
 ;;54738-0469-01
 ;;9002226.02101,"1195,54738-0469-01 ",.02)
 ;;54738-0469-01
 ;;9002226.02101,"1195,54738-0469-03 ",.01)
 ;;54738-0469-03
 ;;9002226.02101,"1195,54738-0469-03 ",.02)
 ;;54738-0469-03
 ;;9002226.02101,"1195,54738-0470-01 ",.01)
 ;;54738-0470-01
 ;;9002226.02101,"1195,54738-0470-01 ",.02)
 ;;54738-0470-01
 ;;9002226.02101,"1195,54738-0471-01 ",.01)
 ;;54738-0471-01
 ;;9002226.02101,"1195,54738-0471-01 ",.02)
 ;;54738-0471-01
 ;;9002226.02101,"1195,54738-0471-02 ",.01)
 ;;54738-0471-02
 ;;9002226.02101,"1195,54738-0471-02 ",.02)
 ;;54738-0471-02
 ;;9002226.02101,"1195,54868-0052-00 ",.01)
 ;;54868-0052-00
 ;;9002226.02101,"1195,54868-0052-00 ",.02)
 ;;54868-0052-00
 ;;9002226.02101,"1195,54868-0052-01 ",.01)
 ;;54868-0052-01
 ;;9002226.02101,"1195,54868-0052-01 ",.02)
 ;;54868-0052-01
 ;;9002226.02101,"1195,54868-0052-02 ",.01)
 ;;54868-0052-02
 ;;9002226.02101,"1195,54868-0052-02 ",.02)
 ;;54868-0052-02
 ;;9002226.02101,"1195,54868-0052-03 ",.01)
 ;;54868-0052-03
 ;;9002226.02101,"1195,54868-0052-03 ",.02)
 ;;54868-0052-03