BGURTNFL ; IHS/OIT/MJL - SILENT ROUTINE FIRST LINE ; 
 ;;1.5;BGU;**1**;SEP 26, 2005
EN(BGUARRAY,BGUTBUF) ;PEP FROM REMOTE PROCEDURE BGU ROUTINE FILER
CTL ;
 S BGURTN=$P(BGUMSG,U,2),BGUMSG=$P(BGUMSG,U,3,$L(BGUMSG,U)),BGUMSGL=$L(BGUMSG)
 S:$E(BGUMSG,BGUMSGL-1,BGUMSGL)=$C(13,10) BGUMSG=$E(BGUMSG,1,BGUMSGL-2)
 F BGUNN=1:1:$L(BGUMSG,$C(13,10)) S ^TMP("BGURTN",$J,BGUNN,0)=$P(BGUMSG,$C(13,10),BGUNN)
 S X=BGURTN,XCN=0,DIE="^TMP(""BGURTN"",$J," X ^%ZOSF("SAVE")
 K BGUMSGL,BGUNN,BGUXA,^TMP("BGURTN",$J)
 S BGUARRAY(1)=1,BGUARRAY(2)="OK"
 Q