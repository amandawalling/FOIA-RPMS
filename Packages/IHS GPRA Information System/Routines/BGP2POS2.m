BGP2POS2 ; IHS/CMI/LAB - NO DESCRIPTION PROVIDED 28 Jan 2005 1:34 PM ;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
 ;
PRE ;EP
 ;CHANGE PACKAGE FILE NAME
 S BGPX=0 F  S BGPX=$O(^BGPCTRL(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPCTRL(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPPEIW(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPPEIW(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPELIW(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPELIW(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPELIIW(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPELIIW(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPNPLW(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPNPLW(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPINDWC(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPINDWC(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPINDW(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPINDW(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPTAXW(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPTAXW(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPSCAT(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPSCAT(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPICAGW(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPICAGW(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPICACW(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPICACW(" D ^DIK
 F BGPX=1:1:2000 K ^BGPTAXW(BGPX)
 S BGPX=0 F  S BGPX=$O(^BGPTAXWB(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPTAXWB(" D ^DIK
 F BGPX=1:1:2000 K ^BGPTAXWB(BGPX)
 S X=0 F  S X=$O(^BGPSITE(X)) Q:X'=+X  S $P(^BGPSITE(X,0),U,3)=""
 Q