BDMDB1H ; IHS/CMI/LAB - 2014 DIABETES AUDIT ;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**7**;JUN 14, 2007;Build 24
 ;
GATHER ;
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!($D(BDM))  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...Q:$$UP^XLFSTR($P(^AUPNVLAB(X,0),U,4))["CANC"
 ...I '$G(BDMACRA) Q:$$UP^XLFSTR($P(^AUPNVLAB(X,0),U,4))["COMMENT"
 ...Q:$P(^AUPNVLAB(X,0),U,4)=""
 ...I BDMLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BDMLT,21,"B",$P(^AUPNVLAB(X,0),U))) D SETO Q
 ...Q:'BDMOT
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,BDMOT)
 ...D SETO
 ...Q
 Q
LOINC(A,B) ;EP - is loinc code A in taxonomy B
 NEW %
 I '$G(B) Q ""
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
SETO ;
 S BDMC=BDMC+1
 S V=$P(^AUPNVLAB(X,0),U,3),BDMV=$P($P($G(^AUPNVSIT(V,0)),U),".") Q:'BDMV
 S BDM(9999999-BDMV,BDMC)=BDMV_"^"_$S($P(^AUPNVLAB(X,0),U,4)]"":$P(^AUPNVLAB(X,0),U,4),1:"")_"^"_$$VAL^XBDIQ1(9000010.09,X,.01)_"^"_X_";AUPNVLAB^"_V
 Q
SETV ;
 S BDMC=BDMC+1
 S V=$P(^AUPNVLAB(X,0),U,3),BDMV=$P($P($G(^AUPNVSIT(V,0)),U),".") Q:'BDMV
 S BDM(BDMC)=BDMV_"^"_$S($P(^AUPNVLAB(X,0),U,4)]"":$P(^AUPNVLAB(X,0),U,4),1:"")_"^"_$$VAL^XBDIQ1(9000010.09,X,.01)_"^"_X_";AUPNVLAB^"_V
 Q
SETN ;
 S N="" NEW A,G,BDMR,D
 S A=0 F  S A=$O(BDM(A)) Q:A'=+A  S BDMR(9999999-$P(BDM(A),U,1),A)=BDM(A)
 S (A,D,G)=0 F  S D=$O(BDMR(D)) Q:D'=+D!(G)  D
 .S A=0 F  S A=$O(BDMR(D,A)) Q:A'=+A!(G)  D
 ..S R=$P(^AUPNVLAB(+$P(BDM(A),U,4),0),U,4) I R]"",$$UP^XLFSTR(R)'="COMMENT" S G=A
 S N=$S(G:G,1:1)
 Q
SET3 ;
 NEW X,N1,N2,N3,A,T
 K A
 S X=0 F  S X=$O(BDM(X)) Q:X'=+X  S A($P(BDM(X),U),X)=""
 NEW D S D=0 F  S D=$O(A(D)) Q:D'=+D  D
 .S G=0,N=0 F  S N=$O(A(D,N)) Q:N'=+N  D
 ..I $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"",$$UP^XLFSTR($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4))'="COMMENT" S G=1 Q
 .I G S N=0 F  S N=$O(A(D,N)) Q:N'=+N  I $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)="" K BDM(N)
 .Q
 Q
 ;
URIN ;EP
 NEW BDM,X,%,E,R,V,BDMLT,BDMOT,B,D,L,J,BDMC,BDMV,V,G,C,BDMNROK,T,N,BDMACRA
1 ;
 K BDM S BDMC=0,BDMACRA=1
 S BDMOT=$O(^ATXAX("B","DM AUDIT A/C RATIO LOINC",0))
 S BDMLT=$O(^ATXLAB("B","DM AUDIT QUANT UACR",0))
 D GATHER
 S D=0,C=0,G="" F  S D=$O(BDM(D)) Q:D'=+D!(G]"")  S C=0 F  S C=$O(BDM(D,C)) Q:C'=+C!(G]"")  D
 .;EVALUATE RESULT, if contains < or > strip that off and use the number
 .S R=$P(BDM(D,C),U,2)
 .I R["<"!(R[">") S R=$$STV^BDMDB18(R,8) I R]"" S G="1  Yes  "_U_$P(BDM(D,C),U,2)_U_$$FMTE^XLFDT($P(BDM(D,C),U))_U_$P(BDM(D,C),U,3)_U_1_U_R
 .S R=$$STV^BDMDB18(R,8)
 .I R="" D  Q
 ..S (E,X,J,L)=""
 ..S BDMOT=$O(^ATXAX("B","DM AUDIT MICROALBUMIN LOINC",0))
 ..S BDMLT=$O(^ATXLAB("B","DM AUDIT MICROALBUMINURIA TAX",0))
 ..S V=$P(BDM(D,C),U,5) S X=0 F  S X=$O(^AUPNVLAB("AD",V,X)) Q:X'=+X!(G)  D
 ...S L=$P($G(^AUPNVLAB(X,0)),U,1)
 ...Q:L=""
 ...S E=""
 ...I BDMLT,$D(^ATXLAB(BDMLT,21,"B",L)) S E=1
 ...I 'E,BDMOT S J=$P($G(^AUPNVLAB(X,11)),U,13) I J]"",$$LOINC(J,BDMOT) S E=1
 ...Q:'E
 ...I $P(^AUPNVLAB(X,0),U,4)["<" S G="1  Yes  "_U_$P(BDM(D,C),U,2)_U_$$FMTE^XLFDT($P(BDM(D,C),U))_U_$P(BDM(D,C),U,3)_U_1_U_5
 ...I $P(^AUPNVLAB(X,0),U,4)[">" S G="1  Yes  "_U_$P(BDM(D,C),U,2)_U_$$FMTE^XLFDT($P(BDM(D,C),U))_U_$P(BDM(D,C),U,3)_U_1_U_999
 ..I 'G S G="1  Yes  "_U_$P(BDM(D,C),U,2)_U_$$FMTE^XLFDT($P(BDM(D,C),U))_U_$P(BDM(D,C),U,3)_U_1_U_R
 .S G="1  Yes  "_U_$P(BDM(D,C),U,2)_U_$$FMTE^XLFDT($P(BDM(D,C),U))_U_$P(BDM(D,C),U,3)_U_1_U_R
 Q G
 ;OLD STUFF
 I G]"" Q G
 K BDMACRA
2 ;
 K BDM
 S BDMC=0
 S BDMOT="DM AUDIT P/C RATIO LOINC"
 S BDMLT=$O(^ATXLAB("B","DM AUDIT P/C RATIO TAX",0))
 D GATHER
 S D=0,C=0,G="" F  S D=$O(BDM(D)) Q:D'=+D!(G]"")  S C=0 F  S C=$O(BDM(D,C)) Q:C'=+C!(G]"")  D
 .S G="1  Yes  "_U_$P(BDM(D,C),U,2)_U_$$FMTE^XLFDT($P(BDM(D,C),U))_U_$P(BDM(D,C),U,3)_U_2
 I G]"" Q G
3 ;
 K BDM
 S BDMC=0
 S BDMOT=""
 S BDMLT=$O(^ATXLAB("B","DM AUDIT 24HR URINE PROTEIN",0))
 D GATHER
 S D=0,C=0,G="" F  S D=$O(BDM(D)) Q:D'=+D!(G]"")  S C=0 F  S C=$O(BDM(D,C)) Q:C'=+C!(G]"")  D
 .S G="1  Yes  "_U_$P(BDM(D,C),U,2)_U_$$FMTE^XLFDT($P(BDM(D,C),U))_U_$P(BDM(D,C),U,3)_U_3
 I G]"" Q G
4 ;
 K BDM
 S BDMC=0
 S BDMOT=""
 S BDMLT=$O(^ATXLAB("B","DM AUDIT SEMI QUANT UACR",0))
 D GATHER
 S D=0,C=0,G="" F  S D=$O(BDM(D)) Q:D'=+D!(G]"")  S C=0 F  S C=$O(BDM(D,C)) Q:C'=+C!(G]"")  D
 .S G="1  Yes  "_U_$P(BDM(D,C),U,2)_U_$$FMTE^XLFDT($P(BDM(D,C),U))_U_$P(BDM(D,C),U,3)_U_4
 I G]"" Q G
5 ;
 K BDM
 S BDMC=0
 S BDMOT=$O(^ATXAX("B","DM AUDIT MICROALBUMIN LOINC",0))
 S BDMLT=$O(^ATXLAB("B","DM AUDIT MICROALBUMINURIA TAX",0))
 D GATHER
 S D=0,C=0,G="" F  S D=$O(BDM(D)) Q:D'=+D!(G]"")  S C=0 F  S C=$O(BDM(D,C)) Q:C'=+C!(G]"")  D
 .S G="1  Yes  "_U_$P(BDM(D,C),U,2)_U_$$FMTE^XLFDT($P(BDM(D,C),U))_U_$P(BDM(D,C),U,3)_U_5
 I G]"" Q G
6 ;
 K BDM
 S BDMC=0
 S BDMOT=$O(^ATXAX("B","BGP URINE PROTEIN LOINC CODES",0))
 S BDMLT=$O(^ATXLAB("B","DM AUDIT URINE PROTEIN TAX",0))
 D GATHER
 S D=0,C=0,G="" F  S D=$O(BDM(D)) Q:D'=+D!(G]"")  S C=0 F  S C=$O(BDM(D,C)) Q:C'=+C!(G]"")  D
 .S G="1  Yes  "_U_$P(BDM(D,C),U,2)_U_$$FMTE^XLFDT($P(BDM(D,C),U))_U_$P(BDM(D,C),U,3)_U_6
 I G]"" Q G
 Q "2  No"
SEMIE(V) ;EP - called from epi
 I V="" Q ""
 I V["-" Q 2
 I V["300" Q 3
 I V[">" Q 3
 I V["<" Q 1
 S V=$$STV^BDMDB18(V,5,1)
 S V=+V
 I 'V Q ""
 I +V>299.99 Q 3
 I +V>29.9999,+V<299.9999 Q 2
 I +V<30 Q 1
 Q ""
UPE(%) ;EP - called from epi
 I %="" Q ""
 I %["+" Q 2
 I %[">" Q 2
 I $E(%)="P" Q 2
 I $E(%)="p" Q 2
 I $E($$UP^XLFSTR(%))="S" Q 2
 I $E($$UP^XLFSTR(%))="M" Q 2
 I $E($$UP^XLFSTR(%))="L" Q 2
 I +%>29 Q 2
 Q 1
