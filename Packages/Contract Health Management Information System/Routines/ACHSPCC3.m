ACHSPCC3 ; IHS/ITSC/PMF - CHS AREA SPLITOUT (3/5)(WRITE TO FLATFILES) ;
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;**11,13,19**;JUN 11,2001
 ;ACHS*3.1*3  add UID to NPRS data
 ;IHS/SET/GTH ACHS*3.1*5 12/06/2002 - Reinstate display filename.
 ;ITSC/SET/JVK ACHS*3.1*11 ADDED ADDITONAL RECORRDS FOR STAT PURPOSES
 ;ACHS*3.1*13 IHS/OIT/FCJ ADDED UFMS PROCESSING
 S (ACHSFLG,ACHSGCTR)=0
 G PCC4
 ;
START ;
 ;I ACHSGLBL="^ACHSBCBS",($$AOP^ACHS(2,8)=""!($$AOP^ACHS(2,8)="N")) G PCC4
 I ACHSGCTR=1,ACHSCT2=0 G PCC4
 S X=$O(@(ACHSGLBL_"(0)"))
 I +X<1 G PCC4
 I +X="**" G PCC4
MSM ;
 U IO(0)
 W !!,"Processing the ",ACHSGLBL," (",ACHSDESC,") transaction file."
 S ACHSMED="F"
 D UNIX:"Ff"[ACHSMED
 I $D(ACHSJFLG) D JOBABEND^ACHSPCC4 Q
PCC4 ;
 I ACHSFLG D JOBABEND^ACHSPCC4 Q
 S ACHSGCTR=ACHSGCTR+1,ACHSGLBL=$P($T(@"GLOBS"+ACHSGCTR),";",3),ACHSDESC=$P($T(@"GLOBS"+ACHSGCTR),";",4),ACHSSUF=$P($T(@"GLOBS"+ACHSGCTR),";",5)
 I ACHSGLBL="^ACHSUFMS" D UFMS G PCC4   ;ACHS*3.1*13 IHS/OIT/FCJ
 I ACHSGLBL']"" D END^ACHSPCC4 Q
 ;I ACHSGLBL
 I ACHSGLBL="^ACHSBCBS",$$AOP^ACHS(2,8)="Y" G START
 ;ITSC/SET/JVK ACHS*3.1*11
 I ACHSGLBL="^ACHSPIG" S ACHSSUF=ACHSSUF_$E($P(^AUTTLOC(DUZ(2),0),U,10),1,2)_"0000"
 G PCC4:'$O(@(ACHSGLBL_"(0)"))
 G START
 ;
UNIX ;
 S ACHSFAC=$P(^AUTTLOC(DUZ(2),0),U,10)
 ;S ACHSCCTR="PCC"
 S ACHSHDNM=ACHSSUF
 I ACHSHDNM="DHR" S ACHSHDNM="DHRP"
 I ACHSGLBL="^ACHSCORE" S ACHSHDNM="DHRC"
 S ACHSPGNM="ACHS",ACHSZIN=1
 D FILESEL^ACHSEXUT
 I $D(ACHSJFLG) G END
 S ACHSZFN=ACHSEXFN,ACHSZIN=0
 D OPENHFS^ACHSTCK1
 I ACHSZZA D ERROR^ACHSTCK1 D JOBABEND^ACHSPCC4 Q
 I ACHSGCTR=1 S ACHSDHRN=ACHSZFN
 S IO=ACHSZDEV
 U IO(0)
 ;W !,"Please Standby - Copying Data to File: " ;,!?10,ACHSEXFS;IHS/SET/GTH ACHS*3.1*5 12/06/2002
 W !,"Please Standby - Copying Data to File: ",!?10,ACHSZFN ;IHS/SET/GTH ACHS*3.1*5 12/06/2002
 D AZGSAV1M
CLOSE ;EP
 D ^%ZISC
 U IO(0)
 W !!?10,ACHSTXRC," Total Records Copied to Output Media",!
 D RTRN^ACHS,TXLOGADD^ACHSTXUT
 I ACHSY>0 G NORMEND
 U IO(0)
 W *7,?5,"UNABLE TO POST ENTRY TO IHS TX LOG - NOTIFY SUPERVISOR"
 S ACHSFLG=1
 G END
 ;
NORMEND ;
 I $D(^AFSTXLOG(0)) D
 . S $P(^AFSTXLOG(DUZ(2),1,ACHSY,0),U,3)=$$HTFM^XLFDT($H)
 . S $P(^AFSTXLOG(DUZ(2),1,ACHSY,0),U,4)="Y"
 . S:$D(ACHSTXRC) $P(^AFSTXLOG(DUZ(2),1,ACHSY,0),U,2)=ACHSTXRC
 . N DA,DIK
 . S DIK="^AFSTXLOG("_DUZ(2)_",1,",DA(1)=DUZ(2),DA=ACHSY
 . D IX^DIK
 .Q
 ;
END ; Kill vars, post 1166 open doc, quit.
 K ACHS,ACHS7A,ACHSFAC,ACHSMSG,ACHSRCTR,ACHSRR,ACHSRRCT,X1,X2
 Q:$D(ACHSJFLG)
 Q:'$L($T(FRD^AFSLODF0))
 Q:$$AOP^ACHS(2,12)'="Y"
 Q:$G(ACHSZFN)'["chsdh"
 ; Post 1166 open document file.
 W !,"Begin Posting DHR file to 1166 Open Document File..."
 S AFSXPFN=ACHSDHRN
 D FRD^AFSLODF0
 K AFSXPFN
 W !,"End Posting DHR file to 1166 Open Document File..."
 Q
 ;
AZGSAV1M ;
 U IO(0)
 D WAIT^DICD
 S DX=$X,DY=$Y,R="0",(ACHSRCTR,ACHSRR,ACHSRRR,ACHSRRCT,ACHSRRRC,ACHSTXRC)=0
 S:ACHSGCTR=1 DY=DY+1
 W !
AZGSHJCL ;
 D PCCHJCL^ACHSPCC4:ACHSGCTR=1,DPSHJCL^ACHSPCC4:ACHSGCTR=5,FIHJCL^ACHSPCC4:ACHSGCTR=2
AZGS1 ;
 S ACHSREF=ACHSGLBL_"("""_R_""")",R=$O(@ACHSREF) G AZGSTJCL:+R<1 S ACHSRCTR=+R I $D(^(R))<2 S X=^(R) D PADWRITE G AZGS1
 S ACHSRR=0
AZGS2 ;
 S ACHSREF=ACHSGLBL_"("""_R_""","_ACHSRR_")",ACHSRR=$O(@ACHSREF) G AZGS1:+ACHSRR<1 I $D(^(ACHSRR))<2 S X=^(ACHSRR),ACHSRRCT=ACHSRR D PADWRITE G AZGS2
 S ACHSRRR=0
AZGS3 ;
 S ACHSREF=ACHSGLBL_"("""_R_""","""_ACHSRR_""","_ACHSRRR_")",ACHSRRR=$O(@ACHSREF) G AZGS2:+ACHSRRR<1 S X=^(ACHSRRR),ACHSRRCT=ACHSRRR
 D PADWRITE
 G AZGS3
 ;
AZGSTJCL ;
 D PCCTJCL^ACHSPCC4:ACHSGCTR=1,DPSTJCL^ACHSPCC4:ACHSGCTR=5
 I ACHSGCTR=2 D PCCTJCL^ACHSPCC4,FITJCL^ACHSPCC4
 ;U IO(0) W $J($S(ACHSRRCT>0:ACHSRRCT,1:RCTR),8)
 Q
 ;
PADWRITE ;EP.
 S:$L(X)<80 X=X_$J("",80-$L(X))
 I $E(X,1,2)="7A" S ACHS7A=+$E(X,3,4),X=$S(ACHS7A=19:"HC",ACHS7A=20:"CO",1:"DO")_$E(X,3,80)
 I $E(X,1,2)="7B" S X=$S(ACHS7A=19:"H2",ACHS7A=20:"C2",1:"D2")_$E(X,3,80)
 ;JVK/ITSC/9.1.04
 ;I $E(X,1,2)="7C" S X="D3"_$E(X,3,80)
 I $E(X,1,2)="7C" S X=$S(ACHS7A=19:"H3",ACHS7A=20:"C3",1:"D3")_$E(X,3,80)
 ;
 ;2/1/2  pmf  add universal reg ID record
 ;I $E(X,1,2)="7D" S X=$S(ACHS7A=19:"H3",ACHS7A=20:"C3",1:"D4")_$E(X,3,80)  ; ACHS*3.1*3
 I $E(X,1,2)="7D" S X=$S(ACHS7A=19:"H4",ACHS7A=20:"C4",1:"D4")_$E(X,3,80)  ; ACHS*3.1*3
 ;
 I $E(X,1,2)="7E" S X=$S(ACHS7A=19:"H5",ACHS7A=20:"C5",1:"D5")_$E(X,3,80)  ; ACHS*3.1*11
 I $E(X,1,2)="7F" S X=$S(ACHS7A=19:"H6",ACHS7A=20:"C6",1:"D6")_$E(X,3,80)  ; ACHS*3.1*11
 I $E(X,1,2)="7G" S X=$S(ACHS7A=19:"H7",ACHS7A=20:"C7",1:"D7")_$E(X,3,80)  ; ACHS*3.1*11
 I $E(X,1,2)="7H" S X=$S(ACHS7A=19:"H8",ACHS7A=20:"C8",1:"D8")_$E(X,3,80)  ; ACHS*3.1*11
 I $E(X,1,2)="7I" S X=$S(ACHS7A=19:"H9",ACHS7A=20:"C9",1:"D9")_$E(X,3,80)  ; ACHS*3.1*11
 I $E(X,1,2)="7J" S X=$S(ACHS7A=19:"H0",ACHS7A=20:"C0",1:"D0")_$E(X,3,80)  ; ACHS*3.1*11
 I $E(X,1,2)="7K" S X=$S(ACHS7A=19:"HA",ACHS7A=20:"C1",1:"D1")_$E(X,3,80)  ; ACHS*3.1*11
 I $E(X,1,2)="7L" S X=$S(ACHS7A=19:"HB",ACHS7A=20:"C2",1:"D2")_$E(X,3,80)  ; ACHS*3.1*11
 I $E(X,1,2)="7M" S X=$S(ACHS7A=19:"HD",ACHS7A=20:"C3",1:"D3")_$E(X,3,80)  ; ACHS*3.1*11
 ;I $E(X,1,2)="7N" S X=$S(ACHS7A=19:"HF",ACHS7A=20:"C4",1:"D4")_$E(X,3,80)  ; ACHS*3.1*11
 I $E(X,1,2)="7X" S X=$S(ACHS7A=19:"HX",ACHS7A=20:"CX",1:"DX")_$E(X,3,80)  ; ACHS*3.1*3
 ;
 U IO
 W X,!
 ;
 ;2/1/02  pmf  we no longer will write empty H3, C3 or D4 records
 ;I $E(X,1,2)="H2" S X="H3" G PADWRITE  ; ACHS*3.1*3
 ;I $E(X,1,2)="C2" S X="C3" G PADWRITE  ; ACHS*3.1*3
 ;I $E(X,1,2)="D3" S X="D4" G PADWRITE  ; ACHS*3.1*3
 ;
 S ACHSTXRC=ACHSTXRC+1
 I ACHSTXRC#100=0 U IO(0) W $J(ACHSTXRC,8)
 Q:(ACHSGCTR>1)!($E(X)'="2")
 ; Make entry into Area PO transaction file, as a DHR.
 D ADD^ACHSAOPO($E(X,16,25),"DHR",X)
 Q
 ;
UFMS ;SAVE AND SEND FILE;  ACHS*3.1*13 IHS/OIT/FCJ ADDED UFMS SECTION
 S ACHSTXRC=+$E(^ACHSUFMS("COUNT"),15,18) Q:ACHSTXRC=0
 U IO(0)
 W !!,"Processing the ",ACHSGLBL," (",ACHSDESC,") transaction file."
 S X=$E(DT,4,7)_$E(DT,2,3)
 D NOW^%DTC S X=(%I(3)+1700)_$E(%,4,7)_"_"_$P(%,".",2)
 S:$L(X)'=15 X=X_0
 S X1=$P(^AUTTAREA($P(^AUTTLOC(DUZ(2),0),U,4),0),U,3)
 S:X1="S" X1="X"  ;ACHS*3.1*19
 S XBFN="IHS_PO_CHSMIS_"_X1_"_"_X_".dat"
 S ACHSEXFS="IHSPOCHSMIS"_X1_X_".dat",ACHSEXFS=$TR(ACHSEXFS,"_","")
 S XBGL="ACHSUFMS",XBNAR="CONTRACT HEALTH UFMS export data",XBMED="F",XBFLT=1
 S XBS1="ACHS UFMS B",XBQ="N"
 S XBUF="/usr/spool/chsdata"
 D ^XBGSAVE    ;Saves and sends global
 D CLOSE
 Q
 ;       
 ;ITSC/SET/JVK ACHS*3.1*11 changed name of 638 export to chsstat
GLOBS ;;ACHSGLBL;ACHSDESC;ACHSSUF
 ;;^ACHSPCC;DHR;DHR
 ;;^ACHSBCBS;BLUE CROSS/SHIELD;bcs
 ;;^ACHSAOVU;VENDOR RECORDS;aov
 ;;^ACHSAOPD;PAYMENT RECORDS;aop
 ;;^ACHSPIG;638 STATISTICAL DATA;stat;638  ; ACHS*3.1*11
 ;;^ACHSCORE;DHR for CORE;DHR
 ;;^ACHSUFMS;DHR records for UFMS;IHS    ;ACHS*3.1*13 IHS/OIT/FCJ