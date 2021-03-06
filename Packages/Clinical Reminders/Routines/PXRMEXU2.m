PXRMEXU2 ; SLC/PKR/PJH - Reminder exchange repository utilities, #2. ;05/30/2001
 ;;1.5;CLINICAL REMINDERS;**5**;Jun 19, 2000
 ;======================================================================
FDA(IND,LC,TMPIND,FILENAME) ;Build the XML FDA output.
 N FIELD,FILENUM,INDEX,INDEX0,JND,SIENS,WPC
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="<FILEMAN_FDA>"
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="<![CDATA["
 ;Get the file number.
 S FILENUM=""
 F  S FILENUM=$O(^TMP(TMPIND,$J,IND,FILENAME,FILENUM)) Q:FILENUM=""  D
 .;Get the source ien string.
 . S SIENS=""
 . F  S SIENS=$O(^TMP(TMPIND,$J,IND,FILENAME,FILENUM,SIENS)) Q:SIENS=""  D
 .. S INDEX0=FILENUM_";"_SIENS
 ..;Get the field number and store the data.
 .. S FIELD=""
 .. F  S FIELD=$O(^TMP(TMPIND,$J,IND,FILENAME,FILENUM,SIENS,FIELD)) Q:FIELD=""  D
 ... S INDEX=INDEX0_";"_FIELD
 ...;If there is another index past the field then this is a
 ...;word-processing field.
 ... I $D(^TMP(TMPIND,$J,IND,FILENAME,FILENUM,SIENS,FIELD))=11 D
 .... S WPC=$O(^TMP(TMPIND,$J,IND,FILENAME,FILENUM,SIENS,FIELD,""),-1)
 .... S LC=LC+1
 .... S ^TMP("PXRMEXRS",$J,LC,0)=INDEX_"~WP-start~"_WPC
 .... F JND=1:1:WPC D
 ..... S LC=LC+1
 ..... S ^TMP("PXRMEXRS",$J,LC,0)=^TMP(TMPIND,$J,IND,FILENAME,FILENUM,SIENS,FIELD,JND)
 ... E  D
 .... S LC=LC+1
 .... S ^TMP("PXRMEXRS",$J,LC,0)=INDEX_"~"_^TMP(TMPIND,$J,IND,FILENAME,FILENUM,SIENS,FIELD)
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="]]>"
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="</FILEMAN_FDA>"
 Q
 ;
 ;======================================================================
IENROOT(IND,LC,TMPIND,FILENAME) ;Build the XML IEN_ROOT output.
 N INDEX,VALUE
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="<IEN_ROOT>"
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="<![CDATA["
 S INDEX=0
 F  S INDEX=$O(^TMP(TMPIND,$J,IND,FILENAME,INDEX)) Q:INDEX=""  D
 . S LC=LC+1
 . S ^TMP("PXRMEXRS",$J,LC,0)=INDEX_U_^TMP(TMPIND,$J,IND,FILENAME,INDEX)
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="]]>"
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="</IEN_ROOT>"
 Q
 ;
 ;======================================================================
STOREPR(SUCCESS,RTM,TMPIND) ;^TMP(TMPIND,$J contains data to be
 ;stored in the repository. Routines will be found in
 ;^TMP(TMPIND,$J,"ROUTINE",ROUTINE NAME,n) where n is the line number.
 ;File entries will be found in ^TMP(TMPIND,$J,N,FILENAME,indexes).
 ;This is output from the GETS^DIQ call. There are NUMF file entries.
 ;Format and store it as XML in the repository.
 N CS,DATE,DTEST,EINDEX,FDA,FILENAME,FILENUM
 N IENROOT,IND,JND,LC,NCMPNT,NEWFILE,NUMF,PT01,RNAME
 N SIENS,SOURCE,TEMP,VERSN
 ;If anything went wrong in the packing process then ^TMP(TMPIND,$J
 ;will not exist.
 I '$D(^TMP(TMPIND,$J)) S SUCCESS=0 Q
 ;
 K ^TMP("PXRMEXRS",$J)
 S ^TMP("PXRMEXRS",$J,1,0)="<?xml version=""1.0"" standalone=""yes""?>"
 S ^TMP("PXRMEXRS",$J,2,0)="<REMINDER_EXCHANGE_FILE_ENTRY>"
 S VERSN=^PXRM(800,1,"VERSION")
 S ^TMP("PXRMEXRS",$J,3,0)="<PACKAGE_VERSION>"_VERSN_"</PACKAGE_VERSION>"
 ;The pointer to the index will be on line 4 so leave room.
 S LC=4
 ;Save the source information.
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="<SOURCE>"
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="<NAME>"_^TMP(TMPIND,$J,"SRC","REMINDER")_"</NAME>"
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="<USER>"_^TMP(TMPIND,$J,"SRC","USER")_"</USER>"
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="<SITE>"_^TMP(TMPIND,$J,"SRC","SITE")_"</SITE>"
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="<DATE_PACKED>"_^TMP(TMPIND,$J,"SRC","DATE")_"</DATE_PACKED>"
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="</SOURCE>"
 ;
 ;Save the description.
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="<DESCRIPTION><![CDATA["
 S IND=0
 F  S IND=$O(^TMP(TMPIND,$J,"DESC",1,IND)) Q:+IND=0  D
 . S LC=LC+1
 . S ^TMP("PXRMEXRS",$J,LC,0)=^TMP(TMPIND,$J,"DESC",1,IND,0)
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="]]></DESCRIPTION>"
 ;
 ;Save the keywords or phrases.
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="<KEYWORDS>"
 S IND=0
 F  S IND=$O(^TMP(TMPIND,$J,"KEYWORD",1,IND)) Q:+IND=0  D
 . S TEMP=^TMP(TMPIND,$J,"KEYWORD",1,IND,0)
 . I TEMP["," D
 .. F JND=1:1:$L(TEMP,",") D
 ... S LC=LC+1
 ... S ^TMP("PXRMEXRS",$J,LC,0)="<KEYWORD>"_$P(TEMP,",",JND)_"</KEYWORD>"
 . E  D
 .. S LC=LC+1
 .. S ^TMP("PXRMEXRS",$J,LC,0)="<KEYWORD>"_TEMP_"</KEYWORD>"
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="</KEYWORDS>"
 ;
 S NCMPNT=0
 ;Do routines first.
 S RNAME=""
 F  S RNAME=$O(^TMP(TMPIND,$J,"ROUTINE",RNAME)) Q:RNAME=""  D
 . S LC=LC+1
 . S ^TMP("PXRMEXRS",$J,LC,0)="<M_ROUTINE>"
 . S NCMPNT=NCMPNT+1
 . S EINDEX(NCMPNT,"M_ROUTINE_START")=LC
 . S LC=LC+1
 . S ^TMP("PXRMEXRS",$J,LC,0)="<ROUTINE_NAME>"_RNAME_"</ROUTINE_NAME>"
 . S LC=LC+1
 . S ^TMP("PXRMEXRS",$J,LC,0)="<CODE>"
 . S LC=LC+1
 . S ^TMP("PXRMEXRS",$J,LC,0)="<![CDATA["
 . S EINDEX(NCMPNT,"ROUTINE_CODE_START")=LC+1
 . S LINE=0
 . F  S LINE=$O(^TMP(TMPIND,$J,"ROUTINE",RNAME,LINE)) Q:LINE=""  D
 .. S LC=LC+1
 .. S ^TMP("PXRMEXRS",$J,LC,0)=^TMP(TMPIND,$J,"ROUTINE",RNAME,LINE,0)
 . S LC=LC+1
 . S ^TMP("PXRMEXRS",$J,LC,0)="]]>"
 . S LC=LC+1
 . S ^TMP("PXRMEXRS",$J,LC,0)="</CODE>"
 . S LC=LC+1
 . S ^TMP("PXRMEXRS",$J,LC,0)="</M_ROUTINE>"
 . S EINDEX(NCMPNT,"ROUTINE_CODE_END")=LC-3
 ;
 ;Do file entries.
 ;For word processing fields the first line is
 ;file number;source ien string;field~WP-start~line count
 ;The next line count lines are the WP data.
 S NUMF=+$G(^TMP(TMPIND,$J,"NUMF"))
 S FILENAME=""
 F IND=1:1:NUMF D
 . F  S FILENAME=$O(^TMP(TMPIND,$J,IND,FILENAME)) Q:FILENAME=""  D
 .. I FILENAME["IENROOT" D
 ... S NEWFILE=0
 ... S IENROOT=1
 .. E  D
 ... S NEWFILE=1
 ... S IENROOT=0
 .. I NEWFILE D
 ... S FILENUM=$O(^TMP(TMPIND,$J,IND,FILENAME,""))
 ... S SIENS=$O(^TMP(TMPIND,$J,IND,FILENAME,FILENUM,""))
 ... S LC=LC+1
 ... S ^TMP("PXRMEXRS",$J,LC,0)="<FILEMAN_FILE>"
 ... S NCMPNT=NCMPNT+1
 ... S EINDEX(NCMPNT,"FILE_START")=LC
 ... S LC=LC+1
 ... S ^TMP("PXRMEXRS",$J,LC,0)="<FILE_NAME>"_FILENAME_"</FILE_NAME>"
 ... S LC=LC+1
 ... S ^TMP("PXRMEXRS",$J,LC,0)="<FILE_NUMBER>"_FILENUM_"</FILE_NUMBER>"
 ... S LC=LC+1
 ... S PT01=^TMP(TMPIND,$J,IND,FILENAME,FILENUM,SIENS,.01)
 ... S ^TMP("PXRMEXRS",$J,LC,0)="<POINT_01>"_PT01_"</POINT_01>"
 ... S LC=LC+1
 ... S ^TMP("PXRMEXRS",$J,LC,0)="<INTERNAL_ENTRY_NUMBER>"_+SIENS_"</INTERNAL_ENTRY_NUMBER>"
 ... S EINDEX(NCMPNT,"FDA_START")=LC+3
 ... D FDA(IND,.LC,TMPIND,FILENAME)
 ... S EINDEX(NCMPNT,"FDA_END")=LC-2
 ..;The ien root information always comes after the FDA.
 .. I IENROOT D
 ... S EINDEX(NCMPNT,"IEN_ROOT_START")=LC+3
 ... D IENROOT(IND,.LC,TMPIND,FILENAME)
 ... S EINDEX(NCMPNT,"IEN_ROOT_END")=LC-2
 . S LC=LC+1
 . S ^TMP("PXRMEXRS",$J,LC,0)="</FILEMAN_FILE>"
 ;Save the index.
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,4,0)="<INDEX_AT>"_LC_"</INDEX_AT>"
 S ^TMP("PXRMEXRS",$J,LC,0)="<INDEX>"
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="<NUMBER_OF_COMPONENTS>"_NCMPNT_"</NUMBER_OF_COMPONENTS>"
 F IND=1:1:NCMPNT D
 . S LC=LC+1
 . S ^TMP("PXRMEXRS",$J,LC,0)="<COMPONENT>"
 . S JND=""
 . F  S JND=$O(EINDEX(IND,JND)) Q:JND=""  D
 .. S LC=LC+1
 .. S ^TMP("PXRMEXRS",$J,LC,0)="<"_JND_">"_EINDEX(IND,JND)_"</"_JND_">"
 . S LC=LC+1
 . S ^TMP("PXRMEXRS",$J,LC,0)="</COMPONENT>"
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="</INDEX>"
 S LC=LC+1
 S ^TMP("PXRMEXRS",$J,LC,0)="</REMINDER_EXCHANGE_FILE_ENTRY>"
 ;Save the line count, checksum, and version number
 ;S GBL="^TMP(""PXRMEXRS"",$J)"
 ;S GBL=$NA(@GBL)
 ;S CS=$$HFCSGBL^PXRMEXCS(GBL)
 ;S ^TMP("PXRMEXRS",$J,1,0)=LC_U_CS_U_VERSN
 ;Establish the entry in the repository.
 S RNAME=$P(RTM,U,2)
 S SOURCE=^TMP(TMPIND,$J,"SRC","USER")_" at "_^TMP(TMPIND,$J,"SRC","SITE")
 S DATE=^TMP(TMPIND,$J,"SRC","DATE")
 S FDA(811.8,"+1,",.01)=RNAME
 S FDA(811.8,"+1,",.02)=SOURCE
 S FDA(811.8,"+1,",.03)=DATE
 D UPDATE^PXRMEXPU(.SUCCESS,.FDA,.IENROOT)
 I SUCCESS D
 . M ^PXD(811.8,IENROOT(1),100)=^TMP("PXRMEXRS",$J)
 .;Set the 0 node.
 . S ^PXD(811.8,IENROOT(1),100,0)=U_811.801_U_LC_U_LC
 .;Create the description for this repository entry.
 . N DATEP,DESC,KEYWORD,RNAME,SOURCE
 . S RNAME=^TMP(TMPIND,$J,"SRC","REMINDER")
 . S SOURCE=^TMP(TMPIND,$J,"SRC","USER")_" at "_^TMP(TMPIND,$J,"SRC","SITE")
 . S DATEP=^TMP(TMPIND,$J,"SRC","DATE")
 . S DESC="^TMP(TMPIND,$J,""DESC"")"
 . S KEYWORD="^TMP(TMPIND,$J,""KEYWORD"")"
 . D DESC^PXRMEXU1(IENROOT(1),RNAME,SOURCE,DATEP,$NA(@DESC),$NA(@KEYWORD))
 K ^TMP("PXRMEXRS",$J)
 K ^TMP(TMPIND,$J)
 Q
 ;
 ;======================================================================
XMLOUT(IEN) ;Write out the XML content of repository entry ien.
 N LC,NLINES
 S NLINES=$O(^PXD(811.8,IEN,100,""),-1)
 F LC=1:1:NLINES D
 . W !,^PXD(811.8,IEN,100,LC,0)
 Q
 ;
