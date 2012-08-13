BPMXDRV ;IHS/PHXAO/AEF - PATIENT MERGE SPECIAL ROUTINES DRIVER
 ;;1.0;IHS PATIENT MERGE;**1**;JUL 12, 2011
 ;IHS/OIT/LJF 10/26/2006 routine originated from Phoenix Area Office
 ;                       changed namespace from BZXM to BPM
 ;                       changed names of speical merge routines
 ;                       added check for REPOINT DELETED VISITS parameter
 ;IHS/DIT/ENM 08/20/10 EDR MODS ADDED BELOW
 ;;
DESC ;;----- ROUTINE DESCRIPTION
 ;;
 ;;BPMXDRV:
 ;;THIS ROUTINE CALLS OTHER SPECIAL IHS MERGE ROUTINES USED TO MERGE
 ;;DUPLICATE PATIENT DATA.
 ;;
 ;;THIS ROUTINE IS ENTERED INTO THE 'NAME OF MERGE ROUTINE' FIELD OF THE
 ;;'AFFECTS RECORD MERGE' SUBFILE OF THE PACKAGE FILE FOR THE 'IHS
 ;;PATIENT MERGE' PACKAGE.  THIS ROUTINE IS THEN RUN BY THE KERNEL
 ;;TOOLKIT DUPLICATE PATIENT MERGE SOFTWARE.  THIS ROUTINE ELIMINATES
 ;;THE NEED TO HAVE EACH INDIVIDUAL MERGE ROUTINE ENTERED INTO EACH
 ;;INDIVIDUAL ENTRY IN THE PACKAGE FILE.
 ;;
 ;;THE IHS PATIENT MERGE SOFTWARE ENTERS AT EN LINE LABEL.  IT IS EXPECTED
 ;;THAT THE FOLLOWING GLOBAL WOULD HAVE BEEN SET UP BY THE PATIENT MERGE
 ;;SOFTWARE:
 ;;  ^TMP("XDRFROM",$J,FROMIEN,TOIEN,FROMIEN_GLOBROOT,TOIEN_GLOBROOT)=FILE
 ;;EXAMPLE:
 ;;  ^TMP("XDRFROM",2804,6364,1991,"6364;DPT(","1991;DPT(")=2
 ;;WHERE =2 IS THE PARENT FILE (VA PATIENT FILE).
 ;;
 ;;$$END
 ;
 N I,X F I=1:1 S X=$P($T(DESC+I),";;",2) Q:X["$$END"  D EN^DDIOL(X)
 Q
EN(BPMRY) ;EP
 ;----- MAIN ENTRY POINT FROM DUPLICATE PATIENT MERGE SOFTWARE
 ;
 ;      BPMRY  =  TEMP GLOBAL ARRAY SET UP BY THE PATIENT MERGE
 ;                 SOFTWARE, I.E., "^TMP(""XDRFROM"",$J)"
 ;
 ; Run iCare special merge; if FROM patient being edited, it stops
 I $L($T(CHK^BQIPTMRG)) D  I $D(ZTSTOP) Q
 . NEW FR S FR=$O(@BPMRY@(0)) Q:'FR
 . I '$$CHK^BQIPTMRG(FR) S ZTSTOP=1 Q
 . D EN^BQIPTMRG(BPMRY)
 ;
 ; Flag all visits for export for FROM patients
 D VISITS^BPMMRG(BPMRY)
 ;
 ;REPOINT VARIABLE POINTER FIELDS
 D EN^BPMXVP(BPMRY)
 ;                 
 ;REPOINT PT TAXONOMY FILE POINTERS
 D EN^BPMXTAX(BPMRY)
 ;
 ;REPOINT 3P CLAIM AND BILL PATIENTS
 D EN^BPMX3PB(BPMRY)
 ;
 ;REPOINT VISIT FILE POINTERS if REPOINT DELETED VISITS parameter turned ON
 I $$GET1^DIQ(15.1,2,99999.01)="YES" D EN^BPMXVST(BPMRY)
 ;
 ;MERGE WORD PROCESSING FIELDS
 D EN^BPMXWP(BPMRY)
 ;
 ;MERGE LAB DATA (calls ^BLRMERG)
 I $L($T(EN^BLRMERG)) D EN^BPMXLR(BPMRY)
 ;
 ;MERGE PROBLEM LIST
 D EN^BPMXPRB(BPMRY)
 ;
 ;IHS/DIT/ENM 02/23/10
 ;MERGE MPI DATA (Calls ^AGMPIHLO
 S X="AGMPIHLO" X ^%ZOSF("TEST") I $T D NEWMSG^AGMPIHLO(BPMRY)
 ;
 ;IHS/DIT/ENM 08/20/10 next 7 lines sent by FJ for the EDR project
 ;Added for support of GENERIC merge trigger to subscribing applications fje 8/13/10
 ;S X="BADEMRG" X ^%ZOSF("TEST") I $T D THIS LINE IS NOT NEEDED
 S BPMFR=$O(@BPMRY@(0))
 Q:'BPMFR
 S BPMTO=$O(@BPMRY@(BPMFR,0))
 Q:'BPMTO
 S X="BPM MERGE PATIENT ADT-A40",DIC=101,DFNFROM=+BPMFR,DFNTO=+BPMTO
 D EN^XQOR
 Q