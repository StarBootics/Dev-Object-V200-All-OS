; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.0.1
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - MapMethods.pb
; Version du fichier : 1.1.0
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 30-10-2019
; Mise à jour : 10-06-2019
; Codé pour PureBasic : V5.71 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule MapMethods
  
  Interface MapMethods
    
    GetAdd.i()
    GetAddEx.i()
    GetClear.i()
    GetSize.i()
    GetReset.i()
    GetDelete.i()
    GetFind.i()
    GetNext.i()
    GetKey.i()
    SetAdd(Add.i)
    SetAddEx(AddEx.i)
    SetClear(Clear.i)
    SetSize(Size.i)
    SetReset(Reset.i)
    SetDelete(Delete.i)
    SetFind(Find.i)
    SetNext(Next_.i)
    SetKey(Key.i)
    Reset()
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    GenerateAddDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateAddDefine.s(*Class.Class::Class, *Comments.Comments::Comments) 
    GenerateAddExDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateAddExDefine.s(*Class.Class::Class, *Comments.Comments::Comments) 
    GenerateClearDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateClearDefine.s(*Class.Class::Class, *Comments.Comments::Comments)  
    GenerateSizeDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateSizeDefine.s(*Class.Class::Class, *Comments.Comments::Comments)  
    GenerateResetDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateResetDefine.s(*Class.Class::Class, *Comments.Comments::Comments)  
    GenerateDeleteDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateDeleteDefine.s(*Class.Class::Class, *Comments.Comments::Comments)  
    GenerateFindDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateFindDefine.s(*Class.Class::Class, *Comments.Comments::Comments)  
    GenerateNextDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateNextDefine.s(*Class.Class::Class, *Comments.Comments::Comments)  
    GenerateKeyDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateKeyDefine.s(*Class.Class::Class, *Comments.Comments::Comments)      
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module MapMethods
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<
  
  Structure Private_Members
    
    VirtualTable.i
    Add.i
    AddEx.i
    Clear.i
    Size.i
    Reset.i
    Delete.i
    Find.i
    Next_.i
    Key.i
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<
  
  Procedure.i GetAdd(*This.Private_Members)
    
    ProcedureReturn *This\Add
  EndProcedure
  
  Procedure.i GetAddEx(*This.Private_Members)
    
    ProcedureReturn *This\AddEx
  EndProcedure
  
  Procedure.i GetClear(*This.Private_Members)
    
    ProcedureReturn *This\Clear
  EndProcedure
  
  Procedure.i GetSize(*This.Private_Members)
    
    ProcedureReturn *This\Size
  EndProcedure
  
  Procedure.i GetReset(*This.Private_Members)
    
    ProcedureReturn *This\Reset
  EndProcedure
  
  Procedure.i GetDelete(*This.Private_Members)
    
    ProcedureReturn *This\Delete
  EndProcedure
  
  Procedure.i GetFind(*This.Private_Members)
    
    ProcedureReturn *This\Find
  EndProcedure
  
  Procedure.i GetNext(*This.Private_Members)
    
    ProcedureReturn *This\Next_
  EndProcedure
  
  Procedure.i GetKey(*This.Private_Members)
    
    ProcedureReturn *This\Key
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<
  
  Procedure SetAdd(*This.Private_Members, Add.i)
    
    *This\Add = Add
    
  EndProcedure
  
  Procedure SetAddEx(*This.Private_Members, AddEx.i)
    
    *This\AddEx = AddEx
    
  EndProcedure
  
  Procedure SetClear(*This.Private_Members, Clear.i)
    
    *This\Clear = Clear
    
  EndProcedure
  
  Procedure SetSize(*This.Private_Members, Size.i)
    
    *This\Size = Size
    
  EndProcedure
  
  Procedure SetReset(*This.Private_Members, Reset.i)
    
    *This\Reset = Reset
    
  EndProcedure
  
  Procedure SetDelete(*This.Private_Members, Delete.i)
    
    *This\Delete = Delete
    
  EndProcedure
  
  Procedure SetFind(*This.Private_Members, Find.i)
    
    *This\Find = Find
    
  EndProcedure
  
  Procedure SetNext(*This.Private_Members, Next_.i)
    
    *This\Next_ = Next_
    
  EndProcedure
  
  Procedure SetKey(*This.Private_Members, Key.i)
    
    *This\Key = Key
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur Reset <<<<<
  
  Procedure Reset(*This.Private_Members)
    
    *This\Add = 0
    *This\AddEx = 0
    *This\Clear = 0
    *This\Size = 0
    *This\Reset = 0
    *This\Delete = 0
    *This\Find = 0
    *This\Next_ = 0
    *This\Key = 0
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyInteger(GroupName, "Add", *This\Add)
    *CustomPrefs\AddKeyInteger(GroupName, "AddEx", *This\AddEx)
    *CustomPrefs\AddKeyInteger(GroupName, "Clear", *This\Clear)
    *CustomPrefs\AddKeyInteger(GroupName, "Size", *This\Size)
    *CustomPrefs\AddKeyInteger(GroupName, "Reset", *This\Reset)
    *CustomPrefs\AddKeyInteger(GroupName, "Delete", *This\Delete)
    *CustomPrefs\AddKeyInteger(GroupName, "Find", *This\Find)
    *CustomPrefs\AddKeyInteger(GroupName, "Next", *This\Next_)
    *CustomPrefs\AddKeyInteger(GroupName, "Key", *This\Key)
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "Add")
        *This\Add = *CustomPrefs\GetValueInteger(GroupName, "Add", *This\Add)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "AddEx")
        *This\AddEx = *CustomPrefs\GetValueInteger(GroupName, "AddEx", *This\AddEx)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Clear")
        *This\Clear = *CustomPrefs\GetValueInteger(GroupName, "Clear", *This\Clear)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Size")
        *This\Size = *CustomPrefs\GetValueInteger(GroupName, "Size", *This\Size)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Reset")
        *This\Reset = *CustomPrefs\GetValueInteger(GroupName, "Reset", *This\Reset)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Delete")
        *This\Delete = *CustomPrefs\GetValueInteger(GroupName, "Delete", *This\Delete)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Find")
        *This\Find = *CustomPrefs\GetValueInteger(GroupName, "Find", *This\Find)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Next")
        *This\Next_ = *CustomPrefs\GetValueInteger(GroupName, "Next", *This\Next_)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Key")
        *This\Key = *CustomPrefs\GetValueInteger(GroupName, "Key", *This\Key)
      EndIf
      
    EndIf
    
  EndProcedure
  
  Procedure.s GenerateAddDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_MAP
        *HashMap.HashMap::HashMap = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *HashMap\GenerateDeclareAdd(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateAddDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_MAP
        *HashMap.HashMap::HashMap = *Members\GetLinkObject()
        Buffer.s + *HashMap\GenerateDefineAdd(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateAddExDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_MAP
        *HashMap.HashMap::HashMap = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *HashMap\GenerateDeclareAddEx(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateAddExDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_MAP
        *HashMap.HashMap::HashMap = *Members\GetLinkObject()
        Buffer.s + *HashMap\GenerateDefineAddEx(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateClearDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_MAP
        *HashMap.HashMap::HashMap = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *HashMap\GenerateDeclareClear(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateClearDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_MAP
        *HashMap.HashMap::HashMap = *Members\GetLinkObject()
        Buffer.s + *HashMap\GenerateDefineClear(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSizeDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_MAP
        *HashMap.HashMap::HashMap = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *HashMap\GenerateDeclareSize(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSizeDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_MAP
        *HashMap.HashMap::HashMap = *Members\GetLinkObject()
        Buffer.s + *HashMap\GenerateDefineSize(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateResetDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_MAP
        *HashMap.HashMap::HashMap = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *HashMap\GenerateDeclareReset(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateResetDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_MAP
        *HashMap.HashMap::HashMap = *Members\GetLinkObject()
        Buffer.s + *HashMap\GenerateDefineReset(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeleteDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_MAP
        *HashMap.HashMap::HashMap = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *HashMap\GenerateDeclareDelete(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeleteDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_MAP
        *HashMap.HashMap::HashMap = *Members\GetLinkObject()
        Buffer.s + *HashMap\GenerateDefineDelete(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateFindDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_MAP
        *HashMap.HashMap::HashMap = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *HashMap\GenerateDeclareFind(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateFindDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_MAP
        *HashMap.HashMap::HashMap = *Members\GetLinkObject()
        Buffer.s + *HashMap\GenerateDefineFind(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateNextDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_MAP
        *HashMap.HashMap::HashMap = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *HashMap\GenerateDeclareNext(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateNextDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_MAP
        *HashMap.HashMap::HashMap = *Members\GetLinkObject()
        Buffer.s + *HashMap\GenerateDefineNext(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateKeyDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_MAP
        *HashMap.HashMap::HashMap = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *HashMap\GenerateDeclareKey(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateKeyDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_MAP
        *HashMap.HashMap::HashMap = *Members\GetLinkObject()
        Buffer.s + *HashMap\GenerateDefineKey(*Comments)
      EndIf
      
    Wend
    
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
    Data.i @GetAdd()
    Data.i @GetAddEx()
    Data.i @GetClear()
    Data.i @GetSize()
    Data.i @GetReset()
    Data.i @GetDelete()
    Data.i @GetFind()
    Data.i @GetNext()
    Data.i @GetKey()
    Data.i @SetAdd()
    Data.i @SetAddEx()
    Data.i @SetClear()
    Data.i @SetSize()
    Data.i @SetReset()
    Data.i @SetDelete()
    Data.i @SetFind()
    Data.i @SetNext()
    Data.i @SetKey()
    Data.i @Reset()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    Data.i @GenerateAddDeclare()
    Data.i @GenerateAddDefine()  
    Data.i @GenerateAddExDeclare()
    Data.i @GenerateAddExDefine()      
    Data.i @GenerateClearDeclare()
    Data.i @GenerateClearDefine()
    Data.i @GenerateSizeDeclare()
    Data.i @GenerateSizeDefine() 
    Data.i @GenerateResetDeclare()
    Data.i @GenerateResetDefine()     
    Data.i @GenerateDeleteDeclare()
    Data.i @GenerateDeleteDefine()   
    Data.i @GenerateFindDeclare()
    Data.i @GenerateFindDefine()
    Data.i @GenerateNextDeclare()
    Data.i @GenerateNextDefine()
    Data.i @GenerateKeyDeclare()
    Data.i @GenerateKeyDefine()    
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (271000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = --------
; EnableXP
; CompileSourceDirectory