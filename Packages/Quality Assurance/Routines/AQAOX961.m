AQAOX961 ; COMPILED XREF FOR FILE #9002169.6 ; 02/13/06
 ; 
 S DIKZK=2
 S DIKZ(0)=$G(^AQAO1(6,DA,0))
 S X=$P(DIKZ(0),U,1)
 I X'="" K ^AQAO1(6,"B",$E(X,1,30),DA)
END G ^AQAOX962