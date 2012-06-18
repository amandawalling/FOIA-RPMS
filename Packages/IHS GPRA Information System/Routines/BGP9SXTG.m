BGP9SXTG ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"720,00839-6027-16 ",.02)
 ;;00839-6027-16
 ;;9002226.02101,"720,00839-7518-06 ",.01)
 ;;00839-7518-06
 ;;9002226.02101,"720,00839-7518-06 ",.02)
 ;;00839-7518-06
 ;;9002226.02101,"720,00839-7518-12 ",.01)
 ;;00839-7518-12
 ;;9002226.02101,"720,00839-7518-12 ",.02)
 ;;00839-7518-12
 ;;9002226.02101,"720,00839-7519-06 ",.01)
 ;;00839-7519-06
 ;;9002226.02101,"720,00839-7519-06 ",.02)
 ;;00839-7519-06
 ;;9002226.02101,"720,00839-7519-12 ",.01)
 ;;00839-7519-12
 ;;9002226.02101,"720,00839-7519-12 ",.02)
 ;;00839-7519-12
 ;;9002226.02101,"720,00839-7931-06 ",.01)
 ;;00839-7931-06
 ;;9002226.02101,"720,00839-7931-06 ",.02)
 ;;00839-7931-06
 ;;9002226.02101,"720,00839-7931-16 ",.01)
 ;;00839-7931-16
 ;;9002226.02101,"720,00839-7931-16 ",.02)
 ;;00839-7931-16
 ;;9002226.02101,"720,00904-0761-60 ",.01)
 ;;00904-0761-60
 ;;9002226.02101,"720,00904-0761-60 ",.02)
 ;;00904-0761-60
 ;;9002226.02101,"720,00904-0761-80 ",.01)
 ;;00904-0761-80
 ;;9002226.02101,"720,00904-0761-80 ",.02)
 ;;00904-0761-80
 ;;9002226.02101,"720,00904-0762-60 ",.01)
 ;;00904-0762-60
 ;;9002226.02101,"720,00904-0762-60 ",.02)
 ;;00904-0762-60
 ;;9002226.02101,"720,00904-0762-80 ",.01)
 ;;00904-0762-80
 ;;9002226.02101,"720,00904-0762-80 ",.02)
 ;;00904-0762-80
 ;;9002226.02101,"720,00904-0763-60 ",.01)
 ;;00904-0763-60
 ;;9002226.02101,"720,00904-0763-60 ",.02)
 ;;00904-0763-60
 ;;9002226.02101,"720,00904-0763-80 ",.01)
 ;;00904-0763-80
 ;;9002226.02101,"720,00904-0763-80 ",.02)
 ;;00904-0763-80
 ;;9002226.02101,"720,00904-0808-60 ",.01)
 ;;00904-0808-60
 ;;9002226.02101,"720,00904-0808-60 ",.02)
 ;;00904-0808-60
 ;;9002226.02101,"720,00904-0809-60 ",.01)
 ;;00904-0809-60
 ;;9002226.02101,"720,00904-0809-60 ",.02)
 ;;00904-0809-60
 ;;9002226.02101,"720,00904-0809-80 ",.01)
 ;;00904-0809-80
 ;;9002226.02101,"720,00904-0809-80 ",.02)
 ;;00904-0809-80
 ;;9002226.02101,"720,00904-7721-40 ",.01)
 ;;00904-7721-40
 ;;9002226.02101,"720,00904-7721-40 ",.02)
 ;;00904-7721-40
 ;;9002226.02101,"720,00904-7721-60 ",.01)
 ;;00904-7721-60
 ;;9002226.02101,"720,00904-7721-60 ",.02)
 ;;00904-7721-60
 ;;9002226.02101,"720,00904-7722-40 ",.01)
 ;;00904-7722-40
 ;;9002226.02101,"720,00904-7722-40 ",.02)
 ;;00904-7722-40
 ;;9002226.02101,"720,00904-7722-60 ",.01)
 ;;00904-7722-60
 ;;9002226.02101,"720,00904-7722-60 ",.02)
 ;;00904-7722-60
 ;;9002226.02101,"720,00904-7865-60 ",.01)
 ;;00904-7865-60
 ;;9002226.02101,"720,00904-7865-60 ",.02)
 ;;00904-7865-60
 ;;9002226.02101,"720,00904-7865-80 ",.01)
 ;;00904-7865-80
 ;;9002226.02101,"720,00904-7865-80 ",.02)
 ;;00904-7865-80
 ;;9002226.02101,"720,12280-0130-00 ",.01)
 ;;12280-0130-00
 ;;9002226.02101,"720,12280-0130-00 ",.02)
 ;;12280-0130-00
 ;;9002226.02101,"720,12280-0131-00 ",.01)
 ;;12280-0131-00
 ;;9002226.02101,"720,12280-0131-00 ",.02)
 ;;12280-0131-00
 ;;9002226.02101,"720,12280-0204-00 ",.01)
 ;;12280-0204-00
 ;;9002226.02101,"720,12280-0204-00 ",.02)
 ;;12280-0204-00
 ;;9002226.02101,"720,49483-0021-01 ",.01)
 ;;49483-0021-01
 ;;9002226.02101,"720,49483-0021-01 ",.02)
 ;;49483-0021-01
 ;;9002226.02101,"720,49483-0021-10 ",.01)
 ;;49483-0021-10
 ;;9002226.02101,"720,49483-0021-10 ",.02)
 ;;49483-0021-10
 ;;9002226.02101,"720,49483-0022-01 ",.01)
 ;;49483-0022-01
 ;;9002226.02101,"720,49483-0022-01 ",.02)
 ;;49483-0022-01
 ;;9002226.02101,"720,49483-0022-10 ",.01)
 ;;49483-0022-10
 ;;9002226.02101,"720,49483-0022-10 ",.02)
 ;;49483-0022-10
 ;;9002226.02101,"720,49483-0023-01 ",.01)
 ;;49483-0023-01
 ;;9002226.02101,"720,49483-0023-01 ",.02)
 ;;49483-0023-01
 ;;9002226.02101,"720,49483-0023-10 ",.01)
 ;;49483-0023-10
 ;;9002226.02101,"720,49483-0023-10 ",.02)
 ;;49483-0023-10
 ;;9002226.02101,"720,49483-0038-01 ",.01)
 ;;49483-0038-01
 ;;9002226.02101,"720,49483-0038-01 ",.02)
 ;;49483-0038-01
 ;;9002226.02101,"720,49483-0038-10 ",.01)
 ;;49483-0038-10
 ;;9002226.02101,"720,49483-0038-10 ",.02)
 ;;49483-0038-10
 ;;9002226.02101,"720,51079-0584-20 ",.01)
 ;;51079-0584-20
 ;;9002226.02101,"720,51079-0584-20 ",.02)
 ;;51079-0584-20
 ;;9002226.02101,"720,51079-0585-20 ",.01)
 ;;51079-0585-20
 ;;9002226.02101,"720,51079-0585-20 ",.02)
 ;;51079-0585-20
 ;;9002226.02101,"720,51479-0029-06 ",.01)
 ;;51479-0029-06
 ;;9002226.02101,"720,51479-0029-06 ",.02)
 ;;51479-0029-06
 ;;9002226.02101,"720,51479-0029-47 ",.01)
 ;;51479-0029-47
 ;;9002226.02101,"720,51479-0029-47 ",.02)
 ;;51479-0029-47
 ;;9002226.02101,"720,52959-0143-00 ",.01)
 ;;52959-0143-00
 ;;9002226.02101,"720,52959-0143-00 ",.02)
 ;;52959-0143-00
 ;;9002226.02101,"720,52959-0146-00 ",.01)
 ;;52959-0146-00
 ;;9002226.02101,"720,52959-0146-00 ",.02)
 ;;52959-0146-00
 ;;9002226.02101,"720,52959-0404-14 ",.01)
 ;;52959-0404-14
 ;;9002226.02101,"720,52959-0404-14 ",.02)
 ;;52959-0404-14
 ;;9002226.02101,"720,52959-0405-14 ",.01)
 ;;52959-0405-14
 ;;9002226.02101,"720,52959-0405-14 ",.02)
 ;;52959-0405-14
 ;;9002226.02101,"720,52959-0405-20 ",.01)
 ;;52959-0405-20
 ;;9002226.02101,"720,52959-0405-20 ",.02)
 ;;52959-0405-20
 ;;9002226.02101,"720,52959-0405-21 ",.01)
 ;;52959-0405-21
 ;;9002226.02101,"720,52959-0405-21 ",.02)
 ;;52959-0405-21
 ;;9002226.02101,"720,52959-0406-30 ",.01)
 ;;52959-0406-30