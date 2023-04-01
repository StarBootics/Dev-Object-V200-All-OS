; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.0.1
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - DynamicArrayMethods.pb
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

DeclareModule DynamicArrayMethods
  
  Interface DynamicArrayMethods
    
    GetSort.i()
    GetLinearSearch.i()
    GetBinarySearch.i()
    GetRandomize.i()
    GetReDimension.i()
    GetSize.i()
    SetSort(Sort.i)
    SetLinearSearch(LinearSearch.i)
    SetBinarySearch(BinarySearch.i)
    SetRandomize(Randomize.i)
    SetReDimension(ReDimension.i)
    SetSize(Size.i)
    Reset()
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    GenerateSortDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateSortDefine.s(*Class.Class::Class, *Comments.Comments::Comments)     
    
    GenerateLinearSearchDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)
    GenerateLinearSearchDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)     
    
    GenerateBinarySearchDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)
    GenerateBinarySearchDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules) 
    
    GenerateRandomizeDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateRandomizeDefine.s(*Class.Class::Class, *Comments.Comments::Comments) 
    GenerateReDimDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)
    GenerateReDimDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateSizeDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)
    GenerateSizeDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module DynamicArrayMethods
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<
  
  Structure Private_Members
    
    VirtualTable.i
    Sort.i
    LinearSearch.i
    BinarySearch.i
    Randomize.i
    ReDimension.i
    Size.i
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<
  
  Procedure.i GetSort(*This.Private_Members)
    
    ProcedureReturn *This\Sort
  EndProcedure
  
  Procedure.i GetLinearSearch(*This.Private_Members)
    
    ProcedureReturn *This\LinearSearch
  EndProcedure
  
  Procedure.i GetBinarySearch(*This.Private_Members)
    
    ProcedureReturn *This\BinarySearch
  EndProcedure
  
  Procedure.i GetRandomize(*This.Private_Members)
    
    ProcedureReturn *This\Randomize
  EndProcedure
  
  Procedure.i GetReDimension(*This.Private_Members)
    
    ProcedureReturn *This\ReDimension
  EndProcedure
  
  Procedure.i GetSize(*This.Private_Members)
    
    ProcedureReturn *This\Size
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<
  
  Procedure SetSort(*This.Private_Members, Sort.i)
    
    *This\Sort = Sort
    
  EndProcedure
  
  Procedure SetLinearSearch(*This.Private_Members, LinearSearch.i)
    
    *This\LinearSearch = LinearSearch
    
  EndProcedure
  
  Procedure SetBinarySearch(*This.Private_Members, BinarySearch.i)
    
    *This\BinarySearch = BinarySearch
    
  EndProcedure
  
  Procedure SetRandomize(*This.Private_Members, Randomize.i)
    
    *This\Randomize = Randomize
    
  EndProcedure
  
  Procedure SetReDimension(*This.Private_Members, ReDimension.i)
    
    *This\ReDimension = ReDimension
    
  EndProcedure
  
  Procedure SetSize(*This.Private_Members, Size.i)
    
    *This\Size = Size
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur Reset <<<<<
  
  Procedure Reset(*This.Private_Members)
    
    *This\Sort = 0
    *This\LinearSearch = 0
    *This\BinarySearch = 0
    *This\Randomize = 0
    *This\ReDimension = 0
    *This\Size = 0
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyInteger(GroupName, "Sort", *This\Sort)
    *CustomPrefs\AddKeyInteger(GroupName, "LinearSearch", *This\LinearSearch)
    *CustomPrefs\AddKeyInteger(GroupName, "BinarySearch", *This\BinarySearch)
    *CustomPrefs\AddKeyInteger(GroupName, "Randomize", *This\Randomize)
    *CustomPrefs\AddKeyInteger(GroupName, "ReDimension", *This\ReDimension)
    *CustomPrefs\AddKeyInteger(GroupName, "Size", *This\Size)
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "Sort")
        *This\Sort = *CustomPrefs\GetValueInteger(GroupName, "Sort", *This\Sort)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "LinearSearch")
        *This\LinearSearch = *CustomPrefs\GetValueInteger(GroupName, "LinearSearch", *This\LinearSearch)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "BinarySearch")
        *This\BinarySearch = *CustomPrefs\GetValueInteger(GroupName, "BinarySearch", *This\BinarySearch)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Randomize")
        *This\Randomize = *CustomPrefs\GetValueInteger(GroupName, "Randomize", *This\Randomize)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "ReDimension")
        *This\ReDimension = *CustomPrefs\GetValueInteger(GroupName, "ReDimension", *This\ReDimension)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Size")
        *This\Size = *CustomPrefs\GetValueInteger(GroupName, "Size", *This\Size)
      EndIf
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure.s GenerateSortDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_ARRAY
        
        *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
        
        If *DynamicArray\GetDimensionCount() = 1 And *DynamicArray\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *Comments\Tabulation(2) + *DynamicArray\GenerateDeclareSort(Mode) + *Comments\LineFeed()
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSortDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_ARRAY
        
        *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
        
        If *DynamicArray\GetDimensionCount() = 1 And *DynamicArray\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *DynamicArray\GenerateDefineSort(*Comments)
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateLinearSearchDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_ARRAY
        
        *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
        
        If *DynamicArray\GetDimensionCount() = 1 And *DynamicArray\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *Comments\Tabulation(2) + *DynamicArray\GenerateDeclareLinearSearch(Mode, *Rules) + *Comments\LineFeed()
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateLinearSearchDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_ARRAY
        
        *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
        
        If *DynamicArray\GetDimensionCount() = 1 And *DynamicArray\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *DynamicArray\GenerateDefineLinearSearch(*Comments, *Rules)
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateBinarySearchDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_ARRAY
        
        *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
        
        If *DynamicArray\GetDimensionCount() = 1 And *DynamicArray\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *Comments\Tabulation(2) + *DynamicArray\GenerateDeclareBinarySearch(Mode, *Rules) + *Comments\LineFeed()
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateBinarySearchDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_ARRAY
        
        *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
        
        If *DynamicArray\GetDimensionCount() = 1 And *DynamicArray\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *DynamicArray\GenerateDefineBinarySearch(*Comments, *Rules)
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateRandomizeDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_ARRAY
        *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *DynamicArray\GenerateDeclareRandomize(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateRandomizeDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_ARRAY
        *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
        Buffer.s + *DynamicArray\GenerateDefineRandomize(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateReDimDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)

    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_ARRAY
        *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *DynamicArray\GenerateDeclareReDim(Mode, *Rules) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateReDimDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_ARRAY
        *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
        Buffer.s + *DynamicArray\GenerateDefineRedim(*Comments, *Rules)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSizeDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_ARRAY
        *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *DynamicArray\GenerateDeclareSize(Mode, *Rules) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSizeDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_ARRAY
        *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
        Buffer.s + *DynamicArray\GenerateDefineSize(*Comments, *Rules)
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
    Data.i @GetSort()
    Data.i @GetLinearSearch()
    Data.i @GetBinarySearch()
    Data.i @GetRandomize()
    Data.i @GetReDimension()
    Data.i @GetSize()
    Data.i @SetSort()
    Data.i @SetLinearSearch()
    Data.i @SetBinarySearch()
    Data.i @SetRandomize()
    Data.i @SetReDimension()
    Data.i @SetSize()
    Data.i @Reset()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    Data.i @GenerateSortDeclare()
    Data.i @GenerateSortDefine() 
    Data.i @GenerateLinearSearchDeclare()
    Data.i @GenerateLinearSearchDefine() 
    Data.i @GenerateBinarySearchDeclare()
    Data.i @GenerateBinarySearchDefine() 
    Data.i @GenerateRandomizeDeclare()
    Data.i @GenerateRandomizeDefine()
    Data.i @GenerateReDimDeclare()
    Data.i @GenerateReDimDefine()
    Data.i @GenerateSizeDeclare()
    Data.i @GenerateSizeDefine()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (231000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = ------
; EnableXP
; CompileSourceDirectory