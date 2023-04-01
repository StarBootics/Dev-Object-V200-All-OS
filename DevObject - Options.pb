; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V1.7.3
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - Options.pb
; Version du fichier : 1.1.1
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 27-10-2019
; Mise à jour : 06-11-2022
; Codé pour PureBasic : V6.00 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule Options
  
  Interface Options
    
    GetProjectSavePath.s()
    GetSourceSavePath.s()
    GetFontName.s()
    GetFontSize.b()
    SetProjectSavePath(ProjectSavePath.s)
    SetSourceSavePath(SourceSavePath.s)
    SetFontName(FontName.s)
    SetFontSize(FontSize.b)
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    RefreshPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module Options
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    ProjectSavePath.s
    SourceSavePath.s
    FontName.s
    FontSize.b
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<

  Procedure.s GetProjectSavePath(*This.Private_Members)
    
    ProcedureReturn *This\ProjectSavePath
  EndProcedure
  
  Procedure.s GetSourceSavePath(*This.Private_Members)
    
    ProcedureReturn *This\SourceSavePath
  EndProcedure
  
  Procedure.s GetFontName(*This.Private_Members)
    
    ProcedureReturn *This\FontName
  EndProcedure
  
  Procedure.b GetFontSize(*This.Private_Members)
    
    ProcedureReturn *This\FontSize
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<

  Procedure SetProjectSavePath(*This.Private_Members, ProjectSavePath.s)
    
    *This\ProjectSavePath = ProjectSavePath
    
  EndProcedure
  
  Procedure SetSourceSavePath(*This.Private_Members, SourceSavePath.s)
    
    *This\SourceSavePath = SourceSavePath
    
  EndProcedure
  
  Procedure SetFontName(*This.Private_Members, FontName.s)
    
    *This\FontName = FontName
    
  EndProcedure
  
  Procedure SetFontSize(*This.Private_Members, FontSize.b)
    
    *This\FontSize = FontSize
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyString(GroupName, "ProjectSavePath", *This\ProjectSavePath)
    *CustomPrefs\AddKeyString(GroupName, "SourceSavePath", *This\SourceSavePath)
    *CustomPrefs\AddKeyString(GroupName, "FontName", *This\FontName)
    *CustomPrefs\AddKeyByte(GroupName, "FontSize", *This\FontSize)
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "ProjectSavePath")
        *This\ProjectSavePath = *CustomPrefs\GetValueString(GroupName, "ProjectSavePath", *This\ProjectSavePath)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "SourceSavePath")
        *This\SourceSavePath = *CustomPrefs\GetValueString(GroupName, "SourceSavePath", *This\SourceSavePath)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "FontName")
        *This\FontName = *CustomPrefs\GetValueString(GroupName, "FontName", *This\FontName)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "FontSize")
        *This\FontSize = *CustomPrefs\GetValueByte(GroupName, "FontSize", *This\FontSize)
      EndIf
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Rafraîchir un Groupe de Prefs <<<<<

  Procedure RefreshPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "ProjectSavePath")
        *CustomPrefs\SetValueString(GroupName, "ProjectSavePath", *This\ProjectSavePath)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "SourceSavePath")
        *CustomPrefs\SetValueString(GroupName, "SourceSavePath", *This\SourceSavePath)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "FontName")
        *CustomPrefs\SetValueString(GroupName, "FontName", *This\FontName)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "FontSize")
        *CustomPrefs\SetValueByte(GroupName, "FontSize", *This\FontSize)
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
  
  Procedure.i New()
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\ProjectSavePath = GetHomeDirectory()
    *This\SourceSavePath = GetHomeDirectory()
    
    CompilerSelect #PB_Compiler_OS
        
      CompilerCase #PB_OS_Windows 
        *This\FontName = "Courier New"
        *This\FontSize = 14
        
      CompilerCase #PB_OS_Linux
        *This\FontName = "DejaVu Sans Mono"
        *This\FontSize = 14
        
      CompilerCase #PB_OS_MacOS
        *This\FontName = "Courier"
        *This\FontSize = 14
        
    CompilerEndSelect
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les entrées de la table virtuelle <<<<<

  DataSection
    START_METHODS:
    Data.i @GetProjectSavePath()
    Data.i @GetSourceSavePath()
    Data.i @GetFontName()
    Data.i @GetFontSize()
    Data.i @SetProjectSavePath()
    Data.i @SetSourceSavePath()
    Data.i @SetFontName()
    Data.i @SetFontSize()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    Data.i @RefreshPrefsGroup()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (180000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = ----
; EnableXP
; CompileSourceDirectory