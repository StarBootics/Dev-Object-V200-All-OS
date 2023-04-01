; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V1.1.0
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - EncodedCryptedFile.pb
; Version du fichier : 1.3.2
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 26-10-2020
; Mise à jour : 24-04-2022
; Codé pour PureBasic : V5.72 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule EncodedCryptedFile
  
  Interface EncodedCryptedFile
    
    GetReadWrite.i()
    GetCreateFile.i()
    GetOpenFile.i()
    GetReadFile.i()
    GetAddFileFormatID.i()
    GetCustomFileLibToUse.s()
    SetReadWrite(ReadWrite.i)
    SetCreateFile(CreateFile.i)
    SetOpenFile(OpenFile.i)
    SetReadFile(ReadFile.i)
    SetAddFileFormatID(AddFileFormatID.i)
    SetCustomFileLibToUse(CustomFileLibToUse.s)
    Reset()
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    GenerateReadDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateWriteDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateCreateFileDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateOpenFileDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateReadFileDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateReadDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateWriteDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateCreateFileDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateOpenFileDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateReadFileDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    Free()
    
  EndInterface
  
  Declare.i New(*CustomFileLibsPtr.CustomFileLibs::CustomFileLibs, *BetweenParenthesis.StringBetween::StringBetween)
  
EndDeclareModule

Module EncodedCryptedFile
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<
  
  Structure Private_Members
    
    VirtualTable.i
    ReadWrite.i
    CreateFile.i
    OpenFile.i
    ReadFile.i
    AddFileFormatID.i
    CustomFileLibToUse.s
    CustomFileLibsPtr.CustomFileLibs::CustomFileLibs
    *BetweenParenthesis.StringBetween::StringBetween
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<
  
  Procedure.i GetReadWrite(*This.Private_Members)
    
    ProcedureReturn *This\ReadWrite
  EndProcedure
  
  Procedure.i GetCreateFile(*This.Private_Members)
    
    ProcedureReturn *This\CreateFile
  EndProcedure
  
  Procedure.i GetOpenFile(*This.Private_Members)
    
    ProcedureReturn *This\OpenFile
  EndProcedure
  
  Procedure.i GetReadFile(*This.Private_Members)
    
    ProcedureReturn *This\ReadFile
  EndProcedure
  
  Procedure.i GetAddFileFormatID(*This.Private_Members)
    
    ProcedureReturn *This\AddFileFormatID
  EndProcedure
  
  Procedure.s GetCustomFileLibToUse(*This.Private_Members)
    
    ProcedureReturn *This\CustomFileLibToUse
  EndProcedure  
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<
  
  Procedure SetReadWrite(*This.Private_Members, ReadWrite.i)
    
    *This\ReadWrite = ReadWrite
    
  EndProcedure
  
  Procedure SetCreateFile(*This.Private_Members, CreateFile.i)
    
    *This\CreateFile = CreateFile
    
  EndProcedure
  
  Procedure SetOpenFile(*This.Private_Members, OpenFile.i)
    
    *This\OpenFile = OpenFile
    
  EndProcedure
  
  Procedure SetReadFile(*This.Private_Members, ReadFile.i)
    
    *This\ReadFile = ReadFile
    
  EndProcedure
  
  Procedure SetAddFileFormatID(*This.Private_Members, AddFileFormatID.i)
    
    *This\AddFileFormatID = AddFileFormatID
    
  EndProcedure
  
  Procedure SetCustomFileLibToUse(*This.Private_Members, CustomFileLibToUse.s)
    
    *This\CustomFileLibToUse = CustomFileLibToUse
    
  EndProcedure  
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur Reset <<<<<
  
  Procedure Reset(*This.Private_Members)
    
    *This\ReadWrite = 0
    *This\CreateFile = 0
    *This\OpenFile = 0
    *This\ReadFile = 0
    *This\AddFileFormatID = 0
    *This\CustomFileLibToUse = ""
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyInteger(GroupName, "ReadWrite", *This\ReadWrite)
    *CustomPrefs\AddKeyInteger(GroupName, "CreateFile", *This\CreateFile)
    *CustomPrefs\AddKeyInteger(GroupName, "OpenFile", *This\OpenFile)
    *CustomPrefs\AddKeyInteger(GroupName, "ReadFile", *This\ReadFile)
    *CustomPrefs\AddKeyInteger(GroupName, "AddFileFormatID", *This\AddFileFormatID)
    *CustomPrefs\AddKeyString(GroupName, "CustomFileLibToUse", *This\CustomFileLibToUse)
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "ReadWrite")
        *This\ReadWrite = *CustomPrefs\GetValueInteger(GroupName, "ReadWrite", *This\ReadWrite)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "CreateFile")
        *This\CreateFile = *CustomPrefs\GetValueInteger(GroupName, "CreateFile", *This\CreateFile)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "OpenFile")
        *This\OpenFile = *CustomPrefs\GetValueInteger(GroupName, "OpenFile", *This\OpenFile)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "ReadFile")
        *This\ReadFile = *CustomPrefs\GetValueInteger(GroupName, "ReadFile", *This\ReadFile)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "AddFileFormatID")
        *This\AddFileFormatID = *CustomPrefs\GetValueInteger(GroupName, "AddFileFormatID", *This\AddFileFormatID)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "CustomFileLibToUse")
        *This\CustomFileLibToUse = *CustomPrefs\GetValueString(GroupName, "CustomFileLibToUse", *This\CustomFileLibToUse)
      EndIf
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les différentes méthodes de génération de code <<<<<
  
  Procedure.s GenerateReadDeclare(*This.Private_Members, *Class.Class::Class,  *Comments.Comments::Comments, Mode.i)
    
    *CustomFileLib.CustomFileLib::CustomFileLib = *This\CustomFileLibsPtr\GetCustomFileLibs()
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + *CustomFileLib\GetPrefix() + "Read" + *Class\GetName() + "(FileID.i, *CustomLib." + *CustomFileLib\FormatModuleInterface() + ")" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @" + *CustomFileLib\GetPrefix() + "Read" + *Class\GetName() + "()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateWriteDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *CustomFileLib.CustomFileLib::CustomFileLib = *This\CustomFileLibsPtr\GetCustomFileLibs()
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + *CustomFileLib\GetPrefix() + "Write" + *Class\GetName() + "(FileID.i, *CustomLib." + *CustomFileLib\FormatModuleInterface() + ")" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @" + *CustomFileLib\GetPrefix() + "Write" + *Class\GetName() + "()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateCreateFileDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "Create" + *Class\GetName() + "File.i(FileName.s)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @Create" + *Class\GetName() + "File()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateOpenFileDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "Open" + *Class\GetName() + "File.i(FileName.s)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @Open" + *Class\GetName() + "File()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateReadFileDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "Read" + *Class\GetName() + "File.i(FileName.s)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @Read" + *Class\GetName() + "File()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateReadDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    *CustomFileLib.CustomFileLib::CustomFileLib = *This\CustomFileLibsPtr\GetCustomFileLibs()
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure " + *CustomFileLib\GetPrefix() + "Read" + *Class\GetName() + "(*This.Private_Members, FileID.i, *CustomLib." + *CustomFileLib\FormatModuleInterface() + ")" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateReadEncodedCryptedInstruction(*Comments, 2, "*", *CustomFileLib, *Rules) 
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction = *LinkedList\GenerateReadEncodedCryptedInstruction(*Comments, 2, "*", *CustomFileLib, *Rules) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateReadEncodedCryptedInstruction(*Comments, 2, "*", *CustomFileLib, *Rules) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateReadEncodedCryptedInstruction(*Comments, 2, "*", *CustomFileLib)
          
          If *Basic\GetType() = Class::#MEMBER_TYPE_DATA_POINTER_C
            SeparatorNeeded = #True
          Else
            SeparatorNeeded = #False
          EndIf
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateReadEncodedCryptedInstruction(*Comments, 2, "*", *CustomFileLib) 
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
  
  Procedure.s GenerateWriteDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    *CustomFileLib.CustomFileLib::CustomFileLib = *This\CustomFileLibsPtr\GetCustomFileLibs()
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure " + *CustomFileLib\GetPrefix() + "Write" + *Class\GetName() + "(*This.Private_Members, FileID.i, *CustomLib." + *CustomFileLib\FormatModuleInterface() + ")" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateWriteEncodedCryptedInstruction(*Comments, 2, "*", *CustomFileLib, *Rules) 
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction = *LinkedList\GenerateWriteEncodedCryptedInstruction(*Comments, 2, "*", *CustomFileLib, *Rules) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateWriteEncodedCryptedInstruction(*Comments, 2, "*", *CustomFileLib, *Rules) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateWriteEncodedCryptedInstruction(*Comments, 2, "*", *CustomFileLib) 
          SeparatorNeeded = #False
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateWriteEncodedCryptedInstruction(*Comments, 2, "*", *CustomFileLib) 
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
  
  Procedure.s GenerateCreateFileDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    *CustomFileLib.CustomFileLib::CustomFileLib = *This\CustomFileLibsPtr\GetCustomFileLibs()
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure.i Create" + *Class\GetName() + "File(*This.Private_Members, FileName.s)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "FileID = CreateFile(#PB_Any, FileName)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If IsFile(FileID)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "CustomLib." + *CustomFileLib\FormatModuleInterface() + " = " + *CustomFileLib\FormatConstructor(*This\BetweenParenthesis) + *Comments\LineFeed()
    
    If *This\AddFileFormatID = #True
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "FileFormatID.FileFormatID::FileFormatID = FileFormatID::New('X', 'F', 'F', '0')" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "FileFormatID\WriteFileFormatID(FileID)" + *Comments\LineFeed()
    EndIf
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateWriteEncodedCryptedInstruction(*Comments, 3, "", *CustomFileLib, *Rules) 
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction = *LinkedList\GenerateWriteEncodedCryptedInstruction(*Comments, 3, "", *CustomFileLib, *Rules) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateWriteEncodedCryptedInstruction(*Comments, 3, "", *CustomFileLib, *Rules) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateWriteEncodedCryptedInstruction(*Comments, 3, "", *CustomFileLib) 
          SeparatorNeeded = #False
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateWriteEncodedCryptedInstruction(*Comments, 3, "", *CustomFileLib) 
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
    
    Buffer + *Comments\Tabulation(3) + "CloseFile(FileID)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "Success.i = 1" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    
    If *This\AddFileFormatID = #True
      Buffer + *Comments\Tabulation(3) + "FileFormatID\Free()" + *Comments\LineFeed()
    EndIf
    
    Buffer + *Comments\Tabulation(3) + "CustomLib\Free()" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "Else" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "Success = -1" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ProcedureReturn Success" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateOpenFileDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    *CustomFileLib.CustomFileLib::CustomFileLib = *This\CustomFileLibsPtr\GetCustomFileLibs()
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure Open" + *Class\GetName() + "File(*This.Private_Members, FileName.s)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "FileID = OpenFile(#PB_Any, FileName)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If IsFile(FileID)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "CustomLib." + *CustomFileLib\FormatModuleInterface() + " = " + *CustomFileLib\FormatConstructor(*This\BetweenParenthesis) + *Comments\LineFeed()
    
    If *This\AddFileFormatID = #True
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "ExpectedFFID.FileFormatID::FileFormatID = FileFormatID::New('X', 'F', 'F', '0')" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "FromFileFFID.FileFormatID::FileFormatID = FileFormatID::New()" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "FromFileFFID\ReadFileFormatID(FileID)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "If ExpectedFFID\Compare(FromFileFFID) = #True" + *Comments\LineFeed()
      TabSize.i = 4
    Else
      TabSize = 3
    EndIf
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateReadEncodedCryptedInstruction(*Comments, TabSize, "", *CustomFileLib, *Rules) 
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction = *LinkedList\GenerateReadEncodedCryptedInstruction(*Comments, TabSize, "", *CustomFileLib, *Rules) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateReadEncodedCryptedInstruction(*Comments, TabSize, "", *CustomFileLib, *Rules) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateReadEncodedCryptedInstruction(*Comments, TabSize, "", *CustomFileLib)
          
          If *Basic\GetType() = Class::#MEMBER_TYPE_DATA_POINTER_C
            SeparatorNeeded = #True
          Else
            SeparatorNeeded = #False
          EndIf
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateReadEncodedCryptedInstruction(*Comments, TabSize, "", *CustomFileLib) 
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
    
    If *This\AddFileFormatID = #True
      Buffer + *Comments\Tabulation(4) + "Success.i = 1" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(4) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "Else" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(4) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(4) + "Success = -2" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(4) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "EndIf" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "CloseFile(FileID)" + *Comments\LineFeed()
    Else
      Buffer + *Comments\Tabulation(3) + "CloseFile(FileID)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "Success.i = 1" + *Comments\LineFeed()
    EndIf
    
    If *This\AddFileFormatID = #True
      Buffer + *Comments\Tabulation(3) + "ExpectedFFID\Free()" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "FromFileFFID\Free()" + *Comments\LineFeed()
    EndIf
    
    Buffer + *Comments\Tabulation(3) + "CustomLib\Free()" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "Else" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "Success = -1" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ProcedureReturn Success" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateReadFileDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)

    *CustomFileLib.CustomFileLib::CustomFileLib = *This\CustomFileLibsPtr\GetCustomFileLibs()
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure Read" + *Class\GetName() + "File(*This.Private_Members, FileName.s)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "FileID = ReadFile(#PB_Any, FileName)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If IsFile(FileID)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "CustomLib." + *CustomFileLib\FormatModuleInterface() + " = " + *CustomFileLib\FormatConstructor(*This\BetweenParenthesis) + *Comments\LineFeed()
    
    If *This\AddFileFormatID = #True
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "ExpectedFFID.FileFormatID::FileFormatID = FileFormatID::New('X', 'F', 'F', '0')" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "FromFileFFID.FileFormatID::FileFormatID = FileFormatID::New()" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "FromFileFFID\ReadFileFormatID(FileID)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "If ExpectedFFID\Compare(FromFileFFID) = #True" + *Comments\LineFeed()
      TabSize.i = 4
    Else
      TabSize = 3
    EndIf
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateReadEncodedCryptedInstruction(*Comments, TabSize, "", *CustomFileLib, *Rules) 
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction = *LinkedList\GenerateReadEncodedCryptedInstruction(*Comments, TabSize, "", *CustomFileLib, *Rules) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateReadEncodedCryptedInstruction(*Comments, TabSize, "", *CustomFileLib, *Rules) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateReadEncodedCryptedInstruction(*Comments, TabSize, "", *CustomFileLib)
          
          If *Basic\GetType() = Class::#MEMBER_TYPE_DATA_POINTER_C
            SeparatorNeeded = #True
          Else
            SeparatorNeeded = #False
          EndIf
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateReadEncodedCryptedInstruction(*Comments, TabSize, "", *CustomFileLib) 
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
    
    If *This\AddFileFormatID = #True
      Buffer + *Comments\Tabulation(4) + "Success.i = 1" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(4) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "Else" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(4) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(4) + "Success = -2" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(4) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "EndIf" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "CloseFile(FileID)" + *Comments\LineFeed()
    Else
      Buffer + *Comments\Tabulation(3) + "CloseFile(FileID)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "Success.i = 1" + *Comments\LineFeed()
    EndIf
    
    If *This\AddFileFormatID = #True
      Buffer + *Comments\Tabulation(3) + "ExpectedFFID\Free()" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "FromFileFFID\Free()" + *Comments\LineFeed()
    EndIf
    
    Buffer + *Comments\Tabulation(3) + "CustomLib\Free()" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "Else" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "Success = -1" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ProcedureReturn Success" + *Comments\LineFeed()
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
  
  Procedure.i New(*CustomFileLibsPtr.CustomFileLibs::CustomFileLibs, *BetweenParenthesis.StringBetween::StringBetween)
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\CustomFileLibsPtr = *CustomFileLibsPtr
    *This\BetweenParenthesis = *BetweenParenthesis
    
    ProcedureReturn *This
  EndProcedure
  
  DataSection
    START_METHODS:
    Data.i @GetReadWrite()
    Data.i @GetCreateFile()
    Data.i @GetOpenFile()
    Data.i @GetReadFile()
    Data.i @GetAddFileFormatID()
    Data.i @GetCustomFileLibToUse()
    Data.i @SetReadWrite()
    Data.i @SetCreateFile()
    Data.i @SetOpenFile()
    Data.i @SetReadFile()
    Data.i @SetAddFileFormatID()
    Data.i @SetCustomFileLibToUse()
    Data.i @Reset()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    Data.i @GenerateReadDeclare()
    Data.i @GenerateWriteDeclare()
    Data.i @GenerateCreateFileDeclare()
    Data.i @GenerateOpenFileDeclare()
    Data.i @GenerateReadFileDeclare()
    Data.i @GenerateReadDefine()
    Data.i @GenerateWriteDefine()
    Data.i @GenerateCreateFileDefine()
    Data.i @GenerateOpenFileDefine()
    Data.i @GenerateReadFileDefine()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (159000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = ---B--
; EnableXP
; CompileSourceDirectory