BGP8CP1 ; IHS/CMI/LAB - IHS gpra print ;
 ;;8.0;IHS CLINICAL REPORTING;**2**;MAR 12, 2008
 ;
 ;
AMIALL ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP8CP Q:BGPQUIT  D L1H^BGP8CP
 S BGPNOBA=1
 D WRACE^BGP8CPU(DFN)
 Q:BGPQUIT
 D WDOB^BGP8CPU(DFN)
 Q:BGPQUIT
 D WZIP^BGP8CPU(DFN)
 Q:BGPQUIT
 D WINS^BGP8CPU(BGPVSIT,DFN)
 Q:BGPQUIT
 D WADM^BGP8CPU(BGPVINP)
 Q:BGPQUIT
 D WADM92^BGP8CPU(BGPVINP)
 Q:BGPQUIT
 D WADMS92^BGP8CPU(BGPVINP)
 Q:BGPQUIT
 D WDT^BGP8CPU(BGPVINP)
 Q:BGPQUIT
 D WDSGS92^BGP8CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP8CU(BGPVINP) D WTT^BGP8CPU(BGPVINP) Q:BGPQUIT
 K BGPNOBA
 D WPPDPOV^BGP8CPU(BGPVSIT)
 Q:BGPQUIT
 S BGPNOBA=1
 D OTHDPOVS^BGP8CPU(BGPVSIT)
 Q:BGPQUIT
 D WPRINPRO^BGP8CPU2
 Q:BGPQUIT
 D WOTHPROS^BGP8CPU2
 K BGPNOBA
 Q
 ;
AMI1 ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP8CP Q:BGPQUIT  D L1H^BGP8CP
 I $$TRANSIN^BGP8CU(BGPVINP) D TRANSIN^BGP8CP3 Q:BGPQUIT
 D WDT^BGP8CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP8CU(BGPVINP) D WTT^BGP8CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP8CU(BGPVINP),$$DODA^BGP8CU(BGPVSIT,BGPVINP) D TRANSN^BGP8CP2 Q:BGPQUIT
 D WPPDPOV^BGP8CPU(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP8CPU(BGPVSIT)
 Q:BGPQUIT
 S X=$$COMFORT^BGP8CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP8CPU(X)
 Q:BGPQUIT
 K BGPY,BGPDATA
 D NMIDRUG^BGP8CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-1),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA,"DM AUDIT ASPIRIN DRUGS",0)
 D WNMIASP^BGP8CPU
 Q:BGPQUIT
 K X
 S X=$$LASTMED^BGP8CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"DM AUDIT ASPIRIN DRUGS") I X]"" S X="Last Outpatient Rx: "_X
 K BGPUD
 D IVUD^BGP8CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP8CU(BGPVINP),$O(^ATXAX("B","DM AUDIT ASPIRIN DRUGS",0)),.BGPUD)
 D WLASTASP^BGP8CPU
 Q:BGPQUIT
 S X=$$LASTASPC^BGP8CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30))
 D WASPCPT^BGP8CPU(X)
 Q:BGPQUIT
 S X=$$LASTMED^BGP8CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP ANTI-PLATELET DRUGS","","BGP CMS ANTI-PLATELET CLASS") I X]"" S X="Last Outpatient Rx: "_X
 K BGPUD
 D IVUD^BGP8CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP8CU(BGPVINP),$O(^ATXAX("B","BGP ANTI-PLATELET DRUGS",0)),.BGPUD,$O(^ATXAX("B","BGP ANTI-PLATELET DRUGS",0)))
 D WLASTAP^BGP8CPU
 Q:BGPQUIT
 D ALLALG1^BGP8CU1(DFN,DT,$$DSCH^BGP8CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP8CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP8CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP8CPU
 K BGPDATA
 D IVUD^BGP8CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP8CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP8CPU
 Q
AMI1W ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP8CP Q:BGPQUIT  D L1H^BGP8CP
 I $$TRANSIN^BGP8CU(BGPVINP) D TRANSIN^BGP8CP3 Q:BGPQUIT
 D WDOD^BGP8CPU(DFN)
 Q:BGPQUIT
 D WDT^BGP8CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP8CU(BGPVINP) D WTT^BGP8CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP8CU(BGPVINP),$$DODA^BGP8CU(BGPVSIT,BGPVINP) D TRANSN^BGP8CP2 Q:BGPQUIT
 D WPPDPOV^BGP8CPU(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP8CPU(BGPVSIT)
 Q:BGPQUIT
 S X=$$COMFORT^BGP8CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP8CPU(X)
 Q:BGPQUIT
 S X=$$ASAALLEG^BGP8CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP8CU(BGPVINP)),X=$P(X,U,2,999)
 D WASAALEG^BGP8CPU
 Q:BGPQUIT
 K BGPDATA
 D WARRX^BGP8CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-180),$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),1,.BGPDATA)
 D WWARRX^BGP8CPU
 Q:BGPQUIT
 K BGPDATA,BGPY
 D NMIDRUG^BGP8CU1(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA,"DM AUDIT ASPIRIN DRUGS",0)
 D WNMIASP^BGP8CPU
 Q:BGPQUIT
 K X
 S X=$$LASTMED^BGP8CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"DM AUDIT ASPIRIN DRUGS") I X]"" S X="Last Outpatient Rx: "_X
 K BGPUD
 D IVUD^BGP8CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP8CU(BGPVINP),$O(^ATXAX("B","DM AUDIT ASPIRIN DRUGS",0)),.BGPUD)
 D WLASTASP^BGP8CPU
 Q:BGPQUIT
 S X=$$LASTASPC^BGP8CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30))
 D WASPCPT^BGP8CPU(X)
 Q:BGPQUIT
 S X=$$LASTMED^BGP8CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP ANTI-PLATELET DRUGS","","BGP CMS ANTI-PLATELET CLASS") I X]"" S X="Last Outpatient RX: "_X
 K BGPUD
 D IVUD^BGP8CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP8CU(BGPVINP),$O(^ATXAX("B","BGP ANTI-PLATELET DRUGS",0)),.BGPUD,$O(^ATXAX("B","BGP ANTI-PLATELET DRUGS",0)))
 D WLASTAP^BGP8CPU
 Q:BGPQUIT
 D ALLALG1^BGP8CU1(DFN,DT,$$DSCH^BGP8CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP8CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP8CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP8CPU
 Q:BGPQUIT
 K BGPDATA
 D IVUD^BGP8CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP8CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP8CPU
 Q
AMI2 ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP8CP Q:BGPQUIT  D L1H^BGP8CP
 D WDT^BGP8CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP8CU(BGPVINP) D WTT^BGP8CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP8CU(BGPVINP) D TRANSN^BGP8CP2 Q:BGPQUIT
 D WPPDPOV^BGP8CPU(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP8CPU(BGPVSIT)
 Q:BGPQUIT
 S X=$$COMFORT^BGP8CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP8CPU(X)
 Q:BGPQUIT
 K BGPY,BGPDATA
 D NMIDRUG^BGP8CU1(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA,"DM AUDIT ASPIRIN DRUGS",0)
 D WNMIASP^BGP8CPU
 Q:BGPQUIT
 S X=$$LASTMED^BGP8CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"DM AUDIT ASPIRIN DRUGS") I X]"" S X="Last Outpatient Rx: "_X
 K BGPUD
 D IVUD^BGP8CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP8CU(BGPVINP),$O(^ATXAX("B","DM AUDIT ASPIRIN DRUGS",0)),.BGPUD)
 D WLASTASP^BGP8CPU
 Q:BGPQUIT
 S X=$$LASTASPC^BGP8CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30))
 D WASPCPT^BGP8CPU(X)
 Q:BGPQUIT
 S X=$$LASTMED^BGP8CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP ANTI-PLATELET DRUGS","","BGP CMS ANTI-PLATELET CLASS") I X]"" S X="Last Outpatient RX: "_X
 K BGPUD
 D IVUD^BGP8CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP8CU(BGPVINP),$O(^ATXAX("B","BGP ANTI-PLATELET DRUGS",0)),.BGPUD,$O(^ATXAX("B","BGP ANTI-PLATELET DRUGS",0)))
 D WLASTAP^BGP8CPU
 Q:BGPQUIT
 D ALLALG1^BGP8CU1(DFN,DT,$$DSCH^BGP8CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP8CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP8CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP8CPU
 K BGPDATA
 D IVUD^BGP8CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP8CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP8CPU
 Q
AMI2W ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP8CP Q:BGPQUIT  D L1H^BGP8CP
 D WDOD^BGP8CPU(DFN)
 Q:BGPQUIT
 D WDT^BGP8CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP8CU(BGPVINP) D WTT^BGP8CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP8CU(BGPVINP) D TRANSN^BGP8CP2 Q:BGPQUIT
 D WPPDPOV^BGP8CPU(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP8CPU(BGPVSIT)
 Q:BGPQUIT
 S X=$$COMFORT^BGP8CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP8CPU(X)
 Q:BGPQUIT
 S X=$$ASAALLEG^BGP8CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP8CU(BGPVINP))
 D WASAALEG^BGP8CPU
 Q:BGPQUIT
 K BGPDATA
 D WARRX^BGP8CU1(DFN,$P($P(^AUPNVINP(BGPVINP,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),1,.BGPDATA)
 D WWARRX^BGP8CPU
 Q:BGPQUIT
 K BGPDATA
 D NMIDRUG^BGP8CU1(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA,"DM AUDIT ASPIRIN DRUGS",0)
 D WNMIASP^BGP8CPU
 Q:BGPQUIT
 S X=$$LASTMED^BGP8CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"DM AUDIT ASPIRIN DRUGS") I X]"" S X="Last Outpatient Rx: "_X
 K BGPUD
 D IVUD^BGP8CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP8CU(BGPVINP),$O(^ATXAX("B","DM AUDIT ASPIRIN DRUGS",0)),.BGPUD)
 D WLASTASP^BGP8CPU
 Q:BGPQUIT
 S X=$$LASTASPC^BGP8CU1(DFN,$P($P(^AUPNVINP(BGPVINP,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WASPCPT^BGP8CPU(X)
 Q:BGPQUIT
 S X=$$LASTMED^BGP8CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP ANTI-PLATELET DRUGS","","BGP CMS ANTI-PLATELET CLASS") I X]"" S X="Last Outpatient RX: "_X
 K BGPUD
 D IVUD^BGP8CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP8CU(BGPVINP),$O(^ATXAX("B","BGP ANTI-PLATELET DRUGS",0)),.BGPUD,$O(^ATXAX("B","BGP ANTI-PLATELET DRUGS",0)))
 D WLASTAP^BGP8CPU
 Q:BGPQUIT
 D ALLALG1^BGP8CU1(DFN,DT,$$DSCH^BGP8CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP8CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP8CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP8CPU
 Q:BGPQUIT
 K BGPDATA
 D IVUD^BGP8CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP8CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP8CPU
 Q
AMI3 ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP8CP Q:BGPQUIT  D L1H^BGP8CP
 D WDT^BGP8CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP8CU(BGPVINP) D WTT^BGP8CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP8CU(BGPVINP) D TRANSN^BGP8CP2 Q:BGPQUIT
 D WPPDPOV^BGP8CPU(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP8CPU(BGPVSIT)
 Q:BGPQUIT
 K BGPDATA
 S BGPC=0
 D LVSD^BGP8CU1(DFN,$$FMADD^XLFDT($$DSCH^BGP8CU(BGPVINP),-365),$$DSCH^BGP8CU(BGPVINP),.BGPDATA,0)
 D EJECFRAC^BGP8CU1(DFN,$$FMADD^XLFDT($$DSCH^BGP8CU(BGPVINP),-365),$$DSCH^BGP8CU(BGPVINP),.BGPDATA,BGPC)
 D WLVSD^BGP8CPU
 Q:BGPQUIT
 K BGPDATA
 S X=$$COMFORT^BGP8CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP8CPU(X)
 Q:BGPQUIT
 K BGPDATA,BGPDX
 S BGPXX=0
 D ANGIOED^BGP8CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP8CU(BGPVINP),-365),$$DSCH^BGP8CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D HYPERKAL^BGP8CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP8CU(BGPVINP),-365),$$DSCH^BGP8CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D HYPOTEN^BGP8CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP8CU(BGPVINP),-365),$$DSCH^BGP8CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D RENART^BGP8CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP8CU(BGPVINP),-365),$$DSCH^BGP8CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D RENAL^BGP8CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP8CU(BGPVINP),-365),$$DSCH^BGP8CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 D WDXS^BGP8CPU
 K BGPDATA
 K BGPY
 Q:BGPQUIT
 S X=$$ACEALLEG^BGP8CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP8CU(BGPVINP))
 S Z=$$ARBALLEG^BGP8CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP8CU(BGPVINP))
 D WACEALEG^BGP8CPU
 Q:BGPQUIT
 K BGPDATA
 S BGPC=0
 D NMIDRUG^BGP8CU1(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA,"BGP CMS ACEI MEDS",0)
 D NMIDRUG^BGP8CU1(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA,"BGP CMS ARB MEDS",BGPC)
 D WNMIACE^BGP8CPU(.BGPDATA)
 Q:BGPQUIT
 S X=$$LASTMED^BGP8CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP CMS ACEI MEDS","","BGP CMS ACEI MEDS CLASS")
 S Z=$$LASTMED^BGP8CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP CMS ARB MEDS","","BGP CMS ARB MEDS CLASS")
 D WLASTACE^BGP8CPU
 Q:BGPQUIT
 D ALLALG1^BGP8CU1(DFN,DT,$$DSCH^BGP8CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP8CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP8CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP8CPU
 K BGPDATA
 D IVUD^BGP8CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP8CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP8CPU
 Q
 ;
AMI3W ;EP
 D AMI3W^BGP8CP11
 Q