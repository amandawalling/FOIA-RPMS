ACRCST3 ; COMPILED XREF FOR FILE #9002195.099 ; 09/29/09
 ; 
 S DA=0
A1 ;
 I $D(DIKILL) K DIKLM S:DIKM1=1 DIKLM=1 G @DIKM1
0 ;
A S DA=$O(^ACRITEM(DA(1),2,DA)) I DA'>0 S DA=0 G END
1 ;
 S DIKZ(0)=$G(^ACRITEM(DA(1),2,DA,0))
 S X=$P(DIKZ(0),U,1)
 I X'="" K ^ACRITEM(DA(1),2,"B",$E(X,1,30),DA)
 S X=$P(DIKZ(0),U,1)
 I X'="" S %1=1 F %=1:1:$L(X)+1 S I=$E(X,%) I "(,.?! '-/&:;)"[I S I=$E($E(X,%1,%-1),1,30),%1=%+1 I $L(I)>2 K ^ACRITEM("D",I,DA(1),DA)
 G:'$D(DIKLM) A Q:$D(DIKILL)
END Q