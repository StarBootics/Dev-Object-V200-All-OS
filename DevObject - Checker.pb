; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE G�N�R� AUTOMATIQUEMENT, NE PAS MODIFIER �
; MOINS D'AVOIR UNE RAISON TR�S TR�S VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code g�n�r� par : Dev-Object - V1.4.8
; Nom du projet : DevObject
; Nom du fichier : DevObject - Checker.pb
; Version du fichier : 1.1.1
; Programmation : OK
; Programm� par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 04-05-2021
; Mise � jour : 24-04-2022
; Cod� pour PureBasic : V6.00 Beta 6
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule Checker
  
  Interface Checker
    
    GetSources.i()
    AddSources(FileName.s)
    SelectSources.i(Index.l)
    NextSources.i()
    ResetSources()
    ClearSources()
    SourcesIndex.l()
    SourcesSize.l()
    Free()
    
  EndInterface
  
  Declare.i New(*BetweenParenthesis.StringBetween::StringBetween)
  
EndDeclareModule

Module Checker
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< D�claration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    *BetweenParenthesis.StringBetween::StringBetween
    CheckerAnalyzer.CheckerAnalyzer::CheckerAnalyzer
    List Sources.CheckerSource::CheckerSource()
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<
  
  Procedure.i GetSources(*This.Private_Members)
    
    ProcedureReturn *This\Sources()
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) d'ajout � la liste cha�n�e <<<<<

  Procedure AddSources(*This.Private_Members, FileName.s)
    
    AddElement(*This\Sources())
    *This\Sources() = CheckerSource::New(*This\BetweenParenthesis)
    *This\Sources()\SetFileName(FileName)
    *This\Sources()\Load(*This\CheckerAnalyzer)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) de S�lection dans la liste cha�n�e <<<<<

  Procedure.i SelectSources(*This.Private_Members, Index.l)
    
    ProcedureReturn SelectElement(*This\Sources(), Index)
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) �l�ment Suivant de la liste cha�n�e <<<<<

  Procedure.i NextSources(*This.Private_Members)
    
    ProcedureReturn NextElement(*This\Sources())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) Reset de la liste cha�n�e <<<<<

  Procedure ResetSources(*This.Private_Members)
    
    ResetList(*This\Sources())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) Clear de la liste cha�n�e <<<<<

  Procedure ClearSources(*This.Private_Members)
    
    ForEach *This\Sources()
      If *This\Sources() <> #Null
        *This\Sources()\Free()
      EndIf
    Next
    
    ClearList(*This\Sources())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) de num�ro d'index de la liste cha�n�e <<<<<

  Procedure.l SourcesIndex(*This.Private_Members)
    
    ProcedureReturn ListIndex(*This\Sources())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) de grandeur de la liste cha�n�e <<<<<

  Procedure.l SourcesSize(*This.Private_Members)
    
    ProcedureReturn ListSize(*This\Sources())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Destructeur <<<<<

  Procedure Free(*This.Private_Members)
    
    If *This\CheckerAnalyzer <> #Null
      *This\CheckerAnalyzer\Free()
    EndIf
    
    ForEach *This\Sources()
      If *This\Sources() <> #Null
        *This\Sources()\Free()
      EndIf
    Next
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Constructeur <<<<<

  Procedure.i New(*BetweenParenthesis.StringBetween::StringBetween)
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\BetweenParenthesis = *BetweenParenthesis
    *This\CheckerAnalyzer = CheckerAnalyzer::New()
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les entr�es de la table virtuelle <<<<<

  DataSection
    START_METHODS:
    Data.i @GetSources()
    Data.i @AddSources()
    Data.i @SelectSources()
    Data.i @NextSources()
    Data.i @ResetSources()
    Data.i @ClearSources()
    Data.i @SourcesIndex()
    Data.i @SourcesSize()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code g�n�r� en : 00.001 secondes (229000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 7 (Linux - x64)
; Folding = ---
; EnableXP
; CompileSourceDirectory