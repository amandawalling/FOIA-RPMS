APCLONIT ; IHS/OHPRD/TMJ - NO DESCRIPTION PROVIDED ; 
 ;;3.0;IHS PCC REPORTS;;FEB 05, 1997
 ;
 K DIF,DIK,DDF,DDT,DTO,D0,DLAYGO,DIC,DIR,DA,ORVROM,DFR,DTN,DIX,DZ
 S DIFQ=0,ORVROM=22 W !!,"This version of 'APCLONIT' was created on 07-JAN-1997"
 W !?9,"(at TUCSON DEVELOPMENT 486 SCO-BOX, by OE/RR V.2.5)",!
 G Q:DIFQ D ^APCLONI1 G Q:'$D(DIFQ) S DIK(0)="B"
 D ^APCLONI2,^APCLONI3
 L  W !,*7,"OK, Protocol Installation is Complete.",!
 K %ZW,%,%H,D0,DA,DIF,DIFQ,DIG,DIH,DIK,DIU,DIV,DSEC,I,J,KEY,DIY,N,NM,NO,ORVROM,R,X,X0
 Q
 ;
Q W *7,!!,"NO UPDATING HAS OCCURRED!" Q
 ;
IXF ;;APCL