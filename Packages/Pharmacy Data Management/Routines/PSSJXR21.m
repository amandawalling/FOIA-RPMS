PSSJXR21 ; COMPILED XREF FOR FILE #55.03 ; 01/17/11
 ; 
 S DA=0
A1 ;
 I $D(DISET) K DIKLM S:DIKM1=1 DIKLM=1 G @DIKM1
0 ;
A S DA=$O(^PS(55,DA(1),"P",DA)) I DA'>0 S DA=0 G END
1 ;
 S DIKZ(0)=$G(^PS(55,DA(1),"P",DA,0))
 S X=$P(DIKZ(0),U,1)
 I X'="" D SREF^PSOHELP1
 S X=$P(DIKZ(0),U,1)
 I X'="" I $P(^PSRX(X,0),"^",15)'=12,$D(^PSRX(X,9999999)) S:$P(^PSRX(X,9999999),"^",2)="Y" ^PS(55,DA(1),"P","CP",X)=""
 G:'$D(DIKLM) A Q:$D(DISET)
END G ^PSSJXR22