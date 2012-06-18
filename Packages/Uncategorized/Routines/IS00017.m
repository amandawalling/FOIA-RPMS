IS00017(UIF,INOA,INODA) ;Compiled from script 'Generated: HL IHS LAB R01 LABCORP IN-I' on AUG 14, 2006
 ;Part 1
 ;Copyright 2006 SAIC
EN S X="ERROR^IS00017",@^%ZOSF("TRAP")
 G START
ERROR ;
 S X="",@^%ZOSF("TRAP") X ^INTHOS(1,3) D ERROR^INHS($$GETERR^%ZTOS)
 Q 2
START ;Initialize variables
 K FIELD,MDESC,INDA,DIPA S (INAUDIT,INLAYGO)=0
 K INREQERR,INHERR,INHERCNT,INV D SETDT^UTDT S DUZ(0)="@",DUZ("AG")="^1",DTIME=1 S (LCT,GERR)=0,INMODE="I",INVS=$P(^INRHSITE(1,0),U,12),INV=$S(INVS<2:"INV",1:"^UTILITY(""INV"",$J)"),(MULT,INSTERR)=0
 S INHLDUZ=$O(^VA(200,"B","GIS,USER",0)),DUZ=$S($G(INHLDUZ):INHLDUZ,1:.5)
 S BHLMIEN="12433"
 I $G(^INTHL7M(BHLMIEN,4,1,0))]"" X $G(^INTHL7M(BHLMIEN,4,1,0))
 K INSETID
 S INSMIN=$S($P($G(^INRHSITE(1,0)),U,14):$P(^(0),U,14),1:2500)
 S (DELIM,INDELIM)=$$FIELD^INHUT(),(SUBDELIM,INSUBDEL)=$$COMP^INHUT(),INSUBCOM=$$SUBCOMP^INHUT()
 ;Entering DATA section.
 S X=$$GL^INHOU(UIF,LCT),Y(1)=$G(X) S X=4,X=$E(Y(1),X) S DELIM=X K DXS
 S X=$$GL^INHOU(UIF,LCT),Y(1)=$G(X) S X=5,X=$E(Y(1),X) S SUBDELIM=X K DXS S INDELIMS=DELIM_$P(Y(1),DELIM,2)
 N INDEFSEG
 S INDEFSEG("MSH",0)=0
 S INDEFSEG("PID",0)=0
 S INDEFSEG("NTE",1)=1
 S INDEFSEG("PV1",0)=0
 S INDEFSEG("ORC",0)=0
 S INDEFSEG("OBR",1)=1
 S INDEFSEG("OBX",2)=1
 S INDEFSEG("NTE",3)=1
 ;Start of GROUP
 F  S MATCH=0 D  Q:'MATCH
 .D:'INVS MC^INHS
 .D GET^INHOU(UIF,0) S LINE=$G(LINE),DO=0
 .I 'MATCH,LINE?1"M"1"S"1"H".ANPC S DO=1,MATCH=1
 .E  S LCT=LCT-CNT,DO=0
 .S:DO @("@INV@(""MSH1"")")=$E($G(LINE),4)
 .S:DO @("@INV@(""MSH2"")")=$$PIECE^INHU(.LINE,DELIM,2)
 .S:DO @("@INV@(""MSH3"")")=$$PIECE^INHU(.LINE,DELIM,3)
 .S:DO @("@INV@(""MSH4"")")=$$PIECE^INHU(.LINE,DELIM,4)
 .S:DO @("@INV@(""MSH5"")")=$$PIECE^INHU(.LINE,DELIM,5)
 .S:DO @("@INV@(""MSH6"")")=$$PIECE^INHU(.LINE,DELIM,6)
 .S:DO @("@INV@(""MSH7"")")=$$PIECE^INHU(.LINE,DELIM,7)
 .S:DO @("@INV@(""MSH8"")")=$$PIECE^INHU(.LINE,DELIM,8)
 .S:DO @("@INV@(""MSH9"")")=$$PIECE^INHU(.LINE,DELIM,9)
 .S:DO @("@INV@(""MSH10"")")=$$PIECE^INHU(.LINE,DELIM,10)
 .S:DO @("@INV@(""MSH11"")")=$$PIECE^INHU(.LINE,DELIM,11)
 .S:DO @("@INV@(""MSH12"")")=$$PIECE^INHU(.LINE,DELIM,12)
 .S:DO @("@INV@(""MSH13"")")=$$PIECE^INHU(.LINE,DELIM,13)
 .S:DO @("@INV@(""MSH14"")")=$$PIECE^INHU(.LINE,DELIM,14)
 .S:DO @("@INV@(""MSH15"")")=$$PIECE^INHU(.LINE,DELIM,15)
 .S:DO @("@INV@(""MSH16"")")=$$PIECE^INHU(.LINE,DELIM,16)
 .S:DO @("@INV@(""MSH17"")")=$$PIECE^INHU(.LINE,DELIM,17)
 .Q:MATCH
 .D:'INVS MC^INHS
 .D GET^INHOU(UIF,0) S LINE=$G(LINE),DO=0
 .I 'MATCH,LINE?1"P"1"I"1"D".ANPC S DO=1,MATCH=1
 .E  S LCT=LCT-CNT,DO=0
 .S:DO @("@INV@(""PID1"")")=$$PIECE^INHU(.LINE,DELIM,2)
 .S:DO @("@INV@(""PID2"")")=$$PIECE^INHU(.LINE,DELIM,3)
 .S:DO @("@INV@(""PID3"")")=$$PIECE^INHU(.LINE,DELIM,4)
 .S:DO @("@INV@(""PID4"")")=$$PIECE^INHU(.LINE,DELIM,5)
 .S:DO @("@INV@(""PID5"")")=$$PIECE^INHU(.LINE,DELIM,6)
 .S:DO @("@INV@(""PID6"")")=$$PIECE^INHU(.LINE,DELIM,7)
 .S:DO @("@INV@(""PID7"")")=$$PIECE^INHU(.LINE,DELIM,8)
 .S:DO @("@INV@(""PID8"")")=$$PIECE^INHU(.LINE,DELIM,9)
 .S:DO @("@INV@(""PID9"")")=$$PIECE^INHU(.LINE,DELIM,10)
 .S:DO @("@INV@(""PID10"")")=$$PIECE^INHU(.LINE,DELIM,11)
 .S:DO @("@INV@(""PID11"")")=$$PIECE^INHU(.LINE,DELIM,12)
 .S:DO @("@INV@(""PID12"")")=$$PIECE^INHU(.LINE,DELIM,13)
 .S:DO @("@INV@(""PID13"")")=$$PIECE^INHU(.LINE,DELIM,14)
 .S:DO @("@INV@(""PID14"")")=$$PIECE^INHU(.LINE,DELIM,15)
 .S:DO @("@INV@(""PID15"")")=$$PIECE^INHU(.LINE,DELIM,16)
 .S:DO @("@INV@(""PID16"")")=$$PIECE^INHU(.LINE,DELIM,17)
 .S:DO @("@INV@(""PID17"")")=$$PIECE^INHU(.LINE,DELIM,18)
 .S:DO @("@INV@(""PID18"")")=$$PIECE^INHU(.LINE,DELIM,19)
 .S:DO @("@INV@(""PID19"")")=$$PIECE^INHU(.LINE,DELIM,20)
 .S:DO @("@INV@(""PID20"")")=$$PIECE^INHU(.LINE,DELIM,21)
 .S:DO @("@INV@(""PID21"")")=$$PIECE^INHU(.LINE,DELIM,22)
 .S:DO @("@INV@(""PID22"")")=$$PIECE^INHU(.LINE,DELIM,23)
 .S:DO @("@INV@(""PID23"")")=$$PIECE^INHU(.LINE,DELIM,24)
 .S:DO @("@INV@(""PID24"")")=$$PIECE^INHU(.LINE,DELIM,25)
 .S:DO @("@INV@(""PID25"")")=$$PIECE^INHU(.LINE,DELIM,26)
 .S:DO @("@INV@(""PID26"")")=$$PIECE^INHU(.LINE,DELIM,27)
 .S:DO @("@INV@(""PID27"")")=$$PIECE^INHU(.LINE,DELIM,28)
 .S:DO @("@INV@(""PID28"")")=$$PIECE^INHU(.LINE,DELIM,29)
 .S:DO @("@INV@(""PID29"")")=$$PIECE^INHU(.LINE,DELIM,30)
 .S:DO @("@INV@(""PID30"")")=$$PIECE^INHU(.LINE,DELIM,31)
 .S:DO @("@INV@(""PID31"")")=$$PIECE^INHU(.LINE,DELIM,32)
 .S:DO @("@INV@(""PID32"")")=$$PIECE^INHU(.LINE,DELIM,33)
 .S:DO @("@INV@(""PID33"")")=$$PIECE^INHU(.LINE,DELIM,34)
 .S:DO @("@INV@(""PID34"")")=$$PIECE^INHU(.LINE,DELIM,35)
 .S:DO @("@INV@(""PID35"")")=$$PIECE^INHU(.LINE,DELIM,36)
 .S:DO @("@INV@(""PID36"")")=$$PIECE^INHU(.LINE,DELIM,37)
 .S:DO @("@INV@(""PID37"")")=$$PIECE^INHU(.LINE,DELIM,38)
 .S:DO @("@INV@(""PID38"")")=$$PIECE^INHU(.LINE,DELIM,39)
 .Q:MATCH
 .Q
 ;WHILE $P(DATA,DELIM)="NTE"
 S INI(1)=1 F  S DATA=$$GL^INHOU(UIF,LCT) Q:'$$CHECKSEG^INHOU("NTE",0,1)  D  S INI(1)=INI(1)+1
 .D:'INVS MC^INHS
 .D GET^INHOU(UIF,0) S LINE=$G(LINE),DO=1
 .S:DO @("@INV@(""NTE1"",INI(1))")=$$PIECE^INHU(.LINE,DELIM,2)
 .S:DO @("@INV@(""NTE2"",INI(1))")=$$PIECE^INHU(.LINE,DELIM,3)
 .S:DO @("@INV@(""NTE3"",INI(1))")=$$PIECE^INHU(.LINE,DELIM,4)
 .S:DO @("@INV@(""NTE4"",INI(1))")=$$PIECE^INHU(.LINE,DELIM,5)
 .Q
 ;Start of GROUP
 F  S MATCH=0 D  Q:'MATCH
 .D:'INVS MC^INHS
 .D GET^INHOU(UIF,0) S LINE=$G(LINE),DO=0
 .I 'MATCH,LINE?1"P"1"V"1"1".ANPC S DO=1,MATCH=1
 .E  S LCT=LCT-CNT,DO=0
 .S:DO @("@INV@(""PV11"")")=$$PIECE^INHU(.LINE,DELIM,2)
 .S:DO @("@INV@(""PV12"")")=$$PIECE^INHU(.LINE,DELIM,3)
 .S:DO @("@INV@(""PV13"")")=$$PIECE^INHU(.LINE,DELIM,4)
 .S:DO @("@INV@(""PV14"")")=$$PIECE^INHU(.LINE,DELIM,5)
 .S:DO @("@INV@(""PV15"")")=$$PIECE^INHU(.LINE,DELIM,6)
 .S:DO @("@INV@(""PV16"")")=$$PIECE^INHU(.LINE,DELIM,7)
 .S:DO @("@INV@(""PV17"")")=$$PIECE^INHU(.LINE,DELIM,8)
 .S:DO @("@INV@(""PV18"")")=$$PIECE^INHU(.LINE,DELIM,9)
 .S:DO @("@INV@(""PV19"")")=$$PIECE^INHU(.LINE,DELIM,10)
 .S:DO @("@INV@(""PV110"")")=$$PIECE^INHU(.LINE,DELIM,11)
 .S:DO @("@INV@(""PV111"")")=$$PIECE^INHU(.LINE,DELIM,12)
 .S:DO @("@INV@(""PV112"")")=$$PIECE^INHU(.LINE,DELIM,13)
 .S:DO @("@INV@(""PV113"")")=$$PIECE^INHU(.LINE,DELIM,14)
 .S:DO @("@INV@(""PV114"")")=$$PIECE^INHU(.LINE,DELIM,15)
 .S:DO @("@INV@(""PV115"")")=$$PIECE^INHU(.LINE,DELIM,16)
 .S:DO @("@INV@(""PV116"")")=$$PIECE^INHU(.LINE,DELIM,17)
 .S:DO @("@INV@(""PV117"")")=$$PIECE^INHU(.LINE,DELIM,18)
 .S:DO @("@INV@(""PV118"")")=$$PIECE^INHU(.LINE,DELIM,19)
 .S:DO @("@INV@(""PV119"")")=$$PIECE^INHU(.LINE,DELIM,20)
 .S:DO @("@INV@(""PV120"")")=$$PIECE^INHU(.LINE,DELIM,21)
 .S:DO @("@INV@(""PV121"")")=$$PIECE^INHU(.LINE,DELIM,22)
 .S:DO @("@INV@(""PV122"")")=$$PIECE^INHU(.LINE,DELIM,23)
 .S:DO @("@INV@(""PV123"")")=$$PIECE^INHU(.LINE,DELIM,24)
 .S:DO @("@INV@(""PV124"")")=$$PIECE^INHU(.LINE,DELIM,25)
 .S:DO @("@INV@(""PV125"")")=$$PIECE^INHU(.LINE,DELIM,26)
 .S:DO @("@INV@(""PV126"")")=$$PIECE^INHU(.LINE,DELIM,27)
 .S:DO @("@INV@(""PV127"")")=$$PIECE^INHU(.LINE,DELIM,28)
 .S:DO @("@INV@(""PV128"")")=$$PIECE^INHU(.LINE,DELIM,29)
 .S:DO @("@INV@(""PV129"")")=$$PIECE^INHU(.LINE,DELIM,30)
 .S:DO @("@INV@(""PV130"")")=$$PIECE^INHU(.LINE,DELIM,31)
 .S:DO @("@INV@(""PV131"")")=$$PIECE^INHU(.LINE,DELIM,32)
 .S:DO @("@INV@(""PV132"")")=$$PIECE^INHU(.LINE,DELIM,33)
 .S:DO @("@INV@(""PV133"")")=$$PIECE^INHU(.LINE,DELIM,34)
 .S:DO @("@INV@(""PV134"")")=$$PIECE^INHU(.LINE,DELIM,35)
 .S:DO @("@INV@(""PV135"")")=$$PIECE^INHU(.LINE,DELIM,36)
 .S:DO @("@INV@(""PV136"")")=$$PIECE^INHU(.LINE,DELIM,37)
9 .D EN^IS00017A
 G C1^IS00017A