AZFMENV1 ;IHS/OIT/ENM - PHARMACY ONLY ENVIRONMENT CHECK [ 11/18/2005  9:18 AM ]
 ;;IHS PHARMACY MODIFICATIONS;;
CHKENV ; Be sure required MAS and Inpatient versions have been installed.
 ;IHS/DSD/ENM 01/26/99 NEXT LINE COMMENTED OUT
 ;I $S($D(^DG(43,1,"VERSION")):^("VERSION")<5.3,1:1) W *7,!!,"SORRY, BUT YOU MUST HAVE VERSION 5.3 OF MAS (OR GREATER) TO BE ABLE TO RUN THE",!,"INPATIENT MEDICATION INITS." G OUT
 ;S DGVER="",NDFVER="",OPVER="",ARWSVER="",PSSVER="",PSJILV="",PCCF200=""
 ;S APSE="",APSA=""
 ;W !,?20,"THIS ENVIRONMENT CHECKER LOOKS FOR VERSIONS OF...",!
 ;W ?24,"MAS/PIMS VERSION",!,?24,"INPATIENT PHARMACY",!,?24,"NATIONAL DRUG FILE",!,?24,"OUTPATIENT PHARMACY",!,?24,"AUTO REPLINISHMENT/WARD STOCK",!
 ;W ?24,"PHARMACY DATA MANAGEMENT",!,?24,"AVERAGE WHOLESALE PRICE",!,?24,"PHARMACY DRUG EDUCATION DATABASE",!,?24,"ADVERSE REACTIONS TRACKING",!
 ;W ?20,"AND IF THE PCC FILE 200 CONVERSION HAS BEEN RAN",!!
 ;S DGVER=$G(^DG(43,1,"VERSION")) ;MAS V
 ;S NDFVER=$P($G(^PS(59.7,1,10)),"^",1) ;NDF V
 ;S OPVER=$P($G(^PS(59.7,1,49.99)),"^",1) ;OUT PAT V
 ;S ARWSVER=$P($G(^PS(59.7,1,59.99)),"^",1) ;AUTO R WARD S
 ;S PSSVER=$P($G(^PS(59.7,1,80)),"^",1) ;PHARM DATA MGMT
 ;S PSJILV=$P($G(^PS(59.7,1,20)),"^",1) ;INP V
 ;S PCCF200=$P($G(^AUTTSITE(1,0)),"^",22) I PCCF200="" S PCCF200="No"
 ;I PCCF200=1 S PCCF200="YES"
RTNMNT ;CHECK FOR CERTAIN ROUTINES/PATCHES 
 ;S X="APSEPPID" X ^%ZOSF("TEST") I $T S APSE="V 6.1 Installed"
 ;S X="APSAPPIM" X ^%ZOSF("TEST") I $T S APSA="V 6.1 Installed"
 ;
 ;W !,"MAS V = ",DGVER,!,"INP V = ",PSJILV,!,"NDF V = ",NDFVER,!,"OUTP V = ",OPVER,!,"ARWS V = ",ARWSVER,!,"PDM V = ",PSSVER,!,"AWP = ",APSA,!,"PDED = ",APSE
 ;W !,"PCC FILE 200 CONV = ",PCCF200
 ;
 Q
ALLPKG ;LOOP ON PACKAGE FILE "B" XREF
 Q ;IHS/OIT/ENM 04/05/09
 W !,"PACKAGE NAME",?40,"CURRENT VERSION",!,"------------",?40,"---------------",!
 S AZFM=""
 F NA=0:0 S AZFM=$O(^DIC(9.4,"B",AZFM)) Q:AZFM=""  D PKGWR
 D OUT
 Q
PKGWR S AZVER=$$VERSION^XPDUTL(AZFM),LPATCH=$$LAST^XPDUTL(AZFM,AZVER) W !,AZFM,?40,AZVER,?50,LPATCH I AZFM="AUPN FILE 200 CONVERSION" D PCC2
 Q
PCC2 S PCCF200=$P($G(^AUTTSITE(1,0)),"^",22) I PCCF200="" S PCCF200="No"
 I PCCF200=1 S PCCF200="YES"
 W !,?20,"PCC F200 CONV = ",PCCF200
 Q
OUT ;
 W !!,"END OF PACKAGE FILE ENVIRONMENT CHECK!"
 K NA,AZFM,AZVER,LPATCH,PCCF200
 Q