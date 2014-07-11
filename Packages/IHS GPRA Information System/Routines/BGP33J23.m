BGP33J23 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 23, 2013;
 ;;13.0;IHS CLINICAL REPORTING;**1**;NOV 20, 2012;Build 7
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"734,00093-4150-73 ",.01)
 ;;00093-4150-73
 ;;9002226.02101,"734,00093-4150-73 ",.02)
 ;;00093-4150-73
 ;;9002226.02101,"734,00093-4150-79 ",.01)
 ;;00093-4150-79
 ;;9002226.02101,"734,00093-4150-79 ",.02)
 ;;00093-4150-79
 ;;9002226.02101,"734,00093-4150-80 ",.01)
 ;;00093-4150-80
 ;;9002226.02101,"734,00093-4150-80 ",.02)
 ;;00093-4150-80
 ;;9002226.02101,"734,00093-4155-73 ",.01)
 ;;00093-4155-73
 ;;9002226.02101,"734,00093-4155-73 ",.02)
 ;;00093-4155-73
 ;;9002226.02101,"734,00093-4155-79 ",.01)
 ;;00093-4155-79
 ;;9002226.02101,"734,00093-4155-79 ",.02)
 ;;00093-4155-79
 ;;9002226.02101,"734,00093-4155-80 ",.01)
 ;;00093-4155-80
 ;;9002226.02101,"734,00093-4155-80 ",.02)
 ;;00093-4155-80
 ;;9002226.02101,"734,00093-4160-73 ",.01)
 ;;00093-4160-73
 ;;9002226.02101,"734,00093-4160-73 ",.02)
 ;;00093-4160-73
 ;;9002226.02101,"734,00093-4160-76 ",.01)
 ;;00093-4160-76
 ;;9002226.02101,"734,00093-4160-76 ",.02)
 ;;00093-4160-76
 ;;9002226.02101,"734,00093-4160-78 ",.01)
 ;;00093-4160-78
 ;;9002226.02101,"734,00093-4160-78 ",.02)
 ;;00093-4160-78
 ;;9002226.02101,"734,00093-4161-73 ",.01)
 ;;00093-4161-73
 ;;9002226.02101,"734,00093-4161-73 ",.02)
 ;;00093-4161-73
 ;;9002226.02101,"734,00093-4161-76 ",.01)
 ;;00093-4161-76
 ;;9002226.02101,"734,00093-4161-76 ",.02)
 ;;00093-4161-76
 ;;9002226.02101,"734,00093-4161-78 ",.01)
 ;;00093-4161-78
 ;;9002226.02101,"734,00093-4161-78 ",.02)
 ;;00093-4161-78
 ;;9002226.02101,"734,00093-4170-64 ",.01)
 ;;00093-4170-64
 ;;9002226.02101,"734,00093-4170-64 ",.02)
 ;;00093-4170-64
 ;;9002226.02101,"734,00093-4175-73 ",.01)
 ;;00093-4175-73
 ;;9002226.02101,"734,00093-4175-73 ",.02)
 ;;00093-4175-73
 ;;9002226.02101,"734,00093-4175-74 ",.01)
 ;;00093-4175-74
 ;;9002226.02101,"734,00093-4175-74 ",.02)
 ;;00093-4175-74
 ;;9002226.02101,"734,00093-4177-73 ",.01)
 ;;00093-4177-73
 ;;9002226.02101,"734,00093-4177-73 ",.02)
 ;;00093-4177-73
 ;;9002226.02101,"734,00093-4177-74 ",.01)
 ;;00093-4177-74
 ;;9002226.02101,"734,00093-4177-74 ",.02)
 ;;00093-4177-74
 ;;9002226.02101,"734,00093-5256-01 ",.01)
 ;;00093-5256-01
 ;;9002226.02101,"734,00093-5256-01 ",.02)
 ;;00093-5256-01
 ;;9002226.02101,"734,00093-5256-68 ",.01)
 ;;00093-5256-68
 ;;9002226.02101,"734,00093-5256-68 ",.02)
 ;;00093-5256-68
 ;;9002226.02101,"734,00093-5476-16 ",.01)
 ;;00093-5476-16
 ;;9002226.02101,"734,00093-5476-16 ",.02)
 ;;00093-5476-16
 ;;9002226.02101,"734,00093-7146-09 ",.01)
 ;;00093-7146-09
 ;;9002226.02101,"734,00093-7146-09 ",.02)
 ;;00093-7146-09
 ;;9002226.02101,"734,00093-7146-18 ",.01)
 ;;00093-7146-18
 ;;9002226.02101,"734,00093-7146-18 ",.02)
 ;;00093-7146-18
 ;;9002226.02101,"734,00093-7146-19 ",.01)
 ;;00093-7146-19
 ;;9002226.02101,"734,00093-7146-19 ",.02)
 ;;00093-7146-19
 ;;9002226.02101,"734,00093-7146-56 ",.01)
 ;;00093-7146-56
 ;;9002226.02101,"734,00093-7146-56 ",.02)
 ;;00093-7146-56
 ;;9002226.02101,"734,00093-7146-93 ",.01)
 ;;00093-7146-93
 ;;9002226.02101,"734,00093-7146-93 ",.02)
 ;;00093-7146-93
 ;;9002226.02101,"734,00093-7147-56 ",.01)
 ;;00093-7147-56
 ;;9002226.02101,"734,00093-7147-56 ",.02)
 ;;00093-7147-56
 ;;9002226.02101,"734,00093-7148-23 ",.01)
 ;;00093-7148-23
 ;;9002226.02101,"734,00093-7148-23 ",.02)
 ;;00093-7148-23
 ;;9002226.02101,"734,00093-7149-23 ",.01)
 ;;00093-7149-23
 ;;9002226.02101,"734,00093-7149-23 ",.02)
 ;;00093-7149-23
 ;;9002226.02101,"734,00093-7149-31 ",.01)
 ;;00093-7149-31
 ;;9002226.02101,"734,00093-7149-31 ",.02)
 ;;00093-7149-31
 ;;9002226.02101,"734,00093-7149-94 ",.01)
 ;;00093-7149-94
 ;;9002226.02101,"734,00093-7149-94 ",.02)
 ;;00093-7149-94
 ;;9002226.02101,"734,00093-7157-06 ",.01)
 ;;00093-7157-06
 ;;9002226.02101,"734,00093-7157-06 ",.02)
 ;;00093-7157-06
 ;;9002226.02101,"734,00093-7158-06 ",.01)
 ;;00093-7158-06
 ;;9002226.02101,"734,00093-7158-06 ",.02)
 ;;00093-7158-06
 ;;9002226.02101,"734,00093-7169-19 ",.01)
 ;;00093-7169-19
 ;;9002226.02101,"734,00093-7169-19 ",.02)
 ;;00093-7169-19
 ;;9002226.02101,"734,00093-7169-33 ",.01)
 ;;00093-7169-33
 ;;9002226.02101,"734,00093-7169-33 ",.02)
 ;;00093-7169-33
 ;;9002226.02101,"734,00093-7169-56 ",.01)
 ;;00093-7169-56
 ;;9002226.02101,"734,00093-7169-56 ",.02)
 ;;00093-7169-56
 ;;9002226.02101,"734,00093-7169-90 ",.01)
 ;;00093-7169-90
 ;;9002226.02101,"734,00093-7169-90 ",.02)
 ;;00093-7169-90
 ;;9002226.02101,"734,00093-7169-93 ",.01)
 ;;00093-7169-93
 ;;9002226.02101,"734,00093-7169-93 ",.02)
 ;;00093-7169-93
 ;;9002226.02101,"734,00093-7180-01 ",.01)
 ;;00093-7180-01
 ;;9002226.02101,"734,00093-7180-01 ",.02)
 ;;00093-7180-01
 ;;9002226.02101,"734,00093-7181-01 ",.01)
 ;;00093-7181-01
 ;;9002226.02101,"734,00093-7181-01 ",.02)
 ;;00093-7181-01
 ;;9002226.02101,"734,00093-7182-01 ",.01)
 ;;00093-7182-01
 ;;9002226.02101,"734,00093-7182-01 ",.02)
 ;;00093-7182-01
 ;;9002226.02101,"734,00093-7244-06 ",.01)
 ;;00093-7244-06
 ;;9002226.02101,"734,00093-7244-06 ",.02)
 ;;00093-7244-06
 ;;9002226.02101,"734,00093-7291-53 ",.01)
 ;;00093-7291-53
 ;;9002226.02101,"734,00093-7291-53 ",.02)
 ;;00093-7291-53
 ;;9002226.02101,"734,00093-7292-53 ",.01)
 ;;00093-7292-53
 ;;9002226.02101,"734,00093-7292-53 ",.02)
 ;;00093-7292-53
 ;;9002226.02101,"734,00093-7293-53 ",.01)
 ;;00093-7293-53
 ;;9002226.02101,"734,00093-7293-53 ",.02)
 ;;00093-7293-53
 ;;9002226.02101,"734,00093-7300-01 ",.01)
 ;;00093-7300-01
 ;;9002226.02101,"734,00093-7300-01 ",.02)
 ;;00093-7300-01
 ;;9002226.02101,"734,00093-8675-74 ",.01)
 ;;00093-8675-74
 ;;9002226.02101,"734,00093-8675-74 ",.02)
 ;;00093-8675-74
 ;;9002226.02101,"734,00093-8675-75 ",.01)
 ;;00093-8675-75
 ;;9002226.02101,"734,00093-8675-75 ",.02)
 ;;00093-8675-75
 ;;9002226.02101,"734,00093-8675-78 ",.01)
 ;;00093-8675-78
 ;;9002226.02101,"734,00093-8675-78 ",.02)
 ;;00093-8675-78
 ;;9002226.02101,"734,00115-1245-01 ",.01)
 ;;00115-1245-01
 ;;9002226.02101,"734,00115-1245-01 ",.02)
 ;;00115-1245-01
 ;;9002226.02101,"734,00115-1245-08 ",.01)
 ;;00115-1245-08
 ;;9002226.02101,"734,00115-1245-08 ",.02)
 ;;00115-1245-08
 ;;9002226.02101,"734,00115-1246-01 ",.01)
 ;;00115-1246-01
 ;;9002226.02101,"734,00115-1246-01 ",.02)
 ;;00115-1246-01
 ;;9002226.02101,"734,00115-1246-08 ",.01)
 ;;00115-1246-08
 ;;9002226.02101,"734,00115-1246-08 ",.02)
 ;;00115-1246-08
 ;;9002226.02101,"734,00115-1247-01 ",.01)
 ;;00115-1247-01
 ;;9002226.02101,"734,00115-1247-01 ",.02)
 ;;00115-1247-01
 ;;9002226.02101,"734,00115-1247-08 ",.01)
 ;;00115-1247-08
 ;;9002226.02101,"734,00115-1247-08 ",.02)
 ;;00115-1247-08
 ;;9002226.02101,"734,00115-1327-13 ",.01)
 ;;00115-1327-13
 ;;9002226.02101,"734,00115-1327-13 ",.02)
 ;;00115-1327-13
 ;;9002226.02101,"734,00115-7017-01 ",.01)
 ;;00115-7017-01
 ;;9002226.02101,"734,00115-7017-01 ",.02)
 ;;00115-7017-01
 ;;9002226.02101,"734,00115-7018-06 ",.01)
 ;;00115-7018-06
 ;;9002226.02101,"734,00115-7018-06 ",.02)
 ;;00115-7018-06
 ;;9002226.02101,"734,00115-7018-13 ",.01)
 ;;00115-7018-13
 ;;9002226.02101,"734,00115-7018-13 ",.02)
 ;;00115-7018-13
 ;;9002226.02101,"734,00115-7054-01 ",.01)
 ;;00115-7054-01
 ;;9002226.02101,"734,00115-7054-01 ",.02)
 ;;00115-7054-01
 ;;9002226.02101,"734,00121-4793-20 ",.01)
 ;;00121-4793-20
 ;;9002226.02101,"734,00121-4793-20 ",.02)
 ;;00121-4793-20
 ;;9002226.02101,"734,00143-2037-01 ",.01)
 ;;00143-2037-01
 ;;9002226.02101,"734,00143-2037-01 ",.02)
 ;;00143-2037-01
 ;;9002226.02101,"734,00143-2112-05 ",.01)
 ;;00143-2112-05
 ;;9002226.02101,"734,00143-2112-05 ",.02)
 ;;00143-2112-05
 ;;9002226.02101,"734,00143-2112-50 ",.01)
 ;;00143-2112-50
 ;;9002226.02101,"734,00143-2112-50 ",.02)
 ;;00143-2112-50
 ;;9002226.02101,"734,00143-3141-50 ",.01)
 ;;00143-3141-50
 ;;9002226.02101,"734,00143-3141-50 ",.02)
 ;;00143-3141-50
 ;;9002226.02101,"734,00143-3142-05 ",.01)
 ;;00143-3142-05
 ;;9002226.02101,"734,00143-3142-05 ",.02)
 ;;00143-3142-05
 ;;9002226.02101,"734,00143-3142-50 ",.01)
 ;;00143-3142-50
 ;;9002226.02101,"734,00143-3142-50 ",.02)
 ;;00143-3142-50
 ;;9002226.02101,"734,00143-9720-01 ",.01)
 ;;00143-9720-01
 ;;9002226.02101,"734,00143-9720-01 ",.02)
 ;;00143-9720-01
 ;;9002226.02101,"734,00143-9721-01 ",.01)
 ;;00143-9721-01
 ;;9002226.02101,"734,00143-9721-01 ",.02)
 ;;00143-9721-01
 ;;9002226.02101,"734,00143-9722-01 ",.01)
 ;;00143-9722-01
 ;;9002226.02101,"734,00143-9722-01 ",.02)
 ;;00143-9722-01
 ;;9002226.02101,"734,00143-9853-16 ",.01)
 ;;00143-9853-16
 ;;9002226.02101,"734,00143-9853-16 ",.02)
 ;;00143-9853-16
 ;;9002226.02101,"734,00143-9853-24 ",.01)
 ;;00143-9853-24
 ;;9002226.02101,"734,00143-9853-24 ",.02)
 ;;00143-9853-24
 ;;9002226.02101,"734,00143-9853-75 ",.01)
 ;;00143-9853-75
 ;;9002226.02101,"734,00143-9853-75 ",.02)
 ;;00143-9853-75
 ;;9002226.02101,"734,00143-9856-25 ",.01)
 ;;00143-9856-25
 ;;9002226.02101,"734,00143-9856-25 ",.02)
 ;;00143-9856-25
 ;;9002226.02101,"734,00143-9857-25 ",.01)
 ;;00143-9857-25
 ;;9002226.02101,"734,00143-9857-25 ",.02)
 ;;00143-9857-25
 ;;9002226.02101,"734,00143-9858-25 ",.01)
 ;;00143-9858-25
 ;;9002226.02101,"734,00143-9858-25 ",.02)
 ;;00143-9858-25
 ;;9002226.02101,"734,00143-9859-25 ",.01)
 ;;00143-9859-25
 ;;9002226.02101,"734,00143-9859-25 ",.02)
 ;;00143-9859-25
 ;;9002226.02101,"734,00143-9886-01 ",.01)
 ;;00143-9886-01
 ;;9002226.02101,"734,00143-9886-01 ",.02)
 ;;00143-9886-01
 ;;9002226.02101,"734,00143-9886-50 ",.01)
 ;;00143-9886-50
 ;;9002226.02101,"734,00143-9886-50 ",.02)
 ;;00143-9886-50
 ;;9002226.02101,"734,00143-9886-75 ",.01)
 ;;00143-9886-75
 ;;9002226.02101,"734,00143-9886-75 ",.02)
 ;;00143-9886-75
 ;;9002226.02101,"734,00143-9887-01 ",.01)
 ;;00143-9887-01
 ;;9002226.02101,"734,00143-9887-01 ",.02)
 ;;00143-9887-01
 ;;9002226.02101,"734,00143-9887-50 ",.01)
 ;;00143-9887-50
 ;;9002226.02101,"734,00143-9887-50 ",.02)
 ;;00143-9887-50
 ;;9002226.02101,"734,00143-9887-75 ",.01)
 ;;00143-9887-75
 ;;9002226.02101,"734,00143-9887-75 ",.02)
 ;;00143-9887-75
 ;;9002226.02101,"734,00143-9888-01 ",.01)
 ;;00143-9888-01
 ;;9002226.02101,"734,00143-9888-01 ",.02)
 ;;00143-9888-01
 ;;9002226.02101,"734,00143-9888-15 ",.01)
 ;;00143-9888-15
 ;;9002226.02101,"734,00143-9888-15 ",.02)
 ;;00143-9888-15
 ;;9002226.02101,"734,00143-9888-80 ",.01)
 ;;00143-9888-80
 ;;9002226.02101,"734,00143-9888-80 ",.02)
 ;;00143-9888-80
 ;;9002226.02101,"734,00143-9889-01 ",.01)
 ;;00143-9889-01
 ;;9002226.02101,"734,00143-9889-01 ",.02)
 ;;00143-9889-01
 ;;9002226.02101,"734,00143-9889-15 ",.01)
 ;;00143-9889-15
 ;;9002226.02101,"734,00143-9889-15 ",.02)
 ;;00143-9889-15
 ;;9002226.02101,"734,00143-9889-80 ",.01)
 ;;00143-9889-80
 ;;9002226.02101,"734,00143-9889-80 ",.02)
 ;;00143-9889-80
 ;;9002226.02101,"734,00143-9897-01 ",.01)
 ;;00143-9897-01
 ;;9002226.02101,"734,00143-9897-01 ",.02)
 ;;00143-9897-01
 ;;9002226.02101,"734,00143-9897-05 ",.01)
 ;;00143-9897-05
 ;;9002226.02101,"734,00143-9897-05 ",.02)
 ;;00143-9897-05
 ;;9002226.02101,"734,00143-9898-01 ",.01)
 ;;00143-9898-01
 ;;9002226.02101,"734,00143-9898-01 ",.02)
 ;;00143-9898-01
 ;;9002226.02101,"734,00143-9898-05 ",.01)
 ;;00143-9898-05
 ;;9002226.02101,"734,00143-9898-05 ",.02)
 ;;00143-9898-05
 ;;9002226.02101,"734,00143-9923-90 ",.01)
 ;;00143-9923-90
 ;;9002226.02101,"734,00143-9923-90 ",.02)
 ;;00143-9923-90
 ;;9002226.02101,"734,00143-9924-90 ",.01)
 ;;00143-9924-90
 ;;9002226.02101,"734,00143-9924-90 ",.02)
 ;;00143-9924-90
 ;;9002226.02101,"734,00143-9927-01 ",.01)
 ;;00143-9927-01
 ;;9002226.02101,"734,00143-9927-01 ",.02)
 ;;00143-9927-01
 ;;9002226.02101,"734,00143-9928-01 ",.01)
 ;;00143-9928-01
 ;;9002226.02101,"734,00143-9928-01 ",.02)
 ;;00143-9928-01
 ;;9002226.02101,"734,00143-9929-50 ",.01)
 ;;00143-9929-50
 ;;9002226.02101,"734,00143-9929-50 ",.02)
 ;;00143-9929-50
 ;;9002226.02101,"734,00143-9938-01 ",.01)
 ;;00143-9938-01
 ;;9002226.02101,"734,00143-9938-01 ",.02)
 ;;00143-9938-01
 ;;9002226.02101,"734,00143-9938-05 ",.01)
 ;;00143-9938-05
 ;;9002226.02101,"734,00143-9938-05 ",.02)
 ;;00143-9938-05
 ;;9002226.02101,"734,00143-9939-01 ",.01)
 ;;00143-9939-01
 ;;9002226.02101,"734,00143-9939-01 ",.02)
 ;;00143-9939-01
 ;;9002226.02101,"734,00143-9939-05 ",.01)
 ;;00143-9939-05
 ;;9002226.02101,"734,00143-9939-05 ",.02)
 ;;00143-9939-05
 ;;9002226.02101,"734,00143-9947-01 ",.01)
 ;;00143-9947-01
 ;;9002226.02101,"734,00143-9947-01 ",.02)
 ;;00143-9947-01
 ;;9002226.02101,"734,00143-9947-50 ",.01)
 ;;00143-9947-50
 ;;9002226.02101,"734,00143-9947-50 ",.02)
 ;;00143-9947-50
 ;;9002226.02101,"734,00143-9951-01 ",.01)
 ;;00143-9951-01
 ;;9002226.02101,"734,00143-9951-01 ",.02)
 ;;00143-9951-01
 ;;9002226.02101,"734,00143-9951-20 ",.01)
 ;;00143-9951-20
 ;;9002226.02101,"734,00143-9951-20 ",.02)
 ;;00143-9951-20
 ;;9002226.02101,"734,00143-9976-91 ",.01)
 ;;00143-9976-91
 ;;9002226.02101,"734,00143-9976-91 ",.02)
 ;;00143-9976-91
 ;;9002226.02101,"734,00143-9977-22 ",.01)
 ;;00143-9977-22
 ;;9002226.02101,"734,00143-9977-22 ",.02)
 ;;00143-9977-22
 ;;9002226.02101,"734,00143-9979-22 ",.01)
 ;;00143-9979-22
 ;;9002226.02101,"734,00143-9979-22 ",.02)
 ;;00143-9979-22
 ;;9002226.02101,"734,00143-9981-01 ",.01)
 ;;00143-9981-01
 ;;9002226.02101,"734,00143-9981-01 ",.02)
 ;;00143-9981-01
 ;;9002226.02101,"734,00143-9981-50 ",.01)
 ;;00143-9981-50
 ;;9002226.02101,"734,00143-9981-50 ",.02)
 ;;00143-9981-50
 ;;9002226.02101,"734,00143-9981-75 ",.01)
 ;;00143-9981-75
 ;;9002226.02101,"734,00143-9981-75 ",.02)
 ;;00143-9981-75