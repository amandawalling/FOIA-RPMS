BQITD09 ;PRXM/HC/ALA-Hypertension ; 10 Apr 2006  4:38 PM
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 Q
 ;
POP(BQARY,TGLOB) ; EP -- By population
 ;
 ;Description
 ;  Finds all patients who meet the criteria for Hypertension
 ;Input
 ;  BQARY - Array of taxonomies and other information
 ;  TGLOB - Global where data is to be stored and passed back
 ;          to calling routine
 ;          Structure:
 ;          TGLOB(DFN,"CRITERIA",criteria or taxonomy,visit or problem ien)=date/time
 ;Variables
 ;  TAX - Taxonomy name
 ;  NIT - Number of iterations
 ;  TMFRAME - Time frame of check
 ;  FREF - File Number reference
 ;  PLFLG - Problem File flag
 ;  GREF - Global reference
 ;  TREF - Taxonomy temp reference
 ;
 ;  Clean up all current entries
 NEW DXNN,TDFN,DA,DIK,RGIEN
 ;
 I $D(@BQARY) D
 . D POP^BQITDGN(.BQARY,.TGLOB)
 Q
 ;
PAT(DEF,TGLOB,BDFN) ;EP -- By patient
 NEW DXOK,BQDXN,BQREF
 S DXOK=0
 S BQDXN=$$GDXN^BQITUTL(DEF)
 ;
 S BQREF="BQIRY"
 D GDF^BQITUTL(BQDXN,BQREF)
 Q $$PAT^BQITDGN(BQREF,TGLOB,BDFN)
