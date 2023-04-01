; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.0.1
; Nom du projet : Le nom du projet ici
; Nom du fichier : Nom du fichier
; Version du fichier : 1.1.1
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 04-05-2019
; Mise à jour : 29-11-2021
; Codé pour PureBasic : V6.00 Beta 1
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule Window

  Interface Window
    
    GetHandle.i()
    GetID.i()
    GetCurrentPosition()
    GetCurrentSize()
    GetCurrentPositionSize()
    SetTitle(P_Title.s)
    SetBounds(P_MinWidth.l, P_MinHeight.l, P_MaxWidth.l = #PB_Ignore, P_MaxHeight.l = #PB_Ignore)
    Open(Flag = #PB_Window_SystemMenu)
    OpenEx(P_Title.s, Flag = #PB_Window_SystemMenu, ParentID.i = #Null)
    
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    RefreshPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    Width.l()
    Height.l()
    SanityCheck()
    Reshape()
    Hide(Flag.i)
    Close()
    Free()

  EndInterface

  Declare.i New(P_PosX.l, P_PosY.l, P_Width.l, P_Height.l, P_SizeFlag.i = #True)

EndDeclareModule

Module Window

  Structure Private_Members

    VirtualTable.i
    Handle.i
    PosX.l
    PosY.l
    Width.l
    Height.l
    SizeFlag.i
    BoundsFlag.l
    MinWidth.l
    MinHeight.l
    MaxWidth.l
    MaxHeight.l
  
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les Observateurs <<<<<
  
  Procedure.i GetHandle(*This.Private_Members)
  
    ProcedureReturn *This\Handle
  EndProcedure
  
  Procedure.i GetID(*This.Private_Members)
    
    ProcedureReturn WindowID(*This\Handle)
  EndProcedure
  
  Procedure GetCurrentPosition(*This.Private_Members)
    
    *This\PosX = WindowX(*This\Handle)
    *This\PosY = WindowY(*This\Handle)
    
  EndProcedure
  
  Procedure GetCurrentSize(*This.Private_Members)
    
    *This\Width = WindowWidth(*This\Handle)
    *This\Height = WindowHeight(*This\Handle)
    
  EndProcedure
  
  Procedure GetCurrentPositionSize(*This.Private_Members)
    
    *This\PosX = WindowX(*This\Handle)
    *This\PosY = WindowY(*This\Handle)
    *This\Width = WindowWidth(*This\Handle)
    *This\Height = WindowHeight(*This\Handle)
    
  EndProcedure
  
  Procedure SetTitle(*This.Private_Members, P_Title.s)
    
    SetWindowTitle(*This\Handle, P_Title)
   
  EndProcedure
  
  Procedure SetBounds(*This.Private_Members, P_MinWidth.l, P_MinHeight.l, P_MaxWidth.l = #PB_Ignore, P_MaxHeight.l = #PB_Ignore)
    
    *This\BoundsFlag = #True
    *This\MinWidth = P_MinWidth
    *This\MinHeight = P_MinHeight
    *This\MaxWidth = P_MaxWidth
    *This\MaxHeight = P_MaxHeight
    
  EndProcedure
  
  Procedure Open(*This.Private_Members, Flag = #PB_Window_SystemMenu)
    
    *This\Handle = OpenWindow(#PB_Any, *This\PosX, *This\PosY, *This\Width, *This\Height, "", Flag)
    
    If *This\BoundsFlag = #True
      WindowBounds(*This\Handle, *This\MinWidth, *This\MinHeight, *This\MaxWidth, *This\MaxHeight)
    EndIf
    
    ProcedureReturn *This\Handle
  EndProcedure
  
  Procedure OpenEx(*This.Private_Members, P_Title.s, Flag = #PB_Window_SystemMenu, ParentID.i = #Null)
    
    *This\Handle = OpenWindow(#PB_Any, *This\PosX, *This\PosY, *This\Width, *This\Height, P_Title, Flag, ParentID)
    
    If *This\BoundsFlag = #True
      WindowBounds(*This\Handle, *This\MinWidth, *This\MinHeight, *This\MaxWidth, *This\MaxHeight)
    EndIf
    
    ProcedureReturn *This\Handle
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyLong(GroupName, "PosX", *This\PosX)
    *CustomPrefs\AddKeyLong(GroupName, "PosY", *This\PosY)
    
    If *This\SizeFlag = #True
      *CustomPrefs\AddKeyLong(GroupName, "Width", *This\Width)
      *CustomPrefs\AddKeyLong(GroupName, "Height", *This\Height)
    EndIf
    
    If *This\BoundsFlag = #True
      
      If *This\MinWidth <> #PB_Ignore 
        *CustomPrefs\AddKeyLong(GroupName, "MinWidth", *This\MinWidth)
      EndIf
      
      If *This\MinHeight <> #PB_Ignore 
        *CustomPrefs\AddKeyLong(GroupName, "MinHeight", *This\MinHeight)
      EndIf
      
      If *This\MaxWidth <> #PB_Ignore 
        *CustomPrefs\AddKeyLong(GroupName, "MaxWidth", *This\MaxWidth)
      EndIf
      
      If *This\MaxHeight <> #PB_Ignore 
        *CustomPrefs\AddKeyLong(GroupName, "MaxHeight", *This\MaxHeight)
      EndIf
      
    EndIf
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "PosX")
        *This\PosX = *CustomPrefs\GetValueLong(GroupName, "PosX", *This\PosX)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "PosY")
        *This\PosY = *CustomPrefs\GetValueLong(GroupName, "PosY", *This\PosY)
      EndIf
      
      If *This\SizeFlag = #True
        
        If *CustomPrefs\IsKey(GroupName, "Width")
          *This\Width = *CustomPrefs\GetValueLong(GroupName, "Width", *This\Width)
        EndIf
        
        If *CustomPrefs\IsKey(GroupName, "Height")
          *This\Height = *CustomPrefs\GetValueLong(GroupName, "Height", *This\Height)
        EndIf
        
      EndIf
      
      If *This\BoundsFlag = #True
        
        If *CustomPrefs\IsKey(GroupName, "MinWidth") And *This\MinWidth <> #PB_Ignore 
          *This\MinWidth = *CustomPrefs\GetValueLong(GroupName, "MinWidth", *This\MinWidth)
        EndIf
        
        If *CustomPrefs\IsKey(GroupName, "MinHeight") And *This\MinHeight <> #PB_Ignore 
          *This\MinHeight = *CustomPrefs\GetValueLong(GroupName, "MinHeight", *This\MinHeight)
        EndIf
        
        If *CustomPrefs\IsKey(GroupName, "MaxWidth") And *This\MaxWidth <> #PB_Ignore 
          *This\MaxWidth = *CustomPrefs\GetValueLong(GroupName, "MaxWidth", *This\MaxWidth)
        EndIf
        
        If *CustomPrefs\IsKey(GroupName, "MaxHeight") And *This\MaxHeight <> #PB_Ignore 
          *This\MaxHeight = *CustomPrefs\GetValueLong(GroupName, "MaxHeight", *This\MaxHeight)
        EndIf
        
      EndIf
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Rafraîchir un Groupe de Prefs <<<<<

  Procedure RefreshPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "PosX")
        *CustomPrefs\SetValueLong(GroupName, "PosX", *This\PosX)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "PosY")
        *CustomPrefs\SetValueLong(GroupName, "PosY", *This\PosY)
      EndIf
      
      If *This\SizeFlag = #True
        
        If *CustomPrefs\IsKey(GroupName, "Width")
          *CustomPrefs\SetValueLong(GroupName, "Width", *This\Width)
        EndIf
        
        If *CustomPrefs\IsKey(GroupName, "Height")
          *CustomPrefs\SetValueLong(GroupName, "Height", *This\Height)
        EndIf
        
      EndIf
      
      If *This\BoundsFlag = #True
        
        If *CustomPrefs\IsKey(GroupName, "MinWidth") And *This\MinWidth <> #PB_Ignore 
          *CustomPrefs\SetValueLong(GroupName, "MinWidth", *This\MinWidth)
        EndIf
        
        If *CustomPrefs\IsKey(GroupName, "MinHeight") And *This\MinHeight <> #PB_Ignore 
          *CustomPrefs\SetValueLong(GroupName, "MinHeight", *This\MinHeight)
        EndIf
        
        If *CustomPrefs\IsKey(GroupName, "MaxWidth") And *This\MaxWidth <> #PB_Ignore 
          *CustomPrefs\SetValueLong(GroupName, "MaxWidth", *This\MaxWidth)
        EndIf
        
        If *CustomPrefs\IsKey(GroupName, "MaxHeight") And *This\MaxHeight <> #PB_Ignore 
          *CustomPrefs\SetValueLong(GroupName, "MaxHeight", *This\MaxHeight)
        EndIf
        
      EndIf
      
    EndIf
    
  EndProcedure
  
  Procedure.l Width(*This.Private_Members)
    
    ProcedureReturn *This\Width
  EndProcedure
  
  Procedure.l Height(*This.Private_Members)
    
    ProcedureReturn *This\Height
  EndProcedure
  
  Procedure SanityCheck(*This.Private_Members)
    
    If ExamineDesktops()
      
      If *This\PosX > DesktopWidth(0) Or *This\PosX < 0
        *This\PosX = 50
      EndIf
      
      If *This\PosY > DesktopHeight(0) Or *This\PosY < 0
        *This\PosY = 50
      EndIf
      
      If (*This\PosX + *This\Width) > DesktopWidth(0)
        *This\PosX = *This\PosX - *This\Width
      EndIf
      
      If (*This\PosY + *This\Height) > DesktopHeight(0)
        *This\PosY = *This\PosY - *This\Height
      EndIf
      
      If *This\SizeFlag = #True
        
        If *This\Width > DesktopWidth(0)
          *This\Width = DesktopWidth(0) - *This\PosX
        EndIf
        
        If *This\Height > DesktopHeight(0)
          *This\Height = DesktopHeight(0) - *This\PosY
        EndIf 
        
      EndIf
      
    Else 
      
      *This\PosX = 50
      *This\PosY = 50
      
    EndIf
    
  EndProcedure
  
  Procedure Reshape(*This.Private_Members)
    
    ResizeWindow(*This\Handle, *This\PosX, *This\PosY, *This\Width, *This\Height)
    
  EndProcedure 
  
  Procedure Hide(*This.Private_Members, Flag.i)
    
    HideWindow(*This\Handle, Flag)
    
  EndProcedure
  
  Procedure Close(*This.Private_Members)
    
    CloseWindow(*This\Handle)
    
  EndProcedure
  
  Procedure Free(*This.Private_Members)

    FreeStructure(*This)

  EndProcedure

  Procedure.i New(P_PosX.l, P_PosY.l, P_Width.l, P_Height.l, P_SizeFlag.i = #True)

    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\PosX = P_PosX
    *This\PosY = P_PosY
    *This\Width = P_Width
    *This\Height = P_Height
    *This\SizeFlag = P_SizeFlag
    
    *This\BoundsFlag = #False
    *This\MinWidth = #PB_Ignore
    *This\MinHeight = #PB_Ignore
    *This\MaxWidth = #PB_Ignore
    *This\MaxHeight = #PB_Ignore
    
    ProcedureReturn *This
  EndProcedure

  DataSection
    START_METHODS:
    Data.i @GetHandle()
    Data.i @GetID()
    Data.i @GetCurrentPosition()
    Data.i @GetCurrentSize()
    Data.i @GetCurrentPositionSize()
    Data.i @SetTitle()
    Data.i @SetBounds()
    Data.i @Open()
    Data.i @OpenEx()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    Data.i @RefreshPrefsGroup()
    Data.i @Width()
    Data.i @Height()
    Data.i @SanityCheck()
    Data.i @Reshape()
    Data.i @Hide()
    Data.i @Close()
    Data.i @Free()
    END_METHODS:
  EndDataSection

EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (82000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = -HP+-
; EnableXP
; CompileSourceDirectory