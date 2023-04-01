; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.0.1
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - StaticArrayMethods.pb
; Version du fichier : 1.1.0
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 30-10-2019
; Mise à jour : 10-06-2021
; Codé pour PureBasic : V5.71 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule StaticArrayMethods
  
  Interface StaticArrayMethods
    
    GetQuickSortAscendant.i()
    GetQuickSortDescendant.i()
    GetLinearSearch.i()
    GetBinarySearch.i()
    GetFixedLenghtQueue.i()
    SetQuickSortAscendant(QuickSortAscendant.i)
    SetQuickSortDescendant(QuickSortDescendant.i)
    SetLinearSearch(LinearSearch.i)
    SetBinarySearch(BinarySearch.i)
    SetFixedLenghtQueue(FixedLenghtQueue.i)
    Reset()
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    GenerateQuickSortAscendantDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateQuickSortAscendantDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateQuickSortDescendantDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateQuickSortDescendantDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateLinearSearchDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateLinearSearchDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateBinarySearchDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateBinarySearchDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateFixedLenghtQueueDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateFixedLenghtQueueDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module StaticArrayMethods
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<
  
  Structure Private_Members
    
    VirtualTable.i
    QuickSortAscendant.i
    QuickSortDescendant.i
    LinearSearch.i
    BinarySearch.i
    FixedLenghtQueue.i
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<
  
  Procedure.i GetQuickSortAscendant(*This.Private_Members)
    
    ProcedureReturn *This\QuickSortAscendant
  EndProcedure
  
  Procedure.i GetQuickSortDescendant(*This.Private_Members)
    
    ProcedureReturn *This\QuickSortDescendant
  EndProcedure
  
  Procedure.i GetLinearSearch(*This.Private_Members)
    
    ProcedureReturn *This\LinearSearch
  EndProcedure
  
  Procedure.i GetBinarySearch(*This.Private_Members)
    
    ProcedureReturn *This\BinarySearch
  EndProcedure
  
  Procedure.i GetFixedLenghtQueue(*This.Private_Members)
    
    ProcedureReturn *This\FixedLenghtQueue
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<
  
  Procedure SetQuickSortAscendant(*This.Private_Members, QuickSortAscendant.i)
    
    *This\QuickSortAscendant = QuickSortAscendant
    
  EndProcedure
  
  Procedure SetQuickSortDescendant(*This.Private_Members, QuickSortDescendant.i)
    
    *This\QuickSortDescendant = QuickSortDescendant
    
  EndProcedure
  
  Procedure SetLinearSearch(*This.Private_Members, LinearSearch.i)
    
    *This\LinearSearch = LinearSearch
    
  EndProcedure
  
  Procedure SetBinarySearch(*This.Private_Members, BinarySearch.i)
    
    *This\BinarySearch = BinarySearch
    
  EndProcedure
  
  Procedure SetFixedLenghtQueue(*This.Private_Members, FixedLenghtQueue.i)
    
    *This\FixedLenghtQueue = FixedLenghtQueue
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur Reset <<<<<
  
  Procedure Reset(*This.Private_Members)
    
    *This\QuickSortAscendant = 0
    *This\QuickSortDescendant = 0
    *This\LinearSearch = 0
    *This\BinarySearch = 0
    *This\FixedLenghtQueue = 0
    
  EndProcedure
  
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyInteger(GroupName, "QuickSortAscendant", *This\QuickSortAscendant)
    *CustomPrefs\AddKeyInteger(GroupName, "QuickSortDescendant", *This\QuickSortDescendant)
    *CustomPrefs\AddKeyInteger(GroupName, "LinearSearch", *This\LinearSearch)
    *CustomPrefs\AddKeyInteger(GroupName, "BinarySearch", *This\BinarySearch)
    *CustomPrefs\AddKeyInteger(GroupName, "FixedLenghtQueue", *This\FixedLenghtQueue)
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "QuickSortAscendant")
        *This\QuickSortAscendant = *CustomPrefs\GetValueInteger(GroupName, "QuickSortAscendant", *This\QuickSortAscendant)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "QuickSortDescendant")
        *This\QuickSortDescendant = *CustomPrefs\GetValueInteger(GroupName, "QuickSortDescendant", *This\QuickSortDescendant)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "LinearSearch")
        *This\LinearSearch = *CustomPrefs\GetValueInteger(GroupName, "LinearSearch", *This\LinearSearch)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "BinarySearch")
        *This\BinarySearch = *CustomPrefs\GetValueInteger(GroupName, "BinarySearch", *This\BinarySearch)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "FixedLenghtQueue")
        *This\FixedLenghtQueue = *CustomPrefs\GetValueInteger(GroupName, "FixedLenghtQueue", *This\FixedLenghtQueue)
      EndIf
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure.s GenerateQuickSortAscendantDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_STATIC_ARRAY
        
        *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
        
        If *StaticArray\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *Comments\Tabulation(2) + *StaticArray\GenerateDeclareQuickSortAscendant(Mode) + *Comments\LineFeed()
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateQuickSortAscendantDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_STATIC_ARRAY
        
        *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
        
        If *StaticArray\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *StaticArray\GenerateDefineQuickSortAscendant(*Comments)
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateQuickSortDescendantDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_STATIC_ARRAY
        
        *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
        
        If *StaticArray\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *Comments\Tabulation(2) + *StaticArray\GenerateDeclareQuickSortDescendant(Mode) + *Comments\LineFeed()
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateQuickSortDescendantDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_STATIC_ARRAY
        
        *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
        
        If *StaticArray\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *StaticArray\GenerateDefineQuickSortDescendant(*Comments)
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateLinearSearchDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_STATIC_ARRAY
        
        *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
        
        If *StaticArray\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *Comments\Tabulation(2) + *StaticArray\GenerateDeclareLinearSearch(Mode) + *Comments\LineFeed()
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateLinearSearchDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_STATIC_ARRAY
        
        *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
        
        If *StaticArray\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *StaticArray\GenerateDefineLinearSearch(*Comments)
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateBinarySearchDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_STATIC_ARRAY
        
        *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
        
        If *StaticArray\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *Comments\Tabulation(2) + *StaticArray\GenerateDeclareBinarySearch(Mode) + *Comments\LineFeed()
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateBinarySearchDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_STATIC_ARRAY
        
        *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
        
        If *StaticArray\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *StaticArray\GenerateDefineBinarySearch(*Comments)
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateFixedLenghtQueueDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_STATIC_ARRAY
        *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *StaticArray\GenerateDeclareFixedLenghtQueue(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateFixedLenghtQueueDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_STATIC_ARRAY
        *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
        Buffer.s + *StaticArray\GenerateDefineFixedLenghtQueue(*Comments)
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
    Data.i @GetQuickSortAscendant()
    Data.i @GetQuickSortDescendant()
    Data.i @GetLinearSearch()
    Data.i @GetBinarySearch()
    Data.i @GetFixedLenghtQueue()
    Data.i @SetQuickSortAscendant()
    Data.i @SetQuickSortDescendant()
    Data.i @SetLinearSearch()
    Data.i @SetBinarySearch()
    Data.i @SetFixedLenghtQueue()
    Data.i @Reset()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    Data.i @GenerateQuickSortAscendantDeclare()
    Data.i @GenerateQuickSortAscendantDefine()
    Data.i @GenerateQuickSortDescendantDeclare()
    Data.i @GenerateQuickSortDescendantDefine() 
    Data.i @GenerateLinearSearchDeclare()
    Data.i @GenerateLinearSearchDefine()
    Data.i @GenerateBinarySearchDeclare()
    Data.i @GenerateBinarySearchDefine()
    Data.i @GenerateFixedLenghtQueueDeclare()
    Data.i @GenerateFixedLenghtQueueDefine()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (211000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = ------
; EnableXP
; CompileSourceDirectory