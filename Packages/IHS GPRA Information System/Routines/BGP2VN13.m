BGP2VN13 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 08, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"800,50580-0843-13 ",.02)
 ;;50580-0843-13
 ;;9002226.02101,"800,50580-0843-24 ",.01)
 ;;50580-0843-24
 ;;9002226.02101,"800,50580-0843-24 ",.02)
 ;;50580-0843-24
 ;;9002226.02101,"800,50580-0843-25 ",.01)
 ;;50580-0843-25
 ;;9002226.02101,"800,50580-0843-25 ",.02)
 ;;50580-0843-25
 ;;9002226.02101,"800,50580-0843-48 ",.01)
 ;;50580-0843-48
 ;;9002226.02101,"800,50580-0843-48 ",.02)
 ;;50580-0843-48
 ;;9002226.02101,"800,50580-0843-72 ",.01)
 ;;50580-0843-72
 ;;9002226.02101,"800,50580-0843-72 ",.02)
 ;;50580-0843-72
 ;;9002226.02101,"800,50991-0607-16 ",.01)
 ;;50991-0607-16
 ;;9002226.02101,"800,50991-0607-16 ",.02)
 ;;50991-0607-16
 ;;9002226.02101,"800,51079-0066-01 ",.01)
 ;;51079-0066-01
 ;;9002226.02101,"800,51079-0066-01 ",.02)
 ;;51079-0066-01
 ;;9002226.02101,"800,51079-0066-19 ",.01)
 ;;51079-0066-19
 ;;9002226.02101,"800,51079-0066-19 ",.02)
 ;;51079-0066-19
 ;;9002226.02101,"800,51079-0066-20 ",.01)
 ;;51079-0066-20
 ;;9002226.02101,"800,51079-0066-20 ",.02)
 ;;51079-0066-20
 ;;9002226.02101,"800,51079-0077-20 ",.01)
 ;;51079-0077-20
 ;;9002226.02101,"800,51079-0077-20 ",.02)
 ;;51079-0077-20
 ;;9002226.02101,"800,51079-0078-01 ",.01)
 ;;51079-0078-01
 ;;9002226.02101,"800,51079-0078-01 ",.02)
 ;;51079-0078-01
 ;;9002226.02101,"800,51079-0078-20 ",.01)
 ;;51079-0078-20
 ;;9002226.02101,"800,51079-0078-20 ",.02)
 ;;51079-0078-20
 ;;9002226.02101,"800,51079-0413-01 ",.01)
 ;;51079-0413-01
 ;;9002226.02101,"800,51079-0413-01 ",.02)
 ;;51079-0413-01
 ;;9002226.02101,"800,51079-0413-20 ",.01)
 ;;51079-0413-20
 ;;9002226.02101,"800,51079-0413-20 ",.02)
 ;;51079-0413-20
 ;;9002226.02101,"800,51079-0530-01 ",.01)
 ;;51079-0530-01
 ;;9002226.02101,"800,51079-0530-01 ",.02)
 ;;51079-0530-01
 ;;9002226.02101,"800,51079-0530-20 ",.01)
 ;;51079-0530-20
 ;;9002226.02101,"800,51079-0530-20 ",.02)
 ;;51079-0530-20
 ;;9002226.02101,"800,51079-0531-01 ",.01)
 ;;51079-0531-01
 ;;9002226.02101,"800,51079-0531-01 ",.02)
 ;;51079-0531-01
 ;;9002226.02101,"800,51079-0531-20 ",.01)
 ;;51079-0531-20
 ;;9002226.02101,"800,51079-0531-20 ",.02)
 ;;51079-0531-20
 ;;9002226.02101,"800,51079-0532-01 ",.01)
 ;;51079-0532-01
 ;;9002226.02101,"800,51079-0532-01 ",.02)
 ;;51079-0532-01
 ;;9002226.02101,"800,51079-0532-20 ",.01)
 ;;51079-0532-20
 ;;9002226.02101,"800,51079-0532-20 ",.02)
 ;;51079-0532-20
 ;;9002226.02101,"800,51079-0796-01 ",.01)
 ;;51079-0796-01
 ;;9002226.02101,"800,51079-0796-01 ",.02)
 ;;51079-0796-01
 ;;9002226.02101,"800,51079-0796-20 ",.01)
 ;;51079-0796-20
 ;;9002226.02101,"800,51079-0796-20 ",.02)
 ;;51079-0796-20
 ;;9002226.02101,"800,51079-0806-01 ",.01)
 ;;51079-0806-01
 ;;9002226.02101,"800,51079-0806-01 ",.02)
 ;;51079-0806-01
 ;;9002226.02101,"800,51079-0806-20 ",.01)
 ;;51079-0806-20
 ;;9002226.02101,"800,51079-0806-20 ",.02)
 ;;51079-0806-20
 ;;9002226.02101,"800,51079-0816-01 ",.01)
 ;;51079-0816-01
 ;;9002226.02101,"800,51079-0816-01 ",.02)
 ;;51079-0816-01
 ;;9002226.02101,"800,51079-0816-20 ",.01)
 ;;51079-0816-20
 ;;9002226.02101,"800,51079-0816-20 ",.02)
 ;;51079-0816-20
 ;;9002226.02101,"800,51079-0895-01 ",.01)
 ;;51079-0895-01
 ;;9002226.02101,"800,51079-0895-01 ",.02)
 ;;51079-0895-01
 ;;9002226.02101,"800,51079-0895-20 ",.01)
 ;;51079-0895-20
 ;;9002226.02101,"800,51079-0895-20 ",.02)
 ;;51079-0895-20
 ;;9002226.02101,"800,51079-0967-01 ",.01)
 ;;51079-0967-01
 ;;9002226.02101,"800,51079-0967-01 ",.02)
 ;;51079-0967-01
 ;;9002226.02101,"800,51079-0967-19 ",.01)
 ;;51079-0967-19
 ;;9002226.02101,"800,51079-0967-19 ",.02)
 ;;51079-0967-19
 ;;9002226.02101,"800,51079-0967-20 ",.01)
 ;;51079-0967-20
 ;;9002226.02101,"800,51079-0967-20 ",.02)
 ;;51079-0967-20
 ;;9002226.02101,"800,51641-0030-46 ",.01)
 ;;51641-0030-46
 ;;9002226.02101,"800,51641-0030-46 ",.02)
 ;;51641-0030-46
 ;;9002226.02101,"800,51641-0030-64 ",.01)
 ;;51641-0030-64
 ;;9002226.02101,"800,51641-0030-64 ",.02)
 ;;51641-0030-64
 ;;9002226.02101,"800,51641-0030-76 ",.01)
 ;;51641-0030-76
 ;;9002226.02101,"800,51641-0030-76 ",.02)
 ;;51641-0030-76
 ;;9002226.02101,"800,51641-0030-94 ",.01)
 ;;51641-0030-94
 ;;9002226.02101,"800,51641-0030-94 ",.02)
 ;;51641-0030-94
 ;;9002226.02101,"800,51645-0709-05 ",.01)
 ;;51645-0709-05
 ;;9002226.02101,"800,51645-0709-05 ",.02)
 ;;51645-0709-05
 ;;9002226.02101,"800,51655-0078-54 ",.01)
 ;;51655-0078-54
 ;;9002226.02101,"800,51655-0078-54 ",.02)
 ;;51655-0078-54
 ;;9002226.02101,"800,51655-0079-80 ",.01)
 ;;51655-0079-80
 ;;9002226.02101,"800,51655-0079-80 ",.02)
 ;;51655-0079-80
 ;;9002226.02101,"800,51655-0084-53 ",.01)
 ;;51655-0084-53
 ;;9002226.02101,"800,51655-0084-53 ",.02)
 ;;51655-0084-53
 ;;9002226.02101,"800,51655-0113-24 ",.01)
 ;;51655-0113-24
 ;;9002226.02101,"800,51655-0113-24 ",.02)
 ;;51655-0113-24
 ;;9002226.02101,"800,51655-0113-54 ",.01)
 ;;51655-0113-54
 ;;9002226.02101,"800,51655-0113-54 ",.02)
 ;;51655-0113-54
 ;;9002226.02101,"800,51655-0113-80 ",.01)
 ;;51655-0113-80
 ;;9002226.02101,"800,51655-0113-80 ",.02)
 ;;51655-0113-80
 ;;9002226.02101,"800,51655-0276-52 ",.01)
 ;;51655-0276-52
 ;;9002226.02101,"800,51655-0276-52 ",.02)
 ;;51655-0276-52
 ;;9002226.02101,"800,51655-0533-52 ",.01)
 ;;51655-0533-52
 ;;9002226.02101,"800,51655-0533-52 ",.02)
 ;;51655-0533-52
 ;;9002226.02101,"800,51991-0189-04 ",.01)
 ;;51991-0189-04
 ;;9002226.02101,"800,51991-0189-04 ",.02)
 ;;51991-0189-04
 ;;9002226.02101,"800,51991-0189-16 ",.01)
 ;;51991-0189-16
 ;;9002226.02101,"800,51991-0189-16 ",.02)
 ;;51991-0189-16
 ;;9002226.02101,"800,51991-0298-16 ",.01)
 ;;51991-0298-16
 ;;9002226.02101,"800,51991-0298-16 ",.02)
 ;;51991-0298-16
 ;;9002226.02101,"800,51991-0583-01 ",.01)
 ;;51991-0583-01
 ;;9002226.02101,"800,51991-0583-01 ",.02)
 ;;51991-0583-01
 ;;9002226.02101,"800,52152-0014-02 ",.01)
 ;;52152-0014-02
 ;;9002226.02101,"800,52152-0014-02 ",.02)
 ;;52152-0014-02
 ;;9002226.02101,"800,52152-0015-02 ",.01)
 ;;52152-0015-02
 ;;9002226.02101,"800,52152-0015-02 ",.02)
 ;;52152-0015-02
 ;;9002226.02101,"800,52152-0311-02 ",.01)
 ;;52152-0311-02
 ;;9002226.02101,"800,52152-0311-02 ",.02)
 ;;52152-0311-02
 ;;9002226.02101,"800,52152-0311-05 ",.01)
 ;;52152-0311-05
 ;;9002226.02101,"800,52152-0311-05 ",.02)
 ;;52152-0311-05
 ;;9002226.02101,"800,52152-0312-02 ",.01)
 ;;52152-0312-02
 ;;9002226.02101,"800,52152-0312-02 ",.02)
 ;;52152-0312-02
 ;;9002226.02101,"800,52152-0312-05 ",.01)
 ;;52152-0312-05
 ;;9002226.02101,"800,52152-0312-05 ",.02)
 ;;52152-0312-05
 ;;9002226.02101,"800,52152-0313-02 ",.01)
 ;;52152-0313-02
 ;;9002226.02101,"800,52152-0313-02 ",.02)
 ;;52152-0313-02
 ;;9002226.02101,"800,52152-0313-05 ",.01)
 ;;52152-0313-05
 ;;9002226.02101,"800,52152-0313-05 ",.02)
 ;;52152-0313-05
 ;;9002226.02101,"800,52183-0389-04 ",.01)
 ;;52183-0389-04
 ;;9002226.02101,"800,52183-0389-04 ",.02)
 ;;52183-0389-04
 ;;9002226.02101,"800,52183-0399-04 ",.01)
 ;;52183-0399-04
 ;;9002226.02101,"800,52183-0399-04 ",.02)
 ;;52183-0399-04
 ;;9002226.02101,"800,52389-0610-60 ",.01)
 ;;52389-0610-60
 ;;9002226.02101,"800,52389-0610-60 ",.02)
 ;;52389-0610-60
 ;;9002226.02101,"800,52959-0043-00 ",.01)
 ;;52959-0043-00
 ;;9002226.02101,"800,52959-0043-00 ",.02)
 ;;52959-0043-00
 ;;9002226.02101,"800,52959-0043-04 ",.01)
 ;;52959-0043-04
 ;;9002226.02101,"800,52959-0043-04 ",.02)
 ;;52959-0043-04
 ;;9002226.02101,"800,52959-0043-10 ",.01)
 ;;52959-0043-10
 ;;9002226.02101,"800,52959-0043-10 ",.02)
 ;;52959-0043-10
 ;;9002226.02101,"800,52959-0043-15 ",.01)
 ;;52959-0043-15
 ;;9002226.02101,"800,52959-0043-15 ",.02)
 ;;52959-0043-15
 ;;9002226.02101,"800,52959-0043-20 ",.01)
 ;;52959-0043-20
 ;;9002226.02101,"800,52959-0043-20 ",.02)
 ;;52959-0043-20
 ;;9002226.02101,"800,52959-0043-24 ",.01)
 ;;52959-0043-24
 ;;9002226.02101,"800,52959-0043-24 ",.02)
 ;;52959-0043-24
 ;;9002226.02101,"800,52959-0043-30 ",.01)
 ;;52959-0043-30
 ;;9002226.02101,"800,52959-0043-30 ",.02)
 ;;52959-0043-30
 ;;9002226.02101,"800,52959-0043-50 ",.01)
 ;;52959-0043-50
 ;;9002226.02101,"800,52959-0043-50 ",.02)
 ;;52959-0043-50
 ;;9002226.02101,"800,52959-0043-60 ",.01)
 ;;52959-0043-60
 ;;9002226.02101,"800,52959-0043-60 ",.02)
 ;;52959-0043-60
 ;;9002226.02101,"800,52959-0053-06 ",.01)
 ;;52959-0053-06
 ;;9002226.02101,"800,52959-0053-06 ",.02)
 ;;52959-0053-06
 ;;9002226.02101,"800,52959-0053-10 ",.01)
 ;;52959-0053-10
 ;;9002226.02101,"800,52959-0053-10 ",.02)
 ;;52959-0053-10
 ;;9002226.02101,"800,52959-0053-12 ",.01)
 ;;52959-0053-12
 ;;9002226.02101,"800,52959-0053-12 ",.02)
 ;;52959-0053-12
 ;;9002226.02101,"800,52959-0053-15 ",.01)
 ;;52959-0053-15
 ;;9002226.02101,"800,52959-0053-15 ",.02)
 ;;52959-0053-15
 ;;9002226.02101,"800,52959-0053-20 ",.01)
 ;;52959-0053-20
 ;;9002226.02101,"800,52959-0053-20 ",.02)
 ;;52959-0053-20
 ;;9002226.02101,"800,52959-0053-30 ",.01)
 ;;52959-0053-30
 ;;9002226.02101,"800,52959-0053-30 ",.02)
 ;;52959-0053-30
 ;;9002226.02101,"800,52959-0053-52 ",.01)
 ;;52959-0053-52
 ;;9002226.02101,"800,52959-0053-52 ",.02)
 ;;52959-0053-52
 ;;9002226.02101,"800,52959-0074-12 ",.01)
 ;;52959-0074-12
 ;;9002226.02101,"800,52959-0074-12 ",.02)
 ;;52959-0074-12
 ;;9002226.02101,"800,52959-0074-13 ",.01)
 ;;52959-0074-13
 ;;9002226.02101,"800,52959-0074-13 ",.02)
 ;;52959-0074-13
 ;;9002226.02101,"800,52959-0074-15 ",.01)
 ;;52959-0074-15
 ;;9002226.02101,"800,52959-0074-15 ",.02)
 ;;52959-0074-15
 ;;9002226.02101,"800,52959-0074-16 ",.01)
 ;;52959-0074-16
 ;;9002226.02101,"800,52959-0074-16 ",.02)
 ;;52959-0074-16
 ;;9002226.02101,"800,52959-0074-20 ",.01)
 ;;52959-0074-20
 ;;9002226.02101,"800,52959-0074-20 ",.02)
 ;;52959-0074-20
 ;;9002226.02101,"800,52959-0074-21 ",.01)
 ;;52959-0074-21
 ;;9002226.02101,"800,52959-0074-21 ",.02)
 ;;52959-0074-21
 ;;9002226.02101,"800,52959-0074-24 ",.01)
 ;;52959-0074-24
 ;;9002226.02101,"800,52959-0074-24 ",.02)
 ;;52959-0074-24
 ;;9002226.02101,"800,52959-0074-30 ",.01)
 ;;52959-0074-30
 ;;9002226.02101,"800,52959-0074-30 ",.02)
 ;;52959-0074-30
 ;;9002226.02101,"800,52959-0074-40 ",.01)
 ;;52959-0074-40
 ;;9002226.02101,"800,52959-0074-40 ",.02)
 ;;52959-0074-40
 ;;9002226.02101,"800,52959-0074-50 ",.01)
 ;;52959-0074-50
 ;;9002226.02101,"800,52959-0074-50 ",.02)
 ;;52959-0074-50
 ;;9002226.02101,"800,52959-0074-60 ",.01)
 ;;52959-0074-60
 ;;9002226.02101,"800,52959-0074-60 ",.02)
 ;;52959-0074-60
 ;;9002226.02101,"800,52959-0074-90 ",.01)
 ;;52959-0074-90
 ;;9002226.02101,"800,52959-0074-90 ",.02)
 ;;52959-0074-90
 ;;9002226.02101,"800,52959-0118-03 ",.01)
 ;;52959-0118-03
 ;;9002226.02101,"800,52959-0118-03 ",.02)
 ;;52959-0118-03
 ;;9002226.02101,"800,52959-0118-05 ",.01)
 ;;52959-0118-05
 ;;9002226.02101,"800,52959-0118-05 ",.02)
 ;;52959-0118-05
 ;;9002226.02101,"800,52959-0118-06 ",.01)
 ;;52959-0118-06
 ;;9002226.02101,"800,52959-0118-06 ",.02)
 ;;52959-0118-06
 ;;9002226.02101,"800,52959-0118-08 ",.01)
 ;;52959-0118-08
 ;;9002226.02101,"800,52959-0118-08 ",.02)
 ;;52959-0118-08
 ;;9002226.02101,"800,52959-0123-03 ",.01)
 ;;52959-0123-03
 ;;9002226.02101,"800,52959-0123-03 ",.02)
 ;;52959-0123-03
 ;;9002226.02101,"800,52959-0123-06 ",.01)
 ;;52959-0123-06
 ;;9002226.02101,"800,52959-0123-06 ",.02)
 ;;52959-0123-06
 ;;9002226.02101,"800,52959-0134-04 ",.01)
 ;;52959-0134-04
 ;;9002226.02101,"800,52959-0134-04 ",.02)
 ;;52959-0134-04
 ;;9002226.02101,"800,52959-0134-08 ",.01)
 ;;52959-0134-08
 ;;9002226.02101,"800,52959-0134-08 ",.02)
 ;;52959-0134-08
 ;;9002226.02101,"800,52959-0229-04 ",.01)
 ;;52959-0229-04
 ;;9002226.02101,"800,52959-0229-04 ",.02)
 ;;52959-0229-04
 ;;9002226.02101,"800,52959-0433-10 ",.01)
 ;;52959-0433-10
 ;;9002226.02101,"800,52959-0433-10 ",.02)
 ;;52959-0433-10
 ;;9002226.02101,"800,52959-0433-15 ",.01)
 ;;52959-0433-15
 ;;9002226.02101,"800,52959-0433-15 ",.02)
 ;;52959-0433-15
 ;;9002226.02101,"800,52959-0433-20 ",.01)
 ;;52959-0433-20
 ;;9002226.02101,"800,52959-0433-20 ",.02)
 ;;52959-0433-20
 ;;9002226.02101,"800,52959-0433-30 ",.01)
 ;;52959-0433-30
 ;;9002226.02101,"800,52959-0433-30 ",.02)
 ;;52959-0433-30
 ;;9002226.02101,"800,52959-0433-40 ",.01)
 ;;52959-0433-40
 ;;9002226.02101,"800,52959-0433-40 ",.02)
 ;;52959-0433-40
 ;;9002226.02101,"800,52959-0433-50 ",.01)
 ;;52959-0433-50
 ;;9002226.02101,"800,52959-0433-50 ",.02)
 ;;52959-0433-50
 ;;9002226.02101,"800,52959-0433-60 ",.01)
 ;;52959-0433-60
 ;;9002226.02101,"800,52959-0433-60 ",.02)
 ;;52959-0433-60
 ;;9002226.02101,"800,52959-0481-10 ",.01)
 ;;52959-0481-10
 ;;9002226.02101,"800,52959-0481-10 ",.02)
 ;;52959-0481-10
 ;;9002226.02101,"800,52959-0481-12 ",.01)
 ;;52959-0481-12
 ;;9002226.02101,"800,52959-0481-12 ",.02)
 ;;52959-0481-12
 ;;9002226.02101,"800,52959-0481-20 ",.01)
 ;;52959-0481-20
 ;;9002226.02101,"800,52959-0481-20 ",.02)
 ;;52959-0481-20
 ;;9002226.02101,"800,52959-0481-30 ",.01)
 ;;52959-0481-30
 ;;9002226.02101,"800,52959-0481-30 ",.02)
 ;;52959-0481-30
 ;;9002226.02101,"800,52959-0534-01 ",.01)
 ;;52959-0534-01
 ;;9002226.02101,"800,52959-0534-01 ",.02)
 ;;52959-0534-01
 ;;9002226.02101,"800,52959-0534-02 ",.01)
 ;;52959-0534-02
 ;;9002226.02101,"800,52959-0534-02 ",.02)
 ;;52959-0534-02
 ;;9002226.02101,"800,52959-0534-10 ",.01)
 ;;52959-0534-10
 ;;9002226.02101,"800,52959-0534-10 ",.02)
 ;;52959-0534-10
 ;;9002226.02101,"800,52959-0534-12 ",.01)
 ;;52959-0534-12
 ;;9002226.02101,"800,52959-0534-12 ",.02)
 ;;52959-0534-12
 ;;9002226.02101,"800,52959-0534-15 ",.01)
 ;;52959-0534-15