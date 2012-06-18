DBTSAMP ;BAO/DMH  pull patient AMPUTATIONS DIAGNOSIS [ 02/11/1999  11:31 AM ]
 ;
 ;
 ;
START ;
 ;
AMP(DBTSRET,DBTSP)          ;dbtsret is return value, dbtsp input value of patient ien
 ;
 ;
TEST ;
 S ARRAY=0
 ;S DBTSP=13051
 ;
 D ^XBKVAR
 I DUZ(2)=4526 S DUZ(2)=2348
 S DBTS("LOC")=$P(^AUTTLOC(DUZ(2),0),"^",10)
 S DBTS("FN")="9000010.08"
 S DBTS("IEN")=0
 I '$D(^DBTSEXDI("B","AMPUTATIONS")) S DBTSRET(1)="-2"   ;may want to chg.
EX ;
 S DTCT=0   ;comment out when go with live data
 B  
 F I=1:1 S DBTS("IEN")=$O(^AUPNVPRC("AC",DBTSP,DBTS("IEN"))) Q:+DBTS("IEN")=0  D
 .S REC=$G(^AUPNVPRC(DBTS("IEN"),0))
 .Q:REC=""
 .S DBTS("PRC")=$P(REC,"^",1)    ;pointer to ICD0 op/proc. file
 .D AMPCK Q:DBTS("CFL")="N"
 .S DBTS("PRCCODE")=$P($G(^ICD0(DBTS("PRC"),0)),"^",1)
 .S DBTS("PRCNAME")=$P($G(^ICD0(DBTS("PRC"),0)),"^",4)
 .S DBTS("VDFN")=$P(REC,U,3)
 .Q:DBTS("VDFN")=""
 .S DBTS("MODDT")=$P($G(^AUPNVSIT(DBTS("VDFN"),0)),U,13)
 .S DBTS("V")=$P($G(^AUPNVSIT(DBTS("VDFN"),0)),"^",1)
 .Q:DBTS("V")=""
 .S DBTS("V")=$P(DBTS("V"),".",1)
 .Q:DBTS("V")=""
 .S DBTS("DT")=DBTS("V")
 .D DTCHK^DBTSUT
 .Q:$D(DBTS("BADDT"))
 .S DBTS("VDATE")=$E(DBTS("V"),4,5)_"/"_$E(DBTS("V"),6,7)_"/"_($E(DBTS("V"),1,3)+1700)
 .S DBTS("NAR")=$P(REC,U,4)
 .S DBTS("PNAR")=$P($G(^AUTNPOV(DBTS("NAR"),0)),"^",1)
 .D LTRT      ;check to see if left or right is in the prov. narr.
 .S DBTS("PAT")=DBTSP
 .S DBTS("CN")=$P($G(^AUPNPAT(DBTSP,41,DUZ(2),0)),"^",2)
 .S DBTS("ID")=DBTS("LOC")_"|"_DBTS("FN")_"|"_DBTS("IEN")
 .D MODCK
 .Q:DBTS("OK")="N"
 .S ARRAY=ARRAY+1
 .S DBTSRET(ARRAY)=DBTS("ID")_U_DBTS("LOC")_U_DBTS("AU")_U_DBTS("PAT")_U_"AMPUTATIONS"_U_DBTS("PRCCODE")_U_DBTS("PRCNAME")_U_DBTS("SIDE")_U_DBTS("VDATE")_U_DBTS("PNAR")
 .D LOG
 .Q
 I ARRAY=0 S DBTSRET(1)="-2"
 S $P(^DBTSPAT(DBTSP,"AMP"),"^",2)=DT
 Q
AMPCK ;
 S DBTS("CFL")="N"
 S DBTS("AMP")=$O(^DBTSEXDI("B","AMPUTATIONS",0))
 I $D(^DBTSEXDI(DBTS("AMP"),21,"B",DBTS("PRC"))) S DBTS("CFL")="Y"
 Q
LTRT ;
 S DBTS("SIDE")="U"
 I DBTS("PNAR")["LT " S DBTS("SIDE")="L" Q
 I DBTS("PNAR")["LEFT" S DBTS("SIDE")="L" Q
 I DBTS("PNAR")?1"L ".E S DBTS("SIDE")="L" Q
 I DBTS("PNAR")?.E1" L" S DBTS("SIDE")="L" Q
 I DBTS("PNAR")?.E1" LT" S DBTS("SIDE")="L" Q
 I DBTS("PNAR")["RT " S DBTS("SIDE")="R" Q
 I DBTS("PNAR")["RIGHT" S DBTS("SIDE")="R" Q
 I DBTS("PNAR")?1"R ".E S DBTS("SIDE")="R" Q
 I DBTS("PNAR")?.E1" R" S DBTS("SIDE")="R" Q
 I DBTS("PNAR")?.E1" RT" S DBTS("SIDE")="R" Q
 Q
LL ;
MODCK ;
 S DBTS("OK")="Y"
 S DBTS("AU")="A"
 Q:'$D(^DBTSPAT(DBTSP,"AMP"))
 S DBTS("MREC")=$G(^DBTSPAT(DBTSP,"AMP"))
 Q:DBTS("MREC")=""
 S DBTS("LDFN")=$P(DBTS("MREC"),U,1)
 Q:+DBTS("LDFN")<DBTS("IEN")
 S DBTS("LDT")=$P(DBTS("MREC"),U,2)
 I (+DBTS("LDT")>DBTS("MODDT")),(DBTS("LDFN")>DBTS("IEN")) S DBTS("OK")="N" Q
 I (DBTS("LDT")'>DBTS("MODDT")) S DBTS("AU")="U" Q
 S DBTS("OK")="N" Q
 Q
LOG ;  update the patient log for the type of lab test
 I '$D(DT) D ^XBKVAR 
 I '$D(^DBTSPAT(DBTSP)) D
 .K ^DBTSPAT("B",DBTSP)
 .S X=DBTSP,DINUM=X,DIC(0)="XNL",DIC="^DBTSPAT(" D FILE^DICN
 I '$D(^DBTSPAT(DBTSP,"AMP")) S ^DBTSPAT(DBTSP,"AMP")=DBTS("IEN")_"^" Q
 I $G(DBTS("LDFN"))<DBTS("IEN") S $P(^DBTSPAT(DBTSP,"AMP"),"^",1)=DBTS("IEN")
 Q