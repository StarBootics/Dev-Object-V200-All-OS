; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V2.1.0
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - JSONFile.pb
; Version du fichier : 1.0.0
; Programmation : À vérifier
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 03-11-2022
; Mise à jour : 03-11-2022
; Codé pour PureBasic : V6.00 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule JSONFile
  
  Interface JSONFile
    
    GetInsertExtract.i()
    GetSaveLoad.i()
    GetCatch.i()
    SetInsertExtract(InsertExtract.i)
    SetSaveLoad(SaveLoad.i)
    SetCatch(Catch.i)
    Reset()
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    GenerateInsertDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateExtractDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateSaveDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateLoadDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateCatchDeclare.s(*Comments.Comments::Comments, Mode.i)
    
    GenerateInsertDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateExtractDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    GenerateSaveDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateLoadDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateCatchDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)

    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module JSONFile
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    InsertExtract.i
    SaveLoad.i
    Catch.i
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<

  Procedure.i GetInsertExtract(*This.Private_Members)
    
    ProcedureReturn *This\InsertExtract
  EndProcedure
  
  Procedure.i GetSaveLoad(*This.Private_Members)
    
    ProcedureReturn *This\SaveLoad
  EndProcedure
  
  Procedure.i GetCatch(*This.Private_Members)
    
    ProcedureReturn *This\Catch
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<

  Procedure SetInsertExtract(*This.Private_Members, InsertExtract.i)
    
    *This\InsertExtract = InsertExtract
    
  EndProcedure
  
  Procedure SetSaveLoad(*This.Private_Members, SaveLoad.i)
    
    *This\SaveLoad = SaveLoad
    
  EndProcedure
  
  Procedure SetCatch(*This.Private_Members, Catch.i)
    
    *This\Catch = Catch
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur Reset <<<<<

  Procedure Reset(*This.Private_Members)
    
    *This\InsertExtract = 0
    *This\SaveLoad = 0
    *This\Catch = 0
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyInteger(GroupName, "InsertExtract", *This\InsertExtract)
    *CustomPrefs\AddKeyInteger(GroupName, "SaveLoad", *This\SaveLoad)
    *CustomPrefs\AddKeyInteger(GroupName, "Catch", *This\Catch)
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "InsertExtract")
        *This\InsertExtract = *CustomPrefs\GetValueInteger(GroupName, "InsertExtract", *This\InsertExtract)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "SaveLoad")
        *This\SaveLoad = *CustomPrefs\GetValueInteger(GroupName, "SaveLoad", *This\SaveLoad)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Catch")
        *This\Catch = *CustomPrefs\GetValueInteger(GroupName, "Catch", *This\Catch)
      EndIf
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur GenerateInsertDeclare <<<<<
  
  Procedure.s GenerateInsertDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "JSON_Insert(JSONValue.i)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @JSON_Insert()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur GenerateExtractDeclare <<<<<
  
  Procedure.s GenerateExtractDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "JSON_Extract(JSONValue.i)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @JSON_Extract()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur GenerateSaveDeclare <<<<<
  
  Procedure.s GenerateSaveDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "JSON_SaveOnFile(FileName.s)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @JSON_SaveOnFile()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur GenerateLoadDeclare <<<<<
  
  Procedure.s GenerateLoadDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "JSON_LoadFromFile(FileName.s)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @JSON_LoadFromFile()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur GenerateCatchDeclare <<<<<
  
  Procedure.s GenerateCatchDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "JSON_CatchFile(*Memory, Size.i)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @JSON_CatchFile()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur GenerateInsertDefine <<<<<
  
  Procedure.s GenerateInsertDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure JSON_Insert(*This.Private_Members, JSONValue.i)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "Object.i = SetJSONObject(JSONValue)" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateJSONInsertInstruction(*Comments, 2, *Rules)
          
          If CountString(Instruction, *Comments\LineFeed()) = 1
            SeparatorNeeded = #False
          Else
            SeparatorNeeded = #True
          EndIf
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction = *LinkedList\GenerateJSONInsertInstruction(*Comments, 2)
          
          If CountString(Instruction, *Comments\LineFeed()) = 1
            SeparatorNeeded = #False
          Else
            SeparatorNeeded = #True
          EndIf
        
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateJSONInsertInstruction(*Comments, 2)
          
          If CountString(Instruction, *Comments\LineFeed()) = 1
            SeparatorNeeded = #False
          Else
            SeparatorNeeded = #True
          EndIf
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateJSONInsertInstruction(*Comments, 2)
          SeparatorNeeded = #False
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateJSONInsertInstruction(*Comments, 2)
          SeparatorNeeded = #True
          
      EndSelect
      
      If *Members\LinkIndex() = 0 Or SeparatorNeeded = #True Or PreviousSeparator.i = #True
        Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      EndIf 
      
      Buffer + Instruction
      Instruction = ""
      
      If *Members\LinkIndex() = *Members\LinkCount() - 1
        Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      EndIf
      
      PreviousSeparator = SeparatorNeeded
      
    Wend
    
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<;
  ; <<<<< L'opérateur GenerateExtractDefine <<<<<
  
  Procedure.s GenerateExtractDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure JSON_Extract(*This.Private_Members, JSONValue.i)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If ExamineJSONMembers(JSONValue)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "While NextJSONMember(JSONValue)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(4) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(4) + "Select JSONMemberKey(JSONValue)" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateJSONExtractInstruction(*Comments, 5, *Rules)
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction.s = *LinkedList\GenerateJSONExtractInstruction(*Comments, 5, *Rules)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateJSONExtractInstruction(*Comments, 5, *Rules)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateJSONExtractInstruction(*Comments, 5)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateJSONExtractInstruction(*Comments, 5)
          SeparatorNeeded = #True
          
      EndSelect
      
      If *Members\LinkIndex() = 0 Or SeparatorNeeded = #True Or PreviousSeparator.i = #True
        Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      EndIf 
      
      Buffer + Instruction
      Instruction = ""
      
      If *Members\LinkIndex() = *Members\LinkCount() - 1
        Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      EndIf
      
      PreviousSeparator = SeparatorNeeded
      
    Wend
    
    Buffer + *Comments\Tabulation(4) + "EndSelect" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(4) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "Wend" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur GenerateSaveDefine <<<<<
  
  Procedure.s GenerateSaveDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure JSON_SaveOnFile(*This.Private_Members, FileName.s)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "JSONHandle.i = CreateJSON(#PB_Any)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed() 
    Buffer + *Comments\Tabulation(2) + "If IsJSON(JSONHandle)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "JSONValue.i = JSONValue(JSONHandle)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "Object.i = SetJSONObject(JSONValue)" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateJSONInsertInstruction(*Comments, 3, *Rules)
          
          If CountString(Instruction, *Comments\LineFeed()) = 1
            SeparatorNeeded = #False
          Else
            SeparatorNeeded = #True
          EndIf
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction = *LinkedList\GenerateJSONInsertInstruction(*Comments, 3)
          
          If CountString(Instruction, *Comments\LineFeed()) = 1
            SeparatorNeeded = #False
          Else
            SeparatorNeeded = #True
          EndIf
        
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateJSONInsertInstruction(*Comments, 3)
          
          If CountString(Instruction, *Comments\LineFeed()) = 1
            SeparatorNeeded = #False
          Else
            SeparatorNeeded = #True
          EndIf
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateJSONInsertInstruction(*Comments, 3)
          SeparatorNeeded = #False
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateJSONInsertInstruction(*Comments, 3)
          SeparatorNeeded = #True
          
      EndSelect
      
      If *Members\LinkIndex() = 0 Or SeparatorNeeded = #True Or PreviousSeparator.i = #True
        Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      EndIf 
      
      Buffer + Instruction
      Instruction = ""
      
      If *Members\LinkIndex() = *Members\LinkCount() - 1
        Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      EndIf
      
      PreviousSeparator = SeparatorNeeded
      
    Wend
    
    Buffer + *Comments\Tabulation(3) + "SaveJSON(JSONHandle, FileName, #PB_JSON_PrettyPrint)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "FreeJSON(JSONHandle)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()  
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur GenerateLoadDefine <<<<<
  
  Procedure.s GenerateLoadDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure JSON_LoadFromFile(*This.Private_Members, FileName.s)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "JSONHandle.i = LoadJSON(#PB_Any, FileName)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed() 
    Buffer + *Comments\Tabulation(2) + "If IsJSON(JSONHandle)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "JSONValue.i = JSONValue(JSONHandle)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "If ExamineJSONMembers(JSONValue)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(4) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(4) + "While NextJSONMember(JSONValue)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(5) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(5) + "Select JSONMemberKey(JSONValue)" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateJSONExtractInstruction(*Comments, 6, *Rules)
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction.s = *LinkedList\GenerateJSONExtractInstruction(*Comments, 6, *Rules)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateJSONExtractInstruction(*Comments, 6, *Rules)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateJSONExtractInstruction(*Comments, 6)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateJSONExtractInstruction(*Comments, 6)
          SeparatorNeeded = #True
          
      EndSelect
      
      If *Members\LinkIndex() = 0 Or SeparatorNeeded = #True Or PreviousSeparator.i = #True
        Buffer + *Comments\Tabulation(6) + *Comments\LineFeed()
      EndIf 
      
      Buffer + Instruction
      Instruction = ""
      
      If *Members\LinkIndex() = *Members\LinkCount() - 1
        Buffer + *Comments\Tabulation(6) + *Comments\LineFeed()
      EndIf
      
      PreviousSeparator = SeparatorNeeded
      
    Wend
    
    Buffer + *Comments\Tabulation(5) + "EndSelect" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(5) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(4) + "Wend" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "FreeJSON(JsonHandle)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur GenerateCatchDefine <<<<<
  
  Procedure.s GenerateCatchDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure JSON_CatchFile(*This.Private_Members, *Memory, Size.i)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "JSONHandle.i = CatchJSON(#PB_Any, *Memory, Size)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed() 
    Buffer + *Comments\Tabulation(2) + "If IsJSON(JSONHandle)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "JSONValue.i = JSONValue(JSONHandle)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "If ExamineJSONMembers(JSONValue)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(4) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(4) + "While NextJSONMember(JSONValue)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(5) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(5) + "Select JSONMemberKey(JSONValue)" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateJSONExtractInstruction(*Comments, 6, *Rules)
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction.s = *LinkedList\GenerateJSONExtractInstruction(*Comments, 6, *Rules)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateJSONExtractInstruction(*Comments, 6, *Rules)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateJSONExtractInstruction(*Comments, 6)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateJSONExtractInstruction(*Comments, 6)
          SeparatorNeeded = #True
          
      EndSelect
      
      If *Members\LinkIndex() = 0 Or SeparatorNeeded = #True Or PreviousSeparator.i = #True
        Buffer + *Comments\Tabulation(6) + *Comments\LineFeed()
      EndIf 
      
      Buffer + Instruction
      Instruction = ""
      
      If *Members\LinkIndex() = *Members\LinkCount() - 1
        Buffer + *Comments\Tabulation(6) + *Comments\LineFeed()
      EndIf
      
      PreviousSeparator = SeparatorNeeded
      
    Wend
    
    Buffer + *Comments\Tabulation(5) + "EndSelect" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(5) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(4) + "Wend" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "FreeJSON(JsonHandle)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
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
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les entrées de la table virtuelle <<<<<

  DataSection
    START_METHODS:
    Data.i @GetInsertExtract()
    Data.i @GetSaveLoad()
    Data.i @GetCatch()
    Data.i @SetInsertExtract()
    Data.i @SetSaveLoad()
    Data.i @SetCatch()
    Data.i @Reset()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    
    Data.i @GenerateInsertDeclare()
    Data.i @GenerateExtractDeclare()
    Data.i @GenerateSaveDeclare()
    Data.i @GenerateLoadDeclare()
    Data.i @GenerateCatchDeclare()
    
    Data.i @GenerateInsertDefine()
    Data.i @GenerateExtractDefine()
    Data.i @GenerateSaveDefine()
    Data.i @GenerateLoadDefine()
    Data.i @GenerateCatchDefine()
    
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (163000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = ---5-
; EnableXP
; CompileSourceDirectory