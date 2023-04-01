; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.9.10
; Nom du projet :Dev-Object
; Nom du fichier : DevObject - MemoryMethods.pb
; Version du fichier : 1.2.2
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 28-11-2019
; Mise à jour : 17-04-2022
; Codé pour PureBasic : V6.00 Beta 6
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule MemoryMethods
  
  Interface MemoryMethods
    
    GetCopy.i()
    GetCompare.i()
    GetSwapping.i()
    SetCopy(Copy.i)
    SetCompare(Compare.i)
    SetSwapping(Swapping.i)
    Reset()
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    GenerateCopyDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateCompareDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateSwappingDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateCopyDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateCompareDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateSwappingDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module MemoryMethods
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<
  
  Structure Private_Members
    
    VirtualTable.i
    Copy.i
    Compare.i
    Swapping.i
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<
  
  Procedure.i GetCopy(*This.Private_Members)
    
    ProcedureReturn *This\Copy
  EndProcedure
  
  Procedure.i GetCompare(*This.Private_Members)
    
    ProcedureReturn *This\Compare
  EndProcedure
  
  Procedure.i GetSwapping(*This.Private_Members)
    
    ProcedureReturn *This\Swapping
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<
  
  Procedure SetCopy(*This.Private_Members, Copy.i)
    
    *This\Copy = Copy
    
  EndProcedure
  
  Procedure SetCompare(*This.Private_Members, Compare.i)
    
    *This\Compare = Compare
    
  EndProcedure
  
  Procedure SetSwapping(*This.Private_Members, Swapping.i)
    
    *This\Swapping = Swapping
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur Reset <<<<<
  
  Procedure Reset(*This.Private_Members)
    
    *This\Copy = 0
    *This\Compare = 0
    *This\Swapping = 0
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyInteger(GroupName, "Copy", *This\Copy)
    *CustomPrefs\AddKeyInteger(GroupName, "Compare", *This\Compare)
    *CustomPrefs\AddKeyInteger(GroupName, "Swapping", *This\Swapping)
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "Copy")
        *This\Copy = *CustomPrefs\GetValueInteger(GroupName, "Copy", *This\Copy)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Compare")
        *This\Compare = *CustomPrefs\GetValueInteger(GroupName, "Compare", *This\Compare)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Swapping")
        *This\Swapping = *CustomPrefs\GetValueInteger(GroupName, "Swapping", *This\Swapping)
      EndIf
      
    EndIf
    
  EndProcedure
  
  Procedure.s GenerateCopyDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "Copy.i()" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @Copy()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateCompareDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "Compare.i(*Other)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @Compare()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSwappingDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "Swapping(*Other)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @Swapping()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateCopyDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure.i Copy(*This.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "*Copy.Private_Members = AllocateStructure(Private_Members)" + *Comments\LineFeed()
    
    If *Class\GetFastCopy() = #False
      
      Buffer + *Comments\Tabulation(2) + "*Copy\VirtualTable = ?START_METHODS" + *Comments\LineFeed()
      
      *Members.Chain::Chain = *Class\GetMembers()
      
      *Members\ResetChain()
      
      While *Members\NextLink()
        
        Select *Members\GetLinkTag()
            
          Case Class::#MEMBER_STYLE_ARRAY
            *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
            Instruction.s = *DynamicArray\GenerateCopyInstruction(*Comments, *Rules) 
            
            If *DynamicArray\GetType() = Class::#MEMBER_TYPE_OBJECT
              SeparatorNeeded = #True
            Else
              SeparatorNeeded = #False
            EndIf
            
          Case Class::#MEMBER_STYLE_LIST
            *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
            Instruction = *LinkedList\GenerateCopyInstruction(*Comments) 
            
            If *LinkedList\GetType() = Class::#MEMBER_TYPE_OBJECT
              SeparatorNeeded = #True
            Else
              SeparatorNeeded = #False
            EndIf
            
          Case Class::#MEMBER_STYLE_MAP
            *HashMap.HashMap::HashMap = *Members\GetLinkObject()
            Instruction = *HashMap\GenerateCopyInstruction(*Comments) 
            
            If *HashMap\GetType() = Class::#MEMBER_TYPE_OBJECT
              SeparatorNeeded = #True
            Else
              SeparatorNeeded = #False
            EndIf
            
          Case Class::#MEMBER_STYLE_BASIC
            *Basic.Basic::Basic = *Members\GetLinkObject()
            Instruction = *Basic\GenerateCopyInstruction(*Comments) 
            
            If *Basic\GetType() = Class::#MEMBER_TYPE_DATA_POINTER_C
              SeparatorNeeded = #True
            Else
              SeparatorNeeded = #False
            EndIf
            
          Case Class::#MEMBER_STYLE_STATIC_ARRAY
            *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
            Instruction = *StaticArray\GenerateCopyInstruction(*Comments) 
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
      
    Else
      
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "CopyStructure(*This, *Copy, Private_Members)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      
    EndIf 
    
    Buffer + *Comments\Tabulation(2) + "ProcedureReturn *Copy"+ *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateCompareDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure.i Compare(*This.Private_Members, *Other.Private_Members)" + *Comments\LineFeed()
    
    If *Class\GetDynamicObject() = #True
      
      *Members.Chain::Chain = *Class\GetMembers()
      
      *Members\ResetChain()
      
      While *Members\NextLink()
        
        Select *Members\GetLinkTag()
            
          Case Class::#MEMBER_STYLE_ARRAY
            *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
            Instruction.s = *DynamicArray\GenerateCompareInstruction(*Comments, *Rules) 
            SeparatorNeeded.i = #True
            
          Case Class::#MEMBER_STYLE_LIST
            *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
            Instruction = *LinkedList\GenerateCompareInstruction(*Comments) 
            SeparatorNeeded = #True
            
          Case Class::#MEMBER_STYLE_MAP
            *HashMap.HashMap::HashMap = *Members\GetLinkObject()
            Instruction = *HashMap\GenerateCompareInstruction(*Comments) 
            SeparatorNeeded = #True
            
          Case Class::#MEMBER_STYLE_BASIC
            *Basic.Basic::Basic = *Members\GetLinkObject()
            Instruction = *Basic\GenerateCompareInstruction(*Comments) 
            SeparatorNeeded = #True
            
          Case Class::#MEMBER_STYLE_STATIC_ARRAY
            *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
            Instruction = *StaticArray\GenerateCompareInstruction(*Comments) 
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
      
      Buffer + *Comments\Tabulation(2) + "ProcedureReturn #True" + *Comments\LineFeed()
      
    Else
      
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "ProcedureReturn CompareMemory(*This, *Other, SizeOf(Private_Members))" + *Comments\LineFeed()
      
    EndIf
    
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSwappingDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure Swapping(*This.Private_Members, *Other.Private_Members)" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateSwappingInstruction(*Comments) 
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction = *LinkedList\GenerateSwappingInstruction(*Comments) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateSwappingInstruction(*Comments) 
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateSwappingInstruction(*Comments) 
          SeparatorNeeded = #False
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateSwappingInstruction(*Comments) 
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
    Data.i @GetCopy()
    Data.i @GetCompare()
    Data.i @GetSwapping()
    Data.i @SetCopy()
    Data.i @SetCompare()
    Data.i @SetSwapping()
    Data.i @Reset()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    Data.i @GenerateCopyDeclare()
    Data.i @GenerateCompareDeclare()
    Data.i @GenerateSwappingDeclare()
    Data.i @GenerateCopyDefine()
    Data.i @GenerateCompareDefine()
    Data.i @GenerateSwappingDefine()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (171000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = ----
; EnableXP
; CompileSourceDirectory