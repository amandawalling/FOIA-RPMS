BGP31R19 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 29, 2012;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"806,64727-3312-02 ",.02)
 ;;64727-3312-02
 ;;9002226.02101,"806,64727-3320-01 ",.01)
 ;;64727-3320-01
 ;;9002226.02101,"806,64727-3320-01 ",.02)
 ;;64727-3320-01
 ;;9002226.02101,"806,64727-3320-02 ",.01)
 ;;64727-3320-02
 ;;9002226.02101,"806,64727-3320-02 ",.02)
 ;;64727-3320-02
 ;;9002226.02101,"806,64727-3340-01 ",.01)
 ;;64727-3340-01
 ;;9002226.02101,"806,64727-3340-01 ",.02)
 ;;64727-3340-01
 ;;9002226.02101,"806,64727-3340-02 ",.01)
 ;;64727-3340-02
 ;;9002226.02101,"806,64727-3340-02 ",.02)
 ;;64727-3340-02
 ;;9002226.02101,"806,64727-7065-01 ",.01)
 ;;64727-7065-01
 ;;9002226.02101,"806,64727-7065-01 ",.02)
 ;;64727-7065-01
 ;;9002226.02101,"806,64727-7065-02 ",.01)
 ;;64727-7065-02
 ;;9002226.02101,"806,64727-7065-02 ",.02)
 ;;64727-7065-02
 ;;9002226.02101,"806,64727-7070-01 ",.01)
 ;;64727-7070-01
 ;;9002226.02101,"806,64727-7070-01 ",.02)
 ;;64727-7070-01
 ;;9002226.02101,"806,64727-7070-02 ",.01)
 ;;64727-7070-02
 ;;9002226.02101,"806,64727-7070-02 ",.02)
 ;;64727-7070-02
 ;;9002226.02101,"806,64727-7072-01 ",.01)
 ;;64727-7072-01
 ;;9002226.02101,"806,64727-7072-01 ",.02)
 ;;64727-7072-01
 ;;9002226.02101,"806,64727-7072-02 ",.01)
 ;;64727-7072-02
 ;;9002226.02101,"806,64727-7072-02 ",.02)
 ;;64727-7072-02
 ;;9002226.02101,"806,64727-7073-01 ",.01)
 ;;64727-7073-01
 ;;9002226.02101,"806,64727-7073-01 ",.02)
 ;;64727-7073-01
 ;;9002226.02101,"806,64727-7073-02 ",.01)
 ;;64727-7073-02
 ;;9002226.02101,"806,64727-7073-02 ",.02)
 ;;64727-7073-02
 ;;9002226.02101,"806,64727-7074-01 ",.01)
 ;;64727-7074-01
 ;;9002226.02101,"806,64727-7074-01 ",.02)
 ;;64727-7074-01
 ;;9002226.02101,"806,64727-7074-02 ",.01)
 ;;64727-7074-02
 ;;9002226.02101,"806,64727-7074-02 ",.02)
 ;;64727-7074-02
 ;;9002226.02101,"806,64727-7075-01 ",.01)
 ;;64727-7075-01
 ;;9002226.02101,"806,64727-7075-01 ",.02)
 ;;64727-7075-01
 ;;9002226.02101,"806,64727-7075-02 ",.01)
 ;;64727-7075-02
 ;;9002226.02101,"806,64727-7075-02 ",.02)
 ;;64727-7075-02
 ;;9002226.02101,"806,64727-7078-01 ",.01)
 ;;64727-7078-01
 ;;9002226.02101,"806,64727-7078-01 ",.02)
 ;;64727-7078-01
 ;;9002226.02101,"806,64727-7078-02 ",.01)
 ;;64727-7078-02
 ;;9002226.02101,"806,64727-7078-02 ",.02)
 ;;64727-7078-02
 ;;9002226.02101,"806,64727-7080-01 ",.01)
 ;;64727-7080-01
 ;;9002226.02101,"806,64727-7080-01 ",.02)
 ;;64727-7080-01
 ;;9002226.02101,"806,64727-7080-02 ",.01)
 ;;64727-7080-02
 ;;9002226.02101,"806,64727-7080-02 ",.02)
 ;;64727-7080-02
 ;;9002226.02101,"806,64727-7085-01 ",.01)
 ;;64727-7085-01
 ;;9002226.02101,"806,64727-7085-01 ",.02)
 ;;64727-7085-01
 ;;9002226.02101,"806,64727-7085-02 ",.01)
 ;;64727-7085-02
 ;;9002226.02101,"806,64727-7085-02 ",.02)
 ;;64727-7085-02
 ;;9002226.02101,"806,64727-7087-01 ",.01)
 ;;64727-7087-01
 ;;9002226.02101,"806,64727-7087-01 ",.02)
 ;;64727-7087-01
 ;;9002226.02101,"806,64727-7087-02 ",.01)
 ;;64727-7087-02
 ;;9002226.02101,"806,64727-7087-02 ",.02)
 ;;64727-7087-02
 ;;9002226.02101,"806,64727-7087-08 ",.01)
 ;;64727-7087-08
 ;;9002226.02101,"806,64727-7087-08 ",.02)
 ;;64727-7087-08
 ;;9002226.02101,"806,64727-7090-01 ",.01)
 ;;64727-7090-01
 ;;9002226.02101,"806,64727-7090-01 ",.02)
 ;;64727-7090-01
 ;;9002226.02101,"806,64727-7090-02 ",.01)
 ;;64727-7090-02
 ;;9002226.02101,"806,64727-7090-02 ",.02)
 ;;64727-7090-02
 ;;9002226.02101,"806,64727-7095-01 ",.01)
 ;;64727-7095-01
 ;;9002226.02101,"806,64727-7095-01 ",.02)
 ;;64727-7095-01
 ;;9002226.02101,"806,64727-7095-02 ",.01)
 ;;64727-7095-02
 ;;9002226.02101,"806,64727-7095-02 ",.02)
 ;;64727-7095-02
 ;;9002226.02101,"806,64727-7100-01 ",.01)
 ;;64727-7100-01
 ;;9002226.02101,"806,64727-7100-01 ",.02)
 ;;64727-7100-01
 ;;9002226.02101,"806,64727-7100-02 ",.01)
 ;;64727-7100-02
 ;;9002226.02101,"806,64727-7100-02 ",.02)
 ;;64727-7100-02
 ;;9002226.02101,"806,64727-7150-01 ",.01)
 ;;64727-7150-01
 ;;9002226.02101,"806,64727-7150-01 ",.02)
 ;;64727-7150-01
 ;;9002226.02101,"806,64727-7150-02 ",.01)
 ;;64727-7150-02
 ;;9002226.02101,"806,64727-7150-02 ",.02)
 ;;64727-7150-02
 ;;9002226.02101,"806,64909-0101-07 ",.01)
 ;;64909-0101-07
 ;;9002226.02101,"806,64909-0101-07 ",.02)
 ;;64909-0101-07
 ;;9002226.02101,"806,64909-0102-07 ",.01)
 ;;64909-0102-07
 ;;9002226.02101,"806,64909-0102-07 ",.02)
 ;;64909-0102-07
 ;;9002226.02101,"806,64909-0102-08 ",.01)
 ;;64909-0102-08
 ;;9002226.02101,"806,64909-0102-08 ",.02)
 ;;64909-0102-08
 ;;9002226.02101,"806,64909-0104-07 ",.01)
 ;;64909-0104-07
 ;;9002226.02101,"806,64909-0104-07 ",.02)
 ;;64909-0104-07
 ;;9002226.02101,"806,64909-0105-07 ",.01)
 ;;64909-0105-07
 ;;9002226.02101,"806,64909-0105-07 ",.02)
 ;;64909-0105-07
 ;;9002226.02101,"806,64909-0105-08 ",.01)
 ;;64909-0105-08
 ;;9002226.02101,"806,64909-0105-08 ",.02)
 ;;64909-0105-08
 ;;9002226.02101,"806,65162-0877-10 ",.01)
 ;;65162-0877-10
 ;;9002226.02101,"806,65162-0877-10 ",.02)
 ;;65162-0877-10
 ;;9002226.02101,"806,65162-0878-10 ",.01)
 ;;65162-0878-10
 ;;9002226.02101,"806,65162-0878-10 ",.02)
 ;;65162-0878-10
 ;;9002226.02101,"806,65243-0176-09 ",.01)
 ;;65243-0176-09
 ;;9002226.02101,"806,65243-0176-09 ",.02)
 ;;65243-0176-09
 ;;9002226.02101,"806,65243-0176-12 ",.01)
 ;;65243-0176-12
 ;;9002226.02101,"806,65243-0176-12 ",.02)
 ;;65243-0176-12
 ;;9002226.02101,"806,65243-0176-18 ",.01)
 ;;65243-0176-18
 ;;9002226.02101,"806,65243-0176-18 ",.02)
 ;;65243-0176-18
 ;;9002226.02101,"806,65243-0176-27 ",.01)
 ;;65243-0176-27
 ;;9002226.02101,"806,65243-0176-27 ",.02)
 ;;65243-0176-27
 ;;9002226.02101,"806,65243-0176-36 ",.01)
 ;;65243-0176-36
 ;;9002226.02101,"806,65243-0176-36 ",.02)
 ;;65243-0176-36
 ;;9002226.02101,"806,65243-0185-36 ",.01)
 ;;65243-0185-36
 ;;9002226.02101,"806,65243-0185-36 ",.02)
 ;;65243-0185-36
 ;;9002226.02101,"806,65243-0325-09 ",.01)
 ;;65243-0325-09
 ;;9002226.02101,"806,65243-0325-09 ",.02)
 ;;65243-0325-09
 ;;9002226.02101,"806,65243-0325-18 ",.01)
 ;;65243-0325-18
 ;;9002226.02101,"806,65243-0325-18 ",.02)
 ;;65243-0325-18
 ;;9002226.02101,"806,65243-0343-09 ",.01)
 ;;65243-0343-09
 ;;9002226.02101,"806,65243-0343-09 ",.02)
 ;;65243-0343-09
 ;;9002226.02101,"806,65243-0343-36 ",.01)
 ;;65243-0343-36
 ;;9002226.02101,"806,65243-0343-36 ",.02)
 ;;65243-0343-36
 ;;9002226.02101,"806,65243-0375-09 ",.01)
 ;;65243-0375-09
 ;;9002226.02101,"806,65243-0375-09 ",.02)
 ;;65243-0375-09
 ;;9002226.02101,"806,65862-0028-01 ",.01)
 ;;65862-0028-01
 ;;9002226.02101,"806,65862-0028-01 ",.02)
 ;;65862-0028-01
 ;;9002226.02101,"806,65862-0029-01 ",.01)
 ;;65862-0029-01
 ;;9002226.02101,"806,65862-0029-01 ",.02)
 ;;65862-0029-01
 ;;9002226.02101,"806,65862-0029-05 ",.01)
 ;;65862-0029-05
 ;;9002226.02101,"806,65862-0029-05 ",.02)
 ;;65862-0029-05
 ;;9002226.02101,"806,65862-0030-01 ",.01)
 ;;65862-0030-01
 ;;9002226.02101,"806,65862-0030-01 ",.02)
 ;;65862-0030-01
 ;;9002226.02101,"806,65862-0030-99 ",.01)
 ;;65862-0030-99
 ;;9002226.02101,"806,65862-0030-99 ",.02)
 ;;65862-0030-99
 ;;9002226.02101,"806,65862-0080-01 ",.01)
 ;;65862-0080-01
 ;;9002226.02101,"806,65862-0080-01 ",.02)
 ;;65862-0080-01
 ;;9002226.02101,"806,65862-0080-05 ",.01)
 ;;65862-0080-05
 ;;9002226.02101,"806,65862-0080-05 ",.02)
 ;;65862-0080-05
 ;;9002226.02101,"806,65862-0081-01 ",.01)
 ;;65862-0081-01
 ;;9002226.02101,"806,65862-0081-01 ",.02)
 ;;65862-0081-01
 ;;9002226.02101,"806,65862-0081-05 ",.01)
 ;;65862-0081-05
 ;;9002226.02101,"806,65862-0081-05 ",.02)
 ;;65862-0081-05
 ;;9002226.02101,"806,65862-0082-01 ",.01)
 ;;65862-0082-01
 ;;9002226.02101,"806,65862-0082-01 ",.02)
 ;;65862-0082-01
 ;;9002226.02101,"806,65862-0082-05 ",.01)
 ;;65862-0082-05
 ;;9002226.02101,"806,65862-0082-05 ",.02)
 ;;65862-0082-05
 ;;9002226.02101,"806,66105-0984-03 ",.01)
 ;;66105-0984-03
 ;;9002226.02101,"806,66105-0984-03 ",.02)
 ;;66105-0984-03
 ;;9002226.02101,"806,66105-0984-06 ",.01)
 ;;66105-0984-06
 ;;9002226.02101,"806,66105-0984-06 ",.02)
 ;;66105-0984-06
 ;;9002226.02101,"806,66105-0984-10 ",.01)
 ;;66105-0984-10
 ;;9002226.02101,"806,66105-0984-10 ",.02)
 ;;66105-0984-10
 ;;9002226.02101,"806,66105-0984-11 ",.01)
 ;;66105-0984-11
 ;;9002226.02101,"806,66105-0984-11 ",.02)
 ;;66105-0984-11
 ;;9002226.02101,"806,66105-0984-50 ",.01)
 ;;66105-0984-50
 ;;9002226.02101,"806,66105-0984-50 ",.02)
 ;;66105-0984-50
 ;;9002226.02101,"806,66105-0985-03 ",.01)
 ;;66105-0985-03
 ;;9002226.02101,"806,66105-0985-03 ",.02)
 ;;66105-0985-03
 ;;9002226.02101,"806,66105-0985-06 ",.01)
 ;;66105-0985-06
 ;;9002226.02101,"806,66105-0985-06 ",.02)
 ;;66105-0985-06
 ;;9002226.02101,"806,66105-0985-10 ",.01)
 ;;66105-0985-10
 ;;9002226.02101,"806,66105-0985-10 ",.02)
 ;;66105-0985-10
 ;;9002226.02101,"806,66105-0985-11 ",.01)
 ;;66105-0985-11
 ;;9002226.02101,"806,66105-0985-11 ",.02)
 ;;66105-0985-11
 ;;9002226.02101,"806,66105-0985-50 ",.01)
 ;;66105-0985-50
 ;;9002226.02101,"806,66105-0985-50 ",.02)
 ;;66105-0985-50
 ;;9002226.02101,"806,66105-0986-03 ",.01)
 ;;66105-0986-03
 ;;9002226.02101,"806,66105-0986-03 ",.02)
 ;;66105-0986-03
 ;;9002226.02101,"806,66105-0986-06 ",.01)
 ;;66105-0986-06
 ;;9002226.02101,"806,66105-0986-06 ",.02)
 ;;66105-0986-06
 ;;9002226.02101,"806,66105-0986-10 ",.01)
 ;;66105-0986-10
 ;;9002226.02101,"806,66105-0986-10 ",.02)
 ;;66105-0986-10
 ;;9002226.02101,"806,66105-0986-11 ",.01)
 ;;66105-0986-11
 ;;9002226.02101,"806,66105-0986-11 ",.02)
 ;;66105-0986-11
 ;;9002226.02101,"806,66105-0986-50 ",.01)
 ;;66105-0986-50
 ;;9002226.02101,"806,66105-0986-50 ",.02)
 ;;66105-0986-50
 ;;9002226.02101,"806,66116-0233-30 ",.01)
 ;;66116-0233-30
 ;;9002226.02101,"806,66116-0233-30 ",.02)
 ;;66116-0233-30
 ;;9002226.02101,"806,66116-0285-30 ",.01)
 ;;66116-0285-30
 ;;9002226.02101,"806,66116-0285-30 ",.02)
 ;;66116-0285-30
 ;;9002226.02101,"806,66116-0437-30 ",.01)
 ;;66116-0437-30
 ;;9002226.02101,"806,66116-0437-30 ",.02)
 ;;66116-0437-30
 ;;9002226.02101,"806,66116-0438-30 ",.01)
 ;;66116-0438-30
 ;;9002226.02101,"806,66116-0438-30 ",.02)
 ;;66116-0438-30
 ;;9002226.02101,"806,66116-0440-30 ",.01)
 ;;66116-0440-30
 ;;9002226.02101,"806,66116-0440-30 ",.02)
 ;;66116-0440-30
 ;;9002226.02101,"806,66267-0103-30 ",.01)
 ;;66267-0103-30
 ;;9002226.02101,"806,66267-0103-30 ",.02)
 ;;66267-0103-30
 ;;9002226.02101,"806,66267-0174-30 ",.01)
 ;;66267-0174-30
 ;;9002226.02101,"806,66267-0174-30 ",.02)
 ;;66267-0174-30
 ;;9002226.02101,"806,66267-0203-30 ",.01)
 ;;66267-0203-30
 ;;9002226.02101,"806,66267-0203-30 ",.02)
 ;;66267-0203-30
 ;;9002226.02101,"806,66267-0203-60 ",.01)
 ;;66267-0203-60
 ;;9002226.02101,"806,66267-0203-60 ",.02)
 ;;66267-0203-60
 ;;9002226.02101,"806,66267-0203-90 ",.01)
 ;;66267-0203-90
 ;;9002226.02101,"806,66267-0203-90 ",.02)
 ;;66267-0203-90
 ;;9002226.02101,"806,66336-0028-30 ",.01)
 ;;66336-0028-30
 ;;9002226.02101,"806,66336-0028-30 ",.02)
 ;;66336-0028-30
 ;;9002226.02101,"806,66336-0319-30 ",.01)
 ;;66336-0319-30
 ;;9002226.02101,"806,66336-0319-30 ",.02)
 ;;66336-0319-30
 ;;9002226.02101,"806,66336-0532-30 ",.01)
 ;;66336-0532-30
 ;;9002226.02101,"806,66336-0532-30 ",.02)
 ;;66336-0532-30
 ;;9002226.02101,"806,66336-0584-30 ",.01)
 ;;66336-0584-30
 ;;9002226.02101,"806,66336-0584-30 ",.02)
 ;;66336-0584-30
 ;;9002226.02101,"806,66336-0584-90 ",.01)
 ;;66336-0584-90
 ;;9002226.02101,"806,66336-0584-90 ",.02)
 ;;66336-0584-90
 ;;9002226.02101,"806,66336-0585-30 ",.01)
 ;;66336-0585-30
 ;;9002226.02101,"806,66336-0585-30 ",.02)
 ;;66336-0585-30
 ;;9002226.02101,"806,66336-0585-90 ",.01)
 ;;66336-0585-90
 ;;9002226.02101,"806,66336-0585-90 ",.02)
 ;;66336-0585-90
 ;;9002226.02101,"806,66336-0598-30 ",.01)
 ;;66336-0598-30
 ;;9002226.02101,"806,66336-0598-30 ",.02)
 ;;66336-0598-30
 ;;9002226.02101,"806,66336-0599-30 ",.01)
 ;;66336-0599-30
 ;;9002226.02101,"806,66336-0599-30 ",.02)
 ;;66336-0599-30
 ;;9002226.02101,"806,66336-0784-30 ",.01)
 ;;66336-0784-30
 ;;9002226.02101,"806,66336-0784-30 ",.02)
 ;;66336-0784-30
 ;;9002226.02101,"806,66336-0784-60 ",.01)
 ;;66336-0784-60
 ;;9002226.02101,"806,66336-0784-60 ",.02)
 ;;66336-0784-60
 ;;9002226.02101,"806,66336-0784-90 ",.01)
 ;;66336-0784-90
 ;;9002226.02101,"806,66336-0784-90 ",.02)
 ;;66336-0784-90
 ;;9002226.02101,"806,66336-0840-90 ",.01)
 ;;66336-0840-90
 ;;9002226.02101,"806,66336-0840-90 ",.02)
 ;;66336-0840-90
 ;;9002226.02101,"806,66336-0850-30 ",.01)
 ;;66336-0850-30
 ;;9002226.02101,"806,66336-0850-30 ",.02)
 ;;66336-0850-30
 ;;9002226.02101,"806,66336-0850-60 ",.01)
 ;;66336-0850-60
 ;;9002226.02101,"806,66336-0850-60 ",.02)
 ;;66336-0850-60
 ;;9002226.02101,"806,66336-0850-90 ",.01)
 ;;66336-0850-90
 ;;9002226.02101,"806,66336-0850-90 ",.02)
 ;;66336-0850-90
 ;;9002226.02101,"806,66336-0938-30 ",.01)
 ;;66336-0938-30
 ;;9002226.02101,"806,66336-0938-30 ",.02)
 ;;66336-0938-30
 ;;9002226.02101,"806,66336-0938-60 ",.01)
 ;;66336-0938-60
 ;;9002226.02101,"806,66336-0938-60 ",.02)
 ;;66336-0938-60
 ;;9002226.02101,"806,66336-0938-90 ",.01)
 ;;66336-0938-90
 ;;9002226.02101,"806,66336-0938-90 ",.02)
 ;;66336-0938-90
 ;;9002226.02101,"806,66336-0951-60 ",.01)
 ;;66336-0951-60
 ;;9002226.02101,"806,66336-0951-60 ",.02)
 ;;66336-0951-60
 ;;9002226.02101,"806,66336-0952-60 ",.01)
 ;;66336-0952-60
 ;;9002226.02101,"806,66336-0952-60 ",.02)
 ;;66336-0952-60
 ;;9002226.02101,"806,66336-0977-30 ",.01)
 ;;66336-0977-30
 ;;9002226.02101,"806,66336-0977-30 ",.02)
 ;;66336-0977-30
 ;;9002226.02101,"806,66500-0158-01 ",.01)
 ;;66500-0158-01