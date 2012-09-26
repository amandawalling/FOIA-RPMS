BQIMUEXP ;GDIT/HS/ALA-MU CQ Export ; 01 Sep 2010  8:35 PM
 ;;2.3;ICARE MANAGEMENT SYSTEM;;Apr 18, 2012;Build 59
 ;
 ;
EN ; Entry Point
 NEW ASUFAC,ASUN,ASUNM,CT,DATE,DELIM,EXIEN,HDR,IEN,IN,N,VISIT,XBFLG,XBPAFN,XBS1,ZISHFL
 NEW RECORD,VDATE,XBE,XBF,ZTQUEUED,ERROR,ZISHC,ZISHDA1,BEGDT,ENDT,TMFRAME,CQN,DEN,NUM
 NEW EXC,MDATA,MS,MSNM,MSID,MSN,PRECORD
 ;
 S ZTQUEUED=1
 ;
 ;If export is turned off, quit
 I $P(^BQI(90508,1,0),U,7)=1 Q
 ;
 S ASUN=$P(^AUTTSITE(1,0),U),ASUFAC=$P($G(^AUTTLOC(ASUN,0)),U,10),ASUNM=$P(^DIC(4,ASUN,0),U)
 ;
 K ^BQIDATA($J)
 S IN=0,CT=0,DELIM="^"
 ;
 S IEN=0
 F  S IEN=$O(^XTMP("BQIMUMON",IEN)) Q:'IEN  D
 . S BEGDT=$P(^XTMP("BQIMUMON",IEN),U,1),ENDT=$P(^XTMP("BQIMUMON",IEN),U,2)
 . S TMFRAME=$$FMTE^BQIUL1(BEGDT)_" - "_$$FMTE^BQIUL1(ENDT)
 . ; ASUFAC
 . S RECORD=ASUFAC
 . ; Unique Identifier
 . S $P(RECORD,DELIM,2)=$$UID(IEN)
 . ; 90 Day Timeframe
 . S $P(RECORD,DELIM,3)=TMFRAME
 . ; Measures
 . S BQTDT=$E(ENDT,1,5)_"00"
 . S CQN=$O(^BQIPROV(IEN,50,"B",BQTDT,"")) I CQN="" Q
 . S MSN=0
 . F  S MSN=$O(^BQIPROV(IEN,50,CQN,1,MSN)) Q:'MSN  D
 .. S PRECORD=RECORD
 .. S MDATA=^BQIPROV(IEN,50,CQN,1,MSN,0)
 .. S MSID=$P(MDATA,U,1),DEN=+$P(MDATA,U,2),NUM=+$P(MDATA,U,3),EXC=+$P(MDATA,U,4)
 .. S MS=$O(^BGPMUIND(90596.11,"C",MSID,"")) I MS="" Q
 .. S MSNM=$P($G(^BGPMUIND(90596.11,MS,17)),U,3)
 .. ;
 .. S $P(PRECORD,DELIM,4)=MSID
 .. S $P(PRECORD,DELIM,5)=MSNM
 .. S $P(PRECORD,DELIM,6)=DEN
 .. S $P(PRECORD,DELIM,7)=NUM
 .. S $P(PRECORD,DELIM,8)=EXC
 .. S IN=IN+1,^BQIDATA($J,IN)=PRECORD
 ;
 D WRITE
 K ^XTMP("BQIMUMON")
 Q
 ;
UID(BQIDFN) ;EP - Given DFN return unique patient record id.
 Q $$GET1^DIQ(9999999.06,$P(^AUTTSITE(1,0),U),.32)_$E("0000000000",1,10-$L(BQIDFN))_BQIDFN
 ;
JDATE(DATE) ;EP - Format the date
 I $G(DATE)="" Q ""
 NEW A
 S A=$$FMTE^XLFDT(DATE)
 Q $E(DATE,6,7)_$$UP^XLFSTR($P(A," ",1))_(1700+$E(DATE,1,3))
 ;
DATE(D) ;
 Q (1700+$E(D,1,3))_$E(D,4,5)_$E(D,6,7)
 ;
 ;send file
WRITE ; use XBGSAVE to save the temp global (BQIDATA) to a file that is exported
 ;
 NEW XBGL,XBQ,XBQTO,XBNAR,XBMED,XBFLT,XBUF,XBFN
 S XBMED="F",XBQ="N",XBFLT=1,XBF=$J,XBE=$J
 S XBGL="BQIDATA"
 S XBNAR="MU PROVIDER CLINICAL QUALITY EXPORT"
 S ASUFAC=$P($G(^AUTTLOC($P(^AUTTSITE(1,0),U),0)),U,10)  ;asufac for file name
 S XBFN="MUCQPR_"_ASUFAC_"_"_$$DATE(DT)_".txt"
 S XBS1="MU CQ SEND"
 S XBUF=$P($G(^AUTTSITE(1,1)),"^",2)
 I XBUF="" S XBUF=$P($G(^XTV(8989.3,1,"DEV")),"^",1)
 ;
 D ^XBGSAVE
 ;
 K ^BQIDATA($J)
 Q
 ;
HOS ;EP - Hospital Export
 NEW ASUFAC,ASUN,ASUNM,CT,DATE,DELIM,EXIEN,HDR,IEN,IN,N,VISIT,XBFLG,XBPAFN,XBS1,ZISHFL
 NEW RECORD,VDATE,XBE,XBF,ZTQUEUED,ERROR,ZISHC,ZISHDA1,BEGDT,ENDT,TMFRAME,CQN,DEN,NUM
 NEW EXC,MDATA,MS,MSNM,MSID,MSN,PRECORD
 S ZTQUEUED=1
 ;
 ;If export is turned off, quit
 I $P(^BQI(90508,1,0),U,7)=1 Q
 ;
 S ASUN=$P(^BQI(90508,1,0),U),ASUFAC=$P($G(^AUTTLOC(ASUN,0)),U,10),ASUNM=$P(^DIC(4,ASUN,0),U)
 ;
 K ^BQIDATA($J)
 S IN=0,CT=0,DELIM="^"
 S BEGDT=$$GET1^DIQ(90508,"1,",12.08,"I"),ENDT=$$GET1^DIQ(90508,"1,",12.09,"I")
 S TMFRAME=$$FMTE^BQIUL1(BEGDT)_" - "_$$FMTE^BQIUL1(ENDT)
 ;
 ; ASUFAC
 S RECORD=ASUFAC
 ; 90 Day Timeframe
 S $P(RECORD,DELIM,2)=TMFRAME
 ; Measures 
 S BQTDT=$E(ENDT,1,5)_"00"
 S CQN=$O(^BQIFAC(ASUN,50,"B",BQTDT,"")) I CQN="" Q
 I $P($G(^BQIFAC(ASUN,3)),U,1)=TMFRAME Q
 S MSN=0
 F  S MSN=$O(^BQIFAC(ASUN,50,CQN,1,MSN)) Q:'MSN  D
 . S PRECORD=RECORD
 . S MDATA=^BQIFAC(ASUN,50,CQN,1,MSN,0)
 . S MSID=$P(MDATA,U,1),DEN=+$P(MDATA,U,2),NUM=+$P(MDATA,U,3),EXC=+$P(MDATA,U,4)
 . S MS=$O(^BGPMUIND(90596.11,"C",MSID,"")) I MS="" Q
 . S MSNM=$P($G(^BGPMUIND(90596.11,MS,17)),U,3)
 . ;
 . S $P(PRECORD,DELIM,3)=MSID
 . S $P(PRECORD,DELIM,4)=MSNM
 . S $P(PRECORD,DELIM,5)=DEN
 . S $P(PRECORD,DELIM,6)=NUM
 . S $P(PRECORD,DELIM,7)=EXC
 . S IN=IN+1,^BQIDATA($J,IN)=PRECORD
 NEW XBGL,XBQ,XBQTO,XBNAR,XBMED,XBFLT,XBUF,XBFN
 S XBMED="F",XBQ="N",XBFLT=1,XBF=$J,XBE=$J
 S XBGL="BQIDATA"
 S XBNAR="MU FACILITY CLINICAL QUALITY EXPORT"
 S ASUFAC=$P($G(^AUTTLOC($P(^AUTTSITE(1,0),U),0)),U,10)  ;asufac for file name
 S XBFN="MUCQFC_"_ASUFAC_"_"_$$DATE(DT)_".txt"
 S XBS1="MU CQ SEND"
 S XBUF=$P($G(^AUTTSITE(1,1)),"^",2)
 I XBUF="" S XBUF=$P($G(^XTV(8989.3,1,"DEV")),"^",1)
 ;
 D ^XBGSAVE
 ;
 K ^BQIDATA($J)
 S $P(^BQIFAC(ASUN,3),U,1)=TMFRAME
 Q