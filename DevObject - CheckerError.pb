; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V1.6.8
; Nom du projet : DevObject
; Nom du fichier : DevObject - CheckerError.pb
; Version du fichier : 1.1.0
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 28-11-2021
; Mise à jour : 18-12-2021
; Codé pour PureBasic : V6.00 Beta 1
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule CheckerError
  
  Enumeration 1
    
    #TYPE_INTERFACE_VT_METHODS_SIZE_MISMATCH
    #TYPE_METHODS_SPELLING_ERROR
    #TYPE_PARAMETER_COUNT_MISMATCH
    #TYPE_RETURN_TYPE_MISMATCH
    #TYPE_PARAMETER_TYPE_MISMATCH
    
  EndEnumeration
  
  Interface CheckerError
    
    GetType.i()
    GetDescription.s()
    SetType(Type.i)
    SetDescription(Description.s)
    Free()
    
  EndInterface
  
  ; Declare Free(*This)
  Declare.i New(Type.i = 0, Description.s = "")
  
EndDeclareModule

Module CheckerError
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    Type.i
    Description.s
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<

  Procedure.i GetType(*This.Private_Members)
    
    ProcedureReturn *This\Type
  EndProcedure
  
  Procedure.s GetDescription(*This.Private_Members)
    
    ProcedureReturn *This\Description
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<

  Procedure SetType(*This.Private_Members, Type.i)
    
    *This\Type = Type
    
  EndProcedure
  
  Procedure SetDescription(*This.Private_Members, Description.s)
    
    *This\Description = Description
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Destructeur <<<<<

  Procedure Free(*This.Private_Members)
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Constructeur <<<<<

  Procedure.i New(Type.i = 0, Description.s = "")
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\Type = Type
    *This\Description = Description
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les entrées de la table virtuelle <<<<<

  DataSection
    START_METHODS:
    Data.i @GetType()
    Data.i @GetDescription()
    Data.i @SetType()
    Data.i @SetDescription()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (114000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 1 (Linux - x64)
; Folding = ---
; EnableXP
; CompileSourceDirectory