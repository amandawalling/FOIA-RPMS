	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	Q:'DIFQR(399.2)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,399.2,611,0)
	;;=611^MRI - BRAIN^1^BRAIN (INCLUDING BRAINSTEM)
	;;^UTILITY(U,$J,399.2,612,0)
	;;=612^MRI - SPINE^1^SPINAL CORD (INCLUDING SPINE)
	;;^UTILITY(U,$J,399.2,613,0)
	;;=613^*RESERVED^^*RESERVED
	;;^UTILITY(U,$J,399.2,614,0)
	;;=614^*RESERVED^^*RESERVED
	;;^UTILITY(U,$J,399.2,615,0)
	;;=615^*RESERVED^^*RESERVED
	;;^UTILITY(U,$J,399.2,616,0)
	;;=616^*RESERVED^^*RESERVED
	;;^UTILITY(U,$J,399.2,617,0)
	;;=617^*RESERVED^^*RESERVED
	;;^UTILITY(U,$J,399.2,618,0)
	;;=618^*RESERVED^^*RESERVED
	;;^UTILITY(U,$J,399.2,619,0)
	;;=619^MRI - OTHER^1^OTHER MRI
	;;^UTILITY(U,$J,399.2,620,0)
	;;=620^*RESERVED^^*RESERVED
	;;^UTILITY(U,$J,399.2,621,0)
	;;=621^MED-SUR SUPP/INCDNT RAD^^SUPPLIES INCIDENT TO RADIOLOGY
	;;^UTILITY(U,$J,399.2,622,0)
	;;=622^MED-SUR SUP/INCDNT ODX^^SUPPLIES INCIDENT TO OTHER DIAGNOSTIC SERVICES
	;;^UTILITY(U,$J,399.2,623,0)
	;;=623^*RESERVED^^*RESERVED
	;;^UTILITY(U,$J,399.2,624,0)
	;;=624^*RESERVED^^*RESERVED
	;;^UTILITY(U,$J,399.2,625,0)
	;;=625^*RESERVED^^*RESERVED
	;;^UTILITY(U,$J,399.2,626,0)
	;;=626^*RESERVED^^*RESERVED
	;;^UTILITY(U,$J,399.2,627,0)
	;;=627^*RESERVED^^*RESERVED
	;;^UTILITY(U,$J,399.2,628,0)
	;;=628^*RESERVED^^*RESERVED
	;;^UTILITY(U,$J,399.2,629,0)
	;;=629^*RESERVED^^*RESERVED
	;;^UTILITY(U,$J,399.2,630,0)
	;;=630^DRUGS^^GENERAL CLASSIFICATION (HOME IV THER.)
	;;^UTILITY(U,$J,399.2,631,0)
	;;=631^DRUG/SNGL^^SINGLE SOURCE DRUG
	;;^UTILITY(U,$J,399.2,632,0)
	;;=632^DRUG/MULT^^MULTIPLE SOURCE DRUG
	;;^UTILITY(U,$J,399.2,633,0)
	;;=633^DRUG/RSTR^^RESTRICTIVE PRESCRIPTION
	;;^UTILITY(U,$J,399.2,634,0)
	;;=634^DRUG/EPO<10,000 UNITS^^ERYTHROPOIETIN (EPO) LESS THAN 10,000 UNITS
	;;^UTILITY(U,$J,399.2,635,0)
	;;=635^DRUG/EPO>=10,000 UNITS^^ERYTHROPOIETIN (EPO) 10,000 OR MORE UNITS
	;;^UTILITY(U,$J,399.2,636,0)
	;;=636^DRUGS/DETAIL CODE^^DRUGS REQUIRING DETAILED CODING
	;;^UTILITY(U,$J,399.2,637,0)
	;;=637^*RESERVED^^*RESERVED
	;;^UTILITY(U,$J,399.2,638,0)
	;;=638^*RESERVED^^*RESERVED
	;;^UTILITY(U,$J,399.2,639,0)
	;;=639^*RESERVED^^*RESERVED
	;;^UTILITY(U,$J,399.2,640,0)
	;;=640^IV THERAPY SVC^^GENERAL CLASSIFICATION - HOME IV THERAPY SERVICES
	;;^UTILITY(U,$J,399.2,641,0)
	;;=641^NON RT NURSING/CENTRAL^^NONROUTINE NURSING, CENTRAL LINE
	;;^UTILITY(U,$J,399.2,642,0)
	;;=642^IV SITE CARE/CENTRAL^^IV SITE CARE, CENTRAL LINE
	;;^UTILITY(U,$J,399.2,643,0)
	;;=643^IV STRT/ CHNG/PERIPHAL^^IV START/CHANGE, PERIPHERAL LINE
	;;^UTILITY(U,$J,399.2,644,0)
	;;=644^NONRT NURSING/PERIPHRL^^NONROUTINE NURSING, PERIPHERAL LINE
	;;^UTILITY(U,$J,399.2,645,0)
	;;=645^TRNG PT/CAREGVR/CENTRL^^TRAINING PATIENT/CAREGIVER, CENTRAL LINE
	;;^UTILITY(U,$J,399.2,646,0)
	;;=646^TRNG DSBLPT/CENTRAL^^TRAINING, DISABLED PATIENT, CENTRAL LINE
	;;^UTILITY(U,$J,399.2,647,0)
	;;=647^TRNG/PT/CARGVR/PERIPHRL^^TRAINING, PATIENT/ CAREGIVER, PERIHERAL LINE
	;;^UTILITY(U,$J,399.2,648,0)
	;;=648^TRNG/DSBLPAT/PERIPHRL^^TRAINING,DISABLED PATIENT, PERIPHERAL LINE
	;;^UTILITY(U,$J,399.2,649,0)
	;;=649^OTHER IV THERAPY SVC^^OTHER IV THERAPY SERVICES
	;;^UTILITY(U,$J,399.2,650,0)
	;;=650^HOSPICE^^GENERAL CLASSIFICATION
	;;^UTILITY(U,$J,399.2,651,0)
	;;=651^HOSPICE/RTN HOME^^ROUTINE HOME CARE
	;;^UTILITY(U,$J,399.2,652,0)
	;;=652^HOSPICE/CTNS HOME^^CONTINUOUS HOME CARE
	;;^UTILITY(U,$J,399.2,653,0)
	;;=653^*RESERVED^^*RESERVED
	;;^UTILITY(U,$J,399.2,654,0)
	;;=654^*RESERVED^^*RESERVED
	;;^UTILITY(U,$J,399.2,655,0)
	;;=655^HOSPICE/IP RESPITE^^INPATIENT RESPITE CARE
	;;^UTILITY(U,$J,399.2,656,0)
	;;=656^HOSPICE/IP NON-RESPITE^^GENERAL INPATIENT CARE (NON-RESPITE)
	;;^UTILITY(U,$J,399.2,657,0)
	;;=657^HOSPICE/PHYSICIAN^^PHYSICIAN SERVICES