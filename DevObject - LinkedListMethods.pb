; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.0.1
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - LinkedListMethods.pb
; Version du fichier : 1.2.1
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 30-10-2019
; Mise à jour : 10-06-2021
; Codé pour PureBasic : V5.73 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule LinkedListMethods
  
  Interface LinkedListMethods
    
    GetSort.i()
    GetLinearSearch.i()
    GetBinarySearch.i()
    GetRandomize.i()
    GetAdd.i()
    GetAddEx.i()
    GetInsert.i()
    GetInsertEx.i()
    GetSelect.i()
    GetFirst.i()
    GetLast.i()
    GetPrevious.i()
    GetNext.i()
    GetDelete.i()
    GetReset.i()
    GetClear.i()
    GetIndex.i()
    GetSize.i()
    GetMerge.i()
    SetSort(Sort.i)
    SetLinearSearch(LinearSearch.i)
    SetBinarySearch(BinarySearch.i)
    SetRandomize(Randomize.i)
    SetAdd(Add.i)
    SetAddEx(AddEx.i)
    SetInsert(Insert.i)
    SetInsertEx(InsertEx.i)
    SetSelect(Select_.i)
    SetFirst(First.i)
    SetLast(Last.i)
    SetPrevious(Previous.i)
    SetNext(Next_.i)
    SetDelete(Delete.i)
    SetReset(Reset.i)
    SetClear(Clear.i)
    SetIndex(Index.i)
    SetSize(Size.i)
    SetMerge(Merge.i)
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
    GenerateAddDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateAddDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateAddExDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateAddExDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateInsertDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateInsertDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateInsertExDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateInsertExDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateSelectDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)
    GenerateSelectDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules) 
    GenerateFirstDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateFirstDefine.s(*Class.Class::Class, *Comments.Comments::Comments) 
    GenerateLastDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateLastDefine.s(*Class.Class::Class, *Comments.Comments::Comments) 
    GeneratePreviousDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GeneratePreviousDefine.s(*Class.Class::Class, *Comments.Comments::Comments)    
    GenerateNextDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateNextDefine.s(*Class.Class::Class, *Comments.Comments::Comments)     
    GenerateDeleteDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateDeleteDefine.s(*Class.Class::Class, *Comments.Comments::Comments)    
    GenerateResetDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateResetDefine.s(*Class.Class::Class, *Comments.Comments::Comments)  
    GenerateClearDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateClearDefine.s(*Class.Class::Class, *Comments.Comments::Comments)  
    GenerateIndexDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)
    GenerateIndexDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)      
    GenerateSizeDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)
    GenerateSizeDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules) 
    GenerateMergeDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateMergeDefine.s(*Class.Class::Class, *Comments.Comments::Comments) 
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module LinkedListMethods
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<
  
  Structure Private_Members
    
    VirtualTable.i
    Sort.i
    LinearSearch.i
    BinarySearch.i
    Randomize.i
    Add.i
    AddEx.i
    Insert.i
    InsertEx.i
    Select_.i
    First.i
    Last.i
    Previous.i
    Next_.i
    Delete.i
    Reset.i
    Clear.i
    Index.i
    Size.i
    Merge.i
    
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
  
  Procedure.i GetAdd(*This.Private_Members)
    
    ProcedureReturn *This\Add
  EndProcedure
  
  Procedure.i GetAddEx(*This.Private_Members)
    
    ProcedureReturn *This\AddEx
  EndProcedure
  
  Procedure.i GetInsert(*This.Private_Members)
    
    ProcedureReturn *This\Insert
  EndProcedure
  
  Procedure.i GetInsertEx(*This.Private_Members)
    
    ProcedureReturn *This\InsertEx
  EndProcedure
  
  Procedure.i GetSelect(*This.Private_Members)
    
    ProcedureReturn *This\Select_
  EndProcedure
  
  Procedure.i GetFirst(*This.Private_Members)
    
    ProcedureReturn *This\First
  EndProcedure
  
  Procedure.i GetLast(*This.Private_Members)
    
    ProcedureReturn *This\Last
  EndProcedure
  
  Procedure.i GetPrevious(*This.Private_Members)
    
    ProcedureReturn *This\Previous
  EndProcedure
  
  Procedure.i GetNext(*This.Private_Members)
    
    ProcedureReturn *This\Next_
  EndProcedure
  
  Procedure.i GetDelete(*This.Private_Members)
    
    ProcedureReturn *This\Delete
  EndProcedure
  
  Procedure.i GetReset(*This.Private_Members)
    
    ProcedureReturn *This\Reset
  EndProcedure
  
  Procedure.i GetClear(*This.Private_Members)
    
    ProcedureReturn *This\Clear
  EndProcedure
  
  Procedure.i GetIndex(*This.Private_Members)
    
    ProcedureReturn *This\Index
  EndProcedure
  
  Procedure.i GetSize(*This.Private_Members)
    
    ProcedureReturn *This\Size
  EndProcedure
  
  Procedure.i GetMerge(*This.Private_Members)
    
    ProcedureReturn *This\Merge
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
  
  Procedure SetAdd(*This.Private_Members, Add.i)
    
    *This\Add = Add
    
  EndProcedure
  
  Procedure SetAddEx(*This.Private_Members, AddEx.i)
    
    *This\AddEx = AddEx
    
  EndProcedure
  
  Procedure SetInsert(*This.Private_Members, Insert.i)
    
    *This\Insert = Insert
    
  EndProcedure
  
  Procedure SetInsertEx(*This.Private_Members, InsertEx.i)
    
    *This\InsertEx = InsertEx
    
  EndProcedure
  
  Procedure SetSelect(*This.Private_Members, Select_.i)
    
    *This\Select_ = Select_
    
  EndProcedure
  
  Procedure SetFirst(*This.Private_Members, First.i)
    
    *This\First = First
    
  EndProcedure
  
  Procedure SetLast(*This.Private_Members, Last.i)
    
    *This\Last = Last
    
  EndProcedure
  
  Procedure SetPrevious(*This.Private_Members, Previous.i)
    
    *This\Previous = Previous
    
  EndProcedure
  
  Procedure SetNext(*This.Private_Members, Next_.i)
    
    *This\Next_ = Next_
    
  EndProcedure
  
  Procedure SetDelete(*This.Private_Members, Delete.i)
    
    *This\Delete = Delete
    
  EndProcedure
  
  Procedure SetReset(*This.Private_Members, Reset.i)
    
    *This\Reset = Reset
    
  EndProcedure
  
  Procedure SetClear(*This.Private_Members, Clear.i)
    
    *This\Clear = Clear
    
  EndProcedure
  
  Procedure SetIndex(*This.Private_Members, Index.i)
    
    *This\Index = Index
    
  EndProcedure
  
  Procedure SetSize(*This.Private_Members, Size.i)
    
    *This\Size = Size
    
  EndProcedure

  Procedure SetMerge(*This.Private_Members, Merge.i)
    
    *This\Merge = Merge
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur Reset <<<<<
  
  Procedure Reset(*This.Private_Members)
    
    *This\Sort = 0
    *This\LinearSearch = 0
    *This\BinarySearch = 0
    *This\Randomize = 0
    *This\Add = 0
    *This\AddEx = 0
    *This\Insert = 0
    *This\InsertEx = 0
    *This\Select_ = 0
    *This\First = 0
    *This\Last = 0
    *This\Previous = 0
    *This\Next_ = 0
    *This\Delete = 0
    *This\Reset = 0
    *This\Clear = 0
    *This\Index = 0
    *This\Size = 0
    *This\Merge = 0
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyInteger(GroupName, "Sort", *This\Sort)
    *CustomPrefs\AddKeyInteger(GroupName, "LinearSearch", *This\LinearSearch)
    *CustomPrefs\AddKeyInteger(GroupName, "BinarySearch", *This\BinarySearch)
    *CustomPrefs\AddKeyInteger(GroupName, "Randomize", *This\Randomize)
    *CustomPrefs\AddKeyInteger(GroupName, "Add", *This\Add)
    *CustomPrefs\AddKeyInteger(GroupName, "AddEx", *This\AddEx)
    *CustomPrefs\AddKeyInteger(GroupName, "Insert", *This\Insert)
    *CustomPrefs\AddKeyInteger(GroupName, "InsertEx", *This\InsertEx)
    *CustomPrefs\AddKeyInteger(GroupName, "Select", *This\Select_)
    *CustomPrefs\AddKeyInteger(GroupName, "First", *This\First)
    *CustomPrefs\AddKeyInteger(GroupName, "Last", *This\Last)
    *CustomPrefs\AddKeyInteger(GroupName, "Previous", *This\Previous)
    *CustomPrefs\AddKeyInteger(GroupName, "Next", *This\Next_)
    *CustomPrefs\AddKeyInteger(GroupName, "Delete", *This\Delete)
    *CustomPrefs\AddKeyInteger(GroupName, "Reset", *This\Reset)
    *CustomPrefs\AddKeyInteger(GroupName, "Clear", *This\Clear)
    *CustomPrefs\AddKeyInteger(GroupName, "Index", *This\Index)
    *CustomPrefs\AddKeyInteger(GroupName, "Size", *This\Size)
    *CustomPrefs\AddKeyInteger(GroupName, "Merge", *This\Merge)
    
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
      
      If *CustomPrefs\IsKey(GroupName, "Add")
        *This\Add = *CustomPrefs\GetValueInteger(GroupName, "Add", *This\Add)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "AddEx")
        *This\AddEx = *CustomPrefs\GetValueInteger(GroupName, "AddEx", *This\AddEx)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Insert")
        *This\Insert = *CustomPrefs\GetValueInteger(GroupName, "Insert", *This\Insert)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "InsertEx")
        *This\InsertEx = *CustomPrefs\GetValueInteger(GroupName, "InsertEx", *This\InsertEx)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Select")
        *This\Select_ = *CustomPrefs\GetValueInteger(GroupName, "Select", *This\Select_)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "First")
        *This\First = *CustomPrefs\GetValueInteger(GroupName, "First", *This\First)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Last")
        *This\Last = *CustomPrefs\GetValueInteger(GroupName, "Last", *This\Last)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Previous")
        *This\Previous = *CustomPrefs\GetValueInteger(GroupName, "Previous", *This\Previous)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Next")
        *This\Next_ = *CustomPrefs\GetValueInteger(GroupName, "Next", *This\Next_)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Delete")
        *This\Delete = *CustomPrefs\GetValueInteger(GroupName, "Delete", *This\Delete)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Reset")
        *This\Reset = *CustomPrefs\GetValueInteger(GroupName, "Reset", *This\Reset)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Clear")
        *This\Clear = *CustomPrefs\GetValueInteger(GroupName, "Clear", *This\Clear)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Index")
        *This\Index = *CustomPrefs\GetValueInteger(GroupName, "Index", *This\Index)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Size")
        *This\Size = *CustomPrefs\GetValueInteger(GroupName, "Size", *This\Size)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Merge")
        *This\Merge = *CustomPrefs\GetValueInteger(GroupName, "Merge", *This\Merge)
      EndIf
      
    EndIf
    
  EndProcedure
  
  Procedure.s GenerateSortDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        
        If *LinkedList\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareSort(Mode) + *Comments\LineFeed()
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSortDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        
        If *LinkedList\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *LinkedList\GenerateDefineSort(*Comments)
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateLinearSearchDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        
        If *LinkedList\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareLinearSearch(Mode, *Rules) + *Comments\LineFeed()
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateLinearSearchDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        
        If *LinkedList\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *LinkedList\GenerateDefineLinearSearch(*Comments, *Rules)
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateBinarySearchDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        
        If *LinkedList\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareBinarySearch(Mode, *Rules) + *Comments\LineFeed()
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateBinarySearchDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        
        If *LinkedList\GetType() < Class::#MEMBER_TYPE_OBJECT
          Buffer.s + *LinkedList\GenerateDefineBinarySearch(*Comments, *Rules)
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateRandomizeDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareRandomize(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateRandomizeDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *LinkedList\GenerateDefineRandomize(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateAddDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareAdd(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateAddDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *LinkedList\GenerateDefineAdd(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateAddExDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareAddEx(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateAddExDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *LinkedList\GenerateDefineAddEx(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateInsertDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareInsert(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateInsertDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *LinkedList\GenerateDefineInsert(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateInsertExDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareInsertEx(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateInsertExDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *LinkedList\GenerateDefineInsertEx(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSelectDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareSelect(Mode, *Rules) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSelectDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *LinkedList\GenerateDefineSelect(*Comments, *Rules)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateFirstDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareFirst(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateFirstDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *LinkedList\GenerateDefineFirst(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateLastDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareLast(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateLastDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *LinkedList\GenerateDefineLast(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GeneratePreviousDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *LinkedList\GenerateDeclarePrevious(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GeneratePreviousDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *LinkedList\GenerateDefinePrevious(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateNextDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareNext(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateNextDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *LinkedList\GenerateDefineNext(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeleteDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareDelete(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeleteDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *LinkedList\GenerateDefineDelete(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateResetDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareReset(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateResetDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *LinkedList\GenerateDefineReset(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateClearDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareClear(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateClearDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *LinkedList\GenerateDefineClear(*Comments)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateIndexDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareIndex(Mode, *Rules) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateIndexDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *LinkedList\GenerateDefineIndex(*Comments, *Rules)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSizeDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareSize(Mode, *Rules) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSizeDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *LinkedList\GenerateDefineSize(*Comments, *Rules)
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure

  Procedure.s GenerateMergeDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *Comments\Tabulation(2) + *LinkedList\GenerateDeclareMerge(Mode) + *Comments\LineFeed()
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateMergeDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_LIST
        *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
        Buffer.s + *LinkedList\GenerateDefineMerge(*Comments)
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
    Data.i @GetAdd()
    Data.i @GetAddEx()
    Data.i @GetInsert()
    Data.i @GetInsertEx()
    Data.i @GetSelect()
    Data.i @GetFirst()
    Data.i @GetLast()
    Data.i @GetPrevious()
    Data.i @GetNext()
    Data.i @GetDelete()
    Data.i @GetReset()
    Data.i @GetClear()
    Data.i @GetIndex()
    Data.i @GetSize()
    Data.i @GetMerge()
    Data.i @SetSort()
    Data.i @SetLinearSearch()
    Data.i @SetBinarySearch()
    Data.i @SetRandomize()
    Data.i @SetAdd()
    Data.i @SetAddEx()
    Data.i @SetInsert()
    Data.i @SetInsertEx()
    Data.i @SetSelect()
    Data.i @SetFirst()
    Data.i @SetLast()
    Data.i @SetPrevious()
    Data.i @SetNext()
    Data.i @SetDelete()
    Data.i @SetReset()
    Data.i @SetClear()
    Data.i @SetIndex()
    Data.i @SetSize()
    Data.i @SetMerge()
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
    Data.i @GenerateAddDeclare()
    Data.i @GenerateAddDefine() 
    Data.i @GenerateAddExDeclare()
    Data.i @GenerateAddExDefine()     
    Data.i @GenerateInsertDeclare()
    Data.i @GenerateInsertDefine() 
    Data.i @GenerateInsertExDeclare()
    Data.i @GenerateInsertExDefine()
    Data.i @GenerateSelectDeclare()
    Data.i @GenerateSelectDefine()   
    Data.i @GenerateFirstDeclare()
    Data.i @GenerateFirstDefine()
    Data.i @GenerateLastDeclare()
    Data.i @GenerateLastDefine()
    Data.i @GeneratePreviousDeclare()
    Data.i @GeneratePreviousDefine()    
    Data.i @GenerateNextDeclare()
    Data.i @GenerateNextDefine()
    Data.i @GenerateDeleteDeclare()
    Data.i @GenerateDeleteDefine()
    Data.i @GenerateResetDeclare()
    Data.i @GenerateResetDefine()
    Data.i @GenerateClearDeclare()
    Data.i @GenerateClearDefine()
    Data.i @GenerateIndexDeclare()
    Data.i @GenerateIndexDefine()
    Data.i @GenerateSizeDeclare()
    Data.i @GenerateSizeDefine() 
    Data.i @GenerateMergeDeclare()
    Data.i @GenerateMergeDefine()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (411000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = ---------------
; EnableXP
; CompileSourceDirectory