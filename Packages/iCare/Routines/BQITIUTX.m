BQITIUTX ;VNGT/HS/ALA-Get TIU Document Text ; 27 Jan 2009  2:37 PM
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
GET(DATA,TIUDA) ; EP - BQI GET TIU DOC TEXT
 ;Input
 ;  TIUDA - Internal entry number of the document
 ;
 NEW UID,II,BI,TEMP,VALMCNT,TIUDPRM,D0,HDR
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQITIUTX",UID))
 S TIUDA=$G(TIUDA,"")
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQITIUTX D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S HDR="T01024REPORT_TEXT"
 ;
 ; Call the TIU RPC - TIU GET RECORD TEXT
 D TGET^TIUSRVR1(.DATA,TIUDA)
 ;
 S @DATA@(0)=HDR_$C(30)
 ;
 S II=VALMCNT+1
 F II=0:1:VALMCNT D
 . NEW TEXT
 . S TEXT=$$STRIP^XLFSTR(@DATA@(II),"^")
 . S @DATA@(II)=TEXT_$C(13)_$C(10)
 ;
 ;Add on Visit Information
 I VALMCNT>0 D
 . NEW DIWL,DIWR,I,X
 . S X=$$VLINE^BTIUPCC(+TIUDA) I $TR(X,"^ ","")]"" D
 .. S DIWR=78,DIWL=1
 .. K ^UTILITY($J,"W")
 .. D ^DIWP
 .. S I=0 F  S I=$O(^UTILITY($J,"W",1,I)) Q:'I  D
 ... S X=$G(^UTILITY($J,"W",1,I,0))
 ... S II=II+1,@DATA@(II)=$$TRIM^XLFSTR($$STRIP^XLFSTR(X,"^"),"LR"," ")_$C(13)_$C(10)
 . S @DATA@(II)=@DATA@(II)_$C(30)
 ;
DONE ;
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
ERR ;
 D ^%ZTER
 NEW Y,ERRDTM
 S Y=$$NOW^XLFDT() X ^DD("DD") S ERRDTM=Y
 S BMXSEC="Recording that an error occurred at "_ERRDTM
 I $D(II),$D(DATA) S II=II+1,@DATA@(II)=$C(31)
 Q