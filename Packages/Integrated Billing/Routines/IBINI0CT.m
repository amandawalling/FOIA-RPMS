IBINI0CT	; ; 21-MAR-1994
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,"DIE",1263,"DR",1,356.2,2)
	;;=@250;.17//^S X=$$MC^IBTRC3(DA,$G(IBTLST));I $P(^IBT(356.2,DA,0),U,17)'=1 S Y="@170";.07//^S X=$$CP^IBTRC3(DA,$G(IBTLST));@170;.09;I $$TCODE^IBTRC(DA)>30 S Y="@300";D HELP^IBTUTL3(DA);.11;
	;;^UTILITY(U,$J,"DIE",1263,"DR",1,356.2,3)
	;;=N IBY S IBY=$P($G(^IBE(356.7,+$P(^IBT(356.2,DA,0),U,11),0)),U,3) S Y=$S(IBY:"@"_IBY,1:"@350");@10;1.08;I X S Y="@11";.12;.13;@11;.14;.28//^S X=$$AN^IBTRC3(DA,$G(IBTLST));S Y="@300";@20;1.07;I X S Y="@21";.15;.16;@21;12;S Y="@300";
	;;^UTILITY(U,$J,"DIE",1263,"DR",1,356.2,4)
	;;=@30;13;S Y="@300";@40;.2;S Y="@300";@50;.21;@300;@350;N IBTCOD S IBTCOD=$$TCODE^IBTRC(DA) S Y=$S(IBTCOD=50:"@355",IBTCOD=60:"@356",1:"@400");@355;.26;.11;
	;;^UTILITY(U,$J,"DIE",1263,"DR",1,356.2,5)
	;;=N IBY S IBY=$P($G(^IBE(356.7,+$P(^IBT(356.2,DA,0),U,11),0)),U,3) S:IBY=20 Y="@400";.28//^S X=$$AN^IBTRC3(DA,$G(IBTLST));S Y="@400";@356;.23;.1;I X'=3 S Y="@41";.29;I X=2 S Y="@42";.28;14;@41;.25;@42;
	;;^UTILITY(U,$J,"DIE",1263,"DR",1,356.2,6)
	;;=I '$P(^IBT(356.2,DA,0),U,8) S Y="@400";^36^DIC(36,^^S I(0,0)=D0 S Y(1)=$S($D(^IBT(356.2,D0,0)):^(0),1:"") S X=$P(Y(1),U,8),X=X S D(0)=+X S X=$S(D(0)>0:D(0),1:"");@400;11;.19;.24;
	;;^UTILITY(U,$J,"DIE",1263,"DR",2,36)
	;;=.147;.141;.142;.143;.144;.145;.146;
	;;^UTILITY(U,$J,"DIE",1263,"DR",2,356.212)
	;;=.01
	;;^UTILITY(U,$J,"DIE",1263,"DR",2,356.213)
	;;=.01:.02
	;;^UTILITY(U,$J,"DIE",1263,"DR",2,356.214)
	;;=.01:.02
	;;^UTILITY(U,$J,"DIE",1264,0)
	;;=IBT COMMENT INFO^2930729.1247^@^356.2^1453^@^2940128
	;;^UTILITY(U,$J,"DIE",1264,"DR",1,356.2)
	;;=11;
	;;^UTILITY(U,$J,"DIE",1265,0)
	;;=IBT CONTACT INFO^2931006.154^@^356.2^1453^@^2931006
	;;^UTILITY(U,$J,"DIE",1265,"DR",1,356.2)
	;;=S IBTLST=$$LAST^IBTRC3($P(^IBT(356.2,DA,0),"^",2),DA);.01;I $P(^IBT(356.2,DA,0),U,2) S Y="@200";.05;@200;.06//^S X=$$PC^IBTRC3(DA,$G(IBTLST));.17//^S X=$$MC^IBTRC3(DA,$G(IBTLST));I $P(^IBT(356.2,DA,0),U,17)'=1 S Y="@170";
	;;^UTILITY(U,$J,"DIE",1265,"DR",1,356.2,1)
	;;=.07//^S X=$$CP^IBTRC3(DA,$G(IBTLST));@170;.09;
	;;^UTILITY(U,$J,"DIE",1266,0)
	;;=IBT INSURANCE INFO^2940216.1138^@^356.2^1453^@^2940226
	;;^UTILITY(U,$J,"DIE",1266,"DIAB",1,0,356.2,1)
	;;=.08:
	;;^UTILITY(U,$J,"DIE",1266,"DR",1,356.2)
	;;=1.05;W !!,"You are now editing the Insurance Company: ",!,$P($G(^DIC(36,+$P(^IBT(356.2,DA,0),"^",8),0)),"^"),!!;
	;;^UTILITY(U,$J,"DIE",1266,"DR",1,356.2,1)
	;;=^36^DIC(36,^^S I(0,0)=D0 S Y(1)=$S($D(^IBT(356.2,D0,0)):^(0),1:"") S X=$P(Y(1),U,8),X=X S D(0)=+X S X=$S(D(0)>0:D(0),1:"");
	;;^UTILITY(U,$J,"DIE",1266,"DR",2,36)
	;;=.131;.132;.133;.134;.135;.136;.137;.138;
	;;^UTILITY(U,$J,"DIE",1267,0)
	;;=IBT ACTION INFO^2940207.0926^@^356.2^1453^@^2940226
	;;^UTILITY(U,$J,"DIE",1267,"DIAB",1,1,356.212,0)
	;;=ALL
	;;^UTILITY(U,$J,"DIE",1267,"DIAB",1,1,356.213,0)
	;;=ALL
	;;^UTILITY(U,$J,"DIE",1267,"DIAB",1,1,356.214,0)
	;;=ALL
	;;^UTILITY(U,$J,"DIE",1267,"DR",1,356.2)
	;;=S IBTLST=$$LAST^IBTRC3($P(^IBT(356.2,DA,0),"^",2),DA);.04;I $$TCODE^IBTRC(DA)>30 S Y="@300";D HELP^IBTUTL3(DA);.11;N IBY S IBY=$P($G(^IBE(356.7,+$P(^IBT(356.2,DA,0),U,11),0)),U,3) S Y=$S(IBY:"@"_IBY,1:"@350");@10;1.08;
	;;^UTILITY(U,$J,"DIE",1267,"DR",1,356.2,1)
	;;=I X S Y="@11";.12;.13;@11;.14;.28//^S X=$$AN^IBTRC3(DA,$G(IBTLST));S Y="@300";@20;1.07;I X S Y="@21";.15;.16;@21;12;S Y="@300";@30;13;S Y="@300";@40;.2;S Y="@300";@50;.21;@300;@350;
	;;^UTILITY(U,$J,"DIE",1267,"DR",1,356.2,2)
	;;=N IBTCOD S IBTCOD=$$TCODE^IBTRC(DA) S Y=$S(IBTCOD=50:"@355",IBTCOD=60:"@356",1:"@400");@355;.26;.11;N IBY S IBY=$P($G(^IBE(356.7,+$P(^IBT(356.2,DA,0),U,11),0)),U,3) S:IBY=20 Y="@400";.28//^S X=$$AN^IBTRC3(DA,$G(IBTLST));S Y="@400";