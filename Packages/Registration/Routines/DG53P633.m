DG53P633 ;ALB/MRY - POST-INIT; 12/29/04 3:22pm
 ;;5.3;Registration;**633,1015**;Aug 13,1993;Build 21
 ;
POST ;Add option to menu
 N DGOK
 S DGOK=$$ADD^XPDMENU("DG REGISTRATION MENU","DG ALL BAI REPORT")
 I DGOK=1 D
 .D BMES^XPDUTL("*****")
 .D MES^XPDUTL("[DG ALL BAI REPORT] Option added to [DG REGISTRATION MENU].")
 E  D
 .D BMES^XPDUTL("*****")
 .D MES^XPDUTL("Error - [DG ALL BAI REPORT] Option not added.")
 Q