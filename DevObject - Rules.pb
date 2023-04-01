; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V1.7.4
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - Rules.pb
; Version du fichier : 1.0.0
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 27-11-2021
; Mise à jour : 09-03-2023
; Codé pour PureBasic : V6.01 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule Rules

  Enumeration
    #DYNAMIC_DATA_SIZE_TYPE_LONG
    #DYNAMIC_DATA_SIZE_TYPE_INTEGER
    #DYNAMIC_DATA_SIZE_TYPE_QUAD
  EndEnumeration
  
  Enumeration
    #DISABLE_ENABLE_DEBUGGER_NONE
    #DISABLE_ENABLE_DEBUGGER_COMMENTED
    #DISABLE_ENABLE_DEBUGGER_UNCOMMENTED
  EndEnumeration
  
  Interface Rules
    
    GetDynamicDataSizeType.i()
    GetAddDisableEnableDebugger.i()
    SetDynamicDataSizeType(DynamicDataSizeType.i)
    SetAddDisableEnableDebugger(AddDisableEnableDebugger.i)
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    RefreshPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    Free()
    
  EndInterface
  
  Declare.i New(DynamicDataSizeType.i = #DYNAMIC_DATA_SIZE_TYPE_INTEGER, AddDisableEnableDebugger.i = #DISABLE_ENABLE_DEBUGGER_COMMENTED)
  
EndDeclareModule

Module Rules
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    DynamicDataSizeType.i
    AddDisableEnableDebugger.i
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<

  Procedure.i GetDynamicDataSizeType(*This.Private_Members)
    
    ProcedureReturn *This\DynamicDataSizeType
  EndProcedure
  
  Procedure.i GetAddDisableEnableDebugger(*This.Private_Members)
    
    ProcedureReturn *This\AddDisableEnableDebugger
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<

  Procedure SetDynamicDataSizeType(*This.Private_Members, DynamicDataSizeType.i)
    
    *This\DynamicDataSizeType = DynamicDataSizeType
    
  EndProcedure
  
  Procedure SetAddDisableEnableDebugger(*This.Private_Members, AddDisableEnableDebugger.i)
    
    *This\AddDisableEnableDebugger = AddDisableEnableDebugger
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyInteger(GroupName, "DynamicDataSizeType", *This\DynamicDataSizeType)
    *CustomPrefs\AddKeyInteger(GroupName, "AddDisableEnableDebugger", *This\AddDisableEnableDebugger)
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "DynamicDataSizeType")
        *This\DynamicDataSizeType = *CustomPrefs\GetValueInteger(GroupName, "DynamicDataSizeType", *This\DynamicDataSizeType)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "AddDisableEnableDebugger")
        *This\AddDisableEnableDebugger = *CustomPrefs\GetValueInteger(GroupName, "AddDisableEnableDebugger", *This\AddDisableEnableDebugger)
      EndIf
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Rafraîchir un Groupe de Prefs <<<<<

  Procedure RefreshPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "DynamicDataSizeType")
        *CustomPrefs\SetValueInteger(GroupName, "DynamicDataSizeType", *This\DynamicDataSizeType)
      Else
        *CustomPrefs\SetValueInteger(GroupName, "DynamicDataSizeType", *This\DynamicDataSizeType, #True)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "AddDisableEnableDebugger")
        *CustomPrefs\SetValueInteger(GroupName, "AddDisableEnableDebugger", *This\AddDisableEnableDebugger)
      Else
        *CustomPrefs\SetValueInteger(GroupName, "AddDisableEnableDebugger", *This\AddDisableEnableDebugger, #True)
      EndIf
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Destructeur <<<<<

  Procedure Free(*This.Private_Members)
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Constructeur <<<<<

  Procedure.i New(DynamicDataSizeType.i = #DYNAMIC_DATA_SIZE_TYPE_INTEGER, AddDisableEnableDebugger.i = #DISABLE_ENABLE_DEBUGGER_COMMENTED)
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\DynamicDataSizeType = DynamicDataSizeType
    *This\AddDisableEnableDebugger = AddDisableEnableDebugger
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les entrées de la table virtuelle <<<<<

  DataSection
    START_METHODS:
    Data.i @GetDynamicDataSizeType()
    Data.i @GetAddDisableEnableDebugger()
    Data.i @SetDynamicDataSizeType()
    Data.i @SetAddDisableEnableDebugger()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    Data.i @RefreshPrefsGroup()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (146000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.01 LTS (Linux - x64)
; Folding = ---
; EnableXP
; CompileSourceDirectory