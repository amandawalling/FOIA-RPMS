ORY165 ; Export Package Level Parameters ;1/15/03  13:50
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**165**;Dec 17, 1997
 ;
MAIN ; main (initial) parameter transport routine
 S ORI("OR GXMOVE EVENT")="" D EN^ORYDLG("165 Dialog",.ORI) K ORI
 D ^ORY165A
 K ^TMP($J,"XPARRSTR")
 N ENT,IDX,ROOT,REF,VAL,I
 S ROOT=$NAME(^TMP($J,"XPARRSTR")),ROOT=$E(ROOT,1,$L(ROOT)-1)_","
 D LOAD
XX2 S IDX=0,ENT="PKG."_"ORDER ENTRY/RESULTS REPORTING"
 F  S IDX=$O(^TMP($J,"XPARRSTR",IDX)) Q:'IDX  D
 . N PAR,INST,VAL,ERR
 . S PAR=$P(^TMP($J,"XPARRSTR",IDX,"KEY"),U),INST=$P(^("KEY"),U,2)
 . M VAL=^TMP($J,"XPARRSTR",IDX,"VAL")
 . D EN^XPAR(ENT,PAR,INST,.VAL,.ERR)
 K ^TMP($J,"XPARRSTR")
 Q
LOAD ; load data into ^TMP (expects ROOT to be defined)
 S I=1 F  S REF=$T(DATA+I) Q:REF=""  S VAL=$T(DATA+I+1) D
 . S I=I+2,REF=$P(REF,";",3,999),VAL=$P(VAL,";",3,999)
 . S @(ROOT_REF)=VAL
 Q
DATA ; parameter data
 ;;12333,"KEY")
 ;;ORB PROVIDER RECIPIENTS^ORDERER-FLAGGED RESULTS
 ;;12333,"VAL")
 ;;@