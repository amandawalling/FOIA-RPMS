ICDDRG12 ;NEISC/GRR - FIX SURGERY HIERARCHY ;03 MAR 89
 ;;8.0
 Q:$O(ICDODRG(0))'>0  K ICDJ,ICDJJ F ICDJ=0:0 S ICDJ=$O(ICDODRG(ICDJ)) Q:ICDJ'>0  S ICDJJ(ICDJ)="" D F
END S ICDJ=$O(ICDJ(0)) Q:ICDJ'>0  S ICDJ=ICDJ(ICDJ) K ICDODRG S ICDODRG(ICDJ)="" Q
F I ICDJ=334 S ICDJ(1)=ICDJ Q
 I ICDJ=341 S ICDJ(2)=ICDJ Q
 I ICDJ=336 S ICDJ(3)=ICDJ Q
 I ICDJ=338 S ICDJ(4)=ICDJ Q
 I ICDJ=339 S ICDJ(5)=ICDJ Q
 I ICDJ=342 S ICDJ(6)=ICDJ Q
 I ICDJ=344 S ICDJ(7)=ICDJ
 Q