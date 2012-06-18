ACHSTX4 ; IHS/ITSC/PMF - EXPORT DATA (5/9) - RECORD 4(VENDOR FOR AO/FI) ;    [ 10/16/2001   8:16 AM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;;JUN 11, 2001
 ;
 I $$PARM^ACHS(2,11)'="Y",$$PARM^ACHS(2,12)'="Y" G BEND
 W !!?10,"BUILDING ",$$REC^ACHSACO1(4)," : ",!?9
 S R=0
B1 ;
 S R=$O(^ACHSTXVN(R))
 G BEND:+R=0,B1:'$D(^AUTTVNDR(R,0))
 I ACHSREEX,$D(ACHS("REXNUM")),$P($G(^AUTTVNDR(R,11)),U,12)=$P($G(^ACHSTXST(DUZ(2),1,ACHS("REXNUM"),0)),U) G B1A
 G B1:$P($G(^AUTTVNDR(R,11)),U,12)>$P($G(^AUTTVNDR(R,11)),U,11)
B1A ;
 S ACHSDEST=$P($G(^ACHSTXVN(R)),U,1),ACHSEIN=$E($P($G(^AUTTVNDR(R,11)),U)_$J("",10),1,10)_$E($P($G(^AUTTVNDR(R,11)),U,2)_"  ",1,2),ACHSNAME=$E($P($G(^AUTTVNDR(R,0)),U)_$J("",30),1,30),ACHSPTYP=+$P($G(^AUTTVNDR(R,11)),U,3)
 I ACHSPTYP<1 S ACHSPTYP="  " G B2
 S ACHSPTYP=$E($P($G(^AUTTVTYP(ACHSPTYP,0)),U)_"  ",1,2)
B2 ;
 S X=$P($G(^AUTTVNDR(R,11)),U,10),ACHSFED=$S(X=2:2,1:1)
 S ACHSFAC=$E(ACHSAFAC_$J("",6),1,6)
 S X=$P($G(^AUTTVNDR(R,11)),U,7),X=$P(X,".")_$E($P(X,".",2)_"00",1,2),ACHSDAP=$E(X+10000000000,2,11)
 S X=$P($G(^AUTTVNDR(R,11)),U,11),ACHSUPDT=$E(X,4,7)_$E(X,2,3),ACHSUPDT("CC")=$E(X+17000000,1,2)
 I $L(ACHSUPDT)'=6 S ACHSUPDT=$J("",6),ACHSUPDT("CC")=$J("",2)
 S X=""
 F I=0:0 S I=$O(^AUTTVNDR(R,"CN",I)) Q:'I  I $P(^(I,0),U,2)'>DT,$P(^(0),U,3)>DT S X=$P(^(0),U)
 S ACHSCN=$E(X_$J("",10),1,10)
 ;
 S ACHSRCT=ACHSRCT+1,ACHSRTYP(4)=ACHSRTYP(4)+1,^ACHSDATA(ACHSRCT)="4A"_ACHSEIN_ACHSNAME_ACHSPTYP_ACHSFED_ACHSFAC_ACHSDAP_ACHSUPDT_ACHSCN_ACHSDEST
 ;
 S X=$S($D(^AUTTVNDR(R,13)):$P($G(^AUTTVNDR(R,13)),U,3),1:""),ACHSST=$S('X:"  ",1:$P($G(^DIC(5,X,0)),U,2))
 S ACHS1099=$S($P($G(^AUTTVNDR(R,11)),U,6)]"":$P(^(11),U,6),1:" ")
 S X=$P($G(^AUTTVNDR(R,11)),U,9)
 F ACHS=1:1:$L(X) Q:ACHS>$L(X)  I $E(X,ACHS)'?1N S X=$E(X,1,ACHS-1)_$E(X,ACHS+1,99),ACHS=ACHS-1
 S X=$E(X,1,10),X=$J(X,10),ACHSFONE=X,X=$P($G(^AUTTSITE(1,0)),U,2),ACHSAPN=$S($L(X)<1!($L(X)>2):"  ",$L(X)=1:" "_X,1:X)
 S ACHSRCT=ACHSRCT+1
 ;
 S ^ACHSDATA(ACHSRCT)="4B"_$S($D(^AUTTVNDR(R,13)):$E($P($G(^AUTTVNDR(R,13)),U)_$J("",30),1,30),1:"")
 S ^ACHSDATA(ACHSRCT)=$G(^ACHSDATA(ACHSRCT))_$S($D(^AUTTVNDR(R,13)):$E($P($G(^AUTTVNDR(R,13)),U,2)_$J("",20),1,20),1:"")
 S ^ACHSDATA(ACHSRCT)=^ACHSDATA(ACHSRCT)_ACHSST_$S($D(^AUTTVNDR(R,13)):$E($P($G(^AUTTVNDR(R,13)),U,4)_$J("",9),1,9),1:"")_ACHS1099_ACHSFONE_ACHSAPN_ACHSUPDT("CC")_" "_ACHSDEST
 ;
 S ACHSRTYP(4)=ACHSRTYP(4)+1
 I ACHSRTYP(4)#10=0 W $J(ACHSRTYP(4),8)
 D DIE(R)
 G B1
 ;
BEND ;
 K ACHSAPN,ACHSINSR,ACHSCN,ACHSCOV,ACHSEIN,ACHSFAC,ACHSFED,ACHSFONE,ACHSHRN,ACHSUPDT,ACHSNAME,ACHS1099,ACHSDOB,ACHSPTYP,ACHSSEX,ACHSST,ACHSADDR,ACHSSSN,ACHSDAP,ACHSZIP,R
 S ACHSROUT=ACHSRCT
 G ^ACHSTX5
 ;
DIE(R) ; Update CHS TX DATE in VENDOR.
 D EDITVNDR^ACHSVDVA(R,"1112///"_DT)
 Q
 ;