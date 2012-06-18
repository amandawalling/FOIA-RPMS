BGPMUA09 ; IHS/MSC/MGH - MI measure NQF0062 & NQF0064 ;25-Jul-2011 08:19;DU
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;Code to collect meaningful use reports
ENTRY1 ;EP Entry point for NQA0062 for nephropathy
 N START,END,BGPNUM,BGPDEN,BGPNUM,STRING,BGPHYPER,BGPHYPL
 N IEN,INV,VISIT,DATA,VDATE,VALUE,EXCEPT,FIRST,VIEN,EXCEPT,RESULT
 N CNT,DIAB,NUM,EXC,DIAB,OUTENC,OPHENC,NONENC,VENC,DIABDX,ERENC,INENC
 S (BGPDEN,BGPNUM,RESULT)=0
 S START=9999999-BGPBDATE,END=9999999-BGPEDATE,VALUE=0
 S START=START_".2359"
 S (STRING,STRING2)="",DIABDX=0
 S (DIAB,EXC,NUM)=0
 ;Pts must be >18 and <75
 ;No need to check further if no age match
 Q:BGPAGEE<18!(BGPAGEE>75)
 S CNT=0
 S FIRST=END-0.1 F  S FIRST=$O(^AUPNVSIT("AA",DFN,FIRST)) Q:FIRST=""!($P(FIRST,".",1)>START)  D
 .S IEN=0 F  S IEN=$O(^AUPNVSIT("AA",DFN,FIRST,IEN)) Q:'+IEN  D
 ..;Check provider, Only visits for chosen provider
 ..Q:'$$PRV^BGPMUUT1(IEN,BGPPROV)
 ..S OUTENC=$$VSTCPT^BGPMUUT1(DFN,IEN,"BGPMU ENCOUNTER OUTPT")
 ..I +OUTENC D VSTSTORE Q
 ..S OPHENC=$$VSTCPT^BGPMUUT1(DFN,IEN,"BGPMU OPTHAMOLOGY CPTS")
 ..I +OPHENC D VSTSTORE Q
 ..S NONENC=$$VSTCPT^BGPMUUT1(DFN,IEN,"BGPMU NON-ACUTE INPT CPT")
 ..I +NONENC D VSTSTORE Q
 ..S INENC=$$VSTCPT^BGPMUUT1(DFN,IEN,"BGPMU ACUTE INPT ENC")
 ..I +INENC D VSTSTORE Q
 ..S ERENC=$$VSTCPT^BGPMUUT1(DFN,IEN,"BGPMU DIAB ED ENCOUNTER CPT")
 ..I +ERENC D VSTSTORE Q
 ..S VENC=$$VSTPOV^BGPMUUT3(DFN,IEN,"BGPMU ENC OUTPATIENT ICD")
 ..I +VENC D VSTSTORE Q
 ;Next check to see if the patient is in the denominator
 ;Denominator is that the pt had a diabetes medicine
 ;in the last 2 years or a DX of diabetes in the last 2 years along with
 ;one inpt visit or 2 or more outpt visits
 S DIAB=$$DIAB^BGPMUA06(DFN,BGPBDATE,BGPEDATE,CNT,DIABDX)
 I +DIAB D
 .;If the patient is diabetetic, check to see if they are in the numerator
 .S NUM=$$NUM1(DFN,BGPBDATE,BGPEDATE)
 .;If not in the numerator,see if they are an exception
 .I +NUM=0&(+DIAB=2) S EXC=$$EXCEPT^BGPMUA06(DFN,BGPBDATE,BGPEDATE,DIABDX)
 .D TOTAL1(DFN,DIAB,NUM,EXC)
 Q
VSTSTORE ;Store compliant visit in array
 S CNT=CNT+1
 S VDATE=$P($G(^AUPNVSIT(IEN,0)),U,1)
 S VIEN(CNT)=IEN_U_VDATE
 S STRING(CNT)=$$DATE^BGPMUUTL(VDATE)
 Q
TOTAL1(DFN,DIAB,NUM,EXC) ;See where this patient ends up
 N PTCNT,EXCCT,DENCT,NUMCT,NOTNUM,TOTALS,DXTIME,DEN
 S TOTALS=$G(^TMP("BGPMU0062",$J,BGPMUTF,"TOT"))
 S DENCT=+$G(^TMP("BGPMU0062",$J,BGPMUTF,"DEN"))
 S NUMCT=+$G(^TMP("BGPMU0062",$J,BGPMUTF,"NUM"))
 S EXCCT=+$G(^TMP("BGPMU0062",$J,BGPMUTF,"EXC"))
 S NOTNUM=+$G(^TMP("BGPMU0062",$J,BGPMUTF,"NOT"))
 S PTCNT=TOTALS
 S PTCNT=PTCNT+1
 S (DEN,DXTIME)=""
 S DENCT=DENCT+1 S ^TMP("BGPMU0062",$J,BGPMUTF,"DEN")=DENCT
 I $P(DIAB,U,3)'="" S DXTIME=$$DATE^BGPMUUTL($P(DIAB,U,3))
 S DEN=$P(DIAB,U,2)_" "_DXTIME
 I $D(STRING(1)) S DEN=DEN_";EN:"_STRING(1)
 I $D(STRING(2)) S DEN=DEN_";EN:"_STRING(2)
 I +EXC D
 .S EXCCT=EXCCT+1 S ^TMP("BGPMU0062",$J,BGPMUTF,"EXC")=EXCCT
 .I BGPMUTF="C" S ^TMP("BGPMU0062",$J,"PAT",BGPMUTF,"EXC",PTCNT)=DFN_U_DEN_U_"EXCLUDE"
 I +NUM D
 .S NUMCT=NUMCT+1 S ^TMP("BGPMU0062",$J,BGPMUTF,"NUM")=NUMCT
 .I BGPMUTF="C" S ^TMP("BGPMU0062",$J,"PAT",BGPMUTF,"NUM",PTCNT)=DFN_U_DEN_U_"M:"_$P(NUM,U,2)_";"_$P(NUM,U,3)
 I +NUM=0&(EXC=0) D
 .S NOTNUM=NOTNUM+1 S ^TMP("BGPMU0062",$J,BGPMUTF,"NOT")=NOTNUM
 .I BGPMUTF="C" S ^TMP("BGPMU0062",$J,"PAT",BGPMUTF,"NOT",PTCNT)=DFN_U_DEN_U_"NM:"_$P(NUM,U,2)_";"_$P(NUM,U,3)
 S ^TMP("BGPMU0062",$J,BGPMUTF,"TOT")=PTCNT
 ;Setup iCare array for patient
 S BGPICARE("MU.EP.0062.1",BGPMUTF)=1_U_+NUM_U_+EXC_U_DEN_";"_$P(NUM,U,2)_";"_$P(NUM,U,3)
 Q
NUM1(DFN,BGPBDATE,BGPEDATE) ;Look for wide range of items to satisfy this measure
 N FOUND,YR1,YR2,HGBA1C,DATA,IEN,RESULT,TAX,NEPHDX,NEPHDX2,NEPCPT,NEPICD0,ACE,ARB
 N LABIEN,MICRO,VAL,VAL2,DATA2,RESULT2,SCREEN,NEPHDX
 S FOUND=0
 ;Set date 1yr before end
 N X1,X2,X S X1=BGPEDATE,X2=-365 D C^%DTC S YR1=X
 ;First check for DX of nephropathy
 S NEPHDX=$$LASTDX^BGPMUUT2(DFN,BGPBDATE,BGPEDATE,"BGPMU DIAB NEPHROPATHY DX")
 I +NEPHDX S FOUND=1_U_$P(NEPHDX,U,2)_U_$P(NEPHDX,U,3) Q FOUND
 S NEPHDX2=$$PLTAX^BGPMUUT1(DFN,"BGPMU DIAB NEPHROPATHY DX","A",BGPEDATE)
 I +NEPHDX2 S FOUND=1_U_$P(NEPHDX2,U,2)_U_$P(NEPHDX2,U,3) Q FOUND
 ;Second, check for nephropathy procedures
 S NEPCPT=$$CPT^BGPMUUT1(DFN,BGPBDATE,BGPEDATE,"BGPMU DIAB NEPH PROC CPT")
 I +NEPCPT S FOUND=1_U_$P(NEPCPT,U,2)_U_$P(NEPCPT,U,3) Q FOUND
 S NEPICD0=$$LASTPRC^BGPMUUT2(DFN,BGPBDATE,BGPEDATE,"BGPMU DIAB NEPH PROC ICD0")
 I +NEPICD0 S FOUND=1_U_$P(NEPICD0,U,2)_U_$P(NEPICD0,U,3) Q FOUND
 ;Third check to see if the patient is on an ACE/ARB
 S ACE=$$FIND^BGPMUUT8(DFN,"BGPMU ACE INHIBITOR NDC",BGPBDATE,"",BGPEDATE)
 I +ACE S FOUND=1_U_"ACE"_U_$P(ACE,U,3) Q FOUND
 S ARB=$$FIND^BGPMUUT8(DFN,"BGPMU ARB NDCS",BGPBDATE,"",BGPEDATE)
 I +ARB S FOUND=1_U_"ARB"_U_$P(ARB,U,3) Q FOUND
 ;Fourth check for microalbumin
 S MICRO=$$CPT^BGPMUUT1(DFN,BGPBDATE,BGPEDATE,"BGPMU DIAB MICRO CPT")
 I +MICRO S FOUND=1_U_$P(MICRO,U,2)_U_$P(MICRO,U,3) Q FOUND
 S TAX="BGPMU LAB CPT MICRO"
 D LABCPT^BGPMUUT5(.DATA,DFN,TAX,BGPBDATE,BGPEDATE)
 S VAL="" S VAL=$O(DATA(VAL))
 I +VAL D
 .S RESULT=$G(DATA(VAL))
 .I +RESULT>0 S FOUND=1_U_"ACR"_U_(9999999-VAL)
 E  D
 .S TAX="BGPMU LAB LOINC MICROALBUMIN"
 .D LAB^BGPMUUT5(.DATA,DFN,TAX,BGPBDATE,BGPEDATE)
 .S VAL="" S VAL=$O(DATA(VAL))
 .I VAL="" S FOUND=$$VLAB^BGPMUA08(DFN,BGPBDATE,BGPEDATE,TAX)
 .E  D
 ..S RESULT=$G(DATA(VAL))
 ..I +RESULT>0 S FOUND=1_U_"ACR"_U_(9999999-VAL)
 I +FOUND Q FOUND
 ;Fifth check for nephropathy screening
 S SCREEN=$$CPT^BGPMUUT1(DFN,YR1,BGPEDATE,"BGPMU DIAB NEPH SCREEN CPT")
 I +SCREEN S FOUND=1_U_$P(SCREEN,U,2)_U_$P(SCREEN,U,3) Q FOUND
 S TAX="BGPMU LAB CPT NEPH"
 D LABCPT^BGPMUUT5(.DATA,DFN,TAX,BGPBDATE,BGPEDATE)
 S VAL="" S VAL=$O(DATA(VAL))
 I +VAL D
 .S RESULT=$G(DATA(VAL))
 .I +RESULT>0 S FOUND=1_U_"NEP"_U_(9999999-VAL)
 E  D
 .S TAX="BGPMU LAB LOINC NEPHROPATHY"
 .D LAB^BGPMUUT5(.DATA2,DFN,TAX,BGPBDATE,BGPEDATE)
 .S VAL2="" S VAL2=$O(DATA2(VAL2))
 .I VAL2="" S FOUND=$$VLAB(DFN,BGPBDATE,BGPEDATE,TAX)
 .E  D
 ..S RESULT2=$G(DATA2(VAL2))
 ..I +RESULT2 S FOUND=1_U_"NEP"_U_(9999999-VAL2)
 Q FOUND
VLAB(DFN,BGPBDATE,BGPEDATE,TAX) ;get lab results
 N VLAB,LABVAL,LIEN
 S LABVAL=0
 S VLAB=$$LOINC^BGPMUUT2(DFN,BGPBDATE,BGPEDATE,TAX)
 I VLAB D
 .S LIEN=$P(VLAB,U,2)
 .S LABVAL=1_U_$P($G(^AUPNVLAB(LIEN,0)),U,4)_U_$P(VLAB,U,1)
 Q LABVAL
ENTRY2 ;EP  Entry point for NQA0064 for LDL<100
 N START,END,BGPNUM,BGPDEN,BGPNUM,AENC,BENC,STRING,STRING2
 N IEN,INV,VISIT,DATA,VDATE,VALUE,EXCEPT,FIRST,VIEN,EXCEPT,RESULT,INENC
 N CNT,DIAB,EXC,NUM1,NUM2,DIAB,OUTENC,OPHENC,NONENC,VENC,DIABDX,ERENC
 S (BGPDEN,BGPNUM,RESULT)=0
 S START=9999999-BGPBDATE,END=9999999-BGPEDATE,VALUE=0
 S START=START_".2359"
 S (STRING,STRING2)="",DIABDX=0
 S (DIAB,EXC,NUM)=0
 ;Pts must be >18 and <75
 ;No need to check further if no age match
 Q:BGPAGEE<18!(BGPAGEE>75)
 S CNT=0
 S FIRST=END-0.1 F  S FIRST=$O(^AUPNVSIT("AA",DFN,FIRST)) Q:FIRST=""!($P(FIRST,".",1)>START)  D
 .S IEN=0 F  S IEN=$O(^AUPNVSIT("AA",DFN,FIRST,IEN)) Q:'+IEN  D
 ..;Check provider, Only visits for chosen provider
 ..Q:'$$PRV^BGPMUUT1(IEN,BGPPROV)
 ..S OUTENC=$$VSTCPT^BGPMUUT1(DFN,IEN,"BGPMU ENCOUNTER OUTPT")
 ..I +OUTENC D VSTSTORE Q
 ..S OPHENC=$$VSTCPT^BGPMUUT1(DFN,IEN,"BGPMU OPTHAMOLOGY CPTS")
 ..I +OPHENC D VSTSTORE Q
 ..S NONENC=$$VSTCPT^BGPMUUT1(DFN,IEN,"BGPMU NON-ACUTE INPT CPT")
 ..I +NONENC D VSTSTORE Q
 ..S INENC=$$VSTCPT^BGPMUUT1(DFN,IEN,"BGPMU ACUTE INPT ENC")
 ..I +INENC D VSTSTORE Q
 ..S ERENC=$$VSTCPT^BGPMUUT1(DFN,IEN,"BGPMU DIAB ED ENCOUNTER CPT")
 ..I +ERENC D VSTSTORE Q
 ..S VENC=$$VSTPOV^BGPMUUT3(DFN,IEN,"BGPMU ENC OUTPATIENT ICD")
 ..I +VENC D VSTSTORE Q
 ;Next check to see if the patient is in the denominator
 ;Denominator is that the pt had a diabetes medicine
 ;in the last 2 years or a DX of diabetes in the last 2 years along with
 ;one inpt visit or 2 or more outpt visits
 S DIAB=$$DIAB^BGPMUA06(DFN,BGPBDATE,BGPEDATE,CNT,DIABDX)
 I +DIAB D
 .;If the patient is diabetetic, check to see if they are in the numerator
 .S NUM=$$NUM2(DFN,BGPBDATE,BGPEDATE)
 .;If not in the numerator,see if they are an exception
 .I +NUM=0&(+DIAB=2) S EXC=$$EXCEPT^BGPMUA06(DFN,BGPBDATE,BGPEDATE,DIABDX)
 .D TOTAL2(DFN,DIAB,NUM,EXC)
 Q
TOTAL2(DFN,DIAB,NUM,EXC) ;See where this patient ends up
 N PTCNT,EXCCT,DENCT,NUM1CT,NUM2CT,NOTNUM,TOTALS,DXTIME,DEN,NOTNUM1,NOTNUM2
 S TOTALS=$G(^TMP("BGPMU0064",$J,BGPMUTF,"TOT"))
 S DENCT=+$G(^TMP("BGPMU0064",$J,BGPMUTF,"DEN"))
 S NUM1CT=+$G(^TMP("BGPMU0064",$J,BGPMUTF,"NUM1"))
 S NUM2CT=+$G(^TMP("BGPMU0064",$J,BGPMUTF,"NUM2"))
 S EXCCT=+$G(^TMP("BGPMU0064",$J,BGPMUTF,"EXC"))
 S NOTNUM1=+$G(^TMP("BGPMU0064",$J,BGPMUTF,"NOT1"))
 S NOTNUM2=+$G(^TMP("BGPMU0064",$J,BGPMUTF,"NOT2"))
 S PTCNT=TOTALS
 S PTCNT=PTCNT+1
 S (DEN,DXTIME)=""
 S DENCT=DENCT+1 S ^TMP("BGPMU0064",$J,BGPMUTF,"DEN")=DENCT
 I $P(DIAB,U,3)'="" S DXTIME=$$DATE^BGPMUUTL($P(DIAB,U,3))
 S DEN=$P(DIAB,U,2)_" "_DXTIME
 I $D(STRING(1)) S DEN=DEN_";EN:"_STRING(1)
 I $D(STRING(2)) S DEN=DEN_";EN:"_STRING(2)
 I +EXC D
 .S EXCCT=EXCCT+1 S ^TMP("BGPMU0064",$J,BGPMUTF,"EXC")=EXCCT
 .I BGPMUTF="C" S ^TMP("BGPMU0064",$J,"PAT",BGPMUTF,"EXC",PTCNT)=DFN_U_DEN_U_"EXCLUDE"
 I +NUM D
 .S NUM1CT=NUM1CT+1 S ^TMP("BGPMU0064",$J,BGPMUTF,"NUM1")=NUM1CT
 .I BGPMUTF="C" S ^TMP("BGPMU0064",$J,"PAT",BGPMUTF,"NUM1",PTCNT)=DFN_U_DEN_U_"M:"_$P(NUM,U,3)_";"_$P(NUM,U,4)
 I +NUM=0&(EXC=0) D
 .S NOTNUM1=NOTNUM1+1 S ^TMP("BGPMU0064",$J,BGPMUTF,"NOT1")=NOTNUM1
 .I BGPMUTF="C" S ^TMP("BGPMU0064",$J,"PAT",BGPMUTF,"NOT1",PTCNT)=DFN_U_DEN_U_"NM:"_$P(NUM,U,3)_";"_$P(NUM,U,4)
 I $P(NUM,U,2)=1 D
 .S NUM2CT=NUM2CT+1 S ^TMP("BGPMU0064",$J,BGPMUTF,"NUM2")=NUM2CT
 .I BGPMUTF="C" S ^TMP("BGPMU0064",$J,"PAT",BGPMUTF,"NUM2",PTCNT)=DFN_U_DEN_U_"M:"_$P(NUM,U,3)_";"_$P(NUM,U,4)
 I $P(NUM,U,2)=0&(EXC=0) D
 .S NOTNUM2=NOTNUM2+1 S ^TMP("BGPMU0064",$J,BGPMUTF,"NOT2")=NOTNUM2
 .I BGPMUTF="C" S ^TMP("BGPMU0064",$J,"PAT",BGPMUTF,"NOT2",PTCNT)=DFN_U_DEN_U_"NM:"_$P(NUM,U,3)_";"_$P(NUM,U,4)
 S ^TMP("BGPMU0064",$J,BGPMUTF,"TOT")=PTCNT
 ;Setup iCare array for patient
 S BGPICARE("MU.EP.0064.1",BGPMUTF)=1_U_+NUM_U_+EXC_U_DEN_";"_$P(NUM,U,3)_";"_$P(NUM,U,4)
 S BGPICARE("MU.EP.0064.2",BGPMUTF)=1_U_+$P(NUM,U,2)_U_+EXC_U_DEN_";"_$P(NUM,U,3)_";"_$P(NUM,U,4)
 Q
NUM2(DFN,BGPBDATE,BGPEDATE) ; Find the latest LDL
 N FOUND,YR1,YR2,LDL,DATA,VAL,IEN,RESULT,TAX,CPT
 S FOUND=0_U_0
 S RESULT=0
 S CPT=$$CPT^BGPMUUT1(DFN,BGPBDATE,BGPEDATE,"BGPMU DIAB LDL CPT")
 I +CPT S FOUND=1_U_0_$P(CPT,U,2)_U_$P(CPT,U,3)
 S TAX="BGPMU DIAB LDL CPT"
 D LAB^BGPMUUT5(.DATA,DFN,TAX,BGPBDATE,BGPEDATE)
 S VAL="" S VAL=$O(DATA(VAL))
 I +VAL D
 .S RESULT=$G(DATA(VAL))
 .I RESULT<100 S FOUND=1_U_1_U_RESULT_U_(9999999-VAL)
 .E  S FOUND=1_U_0_U_RESULT_U_(9999999-VAL)
 E  D
 .S TAX="BGPMU DIAB LDL LOINC"
 .D LAB^BGPMUUT5(.DATA,DFN,TAX,BGPBDATE,BGPEDATE)
 .S VAL="" S VAL=$O(DATA(VAL))
 .I VAL'="" D
 ..S RESULT=$G(DATA(VAL))
 ..I RESULT<100 S FOUND=1_U_1_U_RESULT_U_(9999999-VAL)
 ..E  S FOUND=1_U_0_U_RESULT_U_(9999999-VAL)
 .I VAL="" D
 ..S RESULT=$$VLAB2(DFN,BGPBDATE,BGPEDATE,TAX)
 ..I +RESULT S FOUND=RESULT
 Q FOUND
VLAB2(DFN,BGPBDATE,BGPEDATE,TAX) ;Get lab results
 N VLAB,LABVAL,LIEN,VAL
 S LABVAL=0
 S VLAB=$$LOINC^BGPMUUT2(DFN,BGPBDATE,BGPEDATE,TAX)
 I +VLAB D
 .S LIEN=$P(VLAB,U,2)
 .S VAL=$P($G(^AUPNVLAB(LIEN,0)),U,4)
 .I +VAL D
 ..I VAL<100.0 S LABVAL=1_U_1_U_VAL_U_$P(VLAB,U,1)
 ..E  S LABVAL=1_U_0_U_VAL_U_$P(VLAB,U,1)
 Q LABVAL