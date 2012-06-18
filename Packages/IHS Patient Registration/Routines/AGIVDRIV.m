AGIVDRIV ;IHS/SD/EFG - DRIVER TO EXTRACT PT DATA FOR ENVOY (VERIQUEST) ; 9/30/04
 ;;7.1;PATIENT REGISTRATION;;AUG 25,2005
 N ASUFAC,AGPOP,SD,SDT,DFN,AGRECCNT,AGRECWRT
 D INIT                   ;
 D OPENIO                 ;
 I 'AGPOP D
 .D AGIVVIST
 E  D
 .W #,"Error Creating or Opening Host file"
 D CLOSE^%ZISH("AGDEVICE")  ;AGDEVICE contains host file name
 W !,"Records read: ",AGRECCNT
 W !,"Records wrtn: ",AGRECWRT
 D UPDTAGDT
 Q
INIT ;
 S (AGRECCNT,AGRECWRT,AGPOP)=0   ;Variable used to halt this process
 S (SD,SDT,DFN)=""
 Q
OPENIO ;
 D ASUFAC
 I 'AGPOP D
 .D NOW^%DTC
 .S FMDT=X
 .D YX^%DTC
 .D DATSTAMP
 .S AGFILNAM="AGVERI"_ASUFAC_"."_FMDT_HHMMSS
 D OPEN^%ZISH("AGDEVICE","/usr3/dsd/reisch/",AGFILNAM,"W")
 U IO
 Q
ASUFAC ;
 I +$G(DUZ(2))=0 D
 .S AGPOP=1                      ;No DUZ(2) value
 E  D
 .S AULOCREC=$G(^AUTTLOC(DUZ(2),0))
 .S ASUFAC=$P(AULOCREC,"^",10)
 .I AULOCREC=""!(+ASUFAC=0) D
 ..S AGPOP=2                     ;No Location record or ASUFAC value
 Q
DATSTAMP ;
 D NOW^%DTC
 S FMDT=X
 D YX^%DTC
 S AGTIME=$P(Y,"@",2)
 S HHMMSS=$TR(AGTIME,":")
 I $L(HHMMSS)=4 S HHMMSS=HHMMSS_"00"
 Q
UPDTAGDT ;
 ;UPDATE THE AUDIT FILE WITH APPROPRIATE DATA
 Q
AGIVVIST ;
 ;GET TOMORROWS DATE
START D NOW^%DTC S X1=X,X2=0 D C^%DTC S ZDT=X_".0001",EDT=X_".2359"
 ;LOOP ON FILE 44 B XREF
 S DIV=$G(DUZ(2)) Q:DIV']""
LOOPA S SD=0 F SDXX=0:0 S SD=$O(^SC("B",SD)) Q:SD=""  D CLIN
 Q
CLIN S SDFL=0 F SC=0:0 S SC=$O(^SC("B",SD,SC)) Q:'SC  I $D(^SC(SC,0)),$P(^(0),"^",3)="C" D LOOP
 Q
LOOP S SDB=0 F SDT=ZDT:0 S SDT=$O(^SC(SC,"S",SDT)) Q:'SDT!(SDT>EDT)  D MORE
 Q
MORE I $D(^SC(SC,"S",SDT,1)) F K=0:0 S K=$O(^SC(SC,"S",SDT,1,K)) Q:'K  I $P(^(K,0),"^",9)'["C" D PTL
 Q
PTL S DFN=$P(^SC(SC,"S",SDT,1,K,0),"^",1)
 S AGRECCNT=AGRECCNT+1
 Q:$S('$D(^DPT(DFN,"S",SDT,0)):1,$P(^(0),"^",2)["C"!($P(^(0),"^",2)["N"):1,1:0)
 S AGRECWRT=AGRECWRT+1
 S PATNAME=$P(^DPT(DFN,0),"^",1)
 S PATNAME=$E(PATNAME,1,15)
 S SSN=$P($G(^DPT(DFN,0)),"^",9)
 ;Get the DOB and convert it to external format (i.e. OCT 31,1949)
 S Y=$P($G(^(0)),"^",3)
 X ^DD("DD")
 S DOB=Y
 S HRN=$P(^AUPNPAT(DFN,41,DIV,0),"^",2)
 S Y=$P(SDT,".",1)
 X ^DD("DD")
 S APPTDAT=Y
 I $L(APPTDAT)=10 S APPTDAT=$E(APPTDAT,1,3)_" "_$E(APPTDAT,4,10)
 S APPTIM=$P(SDT,".",2)
 I $L(APPTIM)<4 D
 .S APPTIM=$E((APPTIM_"00"),1,4)
 S APPTIM=$E(APPTIM,1,2)_":"_$E(APPTIM,3,4)
 S NAME=$P(SD,1,15)
 I AGRECCNT=1 D
 .W APPTDAT,?13,APPTIM,?20,PATNAME,?37,SSN,?50,DOB,?63,HRN,?70,$E(SD,1,10)
 E  D
 .W !,APPTDAT,?13,APPTIM,?20,PATNAME,?37,SSN,?50,DOB,?63,HRN,?70,$E(SD,1,10)
 Q