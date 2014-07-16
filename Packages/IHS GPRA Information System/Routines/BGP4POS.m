BGP4POS ; IHS/CMI/LAB - NO DESCRIPTION PROVIDED 08 Dec 2010 3:10 PM ; 25 Jun 2014  10:57 AM
 ;;14.0;IHS CLINICAL REPORTING;;NOV 14, 2013;Build 101
 ;
 ;
 ;SEND OUT BGP TAXONOMIES
 ; The following line prevents the "Disable Options..." and "Move
 ; Routines..." questions from being asked during the install.
 I $G(XPDENV)=1 S (XPDDIQ("XPZ1"),XPDDIQ("XPZ2"))=0
 F X="XPO1","XPZ1","XPZ2","XPI1" S XPDDIQ(X)=0
 I '$$INSTALLD("BGP*13.0*1") D SORRY(2)
 Q
 ;
PRE ;EP
 ;WIPE OUT CHS AND URBAN PARAMETERS, FIELDS ARE BEING DELETED
 S BGPX=0 F  S BGPX=$O(^BGPSITE(BGPX)) Q:BGPX'=+BGPX  S DIE="^BGPSITE(",DA=BGPX,DR=".06///@;.08///@" D ^DIE K DA,DR,DIE
 ;S BGPX="BGP 02" F  S BGPX=$O(^DIC(19,"B",BGPX)) Q:BGPX]"BGP 04ZZZ"  S DA=$O(^DIC(19,"B",BGPX,0)),DIK="^DIC(19," I DA D MES^XPDUTL(BGPX_" deleted.") D ^DIK K DA,DIK  ;DELETE OPTIONS
 ;S BGPX="BGP 02" F  S BGPX=$O(^SD(409.61,"B",BGPX)) Q:BGPX]"BGP 04ZZZ"  S DA=$O(^SD(409.61,"B",BGPX,0)),DIK="^SD(409.61," I DA D MES^XPDUTL(BGPX_" deleted.") D ^DIK K DA,DIK  ;DELETE LIST TEMPLATES
 ;S BGPX="BGP 02" F  S BGPX=$O(^ORD(101,"B",BGPX)) Q:BGPX]"BGP 04ZZZ"  S DA=$O(^ORD(101,"B",BGPX,0)),DIK="^ORD(101," I DA D MES^XPDUTL(BGPX_" deleted.") D ^DIK K DA,DIK  ;DELETE PROTOCOLS
 ;S BGPX="BGP FAC TO AREA RPT PERIOD" S DA=$O(^DIC(19,"B",BGPX,0)),DIK="^DIC(19," I DA D MES^XPDUTL(BGPX_" deleted.") D ^DIK K DA,DIK  ;DELETE OPTIONS
 ;S BGPX="BGP GPRA AREA REPORT" S DA=$O(^DIC(19,"B",BGPX,0)),DIK="^DIC(19," I DA D MES^XPDUTL(BGPX_" deleted.") D ^DIK K DA,DIK  ;DELETE OPTIONS
 ;S BGPX="BGP GPRA FAC TO AREA RPT" S DA=$O(^DIC(19,"B",BGPX,0)),DIK="^DIC(19," I DA D MES^XPDUTL(BGPX_" deleted.") D ^DIK K DA,DIK  ;DELETE OPTIONS
 ;S BGPX="BGP GPRA LOCAL REPORT" S DA=$O(^DIC(19,"B",BGPX,0)),DIK="^DIC(19," I DA D MES^XPDUTL(BGPX_" deleted.") D ^DIK K DA,DIK  ;DELETE OPTIONS
 ;S BGPX="BGP GPRA UPLOAD FILE" S DA=$O(^DIC(19,"B",BGPX,0)),DIK="^DIC(19," I DA D MES^XPDUTL(BGPX_" deleted.") D ^DIK K DA,DIK  ;DELETE OPTIONS
 ;S BGPX="BGP INDICATOR 32 TESTS" S DA=$O(^DIC(19,"B",BGPX,0)),DIK="^DIC(19," I DA D MES^XPDUTL(BGPX_" deleted.") D ^DIK K DA,DIK  ;DELETE OPTIONS
 ;S BGPX="BGP TAXONOMY CHECK" S DA=$O(^DIC(19,"B",BGPX,0)),DIK="^DIC(19," I DA D MES^XPDUTL(BGPX_" deleted.") D ^DIK K DA,DIK  ;DELETE OPTIONS
 D PRE^BGP4POS2
 Q
POST ;EP - called from kids build
 D ^BGP44
 D ^BGP45
 D ^BGP46
 D DRUGS^BGP4POS1
 D LAB^BGP4POS1
 D BMXPO
 D ADA
 Q
BMXPO ;-- update the RPC file
 N BGPRPC
 S BGPRPC=$O(^DIC(19,"B","BGPGRPC",0))
 Q:'BGPRPC
 D CLEAN(BGPRPC)
 D GUIEP^BMXPO(.RETVAL,BGPRPC_"|BGP")
 Q
CLEAN(APP) ;-- clean out the RPC multiple first
 S DA(1)=APP
 S DIK="^DIC(19,"_DA(1)_","_"""RPC"""_","
 N BGPDA
 S BGPDA=0 F  S BGPDA=$O(^DIC(19,APP,"RPC",BGPDA)) Q:'BGPDA  D
 . S DA=BGPDA
 . D ^DIK
 K ^DIC(19,APP,"RPC","B")
 Q
 ;
INSTALLD(BGPSTAL) ;EP - Determine if patch BGPSTAL was installed, where
 ; BGPSTAL is the name of the INSTALL.  E.g "AG*6.0*11".
 ;
 NEW BGPY,DIC,X,Y
 S X=$P(BGPSTAL,"*",1)
 S DIC="^DIC(9.4,",DIC(0)="FM",D="C"
 D IX^DIC
 I Y<1 D IMES Q 0
 S DIC=DIC_+Y_",22,",X=$P(BGPSTAL,"*",2)
 D ^DIC
 I Y<1 D IMES Q 0
 S DIC=DIC_+Y_",""PAH"",",X=$P(BGPSTAL,"*",3)
 D ^DIC
 S BGPY=Y
 D IMES
 Q $S(BGPY<1:0,1:1)
IMES ;
 D MES^XPDUTL($$CJ^XLFSTR("Patch """_BGPSTAL_""" is"_$S(Y<1:" *NOT*",1:"")_" installed.",IOM))
 Q
SORRY(X) ;
 KILL DIFQ
 I X=3 S XPDQUIT=2 Q
 S XPDQUIT=X
 W *7,!,$$CJ^XLFSTR("Sorry....FIX IT!",IOM)
 Q
ADA ;
 S ATXFLG=1
 S BGPDA=0 S BGPDA=$O(^ATXAX("B","BGP GEN ANESTHESIA ADA CODES",BGPDA))
 I BGPDA S DIK="^ATXAX(",DA=BGPDA D ^DIK  ;get rid of existing one
 W !,"Creating/Updating DENTAL ANESTHESIA ADA Codes Taxonomy..."
 S X="BGP GEN ANESTHESIA ADA CODES",DIC="^ATXAX(",DIC(0)="L",DIADD=1,DLAYGO=9002226 D ^DIC K DIC,DA,DIADD,DLAYGO,I
 I Y=-1 W !!,"ERROR IN CREATING DENTAL ANESTHISIZ ADA CODES TAX" Q
 S BGPTX=+Y,$P(^ATXAX(BGPTX,0),U,2)="BGP GEN ANESTHESIA ADA CODES",$P(^(0),U,5)=DUZ,$P(^(0),U,8)=0,$P(^(0),U,9)=DT,$P(^(0),U,12)=174,$P(^(0),U,13)=0,$P(^(0),U,15)=9999999.31,^ATXAX(BGPTX,21,0)="^9002226.02101A^0^0"
 S BGPX=0
 F X="9220" S DIC="^AUTTADA(",DIC(0)="M" D ^DIC K DIC,DA,DR,DIADD,DLAYGO,DQ,DI,D1,D0 I $P(Y,U)>0 D
 .S BGPX=BGPX+1
 .S ^ATXAX(BGPTX,21,BGPX,0)=+Y,$P(^ATXAX(BGPTX,21,0),U,3)=BGPX,$P(^(0),U,4)=BGPX,^ATXAX(BGPTX,21,"AA",+Y,BGPX)=""
 .Q
 S DA=BGPTX,DIK="^ATXAX(" D IX1^DIK
 ;SSC
 S BGPDA=0 S BGPDA=$O(^ATXAX("B","BGP SSC ADA CODES",BGPDA))
 I BGPDA S DIK="^ATXAX(",DA=BGPDA D ^DIK  ;get rid of existing one
 W !,"Creating/Updating SSC ADA Codes Taxonomy..."
 S X="BGP SSC ADA CODES",DIC="^ATXAX(",DIC(0)="L",DIADD=1,DLAYGO=9002226 D ^DIC K DIC,DA,DIADD,DLAYGO,I
 I Y=-1 W !!,"ERROR IN CREATING SSC ADA CODES TAX" Q
 S BGPTX=+Y,$P(^ATXAX(BGPTX,0),U,2)="BGP SSC ADA CODES",$P(^(0),U,5)=DUZ,$P(^(0),U,8)=0,$P(^(0),U,9)=DT,$P(^(0),U,12)=174,$P(^(0),U,13)=0,$P(^(0),U,15)=9999999.31,^ATXAX(BGPTX,21,0)="^9002226.02101A^0^0"
 S BGPX=0
 F X=2930,2931 S DIC="^AUTTADA(",DIC(0)="M" D ^DIC K DIC,DA,DR,DIADD,DLAYGO,DQ,DI,D1,D0 I $P(Y,U)>0 D
 .S BGPX=BGPX+1
 .S ^ATXAX(BGPTX,21,BGPX,0)=+Y,$P(^ATXAX(BGPTX,21,0),U,3)=BGPX,$P(^(0),U,4)=BGPX,^ATXAX(BGPTX,21,"AA",+Y,BGPX)=""
 .Q
 S DA=BGPTX,DIK="^ATXAX(" D IX1^DIK
 Q