IBINI0CV	; ; 21-MAR-1994
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,"DIE",1276,"DR",1,36,2)
	;;=S:IBY["3" Y="@99";@30;S:",10,6,"'[IBY Y="@80";.168T~;S:'X Y="@31";.167;S Y="@36";@31;.161;S:X="" Y="@5";.162;S:X="" Y="@5";.163;@5;.164;.165;.166;.136;.169;@36;S:IBY["10" Y="@99";@80;S:",11,6,"'[IBY Y="@90";.188T~;S:'X Y="@81";
	;;^UTILITY(U,$J,"DIE",1276,"DR",1,36,3)
	;;=.187;S Y="@86";@81;.181;S:X="" Y="@6";.182;S:X="" Y="@6";.183;@6;.184;.185;.186;.1311;.189;@86;S:IBY["11" Y="@99";@90;S:",4,6,"'[IBY Y="@40";.148T~;S:'X Y="@41";.147;S Y="@46";@41;.141;S:X="" Y="@3";.142;S:X="" Y="@3";.143;@3;.144;
	;;^UTILITY(U,$J,"DIE",1276,"DR",1,36,4)
	;;=.145;.146;.137;.149;@46;S:IBY["4" Y="@99";@40;S:",5,6,"'[IBY Y="@50";.158T~;S:'X Y="@51";.157;S Y="@56";@51;.151;S:X="" Y="@4";.152;S:X="" Y="@4";.153;@4;.154;.155;.156;.138;.159;@56;S:IBY["5" Y="@99";@50;S:",8,6,"'[IBY Y="@70";11;
	;;^UTILITY(U,$J,"DIE",1276,"DR",1,36,5)
	;;=S:IBY["8" Y="@99";@70;S:",9,6,"'[IBY Y="@99";10;@99;
	;;^UTILITY(U,$J,"DIE",1276,"DR",2,36.03)
	;;=.01
	;;^UTILITY(U,$J,"DIE",1278,0)
	;;=IBCN AB MEN H^2940106.1308^@^355.4^12540^@^2940107
	;;^UTILITY(U,$J,"DIE",1278,"DR",1,355.4)
	;;=5.14;5.05;5.06;5.11;2.14;2.05;2.06;2.11;
	;;^UTILITY(U,$J,"DIE",1279,0)
	;;=IBCN AB POL INF^2930708.1222^@^355.4^11985^@^2940218
	;;^UTILITY(U,$J,"DIE",1279,"DR",1,355.4)
	;;=.05;.06;
	;;^UTILITY(U,$J,"DIE",1281,0)
	;;=IBCN AB OPT^2940106.1301^@^355.4^12540^@^2940315
	;;^UTILITY(U,$J,"DIE",1281,"DR",1,355.4)
	;;=2.01;2.02;2.03;2.04;2.09;2.15;2.13;2.1;2.12;2.17;2.07;S:'X!(X="") Y="@10";2.08;@10;
	;;^UTILITY(U,$J,"DIE",1282,0)
	;;=IBCN AB INPT^2930611.112^@^355.4^11985^@^2940218
	;;^UTILITY(U,$J,"DIE",1282,"DR",1,355.4)
	;;=5.01;5.02;5.03;5.04;5.09;5.07;5.08;5.1;5.12;
	;;^UTILITY(U,$J,"DIE",1283,0)
	;;=IBCN AB HOME HEA^2930611.1121^@^355.4^11985^@^2940315
	;;^UTILITY(U,$J,"DIE",1283,"DR",1,355.4)
	;;=3.01;3.02;3.03;3.04;3.05;
	;;^UTILITY(U,$J,"DIE",1284,0)
	;;=IBCN AB HOSPC^2930611.1129^@^355.4^11985^@^2940110
	;;^UTILITY(U,$J,"DIE",1284,"DR",1,355.4)
	;;=4.01;4.02;4.03;4.04;4.05;
	;;^UTILITY(U,$J,"DIE",1286,0)
	;;=IBCN AB ADD COM^2930611.1142^@^355.4^11985^@^2930628
	;;^UTILITY(U,$J,"DIE",1286,"DR",1,355.4)
	;;=1.08;
	;;^UTILITY(U,$J,"DIE",1287,0)
	;;=IBCN AB EDIT ALL^2940106.1108^@^355.4^12540^@^2940106
	;;^UTILITY(U,$J,"DIE",1287,"DR",1,355.4)
	;;=.05;.06;5.01;5.02;5.03;5.04;5.09;5.07;5.08;5.1;5.12;2.01;2.02;2.03;2.04;2.09;2.15;2.13;2.1;2.12;2.17;2.07;S:'X!(X="") Y="@10";2.08;@10;5.14;5.05;5.06;5.11;2.14;2.05;2.06;2.11;3.01;3.02;3.03;3.04;3.05;4.01;4.02;4.03;4.04;4.05;3.06;
	;;^UTILITY(U,$J,"DIE",1287,"DR",1,355.4,1)
	;;=3.07;3.08;3.09;4.06;4.07;4.08;4.09;
	;;^UTILITY(U,$J,"DIE",1288,0)
	;;=IBCN BU ADD COM^2930630.1546^@^355.5^11985^@^2931228
	;;^UTILITY(U,$J,"DIE",1288,"DR",1,355.5)
	;;=1.08;
	;;^UTILITY(U,$J,"DIE",1289,0)
	;;=IBCN BU INPT^2931214.0854^^355.5^^^2940315^
	;;^UTILITY(U,$J,"DIE",1289,"DR",1,355.5)
	;;=.06;.07;.11;.12;.19;.18;
	;;^UTILITY(U,$J,"DIE",1290,0)
	;;=IBCN BU OPT^2931214.0853^^355.5^^^2931228^
	;;^UTILITY(U,$J,"DIE",1290,"DR",1,355.5)
	;;=.08;.09;.13;.14;.1;.2;
	;;^UTILITY(U,$J,"DIE",1291,0)
	;;=IBCN BU POL^2930708.1223^@^355.5^11985^@^2940218
	;;^UTILITY(U,$J,"DIE",1291,"DR",1,355.5)
	;;=.04;.05;.15;.16;
	;;^UTILITY(U,$J,"DIE",1294,0)
	;;=IBCN BU ED AL^2931227.0952^^355.5^0^^2940316
	;;^UTILITY(U,$J,"DIE",1294,"DR",1,355.5)
	;;=.04;.05;.15;.16;.08;.09;.13;.14;.1;.2;.06;.07;.11;.12;.19;.18;1.08;
	;;^UTILITY(U,$J,"DIE",1295,0)
	;;=IBCN AB REHAB^2930827.1146^@^355.4^0^@^2931227
	;;^UTILITY(U,$J,"DIE",1295,"DR",1,355.4)
	;;=3.06;3.07;3.08;3.09;
	;;^UTILITY(U,$J,"DIE",1296,0)
	;;=IBCN AB IV MGMT^2930827.1146^@^355.4^0^@^2940315