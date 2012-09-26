BGP2VF36 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 08, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"798,54569-1696-01 ",.01)
 ;;54569-1696-01
 ;;9002226.02101,"798,54569-1696-01 ",.02)
 ;;54569-1696-01
 ;;9002226.02101,"798,54569-1701-02 ",.01)
 ;;54569-1701-02
 ;;9002226.02101,"798,54569-1701-02 ",.02)
 ;;54569-1701-02
 ;;9002226.02101,"798,54569-1732-00 ",.01)
 ;;54569-1732-00
 ;;9002226.02101,"798,54569-1732-00 ",.02)
 ;;54569-1732-00
 ;;9002226.02101,"798,54569-1732-02 ",.01)
 ;;54569-1732-02
 ;;9002226.02101,"798,54569-1732-02 ",.02)
 ;;54569-1732-02
 ;;9002226.02101,"798,54569-1732-03 ",.01)
 ;;54569-1732-03
 ;;9002226.02101,"798,54569-1732-03 ",.02)
 ;;54569-1732-03
 ;;9002226.02101,"798,54569-1732-04 ",.01)
 ;;54569-1732-04
 ;;9002226.02101,"798,54569-1732-04 ",.02)
 ;;54569-1732-04
 ;;9002226.02101,"798,54569-1732-05 ",.01)
 ;;54569-1732-05
 ;;9002226.02101,"798,54569-1732-05 ",.02)
 ;;54569-1732-05
 ;;9002226.02101,"798,54569-1732-06 ",.01)
 ;;54569-1732-06
 ;;9002226.02101,"798,54569-1732-06 ",.02)
 ;;54569-1732-06
 ;;9002226.02101,"798,54569-1864-01 ",.01)
 ;;54569-1864-01
 ;;9002226.02101,"798,54569-1864-01 ",.02)
 ;;54569-1864-01
 ;;9002226.02101,"798,54569-1864-02 ",.01)
 ;;54569-1864-02
 ;;9002226.02101,"798,54569-1864-02 ",.02)
 ;;54569-1864-02
 ;;9002226.02101,"798,54569-1999-00 ",.01)
 ;;54569-1999-00
 ;;9002226.02101,"798,54569-1999-00 ",.02)
 ;;54569-1999-00
 ;;9002226.02101,"798,54569-1999-01 ",.01)
 ;;54569-1999-01
 ;;9002226.02101,"798,54569-1999-01 ",.02)
 ;;54569-1999-01
 ;;9002226.02101,"798,54569-1999-02 ",.01)
 ;;54569-1999-02
 ;;9002226.02101,"798,54569-1999-02 ",.02)
 ;;54569-1999-02
 ;;9002226.02101,"798,54569-1999-03 ",.01)
 ;;54569-1999-03
 ;;9002226.02101,"798,54569-1999-03 ",.02)
 ;;54569-1999-03
 ;;9002226.02101,"798,54569-2006-00 ",.01)
 ;;54569-2006-00
 ;;9002226.02101,"798,54569-2006-00 ",.02)
 ;;54569-2006-00
 ;;9002226.02101,"798,54569-2146-00 ",.01)
 ;;54569-2146-00
 ;;9002226.02101,"798,54569-2146-00 ",.02)
 ;;54569-2146-00
 ;;9002226.02101,"798,54569-2146-01 ",.01)
 ;;54569-2146-01
 ;;9002226.02101,"798,54569-2146-01 ",.02)
 ;;54569-2146-01
 ;;9002226.02101,"798,54569-2179-00 ",.01)
 ;;54569-2179-00
 ;;9002226.02101,"798,54569-2179-00 ",.02)
 ;;54569-2179-00
 ;;9002226.02101,"798,54569-2179-01 ",.01)
 ;;54569-2179-01
 ;;9002226.02101,"798,54569-2179-01 ",.02)
 ;;54569-2179-01
 ;;9002226.02101,"798,54569-2179-03 ",.01)
 ;;54569-2179-03
 ;;9002226.02101,"798,54569-2179-03 ",.02)
 ;;54569-2179-03
 ;;9002226.02101,"798,54569-2462-00 ",.01)
 ;;54569-2462-00
 ;;9002226.02101,"798,54569-2462-00 ",.02)
 ;;54569-2462-00
 ;;9002226.02101,"798,54569-2462-01 ",.01)
 ;;54569-2462-01
 ;;9002226.02101,"798,54569-2462-01 ",.02)
 ;;54569-2462-01
 ;;9002226.02101,"798,54569-2726-00 ",.01)
 ;;54569-2726-00
 ;;9002226.02101,"798,54569-2726-00 ",.02)
 ;;54569-2726-00
 ;;9002226.02101,"798,54569-3575-00 ",.01)
 ;;54569-3575-00
 ;;9002226.02101,"798,54569-3575-00 ",.02)
 ;;54569-3575-00
 ;;9002226.02101,"798,54569-3575-01 ",.01)
 ;;54569-3575-01
 ;;9002226.02101,"798,54569-3575-01 ",.02)
 ;;54569-3575-01
 ;;9002226.02101,"798,54569-3575-02 ",.01)
 ;;54569-3575-02
 ;;9002226.02101,"798,54569-3575-02 ",.02)
 ;;54569-3575-02
 ;;9002226.02101,"798,54569-3575-03 ",.01)
 ;;54569-3575-03
 ;;9002226.02101,"798,54569-3575-03 ",.02)
 ;;54569-3575-03
 ;;9002226.02101,"798,54569-3724-00 ",.01)
 ;;54569-3724-00
 ;;9002226.02101,"798,54569-3724-00 ",.02)
 ;;54569-3724-00
 ;;9002226.02101,"798,54569-3724-01 ",.01)
 ;;54569-3724-01
 ;;9002226.02101,"798,54569-3724-01 ",.02)
 ;;54569-3724-01
 ;;9002226.02101,"798,54569-3724-02 ",.01)
 ;;54569-3724-02
 ;;9002226.02101,"798,54569-3724-02 ",.02)
 ;;54569-3724-02
 ;;9002226.02101,"798,54569-3724-03 ",.01)
 ;;54569-3724-03
 ;;9002226.02101,"798,54569-3724-03 ",.02)
 ;;54569-3724-03
 ;;9002226.02101,"798,54569-3724-04 ",.01)
 ;;54569-3724-04
 ;;9002226.02101,"798,54569-3724-04 ",.02)
 ;;54569-3724-04
 ;;9002226.02101,"798,54569-3724-05 ",.01)
 ;;54569-3724-05
 ;;9002226.02101,"798,54569-3724-05 ",.02)
 ;;54569-3724-05
 ;;9002226.02101,"798,54569-3732-01 ",.01)
 ;;54569-3732-01
 ;;9002226.02101,"798,54569-3732-01 ",.02)
 ;;54569-3732-01
 ;;9002226.02101,"798,54569-3732-02 ",.01)
 ;;54569-3732-02
 ;;9002226.02101,"798,54569-3732-02 ",.02)
 ;;54569-3732-02
 ;;9002226.02101,"798,54569-3732-03 ",.01)
 ;;54569-3732-03
 ;;9002226.02101,"798,54569-3732-03 ",.02)
 ;;54569-3732-03
 ;;9002226.02101,"798,54569-3810-00 ",.01)
 ;;54569-3810-00
 ;;9002226.02101,"798,54569-3810-00 ",.02)
 ;;54569-3810-00
 ;;9002226.02101,"798,54569-3849-00 ",.01)
 ;;54569-3849-00
 ;;9002226.02101,"798,54569-3849-00 ",.02)
 ;;54569-3849-00
 ;;9002226.02101,"798,54569-3849-01 ",.01)
 ;;54569-3849-01
 ;;9002226.02101,"798,54569-3849-01 ",.02)
 ;;54569-3849-01
 ;;9002226.02101,"798,54569-3894-00 ",.01)
 ;;54569-3894-00
 ;;9002226.02101,"798,54569-3894-00 ",.02)
 ;;54569-3894-00
 ;;9002226.02101,"798,54569-4129-00 ",.01)
 ;;54569-4129-00
 ;;9002226.02101,"798,54569-4129-00 ",.02)
 ;;54569-4129-00
 ;;9002226.02101,"798,54569-4131-01 ",.01)
 ;;54569-4131-01
 ;;9002226.02101,"798,54569-4131-01 ",.02)
 ;;54569-4131-01
 ;;9002226.02101,"798,54569-4132-01 ",.01)
 ;;54569-4132-01
 ;;9002226.02101,"798,54569-4132-01 ",.02)
 ;;54569-4132-01
 ;;9002226.02101,"798,54569-4146-00 ",.01)
 ;;54569-4146-00
 ;;9002226.02101,"798,54569-4146-00 ",.02)
 ;;54569-4146-00
 ;;9002226.02101,"798,54569-4146-01 ",.01)
 ;;54569-4146-01
 ;;9002226.02101,"798,54569-4146-01 ",.02)
 ;;54569-4146-01
 ;;9002226.02101,"798,54569-4521-01 ",.01)
 ;;54569-4521-01
 ;;9002226.02101,"798,54569-4521-01 ",.02)
 ;;54569-4521-01
 ;;9002226.02101,"798,54569-4529-00 ",.01)
 ;;54569-4529-00
 ;;9002226.02101,"798,54569-4529-00 ",.02)
 ;;54569-4529-00
 ;;9002226.02101,"798,54569-4529-01 ",.01)
 ;;54569-4529-01
 ;;9002226.02101,"798,54569-4529-01 ",.02)
 ;;54569-4529-01
 ;;9002226.02101,"798,54569-4529-02 ",.01)
 ;;54569-4529-02
 ;;9002226.02101,"798,54569-4529-02 ",.02)
 ;;54569-4529-02
 ;;9002226.02101,"798,54569-4659-00 ",.01)
 ;;54569-4659-00
 ;;9002226.02101,"798,54569-4659-00 ",.02)
 ;;54569-4659-00
 ;;9002226.02101,"798,54569-4703-00 ",.01)
 ;;54569-4703-00
 ;;9002226.02101,"798,54569-4703-00 ",.02)
 ;;54569-4703-00
 ;;9002226.02101,"798,54569-4703-01 ",.01)
 ;;54569-4703-01
 ;;9002226.02101,"798,54569-4703-01 ",.02)
 ;;54569-4703-01
 ;;9002226.02101,"798,54569-4787-00 ",.01)
 ;;54569-4787-00
 ;;9002226.02101,"798,54569-4787-00 ",.02)
 ;;54569-4787-00
 ;;9002226.02101,"798,54569-4879-00 ",.01)
 ;;54569-4879-00
 ;;9002226.02101,"798,54569-4879-00 ",.02)
 ;;54569-4879-00
 ;;9002226.02101,"798,54569-4901-00 ",.01)
 ;;54569-4901-00
 ;;9002226.02101,"798,54569-4901-00 ",.02)
 ;;54569-4901-00
 ;;9002226.02101,"798,54569-5231-00 ",.01)
 ;;54569-5231-00
 ;;9002226.02101,"798,54569-5231-00 ",.02)
 ;;54569-5231-00
 ;;9002226.02101,"798,54569-5239-00 ",.01)
 ;;54569-5239-00
 ;;9002226.02101,"798,54569-5239-00 ",.02)
 ;;54569-5239-00
 ;;9002226.02101,"798,54569-5265-00 ",.01)
 ;;54569-5265-00
 ;;9002226.02101,"798,54569-5265-00 ",.02)
 ;;54569-5265-00
 ;;9002226.02101,"798,54569-5291-00 ",.01)
 ;;54569-5291-00
 ;;9002226.02101,"798,54569-5291-00 ",.02)
 ;;54569-5291-00
 ;;9002226.02101,"798,54569-5291-01 ",.01)
 ;;54569-5291-01
 ;;9002226.02101,"798,54569-5291-01 ",.02)
 ;;54569-5291-01
 ;;9002226.02101,"798,54569-5291-03 ",.01)
 ;;54569-5291-03
 ;;9002226.02101,"798,54569-5291-03 ",.02)
 ;;54569-5291-03
 ;;9002226.02101,"798,54569-5319-00 ",.01)
 ;;54569-5319-00
 ;;9002226.02101,"798,54569-5319-00 ",.02)
 ;;54569-5319-00
 ;;9002226.02101,"798,54569-5319-01 ",.01)
 ;;54569-5319-01
 ;;9002226.02101,"798,54569-5319-01 ",.02)
 ;;54569-5319-01
 ;;9002226.02101,"798,54569-5320-00 ",.01)
 ;;54569-5320-00
 ;;9002226.02101,"798,54569-5320-00 ",.02)
 ;;54569-5320-00
 ;;9002226.02101,"798,54569-5340-00 ",.01)
 ;;54569-5340-00
 ;;9002226.02101,"798,54569-5340-00 ",.02)
 ;;54569-5340-00
 ;;9002226.02101,"798,54569-5483-00 ",.01)
 ;;54569-5483-00
 ;;9002226.02101,"798,54569-5483-00 ",.02)
 ;;54569-5483-00
 ;;9002226.02101,"798,54569-5484-00 ",.01)
 ;;54569-5484-00
 ;;9002226.02101,"798,54569-5484-00 ",.02)
 ;;54569-5484-00
 ;;9002226.02101,"798,54569-5541-00 ",.01)
 ;;54569-5541-00
 ;;9002226.02101,"798,54569-5541-00 ",.02)
 ;;54569-5541-00
 ;;9002226.02101,"798,54569-5541-01 ",.01)
 ;;54569-5541-01
 ;;9002226.02101,"798,54569-5541-01 ",.02)
 ;;54569-5541-01
 ;;9002226.02101,"798,54569-5568-00 ",.01)
 ;;54569-5568-00
 ;;9002226.02101,"798,54569-5568-00 ",.02)
 ;;54569-5568-00
 ;;9002226.02101,"798,54569-5569-00 ",.01)
 ;;54569-5569-00
 ;;9002226.02101,"798,54569-5569-00 ",.02)
 ;;54569-5569-00
 ;;9002226.02101,"798,54569-5598-00 ",.01)
 ;;54569-5598-00
 ;;9002226.02101,"798,54569-5598-00 ",.02)
 ;;54569-5598-00
 ;;9002226.02101,"798,54569-5599-00 ",.01)
 ;;54569-5599-00
 ;;9002226.02101,"798,54569-5599-00 ",.02)
 ;;54569-5599-00
 ;;9002226.02101,"798,54569-5626-00 ",.01)
 ;;54569-5626-00
 ;;9002226.02101,"798,54569-5626-00 ",.02)
 ;;54569-5626-00
 ;;9002226.02101,"798,54569-5627-00 ",.01)
 ;;54569-5627-00
 ;;9002226.02101,"798,54569-5627-00 ",.02)
 ;;54569-5627-00
 ;;9002226.02101,"798,54569-5678-00 ",.01)
 ;;54569-5678-00
 ;;9002226.02101,"798,54569-5678-00 ",.02)
 ;;54569-5678-00
 ;;9002226.02101,"798,54569-5682-00 ",.01)
 ;;54569-5682-00
 ;;9002226.02101,"798,54569-5682-00 ",.02)
 ;;54569-5682-00
 ;;9002226.02101,"798,54569-5818-00 ",.01)
 ;;54569-5818-00
 ;;9002226.02101,"798,54569-5818-00 ",.02)
 ;;54569-5818-00
 ;;9002226.02101,"798,54569-5819-00 ",.01)
 ;;54569-5819-00
 ;;9002226.02101,"798,54569-5819-00 ",.02)
 ;;54569-5819-00
 ;;9002226.02101,"798,54569-5872-00 ",.01)
 ;;54569-5872-00
 ;;9002226.02101,"798,54569-5872-00 ",.02)
 ;;54569-5872-00
 ;;9002226.02101,"798,54569-5895-00 ",.01)
 ;;54569-5895-00
 ;;9002226.02101,"798,54569-5895-00 ",.02)
 ;;54569-5895-00
 ;;9002226.02101,"798,54569-5968-00 ",.01)
 ;;54569-5968-00
 ;;9002226.02101,"798,54569-5968-00 ",.02)
 ;;54569-5968-00
 ;;9002226.02101,"798,54569-5968-01 ",.01)
 ;;54569-5968-01
 ;;9002226.02101,"798,54569-5968-01 ",.02)
 ;;54569-5968-01
 ;;9002226.02101,"798,54569-5968-02 ",.01)
 ;;54569-5968-02
 ;;9002226.02101,"798,54569-5968-02 ",.02)
 ;;54569-5968-02
 ;;9002226.02101,"798,54569-8013-00 ",.01)
 ;;54569-8013-00
 ;;9002226.02101,"798,54569-8013-00 ",.02)
 ;;54569-8013-00
 ;;9002226.02101,"798,54569-8522-00 ",.01)
 ;;54569-8522-00
 ;;9002226.02101,"798,54569-8522-00 ",.02)
 ;;54569-8522-00
 ;;9002226.02101,"798,54569-8522-01 ",.01)
 ;;54569-8522-01
 ;;9002226.02101,"798,54569-8522-01 ",.02)
 ;;54569-8522-01
 ;;9002226.02101,"798,54569-8579-00 ",.01)
 ;;54569-8579-00
 ;;9002226.02101,"798,54569-8579-00 ",.02)
 ;;54569-8579-00
 ;;9002226.02101,"798,54569-8609-00 ",.01)
 ;;54569-8609-00
 ;;9002226.02101,"798,54569-8609-00 ",.02)
 ;;54569-8609-00
 ;;9002226.02101,"798,54738-0912-01 ",.01)
 ;;54738-0912-01
 ;;9002226.02101,"798,54738-0912-01 ",.02)
 ;;54738-0912-01
 ;;9002226.02101,"798,54738-0913-01 ",.01)
 ;;54738-0913-01
 ;;9002226.02101,"798,54738-0913-01 ",.02)
 ;;54738-0913-01
 ;;9002226.02101,"798,54738-0914-01 ",.01)
 ;;54738-0914-01
 ;;9002226.02101,"798,54738-0914-01 ",.02)
 ;;54738-0914-01
 ;;9002226.02101,"798,54838-0512-40 ",.01)
 ;;54838-0512-40
 ;;9002226.02101,"798,54838-0512-40 ",.02)
 ;;54838-0512-40
 ;;9002226.02101,"798,54838-0523-40 ",.01)
 ;;54838-0523-40
 ;;9002226.02101,"798,54838-0523-40 ",.02)
 ;;54838-0523-40
 ;;9002226.02101,"798,54838-0540-70 ",.01)
 ;;54838-0540-70
 ;;9002226.02101,"798,54838-0540-70 ",.02)
 ;;54838-0540-70
 ;;9002226.02101,"798,54868-0062-00 ",.01)
 ;;54868-0062-00
 ;;9002226.02101,"798,54868-0062-00 ",.02)
 ;;54868-0062-00
 ;;9002226.02101,"798,54868-0062-02 ",.01)
 ;;54868-0062-02
 ;;9002226.02101,"798,54868-0062-02 ",.02)
 ;;54868-0062-02
 ;;9002226.02101,"798,54868-0062-04 ",.01)
 ;;54868-0062-04
 ;;9002226.02101,"798,54868-0062-04 ",.02)
 ;;54868-0062-04
 ;;9002226.02101,"798,54868-0064-02 ",.01)
 ;;54868-0064-02
 ;;9002226.02101,"798,54868-0064-02 ",.02)
 ;;54868-0064-02
 ;;9002226.02101,"798,54868-0064-03 ",.01)
 ;;54868-0064-03
 ;;9002226.02101,"798,54868-0064-03 ",.02)
 ;;54868-0064-03
 ;;9002226.02101,"798,54868-0064-04 ",.01)
 ;;54868-0064-04
 ;;9002226.02101,"798,54868-0064-04 ",.02)
 ;;54868-0064-04
 ;;9002226.02101,"798,54868-0064-05 ",.01)
 ;;54868-0064-05
 ;;9002226.02101,"798,54868-0064-05 ",.02)
 ;;54868-0064-05
 ;;9002226.02101,"798,54868-0064-06 ",.01)
 ;;54868-0064-06
 ;;9002226.02101,"798,54868-0064-06 ",.02)
 ;;54868-0064-06
 ;;9002226.02101,"798,54868-0064-07 ",.01)
 ;;54868-0064-07
 ;;9002226.02101,"798,54868-0064-07 ",.02)
 ;;54868-0064-07
 ;;9002226.02101,"798,54868-0065-00 ",.01)
 ;;54868-0065-00
 ;;9002226.02101,"798,54868-0065-00 ",.02)
 ;;54868-0065-00
 ;;9002226.02101,"798,54868-0065-02 ",.01)
 ;;54868-0065-02
 ;;9002226.02101,"798,54868-0065-02 ",.02)
 ;;54868-0065-02
 ;;9002226.02101,"798,54868-0065-03 ",.01)
 ;;54868-0065-03
 ;;9002226.02101,"798,54868-0065-03 ",.02)
 ;;54868-0065-03
 ;;9002226.02101,"798,54868-0065-04 ",.01)
 ;;54868-0065-04
 ;;9002226.02101,"798,54868-0065-04 ",.02)
 ;;54868-0065-04
 ;;9002226.02101,"798,54868-0065-05 ",.01)
 ;;54868-0065-05
 ;;9002226.02101,"798,54868-0065-05 ",.02)
 ;;54868-0065-05
 ;;9002226.02101,"798,54868-0065-07 ",.01)
 ;;54868-0065-07
 ;;9002226.02101,"798,54868-0065-07 ",.02)
 ;;54868-0065-07
 ;;9002226.02101,"798,54868-0065-08 ",.01)
 ;;54868-0065-08
 ;;9002226.02101,"798,54868-0065-08 ",.02)
 ;;54868-0065-08