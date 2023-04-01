; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.0.1
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - BasicMethods.pb
; Version du fichier : 1.1.1
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 27-10-2019
; Mise à jour : 23-11-2021
; Codé pour PureBasic : V5.71 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule BasicMethods
  
  Interface BasicMethods
    
    GetGetters.i()
    GetSetters.i()
    GetUpdate.i()
    GetReset.i()
    GetClear.i()
    GetAccess.i()
    SetGetters(Getters.i)
    SetSetters(Setters.i)
    SetUpdate(Update.i)
    SetReset(Reset.i)
    SetClear(Clear.i)
    SetAccess(Access.i)
    Reset()
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    GenerateGettersDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)
    GenerateSettersDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)
    GenerateUpdateDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateResetDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateClearDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateAccessDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateGettersDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateSettersDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateUpdateDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateResetDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateClearDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateAccessDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module BasicMethods
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<
  
  Structure Private_Members
    
    VirtualTable.i
    Getters.i
    Setters.i
    Update.i
    Reset.i
    Clear.i
    Access.i
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<
  
  Procedure.i GetGetters(*This.Private_Members)
    
    ProcedureReturn *This\Getters
  EndProcedure
  
  Procedure.i GetSetters(*This.Private_Members)
    
    ProcedureReturn *This\Setters
  EndProcedure
  
  Procedure.i GetUpdate(*This.Private_Members)
    
    ProcedureReturn *This\Update
  EndProcedure
  
  Procedure.i GetReset(*This.Private_Members)
    
    ProcedureReturn *This\Reset
  EndProcedure
  
  Procedure.i GetClear(*This.Private_Members)
    
    ProcedureReturn *This\Clear
  EndProcedure
  
  Procedure.i GetAccess(*This.Private_Members)
    
    ProcedureReturn *This\Access
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<
  
  Procedure SetGetters(*This.Private_Members, Getters.i)
    
    *This\Getters = Getters
    
  EndProcedure
  
  Procedure SetSetters(*This.Private_Members, Setters.i)
    
    *This\Setters = Setters
    
  EndProcedure
  
  Procedure SetUpdate(*This.Private_Members, Update.i)
    
    *This\Update = Update
    
  EndProcedure
  
  Procedure SetReset(*This.Private_Members, Reset.i)
    
    *This\Reset = Reset
    
  EndProcedure
  
  Procedure SetClear(*This.Private_Members, Clear.i)
    
    *This\Clear = Clear
    
  EndProcedure
  
  Procedure SetAccess(*This.Private_Members, Access.i)
    
    *This\Access = Access
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur Reset <<<<<
  
  Procedure Reset(*This.Private_Members)
    
    *This\Getters = 0
    *This\Setters = 0
    *This\Update = 0
    *This\Reset = 0
    *This\Clear = 0
    *This\Access = 0
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyInteger(GroupName, "Getters", *This\Getters)
    *CustomPrefs\AddKeyInteger(GroupName, "Setters", *This\Setters)
    *CustomPrefs\AddKeyInteger(GroupName, "Update", *This\Update)
    *CustomPrefs\AddKeyInteger(GroupName, "Reset", *This\Reset)
    *CustomPrefs\AddKeyInteger(GroupName, "Clear", *This\Clear)
    *CustomPrefs\AddKeyInteger(GroupName, "Access", *This\Access)
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "Getters")
        *This\Getters = *CustomPrefs\GetValueInteger(GroupName, "Getters", *This\Getters)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Setters")
        *This\Setters = *CustomPrefs\GetValueInteger(GroupName, "Setters", *This\Setters)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Update")
        *This\Update = *CustomPrefs\GetValueInteger(GroupName, "Update", *This\Update)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Reset")
        *This\Reset = *CustomPrefs\GetValueInteger(GroupName, "Reset", *This\Reset)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Clear")
        *This\Clear = *CustomPrefs\GetValueInteger(GroupName, "Clear", *This\Clear)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Access")
        *This\Access = *CustomPrefs\GetValueInteger(GroupName, "Access", *This\Access)
      EndIf
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure.s GenerateGettersDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Buffer.s + *Comments\Tabulation(2) + *DynamicArray\GenerateDeclareGetter(Mode, *Rules) + *Comments\LineFeed()
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Buffer + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareGetter(Mode) + *Comments\LineFeed()
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Buffer + *Comments\Tabulation(2) + *HashMap\GenerateDeclareGetter(Mode) + *Comments\LineFeed()
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Buffer + *Comments\Tabulation(2) + *Basic\GenerateDeclareGetter(Mode) + *Comments\LineFeed()
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Buffer + *Comments\Tabulation(2) + *StaticArray\GenerateDeclareGetter(Mode) + *Comments\LineFeed()
          
      EndSelect
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSettersDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Buffer.s + *Comments\Tabulation(2) + *DynamicArray\GenerateDeclareSetter(Mode, *Rules) + *Comments\LineFeed()
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Buffer + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareSetter(Mode) + *Comments\LineFeed()
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Buffer + *Comments\Tabulation(2) + *HashMap\GenerateDeclareSetter(Mode) + *Comments\LineFeed()
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Buffer + *Comments\Tabulation(2) + *Basic\GenerateDeclareSetter(Mode) + *Comments\LineFeed()
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Buffer + *Comments\Tabulation(2) + *StaticArray\GenerateDeclareSetter(Mode) + *Comments\LineFeed()
          
      EndSelect
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateUpdateDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "Update(" + *Class\BuiltParamList(0) + ")" + *Comments\LineFeed()
        
      Case 1
        Buffer.s = *Comments\Tabulation(2) + "Data.i @Update()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateResetDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "Reset()" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @Reset()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateClearDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "Clear()" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @Clear()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateAccessDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "Access.i()" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @Access()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateGettersDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Buffer.s + *DynamicArray\GenerateDefineGetter(*Comments, *Rules)
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Buffer + *LinkedList\GenerateDefineGetter(*Comments)
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Buffer + *HashMap\GenerateDefineGetter(*Comments)
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Buffer + *Basic\GenerateDefineGetter(*Comments)
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Buffer + *StaticArray\GenerateDefineGetter(*Comments)
          
      EndSelect
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSettersDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
        
        Select *Members\GetLinkTag()
            
          Case Class::#MEMBER_STYLE_ARRAY
            *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
            Buffer.s + *DynamicArray\GenerateDefineSetter(*Comments, *Rules)
            
          Case Class::#MEMBER_STYLE_LIST
            *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
            Buffer + *LinkedList\GenerateDefineSetter(*Comments)
            
          Case Class::#MEMBER_STYLE_MAP
            *HashMap.HashMap::HashMap = *Members\GetLinkObject()
            Buffer + *HashMap\GenerateDefineSetter(*Comments)
            
          Case Class::#MEMBER_STYLE_BASIC
            *Basic.Basic::Basic = *Members\GetLinkObject()
            Buffer + *Basic\GenerateDefineSetter(*Comments)
            
          Case Class::#MEMBER_STYLE_STATIC_ARRAY
            *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
            Buffer + *StaticArray\GenerateDefineSetter(*Comments)
            
        EndSelect
        
      Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateUpdateDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure Update(*This.Private_Members, " + *Class\BuiltParamList(0) + ")" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\LinkIndex() = *Members\LinkCount() - 1
        ItIsTheLast.i = #True
      EndIf
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_BASIC
        *Basic.Basic::Basic = *Members\GetLinkObject()
        Buffer + *Basic\GenerateUpdateInstruction(*Comments, ItIsTheLast)      
      EndIf 
      
    Wend
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateResetDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure Reset(*This.Private_Members)" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateResetInstruction(*Comments, *Rules) 
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction = *LinkedList\GenerateResetInstruction(*Comments) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateResetInstruction(*Comments) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateResetInstruction(*Comments, @SeparatorNeeded)
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateResetInstruction(*Comments) 
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
  
  Procedure.s GenerateClearDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure Clear(*This.Private_Members)" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateClearInstruction(*Comments, *Rules)
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction = *LinkedList\GenerateClearInstruction(*Comments) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateClearInstruction(*Comments) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateClearInstruction(*Comments, @SeparatorNeeded) 
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateClearInstruction(*Comments) 
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
  
  Procedure.s GenerateAccessDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure.i Access(*This.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    If *Members\FirstLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_BASIC
        
        *Basic.Basic::Basic = *Members\GetLinkObject()
        
        If *Basic\GetType() <= Class::#MEMBER_TYPE_DOUBLE
          Buffer + *Comments\Tabulation(2) + "ProcedureReturn *This + OffsetOf(Private_Members\" + *Basic\GetName() + ")" + *Comments\LineFeed()
        Else
          Buffer + *Comments\Tabulation(2) + "ProcedureReturn *This + OffsetOf(ERROR)" + *Comments\LineFeed()
        EndIf
        
      EndIf
      
    Else
      Buffer + *Comments\Tabulation(2) + "ProcedureReturn *This + OffsetOf(ERROR)" + *Comments\LineFeed()
    EndIf
    
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
    Data.i @GetGetters()
    Data.i @GetSetters()
    Data.i @GetUpdate()
    Data.i @GetReset()
    Data.i @GetClear()
    Data.i @GetAccess()
    Data.i @SetGetters()
    Data.i @SetSetters()
    Data.i @SetUpdate()
    Data.i @SetReset()
    Data.i @SetClear()
    Data.i @SetAccess()
    Data.i @Reset()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    Data.i @GenerateGettersDeclare()
    Data.i @GenerateSettersDeclare()
    Data.i @GenerateUpdateDeclare()
    Data.i @GenerateResetDeclare()
    Data.i @GenerateClearDeclare()
    Data.i @GenerateAccessDeclare()
    Data.i @GenerateGettersDefine()
    Data.i @GenerateSettersDefine()
    Data.i @GenerateUpdateDefine()
    Data.i @GenerateResetDefine()
    Data.i @GenerateClearDefine()
    Data.i @GenerateAccessDefine()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (179000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = ---Hy-
; EnableXP
; CompileSourceDirectory