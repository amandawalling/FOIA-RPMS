BGP44N13 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 11, 2013;
 ;;14.0;IHS CLINICAL REPORTING;;NOV 14, 2013;Build 101
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1195,43063-0062-90 ",.02)
 ;;43063-0062-90
 ;;9002226.02101,"1195,43063-0125-93 ",.01)
 ;;43063-0125-93
 ;;9002226.02101,"1195,43063-0125-93 ",.02)
 ;;43063-0125-93
 ;;9002226.02101,"1195,43063-0126-93 ",.01)
 ;;43063-0126-93
 ;;9002226.02101,"1195,43063-0126-93 ",.02)
 ;;43063-0126-93
 ;;9002226.02101,"1195,43063-0127-93 ",.01)
 ;;43063-0127-93
 ;;9002226.02101,"1195,43063-0127-93 ",.02)
 ;;43063-0127-93
 ;;9002226.02101,"1195,43063-0129-93 ",.01)
 ;;43063-0129-93
 ;;9002226.02101,"1195,43063-0129-93 ",.02)
 ;;43063-0129-93
 ;;9002226.02101,"1195,43063-0134-30 ",.01)
 ;;43063-0134-30
 ;;9002226.02101,"1195,43063-0134-30 ",.02)
 ;;43063-0134-30
 ;;9002226.02101,"1195,43063-0134-90 ",.01)
 ;;43063-0134-90
 ;;9002226.02101,"1195,43063-0134-90 ",.02)
 ;;43063-0134-90
 ;;9002226.02101,"1195,43063-0135-90 ",.01)
 ;;43063-0135-90
 ;;9002226.02101,"1195,43063-0135-90 ",.02)
 ;;43063-0135-90
 ;;9002226.02101,"1195,43063-0210-30 ",.01)
 ;;43063-0210-30
 ;;9002226.02101,"1195,43063-0210-30 ",.02)
 ;;43063-0210-30
 ;;9002226.02101,"1195,43063-0210-90 ",.01)
 ;;43063-0210-90
 ;;9002226.02101,"1195,43063-0210-90 ",.02)
 ;;43063-0210-90
 ;;9002226.02101,"1195,43063-0211-30 ",.01)
 ;;43063-0211-30
 ;;9002226.02101,"1195,43063-0211-30 ",.02)
 ;;43063-0211-30
 ;;9002226.02101,"1195,43063-0211-90 ",.01)
 ;;43063-0211-90
 ;;9002226.02101,"1195,43063-0211-90 ",.02)
 ;;43063-0211-90
 ;;9002226.02101,"1195,43063-0297-30 ",.01)
 ;;43063-0297-30
 ;;9002226.02101,"1195,43063-0297-30 ",.02)
 ;;43063-0297-30
 ;;9002226.02101,"1195,43063-0297-90 ",.01)
 ;;43063-0297-90
 ;;9002226.02101,"1195,43063-0297-90 ",.02)
 ;;43063-0297-90
 ;;9002226.02101,"1195,43063-0316-30 ",.01)
 ;;43063-0316-30
 ;;9002226.02101,"1195,43063-0316-30 ",.02)
 ;;43063-0316-30
 ;;9002226.02101,"1195,43063-0316-90 ",.01)
 ;;43063-0316-90
 ;;9002226.02101,"1195,43063-0316-90 ",.02)
 ;;43063-0316-90
 ;;9002226.02101,"1195,43063-0398-30 ",.01)
 ;;43063-0398-30
 ;;9002226.02101,"1195,43063-0398-30 ",.02)
 ;;43063-0398-30
 ;;9002226.02101,"1195,43063-0398-90 ",.01)
 ;;43063-0398-90
 ;;9002226.02101,"1195,43063-0398-90 ",.02)
 ;;43063-0398-90
 ;;9002226.02101,"1195,43063-0398-93 ",.01)
 ;;43063-0398-93
 ;;9002226.02101,"1195,43063-0398-93 ",.02)
 ;;43063-0398-93
 ;;9002226.02101,"1195,43063-0398-94 ",.01)
 ;;43063-0398-94
 ;;9002226.02101,"1195,43063-0398-94 ",.02)
 ;;43063-0398-94
 ;;9002226.02101,"1195,43063-0440-90 ",.01)
 ;;43063-0440-90
 ;;9002226.02101,"1195,43063-0440-90 ",.02)
 ;;43063-0440-90
 ;;9002226.02101,"1195,43353-0111-30 ",.01)
 ;;43353-0111-30
 ;;9002226.02101,"1195,43353-0111-30 ",.02)
 ;;43353-0111-30
 ;;9002226.02101,"1195,43353-0111-53 ",.01)
 ;;43353-0111-53
 ;;9002226.02101,"1195,43353-0111-53 ",.02)
 ;;43353-0111-53
 ;;9002226.02101,"1195,43353-0111-60 ",.01)
 ;;43353-0111-60
 ;;9002226.02101,"1195,43353-0111-60 ",.02)
 ;;43353-0111-60
 ;;9002226.02101,"1195,43353-0111-80 ",.01)
 ;;43353-0111-80
 ;;9002226.02101,"1195,43353-0111-80 ",.02)
 ;;43353-0111-80
 ;;9002226.02101,"1195,43353-0119-30 ",.01)
 ;;43353-0119-30
 ;;9002226.02101,"1195,43353-0119-30 ",.02)
 ;;43353-0119-30
 ;;9002226.02101,"1195,43353-0119-53 ",.01)
 ;;43353-0119-53
 ;;9002226.02101,"1195,43353-0119-53 ",.02)
 ;;43353-0119-53
 ;;9002226.02101,"1195,43353-0119-60 ",.01)
 ;;43353-0119-60
 ;;9002226.02101,"1195,43353-0119-60 ",.02)
 ;;43353-0119-60
 ;;9002226.02101,"1195,43353-0119-80 ",.01)
 ;;43353-0119-80
 ;;9002226.02101,"1195,43353-0119-80 ",.02)
 ;;43353-0119-80
 ;;9002226.02101,"1195,43353-0122-30 ",.01)
 ;;43353-0122-30
 ;;9002226.02101,"1195,43353-0122-30 ",.02)
 ;;43353-0122-30
 ;;9002226.02101,"1195,43353-0122-53 ",.01)
 ;;43353-0122-53
 ;;9002226.02101,"1195,43353-0122-53 ",.02)
 ;;43353-0122-53
 ;;9002226.02101,"1195,43353-0122-60 ",.01)
 ;;43353-0122-60
 ;;9002226.02101,"1195,43353-0122-60 ",.02)
 ;;43353-0122-60
 ;;9002226.02101,"1195,43353-0132-53 ",.01)
 ;;43353-0132-53
 ;;9002226.02101,"1195,43353-0132-53 ",.02)
 ;;43353-0132-53
 ;;9002226.02101,"1195,43353-0133-30 ",.01)
 ;;43353-0133-30
 ;;9002226.02101,"1195,43353-0133-30 ",.02)
 ;;43353-0133-30
 ;;9002226.02101,"1195,43353-0133-53 ",.01)
 ;;43353-0133-53
 ;;9002226.02101,"1195,43353-0133-53 ",.02)
 ;;43353-0133-53
 ;;9002226.02101,"1195,43353-0133-60 ",.01)
 ;;43353-0133-60
 ;;9002226.02101,"1195,43353-0133-60 ",.02)
 ;;43353-0133-60
 ;;9002226.02101,"1195,43353-0133-80 ",.01)
 ;;43353-0133-80
 ;;9002226.02101,"1195,43353-0133-80 ",.02)
 ;;43353-0133-80
 ;;9002226.02101,"1195,43353-0134-45 ",.01)
 ;;43353-0134-45
 ;;9002226.02101,"1195,43353-0134-45 ",.02)
 ;;43353-0134-45
 ;;9002226.02101,"1195,43353-0134-60 ",.01)
 ;;43353-0134-60
 ;;9002226.02101,"1195,43353-0134-60 ",.02)
 ;;43353-0134-60
 ;;9002226.02101,"1195,43353-0156-53 ",.01)
 ;;43353-0156-53
 ;;9002226.02101,"1195,43353-0156-53 ",.02)
 ;;43353-0156-53
 ;;9002226.02101,"1195,43353-0156-60 ",.01)
 ;;43353-0156-60
 ;;9002226.02101,"1195,43353-0156-60 ",.02)
 ;;43353-0156-60
 ;;9002226.02101,"1195,43353-0156-80 ",.01)
 ;;43353-0156-80
 ;;9002226.02101,"1195,43353-0156-80 ",.02)
 ;;43353-0156-80
 ;;9002226.02101,"1195,43353-0160-30 ",.01)
 ;;43353-0160-30
 ;;9002226.02101,"1195,43353-0160-30 ",.02)
 ;;43353-0160-30
 ;;9002226.02101,"1195,43353-0160-53 ",.01)
 ;;43353-0160-53
 ;;9002226.02101,"1195,43353-0160-53 ",.02)
 ;;43353-0160-53
 ;;9002226.02101,"1195,43353-0160-60 ",.01)
 ;;43353-0160-60
 ;;9002226.02101,"1195,43353-0160-60 ",.02)
 ;;43353-0160-60
 ;;9002226.02101,"1195,43353-0160-70 ",.01)
 ;;43353-0160-70
 ;;9002226.02101,"1195,43353-0160-70 ",.02)
 ;;43353-0160-70
 ;;9002226.02101,"1195,43353-0160-80 ",.01)
 ;;43353-0160-80
 ;;9002226.02101,"1195,43353-0160-80 ",.02)
 ;;43353-0160-80
 ;;9002226.02101,"1195,43353-0173-30 ",.01)
 ;;43353-0173-30
 ;;9002226.02101,"1195,43353-0173-30 ",.02)
 ;;43353-0173-30
 ;;9002226.02101,"1195,43353-0173-42 ",.01)
 ;;43353-0173-42
 ;;9002226.02101,"1195,43353-0173-42 ",.02)
 ;;43353-0173-42
 ;;9002226.02101,"1195,43353-0173-45 ",.01)
 ;;43353-0173-45
 ;;9002226.02101,"1195,43353-0173-45 ",.02)
 ;;43353-0173-45
 ;;9002226.02101,"1195,43353-0173-60 ",.01)
 ;;43353-0173-60
 ;;9002226.02101,"1195,43353-0173-60 ",.02)
 ;;43353-0173-60
 ;;9002226.02101,"1195,43353-0173-80 ",.01)
 ;;43353-0173-80
 ;;9002226.02101,"1195,43353-0173-80 ",.02)
 ;;43353-0173-80
 ;;9002226.02101,"1195,43353-0348-30 ",.01)
 ;;43353-0348-30
 ;;9002226.02101,"1195,43353-0348-30 ",.02)
 ;;43353-0348-30
 ;;9002226.02101,"1195,43353-0348-45 ",.01)
 ;;43353-0348-45
 ;;9002226.02101,"1195,43353-0348-45 ",.02)
 ;;43353-0348-45
 ;;9002226.02101,"1195,43353-0399-60 ",.01)
 ;;43353-0399-60
 ;;9002226.02101,"1195,43353-0399-60 ",.02)
 ;;43353-0399-60
 ;;9002226.02101,"1195,43353-0440-30 ",.01)
 ;;43353-0440-30
 ;;9002226.02101,"1195,43353-0440-30 ",.02)
 ;;43353-0440-30
 ;;9002226.02101,"1195,43353-0440-53 ",.01)
 ;;43353-0440-53
 ;;9002226.02101,"1195,43353-0440-53 ",.02)
 ;;43353-0440-53
 ;;9002226.02101,"1195,43353-0440-60 ",.01)
 ;;43353-0440-60
 ;;9002226.02101,"1195,43353-0440-60 ",.02)
 ;;43353-0440-60
 ;;9002226.02101,"1195,43353-0440-80 ",.01)
 ;;43353-0440-80
 ;;9002226.02101,"1195,43353-0440-80 ",.02)
 ;;43353-0440-80
 ;;9002226.02101,"1195,43353-0478-30 ",.01)
 ;;43353-0478-30
 ;;9002226.02101,"1195,43353-0478-30 ",.02)
 ;;43353-0478-30
 ;;9002226.02101,"1195,43353-0478-53 ",.01)
 ;;43353-0478-53
 ;;9002226.02101,"1195,43353-0478-53 ",.02)
 ;;43353-0478-53
 ;;9002226.02101,"1195,43353-0478-60 ",.01)
 ;;43353-0478-60
 ;;9002226.02101,"1195,43353-0478-60 ",.02)
 ;;43353-0478-60
 ;;9002226.02101,"1195,43353-0485-53 ",.01)
 ;;43353-0485-53
 ;;9002226.02101,"1195,43353-0485-53 ",.02)
 ;;43353-0485-53
 ;;9002226.02101,"1195,43353-0485-60 ",.01)
 ;;43353-0485-60
 ;;9002226.02101,"1195,43353-0485-60 ",.02)
 ;;43353-0485-60
 ;;9002226.02101,"1195,43353-0486-30 ",.01)
 ;;43353-0486-30
 ;;9002226.02101,"1195,43353-0486-30 ",.02)
 ;;43353-0486-30
 ;;9002226.02101,"1195,43353-0486-53 ",.01)
 ;;43353-0486-53
 ;;9002226.02101,"1195,43353-0486-53 ",.02)
 ;;43353-0486-53
 ;;9002226.02101,"1195,43353-0486-60 ",.01)
 ;;43353-0486-60
 ;;9002226.02101,"1195,43353-0486-60 ",.02)
 ;;43353-0486-60
 ;;9002226.02101,"1195,43353-0486-80 ",.01)
 ;;43353-0486-80
 ;;9002226.02101,"1195,43353-0486-80 ",.02)
 ;;43353-0486-80
 ;;9002226.02101,"1195,43353-0508-60 ",.01)
 ;;43353-0508-60
 ;;9002226.02101,"1195,43353-0508-60 ",.02)
 ;;43353-0508-60
 ;;9002226.02101,"1195,43353-0576-45 ",.01)
 ;;43353-0576-45
 ;;9002226.02101,"1195,43353-0576-45 ",.02)
 ;;43353-0576-45
 ;;9002226.02101,"1195,43353-0576-53 ",.01)
 ;;43353-0576-53
 ;;9002226.02101,"1195,43353-0576-53 ",.02)
 ;;43353-0576-53
 ;;9002226.02101,"1195,43353-0576-60 ",.01)
 ;;43353-0576-60
 ;;9002226.02101,"1195,43353-0576-60 ",.02)
 ;;43353-0576-60
 ;;9002226.02101,"1195,43353-0576-70 ",.01)
 ;;43353-0576-70
 ;;9002226.02101,"1195,43353-0576-70 ",.02)
 ;;43353-0576-70
 ;;9002226.02101,"1195,43353-0576-80 ",.01)
 ;;43353-0576-80
 ;;9002226.02101,"1195,43353-0576-80 ",.02)
 ;;43353-0576-80
 ;;9002226.02101,"1195,43353-0576-92 ",.01)
 ;;43353-0576-92
 ;;9002226.02101,"1195,43353-0576-92 ",.02)
 ;;43353-0576-92
 ;;9002226.02101,"1195,43353-0583-30 ",.01)
 ;;43353-0583-30
 ;;9002226.02101,"1195,43353-0583-30 ",.02)
 ;;43353-0583-30
 ;;9002226.02101,"1195,43353-0583-45 ",.01)
 ;;43353-0583-45
 ;;9002226.02101,"1195,43353-0583-45 ",.02)
 ;;43353-0583-45
 ;;9002226.02101,"1195,43353-0583-60 ",.01)
 ;;43353-0583-60
 ;;9002226.02101,"1195,43353-0583-60 ",.02)
 ;;43353-0583-60
 ;;9002226.02101,"1195,43353-0701-60 ",.01)
 ;;43353-0701-60
 ;;9002226.02101,"1195,43353-0701-60 ",.02)
 ;;43353-0701-60
 ;;9002226.02101,"1195,43353-0706-60 ",.01)
 ;;43353-0706-60
 ;;9002226.02101,"1195,43353-0706-60 ",.02)
 ;;43353-0706-60
 ;;9002226.02101,"1195,43353-0795-60 ",.01)
 ;;43353-0795-60
 ;;9002226.02101,"1195,43353-0795-60 ",.02)
 ;;43353-0795-60
 ;;9002226.02101,"1195,43478-0900-88 ",.01)
 ;;43478-0900-88
 ;;9002226.02101,"1195,43478-0900-88 ",.02)
 ;;43478-0900-88
 ;;9002226.02101,"1195,43478-0901-88 ",.01)
 ;;43478-0901-88
 ;;9002226.02101,"1195,43478-0901-88 ",.02)
 ;;43478-0901-88
 ;;9002226.02101,"1195,43478-0902-88 ",.01)
 ;;43478-0902-88
 ;;9002226.02101,"1195,43478-0902-88 ",.02)
 ;;43478-0902-88
 ;;9002226.02101,"1195,43478-0903-88 ",.01)
 ;;43478-0903-88
 ;;9002226.02101,"1195,43478-0903-88 ",.02)
 ;;43478-0903-88
 ;;9002226.02101,"1195,43547-0254-10 ",.01)
 ;;43547-0254-10
 ;;9002226.02101,"1195,43547-0254-10 ",.02)
 ;;43547-0254-10
 ;;9002226.02101,"1195,43547-0254-50 ",.01)
 ;;43547-0254-50
 ;;9002226.02101,"1195,43547-0254-50 ",.02)
 ;;43547-0254-50
 ;;9002226.02101,"1195,43547-0255-10 ",.01)
 ;;43547-0255-10
 ;;9002226.02101,"1195,43547-0255-10 ",.02)
 ;;43547-0255-10
 ;;9002226.02101,"1195,43547-0255-50 ",.01)
 ;;43547-0255-50
 ;;9002226.02101,"1195,43547-0255-50 ",.02)
 ;;43547-0255-50
 ;;9002226.02101,"1195,43547-0256-10 ",.01)
 ;;43547-0256-10
 ;;9002226.02101,"1195,43547-0256-10 ",.02)
 ;;43547-0256-10
 ;;9002226.02101,"1195,43547-0256-50 ",.01)
 ;;43547-0256-50
 ;;9002226.02101,"1195,43547-0256-50 ",.02)
 ;;43547-0256-50
 ;;9002226.02101,"1195,43547-0257-10 ",.01)
 ;;43547-0257-10
 ;;9002226.02101,"1195,43547-0257-10 ",.02)
 ;;43547-0257-10
 ;;9002226.02101,"1195,43547-0257-50 ",.01)
 ;;43547-0257-50
 ;;9002226.02101,"1195,43547-0257-50 ",.02)
 ;;43547-0257-50
 ;;9002226.02101,"1195,43683-0142-30 ",.01)
 ;;43683-0142-30
 ;;9002226.02101,"1195,43683-0142-30 ",.02)
 ;;43683-0142-30
 ;;9002226.02101,"1195,43683-0143-30 ",.01)
 ;;43683-0143-30
 ;;9002226.02101,"1195,43683-0143-30 ",.02)
 ;;43683-0143-30
 ;;9002226.02101,"1195,43683-0144-30 ",.01)
 ;;43683-0144-30
 ;;9002226.02101,"1195,43683-0144-30 ",.02)
 ;;43683-0144-30
 ;;9002226.02101,"1195,43683-0146-30 ",.01)
 ;;43683-0146-30
 ;;9002226.02101,"1195,43683-0146-30 ",.02)
 ;;43683-0146-30
 ;;9002226.02101,"1195,47463-0028-30 ",.01)
 ;;47463-0028-30
 ;;9002226.02101,"1195,47463-0028-30 ",.02)
 ;;47463-0028-30
 ;;9002226.02101,"1195,47463-0029-30 ",.01)
 ;;47463-0029-30
 ;;9002226.02101,"1195,47463-0029-30 ",.02)
 ;;47463-0029-30
 ;;9002226.02101,"1195,47463-0029-90 ",.01)
 ;;47463-0029-90
 ;;9002226.02101,"1195,47463-0029-90 ",.02)
 ;;47463-0029-90
 ;;9002226.02101,"1195,47463-0030-30 ",.01)
 ;;47463-0030-30
 ;;9002226.02101,"1195,47463-0030-30 ",.02)
 ;;47463-0030-30
 ;;9002226.02101,"1195,47463-0056-30 ",.01)
 ;;47463-0056-30
 ;;9002226.02101,"1195,47463-0056-30 ",.02)
 ;;47463-0056-30
 ;;9002226.02101,"1195,47463-0056-60 ",.01)
 ;;47463-0056-60
 ;;9002226.02101,"1195,47463-0056-60 ",.02)
 ;;47463-0056-60
 ;;9002226.02101,"1195,47463-0057-30 ",.01)
 ;;47463-0057-30
 ;;9002226.02101,"1195,47463-0057-30 ",.02)
 ;;47463-0057-30
 ;;9002226.02101,"1195,47463-0057-60 ",.01)
 ;;47463-0057-60
 ;;9002226.02101,"1195,47463-0057-60 ",.02)
 ;;47463-0057-60
 ;;9002226.02101,"1195,47463-0058-30 ",.01)
 ;;47463-0058-30
 ;;9002226.02101,"1195,47463-0058-30 ",.02)
 ;;47463-0058-30
 ;;9002226.02101,"1195,47463-0058-60 ",.01)
 ;;47463-0058-60
 ;;9002226.02101,"1195,47463-0058-60 ",.02)
 ;;47463-0058-60
 ;;9002226.02101,"1195,47463-0059-30 ",.01)
 ;;47463-0059-30
 ;;9002226.02101,"1195,47463-0059-30 ",.02)
 ;;47463-0059-30
 ;;9002226.02101,"1195,47463-0059-60 ",.01)
 ;;47463-0059-60
 ;;9002226.02101,"1195,47463-0059-60 ",.02)
 ;;47463-0059-60
 ;;9002226.02101,"1195,47463-0519-30 ",.01)
 ;;47463-0519-30
 ;;9002226.02101,"1195,47463-0519-30 ",.02)
 ;;47463-0519-30