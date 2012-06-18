BGP2CP4 ; IHS/CMI/LAB - IHS gpra print 01 Nov 2009 4:08 PM ;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
 ;
HFALL ;EP
 ;I $Y>(BGPIOSL-3) D HDR^BGP2CP Q:BGPQUIT  D L1H^BGP2CP
 ;S BGPNOBA=1
 ;D WDT^BGP2CPU2(BGPVINP)
 ;Q:BGPQUIT
 ;I $$TRANS^BGP2CU(BGPVINP) D WTT^BGP2CPU2(BGPVINP) Q:BGPQUIT
 ;D WPPDPOV^BGP2CPU(BGPVSIT)
 ;K BGPNOBA
 I $Y>(BGPIOSL-3) D HDR^BGP2CP Q:BGPQUIT  D L1H^BGP2CP
 S BGPNOBA=1
 D WRACE^BGP2CPU(DFN)
 Q:BGPQUIT
 D WDOB^BGP2CPU(DFN)
 Q:BGPQUIT
 D WZIP^BGP2CPU(DFN)
 Q:BGPQUIT
 D WINS^BGP2CPU(BGPVSIT,DFN)
 Q:BGPQUIT
 D WADM^BGP2CPU(BGPVINP)
 Q:BGPQUIT
 D WADM92^BGP2CPU(BGPVINP)
 Q:BGPQUIT
 D WADMS92^BGP2CPU(BGPVINP)
 Q:BGPQUIT
 D WDT^BGP2CPU(BGPVINP)
 Q:BGPQUIT
 D WDSGS92^BGP2CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP2CU(BGPVINP) D WTT^BGP2CPU(BGPVINP) Q:BGPQUIT
 K BGPNOBA
 D WPPDPOV^BGP2CPU(BGPVSIT)
 Q:BGPQUIT
 S BGPNOBA=1
 D OTHDPOVS^BGP2CPU(BGPVSIT)
 Q:BGPQUIT
 D WPRINPRO^BGP2CPU2
 Q:BGPQUIT
 D WOTHPROS^BGP2CPU2
 K BGPNOBA
 Q
 ;
HF1 ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP2CP Q:BGPQUIT  D L1H^BGP2CP
 D WDT^BGP2CPU2(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP2CU(BGPVINP) D WTT^BGP2CPU2(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP2CU(BGPVINP) D TRANSN Q:BGPQUIT
 D WPPDPOV^BGP2CPU2(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP2CPU2(BGPVSIT)
 Q:BGPQUIT
 S X=$$COMFORT^BGP2CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP2CPU2(X)
 Q:BGPQUIT
 S BGPPED=$$DSCHINST^BGP2CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$$DSCH^BGP2CU(BGPVINP))
 D WDSCHINT^BGP2CPU2
 Q:BGPQUIT
 D ALLALG1^BGP2CU1(DFN,DT,$$DSCH^BGP2CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP2CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP2CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP2CPU
 K BGPDATA
 D IVUD^BGP2CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP2CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP2CPU
 Q
 ;
HF1W ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP2CP Q:BGPQUIT  D L1H^BGP2CP
 D WDT^BGP2CPU2(BGPVINP)
 Q:BGPQUIT
 D WPPDPOV^BGP2CPU2(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP2CPU2(BGPVSIT)
 Q:BGPQUIT
 S X=$$COMFORT^BGP2CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP2CPU2(X)
 Q:BGPQUIT
 S BGPLVAD=$$LVADEX^BGP2CU(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP2CU(BGPVINP)) I BGPLVAD S BGPLVAD=$$DATE^BGP2UTL($P(BGPLVAD,U,3))_"  ["_$P(BGPLVAD,U,2)_"]  "_$$VAL^XBDIQ1(9000010.08,$P(BGPLVAD,U,5),.04)
 D WLVAD^BGP2CPU2
 Q:BGPQUIT
 S BGPPED=$$DSCHINST^BGP2CU(DFN,$$DSCH^BGP2CU(BGPVINP),$$DSCH^BGP2CU(BGPVINP))
 D WDSCHINT^BGP2CPU2
 Q:BGPQUIT
 D ALLALG1^BGP2CU1(DFN,DT,$$DSCH^BGP2CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP2CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP2CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP2CPU
 K BGPDATA
 D IVUD^BGP2CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP2CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP2CPU
 Q
 ;
HF2 ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP2CP Q:BGPQUIT  D L1H^BGP2CP
 D WDT^BGP2CPU2(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP2CU(BGPVINP) D WTT^BGP2CPU2(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP2CU(BGPVINP) D TRANSN Q:BGPQUIT
 D WPPDPOV^BGP2CPU2(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP2CPU2(BGPVSIT)
 Q:BGPQUIT
 S X=$$COMFORT^BGP2CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP2CPU2(X)
 Q:BGPQUIT
 K BGPDATA
 I 'BGPEXCL D
 .S BGPLVAD=$$LVADEX^BGP2CU(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP2CU(BGPVINP)) I BGPLVAD S BGPLVAD=$$DATE^BGP2UTL($P(BGPLVAD,U,3))_"  ["_$P(BGPLVAD,U,2)_"]  "_$$VAL^XBDIQ1(9000010.08,$P(BGPLVAD,U,5),.04)
 .D WLVAD^BGP2CPU2
 Q:BGPQUIT
 D LVS^BGP2CU3(DFN,$$DSCH^BGP2CU(BGPVINP),.BGPDATA,$P($P(BGPVSIT0,U),"."))
 D WLVS^BGP2CPU2
 Q:BGPQUIT
 D ALLALG1^BGP2CU1(DFN,DT,$$DSCH^BGP2CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP2CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP2CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP2CPU
 K BGPDATA
 D IVUD^BGP2CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP2CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP2CPU
 Q
 ;
HF3 ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP2CP Q:BGPQUIT  D L1H^BGP2CP
 D WDT^BGP2CPU2(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP2CU(BGPVINP) D WTT^BGP2CPU2(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP2CU(BGPVINP) D TRANSN Q:BGPQUIT
 D WPPDPOV^BGP2CPU2(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP2CPU2(BGPVSIT)
 Q:BGPQUIT
 K BGPDATA
 S BGPC=0
 D LVSD^BGP2CU1(DFN,$$FMADD^XLFDT($$DSCH^BGP2CU(BGPVINP),-365),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,0)
 D EJECFRAC^BGP2CU1(DFN,$$FMADD^XLFDT($$DSCH^BGP2CU(BGPVINP),-365),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,BGPC)
 D WLVSD^BGP2CPU
 Q:BGPQUIT
 K BGPDATA
 S X=$$COMFORT^BGP2CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP2CPU2(X)
 Q:BGPQUIT
 K BGPY,BGPDATA
 Q:BGPQUIT
 S BGPC=0
 D ALLDXS^BGP2CU2(DFN,$$FMADD^XLFDT($$DSCH^BGP2CU(BGPVINP),-365),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,BGPC,"BGP CMS AORTIC STENOSIS DXS")
 I 'BGPEXCL D WAORTIC^BGP2CPU
 Q:BGPQUIT
 K BGPDATA,BGPDX,BGPC
 S BGPXX=0
 D ANGIOED^BGP2CU6(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D HYPERKAL^BGP2CU6(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D HYPOTEN^BGP2CU6(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D RENART^BGP2CU6(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D RENAL^BGP2CU6(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 D WDXS^BGP2CPU
 K BGPDATA,BGPY
 Q:BGPQUIT
 S X=$$ACEALLEG^BGP2CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP2CU(BGPVINP))
 S Z=$$ARBALLEG^BGP2CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP2CU(BGPVINP))
 D WACEALEG^BGP2CPU
 Q:BGPQUIT
 K BGPDATA,BGPDX
 S BGPC=0
 D NMIDRUG^BGP2CU1(DFN,$$VD^APCLV(BGPVSIT),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,"BGP CMS ACEI MEDS",0)
 D NMIDRUG^BGP2CU1(DFN,$$VD^APCLV(BGPVSIT),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,"BGP CMS ARB MEDS",BGPC)
 S E=+$$CODEN^ICPTCOD("G8029")
 S BGPACPT=$$CPTI^BGP2DU(DFN,$$DSCH^BGP2CU(BGPVINP),$$DSCH^BGP2CU(BGPVINP),E) I Z]"" S Z=$$DATE^BGP2UTL($P(Z,U,2))_" [G8029]"
 D WNMIACE^BGP2CPU2
 Q:BGPQUIT
 I 'BGPEXCL D
 .S BGPLVAD=$$LVADEX^BGP2CU(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP2CU(BGPVINP)) I BGPLVAD S BGPLVAD=$$DATE^BGP2UTL($P(BGPLVAD,U,3))_"  ["_$P(BGPLVAD,U,2)_"]  "_$$VAL^XBDIQ1(9000010.08,$P(BGPLVAD,U,5),.04)
 .D WLVAD^BGP2CPU2
 Q:BGPQUIT
 S X=$$LASTMED^BGP2CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP CMS ACEI MEDS","","BGP CMS ACEI MEDS CLASS")
 S Z=$$LASTMED^BGP2CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP CMS ARB MEDS","","BGP CMS ARB MEDS CLASS")
 D WLASTACE^BGP2CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALG1^BGP2CU1(DFN,DT,$$DSCH^BGP2CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP2CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP2CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP2CPU
 K BGPDATA
 D IVUD^BGP2CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP2CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP2CPU
 Q
 ;
HF4 ;
 I $Y>(BGPIOSL-3) D HDR^BGP2CP Q:BGPQUIT  D L1H^BGP2CP
 D WDT^BGP2CPU2(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP2CU(BGPVINP) D WTT^BGP2CPU2(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP2CU(BGPVINP) D TRANSN Q:BGPQUIT
 D WPPDPOV^BGP2CPU2(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP2CPU2(BGPVSIT)
 Q:BGPQUIT
 S X=$$COMFORT^BGP2CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP2CPU2(X)
 Q:BGPQUIT
 I 'BGPEXCL D
 .S BGPLVAD=$$LVADEX^BGP2CU(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP2CU(BGPVINP)) I BGPLVAD S BGPLVAD=$$DATE^BGP2UTL($P(BGPLVAD,U,3))_"  ["_$P(BGPLVAD,U,2)_"]  "_$$VAL^XBDIQ1(9000010.08,$P(BGPLVAD,U,5),.04)
 .D WLVAD^BGP2CPU2
 Q:BGPQUIT
 K BGPDATA
 S BGPC=0
 D SMOKER^BGP2CU2(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$DSCH^BGP2CU(BGPVINP),.BGPDATA)
 D WSMOKER^BGP2CPU
 Q:BGPQUIT
 K BGPDATA
 D CESS^BGP2CU2(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$$DSCH^BGP2CU(BGPVINP),.BGPDATA)
 D WCESS^BGP2CPU
 Q:BGPQUIT
 K BGPDATA
 D CESSMEDS^BGP2CU2(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($$DSCH^BGP2CU(BGPVINP),30),.BGPDATA)
 D WCESSMED^BGP2CPU
 K BGPDATA
 Q:BGPQUIT
 D ALLALG1^BGP2CU1(DFN,DT,$$DSCH^BGP2CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP2CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP2CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP2CPU
 Q:BGPQUIT
 K BGPDATA
 D IVUD^BGP2CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP2CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP2CPU
 Q
 ;
TRANSIN ;
 I $Y>(BGPIOSL-4) D HDR^BGP2CP Q:BGPQUIT  D L1H^BGP2CP
 W !!?3,"NOTE:  Since Admission Type was ","""","Transferred,",""""," review patient's chart"
 W !,"to determine if patient should be excluded if transfer was from another"
 W !,"acute care hospital, including ER from another hospital.",!
 Q
 ;
TRANSN ;
 I $Y>(BGPIOSL-4) D HDR^BGP2CP Q:BGPQUIT  D L1H^BGP2CP
 W !!?3,"NOTE:  Since Discharge Type was ","""","Transferred,",""""," review patient's chart"
 W !,"to determine if patient should be excluded if transferred to another"
 W !,"acute care hospital or federal hospital.",!
 Q
 ;