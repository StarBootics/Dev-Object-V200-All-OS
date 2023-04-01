; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.0.1
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - CustomPrefsFile.pb
; Version du fichier : 1.0.0
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 21-11-2021
; Mise à jour : 21-11-2021
; Codé pour PureBasic : V5.73 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule CustomPrefsFile
  
  Interface CustomPrefsFile
    
    GetAddExtractGroup.i()
    GetRefreshGroup.i()
    GetSaveOnLoadFromFile.i()
    SetAddExtractGroup(AddExtractGroup.i)
    SetRefreshGroup(RefreshGroup.i)
    SetSaveOnLoadFromFile(SaveOnLoadFromFile.i)
    Reset()
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    GenerateExtractGroupDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateAddGroupDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateRefreshGroupDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateSaveOnFileDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateLoadFromFileDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateExtractGroupDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateAddGroupDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateRefreshGroupDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateSaveOnFileDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateLoadFromFileDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module CustomPrefsFile
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<
  
  Structure Private_Members
    
    VirtualTable.i
    AddExtractGroup.i
    RefreshGroup.i
    SaveOnLoadFromFile.i
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<
  
  Procedure.i GetAddExtractGroup(*This.Private_Members)
    
    ProcedureReturn *This\AddExtractGroup
  EndProcedure
  
  Procedure.i GetRefreshGroup(*This.Private_Members)
    
    ProcedureReturn *This\RefreshGroup
  EndProcedure
  
  Procedure.i GetSaveOnLoadFromFile(*This.Private_Members)
    
    ProcedureReturn *This\SaveOnLoadFromFile
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<
  
  Procedure SetAddExtractGroup(*This.Private_Members, AddExtractGroup.i)
    
    *This\AddExtractGroup = AddExtractGroup
    
  EndProcedure
  
  Procedure SetRefreshGroup(*This.Private_Members, RefreshGroup.i)
    
    *This\RefreshGroup = RefreshGroup
    
  EndProcedure
  
  Procedure SetSaveOnLoadFromFile(*This.Private_Members, SaveOnLoadFromFile.i)
    
    *This\SaveOnLoadFromFile = SaveOnLoadFromFile
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur Reset <<<<<
  
  Procedure Reset(*This.Private_Members)
    
    *This\AddExtractGroup = 0
    *This\RefreshGroup = 0
    *This\SaveOnLoadFromFile = 0
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyInteger(GroupName, "AddExtractGroup", *This\AddExtractGroup)
    *CustomPrefs\AddKeyInteger(GroupName, "RefreshGroup", *This\RefreshGroup)
    *CustomPrefs\AddKeyInteger(GroupName, "SaveOnLoadFromFile", *This\SaveOnLoadFromFile)
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "AddExtractGroup")
        *This\AddExtractGroup = *CustomPrefs\GetValueInteger(GroupName, "AddExtractGroup", *This\AddExtractGroup)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "RefreshGroup")
        *This\RefreshGroup = *CustomPrefs\GetValueInteger(GroupName, "RefreshGroup", *This\RefreshGroup)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "SaveOnLoadFromFile")
        *This\SaveOnLoadFromFile = *CustomPrefs\GetValueInteger(GroupName, "SaveOnLoadFromFile", *This\SaveOnLoadFromFile)
      EndIf
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les différents générateur de code <<<<<
  
  Procedure.s GenerateExtractGroupDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @ExtractPrefsGroup()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateAddGroupDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @AddPrefsGroup()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateRefreshGroupDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "RefreshPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @RefreshPrefsGroup()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure

  Procedure.s GenerateSaveOnFileDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "SaveOnPrefsFile(FileName.s)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @SaveOnPrefsFile()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateLoadFromFileDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "LoadFromPrefsFile(FileName.s)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @LoadFromPrefsFile()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateExtractGroupDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If *CustomPrefs\IsGroup(GroupName)" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateExtractGroupPrefsInstruction(*Comments, 3, 0, "*", *Rules) 
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction.s = *LinkedList\GenerateExtractGroupPrefsInstruction(*Comments, 3, 0, "*", *Rules)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction.s = *HashMap\GenerateExtractGroupPrefsInstruction(*Comments, 3, 0, "*", *Rules)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateExtractGroupPrefsInstruction(*Comments, 3, 0, "*")
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateExtractGroupPrefsInstruction(*Comments, 3, 0, "*") 
          SeparatorNeeded = #True
          
      EndSelect
      
      If *Members\LinkIndex() = 0 Or SeparatorNeeded = #True Or PreviousSeparator.i = #True
        Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      EndIf 
      
      Buffer + Instruction
      
      If *Members\LinkIndex() = *Members\LinkCount() - 1
        Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      EndIf
      
      PreviousSeparator = SeparatorNeeded
      
    Wend
    
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateAddGroupDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "*CustomPrefs\AddGroup(GroupName)" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateAddGroupPrefsInstruction(*Comments, 2, 0, "*", *Rules)
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction.s = *LinkedList\GenerateAddGroupPrefsInstruction(*Comments, 2, 0, "*", *Rules)  
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateAddGroupPrefsInstruction(*Comments, 2, 0, "*", *Rules) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateAddGroupPrefsInstruction(*Comments, 2, 0, "*")
          SeparatorNeeded = #False
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateAddGroupPrefsInstruction(*Comments, 2, 0, "*") 
          SeparatorNeeded = #True
          
      EndSelect
      
      If *Members\LinkIndex() = 0 Or SeparatorNeeded = #True Or PreviousSeparator.i = #True
        Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      EndIf 
      
      Buffer + Instruction
      
      If *Members\LinkIndex() = *Members\LinkCount() - 1
        Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      EndIf
      
      PreviousSeparator = SeparatorNeeded
      
    Wend
    
    Buffer + *Comments\Tabulation(2) + "*CustomPrefs\AddGroupEmptyLine(GroupName)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateRefreshGroupDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure RefreshPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If *CustomPrefs\IsGroup(GroupName)" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateRefreshGroupPrefsInstruction(*Comments, 3, 0, "*", *Rules) 
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction.s = *LinkedList\GenerateRefreshGroupPrefsInstruction(*Comments, 3, 0, "*", *Rules)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction.s = *HashMap\GenerateRefreshGroupPrefsInstruction(*Comments, 3, 0, "*", *Rules)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateRefreshGroupPrefsInstruction(*Comments, 3, 0, "*")
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateRefreshGroupPrefsInstruction(*Comments, 3, 0, "*") 
          SeparatorNeeded = #True
          
      EndSelect
      
      If *Members\LinkIndex() = 0 Or SeparatorNeeded = #True Or PreviousSeparator.i = #True
        Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      EndIf 
      
      Buffer + Instruction
      
      If *Members\LinkIndex() = *Members\LinkCount() - 1
        Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      EndIf
      
      PreviousSeparator = SeparatorNeeded
      
    Wend
    
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSaveOnFileDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure SaveOnPrefsFile(*This.Private_Members, FileName.s)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "CustomPrefs.CustomPrefs::CustomPrefs = CustomPrefs::New(FileName)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "CustomPrefs\AddHeaderEx(" + Chr(34) + "; " + *Class\GetName() + " Custom Preferences File" + Chr(34) + ")" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          
          If *DynamicArray\GetType() <= Class::#MEMBER_TYPE_OBJECT
            OrphanPresent.i = #True
            Break
          EndIf
          
        Case Class::#MEMBER_STYLE_LIST
          
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          
          If *LinkedList\GetType() <= Class::#MEMBER_TYPE_OBJECT
            OrphanPresent = #True
            Break
          EndIf
          
        Case Class::#MEMBER_STYLE_MAP
          
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          
          If *HashMap\GetType() <= Class::#MEMBER_TYPE_OBJECT
            OrphanPresent = #True
            Break
          EndIf
          
        Case Class::#MEMBER_STYLE_BASIC
          
          *Basic.Basic::Basic = *Members\GetLinkObject()
          
          If *Basic\GetType() < Class::#MEMBER_TYPE_OBJECT
            OrphanPresent = #True
            Break
          EndIf
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          
          If *StaticArray\GetType() < Class::#MEMBER_TYPE_OBJECT
            OrphanPresent = #True
            Break
          EndIf
          
      EndSelect
      
    Wend
    
    If OrphanPresent = #True
      
      Buffer + *Comments\Tabulation(2) + "CustomPrefs\AddGroup(" + Chr(34) + "Orphan" + Chr(34) + ")"
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      
    EndIf
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateAddGroupPrefsInstruction(*Comments, 2, 1, "", *Rules) 
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction.s = *LinkedList\GenerateAddGroupPrefsInstruction(*Comments, 2, 1, "", *Rules) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction.s = *HashMap\GenerateAddGroupPrefsInstruction(*Comments, 2, 1, "", *Rules) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateAddGroupPrefsInstruction(*Comments, 2, 1, "")
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateAddGroupPrefsInstruction(*Comments, 2, 1, "") 
          SeparatorNeeded = #True
          
      EndSelect
      
      If *Members\LinkIndex() = 0 Or SeparatorNeeded = #True Or PreviousSeparator.i = #True
        Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      EndIf 
      
      Buffer + Instruction
      
      If *Members\LinkIndex() = *Members\LinkCount() - 1
        Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      EndIf
      
      PreviousSeparator = SeparatorNeeded
      
    Wend
    
    Buffer + *Comments\Tabulation(2) + "CustomPrefs\SaveOnFile()" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "CustomPrefs\Free()" + *Comments\LineFeed()  
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateLoadFromFileDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)

    Buffer.s = *Comments\Tabulation(1) + "Procedure LoadFromPrefsFile(*This.Private_Members, FileName.s)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "CustomPrefs.CustomPrefs::CustomPrefs = CustomPrefs::New(FileName)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "CustomPrefs\LoadFromFile()" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If CustomPrefs\HeaderSize() >= 1" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "CustomPrefs\SelectHeader(0)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "If CustomPrefs\GetHeader() = " + Chr(34) + "; " + *Class\GetName() + " Custom Preferences File" + Chr(34) + *Comments\LineFeed()

    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateExtractGroupPrefsInstruction(*Comments, 4, 1, "", *Rules)
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction.s = *LinkedList\GenerateExtractGroupPrefsInstruction(*Comments, 4, 1, "", *Rules)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction.s = *HashMap\GenerateExtractGroupPrefsInstruction(*Comments, 4, 1, "", *Rules)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateExtractGroupPrefsInstruction(*Comments, 4, 1, "")
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateExtractGroupPrefsInstruction(*Comments, 4, 1, "") 
          SeparatorNeeded = #True
          
      EndSelect
      
      If *Members\LinkIndex() = 0 Or SeparatorNeeded = #True Or PreviousSeparator.i = #True
        Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      EndIf 
      
      Buffer + Instruction
      
      If *Members\LinkIndex() = *Members\LinkCount() - 1
        Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      EndIf
      
      PreviousSeparator = SeparatorNeeded
      
    Wend
    
    Buffer + *Comments\Tabulation(3) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "CustomPrefs\Free()" + *Comments\LineFeed()  
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
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

    ProcedureReturn *This
  EndProcedure
  
  DataSection
    START_METHODS:
    Data.i @GetAddExtractGroup()
    Data.i @GetRefreshGroup()
    Data.i @GetSaveOnLoadFromFile()
    Data.i @SetAddExtractGroup()
    Data.i @SetRefreshGroup()
    Data.i @SetSaveOnLoadFromFile()
    Data.i @Reset()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    
    Data.i @GenerateExtractGroupDeclare()
    Data.i @GenerateAddGroupDeclare()
    Data.i @GenerateRefreshGroupDeclare()
    Data.i @GenerateSaveOnFileDeclare()
    Data.i @GenerateLoadFromFileDeclare()
    
    Data.i @GenerateExtractGroupDefine()
    Data.i @GenerateAddGroupDefine()
    Data.i @GenerateRefreshGroupDefine()
    Data.i @GenerateSaveOnFileDefine()
    Data.i @GenerateLoadFromFileDefine()
    
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (124000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = -----
; EnableXP
; CompileSourceDirectory