BGP0CP11 ; IHS/CMI/LAB - IHS gpra print ;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
 ;
 ;
AMI3W ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP0CP Q:BGPQUIT  D L1H^BGP0CP
 D WDOD^BGP0CPU(DFN)
 D WDT^BGP0CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP0CU(BGPVINP) D WTT^BGP0CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP0CU(BGPVINP) D TRANSN^BGP0CP2 Q:BGPQUIT
 D WPPDPOV^BGP0CPU(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP0CPU(BGPVSIT)
 Q:BGPQUIT
 K BGPDATA
 S BGPC=0
 D LVSD^BGP0CU1(DFN,$$FMADD^XLFDT($$DSCH^BGP0CU(BGPVINP),-365),$$DSCH^BGP0CU(BGPVINP),.BGPDATA,0)
 D EJECFRAC^BGP0CU1(DFN,$$FMADD^XLFDT($$DSCH^BGP0CU(BGPVINP),-365),$$DSCH^BGP0CU(BGPVINP),.BGPDATA,BGPC)
 D WLVSD^BGP0CPU
 Q:BGPQUIT
 K BGPDATA
 S X=$$COMFORT^BGP0CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP0CPU(X)
 K BGPDATA
 K BGPY
 Q:BGPQUIT
 S X=$$ACEALLEG^BGP0CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP0CU(BGPVINP))
 S Z=$$ARBALLEG^BGP0CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP0CU(BGPVINP))
 D WACEALEG^BGP0CPU
 K BGPDATA
 S BGPC=0
 D ALLDXS^BGP0CU2(DFN,$$FMADD^XLFDT($$DSCH^BGP0CU(BGPVINP),-365),$$DSCH^BGP0CU(BGPVINP),.BGPDATA,BGPC,"BGP CMS AORTIC STENOSIS DXS")
 D WAORTIC^BGP0CPU
 Q:BGPQUIT
 K BGPDATA,BGPDX
 S BGPXX=0
 D ANGIOED^BGP0CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP0CU(BGPVINP),-365),$$DSCH^BGP0CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D HYPERKAL^BGP0CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP0CU(BGPVINP),-365),$$DSCH^BGP0CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D HYPOTEN^BGP0CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP0CU(BGPVINP),-365),$$DSCH^BGP0CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D RENART^BGP0CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP0CU(BGPVINP),-365),$$DSCH^BGP0CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D RENAL^BGP0CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP0CU(BGPVINP),-365),$$DSCH^BGP0CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 D WDXS^BGP0CPU
 K BGPDATA
 K BGPY
 Q:BGPQUIT
 K BGPDATA
 S BGPC=0
 D NMIDRUG^BGP0CU1(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA,"BGP CMS ACEI MEDS",0)
 D NMIDRUG^BGP0CU1(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA,"BGP CMS ARB MEDS",BGPC)
 D WNMIACE^BGP0CPU(.BGPDATA)
 Q:BGPQUIT
 S X=$$LASTMED^BGP0CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP CMS ACEI MEDS","","BGP CMS ACEI MEDS CLASS")
 S Z=$$LASTMED^BGP0CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP CMS ARB MEDS","","BGP CMS ARB MEDS CLASS")
 D WLASTACE^BGP0CPU
 Q:BGPQUIT
 Q:BGPQUIT
 D ALLALG1^BGP0CU1(DFN,DT,$$DSCH^BGP0CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP0CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP0CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP0CPU
 K BGPDATA
 D IVUD^BGP0CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP0CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP0CPU
 Q
 ;