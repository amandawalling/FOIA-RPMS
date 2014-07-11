DGADTTM6 ;ALB/RMM-CREATE NEW-STYLE XREF ;1:35 PM  24 May 2005
 ;;5.3;REGISTRATION;**665,1015**;Aug 13,1993;Build 21
 ;
 ; This routine adds the new style cross-reference ADTTM4 which triggers
 ; an update for the E2-CONTACT CHANGE DATE/TIME field (#.33012) in
 ; the PATIENT File #2.
 ;
 N DGENXR,DGENRES,DGENOUT
 S DGENXR("FILE")=2
 S DGENXR("NAME")="ADTTM6"
 S DGENXR("TYPE")="MU"
 S DGENXR("USE")="A"
 S DGENXR("EXECUTION")="R"
 S DGENXR("ACTIVITY")=""
 S DGENXR("SHORT DESCR")="E2-CONTACT Cross-Reference"
 S DGENXR("DESCR",1)="This cross-reference will update the E2-CONTACT CHANGE DATE/TIME field"
 S DGENXR("DESCR",2)="when the Secondary Emergency Contact data changes for a patient."
 S DGENXR("SET")="D ECON2^DGDDDTTM"
 S DGENXR("KILL")="D ECON2^DGDDDTTM"
 S DGENXR("VAL",1)=.3311
 S DGENXR("VAL",1,"COLLATION")="F"
 S DGENXR("VAL",2)=.3312
 S DGENXR("VAL",2,"COLLATION")="F"
 S DGENXR("VAL",3)=.3313
 S DGENXR("VAL",3,"COLLATION")="F"
 S DGENXR("VAL",4)=.3314
 S DGENXR("VAL",4,"COLLATION")="F"
 S DGENXR("VAL",5)=.3315
 S DGENXR("VAL",5,"COLLATION")="F"
 S DGENXR("VAL",6)=.3316
 S DGENXR("VAL",6,"COLLATION")="F"
 S DGENXR("VAL",7)=.3317
 S DGENXR("VAL",7,"COLLATION")="F"
 S DGENXR("VAL",8)=.3318
 S DGENXR("VAL",8,"COLLATION")="F"
 S DGENXR("VAL",9)=.2204
 S DGENXR("VAL",9,"COLLATION")="F"
 D CREIXN^DDMOD(.DGENXR,"W",.DGENRES,"DGENOUT")
 Q