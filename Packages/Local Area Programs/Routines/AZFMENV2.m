AZFMENV2 ;IHS/OIT/ENM - PHARMACY ENVIRONMENT CHECK [ 11/18/2005  3:52 PM ]
 ;;IHS PHARMACY MODIFICATIONS;;
LAST(PKG,VER) ;returns last patch applied for a Package, PATCH^DATE
 ;        Patch includes Seq # if Released
 N PKGIEN,VERIEN,LATEST,PATCH,SUBIEN
 I $G(VER)="" S VER=$$VERSION^XPDUTL(PKG) Q:'VER -1
 S PKGIEN=$O(^DIC(9.4,"B",PKG,"")) Q:'PKGIEN -1
 S VERIEN=$O(^DIC(9.4,PKGIEN,22,"B",VER,"")) Q:'VERIEN -1
 S LATEST=-1,PATCH=-1,SUBIEN=0
 F  S SUBIEN=$O(^DIC(9.4,PKGIEN,22,VERIEN,"PAH",SUBIEN)) Q:SUBIEN'>0  D
 . S LATEST=$P(^DIC(9.4,PKGIEN,22,VERIEN,"PAH",SUBIEN,0),U,2),PATCH=$P(^(0),U)
 Q PATCH_U_LATEST