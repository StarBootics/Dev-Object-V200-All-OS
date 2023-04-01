; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE G�N�R� AUTOMATIQUEMENT, NE PAS MODIFIER �
; MOINS D'AVOIR UNE RAISON TR�S TR�S VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code g�n�r� par : Dev-Object - V1.0.0
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - MemberNameAnalyzer.pb
; Version du fichier : 1.1.2
; Programmation : OK
; Programm� par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 05-07-2020
; Mise � jour : 16-03-2022
; Cod� pour PureBasic : V6.00 Beta 5
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule MemberNameAnalyzer
  
  Interface MemberNameAnalyzer
    
    IsItPointer.i(MemberName.s)
    GetArrayPart.s(Description.s)
    GetLinkedListPart.s(Description.s)
    GetMapPart.s(Description.s)
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module MemberNameAnalyzer
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< D�claration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    PointerRegex.i
    ArrayRegex.i
    LinkedListRegex.i
    MapRegex.i
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la proc�dure <<<<<
  
  Procedure.i IsItPointer(*This.Private_Members, MemberName.s)
    
    ProcedureReturn MatchRegularExpression(*This\PointerRegex, MemberName)
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la proc�dure <<<<<
  
  Procedure.s GetArrayPart(*This.Private_Members, Description.s)
    
    If ExamineRegularExpression(*This\ArrayRegex, Description)
      NextRegularExpressionMatch(*This\ArrayRegex)
      ProcedureReturn RegularExpressionGroup(*This\ArrayRegex, 3)
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la proc�dure <<<<<
  
  Procedure.s GetLinkedListPart(*This.Private_Members, Description.s)
    
    If ExamineRegularExpression(*This\LinkedListRegex, Description)
      NextRegularExpressionMatch(*This\LinkedListRegex)
      ProcedureReturn RegularExpressionGroup(*This\LinkedListRegex, 3)
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la proc�dure <<<<<
  
  Procedure.s GetMapPart(*This.Private_Members, Description.s)
    
    If ExamineRegularExpression(*This\MapRegex, Description)
      NextRegularExpressionMatch(*This\MapRegex)
      ProcedureReturn RegularExpressionGroup(*This\MapRegex, 3)
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Destructeur <<<<<

  Procedure Free(*This.Private_Members)
    
    FreeRegularExpression(*This\PointerRegex)
    FreeRegularExpression(*This\ArrayRegex)
    FreeRegularExpression(*This\LinkedListRegex)
    FreeRegularExpression(*This\MapRegex)
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Constructeur <<<<<

  Procedure.i New()
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\PointerRegex = CreateRegularExpression(#PB_Any, "^(?i)([\w]+)(Ptr|Pointer)$")
    *This\ArrayRegex = CreateRegularExpression(#PB_Any, "^(?i)(Array)([ ]+)([\w\*.:(), ]+)$")
    *This\LinkedListRegex = CreateRegularExpression(#PB_Any, "^(?i)(List)([ ]+)([\w\*.:()]+)$")
    *This\MapRegex = CreateRegularExpression(#PB_Any, "^(?i)(Map)([ ]+)([\w\*.:()]+)$")

    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les entr�es de la table virtuelle <<<<<

  DataSection
    START_METHODS:
    Data.i @IsItPointer()
    Data.i @GetArrayPart()
    Data.i @GetLinkedListPart()
    Data.i @GetMapPart()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code g�n�r� en : 00.001 secondes (76000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 5 (Linux - x64)
; Folding = --
; EnableXP
; CompileSourceDirectory