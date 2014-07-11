DGRRPSA2 ; ALB/SGG - DG R&R PatientServices GET data - return XML ; 09/30/03
 ;;5.3;Registration;**557,1015**;Aug 13, 1993;Build 21
 ;
 ;
RTNLIST ;
 ;
 ; DGRRPSAA  DGRRPSAC  DGRRPSAD  DGRRPSAM  DGRRPSAT  DGRRPSD1  DGRRPSD2  DGRRPSD3
 ; DGRRPSEE  DGRRPSGT  DGRRPSIC  DGRRPSID  DGRRPSIN  DGRRPSKN  DGRRPSXX
 ;
 ;
 ; PRIMARY PROCESS ROUTINE:
 ; DGRRPSGT  -  DGRRPSGT receives a request for patient info through vista link
 ;              This routine then call out to the individual dataset get routines
 ;              The final XML to be returned is then built in this routine
 ;              
 ; DOCUMENTATION:
 ; DGRRPSA1  -
 ; DGRRPSA2  -
 ; 
 ; INDIVIDUAL DATASET GETTERS:
 ; 
 ; DGRRPSAC  - PS Address CONFIDENTIAL DATA SET
 ; DGRRPSAM  - PS Address MAIN DATA SET
 ; DGRRPSAT  - PS Address TEMPORARY DATA SET
 ; 
 ; DGRRPSD1  - DEMOGRAPHIC DATA SET 1
 ; DGRRPSD2  - DEMOGRAPHIC DATA SET 2
 ; DGRRPSD3  - DEMOGRAPHIC DATA SET 3
 ; 
 ; DGRRPSAD  - PS ADT DATA SET
 ; DGRRPSEE  - ENROLLMENT AND ELIGABILITY DATA SET
 ; DGRRPSIC  - INCOMPETENT DATA SET
 ; DGRRPSID  - IDENTIFICATION DATA SET
 ; DGRRPSIN  - INSTITUTION DATA SET
 ; DGRRPSKN  - Next of Kin DATA SET
 ; 
 ; DEVELOPER TEST INFO:
 ; DGRRPSXX  -
 ;
 QUIT