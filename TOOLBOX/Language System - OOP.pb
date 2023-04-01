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
; Date : 03-05-2019
; Mise à jour : 29-10-2020
; Codé pour PureBasic : V5.72 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule Language

  Interface Language
    
    GetFileName.s()
    SetParentWindowID(ParentWindowID.i)
    LoadTableFile()
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    RefreshPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    Message.s(P_Message.s)
    To_GUI()
    Requester()
    
    CompilerIf #PB_Compiler_Debugger
      CreateTableFile()
      AddTableElement(P_Key.s, P_Message.s)
    CompilerEndIf
    
    Free()
    
  EndInterface

  Declare.i New(P_PathName.s, P_FileName.s, PtrToGUI.i = #Null, *PtrToGUIParam = #Null)

EndDeclareModule

Module Language

  Structure Private_Members

    VirtualTable.i
    PathName.s
    FileName.s
    ParentWindowID.i
    RemoteToGUI.i
    RemoteToGUIParam.i
    Map Table.s()
  
  EndStructure
  
  Prototype RemoteToGUI00(*Param)
  Prototype RemoteToGUI01()
  
  Procedure GetLanguageXMLNode(*This.Private_Members, CurrentNode.i)
    
    If ParentXMLNode(CurrentNode) = #Null
      StructNode = ChildXMLNode(CurrentNode)
      If GetXMLNodeName(StructNode) = "Language"
        Success = #True
      EndIf
    Else
      Success = #True
      StructNode = CurrentNode
    EndIf
    
    If Success = #True
      
      FieldNode = ChildXMLNode(StructNode)
      
      While FieldNode
        
        Select GetXMLNodeName(FieldNode)
            
          Case "Table"
            Table_Max = Val(GetXMLAttribute(FieldNode, "ElementCount"))
            
            For Element = 0 To Table_Max - 1
              IndexNode = ChildXMLNode(FieldNode, Element + 1)
              If GetXMLNodeName(IndexNode) = "Element"
                *This\Table(GetXMLAttribute(IndexNode, "Key")) = GetXMLAttribute(IndexNode, "Translation")
              EndIf
            Next
            
        EndSelect
        
        FieldNode = NextXMLNode(FieldNode)
        
      Wend
      
    EndIf
    
  EndProcedure 
  
  Procedure.s GetFileName(*This.Private_Members)

    ProcedureReturn *This\FileName
  EndProcedure
  
  Procedure SetParentWindowID(*This.Private_Members, ParentWindowID.i)
    
    *This\ParentWindowID = ParentWindowID
    
  EndProcedure
  
  Procedure LoadTableFile(*This.Private_Members)
    
    FileID = LoadXML(#PB_Any, *This\PathName + *This\FileName)
    
    If IsXML(FileID)
      ClearMap(*This\Table())
      FormatXML(FileID, #PB_XML_CutNewline)
      GetLanguageXMLNode(*This, RootXMLNode(FileID))
      FreeXML(FileID)
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyString(GroupName, "FileName", *This\FileName)
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "FileName")
        *This\FileName = *CustomPrefs\GetValueString(GroupName, "FileName", *This\FileName)
      EndIf
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Rafraîchir un Groupe de Prefs <<<<<

  Procedure RefreshPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "FileName")
        *CustomPrefs\SetValueString(GroupName, "FileName", *This\FileName)
      EndIf
      
    EndIf
    
  EndProcedure
  
  Procedure.s Message(*This.Private_Members, P_Message.s)
    
    If FindMapElement(*This\Table(), P_Message)
      Message_Out.s = *This\Table(P_Message)
    Else
      Message_Out = P_Message
    EndIf
    
    ProcedureReturn Message_Out
  EndProcedure
  
  Procedure To_GUI(*This.Private_Members)
    
    If *This\RemoteToGUI <> #Null And *This\RemoteToGUIParam <> #Null
      CallFunctionFast(*This\RemoteToGUI, *This\RemoteToGUIParam)
    EndIf
    
  EndProcedure
  
  Procedure Requester(*This.Private_Members)
    
    If *This\ParentWindowID <> 0
      LanguageRquester_Handle = OpenWindow(#PB_Any, 0, 0, 220, 130, Message(*This, "Language Requester"), #PB_Window_WindowCentered, *This\ParentWindowID)
    Else
      LanguageRquester_Handle = OpenWindow(#PB_Any, 0, 0, 220, 130, Message(*This, "Language Requester"), #PB_Window_ScreenCentered)
    EndIf
    
    If LanguageRquester_Handle <> 0
      
      LanguageRquester_List_Handle = ListViewGadget(#PB_Any, 10, 10, 200, 75)
      LanguageRquester_Btn_OK_Handle = ButtonGadget(#PB_Any, 10, 90, 95, 35, Message(*This, "OK"))
      LanguageRquester_Btn_Cancel_Handle = ButtonGadget(#PB_Any, 115, 90, 95, 35, Message(*This, "Cancel"))
      
      StickyWindow(LanguageRquester_Handle, 1)  
      
      ; On met en place la liste des langues disponibles
      
      If ExamineDirectory(0, *This\PathName, "*.xml") <> 0
        
        While NextDirectoryEntry(0) <> 0
          
          langues.s = DirectoryEntryName(0)
          
          If Left(langues, 1) <> "."
            
            AddGadgetItem(LanguageRquester_List_Handle, -1, StringField(GetFilePart(langues), 1, "."))
            
          EndIf
          
        Wend
        
        FinishDirectory(0)
        
      EndIf
      
      Repeat
        
        EventID = WaitWindowEvent()
        
        If EventID = #PB_Event_Gadget
          
          Select EventGadget() ; La gestion des évenements
              
            Case LanguageRquester_Btn_OK_Handle
              
              Language.s = GetGadgetText(LanguageRquester_List_Handle) + ".xml"
              
              If *This\FileName <> Language
                
                *This\FileName = Language
                LoadTableFile(*This)
                
                If *This\RemoteToGUI <> #Null And *This\RemoteToGUIParam <> #Null
                  CallRemoteToGUI.RemoteToGUI00 = *This\RemoteToGUI
                  CallRemoteToGUI(*This\RemoteToGUIParam)
                ElseIf *This\RemoteToGUI <> #Null And *This\RemoteToGUIParam = #Null
                  CallRemoteToGUI.RemoteToGUI01 = *This\RemoteToGUI
                  CallRemoteToGUI()
                EndIf
                
              EndIf
              
              EventID = #PB_Event_CloseWindow
              
            Case LanguageRquester_Btn_Cancel_Handle
              EventID = #PB_Event_CloseWindow
              
          EndSelect
          
        EndIf
        
      Until EventID = #PB_Event_CloseWindow
      
      CloseWindow(LanguageRquester_Handle)
      
    EndIf
    
  EndProcedure
  
  CompilerIf #PB_Compiler_Debugger
    
    ; These procedures only exist to create default language files
    ; and they are created only when the main program is compiled
    ; with the debugger active.
    
    Procedure SetLanguageXMLNode(*This.Private_Members, CurrentNode)
      
      If ParentXMLNode(CurrentNode) = #Null
        StructNode = CreateXMLNode(CurrentNode, "Language")
      Else
        StructNode = CurrentNode
      EndIf
      
      FieldNode = CreateXMLNode(StructNode, "Table")
      SetXMLAttribute(FieldNode, "ElementCount", Str(MapSize(*This\Table())))
      Element = 0
      
      ForEach *This\Table()
        IndexNode = CreateXMLNode(FieldNode, "Element")
        SetXMLAttribute(IndexNode, "Key", MapKey(*This\Table()))
        SetXMLAttribute(IndexNode, "Translation", *This\Table())
      Next
      
    EndProcedure
    
    Procedure CreateTableFile(*This.Private_Members)
      
      FileID = CreateXML(#PB_Any)
      
      If IsXML(FileID)
        SetLanguageXMLNode(*This, RootXMLNode(FileID))
        FormatXML(FileID, #PB_XML_ReFormat | #PB_XML_ReIndent)
        SaveXML(FileID, *This\PathName + *This\FileName)
        FreeXML(FileID)
      EndIf
      
    EndProcedure
    
    Procedure AddTableElement(*This.Private_Members, P_Key.s, P_Message.s)
      
      *This\Table(P_Key) = P_Message
      
    EndProcedure
  
  CompilerEndIf 

  Procedure Free(*This.Private_Members)
    
    FreeStructure(*This)

  EndProcedure

  Procedure.i New(P_PathName.s, P_FileName.s, PtrToGUI.i = #Null, PtrToGUIParam.i = #Null)

    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\PathName = P_PathName
    *This\FileName = P_FileName
    *This\RemoteToGUI = PtrToGUI
    *This\RemoteToGUIParam = PtrToGUIParam
    
    ProcedureReturn *This
  EndProcedure

  DataSection
    START_METHODS:
    Data.i @GetFileName()
    Data.i @SetParentWindowID()
    Data.i @LoadTableFile()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    Data.i @RefreshPrefsGroup()
    Data.i @Message()
    Data.i @To_GUI()
    Data.i @Requester()
    
    CompilerIf #PB_Compiler_Debugger
      Data.i @CreateTableFile()
      Data.i @AddTableElement()
    CompilerEndIf
    
    Data.i @Free()
    END_METHODS:
  EndDataSection

EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (142000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

CompilerIf #PB_Compiler_IsMainFile
  
  CompilerIf #PB_Compiler_Debugger
    
    CreateDirectory("language")
    
    English.Language::Language = Language::New("language/", "English.xml")
    French.Language::Language = Language::New("language/", "Français.xml")
    
    English\AddTableElement("Language Requester", "Choose language")
    French\AddTableElement("Language Requester", "Choix de la langue")
    
    English\AddTableElement("OK", "OK")
    French\AddTableElement("OK", "OK")
    
    English\AddTableElement("Cancel", "Cancel")
    French\AddTableElement("Cancel", "Annuler")
    
    English\CreateTableFile()
    French\CreateTableFile()
    
    English\Free()
    French\Free()
    
  CompilerEndIf
  
  Language.Language::Language = Language::New("language/", "Français.xml")
  Language\LoadTableFile()
  Language\Requester()
  MessageRequester("Language", Language\GetFileName())
  Language\Free()
  
CompilerEndIf

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = f7---
; EnableXP
; DisableDebugger
; CompileSourceDirectory