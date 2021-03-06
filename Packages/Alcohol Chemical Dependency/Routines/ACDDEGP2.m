ACDDEGP2 ;IHS/ADC/EDE/KML - GET PATIENT (cont.);
 ;;4.1;CHEMICAL DEPENDENCY MIS;;MAY 11, 1998
 ;
GETREG ; EP - GET PATIENT REGISTRATION INFO
 ;//^ACDDEGP,^ACDPDIF
 ; ---------- get patient registration info
 K ACDPDD
 S DIC=2,DR=".02;.03;.033;1901",DIQ="ACDPDD(",DIQ(0)="IE",DA=ACDDFNP D DIQ1^ACDFMC
 S DIC=9000001,DR="1108;1117",DIQ="ACDPDD(",DIQ(0)="IE",DA=ACDDFNP D DIQ1^ACDFMC
 S ACDCOMM=ACDPDD(9000001,ACDDFNP,1117,"I")
 S (ACDSTA,ACDSTANM,ACDSTACD)=""
 I ACDCOMM S DIC=9999999.05,DR=".03;.12991",DIQ="ACDPDD(",DIQ(0)="IE",DA=ACDCOMM D DIQ1^ACDFMC D
 . S ACDSTA=ACDPDD(9999999.05,ACDCOMM,.03,"I")
 . S ACDSTANM=ACDPDD(9999999.05,ACDCOMM,.03,"E")
 . S ACDSTACD=ACDPDD(9999999.05,ACDCOMM,.12991,"E")
 . Q
 S ACDSEX=ACDPDD(2,ACDDFNP,.02,"E")
 S ACDAGE=ACDPDD(2,ACDDFNP,.033,"E")
 S ACDAGER=""
 I ACDAGE D ^ACDAGRG ;        set age and age range as of visit date
 S ACDTRB=ACDPDD(9000001,ACDDFNP,1108,"I"),ACDTRBN=ACDPDD(9000001,ACDDFNP,1108,"E")
 S ACDTRBCD=""
 I ACDTRB S DIC=9999999.03,DR=".02",DIQ="ACDPDD(",DIQ(0)="IE",DA=ACDTRB D DIQ1^ACDFMC D
 . S ACDTRBCD=ACDPDD(9999999.03,ACDTRB,.02,"I")
 . Q
 S ACDVET=ACDPDD(2,ACDDFNP,1901,"E") S:ACDVET="" ACDVET="UNKNOWN"
 K ACDPDD
 F X="ACDSEX","ACDAGE","ACDSTA","ACDSTACD","ACDSTANM","ACDTRB","ACDTRBCD","ACDTRBN","ACDVET" D
 . S ACDPRD(X)=@X
 . Q
 Q
 ;
GETCDMIS ; EP - GET LAST CDMIS INFO FOR PATIENT
 ;//^ACDDEGP,^ACDPDIF
 ;---------- get last cdmis visit info (ignore program)
 K ACDPDD
 Q:'$D(^ACDVIS("D",ACDDFNP))
 S ACDY=+$O(^ACDVIS("D",ACDDFNP,"A"),-1)
 Q:'ACDY
 S DIC=9002172.1,DR="101;102;103;104;105;106",DIQ="ACDPDD(",DIQ(0)="IE",DA=ACDY D DIQ1^ACDFMC
 S ACDSEX=ACDPDD(9002172.1,ACDY,103,"E")
 S ACDSTA=ACDPDD(9002172.1,ACDY,106,"I")
 S ACDSTACD=ACDPDD(9002172.1,ACDY,102,"I")
 S ACDSTANM=ACDPDD(9002172.1,ACDY,106,"E")
 S ACDTRB=ACDPDD(9002172.1,ACDY,105,"I")
 S ACDTRBCD=ACDPDD(9002172.1,ACDY,101,"I")
 S ACDTRBN=ACDPDD(9002172.1,ACDY,105,"E")
 S ACDVET=ACDPDD(9002172.1,ACDY,104,"E")
 K ACDPDD
 Q
