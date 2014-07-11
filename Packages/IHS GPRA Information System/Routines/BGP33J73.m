BGP33J73 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 23, 2013;
 ;;13.0;IHS CLINICAL REPORTING;**1**;NOV 20, 2012;Build 7
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"734,63304-0521-01 ",.01)
 ;;63304-0521-01
 ;;9002226.02101,"734,63304-0521-01 ",.02)
 ;;63304-0521-01
 ;;9002226.02101,"734,63304-0521-20 ",.01)
 ;;63304-0521-20
 ;;9002226.02101,"734,63304-0521-20 ",.02)
 ;;63304-0521-20
 ;;9002226.02101,"734,63304-0582-01 ",.01)
 ;;63304-0582-01
 ;;9002226.02101,"734,63304-0582-01 ",.02)
 ;;63304-0582-01
 ;;9002226.02101,"734,63304-0582-50 ",.01)
 ;;63304-0582-50
 ;;9002226.02101,"734,63304-0582-50 ",.02)
 ;;63304-0582-50
 ;;9002226.02101,"734,63304-0615-01 ",.01)
 ;;63304-0615-01
 ;;9002226.02101,"734,63304-0615-01 ",.02)
 ;;63304-0615-01
 ;;9002226.02101,"734,63304-0654-01 ",.01)
 ;;63304-0654-01
 ;;9002226.02101,"734,63304-0654-01 ",.02)
 ;;63304-0654-01
 ;;9002226.02101,"734,63304-0655-01 ",.01)
 ;;63304-0655-01
 ;;9002226.02101,"734,63304-0655-01 ",.02)
 ;;63304-0655-01
 ;;9002226.02101,"734,63304-0655-05 ",.01)
 ;;63304-0655-05
 ;;9002226.02101,"734,63304-0655-05 ",.02)
 ;;63304-0655-05
 ;;9002226.02101,"734,63304-0656-01 ",.01)
 ;;63304-0656-01
 ;;9002226.02101,"734,63304-0656-01 ",.02)
 ;;63304-0656-01
 ;;9002226.02101,"734,63304-0656-05 ",.01)
 ;;63304-0656-05
 ;;9002226.02101,"734,63304-0656-05 ",.02)
 ;;63304-0656-05
 ;;9002226.02101,"734,63304-0657-01 ",.01)
 ;;63304-0657-01
 ;;9002226.02101,"734,63304-0657-01 ",.02)
 ;;63304-0657-01
 ;;9002226.02101,"734,63304-0657-05 ",.01)
 ;;63304-0657-05
 ;;9002226.02101,"734,63304-0657-05 ",.02)
 ;;63304-0657-05
 ;;9002226.02101,"734,63304-0658-01 ",.01)
 ;;63304-0658-01
 ;;9002226.02101,"734,63304-0658-01 ",.02)
 ;;63304-0658-01
 ;;9002226.02101,"734,63304-0659-01 ",.01)
 ;;63304-0659-01
 ;;9002226.02101,"734,63304-0659-01 ",.02)
 ;;63304-0659-01
 ;;9002226.02101,"734,63304-0692-01 ",.01)
 ;;63304-0692-01
 ;;9002226.02101,"734,63304-0692-01 ",.02)
 ;;63304-0692-01
 ;;9002226.02101,"734,63304-0692-05 ",.01)
 ;;63304-0692-05
 ;;9002226.02101,"734,63304-0692-05 ",.02)
 ;;63304-0692-05
 ;;9002226.02101,"734,63304-0693-01 ",.01)
 ;;63304-0693-01
 ;;9002226.02101,"734,63304-0693-01 ",.02)
 ;;63304-0693-01
 ;;9002226.02101,"734,63304-0693-16 ",.01)
 ;;63304-0693-16
 ;;9002226.02101,"734,63304-0693-16 ",.02)
 ;;63304-0693-16
 ;;9002226.02101,"734,63304-0694-01 ",.01)
 ;;63304-0694-01
 ;;9002226.02101,"734,63304-0694-01 ",.02)
 ;;63304-0694-01
 ;;9002226.02101,"734,63304-0695-01 ",.01)
 ;;63304-0695-01
 ;;9002226.02101,"734,63304-0695-01 ",.02)
 ;;63304-0695-01
 ;;9002226.02101,"734,63304-0696-05 ",.01)
 ;;63304-0696-05
 ;;9002226.02101,"734,63304-0696-05 ",.02)
 ;;63304-0696-05
 ;;9002226.02101,"734,63304-0696-50 ",.01)
 ;;63304-0696-50
 ;;9002226.02101,"734,63304-0696-50 ",.02)
 ;;63304-0696-50
 ;;9002226.02101,"734,63304-0697-01 ",.01)
 ;;63304-0697-01
 ;;9002226.02101,"734,63304-0697-01 ",.02)
 ;;63304-0697-01
 ;;9002226.02101,"734,63304-0698-01 ",.01)
 ;;63304-0698-01
 ;;9002226.02101,"734,63304-0698-01 ",.02)
 ;;63304-0698-01
 ;;9002226.02101,"734,63304-0699-50 ",.01)
 ;;63304-0699-50
 ;;9002226.02101,"734,63304-0699-50 ",.02)
 ;;63304-0699-50
 ;;9002226.02101,"734,63304-0709-01 ",.01)
 ;;63304-0709-01
 ;;9002226.02101,"734,63304-0709-01 ",.02)
 ;;63304-0709-01
 ;;9002226.02101,"734,63304-0710-01 ",.01)
 ;;63304-0710-01
 ;;9002226.02101,"734,63304-0710-01 ",.02)
 ;;63304-0710-01
 ;;9002226.02101,"734,63304-0711-01 ",.01)
 ;;63304-0711-01
 ;;9002226.02101,"734,63304-0711-01 ",.02)
 ;;63304-0711-01
 ;;9002226.02101,"734,63304-0711-50 ",.01)
 ;;63304-0711-50
 ;;9002226.02101,"734,63304-0711-50 ",.02)
 ;;63304-0711-50
 ;;9002226.02101,"734,63304-0713-20 ",.01)
 ;;63304-0713-20
 ;;9002226.02101,"734,63304-0713-20 ",.02)
 ;;63304-0713-20
 ;;9002226.02101,"734,63304-0715-50 ",.01)
 ;;63304-0715-50
 ;;9002226.02101,"734,63304-0715-50 ",.02)
 ;;63304-0715-50
 ;;9002226.02101,"734,63304-0716-50 ",.01)
 ;;63304-0716-50
 ;;9002226.02101,"734,63304-0716-50 ",.02)
 ;;63304-0716-50
 ;;9002226.02101,"734,63304-0717-01 ",.01)
 ;;63304-0717-01
 ;;9002226.02101,"734,63304-0717-01 ",.02)
 ;;63304-0717-01
 ;;9002226.02101,"734,63304-0725-01 ",.01)
 ;;63304-0725-01
 ;;9002226.02101,"734,63304-0725-01 ",.02)
 ;;63304-0725-01
 ;;9002226.02101,"734,63304-0725-60 ",.01)
 ;;63304-0725-60
 ;;9002226.02101,"734,63304-0725-60 ",.02)
 ;;63304-0725-60
 ;;9002226.02101,"734,63304-0726-01 ",.01)
 ;;63304-0726-01
 ;;9002226.02101,"734,63304-0726-01 ",.02)
 ;;63304-0726-01
 ;;9002226.02101,"734,63304-0726-60 ",.01)
 ;;63304-0726-60
 ;;9002226.02101,"734,63304-0726-60 ",.02)
 ;;63304-0726-60
 ;;9002226.02101,"734,63304-0751-20 ",.01)
 ;;63304-0751-20
 ;;9002226.02101,"734,63304-0751-20 ",.02)
 ;;63304-0751-20
 ;;9002226.02101,"734,63304-0751-60 ",.01)
 ;;63304-0751-60
 ;;9002226.02101,"734,63304-0751-60 ",.02)
 ;;63304-0751-60
 ;;9002226.02101,"734,63304-0752-20 ",.01)
 ;;63304-0752-20
 ;;9002226.02101,"734,63304-0752-20 ",.02)
 ;;63304-0752-20
 ;;9002226.02101,"734,63304-0752-60 ",.01)
 ;;63304-0752-60
 ;;9002226.02101,"734,63304-0752-60 ",.02)
 ;;63304-0752-60
 ;;9002226.02101,"734,63304-0753-20 ",.01)
 ;;63304-0753-20
 ;;9002226.02101,"734,63304-0753-20 ",.02)
 ;;63304-0753-20
 ;;9002226.02101,"734,63304-0754-20 ",.01)
 ;;63304-0754-20
 ;;9002226.02101,"734,63304-0754-20 ",.02)
 ;;63304-0754-20
 ;;9002226.02101,"734,63304-0760-20 ",.01)
 ;;63304-0760-20
 ;;9002226.02101,"734,63304-0760-20 ",.02)
 ;;63304-0760-20
 ;;9002226.02101,"734,63304-0761-01 ",.01)
 ;;63304-0761-01
 ;;9002226.02101,"734,63304-0761-01 ",.02)
 ;;63304-0761-01
 ;;9002226.02101,"734,63304-0761-20 ",.01)
 ;;63304-0761-20
 ;;9002226.02101,"734,63304-0761-20 ",.02)
 ;;63304-0761-20
 ;;9002226.02101,"734,63304-0762-20 ",.01)
 ;;63304-0762-20
 ;;9002226.02101,"734,63304-0762-20 ",.02)
 ;;63304-0762-20
 ;;9002226.02101,"734,63304-0763-01 ",.01)
 ;;63304-0763-01
 ;;9002226.02101,"734,63304-0763-01 ",.02)
 ;;63304-0763-01
 ;;9002226.02101,"734,63304-0763-05 ",.01)
 ;;63304-0763-05
 ;;9002226.02101,"734,63304-0763-05 ",.02)
 ;;63304-0763-05
 ;;9002226.02101,"734,63304-0763-20 ",.01)
 ;;63304-0763-20
 ;;9002226.02101,"734,63304-0763-20 ",.02)
 ;;63304-0763-20
 ;;9002226.02101,"734,63304-0768-01 ",.01)
 ;;63304-0768-01
 ;;9002226.02101,"734,63304-0768-01 ",.02)
 ;;63304-0768-01
 ;;9002226.02101,"734,63304-0768-02 ",.01)
 ;;63304-0768-02
 ;;9002226.02101,"734,63304-0768-02 ",.02)
 ;;63304-0768-02
 ;;9002226.02101,"734,63304-0768-07 ",.01)
 ;;63304-0768-07
 ;;9002226.02101,"734,63304-0768-07 ",.02)
 ;;63304-0768-07
 ;;9002226.02101,"734,63304-0821-03 ",.01)
 ;;63304-0821-03
 ;;9002226.02101,"734,63304-0821-03 ",.02)
 ;;63304-0821-03
 ;;9002226.02101,"734,63304-0821-04 ",.01)
 ;;63304-0821-04
 ;;9002226.02101,"734,63304-0821-04 ",.02)
 ;;63304-0821-04
 ;;9002226.02101,"734,63304-0822-03 ",.01)
 ;;63304-0822-03
 ;;9002226.02101,"734,63304-0822-03 ",.02)
 ;;63304-0822-03
 ;;9002226.02101,"734,63304-0822-04 ",.01)
 ;;63304-0822-04
 ;;9002226.02101,"734,63304-0822-04 ",.02)
 ;;63304-0822-04
 ;;9002226.02101,"734,63304-0940-25 ",.01)
 ;;63304-0940-25
 ;;9002226.02101,"734,63304-0940-25 ",.02)
 ;;63304-0940-25
 ;;9002226.02101,"734,63304-0941-10 ",.01)
 ;;63304-0941-10
 ;;9002226.02101,"734,63304-0941-10 ",.02)
 ;;63304-0941-10
 ;;9002226.02101,"734,63304-0946-25 ",.01)
 ;;63304-0946-25
 ;;9002226.02101,"734,63304-0946-25 ",.02)
 ;;63304-0946-25
 ;;9002226.02101,"734,63304-0947-25 ",.01)
 ;;63304-0947-25
 ;;9002226.02101,"734,63304-0947-25 ",.02)
 ;;63304-0947-25
 ;;9002226.02101,"734,63304-0948-10 ",.01)
 ;;63304-0948-10
 ;;9002226.02101,"734,63304-0948-10 ",.02)
 ;;63304-0948-10
 ;;9002226.02101,"734,63304-0954-01 ",.01)
 ;;63304-0954-01
 ;;9002226.02101,"734,63304-0954-01 ",.02)
 ;;63304-0954-01
 ;;9002226.02101,"734,63304-0954-02 ",.01)
 ;;63304-0954-02
 ;;9002226.02101,"734,63304-0954-02 ",.02)
 ;;63304-0954-02
 ;;9002226.02101,"734,63304-0956-01 ",.01)
 ;;63304-0956-01
 ;;9002226.02101,"734,63304-0956-01 ",.02)
 ;;63304-0956-01
 ;;9002226.02101,"734,63304-0956-02 ",.01)
 ;;63304-0956-02
 ;;9002226.02101,"734,63304-0956-02 ",.02)
 ;;63304-0956-02
 ;;9002226.02101,"734,63304-0957-03 ",.01)
 ;;63304-0957-03
 ;;9002226.02101,"734,63304-0957-03 ",.02)
 ;;63304-0957-03
 ;;9002226.02101,"734,63304-0957-04 ",.01)
 ;;63304-0957-04
 ;;9002226.02101,"734,63304-0957-04 ",.02)
 ;;63304-0957-04
 ;;9002226.02101,"734,63304-0958-01 ",.01)
 ;;63304-0958-01
 ;;9002226.02101,"734,63304-0958-01 ",.02)
 ;;63304-0958-01
 ;;9002226.02101,"734,63304-0958-02 ",.01)
 ;;63304-0958-02
 ;;9002226.02101,"734,63304-0958-02 ",.02)
 ;;63304-0958-02
 ;;9002226.02101,"734,63304-0959-01 ",.01)
 ;;63304-0959-01
 ;;9002226.02101,"734,63304-0959-01 ",.02)
 ;;63304-0959-01
 ;;9002226.02101,"734,63304-0959-02 ",.01)
 ;;63304-0959-02
 ;;9002226.02101,"734,63304-0959-02 ",.02)
 ;;63304-0959-02
 ;;9002226.02101,"734,63304-0960-01 ",.01)
 ;;63304-0960-01
 ;;9002226.02101,"734,63304-0960-01 ",.02)
 ;;63304-0960-01
 ;;9002226.02101,"734,63304-0960-03 ",.01)
 ;;63304-0960-03
 ;;9002226.02101,"734,63304-0960-03 ",.02)
 ;;63304-0960-03
 ;;9002226.02101,"734,63304-0960-04 ",.01)
 ;;63304-0960-04
 ;;9002226.02101,"734,63304-0960-04 ",.02)
 ;;63304-0960-04
 ;;9002226.02101,"734,63304-0961-01 ",.01)
 ;;63304-0961-01
 ;;9002226.02101,"734,63304-0961-01 ",.02)
 ;;63304-0961-01
 ;;9002226.02101,"734,63304-0961-03 ",.01)
 ;;63304-0961-03
 ;;9002226.02101,"734,63304-0961-03 ",.02)
 ;;63304-0961-03
 ;;9002226.02101,"734,63304-0961-04 ",.01)
 ;;63304-0961-04
 ;;9002226.02101,"734,63304-0961-04 ",.02)
 ;;63304-0961-04
 ;;9002226.02101,"734,63304-0963-04 ",.01)
 ;;63304-0963-04
 ;;9002226.02101,"734,63304-0963-04 ",.02)
 ;;63304-0963-04
 ;;9002226.02101,"734,63304-0964-03 ",.01)
 ;;63304-0964-03
 ;;9002226.02101,"734,63304-0964-03 ",.02)
 ;;63304-0964-03
 ;;9002226.02101,"734,63304-0964-04 ",.01)
 ;;63304-0964-04
 ;;9002226.02101,"734,63304-0964-04 ",.02)
 ;;63304-0964-04
 ;;9002226.02101,"734,63304-0965-03 ",.01)
 ;;63304-0965-03
 ;;9002226.02101,"734,63304-0965-03 ",.02)
 ;;63304-0965-03
 ;;9002226.02101,"734,63304-0965-04 ",.01)
 ;;63304-0965-04
 ;;9002226.02101,"734,63304-0965-04 ",.02)
 ;;63304-0965-04
 ;;9002226.02101,"734,63304-0966-03 ",.01)
 ;;63304-0966-03
 ;;9002226.02101,"734,63304-0966-03 ",.02)
 ;;63304-0966-03
 ;;9002226.02101,"734,63304-0966-04 ",.01)
 ;;63304-0966-04
 ;;9002226.02101,"734,63304-0966-04 ",.02)
 ;;63304-0966-04
 ;;9002226.02101,"734,63304-0969-01 ",.01)
 ;;63304-0969-01
 ;;9002226.02101,"734,63304-0969-01 ",.02)
 ;;63304-0969-01
 ;;9002226.02101,"734,63304-0969-03 ",.01)
 ;;63304-0969-03
 ;;9002226.02101,"734,63304-0969-03 ",.02)
 ;;63304-0969-03
 ;;9002226.02101,"734,63304-0969-04 ",.01)
 ;;63304-0969-04
 ;;9002226.02101,"734,63304-0969-04 ",.02)
 ;;63304-0969-04
 ;;9002226.02101,"734,63304-0970-01 ",.01)
 ;;63304-0970-01
 ;;9002226.02101,"734,63304-0970-01 ",.02)
 ;;63304-0970-01
 ;;9002226.02101,"734,63304-0970-03 ",.01)
 ;;63304-0970-03
 ;;9002226.02101,"734,63304-0970-03 ",.02)
 ;;63304-0970-03
 ;;9002226.02101,"734,63304-0970-04 ",.01)
 ;;63304-0970-04
 ;;9002226.02101,"734,63304-0970-04 ",.02)
 ;;63304-0970-04
 ;;9002226.02101,"734,63304-0973-04 ",.01)
 ;;63304-0973-04
 ;;9002226.02101,"734,63304-0973-04 ",.02)
 ;;63304-0973-04
 ;;9002226.02101,"734,63304-0974-01 ",.01)
 ;;63304-0974-01
 ;;9002226.02101,"734,63304-0974-01 ",.02)
 ;;63304-0974-01
 ;;9002226.02101,"734,63304-0974-04 ",.01)
 ;;63304-0974-04
 ;;9002226.02101,"734,63304-0974-04 ",.02)
 ;;63304-0974-04
 ;;9002226.02101,"734,63304-0977-01 ",.01)
 ;;63304-0977-01
 ;;9002226.02101,"734,63304-0977-01 ",.02)
 ;;63304-0977-01
 ;;9002226.02101,"734,63304-0977-03 ",.01)
 ;;63304-0977-03
 ;;9002226.02101,"734,63304-0977-03 ",.02)
 ;;63304-0977-03
 ;;9002226.02101,"734,63304-0977-04 ",.01)
 ;;63304-0977-04
 ;;9002226.02101,"734,63304-0977-04 ",.02)
 ;;63304-0977-04
 ;;9002226.02101,"734,63304-0979-01 ",.01)
 ;;63304-0979-01
 ;;9002226.02101,"734,63304-0979-01 ",.02)
 ;;63304-0979-01
 ;;9002226.02101,"734,63304-0979-03 ",.01)
 ;;63304-0979-03
 ;;9002226.02101,"734,63304-0979-03 ",.02)
 ;;63304-0979-03
 ;;9002226.02101,"734,63304-0979-04 ",.01)
 ;;63304-0979-04
 ;;9002226.02101,"734,63304-0979-04 ",.02)
 ;;63304-0979-04
 ;;9002226.02101,"734,63304-9070-04 ",.01)
 ;;63304-9070-04
 ;;9002226.02101,"734,63304-9070-04 ",.02)
 ;;63304-9070-04
 ;;9002226.02101,"734,63323-0130-11 ",.01)
 ;;63323-0130-11
 ;;9002226.02101,"734,63323-0130-11 ",.02)
 ;;63323-0130-11
 ;;9002226.02101,"734,63323-0236-10 ",.01)
 ;;63323-0236-10
 ;;9002226.02101,"734,63323-0236-10 ",.02)
 ;;63323-0236-10
 ;;9002226.02101,"734,63323-0237-10 ",.01)
 ;;63323-0237-10
 ;;9002226.02101,"734,63323-0237-10 ",.02)
 ;;63323-0237-10
 ;;9002226.02101,"734,63323-0238-61 ",.01)
 ;;63323-0238-61
 ;;9002226.02101,"734,63323-0238-61 ",.02)
 ;;63323-0238-61
 ;;9002226.02101,"734,63323-0282-02 ",.01)
 ;;63323-0282-02
 ;;9002226.02101,"734,63323-0282-02 ",.02)
 ;;63323-0282-02
 ;;9002226.02101,"734,63323-0282-04 ",.01)
 ;;63323-0282-04
 ;;9002226.02101,"734,63323-0282-04 ",.02)
 ;;63323-0282-04
 ;;9002226.02101,"734,63323-0282-06 ",.01)
 ;;63323-0282-06
 ;;9002226.02101,"734,63323-0282-06 ",.02)
 ;;63323-0282-06
 ;;9002226.02101,"734,63323-0282-60 ",.01)
 ;;63323-0282-60
 ;;9002226.02101,"734,63323-0282-60 ",.02)
 ;;63323-0282-60
 ;;9002226.02101,"734,63323-0323-20 ",.01)
 ;;63323-0323-20
 ;;9002226.02101,"734,63323-0323-20 ",.02)
 ;;63323-0323-20
 ;;9002226.02101,"734,63323-0344-10 ",.01)
 ;;63323-0344-10
 ;;9002226.02101,"734,63323-0344-10 ",.02)
 ;;63323-0344-10