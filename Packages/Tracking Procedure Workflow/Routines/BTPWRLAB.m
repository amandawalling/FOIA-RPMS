BTPWRLAB ;VNGT/HS/ALA-Lab Result Report ; 05 Apr 2010  9:28 AM
 ;;1.0;CARE MANAGEMENT EVENT TRACKING;;Feb 07, 2011
 ;
EN(DATA,DFN,IEN) ; EP - BTPW LAB RESULT DISPLAY
 ; Description
 ;   Generates a display of lab data
 ; Input
 ;   DFN - Patient IEN
 ;   IEN - Lab record IEN
 ;
 NEW ACCN,VISIT,LRDFN,TEST,LOC,NOD,NUM,PEC,DTM,QFL,DAT,NUN,VAL,DTYP,NAME,VEDAT,VEQFL
 NEW VEVL,VALUE,CSTAT,LC,VEDATA,NFL,PNL
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BTPWRLAB",UID))
 K @DATA
 ;
 S II=0
 ;
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BTPWRLAB D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 D HDR
 ;
 S ACCN=$P($G(^AUPNVLAB(IEN,0)),U,6),VISIT=$P($G(^AUPNVLAB(IEN,0)),U,3)
 I $E(ACCN,1,2)="WH" G DONE
 S LRDFN=$P($G(^DPT(DFN,"LR")),U,1),TEST=$P($G(^AUPNVLAB(IEN,0)),U,1)
 I TEST="" G DONE
 S CSTAT=$$GET1^DIQ(9000010.09,IEN_",",1109,"E")
 S II=II+1,@DATA@(II)="    Current Status: "_CSTAT,II=II+1,@DATA@(II)="  "
 S LOC=$P(^LAB(60,TEST,0),U,5),NOD=$P(LOC,";",1),NUM=$P(LOC,";",2),PEC=$P(LOC,";",3)
 I PEC="" S PEC=1
 I LOC="" S NOD=$P(^LAB(60,TEST,0),U,4)
 S DTM=0,QFL=0,DAT=""
 F  S DTM=$O(^LR(LRDFN,NOD,DTM)) Q:DTM=""  D  Q:QFL
 . I $P(^LR(LRDFN,NOD,DTM,0),U,6)=ACCN S QFL=1,DAT=DTM
 I NUM="" S NUN=1
 E  S NUN=NUM-.005
 I DAT'="" D
 . F  S NUN=$O(^LR(LRDFN,NOD,DAT,NUN)) Q:'NUN  D
 .. I NOD="CH" D
 ... S VAL=$P(^LR(LRDFN,NOD,DAT,NUN),U,PEC)
 ... S DTYP=$P($G(^DD(63.04,NUN,0)),U,2),DTYP=$S(DTYP["N":"N",DTYP["S":"S",1:"F")
 ... S NAME=$P($G(^DD(63.04,NUN,0)),U,1)
 ... I DTYP="S" D
 .... S VEDATA=$P(^DD(63.04,NUN,0),U,3),VEQFL=0
 .... F I=1:1 S VEVL=$P(VEDATA,";",I) Q:VEVL=""  D  Q:VEQFL
 ..... S VALUE=$P(VEVL,":",2) I VAL=$P(VEVL,":",1) S VEQFL=1,VAL=VALUE
 ... S II=II+1,@DATA@(II)="  "_NAME_$S(NAME[":":"  ",1:": ")_VAL_$C(13)_$C(10)
 S LC=0
 F  S LC=$O(^AUPNVLAB(IEN,21,LC)) Q:'LC  S II=II+1,@DATA@(II)=^AUPNVLAB(IEN,21,LC,0)_$C(13)_$C(10)
 ; check if lab is a panel
 S PNL=$O(^LAB(60,TEST,2,0))
 I PNL D
 . NEW PIEN,LIEN,PLAB
 . K MEM
 . S PIEN=0 F  S PIEN=$O(^LAB(60,TEST,2,PIEN)) Q:'PIEN  S PLAB=$P(^LAB(60,TEST,2,PIEN,0),U,1),MEM(PLAB)=""
 . S LIEN="",NFL=0
 . F  S LIEN=$O(^AUPNVLAB("AD",VISIT,LIEN)) Q:LIEN=""  D  Q:NFL
 .. ;S PLAB=$P(^AUPNVLAB(LIEN,0),U,1) I '$D(MEM(PLAB)) Q
 .. I $P($G(^AUPNVLAB(LIEN,0)),U,6)'=ACCN Q
 .. ;I $P(^AUPNVLAB(LIEN,0),U,4)'="FINAL" Q
 .. S LC=0
 .. I $O(^AUPNVLAB(LIEN,21,LC))'="" S II=II+1,@DATA@(II)="NOTE: "_$C(13)_$C(10)
 .. F  S LC=$O(^AUPNVLAB(LIEN,21,LC)) Q:'LC  S II=II+1,@DATA@(II)=^AUPNVLAB(LIEN,21,LC,0)_$C(13)_$C(10),NFL=1
 S II=II+1,@DATA@(II)=$C(30)
 ;
DONE ;
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
HDR ;
 S @DATA@(II)="T01024REPORT_TEXT"_$C(30)
 Q
 ;
ERR ;
 D ^%ZTER
 NEW Y,ERRDTM
 S Y=$$NOW^XLFDT() X ^DD("DD") S ERRDTM=Y
 S BMXSEC="Recording that an error occurred at "_ERRDTM
 S II=II+1,@DATA@(II)=$C(31)
 I $$TMPFL^BQIUL1("C")
 Q