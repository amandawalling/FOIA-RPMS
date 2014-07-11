BGP33P8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 23, 2013;
 ;;13.0;IHS CLINICAL REPORTING;**1**;NOV 20, 2012;Build 7
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"802,54868-5297-00 ",.02)
 ;;54868-5297-00
 ;;9002226.02101,"802,54868-5323-00 ",.01)
 ;;54868-5323-00
 ;;9002226.02101,"802,54868-5323-00 ",.02)
 ;;54868-5323-00
 ;;9002226.02101,"802,54868-5418-00 ",.01)
 ;;54868-5418-00
 ;;9002226.02101,"802,54868-5418-00 ",.02)
 ;;54868-5418-00
 ;;9002226.02101,"802,54868-5465-00 ",.01)
 ;;54868-5465-00
 ;;9002226.02101,"802,54868-5465-00 ",.02)
 ;;54868-5465-00
 ;;9002226.02101,"802,54868-5466-00 ",.01)
 ;;54868-5466-00
 ;;9002226.02101,"802,54868-5466-00 ",.02)
 ;;54868-5466-00
 ;;9002226.02101,"802,54868-5466-01 ",.01)
 ;;54868-5466-01
 ;;9002226.02101,"802,54868-5466-01 ",.02)
 ;;54868-5466-01
 ;;9002226.02101,"802,54868-5489-00 ",.01)
 ;;54868-5489-00
 ;;9002226.02101,"802,54868-5489-00 ",.02)
 ;;54868-5489-00
 ;;9002226.02101,"802,54868-5591-00 ",.01)
 ;;54868-5591-00
 ;;9002226.02101,"802,54868-5591-00 ",.02)
 ;;54868-5591-00
 ;;9002226.02101,"802,54868-5607-00 ",.01)
 ;;54868-5607-00
 ;;9002226.02101,"802,54868-5607-00 ",.02)
 ;;54868-5607-00
 ;;9002226.02101,"802,54868-5705-00 ",.01)
 ;;54868-5705-00
 ;;9002226.02101,"802,54868-5705-00 ",.02)
 ;;54868-5705-00
 ;;9002226.02101,"802,54868-5780-00 ",.01)
 ;;54868-5780-00
 ;;9002226.02101,"802,54868-5780-00 ",.02)
 ;;54868-5780-00
 ;;9002226.02101,"802,54868-5804-00 ",.01)
 ;;54868-5804-00
 ;;9002226.02101,"802,54868-5804-00 ",.02)
 ;;54868-5804-00
 ;;9002226.02101,"802,54868-5977-00 ",.01)
 ;;54868-5977-00
 ;;9002226.02101,"802,54868-5977-00 ",.02)
 ;;54868-5977-00
 ;;9002226.02101,"802,54868-5983-00 ",.01)
 ;;54868-5983-00
 ;;9002226.02101,"802,54868-5983-00 ",.02)
 ;;54868-5983-00
 ;;9002226.02101,"802,54868-5983-01 ",.01)
 ;;54868-5983-01
 ;;9002226.02101,"802,54868-5983-01 ",.02)
 ;;54868-5983-01
 ;;9002226.02101,"802,54868-5996-00 ",.01)
 ;;54868-5996-00
 ;;9002226.02101,"802,54868-5996-00 ",.02)
 ;;54868-5996-00
 ;;9002226.02101,"802,54868-5997-00 ",.01)
 ;;54868-5997-00
 ;;9002226.02101,"802,54868-5997-00 ",.02)
 ;;54868-5997-00
 ;;9002226.02101,"802,54868-6036-00 ",.01)
 ;;54868-6036-00
 ;;9002226.02101,"802,54868-6036-00 ",.02)
 ;;54868-6036-00
 ;;9002226.02101,"802,54868-6123-00 ",.01)
 ;;54868-6123-00
 ;;9002226.02101,"802,54868-6123-00 ",.02)
 ;;54868-6123-00
 ;;9002226.02101,"802,55045-3401-08 ",.01)
 ;;55045-3401-08
 ;;9002226.02101,"802,55045-3401-08 ",.02)
 ;;55045-3401-08
 ;;9002226.02101,"802,55045-3409-09 ",.01)
 ;;55045-3409-09
 ;;9002226.02101,"802,55045-3409-09 ",.02)
 ;;55045-3409-09
 ;;9002226.02101,"802,55289-0238-30 ",.01)
 ;;55289-0238-30
 ;;9002226.02101,"802,55289-0238-30 ",.02)
 ;;55289-0238-30
 ;;9002226.02101,"802,55289-0436-30 ",.01)
 ;;55289-0436-30
 ;;9002226.02101,"802,55289-0436-30 ",.02)
 ;;55289-0436-30
 ;;9002226.02101,"802,55289-0443-30 ",.01)
 ;;55289-0443-30
 ;;9002226.02101,"802,55289-0443-30 ",.02)
 ;;55289-0443-30
 ;;9002226.02101,"802,55289-0522-30 ",.01)
 ;;55289-0522-30
 ;;9002226.02101,"802,55289-0522-30 ",.02)
 ;;55289-0522-30
 ;;9002226.02101,"802,55289-0815-30 ",.01)
 ;;55289-0815-30
 ;;9002226.02101,"802,55289-0815-30 ",.02)
 ;;55289-0815-30
 ;;9002226.02101,"802,55289-0817-30 ",.01)
 ;;55289-0817-30
 ;;9002226.02101,"802,55289-0817-30 ",.02)
 ;;55289-0817-30
 ;;9002226.02101,"802,55289-0820-30 ",.01)
 ;;55289-0820-30
 ;;9002226.02101,"802,55289-0820-30 ",.02)
 ;;55289-0820-30
 ;;9002226.02101,"802,55289-0825-30 ",.01)
 ;;55289-0825-30
 ;;9002226.02101,"802,55289-0825-30 ",.02)
 ;;55289-0825-30
 ;;9002226.02101,"802,55289-0838-30 ",.01)
 ;;55289-0838-30
 ;;9002226.02101,"802,55289-0838-30 ",.02)
 ;;55289-0838-30
 ;;9002226.02101,"802,55289-0876-30 ",.01)
 ;;55289-0876-30
 ;;9002226.02101,"802,55289-0876-30 ",.02)
 ;;55289-0876-30
 ;;9002226.02101,"802,55887-0102-30 ",.01)
 ;;55887-0102-30
 ;;9002226.02101,"802,55887-0102-30 ",.02)
 ;;55887-0102-30
 ;;9002226.02101,"802,55887-0103-30 ",.01)
 ;;55887-0103-30
 ;;9002226.02101,"802,55887-0103-30 ",.02)
 ;;55887-0103-30
 ;;9002226.02101,"802,55887-0105-30 ",.01)
 ;;55887-0105-30
 ;;9002226.02101,"802,55887-0105-30 ",.02)
 ;;55887-0105-30
 ;;9002226.02101,"802,55887-0307-30 ",.01)
 ;;55887-0307-30
 ;;9002226.02101,"802,55887-0307-30 ",.02)
 ;;55887-0307-30
 ;;9002226.02101,"802,55887-0432-30 ",.01)
 ;;55887-0432-30
 ;;9002226.02101,"802,55887-0432-30 ",.02)
 ;;55887-0432-30
 ;;9002226.02101,"802,55887-0432-60 ",.01)
 ;;55887-0432-60
 ;;9002226.02101,"802,55887-0432-60 ",.02)
 ;;55887-0432-60
 ;;9002226.02101,"802,55887-0432-90 ",.01)
 ;;55887-0432-90
 ;;9002226.02101,"802,55887-0432-90 ",.02)
 ;;55887-0432-90
 ;;9002226.02101,"802,58016-0053-00 ",.01)
 ;;58016-0053-00
 ;;9002226.02101,"802,58016-0053-00 ",.02)
 ;;58016-0053-00
 ;;9002226.02101,"802,58016-0053-30 ",.01)
 ;;58016-0053-30
 ;;9002226.02101,"802,58016-0053-30 ",.02)
 ;;58016-0053-30
 ;;9002226.02101,"802,58016-0053-60 ",.01)
 ;;58016-0053-60
 ;;9002226.02101,"802,58016-0053-60 ",.02)
 ;;58016-0053-60
 ;;9002226.02101,"802,58016-0053-90 ",.01)
 ;;58016-0053-90
 ;;9002226.02101,"802,58016-0053-90 ",.02)
 ;;58016-0053-90
 ;;9002226.02101,"802,58016-0066-00 ",.01)
 ;;58016-0066-00
 ;;9002226.02101,"802,58016-0066-00 ",.02)
 ;;58016-0066-00
 ;;9002226.02101,"802,58016-0066-30 ",.01)
 ;;58016-0066-30
 ;;9002226.02101,"802,58016-0066-30 ",.02)
 ;;58016-0066-30
 ;;9002226.02101,"802,58016-0066-60 ",.01)
 ;;58016-0066-60
 ;;9002226.02101,"802,58016-0066-60 ",.02)
 ;;58016-0066-60
 ;;9002226.02101,"802,58016-0066-90 ",.01)
 ;;58016-0066-90
 ;;9002226.02101,"802,58016-0066-90 ",.02)
 ;;58016-0066-90
 ;;9002226.02101,"802,58016-4631-01 ",.01)
 ;;58016-4631-01
 ;;9002226.02101,"802,58016-4631-01 ",.02)
 ;;58016-4631-01
 ;;9002226.02101,"802,58864-0605-30 ",.01)
 ;;58864-0605-30
 ;;9002226.02101,"802,58864-0605-30 ",.02)
 ;;58864-0605-30
 ;;9002226.02101,"802,58864-0659-30 ",.01)
 ;;58864-0659-30
 ;;9002226.02101,"802,58864-0659-30 ",.02)
 ;;58864-0659-30
 ;;9002226.02101,"802,58864-0662-30 ",.01)
 ;;58864-0662-30
 ;;9002226.02101,"802,58864-0662-30 ",.02)
 ;;58864-0662-30
 ;;9002226.02101,"802,58864-0681-30 ",.01)
 ;;58864-0681-30
 ;;9002226.02101,"802,58864-0681-30 ",.02)
 ;;58864-0681-30
 ;;9002226.02101,"802,58864-0726-15 ",.01)
 ;;58864-0726-15
 ;;9002226.02101,"802,58864-0726-15 ",.02)
 ;;58864-0726-15
 ;;9002226.02101,"802,58864-0726-30 ",.01)
 ;;58864-0726-30
 ;;9002226.02101,"802,58864-0726-30 ",.02)
 ;;58864-0726-30
 ;;9002226.02101,"802,58864-0771-15 ",.01)
 ;;58864-0771-15
 ;;9002226.02101,"802,58864-0771-15 ",.02)
 ;;58864-0771-15
 ;;9002226.02101,"802,58864-0807-30 ",.01)
 ;;58864-0807-30
 ;;9002226.02101,"802,58864-0807-30 ",.02)
 ;;58864-0807-30
 ;;9002226.02101,"802,59762-0011-01 ",.01)
 ;;59762-0011-01
 ;;9002226.02101,"802,59762-0011-01 ",.02)
 ;;59762-0011-01
 ;;9002226.02101,"802,59762-0011-02 ",.01)
 ;;59762-0011-02
 ;;9002226.02101,"802,59762-0011-02 ",.02)
 ;;59762-0011-02
 ;;9002226.02101,"802,59762-0012-01 ",.01)
 ;;59762-0012-01
 ;;9002226.02101,"802,59762-0012-01 ",.02)
 ;;59762-0012-01
 ;;9002226.02101,"802,59762-0012-02 ",.01)
 ;;59762-0012-02
 ;;9002226.02101,"802,59762-0012-02 ",.02)
 ;;59762-0012-02
 ;;9002226.02101,"802,59762-0015-01 ",.01)
 ;;59762-0015-01
 ;;9002226.02101,"802,59762-0015-01 ",.02)
 ;;59762-0015-01
 ;;9002226.02101,"802,59762-0015-02 ",.01)
 ;;59762-0015-02
 ;;9002226.02101,"802,59762-0015-02 ",.02)
 ;;59762-0015-02
 ;;9002226.02101,"802,59762-0070-01 ",.01)
 ;;59762-0070-01
 ;;9002226.02101,"802,59762-0070-01 ",.02)
 ;;59762-0070-01
 ;;9002226.02101,"802,59762-0071-01 ",.01)
 ;;59762-0071-01
 ;;9002226.02101,"802,59762-0071-01 ",.02)
 ;;59762-0071-01
 ;;9002226.02101,"802,59762-0071-02 ",.01)
 ;;59762-0071-02
 ;;9002226.02101,"802,59762-0071-02 ",.02)
 ;;59762-0071-02
 ;;9002226.02101,"802,59762-0072-01 ",.01)
 ;;59762-0072-01
 ;;9002226.02101,"802,59762-0072-01 ",.02)
 ;;59762-0072-01
 ;;9002226.02101,"802,59762-0072-02 ",.01)
 ;;59762-0072-02
 ;;9002226.02101,"802,59762-0072-02 ",.02)
 ;;59762-0072-02
 ;;9002226.02101,"802,60505-2915-03 ",.01)
 ;;60505-2915-03
 ;;9002226.02101,"802,60505-2915-03 ",.02)
 ;;60505-2915-03
 ;;9002226.02101,"802,60505-2915-09 ",.01)
 ;;60505-2915-09
 ;;9002226.02101,"802,60505-2915-09 ",.02)
 ;;60505-2915-09
 ;;9002226.02101,"802,60505-2916-03 ",.01)
 ;;60505-2916-03
 ;;9002226.02101,"802,60505-2916-03 ",.02)
 ;;60505-2916-03
 ;;9002226.02101,"802,60505-2916-09 ",.01)
 ;;60505-2916-09
 ;;9002226.02101,"802,60505-2916-09 ",.02)
 ;;60505-2916-09
 ;;9002226.02101,"802,60505-2917-03 ",.01)
 ;;60505-2917-03
 ;;9002226.02101,"802,60505-2917-03 ",.02)
 ;;60505-2917-03
 ;;9002226.02101,"802,60505-2917-09 ",.01)
 ;;60505-2917-09
 ;;9002226.02101,"802,60505-2917-09 ",.02)
 ;;60505-2917-09
 ;;9002226.02101,"802,60505-3160-09 ",.01)
 ;;60505-3160-09
 ;;9002226.02101,"802,60505-3160-09 ",.02)
 ;;60505-3160-09
 ;;9002226.02101,"802,60505-3161-03 ",.01)
 ;;60505-3161-03
 ;;9002226.02101,"802,60505-3161-03 ",.02)
 ;;60505-3161-03
 ;;9002226.02101,"802,60505-3161-09 ",.01)
 ;;60505-3161-09
 ;;9002226.02101,"802,60505-3161-09 ",.02)
 ;;60505-3161-09
 ;;9002226.02101,"802,60505-3162-03 ",.01)
 ;;60505-3162-03
 ;;9002226.02101,"802,60505-3162-03 ",.02)
 ;;60505-3162-03
 ;;9002226.02101,"802,60505-3162-09 ",.01)
 ;;60505-3162-09
 ;;9002226.02101,"802,60505-3162-09 ",.02)
 ;;60505-3162-09
 ;;9002226.02101,"802,60505-3547-03 ",.01)
 ;;60505-3547-03
 ;;9002226.02101,"802,60505-3547-03 ",.02)
 ;;60505-3547-03
 ;;9002226.02101,"802,60505-3547-09 ",.01)
 ;;60505-3547-09
 ;;9002226.02101,"802,60505-3547-09 ",.02)
 ;;60505-3547-09
 ;;9002226.02101,"802,60505-3548-03 ",.01)
 ;;60505-3548-03
 ;;9002226.02101,"802,60505-3548-03 ",.02)
 ;;60505-3548-03
 ;;9002226.02101,"802,60505-3548-05 ",.01)
 ;;60505-3548-05
 ;;9002226.02101,"802,60505-3548-05 ",.02)
 ;;60505-3548-05
 ;;9002226.02101,"802,60505-3548-09 ",.01)
 ;;60505-3548-09
 ;;9002226.02101,"802,60505-3548-09 ",.02)
 ;;60505-3548-09
 ;;9002226.02101,"802,60505-3549-03 ",.01)
 ;;60505-3549-03
 ;;9002226.02101,"802,60505-3549-03 ",.02)
 ;;60505-3549-03
 ;;9002226.02101,"802,60505-3549-05 ",.01)
 ;;60505-3549-05
 ;;9002226.02101,"802,60505-3549-05 ",.02)
 ;;60505-3549-05
 ;;9002226.02101,"802,60505-3549-09 ",.01)
 ;;60505-3549-09
 ;;9002226.02101,"802,60505-3549-09 ",.02)
 ;;60505-3549-09
 ;;9002226.02101,"802,60505-3603-03 ",.01)
 ;;60505-3603-03
 ;;9002226.02101,"802,60505-3603-03 ",.02)
 ;;60505-3603-03
 ;;9002226.02101,"802,60505-3603-09 ",.01)
 ;;60505-3603-09
 ;;9002226.02101,"802,60505-3603-09 ",.02)
 ;;60505-3603-09
 ;;9002226.02101,"802,60505-3604-03 ",.01)
 ;;60505-3604-03
 ;;9002226.02101,"802,60505-3604-03 ",.02)
 ;;60505-3604-03
 ;;9002226.02101,"802,60505-3604-09 ",.01)
 ;;60505-3604-09
 ;;9002226.02101,"802,60505-3604-09 ",.02)
 ;;60505-3604-09
 ;;9002226.02101,"802,60598-0080-01 ",.01)
 ;;60598-0080-01
 ;;9002226.02101,"802,60598-0080-01 ",.02)
 ;;60598-0080-01
 ;;9002226.02101,"802,60598-0081-01 ",.01)
 ;;60598-0081-01
 ;;9002226.02101,"802,60598-0081-01 ",.02)
 ;;60598-0081-01
 ;;9002226.02101,"802,60598-0100-01 ",.01)
 ;;60598-0100-01
 ;;9002226.02101,"802,60598-0100-01 ",.02)
 ;;60598-0100-01
 ;;9002226.02101,"802,60598-0101-01 ",.01)
 ;;60598-0101-01
 ;;9002226.02101,"802,60598-0101-01 ",.02)
 ;;60598-0101-01
 ;;9002226.02101,"802,63629-1337-01 ",.01)
 ;;63629-1337-01
 ;;9002226.02101,"802,63629-1337-01 ",.02)
 ;;63629-1337-01
 ;;9002226.02101,"802,63629-2912-01 ",.01)
 ;;63629-2912-01
 ;;9002226.02101,"802,63629-2912-01 ",.02)
 ;;63629-2912-01
 ;;9002226.02101,"802,63629-3183-01 ",.01)
 ;;63629-3183-01
 ;;9002226.02101,"802,63629-3183-01 ",.02)
 ;;63629-3183-01
 ;;9002226.02101,"802,63739-0513-10 ",.01)
 ;;63739-0513-10
 ;;9002226.02101,"802,63739-0513-10 ",.02)
 ;;63739-0513-10
 ;;9002226.02101,"802,63739-0515-10 ",.01)
 ;;63739-0515-10
 ;;9002226.02101,"802,63739-0515-10 ",.02)
 ;;63739-0515-10
 ;;9002226.02101,"802,63739-0527-10 ",.01)
 ;;63739-0527-10
 ;;9002226.02101,"802,63739-0527-10 ",.02)
 ;;63739-0527-10
 ;;9002226.02101,"802,63739-0528-10 ",.01)
 ;;63739-0528-10
 ;;9002226.02101,"802,63739-0528-10 ",.02)
 ;;63739-0528-10
 ;;9002226.02101,"802,63739-0529-10 ",.01)
 ;;63739-0529-10
 ;;9002226.02101,"802,63739-0529-10 ",.02)
 ;;63739-0529-10
 ;;9002226.02101,"802,63874-0637-01 ",.01)
 ;;63874-0637-01
 ;;9002226.02101,"802,63874-0637-01 ",.02)
 ;;63874-0637-01
 ;;9002226.02101,"802,63874-0637-10 ",.01)
 ;;63874-0637-10
 ;;9002226.02101,"802,63874-0637-10 ",.02)
 ;;63874-0637-10
 ;;9002226.02101,"802,63874-0637-20 ",.01)
 ;;63874-0637-20
 ;;9002226.02101,"802,63874-0637-20 ",.02)
 ;;63874-0637-20
 ;;9002226.02101,"802,63874-0637-30 ",.01)
 ;;63874-0637-30
 ;;9002226.02101,"802,63874-0637-30 ",.02)
 ;;63874-0637-30
 ;;9002226.02101,"802,63874-0637-90 ",.01)
 ;;63874-0637-90
 ;;9002226.02101,"802,63874-0637-90 ",.02)
 ;;63874-0637-90
 ;;9002226.02101,"802,63874-0647-10 ",.01)
 ;;63874-0647-10
 ;;9002226.02101,"802,63874-0647-10 ",.02)
 ;;63874-0647-10
 ;;9002226.02101,"802,63874-0647-14 ",.01)
 ;;63874-0647-14
 ;;9002226.02101,"802,63874-0647-14 ",.02)
 ;;63874-0647-14
 ;;9002226.02101,"802,63874-0647-30 ",.01)
 ;;63874-0647-30
 ;;9002226.02101,"802,63874-0647-30 ",.02)
 ;;63874-0647-30
 ;;9002226.02101,"802,64455-0130-01 ",.01)
 ;;64455-0130-01
 ;;9002226.02101,"802,64455-0130-01 ",.02)
 ;;64455-0130-01
 ;;9002226.02101,"802,64455-0131-01 ",.01)
 ;;64455-0131-01
 ;;9002226.02101,"802,64455-0131-01 ",.02)
 ;;64455-0131-01
 ;;9002226.02101,"802,64455-0132-01 ",.01)
 ;;64455-0132-01