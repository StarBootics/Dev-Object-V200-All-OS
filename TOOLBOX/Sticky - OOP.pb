; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.0.1
; Nom du projet : Le nom du projet ici
; Nom du fichier : Nom du fichier
; Version du fichier : 0.0.0
; Programmation : À vérifier
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 04-05-2019
; Mise à jour : 28-03-2021
; Codé pour PureBasic : V5.73 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule Sticky

  Interface Sticky
    
    ToggleStatus(P_WinID.i, OneShot.i = #False)
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    RefreshPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    Free()

  EndInterface

  Declare.i New(P_Button.i, P_Path.s, P_Image_0.s, P_Image_1.s, P_Status.i = 0)

EndDeclareModule

Module Sticky

  Structure Private_Members

    VirtualTable.i
    Status.i
    Button.i
    Image.i[2]
  
  EndStructure
  
  Procedure ToggleStatus(*This.Private_Members, P_WinID.i, OneShot.i = #False)
    
    If OneShot = #False
      *This\Status = *This\Status ! 1
    EndIf
    
    SetGadgetAttribute(*This\Button, #PB_Button_Image, ImageID(*This\Image[*This\Status]))
    StickyWindow(P_WinID, *This\Status)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyInteger(GroupName, "Status", *This\Status)
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "Status")
        *This\Status = *CustomPrefs\GetValueInteger(GroupName, "Status", *This\Status)
      EndIf
      
    EndIf
    
    If *This\Status <= 0
      *This\Status = 0
    ElseIf *This\Status >= 1
      *This\Status = 1
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Rafraîchir un Groupe de Prefs <<<<<

  Procedure RefreshPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "Status")
        *CustomPrefs\SetValueInteger(GroupName, "Status", *This\Status)
      EndIf
      
    EndIf
    
  EndProcedure
  
  Procedure ReadPrefs(*This.Private_Members, GroupName.s)
    
    PreferenceGroup(GroupName)
    *This\Status = ReadPreferenceLong("Status", *This\Status)
    
    If *This\Status <= 0
      *This\Status = 0
    ElseIf *This\Status >= 1
      *This\Status = 1
    EndIf
    
  EndProcedure
  
  Procedure WritePrefs(*This.Private_Members, GroupName.s)
    
    PreferenceGroup(GroupName)
    WritePreferenceLong("Status", *This\Status)
    
  EndProcedure
  
  Procedure Free(*This.Private_Members)
    
    For ImageID = 0 To 1
      
      If IsImage(*This\Image[ImageID])
        FreeImage(*This\Image[ImageID])
      EndIf
      
    Next
    
    FreeStructure(*This)

  EndProcedure

  Procedure.i New(P_Button.i, P_Path.s, P_Image_0.s, P_Image_1.s, P_Status.i = 0)

    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    If P_Status <= 0
      *This\Status = 0
    ElseIf P_Status >= 1
      *This\Status = 1
    EndIf
    
    *This\Button = P_Button
    
    If FileSize(P_Path + P_Image_0) > 0
      *This\Image[0] = LoadImage(#PB_Any, P_Path + P_Image_0)
    EndIf
    
    If FileSize(P_Path + P_Image_1) > 0
      *This\Image[1] = LoadImage(#PB_Any, P_Path + P_Image_1)
    EndIf
    
    ProcedureReturn *This
  EndProcedure

  DataSection
    START_METHODS:
    Data.i @ToggleStatus()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    Data.i @RefreshPrefsGroup()
    Data.i @Free()
    END_METHODS:
  EndDataSection

EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (64000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = ---
; EnableXP
; CompileSourceDirectory