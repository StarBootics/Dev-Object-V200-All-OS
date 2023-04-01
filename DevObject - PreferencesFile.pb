; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.0.1
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - PreferencesFile.pb
; Version du fichier : 1.1.1
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 29-10-2019
; Mise à jour : 10-06-2021
; Codé pour PureBasic : V5.71 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule PreferencesFile
  
  Interface PreferencesFile
    
    GetReadWriteGroup.i()
    GetCreateOpenFile.i()
    SetReadWriteGroup(ReadWriteGroup.i)
    SetCreateOpenFile(CreateOpenFile.i)
    Reset()
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    GenerateReadGroupDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateWriteGroupDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateCreateFileDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateOpenFileDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateReadGroupDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateWriteGroupDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateCreatePrefsFileDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateOpenPrefsFileDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module PreferencesFile
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<
  
  Structure Private_Members
    
    VirtualTable.i
    ReadWriteGroup.i
    CreateOpenFile.i
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<
  
  Procedure.i GetReadWriteGroup(*This.Private_Members)
    
    ProcedureReturn *This\ReadWriteGroup
  EndProcedure
  
  Procedure.i GetCreateOpenFile(*This.Private_Members)
    
    ProcedureReturn *This\CreateOpenFile
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<
  
  Procedure SetReadWriteGroup(*This.Private_Members, ReadWriteGroup.i)
    
    *This\ReadWriteGroup = ReadWriteGroup
    
  EndProcedure
  
  Procedure SetCreateOpenFile(*This.Private_Members, CreateOpenFile.i)
    
    *This\CreateOpenFile = CreateOpenFile
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur Reset <<<<<
  
  Procedure Reset(*This.Private_Members)
    
    *This\ReadWriteGroup = 0
    *This\CreateOpenFile = 0
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyInteger(GroupName, "ReadWriteGroup", *This\ReadWriteGroup)
    *CustomPrefs\AddKeyInteger(GroupName, "CreateOpenFile", *This\CreateOpenFile)
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "ReadWriteGroup")
        *This\ReadWriteGroup = *CustomPrefs\GetValueInteger(GroupName, "ReadWriteGroup", *This\ReadWriteGroup)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "CreateOpenFile")
        *This\CreateOpenFile = *CustomPrefs\GetValueInteger(GroupName, "CreateOpenFile", *This\CreateOpenFile)
      EndIf
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les différents générateur de code <<<<<
  
  Procedure.s GenerateReadGroupDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)

    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "ReadPrefs(GroupName.s)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @ReadPrefs()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateWriteGroupDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
 
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "WritePrefs(GroupName.s)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @WritePrefs()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateCreateFileDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "CreatePrefs(FileName.s)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @CreatePrefs()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateOpenFileDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "OpenPrefs(FileName.s)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @OpenPrefs()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateReadGroupDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure ReadPrefs(*This.Private_Members, GroupName.s)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "PreferenceGroup(GroupName)" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateReadPrefsInstruction(*Comments, 2, 0, *Rules) 
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction = *LinkedList\GenerateReadPrefsInstruction(*Comments, 2, 0, *Rules)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateReadPrefsInstruction(*Comments, 2, 0, *Rules)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateReadPrefsInstruction(*Comments, 2, 0)
          SeparatorNeeded = #False
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateReadPrefsInstruction(*Comments, 2, 0) 
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
    
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateWriteGroupDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure WritePrefs(*This.Private_Members, GroupName.s)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "PreferenceGroup(GroupName)" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateWritePrefsInstruction(*Comments, 2, 0, *Rules)
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction = *LinkedList\GenerateWritePrefsInstruction(*Comments, 2, 0, *Rules)  
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateWritePrefsInstruction(*Comments, 2, 0, *Rules)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateWritePrefsInstruction(*Comments, 2, 0)
          SeparatorNeeded = #False
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateWritePrefsInstruction(*Comments, 2, 0) 
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
    
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateCreatePrefsFileDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure CreatePrefs(*This.Private_Members, FileName.s)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If CreatePreferences(FileName)" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateWritePrefsInstruction(*Comments, 3, 1, *Rules) 
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction = *LinkedList\GenerateWritePrefsInstruction(*Comments, 3, 1, *Rules) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateWritePrefsInstruction(*Comments, 3, 1, *Rules) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateWritePrefsInstruction(*Comments, 3, 1)
          SeparatorNeeded = #False
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateWritePrefsInstruction(*Comments, 3, 1) 
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
    
    Buffer + *Comments\Tabulation(3) + "ClosePreferences()" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateOpenPrefsFileDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure OpenPrefs(*This.Private_Members, FileName.s)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If OpenPreferences(FileName)" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateReadPrefsInstruction(*Comments, 3, 1, *Rules)
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction = *LinkedList\GenerateReadPrefsInstruction(*Comments, 3, 1, *Rules)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateReadPrefsInstruction(*Comments, 3, 1, *Rules)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateReadPrefsInstruction(*Comments, 3, 1)
          SeparatorNeeded = #False
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateReadPrefsInstruction(*Comments, 3, 1) 
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
    
    Buffer + *Comments\Tabulation(3) + "ClosePreferences()" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
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
    Data.i @GetReadWriteGroup()
    Data.i @GetCreateOpenFile()
    Data.i @SetReadWriteGroup()
    Data.i @SetCreateOpenFile()
    Data.i @Reset()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    Data.i @GenerateReadGroupDeclare()
    Data.i @GenerateWriteGroupDeclare()
    Data.i @GenerateCreateFileDeclare()
    Data.i @GenerateOpenFileDeclare()
    Data.i @GenerateReadGroupDefine()
    Data.i @GenerateWriteGroupDefine()
    Data.i @GenerateCreatePrefsFileDefine()
    Data.i @GenerateOpenPrefsFileDefine()
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
; Folding = ----
; EnableXP
; CompileSourceDirectory