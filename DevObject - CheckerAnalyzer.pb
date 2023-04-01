; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V1.6.9 Beta
; Nom du projet : DevObject
; Nom du fichier : DevObject - CheckerAnalyzer.pb
; Version du fichier : 1.0.1
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 28-11-2021
; Mise à jour : 17-03-2021
; Codé pour PureBasic : V6.00 Beta 5
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule CheckerAnalyzer
  
  Interface CheckerAnalyzer
    
    IsItMethod.i(Line.s)
    GetMethodName.s(Line.s)
    GetMethodReturnType.s(Line.s)
    GetMethodParams.s(Line.s)
    IsItProcedure.i(Line.s)
    GetProcedureReturnType.s(Line.s)
    GetProcedureName.s(Line.s)
    GetProcedureParams.s(Line.s)
    IsItVirtualTableEntry.i(Line.s)
    GetVirtualTableEntryName.s(Line.s)
    Free()
    
  EndInterface

  Declare.i New()
  
EndDeclareModule

Module CheckerAnalyzer
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    MethodRegex.i
    ProcedureRegex.i
    VirtualTableEntryRegex.i
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure.i IsItMethod(*This.Private_Members, Line.s)
    
    ProcedureReturn MatchRegularExpression(*This\MethodRegex, Line)
  EndProcedure
  
  Procedure.s GetMethodName(*This.Private_Members, Line.s)
    
    If ExamineRegularExpression(*This\MethodRegex, Line)
      NextRegularExpressionMatch(*This\MethodRegex)
      ProcedureReturn RegularExpressionGroup(*This\MethodRegex, 1)
    EndIf
    
  EndProcedure
  
  Procedure.s GetMethodReturnType(*This.Private_Members, Line.s)
    
    If ExamineRegularExpression(*This\MethodRegex, Line)
      NextRegularExpressionMatch(*This\MethodRegex)
      ProcedureReturn RegularExpressionGroup(*This\MethodRegex, 2)
    EndIf
    
  EndProcedure

  Procedure.s GetMethodParams(*This.Private_Members, Line.s)
    
    If ExamineRegularExpression(*This\MethodRegex, Line)
      NextRegularExpressionMatch(*This\MethodRegex)
      ProcedureReturn RegularExpressionGroup(*This\MethodRegex, 3)
    EndIf
    
  EndProcedure
  
  Procedure.i IsItProcedure(*This.Private_Members, Line.s)
    
    ProcedureReturn MatchRegularExpression(*This\ProcedureRegex, Line)
  EndProcedure
  
  Procedure.s GetProcedureReturnType(*This.Private_Members, Line.s)
    
    If ExamineRegularExpression(*This\ProcedureRegex, Line)
      NextRegularExpressionMatch(*This\ProcedureRegex)
      ProcedureReturn RegularExpressionGroup(*This\ProcedureRegex, 2)
    EndIf
    
  EndProcedure
 
  Procedure.s GetProcedureName(*This.Private_Members, Line.s)
    
    If ExamineRegularExpression(*This\ProcedureRegex, Line)
      NextRegularExpressionMatch(*This\ProcedureRegex)
      ProcedureReturn RegularExpressionGroup(*This\ProcedureRegex, 4)
    EndIf
    
  EndProcedure
  
  Procedure.s GetProcedureParams(*This.Private_Members, Line.s)
    
    If ExamineRegularExpression(*This\ProcedureRegex, Line)
      NextRegularExpressionMatch(*This\ProcedureRegex)
      ProcedureReturn RegularExpressionGroup(*This\ProcedureRegex, 5)
    EndIf
    
  EndProcedure
  
  Procedure.i IsItVirtualTableEntry(*This.Private_Members, Line.s)
    
    ProcedureReturn MatchRegularExpression(*This\VirtualTableEntryRegex, Line)
  EndProcedure
  
  Procedure.s GetVirtualTableEntryName(*This.Private_Members, Line.s)
    
    If ExamineRegularExpression(*This\VirtualTableEntryRegex, Line)
      NextRegularExpressionMatch(*This\VirtualTableEntryRegex)
      ProcedureReturn RegularExpressionGroup(*This\VirtualTableEntryRegex, 2)
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Destructeur <<<<<

  Procedure Free(*This.Private_Members)
    
    FreeRegularExpression(*This\MethodRegex)
    FreeRegularExpression(*This\ProcedureRegex)
    FreeRegularExpression(*This\VirtualTableEntryRegex)
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Constructeur <<<<<

  Procedure.i New()
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\MethodRegex = CreateRegularExpression(#PB_Any, "^(?i)([\w]+)(.b|.a|.c|.w|.u|.l|.i|.q|.f|.d|.s|\$|)([\(][\w\W]+[\)]|[\(][\)])$")
    *This\ProcedureRegex = CreateRegularExpression(#PB_Any, "^(?i)(Procedure)(.b|.a|.c|.w|.u|.l|.i|.q|.f|.d|.s|\$|)( ?[ ]+)([\w]+)([\(][\w\W]+[\)]|[\(][\)])$")
    *This\VirtualTableEntryRegex = CreateRegularExpression(#PB_Any, "^(?i)(Data.i[ ]+@)([\w]+)([\(][\)])$")
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les entrées de la table virtuelle <<<<<

  DataSection
    START_METHODS:
    Data.i @IsItMethod()
    Data.i @GetMethodName()
    Data.i @GetMethodReturnType()
    Data.i @GetMethodParams()
    Data.i @IsItProcedure()
    Data.i @GetProcedureReturnType()
    Data.i @GetProcedureName()
    Data.i @GetProcedureParams()
    Data.i @IsItVirtualTableEntry()
    Data.i @GetVirtualTableEntryName()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (80000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 6 (Linux - x64)
; Folding = ---
; EnableXP
; CompileSourceDirectory