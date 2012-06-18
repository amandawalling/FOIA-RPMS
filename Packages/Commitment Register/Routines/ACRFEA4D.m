ACRFEA4D ;IHS/OIRM/DSD/THL,AEF - EDIT FINANCIAL DATA;  [ 11/01/2001   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;;NOV 05, 2001
 ;;ACRFEA4 CON'T
E1 ;EP;
 K ACRQUIT,DIR
 W @IOF
 W !?5,"Edit data for Document NO. ",@ACRON,ACRDOC,@ACROF,"  (",ACRID,")"
 I $P(ACRDOC0,U,19) D
 .W !!?5,"***** NOTE ***** THIS IS A CALL AGAINST BPA ",$P(^ACRDOC($P(ACRDOC0,U,19),0),U,2)
 .W !
 S:'$D(ACRREFX) ACRREFX=ACRREF
 I $P(ACRDOC0,U,15) D
 .W !!?5,"***** NOTE *****"
 .W !?5,"THIS IS ",$S(ACRREFX'=130&(ACRREFX'=600):"MODIFICATION",1:"AMENDMENT")," # ",$P(ACRDOC0,U,9)," OF DOCUMENT # ",$P($G(^ACRDOC(+$P(ACRDOC0,U,15),0)),U,2)
 .W !
 S:ACRREFX=499 ACRREFX=ACRREF
 S:ACRREF=210 ACRREFX=103
 I "^116^204^103^349^326^"[(U_ACRREFX_U) D ^ACRFSSPO
 I ACRREFX=103 S ACRREF=103 D
 .W !!?10,"1"
 .W ?15,"Basic Data"
 .W !?10,"2"
 .W ?15,"Enter Contract/Small Purchase Data"
 .W !?10,"3"
 .W ?15,"Add/Edit Items"
 .W !?10,"4"
 .W ?15,"Send for Approval"
 .W !?10,"5"
 .W ?15,"Print Document"
 .W !?10,"6"
 .W ?15,"Edit Quantity Discount"
 .W !?10,"7"
 .W ?15,"Edit Boiler Plate Statement"
 .W !?10,"8"
 .W ?15,"Review Document Status"
 .W !?10,"9"
 .W ?15,"Return Requisition for Resubmission"
 .W !?10,"10"
 .W ?15,"Edit Narrative/Justification"
 .W !?10,"11"
 .W ?15,"Add/Edit Vendor Data"
 .W !?10,"12"
 .W ?15,"Edit Procurement Status Report"
 .W !?10,"13"
 .W ?15,"Review Attachments"
 .W !?10,"14"
 .W ?15,"Shipping Instructions"
 .W !?10,"15"
 .W ?15,"Print Bidders List"
 .W !?10,"16"
 .W ?15,"Electronic Commerce"
 .W !?10,"17"
 .W ?15,"Small Purchase Checklist"
 .I $G(ACRPOT)>2500 D
 ..W !?10,"18"
 ..W ?15,"Print Cost Comparison Report"
 .S ACREND=$S($G(ACRPOT)>2500:18,1:17)
 I ACRREFX=349!(ACRREFX=326) S ACRREF=ACRREFX D
 .W !!?10,"1"
 .W ?15,"Basic Data"
 .W !?10,"2"
 .W ?15,"Enter Contract/Small Purchase Data"
 .W !?10,"3"
 .W ?15,"Add/Edit Items"
 .W !?10,"4"
 .W ?15,"Send for Approval"
 .W !?10,"5"
 .W ?15,"Print Document"
 .W !?10,"6"
 .W ?15,"Edit Quantity Discount"
 .W !?10,"7"
 .W ?15,"Edit Boiler Plate Statement"
 .W !?10,"8"
 .W ?15,"Review Document Status"
 .W !?10,"9"
 .W ?15,"Return Requisition for Resubmission"
 .W !?10,"10"
 .W ?15,"Edit Narrative/Justification"
 .W !?10,"11"
 .W ?15,"Add/Edit Vendor Data"
 .W !?10,"12"
 .W ?15,"Edit Procurement Status Report"
 .W !?10,"13"
 .W ?15,"Review Attachments"
 .W !?10,"14"
 .W ?15,"Shipping Instructions"
 .W !?10,"15"
 .W ?15,"Print Bidders List"
 .W !?10,"16"
 .W ?15,"Electronic Commerce"
 .I $G(ACRPOT)>2500 D
 ..W !?10,"17"
 ..W ?15,"Print Cost Comparison Report"
 .S ACREND=$S($G(ACRPOT)>2500:17,1:16)
 I ACRREFX=116!(ACRREFX=101) D
 .W !!?10,"1"
 .W ?15,"Basic Data"
 .W !?10,"2"
 .W ?15,"Requested Vendor"
 .W !?10,"3"
 .W ?15,"Edit Narrative/Justification"
 .W !?10,"4"
 .W ?15,"Add/Edit Items"
 .W !?10,"5"
 .W ?15,"Send for Approval"
 .W !?10,"6"
 .W ?15,"Print Document"
 .W !?10,"7"
 .W ?15,"Edit Quantity Discount"
 .W !?10,"8"
 .W ?15,"Edit Boiler Plate Statement"
 .W !?10,"9"
 .W ?15,"Specify Number of Attachments"
 .W !?10,"10"
 .W ?15,"Review Document Status"
 .W !?10,"11"
 .W ?15,"Shipping Instructions"
 .W !?10,"12"
 .W ?15,"Delete This Request"
 .I $G(ACRPOT)>2500 D
 ..W !?10,"13"
 ..W ?15,"Print Cost Comparison Report"
 .S ACREND=$S($G(ACRPOT)>2500:13,1:12)
 I ACRREFX=130 D
 .W !!?10,"1"
 .W ?15,"Basic Data"
 .W !?10,"2"
 .W ?15,"Edit Comments/Purpose of Travel"
 .W !?10,"3"
 .W ?15,"Travel Destination and Mode of Travel"
 .W !?10,"4"
 .W ?15,"Add/Edit Travel Days"
 .W !?10,"5"
 .W ?15,"Edit Airline Information"
 .W !?10,"6"
 .W ?15,"Send for Approval"
 .W !?10,"7"
 .W ?15,"Print Document"
 .W !?10,"8"
 .W ?15,"Review Document Status"
 .W !?10,"9"
 .W ?15,"Edit Object Class Code"
 .W !?10,"10"
 .W ?15,"Delete This Travel Request"
 .S ACREND=10
 I ACRREFX=600 D
 .W !!?10,"1"
 .W ?15,"Edit Travel Days"
 .W !?10,"2"
 .W ?15,"Edit Airline Information"
 .W !?10,"3"
 .W ?15,"Send for Approval"
 .W !?10,"4"
 .W ?15,"Print Document"
 .W !?10,"5"
 .W ?15,"Review Document Status"
 .W !?10,"6"
 .W ?15,"Travel Destination and Mode of Travel"
 .W !?10,"7"
 .W ?15,"Cancel This Travel Order"
 .W !?10,"8"
 .W ?15,"Enter/Edit Trip Report"
 .S ACREND=8
 I ACRREFX=148 D
 .W !!?10,"1"
 .W ?15,"Basic Data"
 .W !?10,"2"
 .W ?15,"Enter Training Vendor"
 .W !?10,"3"
 .W ?15,"Edit Justification/Training Need"
 .W !?10,"4"
 .W ?15,"Add/Edit Training Costs"
 .W !?10,"5"
 .W ?15,"Send for Approval"
 .W !?10,"6"
 .W ?15,"Print Document"
 .W !?10,"7"
 .W ?15,"Review Document Status"
 .W !?10,"8"
 .W ?15,"Delete This Training Request"
 .W !?10,"9"
 .W ?15,"Group Training"
 .S ACREND=9
 .I $$ACSREQ^ACRFTO(ACRDOCDA)=1 D
 ..W !?10,"10",?15,"Sign Agreement to Continue in Service"
 ..S ACREND=10
 Q