IBINI0D3	; ; 21-MAR-1994
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,"DIPT",1080,0)
	;;=IB DO NOT USE^2930429.1049^@^354^1453^@^2930510
	;;^UTILITY(U,$J,"DIPT",1080,"DXS",1,9)
	;;=I $G(IBLET) D SCR^IBARXEPL I $G(IBOK) S ^TMP("IBEX LIST",$J,$P($G(^DPT(D0,0)),U),D0)=$$PT^IBEFUNC(D0) I $G(IBTEMP) S ^DIBT(IBTEMP,1,D0)=""
	;;^UTILITY(U,$J,"DIPT",1080,"F",1)
	;;=
	;;^UTILITY(U,$J,"DIPT",1080,"F",2)
	;;=X DXS(1,9);"";Z;"I $G(IBLET) D SCR^IBARXEPL I $G(IBOK) S ^TMP("IBEX LIST",$J,$P($G(^DPT(D0,0)),U),D0)=$$PT^IBEFUNC(D0) I $G(IBTEMP) S ^DIBT(IBTEMP,1,D0)="""~
	;;^UTILITY(U,$J,"DIPT",1080,"H")
	;;=@@
	;;^UTILITY(U,$J,"DIPT",1080,"ROUOLD")
	;;=
	;;^UTILITY(U,$J,"DIPT",1124,0)
	;;=IB INACTIVE INS CO^2931104.1112^@^36^1453^@^2940228
	;;^UTILITY(U,$J,"DIPT",1124,"F",1)
	;;=.01;"INSURANCE COMPANY";L22~.111;L20;"STREET"~.114;L15~
	;;^UTILITY(U,$J,"DIPT",1124,"F",2)
	;;=-5,^DIC(5,^^S I(0,0)=D0 S DIP(1)=$S($D(^DIC(36,D0,.11)):^(.11),1:"") S X=$P(DIP(1),U,5),X=X S D(0)=+X;Z;"STATE:"~-5,1;"STATE";L5~
	;;^UTILITY(U,$J,"DIPT",1124,"F",3)
	;;=W $J($$CNT^IBCOC(D0),8);"NUMBER PATIENTS";R8;Z;"W $J($$CNT^IBCOC(D0),8)"~
	;;^UTILITY(U,$J,"DIPT",1124,"H")
	;;=INACTIVE INSURANCE COMPANIES WITH PATIENTS
	;;^UTILITY(U,$J,"DIPT",1128,0)
	;;=IBNOTVER^2940218.1103^@^2^1453^@^2940309
	;;^UTILITY(U,$J,"DIPT",1128,"DCL","2^.01")
	;;=!
	;;^UTILITY(U,$J,"DIPT",1128,"F",1)
	;;=.01;C1;L25;"PATIENT";S~.09;C28;L10;"PATIENT ID"~.3121,.01;C40;L25;"INSURANCE CO"~.3121,1;C68;L18;"SUBSCRIBER ID"~.3121,1.02;C89;L25;"WHO ENTERED"~
	;;^UTILITY(U,$J,"DIPT",1128,"F",2)
	;;=.3121,1.01;C116;L12;"DATE ENTERED"~
	;;^UTILITY(U,$J,"DIPT",1128,"H")
	;;=REPORT OF NEW, NOT VERIFIED INSURANCE ENTRIES
	;;^UTILITY(U,$J,"DIPT",1169,0)
	;;=IBT LIST VISITS^2940223.0839^@^356^1453^@^2940318
	;;^UTILITY(U,$J,"DIPT",1169,"F",1)
	;;=.02;L20~-2,^DPT(^^S I(0,0)=D0 S DIP(1)=$S($D(^IBT(356,D0,0)):^(0),1:"") S X=$P(DIP(1),U,2),X=X S D(0)=+X;Z;"PATIENT:"~-2,.363;"PT. ID";L13~
	;;^UTILITY(U,$J,"DIPT",1169,"F",2)
	;;=-2,.1;L10;"WARD"~-356.6,^IBE(356.6,^^S I(0,0)=D0 S DIP(1)=$S($D(^IBT(356,D0,0)):^(0),1:"") S X=$P(DIP(1),U,18),X=X S D(0)=+X;Z;"EVENT TYPE:"~
	;;^UTILITY(U,$J,"DIPT",1169,"F",3)
	;;=-356.6,.02;"VISIT TYPE"~S DIP(1)=$S($D(^IBT(356,D0,0)):^(0),1:"") S X=$P(DIP(1),U,6),X=$P(X,".",1) S Y=X D DT K DIP;"DATE";L11;Z;"DATE(EPISODE DATE)"~
	;;^UTILITY(U,$J,"DIPT",1169,"F",4)
	;;=.24;"INS. CASE";L4~.25;"RANDOM CASE"~.26;"SPECIAL COND."~.27;"LOCAL CASE"~1.05;L12;"HOSP REVIEWER"~1.06;L12;"INS REVIEWER"~
	;;^UTILITY(U,$J,"DIPT",1169,"H")
	;;=LIST OF VISITS REQUIRING REVIEWS
	;;^UTILITY(U,$J,"DIPT",1170,0)
	;;=IB AB COMMENTS^2940201.1742^@^362.1^10882^@^2940317
	;;^UTILITY(U,$J,"DIPT",1170,"DXS",1,9.2)
	;;=S I(100,0)=$S($D(D0):D0,1:""),DIP(101)=$S($D(^IBT(356,D0,0)):^(0),1:""),D0=$P(DIP(101),U,2) S:'$D(^DPT(+D0,0)) D0=-1 X $P(^DD(2,.0905,0),U,5,99) S DIP(201)=X
	;;^UTILITY(U,$J,"DIPT",1170,"F",1)
	;;=-356,^IBT(356,^^S I(0,0)=D0 S DIP(1)=$S($D(^IBA(362.1,D0,0)):^(0),1:"") S X=$P(DIP(1),U,2),X=X S D(0)=+X;Z;"CLAIMS TRACKING ID:"~-356,.02;L20~
	;;^UTILITY(U,$J,"DIPT",1170,"F",2)
	;;=-356,X DXS(1,9.2) S X=DIP(201) S D0=I(100,0) W X K DIP;L6;"";Z;"PATIENT:1U4N"~-356,.18;L4~-356,.06~
	;;^UTILITY(U,$J,"DIPT",1170,"F",3)
	;;=-399,^DGCR(399,^^S I(0,0)=D0 S DIP(1)=$S($D(^IBA(362.1,D0,0)):^(0),1:"") S X=$P(DIP(1),U,3),X=X S D(0)=+X;Z;"BILL NUMBER:"~-399,.01;L8~-399,.13;L7~
	;;^UTILITY(U,$J,"DIPT",1170,"F",4)
	;;=-399," ";""~-399,.06;L15~-399," ";""~-399,151;L12~-399,152;L12~11,.01;C38;""~
	;;^UTILITY(U,$J,"DIPT",1170,"H")
	;;=IB AUTOMATED BILLING COMMENTS LIST
	;;^UTILITY(U,$J,"FUN",156,0)
	;;=IB CPT BILLING CHARGE