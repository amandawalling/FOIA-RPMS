APCHS11C ; IHS/CMI/LAB - SECTION OF HEALTH SUMMARY ;
 ;;2.0;IHS PCC SUITE;**4**;MAY 14, 2009
 ;IHS/CMI/LAB - fixed alcohol and tobacco reminder, added
 ;sigmoid subroutine, fixed for new imm package
 ;IHS/CMI/LAB - fixed tobacco and alcohol review reminders 11/17/98
 ;IHS/CMI/LAB - fixed error check in BI call
 ;cmi/anch/maw 8/27/2007 code set versioning in SIGMOID
 ;
 ; ******************** SURVEILLANCE - HARD CODE ********************
EN ;ENTRY POINT FOR HSUM PRINT OF IMMUNIZ HLTH MNT RMDR
 ;IHS/CMI/LAB - modified this subroutine to work with new BI package
 I $$BI D  Q  ;IHS/CMI/LAB - new subroutine for new immpackage
 .NEW APCHIMM,APCH31,APCHBIER ;IHS/CMI/LAB - PATCH 4
 .D IMMFORC^BIRPC(.APCHIMM,APCHSPAT)
 .S APCH31=$C(31)_$C(31) ;IHS/OKCAO/POC 1/11/00 SET APCH31
 .S APCHBIER=$P(APCHIMM,APCH31,2)
 .I $G(APCHSGHR) D  Q
 ..S APCHSGHR(1)=$S($P(^APCHSURV(APCHSITI,0),U,4)]"":$P(^APCHSURV(APCHSITI,0),U,4),1:$P(^APCHSURV(APCHSITI,0),U))
 ..S APCHSGHR(4)=APCHIMM
 .I APCHBIER]"" X APCHSCKP Q:$D(APCHSQIT)  D  Q
 ..D EN^DDIOL("IMMUNIZATIONS DUE * "_APCHBIER,"","!") W !
 ..Q
 .S APCHIMM=$P(APCHIMM,APCH31,1) ;LETS GET RID OF CONTROL CHARACTERS BEFORE GOING ON IHS/OKCAO/POC 1/11/00
 .NEW APCHX,APCHI F APCHX=1:1 S APCHI=$P(APCHIMM,"^",APCHX) Q:APCHI=""!($D(APCHSQIT))  D
 ..S APCHI=$$TRIM(APCHI)
 ..I $G(APCHSGHR) D  Q
 ...S X=$P(APCHI,"|")_U_U_$P(APCHI,"|",2)_U_$P(APCHI,"|",3),$P(APCHSGHR,"|",APCHX)=X
 ..I 'APCHSANY D FIRST^APCHS11 Q:$D(APCHSQIT)  S APCHSANY=1
 ..X APCHSCKP Q:$D(APCHSQIT)
 ..I APCHSNPG W ?26,"LAST",?38,"NEXT",!! S APCHSCT=0
 ..W:APCHX=1 ! W $P(APCHI,"|"),?24,$P(APCHI,"|",2),?36,$P(APCHI,"|",3),!
 ..I APCHI["VARICELLA" S X=$$PHCP^APCHS2(APCHSPAT) I X]"" D
 ...W ?2,"Patient has a Hx of Chicken pox not yet entered as a contraindication"
 ...W !?2,"in the Immunization Package.",!,?2,X,!
 ..Q
 .Q
 K W I $D(APCHSPAT) S:$D(X) APCHSSAV=X S X="AMCHPCC" X ^%ZOSF("TEST") S:$D(APCHSSAV) X=APCHSSAV K APCHSSAV I $T D ^AMCHPCC I 1 ; CHANGED HOW X SET PRIOR TO CALL TO ^%ZOSF("TEST")  IHS/DWG 4/21/91
 E  Q
 I $D(W),W]"" S APCHSDIS=W,APCHSDUE="MAY BE DUE NOW",APCHSDAT="" D DISPLAY^APCHS11
 K APCHSDIS,APCHSDUE,APCHSDAT,APCHSTPZ,W
 Q
 ;
 ;
BI() ;EP- check to see if using new imm package or not 1/5/1999 IHS/CMI/LAB
 Q $S($O(^AUTTIMM(0))<100:0,1:1)
 ;end new subrotuine CMI/TUCSON/LAB
TDADULT ;ENTRY POINT -  immunization TETANUS DIPTHERIA (Td-ADULT)
 K APCHSTEX
 Q:APCHSAGE<12
 ;Q:'$D(^AUPNVIMM("AC",APCHSPAT))
 K APCHS
 S (APCHSDAT,APCHSDUE)=""
 S APCHSERR=$$START1^APCLDF(APCHSPAT_"^LAST IMM "_$S($$BI:9,1:"02"),"APCHS(") ;IHS/CMI/LAB - patch 3
 G:APCHSERR TDADULTX
 ; *array APCHS(1)="DATE^SERIES^IMMUNIZATION^VIMM IEN;AUPNVIMM^VISIT IEN"
 K APCHSERR
 S APCHSDIS="Td-ADULT"
 S APCHSINT=10*365
 S APCHSIVD=$S($D(APCHS(1)):9999999-$P($P(APCHS(1),U,1),".",1),1:"")
 S APCHSEXD=$S($$BI^APCHS11C:$O(^AUTTIMM("C",9,0)),1:$O(^AUTTIMM("C","02",0))),APCHSDF1=9999999.14
 D DFSURV^APCHS11 ;            computes/print immunization due date
TDADULTX ;
 K APCHS,APCHSDF1,APCHSEXD,APCHSTEX
 Q
 ;
 ;
FLU ;
 K APCHSTEX
 S (APCHSDAT,APCHSDUE)=""
 K APCHSRSK
 I $D(^ATXAX("B","SURVEILLANCE PNEUMOCOCCAL RISK")) S APCHSURP=$O(^ATXAX("B","SURVEILLANCE PNEUMOCOCCAL RISK","")) S:$D(^ATXPAT(APCHSURP,11,APCHSPAT)) APCHSRSK=""
 S %=$$FMDIFF^XLFDT(DT,$P(^DPT(APCHSPAT,0),U,3),1)
 I %<180 Q  ;quit if patient is under 6 months old
 G:(APCHSAGE<65)&('$D(APCHSRSK)) FLUX
 S APCHSDIS="INFLUENZA"
 S APCHSINT=365
 ;S APCHSFLX="INFLUENZA" ;IHS/CMI/LAB - commented out
 ;S APCHSFLX=$O(^AUTTIMM("B","INFLUENZA","")) ;IHS/CMI/LAB - commented out
 ;S:'APCHSFLX APCHSFLX=$O(^AUTTIMM("C",12,"")) ;IHS/CMI/LAB - commented out
 S APCHSFLX=$S($$BI:$O(^AUTTIMM("C",88,"")),1:$O(^AUTTIMM("C",12,""))) ;IHS/CMI/LAB - new imm package patch 3
 I 'APCHSFLX D  G DSPLY
 . S (APCHSDAT,APCHSDUE)=""
 . S APCHSTEX(1)="Influenza immunization appears indicated,"
 . S APCHSTEX(2)=" but INFLUENZA cannot be located in the"
 . S APCHSTEX(3)=" immunization type file, so the patient's"
 . S APCHSTEX(4)=" history cannot be evaluated."
 S APCHSIVD=$O(^AUPNVIMM("AA",APCHSPAT,APCHSFLX,""))
 I 'APCHSIVD S APCHSDUE="MAY BE DUE NOW",APCHSDAT="" G DSPLY
GETDATE ;
 D COMPARE^APCHS11,GETDATE^APCHS11
DSPLY ;
 S APCHSEXD=$S($$BI^APCHS11C:$O(^AUTTIMM("C",88,0)),1:$O(^AUTTIMM("C",12,0))),APCHSDF1=9999999.14 D REFDF^APCHS11
 D DISPLAY^APCHS11
FLUX ;
 K APCHSURP,APCHSRSK,APCHSFLX,APCHSTEX,APCHSEXD,APCHSDF1
 Q
 ;
 ;
TOBACCO ;ENTRY POINT - annual REVIEW OF TOBACCO USE
 Q:APCHSAGE<13  ;IHS/CMI/LAB 12/16/97
 ;
 S APCHSCAT=$O(^AUTTHF("B","TOBACCO",""))
 Q:'APCHSCAT  ;                    tobacco category does not exist
 S APCHSDIS="REVIEW OF TOBACCO USE"
 S APCHSINT=365
 D HFACTOR
TOBACCOX ;
 Q
 ;
 ;
ALCOHOL ;ENTRY POINT - annual REVIEW OF ALCOHOL USE
 Q:APCHSAGE<13  ;IHS/CMI/LAB 12/16/97
 ;
 S APCHSCAT=$O(^AUTTHF("B","ALCOHOL",""))
 Q:'APCHSCAT  ;                    alcohol/drug category does not exist
 S APCHSDIS="REVIEW OF ALCOHOL USE"
 S APCHSINT=365
 D HFACTOR
ALCOHOLX ;
 Q
 ;
HFACTOR ;EP called from TOBACCO and ALCOHOL sub-rtns
 ;IHS/CMI/LAB - modified this subroutine patch 3
 ;this had to be modified to get the last of each category
 ;it was getting the last of the first factor it found within the 
 ;category
 S APCHSHFD=0
 F  S APCHSHFD=$O(^AUTTHF("AC",APCHSCAT,APCHSHFD))  Q:'+APCHSHFD  D
 .  Q:'$D(^AUPNVHF("AA",APCHSPAT,APCHSHFD))
 .  S APCHSIVD=$O(^AUPNVHF("AA",APCHSPAT,APCHSHFD,""))
 .  Q:'APCHSIVD
 .  S APCHSONE(APCHSIVD)=""
 .  Q
 I $D(APCHSONE) D
 . S APCHSIVD=$O(APCHSONE(""))
 .  D COMPARE^APCHS11
 .  D GETDATE^APCHS11
 .  ;S APCHSONE=1
 .  Q
 I '$D(APCHSONE) S APCHSDUE="MAY BE DUE NOW",APCHSDAT=""
 D DISPLAY^APCHS11
HFACTORX ;
 K APCHSONE
 Q
 ;
 ;
PHYSCL ;ENTRY POINT -  annual PHYSICAL EXAM 
 Q:'$D(^AUPNVPOV("AC",APCHSPAT))
 K APCHS
 S APCHSERR=$$START1^APCLDF(APCHSPAT_"^LAST DX [SURVEILLANCE PHYSICAL EXAM;","APCHS(")
 G:APCHSERR PHYSCLX
 ; *array APCHS(1)="DATE^CODE^CODE^VPOV IEN;AUPNVPOV^VISIT IEN"
 K APCHSERR
 S APCHSDIS="PHYSICAL EXAM"
 S APCHSINT=365
 S APCHSIVD=$S($D(APCHS(1)):9999999-$P($P(APCHS(1),U,1),".",1),1:"")
 D DFSURV^APCHS11 ;            computes/print exam due date
PHYSCLX ;
 K APCHS
 Q
 ;
SIGMOID ;IHS/ANMC/LAB - added thisnew reminder per Dr. Murphy
 ;EVERY 5 YEARS AFTER AGE 50
 Q:APCHSAGE<50
 S APCHLAST="",APCHNEXT="" K APCHSTEX ;IHS/CMI/LAB - added for override
 W !  ;IHS/ANMC/CLS 10/01/2002
 NEW %,%1,D
 K APCHSPRC
 ;cmi/anch/maw 8/27/2007 mods for code set versioning
 N APCHSVDT
 ;S %=0 F  S %=$O(^AUPNVPRC("AC",APCHSPAT,%)) Q:%'=+%  S %1=$P(^ICD0($P(^AUPNVPRC(%,0),U),0),U) D
 S %=0 F  S %=$O(^AUPNVPRC("AC",APCHSPAT,%)) Q:%'=+%  S APCHSVDT=$P(+^AUPNVSIT($P(^AUPNVPRC(%,0),U,3),0),"."),%1=$P($$ICDOP^ICDCODE($P(^AUPNVPRC(%,0),U),APCHSVDT),U,2) D
 .I %1=48.23!(%1>45.20&(%1<45.26)) S D=$P($P(^AUPNVSIT($P(^AUPNVPRC(%,0),U,3),0),U),"."),APCHSPRC(9999999-D)=""
 ;S APCHSINT=365*5,APCHSDIS="SIGMOIDOSCOPY",APCHSIVD=$O(APCHSPRC(""))        ;IHS/ANMC/CLS 02/25/01 IHS/CMI/LAB - replaced for override
 ;cmi/anch/maw 8/27/2007 end of mods
 S APCHLAST=$O(APCHSPRC(0)) I APCHLAST]"" S APCHLAST=9999999-APCHLAST ;IHS/CMI/LAB - added for override
 ;IHS/CMI/LAB - added lines below for override
 S APCHOVR=$$OVR^APCHSMU(APCHSPAT,APCHSITI)
 I $P(APCHOVR,U)>APCHLAST D  Q
 .S X=$$DATE^APCHSMU($P(APCHOVR,U))_" (per "_$P(APCHOVR,U,2)_")" D S(X) S X=$P(APCHOVR,U,3) D S(X)
 .D SIGWT
 .Q
 S APCHSINT=365*5,APCHSDIS="COLORECTAL SCREENING",APCHSIVD=$O(APCHSPRC(""))  ;IHS/ANMC/CLS 02/25/01
 I 'APCHSIVD S APCHSDUE="MAY BE DUE NOW",APCHSDAT="" D DISPLAY^APCHS11 X APCHSURX Q
 D GETDATE^APCHS11,COMPARE^APCHS11,DISPLAY^APCHS11 X APCHSURX
 Q
TRIM(X) ;EP
 ;---> TRIM OFF ANY LEADING SPACES.
 Q:'$D(X) ""
 N I,L S L=$L(X)
 F I=1:1 Q:$E(X,I)'=" "
 Q $E(X,I,L)
SIGWT ;
 D WRITE^APCHSMU
 X APCHSURX
 Q
 ;
S(X) ;
 NEW %,C S (C,%)=0 F  S %=$O(APCHSTEX(%)) Q:%'=+%  S C=C+1
 S APCHSTEX(C+1)=X
 Q