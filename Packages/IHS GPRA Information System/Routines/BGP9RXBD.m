BGP9RXBD ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"737,00641-1138-34 ",.02)
 ;;00641-1138-34
 ;;9002226.02101,"737,00641-1139-31 ",.01)
 ;;00641-1139-31
 ;;9002226.02101,"737,00641-1139-31 ",.02)
 ;;00641-1139-31
 ;;9002226.02101,"737,00641-2569-44 ",.01)
 ;;00641-2569-44
 ;;9002226.02101,"737,00641-2569-44 ",.02)
 ;;00641-2569-44
 ;;9002226.02101,"737,00686-0068-20 ",.01)
 ;;00686-0068-20
 ;;9002226.02101,"737,00686-0068-20 ",.02)
 ;;00686-0068-20
 ;;9002226.02101,"737,00686-0069-20 ",.01)
 ;;00686-0069-20
 ;;9002226.02101,"737,00686-0069-20 ",.02)
 ;;00686-0069-20
 ;;9002226.02101,"737,00686-0070-20 ",.01)
 ;;00686-0070-20
 ;;9002226.02101,"737,00686-0070-20 ",.02)
 ;;00686-0070-20
 ;;9002226.02101,"737,00703-1652-02 ",.01)
 ;;00703-1652-02
 ;;9002226.02101,"737,00703-1652-02 ",.02)
 ;;00703-1652-02
 ;;9002226.02101,"737,00703-1654-02 ",.01)
 ;;00703-1654-02
 ;;9002226.02101,"737,00703-1654-02 ",.02)
 ;;00703-1654-02
 ;;9002226.02101,"737,00781-1678-13 ",.01)
 ;;00781-1678-13
 ;;9002226.02101,"737,00781-1678-13 ",.02)
 ;;00781-1678-13
 ;;9002226.02101,"737,00781-1840-01 ",.01)
 ;;00781-1840-01
 ;;9002226.02101,"737,00781-1840-01 ",.02)
 ;;00781-1840-01
 ;;9002226.02101,"737,00781-1840-10 ",.01)
 ;;00781-1840-10
 ;;9002226.02101,"737,00781-1840-10 ",.02)
 ;;00781-1840-10
 ;;9002226.02101,"737,00781-1842-01 ",.01)
 ;;00781-1842-01
 ;;9002226.02101,"737,00781-1842-01 ",.02)
 ;;00781-1842-01
 ;;9002226.02101,"737,00781-1842-10 ",.01)
 ;;00781-1842-10
 ;;9002226.02101,"737,00781-1842-10 ",.02)
 ;;00781-1842-10
 ;;9002226.02101,"737,00839-1382-06 ",.01)
 ;;00839-1382-06
 ;;9002226.02101,"737,00839-1382-06 ",.02)
 ;;00839-1382-06
 ;;9002226.02101,"737,00839-1382-16 ",.01)
 ;;00839-1382-16
 ;;9002226.02101,"737,00839-1382-16 ",.02)
 ;;00839-1382-16
 ;;9002226.02101,"737,00839-6182-06 ",.01)
 ;;00839-6182-06
 ;;9002226.02101,"737,00839-6182-06 ",.02)
 ;;00839-6182-06
 ;;9002226.02101,"737,00839-6182-16 ",.01)
 ;;00839-6182-16
 ;;9002226.02101,"737,00839-6182-16 ",.02)
 ;;00839-6182-16
 ;;9002226.02101,"737,00839-6327-06 ",.01)
 ;;00839-6327-06
 ;;9002226.02101,"737,00839-6327-06 ",.02)
 ;;00839-6327-06
 ;;9002226.02101,"737,00839-6327-16 ",.01)
 ;;00839-6327-16
 ;;9002226.02101,"737,00839-6327-16 ",.02)
 ;;00839-6327-16
 ;;9002226.02101,"737,00839-6429-06 ",.01)
 ;;00839-6429-06
 ;;9002226.02101,"737,00839-6429-06 ",.02)
 ;;00839-6429-06
 ;;9002226.02101,"737,00839-6429-16 ",.01)
 ;;00839-6429-16
 ;;9002226.02101,"737,00839-6429-16 ",.02)
 ;;00839-6429-16
 ;;9002226.02101,"737,00839-6494-06 ",.01)
 ;;00839-6494-06
 ;;9002226.02101,"737,00839-6494-06 ",.02)
 ;;00839-6494-06
 ;;9002226.02101,"737,00839-6494-16 ",.01)
 ;;00839-6494-16
 ;;9002226.02101,"737,00839-6494-16 ",.02)
 ;;00839-6494-16
 ;;9002226.02101,"737,00839-7918-06 ",.01)
 ;;00839-7918-06
 ;;9002226.02101,"737,00839-7918-06 ",.02)
 ;;00839-7918-06
 ;;9002226.02101,"737,00839-7918-16 ",.01)
 ;;00839-7918-16
 ;;9002226.02101,"737,00839-7918-16 ",.02)
 ;;00839-7918-16
 ;;9002226.02101,"737,00839-7919-06 ",.01)
 ;;00839-7919-06
 ;;9002226.02101,"737,00839-7919-06 ",.02)
 ;;00839-7919-06
 ;;9002226.02101,"737,00839-7919-16 ",.01)
 ;;00839-7919-16
 ;;9002226.02101,"737,00839-7919-16 ",.02)
 ;;00839-7919-16
 ;;9002226.02101,"737,00839-7920-06 ",.01)
 ;;00839-7920-06
 ;;9002226.02101,"737,00839-7920-06 ",.02)
 ;;00839-7920-06
 ;;9002226.02101,"737,00839-7920-16 ",.01)
 ;;00839-7920-16
 ;;9002226.02101,"737,00839-7920-16 ",.02)
 ;;00839-7920-16
 ;;9002226.02101,"737,00904-0635-60 ",.01)
 ;;00904-0635-60
 ;;9002226.02101,"737,00904-0635-60 ",.02)
 ;;00904-0635-60
 ;;9002226.02101,"737,00904-0635-61 ",.01)
 ;;00904-0635-61
 ;;9002226.02101,"737,00904-0635-61 ",.02)
 ;;00904-0635-61
 ;;9002226.02101,"737,00904-0635-80 ",.01)
 ;;00904-0635-80
 ;;9002226.02101,"737,00904-0635-80 ",.02)
 ;;00904-0635-80
 ;;9002226.02101,"737,00904-0636-60 ",.01)
 ;;00904-0636-60
 ;;9002226.02101,"737,00904-0636-60 ",.02)
 ;;00904-0636-60
 ;;9002226.02101,"737,00904-0636-61 ",.01)
 ;;00904-0636-61
 ;;9002226.02101,"737,00904-0636-61 ",.02)
 ;;00904-0636-61
 ;;9002226.02101,"737,00904-0636-80 ",.01)
 ;;00904-0636-80
 ;;9002226.02101,"737,00904-0636-80 ",.02)
 ;;00904-0636-80
 ;;9002226.02101,"737,00904-1083-60 ",.01)
 ;;00904-1083-60
 ;;9002226.02101,"737,00904-1083-60 ",.02)
 ;;00904-1083-60
 ;;9002226.02101,"737,00904-1083-80 ",.01)
 ;;00904-1083-80
 ;;9002226.02101,"737,00904-1083-80 ",.02)
 ;;00904-1083-80
 ;;9002226.02101,"737,00904-1084-60 ",.01)
 ;;00904-1084-60
 ;;9002226.02101,"737,00904-1084-60 ",.02)
 ;;00904-1084-60
 ;;9002226.02101,"737,00904-1084-80 ",.01)
 ;;00904-1084-80
 ;;9002226.02101,"737,00904-1084-80 ",.02)
 ;;00904-1084-80
 ;;9002226.02101,"737,00904-1085-60 ",.01)
 ;;00904-1085-60
 ;;9002226.02101,"737,00904-1085-60 ",.02)
 ;;00904-1085-60
 ;;9002226.02101,"737,00904-1085-80 ",.01)
 ;;00904-1085-80
 ;;9002226.02101,"737,00904-1085-80 ",.02)
 ;;00904-1085-80
 ;;9002226.02101,"737,00904-1086-60 ",.01)
 ;;00904-1086-60
 ;;9002226.02101,"737,00904-1086-60 ",.02)
 ;;00904-1086-60
 ;;9002226.02101,"737,00904-1086-61 ",.01)
 ;;00904-1086-61
 ;;9002226.02101,"737,00904-1086-61 ",.02)
 ;;00904-1086-61
 ;;9002226.02101,"737,00904-1086-80 ",.01)
 ;;00904-1086-80