BGP4POS1 ; IHS/CMI/LAB - NO DESCRIPTION PROVIDED 28 Jan 2005 1:34 PM ;
 ;;14.0;IHS CLINICAL REPORTING;;NOV 14, 2013;Build 101
 ;
 ;
DRUGS ;EP set up drug taxonomies
 S ATXFLG=1
 S BGPX=$O(^ATXAX("B","BGP PQA ACEI ARB MEDS",0))
 I BGPX S DA=BGPX,DIE="^ATXAX(",DR=".01///BGP PQA RASA MEDS" D ^DIE K DR,DIE,DA
 S BGPX="BGP CMS WARFARIN MEDS",BGPTAX="",BGPNDCT="" D DRUG1 D
 .S BGPTX=$O(^ATXAX("B","BGP CMS WARFARIN MEDS",0))
 .Q:'BGPTX
 .S A=0,B="" F  S A=$O(^ATXAX(BGPTX,21,A)) Q:A'=+A  S B=A
 .S BGPC=B
 .S J=0 F  S J=$O(^PSDRUG(J)) Q:J'=+J  S C=$P(^PSDRUG(J,0),U,1) I C["WARFARIN" D
 ..Q:$D(^ATXAX(BGPTX,21,"B",J))
 ..S BGPC=BGPC+1,^ATXAX(BGPTX,21,BGPC,0)=J_U_J,^ATXAX(BGPTX,21,0)="^9002226.02101A^"_BGPC_U_BGPC
 .S DA=BGPTX,DIK="^ATXAX(" D IX1^DIK
 S BGPX="BGP CMS ACEI MEDS",BGPTAX="BGP CMS ACEI MEDS CLASS",BGPNDCT="",BGPVAPI="" D DRUG1
 S BGPX="BGP CMS BETA BLOCKER MEDS",BGPTAX="BGP CMS BETA BLOCKER CLASS",BGPNDCT="BGP CMS BETA BLOCKER NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP CMS ANTIBIOTIC MEDS",BGPTAX="BGP CMS ANTIBIOTICS MEDS CLASS",BGPNDCT="",BGPVAPI="" D DRUG1
 S BGPX="BGP CMS ARB MEDS",BGPTAX="BGP CMS ARB MEDS CLASS",BGPNDCT="",BGPVAPI="" D DRUG1
 S BGPX="DM AUDIT ASPIRIN DRUGS",BGPTAX="",BGPNDCT="",BGPVAPI="" D DRUG1
 S BGPX="BGP ANTI-PLATELET DRUGS",BGPTAX="BGP CMS ANTI-PLATELET CLASS",BGPNDCT="",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS OSTEOPOROSIS DRUGS",BGPTAX="",BGPNDCT="BGP HEDIS OSTEOPOROSIS NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP ASTHMA CONTROLLERS",BGPTAX="",BGPNDCT="BGP ASTHMA CONTROLLER NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP ASTHMA INHALED STEROIDS",BGPTAX="",BGPNDCT="",BGPVAPI="BGP ASTHMA INHALED STEROID VAP" D DRUG1
 S BGPX="BGP ASTHMA LEUKOTRIENE",BGPTAX="",BGPNDCT="BGP ASTHMA LEUKOTRIENE NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS ANTIDEPRESSANT MEDS",BGPTAX="",BGPNDCT="BGP HEDIS ANTIDEPRESSANT NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP RA OA NSAID MEDS",BGPTAX="",BGPNDCT="",BGPVAPI="BGP RA OA NSAID VAPI" D DRUG1
 S BGPX="BGP RA GLUCOCORTICOIDS MEDS",BGPTAX="BGP RA GLUCOCORTICOIDS CLASS",BGPNDCT="",BGPVAPI="BGP RA GLUCOCORTICOIDS VAPI" D DRUG1
 S BGPX="BGP HEDIS ANTIBIOTICS MEDS",BGPTAX="",BGPNDCT="BGP HEDIS ANTIBIOTICS NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS ASTHMA LEUK MEDS",BGPTAX="",BGPNDCT="BGP HEDIS ASTHMA LEUK NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS ASTHMA MEDS",BGPTAX="",BGPNDCT="BGP HEDIS ASTHMA NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS PRIMARY ASTHMA MEDS",BGPTAX="",BGPNDCT="BGP HEDIS PRIMARY ASTHMA NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS ASTHMA INHALED MEDS",BGPTAX="",BGPNDCT="BGP HEDIS ASTHMA INHALED NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS BETA BLOCKER MEDS",BGPTAX="",BGPNDCT="BGP HEDIS BETA BLOCKER NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP RA IM GOLD MEDS",BGPTAX="",BGPNDCT="BGP RA IM GOLD NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP RA AZATHIOPRINE MEDS",BGPTAX="",BGPNDCT="",BGPVAPI="BGP RA AZATHIOPRINE VAPI" D DRUG1
 S BGPX="BGP RA LEFLUNOMIDE MEDS",BGPTAX="",BGPNDCT="",BGPVAPI="BGP RA LEFLUNOMIDE VAPI" D DRUG1
 S BGPX="BGP RA ORAL GOLD MEDS",BGPTAX="",BGPNDCT="",BGPVAPI="BGP RA ORAL GOLD VAPI" D DRUG1
 S BGPX="BGP RA CYCLOSPORINE MEDS",BGPTAX="",BGPNDCT="BGP RA CYCLOSPORINE NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP RA METHOTREXATE MEDS",BGPTAX="",BGPNDCT="",BGPVAPI="BGP RA METHOTREXATE VAPI" D DRUG1
 S BGPX="BGP RA MYCOPHENOLATE MEDS",BGPTAX="",BGPNDCT="",BGPVAPI="BGP RA MYCOPHENOLATE VAPI" D DRUG1
 S BGPX="BGP RA PENICILLAMINE MEDS",BGPTAX="",BGPNDCT="",BGPVAPI="BGP RA PENICILLAMINE VAPI" D DRUG1
 S BGPX="BGP RA SULFASALAZINE MEDS",BGPTAX="",BGPNDCT="",BGPVAPI="BGP RA SULFASALAZINE VAPI" D DRUG1
 S BGPX="BGP CMS THROMBOLYTIC MEDS",BGPTAX="BGP THROMBOLYTIC AGENT CLASS",BGPNDCT="",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS ANTICHOLINERGIC MEDS",BGPTAX="",BGPNDCT="BGP HEDIS ANTICHOLINERGIC NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS ANTITHROMBOTIC MEDS",BGPTAX="",BGPNDCT="BGP HEDIS ANTITHROMBOTIC NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS ANTI-INFECTIVE MEDS",BGPTAX="",BGPNDCT="BGP HEDIS ANTI-INFECTIVE NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS CARDIOVASCULAR MEDS",BGPTAX="",BGPNDCT="BGP HEDIS CARDIOVASCULAR NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS CENTRAL NERVOUS MEDS",BGPTAX="",BGPNDCT="BGP HEDIS CENTRAL NERVOUS NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS NONBENZODIAZ MEDS",BGPTAX="",BGPNDCT="BGP HEDIS NONBENZODIAZ NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS ENDOCRINE MEDS",BGPTAX="",BGPNDCT="BGP HEDIS ENDOCRINE NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS GASTROINTESTINAL MED",BGPTAX="",BGPNDCT="BGP HEDIS GASTROINTESTINAL NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS PAIN MEDS",BGPTAX="",BGPNDCT="BGP HEDIS PAIN NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS SKL MUSCLE RELAX MED",BGPTAX="",BGPNDCT="BGP HEDIS SKL MUSCLE RELAX NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS ACEI MEDS",BGPTAX="",BGPNDCT="BGP HEDIS ACEI NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS ARB MEDS",BGPTAX="",BGPNDCT="BGP HEDIS ARB NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP HEDIS STATIN MEDS",BGPTAX="",BGPNDCT="BGP HEDIS STATIN NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP CMS WARFARIN MEDS",BGPTAX="",BGPNDCT="",BGPVAPI="BGP CMS WARFARIN VAPI" D DRUG1
 ;PQA
 S BGPX="BGP PQA BETA BLOCKER MEDS",BGPTAX="",BGPNDCT="BGP PQA BETA BLOCKER NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP PQA RASA MEDS",BGPTAX="",BGPNDCT="BGP PQA RASA NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP PQA CCB MEDS",BGPTAX="",BGPNDCT="BGP PQA CCB NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP PQA BIGUANIDE MEDS",BGPTAX="",BGPNDCT="BGP PQA BIGUANIDE NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP PQA SULFONYLUREA MEDS",BGPTAX="",BGPNDCT="BGP PQA SULFONYLUREA NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP PQA THIAZOLIDINEDIONE MEDS",BGPTAX="",BGPNDCT="BGP PQA THIAZOLIDINEDIONE NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP PQA STATIN MEDS",BGPTAX="",BGPNDCT="BGP PQA STATIN NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP PQA ANTIRETROVIRAL MEDS",BGPTAX="",BGPNDCT="BGP PQA ANTIRETROVIRAL NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP PQA SABA MEDS",BGPTAX="",BGPNDCT="BGP PQA SABA NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP PQA CONTROLLER MEDS",BGPTAX="",BGPNDCT="BGP PQA CONTROLLER NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP ASTHMA LABA MEDS",BGPTAX="",BGPNDCT="BGP ASTHMA LABA NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP PQA DPP IV MEDS",BGPTAX="",BGPNDCT="BGP PQA DPP IV NDC",BGPVAPI="" D DRUG1
 S BGPX="BGP PQA DIABETES ALL CLASS",BGPTAX="",BGPNDCT="BGP PQA DIABETES ALL CLASS NDC",BGPVAPI="" D DRUG1
SM ;
 S ATXFLG=1,BGPX="BGP CMS SMOKING CESSATION MEDS",BGPTAX="",BGPNDCT="",BGPVAPI="BGP CMS SMOKING CESSATION VAPI" D DRUG1
 D SMOKING
 ;
 S BGPX="BGP CMS SYSTEMIC CHEMO MEDS",BGPTAX="",BGPNDCT="",BGPVAPI="" D DRUG1
 ;prepopulate this one
 D SYSCHEMO
 S BGPX="BGP CMS IMMUNOSUPPRESSIVE MEDS",BGPTAX="",BGPNDCT="",BGPVAPI="" D DRUG1
 D IMMUNO
FIXA ;TAKE OUT ARB'S FROM ASPIRIN TAXONOMY
 S BGPT=$O(^ATXAX("B","DM AUDIT ASPIRIN DRUGS",0))
 I BGPT D
 .S BGPX=0 F  S BGPX=$O(^ATXAX(BGPT,21,BGPX)) Q:BGPX'=+BGPX  D
 ..S BGPY=$P(^ATXAX(BGPT,21,BGPX,0),U)
 ..I $P($G(^PSDRUG(BGPY,0)),U,2)="CV805" D
 ...K ^ATXAX(BGPT,21,"B",BGPY),^ATXAX(BGPT,21,"AA",BGPY),^ATXAX(BGPT,21,BGPX,0)
 K ATXFLG,BGPX,BGPDA,BGPTX
 Q
DRUG1 ;
 W !,"Creating ",BGPX," Taxonomy..."
 S BGPTX=$O(^ATXAX("B",BGPX,0))
 I 'BGPTX D  Q:Y=-1
 .S X=BGPX,DIC="^ATXAX(",DIC(0)="L",DIADD=1,DLAYGO=9002226 D ^DIC K DIC,DA,DIADD,DLAYGO,I
 .I Y=-1 W !!,"ERROR IN CREATING ",BGPX," TAX" Q
 .S BGPTX=+Y,$P(^ATXAX(BGPTX,0),U,2)=BGPX,$P(^(0),U,8)=0,$P(^(0),U,9)=DT,$P(^(0),U,12)=173,$P(^(0),U,13)=0,$P(^(0),U,15)=50,^ATXAX(BGPTX,21,0)="^9002226.02101A^0^0"
 S DA=BGPTX,DIK="^ATXAX(" D IX1^DIK
 I $G(BGPTAX)]"" D
 .S A=0,B="" F  S A=$O(^ATXAX(BGPTX,21,A)) Q:A'=+A  S B=A
 .S BGPC=B
 .S ^ATXAX(BGPTX,21,0)="^9002226.02101A^"_B_U_B
 .S Z=$O(^ATXAX("B",BGPTAX,0))
 .S J=0 F  S J=$O(^PSDRUG(J)) Q:J'=+J  S C=$P($G(^PSDRUG(J,0)),U,2) I C]"",$D(^ATXAX(Z,21,"B",C)) D
 ..Q:$D(^ATXAX(BGPTX,21,"B",J))
 ..S BGPC=BGPC+1,^ATXAX(BGPTX,21,BGPC,0)=J_U_J
 I $G(BGPNDCT)]"" D
 .S A=0,B="" F  S A=$O(^ATXAX(BGPTX,21,A)) Q:A'=+A  S B=A
 .S BGPC=B
 .S ^ATXAX(BGPTX,21,0)="^9002226.02101A^"_B_U_B
 .S Z=$O(^ATXAX("B",BGPNDCT,0))
 .S J=0 F  S J=$O(^PSDRUG(J)) Q:J'=+J  S C=$P($G(^PSDRUG(J,2)),U,4) I C]"",$D(^ATXAX(Z,21,"B",C)) D
 ..Q:$D(^ATXAX(BGPTX,21,"B",J))
 ..S BGPC=BGPC+1,^ATXAX(BGPTX,21,BGPC,0)=J_U_J
 I $G(BGPVAPI)]"" D
 .S A=0,B="" F  S A=$O(^ATXAX(BGPTX,21,A)) Q:A'=+A  S B=A
 .S BGPC=B
 .S ^ATXAX(BGPTX,21,0)="^9002226.02101A^"_B_U_B
 .S Z=$O(^ATXAX("B",BGPVAPI,0))
 .S J=0 F  S J=$O(^PSDRUG(J)) Q:J'=+J  S C=$$VAPI(J,Z) I C]"",$D(^ATXAX(Z,21,"B",C)) D
 ..Q:$D(^ATXAX(BGPTX,21,"B",J))
 ..S BGPC=BGPC+1,^ATXAX(BGPTX,21,BGPC,0)=J_U_J
 S DA=BGPTX,DIK="^ATXAX(" D IX1^DIK
 Q
VAPI(D,B) ;
 NEW A,Y
 S A=$$GET1^DIQ(50,J,22,"I")  ;INTERNAL
 I 'A Q ""
 S Y=$$GET1^DIQ(50.68,A,6)
 Q Y
 ;
LAB ;EP
 S BGPX=$O(^ATXLAB("B","BGP PCR TAX",0))
 I BGPX S DA=BGPX,DR=".01///BGP HIV VIRAL LOAD TAX",DIE="^ATXLAB(" D ^DIE K DA,DR,DIE,DIV,DIU,DIC
 S BGPX="BGP HEP C TESTS TAX" D LAB1
 S BGPX="BGP CD4 TAX" D LAB1
 S BGPX="BGP CHLAMYDIA TESTS TAX" D LAB1
 S BGPX="BGP CMS ABG TESTS" D LAB1
 S BGPX="BGP GPRA ESTIMATED GFR TAX" D LAB1
 S BGPX="BGP GPRA FOB TESTS" D LAB1
 S BGPX="BGP HIV TEST TAX" D LAB1
 S BGPX="BGP HIV VIRAL LOAD TAX" D LAB1
 S BGPX="BGP PAP SMEAR TAX" D LAB1
 S BGPX="DM AUDIT A/C RATIO TAX" D LAB1
 S BGPX="DM AUDIT CHOLESTEROL TAX" D LAB1
 S BGPX="DM AUDIT CREATININE TAX" D LAB1
 S BGPX="DM AUDIT FASTING GLUCOSE TESTS" D LAB1
 S BGPX="DM AUDIT HDL TAX" D LAB1
 S BGPX="DM AUDIT HGB A1C TAX" D LAB1
 S BGPX="DM AUDIT LDL CHOLESTEROL TAX" D LAB1
 S BGPX="DM AUDIT MICROALBUMINURIA TAX" D LAB1
 S BGPX="DM AUDIT TRIGLYCERIDE TAX" D LAB1
 S BGPX="DM AUDIT URINE PROTEIN TAX" D LAB1
 S BGPX="BGP CBC TESTS" D LAB1
 S BGPX="DM AUDIT URINALYSIS TAX" D LAB1
 S BGPX="DM AUDIT AST TAX" D LAB1
 S BGPX="DM AUDIT ALT TAX" D LAB1
 S BGPX="BGP GROUP A STREP TESTS" D LAB1
 S BGPX="BGP LIVER FUNCTION TESTS" D LAB1
 S BGPX="BGP URINE GLUCOSE" D LAB1
 S BGPX="BGP POTASSIUM TESTS" D LAB1
 S BGPX="BGP CMS BLOOD CULTURE" D LAB1
 S BGPX="BGP QUANT URINE PROTEIN" D LAB1
 S BGPX="DM AUDIT GLUCOSE TESTS TAX" D LAB1
 S BGPX="BGP CREATINE KINASE TAX" D LAB1
 S BGPX="BGP HEP C TESTS TAX" D LAB1
 S BGPX="BGP HPV TESTS TAX" D LAB1
 S BGPX="BGP HIV-1 TEST TAX" D LAB1
 S BGPX="BGP HIV-2 TEST TAX" D LAB1
 S BGPX="BGP QUANT UACR TESTS",BGPPAN=1 D LAB1
 Q
LAB1 ;
 S BGPDA=$O(^ATXLAB("B",BGPX,0))
 Q:BGPDA  ;taxonomy already exisits
 W !,"Creating ",BGPX," Taxonomy..."
 S X=BGPX,DIC="^ATXLAB(",DIC(0)="L",DIADD=1,DLAYGO=9002228 D ^DIC K DIC,DA,DIADD,DLAYGO,I
 I Y=-1 W !!,"ERROR IN CREATING ",BGPX," TAX" Q
 S BGPTX=+Y,$P(^ATXLAB(BGPTX,0),U,2)=BGPX,$P(^(0),U,5)=DUZ,$P(^(0),U,6)=DT,$P(^(0),U,8)="B",$P(^(0),U,9)=60,$P(^(0),U,11)=$G(BGPPAN)
 S ^ATXLAB(BGPTX,21,0)="^9002228.02101PA^0^0"
 S DA=BGPTX,DIK="^ATXAX(" D IX1^DIK
 Q
 ;
CLTAX ;EP
 W !,"Creating Primary Care Clinics taxonomy..."
 S BGPDA=0 S BGPDA=$O(^ATXAX("B","BGP PRIMARY CARE CLINICS",BGPDA)) I BGPDA S DA=BGPDA S DIK="^ATXAX(" D ^DIK K DA,DIK
 S X="BGP PRIMARY CARE CLINICS",DIC="^ATXAX(",DIC(0)="L",DIADD=1,DLAYGO=9002226 D ^DIC K DIC,DA,DIADD,DLAYGO,I
 I Y=-1 W !!,"ERROR IN CREATING BGP PRIMARY CARE CLINICS TAX" Q
 S BGPTX=+Y,$P(^ATXAX(BGPTX,0),U,2)="BGP PRIMARY CARE CLINICS",$P(^(0),U,5)=DUZ,$P(^(0),U,8)=0,$P(^(0),U,9)=DT,$P(^(0),U,12)=172,$P(^(0),U,13)=0,$P(^(0),U,15)=40.7,^ATXAX(BGPTX,21,0)="^9002226.02101A^0^0"
 D ^XBFMK K DIADD,DLAYGO S BGPTEXT="CLINICS" F BGPX=1:1:6 S X=$P($T(@BGPTEXT+BGPX),";;",2),Y=$O(^DIC(40.7,"C",X,0)) I Y D
 .S ^ATXAX(BGPTX,21,BGPX,0)=+Y,$P(^ATXAX(BGPTX,21,0),U,3)=BGPX,$P(^(0),U,4)=BGPX,^ATXAX(BGPTX,21,"AA",+Y,+Y)=""
 .Q
 S DA=BGPTX,DIK="^ATXAX(" D IX1^DIK
 Q
 ;
PRVTAX ;EP
 S ATXFLG=1
 W !,"Creating Prescribing provider taxonomy..."
 S BGPDA=0 S BGPDA=$O(^ATXAX("B","BGP PRESCRIBING PROVIDER CLASS",BGPDA)) I BGPDA S DA=BGPDA S DIK="^ATXAX(" D ^DIK K DA,DIK
 S X="BGP PRESCRIBING PROVIDER CLASS",DIC="^ATXAX(",DIC(0)="L",DIADD=1,DLAYGO=9002226 D ^DIC K DIC,DA,DIADD,DLAYGO,I
 I Y=-1 W !!,"ERROR IN CREATING BGP PRESCRIBING PROVIDER CLASS TAX" Q
 S BGPTX=+Y,$P(^ATXAX(BGPTX,0),U,2)="BGP PRESCRIBING PROVIDER CLASS",$P(^(0),U,5)=DUZ,$P(^(0),U,8)=0,$P(^(0),U,9)=DT,$P(^(0),U,12)=210,$P(^(0),U,13)=0,$P(^(0),U,15)=7,^ATXAX(BGPTX,21,0)="^9002226.02101A^0^0"
 D ^XBFMK K DIADD,DLAYGO S BGPTEXT="PREPROV" F BGPX=1:1:43 S X=$P($T(@BGPTEXT+BGPX),";;",2),Y=$O(^DIC(7,"D",X,0)) I Y D
 .S ^ATXAX(BGPTX,21,BGPX,0)=+Y,$P(^ATXAX(BGPTX,21,0),U,3)=BGPX,$P(^(0),U,4)=BGPX,^ATXAX(BGPTX,21,"AA",+Y,+Y)=""
 .Q
 S DA=BGPTX,DIK="^ATXAX(" D IX1^DIK
 Q
 ;
SYSCHEMO ;
 S BGPTX=$O(^ATXAX("B","BGP CMS SYSTEMIC CHEMO MEDS",0))
 Q:'BGPTX
 S A=0,B="" F  S A=$O(^ATXAX(BGPTX,21,A)) Q:A'=+A  S B=A
 S BGPC=B
 S ^ATXAX(BGPTX,21,0)="^9002226.02101A^"_B_U_B
 S J=0 F  S J=$O(^PSDRUG(J)) Q:J'=+J  D
 .S C=$P($G(^PSDRUG(J,0)),U,2)
 .I C["AN" D
 ..Q:$D(^ATXAX(BGPTX,21,"B",J))
 ..S BGPC=BGPC+1,^ATXAX(BGPTX,21,BGPC,0)=J_U_J
 ..S ^ATXAX(BGPTX,21,0)="^9002226.02101A^"_BGPC_U_BGPC
 ..Q
 .Q
 S DA=BGPTX,DIK="^ATXAX(" D IX1^DIK
 Q
IMMUNO ;
 S BGPTX=$O(^ATXAX("B","BGP CMS IMMUNOSUPPRESSIVE MEDS",0))
 Q:'BGPTX
 S A=0,B="" F  S A=$O(^ATXAX(BGPTX,21,A)) Q:A'=+A  S B=A
 S BGPC=B
 S ^ATXAX(BGPTX,21,0)="^9002226.02101A^"_B_U_B
 S J=0 F  S J=$O(^PSDRUG(J)) Q:J'=+J  D
 .S C=$P($G(^PSDRUG(J,0)),U,2)
 .I C="IM600"!(C="MS190")!(C="MS109"&($$UP^XLFSTR($P(^PSDRUG(J,0),U))'["HYALURONATE")) D
 ..Q:$D(^ATXAX(BGPTX,21,"B",J))
 ..S BGPC=BGPC+1,^ATXAX(BGPTX,21,BGPC,0)=J_U_J
 ..S ^ATXAX(BGPTX,21,0)="^9002226.02101A^"_BGPC_U_BGPC
 ..Q
 .Q
 S DA=BGPTX,DIK="^ATXAX(" D IX1^DIK
 Q
SMOKING ;
 S BGPTX=$O(^ATXAX("B","BGP CMS SMOKING CESSATION MEDS",0))
 Q:'BGPTX
 S A=0,B="" F  S A=$O(^ATXAX(BGPTX,21,A)) Q:A'=+A  S B=A
 S BGPC=B
 S ^ATXAX(BGPTX,21,0)="^9002226.02101A^"_B_U_B
 S J=0 F  S J=$O(^PSDRUG(J)) Q:J'=+J  D
 .S C=$P($G(^PSDRUG(J,0)),U,1)
 .I C["NICOTINE PATCH"!(C["NICOTINE POLACRILEX")!(C["NICOTINE INHALER")!(C["NICOTINE NASAL SPRAY") D
 ..Q:$D(^ATXAX(BGPTX,21,"B",J))
 ..S BGPC=BGPC+1,^ATXAX(BGPTX,21,BGPC,0)=J_U_J
 ..S ^ATXAX(BGPTX,21,0)="^9002226.02101A^"_BGPC_U_BGPC
 ..Q
 .Q
 S DA=BGPTX,DIK="^ATXAX(" D IX1^DIK
 Q
 ;
MHPROV ;
 ;;06
 ;;12
 ;;19
 ;;48
 ;;49
 ;;50
 ;;62
 ;;63
 ;;81
 ;;92
 ;;93
 ;;94
 ;;95
 ;;96
 ;;
CLINICS ;
 ;;01
 ;;06
 ;;13
 ;;20
 ;;24
 ;;28
 ;;
PRVS ;
 ;;00
 ;;11
 ;;16
 ;;17
 ;;18
 ;;21
 ;;25
 ;;33
 ;;41
 ;;44
 ;;45
 ;;49
 ;;64
 ;;68
 ;;69
 ;;70
 ;;71
 ;;72
 ;;73
 ;;74
 ;;75
 ;;76
 ;;77
 ;;78
 ;;79
 ;;80
 ;;81
 ;;82
 ;;83
 ;;84
 ;;85
 ;;86
 ;;A1
 ;;
PREPROV ;;
 ;;00
 ;;08
 ;;11
 ;;16
 ;;17
 ;;18
 ;;21
 ;;24
 ;;25
 ;;30
 ;;33
 ;;41
 ;;44
 ;;45
 ;;47
 ;;49
 ;;64
 ;;67
 ;;68
 ;;70
 ;;71
 ;;72
 ;;73
 ;;74
 ;;75
 ;;76
 ;;77
 ;;78
 ;;79
 ;;80
 ;;81
 ;;82
 ;;83
 ;;85
 ;;86
 ;;A1
 ;;A9
 ;;B1
 ;;B2
 ;;B3
 ;;B4
 ;;B5
 ;;B6
 ;;
 ;