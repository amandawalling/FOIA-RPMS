ACHSHV01 ; IHS/ITSC/PMF - READ HI VOL NOTIFICATION REPORT ;  [ 10/16/2001   8:16 AM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;;JUN 11, 2001
 ;
 ; For description of the input records, see ACHSTM17.
 ;
 W @IOF,$$REPEAT^XLFSTR("*",52),!,"*         READ CHS HV NOTIFICATION REPORT          *",!,$$REPEAT^XLFSTR("*",52)
 I '$L($$AOP^ACHS(2,1)) D NODIR^ACHSMD0 G ABEND
 S (ACHSPTCT,ACHSFLG,ACHSPGNO,ACHSBLCT,ACHSLCT)=0
A0 ; Select printer for report.
 S %ZIS="P",%ZIS("A")="Enter Device for Error Report: "
 D ^%ZIS
 I POP U IO(0) W !,*7,"Device Not Available -- Job Aborted" G ABEND
A1 ; Open file selected in ACHSHV04.
 S ACHSZDEV=IO
 I $$OPEN^%ZISH($$AOP^ACHS(2,1),$P(^ACHSHVLG(ACHSV,1,ACHSNO,0),U,4),"R") U IO(0) W !!,"OPEN FAILURE ON DEVICE FOR FILE ",$P(^ACHSHVLG(ACHSV,1,ACHSNO,0),U,4) G ABEND
 S ACHSX=$P(ACHSUFLS(ACHSNO),U,5),ACHSFN=$E($P(^AUTTVNDR(ACHSX,0),U,1),1,30)
 S ACHSZDEV(1)=IO,IO=ACHSZDEV,ACHSZDEV=ACHSZDEV(1)
 K ACHSZDEV(1)
 D HDR1
A3 ; Read from file, loop.
 U ACHSZDEV
 R ACHSDATA:1
 G ABEND:'$T
 G END:$$STATUS^%ZISH
 S ACHSBLFG=0
 D SEARCH
 I ACHSSKIP G A3
INDRD ;
 I $L(ACHSDATA) G L1
 I ACHSBLFG=1 S ACHSBLCT=ACHSBLCT+1
 G A3
 ;
L1 ; Set data into ^ACHSHVOP(.
 G L2:ACHSFLG=1,L3:ACHSFLG=2
 S ACHSPTCT=ACHSPTCT+1
 S X=$E(ACHSDATA,1,30)
 D SPREMOV
 S Y=$P(X,",",2)
 I $E(Y,1,1)=" " S Y=$E(Y,2,$L(Y)),X=$P(X,",",1)_","_Y
 S $P(^ACHSHVOP(ACHSPTCT),U,1)=X,X=$E(ACHSDATA,31,36)
 I +X=0 S X=""
 S $P(^ACHSHVOP(ACHSPTCT),U,4)=X,$P(^ACHSHVOP(ACHSPTCT),U,5)=+$E(ACHSDATA,43,44),X=$E(ACHSDATA,49,59)
 I +X=0 S X=""
 S $P(^ACHSHVOP(ACHSPTCT),U,6)=X
 K %DT
 S X=$E(ACHSDATA,63,72)
 D ^%DT
 I Y=-1 S Y=""
 S $P(^ACHSHVOP(ACHSPTCT),U,7)=Y,$P(^ACHSHVOP(ACHSPTCT),U,8)=$E(ACHSDATA,126,132),ACHSFLG=1
 G A3
 ;
L2 ;
 S X=$E(ACHSDATA,1,25)
 D SPREMOV
 S $P(^ACHSHVOP(ACHSPTCT),U,2)=X,ACHSFLG=2
 G A3
 ;
L3 ;
 S Y=$E(ACHSDATA,22,26),X=$E(ACHSDATA,1,20)
 D SPREMOV
 S W=$P(X,",",1),Z=$P(X,",",2)
 S:$E(Z,1,1)=" " Z=$E(Z,2,$L(Z))
 S X=W_","_Z_" "_Y,$P(^ACHSHVOP(ACHSPTCT),U,3)=X
 I $P(^ACHSHVOP(ACHSPTCT),U,4)="" U IO W ?10,"MISSING CHART NUMB",?35,$P(^ACHSHVOP(ACHSPTCT),U,1),?65,$P(^ACHSHVOP(ACHSPTCT),U,8),!
 I $P(^ACHSHVOP(ACHSPTCT),U,5)=0 U IO W ?10,"MISSING FIN CLASS",?35,$P(^ACHSHVOP(ACHSPTCT),U,1),?65,$P(^ACHSHVOP(ACHSPTCT),U,8),!
 I $P(^ACHSHVOP(ACHSPTCT),U,6)="" U IO W ?10,"MISSING SOC. SEC. #",?35,$P(^ACHSHVOP(ACHSPTCT),U,1),?65,$P(^ACHSHVOP(ACHSPTCT),U,8),!
 S ACHSLCT=ACHSLCT+1
 I ACHSLCT>55 D HDR1
 S ACHSFLG=0
 G A3
 ;
END ; Write totals, close device(s), kill vars, quit.
 U IO(0)
 W !?10,"TOTAL RECORDS CONVERTED = ",ACHSPTCT
 D ^%ZISC
 S IO=ACHSZDEV,IONOFF=""
 D ^%ZISC
 K X,Y,Z,I,ACHSBLFG,ACHSPTCT,ACHSFLG,ACHSDATA,ACHSSKIP
 Q
 ;
SEARCH ; Skip records of 0 length, or begin with below literals.
 S ACHSSKIP=0
 I $L(ACHSDATA)=0 S ACHSBLFG=1 Q
 I $E(ACHSDATA,1,9)="PCC292-R2" S ACHSBLCT=0 G SRCHSKP
 I $E(ACHSDATA,1,15)="TOTAL PATIENTS:" G SRCHSKP
 I $E(ACHSDATA,1,9)="LHHS PICS" G SRCHSKP
 I $E(ACHSDATA,1,6)="NAME /" G SRCHSKP
 I $E(ACHSDATA,1,15)="MAILING ADDRESS" S ACHSSKIP=2
 Q
 ;
SRCHSKP ;
 S ACHSSKIP=1
 Q
 ;
SPREMOV ; Remove trailing spaces from X.
 F ACHSI=$L(X):-1:1 Q:$E(X,ACHSI,ACHSI)'=" "  I $E(X,ACHSI,ACHSI)=" " S X=$E(X,1,ACHSI-1)
 Q
 ;
HDR1 ; Print header.
 U IO
 S ACHSPGNO=ACHSPGNO+1,ACHSLCT=0
 W @IOF,?10,"OUTPATIENT NOTIFICATION REPORT -- CONVERSION ERRORS",?73,"PAGE ",ACHSPGNO,!?25,"FOR ",ACHSFN,!?10,$$REPEAT^XLFSTR("-",62),!?10,"TYPE OF ERROR",?35,"PATIENT NAME",?65,"ACCT # ",!?10,$$REPEAT^XLFSTR("-",62),!!
 Q
 ;
ABEND ; Display error if device noopen or read fail.
 U IO(0)
 W !!,"ABNORNAL END OF JOB"
 I $$DIR^XBDIR("E","Enter <RETURN> to Continue")
 Q
 ;
