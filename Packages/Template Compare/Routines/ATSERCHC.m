ATSERCHC ;TUCSON/DG;CONTINUATION OF DISPLAY3^ATSERCH6  [ 10/25/91  1:22 PM ]
 ;;2.5;SEARCH TEMPLATE COMPARISON;;OCT 25, 1991
DISPLAY4 ;SETS UTILITY NODES TO SEARCH SPECS FOR LATER DISPLAY (DISPLAY3 CONT)
 I ATSMTCH="",ATSEINRL S ^UTILITY("ATSPECS",$J,ATSLOOP,0)="INTERMEDIATE RESULTS compared to itself via the"
 I ATSMTCH="",'ATSEINRL S ^UTILITY("ATSPECS",$J,ATSLOOP,0)="For entries in: "_ATSEARCH(1,"SRCHNAM"),$P(^(0),U,2)="   "_ATSEARCH(1,"SRCHNAM")_" template search specifications:"
 I ATSMTCH=1 S ^UTILITY("ATSPECS",$J,ATSLOOP,0)="For entries in: "_ATSEARCH(1,"SRCHNAM")_" and also in "_ATSEARCH(2,"SRCHNAM"),$P(^(0),U,2)="   "_ATSEARCH(2,"SRCHNAM")_" template search specifications:"
 I ATSMTCH=2 S ^UTILITY("ATSPECS",$J,ATSLOOP,0)="For entries in "_ATSEARCH(1,"SRCHNAM")_" but not in "_ATSEARCH(2,"SRCHNAM"),$P(^(0),U,2)="   "_ATSEARCH(2,"SRCHNAM")_" template search specifications:"
 I ATSMTCH=3 S ^UTILITY("ATSPECS",$J,ATSLOOP,0)="For entries in "_ATSEARCH(2,"SRCHNAM")_" but not in "_ATSEARCH(1,"SRCHNAM"),$P(^(0),U,2)="   "_ATSEARCH(2,"SRCHNAM")_" template search specifications:"
 I 'ATSEINRL S ATSLIST=ATSLIST+1,^UTILITY("ATSPECS",$J,ATSLOOP,ATSLIST)=@(ATSEARCH("SEARCHSPECS",ATSI,ATSCT)_ATSVAR_",0"_")")_$S(ATSVAR=1:"   ["_ATSEARCH($S(ATSLIST=1:1,1:2),"SRCHFILENAM")_"]",1:"")
 I ATSEINRL S $P(^UTILITY("ATSPECS",$J,ATSLOOP,0),U,2)="     "_ATSEARCH(1,"FIELD")_"  "_ATSEARCH(1,"FIELDNAME")_" field   ["_ATSEARCH(1,"SRCHFILENAM")_"]"
 Q
 ;