; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.0.1
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - StaticArray.pb
; Version du fichier : 1.2.7
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 11-04-2019
; Mise à jour : 30-10-2022
; Codé pour PureBasic : V6.00 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule StaticArray

  Interface StaticArray

    GetDescription.s()
    GetDescriptionEx.s()
    GetName.s()
    GetAccess.s()
    GetType.i()
    GetTypeShort.s()
    GetTypeLong.s()
    GetZeroOut.s()
    GetArraySize.l()
    GetArraySizeCte.s()
    GetArraySizeLoop.s()
    GetArraySizeDeclare.s()
    GetArrayIndexName.s()
    GenerateDeclareGetter.s(Mode.i)
    GenerateDefineGetter.s(*Comments.Comments::Comments)
    GenerateDeclareSetter.s(Mode.i)
    GenerateDefineSetter.s(*Comments.Comments::Comments)
    GenerateResetInstruction.s(*Comments.Comments::Comments)
    GenerateClearInstruction.s(*Comments.Comments::Comments)
    GenerateCopyInstruction.s(*Comments.Comments::Comments)
    GenerateCompareInstruction.s(*Comments.Comments::Comments)
    GenerateSwappingInstruction.s(*Comments.Comments::Comments)
    GenerateDeclareQuickSortAscendant.s(Mode.i)
    GenerateDefineQuickSortAscendant.s(*Comments.Comments::Comments)
    GenerateDeclareQuickSortDescendant.s(Mode.i)
    GenerateDefineQuickSortDescendant.s(*Comments.Comments::Comments)
    GenerateDeclareLinearSearch.s(Mode.i)
    GenerateDefineLinearSearch.s(*Comments.Comments::Comments)
    GenerateDeclareBinarySearch.s(Mode.i)
    GenerateDefineBinarySearch.s(*Comments.Comments::Comments)
    GenerateDeclareFixedLenghtQueue.s(Mode.i)
    GenerateDefineFixedLenghtQueue.s(*Comments.Comments::Comments)
    GenerateReadBinaryInstruction.s(*Comments.Comments::Comments, TabSize.i)
    GenerateWriteBinaryInstruction.s(*Comments.Comments::Comments, TabSize.i)
    GenerateReadEncodedCryptedInstruction.s(*Comments.Comments::Comments, TabSize.i, Pointer.s, *CustomFileLib.CustomFileLib::CustomFileLib)
    GenerateWriteEncodedCryptedInstruction.s(*Comments.Comments::Comments, TabSize.i, Pointer.s, *CustomFileLib.CustomFileLib::CustomFileLib)
    GenerateReadPrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i)
    GenerateWritePrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i)
    GenerateXMLSetNodeInstruction.s(*Comments.Comments::Comments)
    GenerateXMLGetNodeInstruction.s(*Comments.Comments::Comments)
    
    GenerateJSONInsertInstruction.s(*Comments.Comments::Comments, TabSize.i)
    GenerateJSONExtractInstruction.s(*Comments.Comments::Comments, TabSize.i)
    
    GenerateAddGroupPrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s)
    GenerateExtractGroupPrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s)
    GenerateRefreshGroupPrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s)
    
    GenerateConstructorInstruction.s(*Comments.Comments::Comments, *SeparatorNeeded.Integer)
    GenerateDestructorInstruction.s(*Comments.Comments::Comments, *SeparatorNeeded.Integer)
    Free()

  EndInterface

  Declare.i New(Description.s, *StringUtilities.StringUtilities::StringUtilities, *DynamicObject.Integer, *FastCopy.Integer)

EndDeclareModule

Module StaticArray
  
  Enumeration 
    
    #MEMBER_TYPE_BYTE
    #MEMBER_TYPE_ASCII
    #MEMBER_TYPE_UNICODE
    #MEMBER_TYPE_CHARACTER
    #MEMBER_TYPE_INTEGER
    #MEMBER_TYPE_WORD
    #MEMBER_TYPE_LONG
    #MEMBER_TYPE_QUAD
    #MEMBER_TYPE_FLOAT
    #MEMBER_TYPE_DOUBLE
    #MEMBER_TYPE_STRING01
    #MEMBER_TYPE_STRING02
    #MEMBER_TYPE_OBJECT
    #MEMBER_TYPE_POINTER_C
    #MEMBER_TYPE_OBJECT_POINTER_C
    #MEMBER_TYPE_DATA_POINTER_C
    
  EndEnumeration 
  
  Structure Private_Members

    VirtualTable.i
    Description.s
    Name.s
    Access.s
    Type.i
    TypeShort.s
    TypeLong.s
    ZeroOut.s
    ArraySize.l
    ArraySizeCte.s
    ArraySizeLoop.s
    ArraySizeDeclare.s
    ArrayIndexName.s
    *BetweenBrackets.StringBetween::StringBetween
    
  EndStructure
  
  Procedure.s GetDescription(*This.Private_Members)

    ProcedureReturn *This\Description
  EndProcedure
  
  Procedure.s GetDescriptionEx(*This.Private_Members)
    
    If *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
      Pointer.s = "*"
    EndIf
    
    If *This\ArraySizeCte <> ""
      ProcedureReturn Pointer + *This\Name + *This\TypeLong + "[" + *This\ArraySizeCte + "]"
    Else
      ProcedureReturn *This\Description
    EndIf
    
  EndProcedure
  
  Procedure.s GetName(*This.Private_Members)

    ProcedureReturn *This\Name
  EndProcedure

  Procedure.s GetAccess(*This.Private_Members)

    ProcedureReturn *This\Access
  EndProcedure

  Procedure.i GetType(*This.Private_Members)

    ProcedureReturn *This\Type
  EndProcedure

  Procedure.s GetTypeShort(*This.Private_Members)

    ProcedureReturn *This\TypeShort
  EndProcedure

  Procedure.s GetTypeLong(*This.Private_Members)

    ProcedureReturn *This\TypeLong
  EndProcedure

  Procedure.s GetZeroOut(*This.Private_Members)

    ProcedureReturn *This\ZeroOut
  EndProcedure

  Procedure.l GetArraySize(*This.Private_Members)

    ProcedureReturn *This\ArraySize
  EndProcedure

  Procedure.s GetArraySizeCte(*This.Private_Members)

    ProcedureReturn *This\ArraySizeCte
  EndProcedure

  Procedure.s GetArraySizeLoop(*This.Private_Members)

    ProcedureReturn *This\ArraySizeLoop
  EndProcedure

  Procedure.s GetArraySizeDeclare(*This.Private_Members)

    ProcedureReturn *This\ArraySizeDeclare
  EndProcedure

  Procedure.s GetArrayIndexName(*This.Private_Members)

    ProcedureReturn *This\ArrayIndexName
  EndProcedure

  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure.s GenerateDeclareGetter(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        If *This\Type = #MEMBER_TYPE_OBJECT Or *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
          Buffer.s = "Get" + *This\Name + ".i(" + *This\ArrayIndexName + ".l)"
        Else
          Buffer.s = "Get" + *This\Name + *This\TypeLong + "(" + *This\ArrayIndexName + ".l)"
        EndIf
        
      Case 1
        Buffer.s = "Data.i @Get" + *This\Name + "()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineGetter(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT Or *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
      Buffer.s = *Comments\Tabulation(1) + "Procedure.i Get" + *This\Name + "(*This.Private_Members, " + *This\ArrayIndexName + ".l)"  + *Comments\LineFeed()
    Else
      Buffer.s = *Comments\Tabulation(1) + "Procedure" + *This\TypeLong + " Get" + *This\Name + "(*This.Private_Members, " + *This\ArrayIndexName + ".l)" + *Comments\LineFeed()
    EndIf
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ProcedureReturn *This\" + *This\Access + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeclareSetter(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        If *This\Type = #MEMBER_TYPE_OBJECT Or *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
          Buffer.s = "Set" + *This\Name + "(" + *This\ArrayIndexName + ".l, *" + *This\Name + *This\TypeLong + ")"
        Else
          Buffer.s = "Set" + *This\Name + "(" + *This\ArrayIndexName + ".l, " + *This\Name + *This\TypeLong + ")"
        EndIf
        
      Case 1
        Buffer.s = "Data.i @Set" + *This\Name + "()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure

  Procedure.s GenerateDefineSetter(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Buffer.s = *Comments\Tabulation(1) + "Procedure Set" + *This\Name + "(*This.Private_Members, " + *This\ArrayIndexName + ".l, *" + *This\Name + *This\TypeLong + ")"  + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "If *This\" + *This\Access + " <> #Null" + *Comments\LineFeed() 
      Buffer + *Comments\Tabulation(3) + "*This\" + *This\Access + "\Free()" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed() 
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "*This\" + *This\Access + " = *" + *This\Name + *Comments\LineFeed()
    ElseIf *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
      Buffer.s = *Comments\Tabulation(1) + "Procedure Set" + *This\Name + "(*This.Private_Members, " + *This\ArrayIndexName + ".l, *" + *This\Name + *This\TypeLong + ")"  + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "*This\" + *This\Access + " = *" + *This\Name + *Comments\LineFeed()
    ElseIf *This\Type = #MEMBER_TYPE_STRING02  
      Buffer.s = *Comments\Tabulation(1) + "Procedure Set" + *This\Name + "(*This.Private_Members, " + *This\ArrayIndexName + ".l, " + *This\Name + *This\TypeLong + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "*This\" + *This\Access + " = " + *This\Name + *This\TypeLong + *Comments\LineFeed()
    Else
      Buffer.s = *Comments\Tabulation(1) + "Procedure Set" + *This\Name + "(*This.Private_Members, " + *This\ArrayIndexName + ".l, " + *This\Name + *This\TypeLong + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "*This\" + *This\Access + " = " + *This\Name + *Comments\LineFeed()
    EndIf
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateResetInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    Instruction.s = *Comments\Tabulation(2) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction + *Comments\Tabulation(3) + "*This\" + *This\Access + "\Reset()" + *Comments\LineFeed()
    Else
      Instruction + *Comments\Tabulation(3) + "*This\" + *This\Access + " = " + *This\ZeroOut + *Comments\LineFeed()
    EndIf
    
    Instruction + *Comments\Tabulation(2) + "Next" + *Comments\LineFeed()

    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateClearInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    Instruction.s = *Comments\Tabulation(2) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction + *Comments\Tabulation(3) + "*This\" + *This\Access + "\Clear()" + *Comments\LineFeed()
    Else
      Instruction + *Comments\Tabulation(3) + "*This\" + *This\Access + " = " + *This\ZeroOut + *Comments\LineFeed()
    EndIf
    
    Instruction + *Comments\Tabulation(2) + "Next" + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateCopyInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    Instruction.s = *Comments\Tabulation(2) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction + *Comments\Tabulation(3) + "*Copy\" + *This\Access + " = *This\" + *This\Access + "\Copy()" + *Comments\LineFeed()
    Else
      Instruction + *Comments\Tabulation(3) + "*Copy\" + *This\Access + " = *This\" + *This\Access + *Comments\LineFeed()
    EndIf
    
    Instruction + *Comments\Tabulation(2) + "Next" + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateCompareInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    Instruction.s = *Comments\Tabulation(2) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction + *Comments\Tabulation(3) + "If *This\" + *This\Access + "\Compare(*Other\" + *This\Access + ") = #False" + *Comments\LineFeed() 
      Instruction + *Comments\Tabulation(4) + "ProcedureReturn #False" + *Comments\LineFeed() 
      Instruction + *Comments\Tabulation(3) + "EndIf" + *Comments\LineFeed() 
    Else
      Instruction + *Comments\Tabulation(3) + "If *This\" + *This\Access + " <> *Other\" + *This\Access + *Comments\LineFeed() 
      Instruction + *Comments\Tabulation(4) + "ProcedureReturn #False" + *Comments\LineFeed() 
      Instruction + *Comments\Tabulation(3) + "EndIf" + *Comments\LineFeed() 
    EndIf
    
    Instruction + *Comments\Tabulation(2) + "Next" + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateSwappingInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    Instruction.s = *Comments\Tabulation(2) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction + *Comments\Tabulation(3) + "*This\" + *This\Access + "\Swapping(*Other\" + *This\Access + ")" + *Comments\LineFeed()    
    Else
      Instruction + *Comments\Tabulation(3) + "Swap *This\" + *This\Access + ", *Other\" + *This\Access + *Comments\LineFeed()
    EndIf
    
    Instruction + *Comments\Tabulation(2) + "Next" + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateDeclareQuickSortAscendant(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        If *This\Type <= #MEMBER_TYPE_STRING02
          Buffer.s = "QuickSortAscendant" + *This\Name + "(FirstIndex = 0, LastIndex = " + *This\ArraySizeLoop + ")"
        EndIf
        
      Case 1
        If *This\Type <= #MEMBER_TYPE_STRING02
          Buffer.s = "Data.i @QuickSortAscendant" + *This\Name + "()"
        EndIf
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s InsertQuickSort(*Comments.Comments::Comments, TabSize.i, Test01.s, Test02.s, InstructionMin.s, InstructionMax.s)
    
    Buffer.s = *Comments\Tabulation(TabSize) + "Repeat" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(TabSize + 1) + "While " + Test01 + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(TabSize + 2) + "MinIndex + 1" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(TabSize + 1) + "Wend" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(TabSize + 1) + "While " + Test02 + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(TabSize + 2) + "MaxIndex - 1" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(TabSize + 1) + "Wend" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(TabSize + 1) + "If MinIndex <= MaxIndex" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(TabSize + 2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(TabSize + 2) + "Swap " + InstructionMin + ", " + InstructionMax + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(TabSize + 2) + "MinIndex + 1" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(TabSize + 2) + "MaxIndex - 1" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(TabSize + 2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(TabSize + 1) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(TabSize) + "Until MinIndex > MaxIndex" + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineQuickSortAscendant(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_STRING02
      DollarSign.s = "$"
    Else
      DollarSign = ""
    EndIf
    
    InstructionMin.s = "*This\" + *This\Name + DollarSign + "[MinIndex]"
    InstructionMax.s = "*This\" + *This\Name + DollarSign + "[MaxIndex]"
    InstructionMid.s = "*This\" + *This\Name + DollarSign + "[(FirstIndex + LastIndex) >> 1]"
    Test03.s = InstructionMin + " < SplitValue" + DollarSign
    Test04.s = InstructionMax + " > SplitValue" + DollarSign
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure QuickSortAscendant" + *This\Name + "(*This.Private_Members, FirstIndex = 0, LastIndex = " + *This\ArraySizeLoop + ")" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "MinIndex = FirstIndex" + *Comments\LineFeed() 
    Buffer + *Comments\Tabulation(2) + "MaxIndex = LastIndex" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "SplitValue" + *This\TypeLong + " = " + InstructionMid + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    
    Buffer + InsertQuickSort(*Comments, 2, Test03, Test04, InstructionMin, InstructionMax)
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If FirstIndex < MaxIndex" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "QuickSortAscendant" + *This\Name + "(*This, FirstIndex, MaxIndex)" + *Comments\LineFeed() 
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If MinIndex < LastIndex" + *Comments\LineFeed() 
    Buffer + *Comments\Tabulation(3) + "QuickSortAscendant" + *This\Name + "(*This, MinIndex, LastIndex)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure

  Procedure.s GenerateDeclareQuickSortDescendant(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        If *This\Type <= #MEMBER_TYPE_STRING02
          Buffer.s = "QuickSortDescendant" + *This\Name + "(FirstIndex = 0, LastIndex = " + *This\ArraySizeLoop + ")"
        EndIf
        
      Case 1
        If *This\Type <= #MEMBER_TYPE_STRING02
          Buffer.s = "Data.i @QuickSortDescendant" + *This\Name + "()"
        EndIf
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineQuickSortDescendant(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_STRING02
      DollarSign.s = "$"
    Else
      DollarSign = ""
    EndIf
    
    InstructionMin.s = "*This\" + *This\Name + DollarSign + "[MinIndex]"
    InstructionMax.s = "*This\" + *This\Name + DollarSign + "[MaxIndex]"
    InstructionMid.s = "*This\" + *This\Name + DollarSign + "[(FirstIndex + LastIndex) >> 1]"

    Test03.s = InstructionMin + " > SplitValue" + DollarSign
    Test04.s = InstructionMax + " < SplitValue" + DollarSign
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure QuickSortDescendant" + *This\Name + "(*This.Private_Members, FirstIndex = 0, LastIndex = " + *This\ArraySizeLoop + ")" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "MinIndex = FirstIndex" + *Comments\LineFeed() 
    Buffer + *Comments\Tabulation(2) + "MaxIndex = LastIndex" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "SplitValue" + *This\TypeLong + " = " + InstructionMid + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    
    Buffer + InsertQuickSort(*Comments, 2, Test03, Test04, InstructionMin, InstructionMax)
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If FirstIndex < MaxIndex" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "QuickSortDescendant" + *This\Name + "(*This, FirstIndex, MaxIndex)" + *Comments\LineFeed() 
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If MinIndex < LastIndex" + *Comments\LineFeed() 
    Buffer + *Comments\Tabulation(3) + "QuickSortDescendant" + *This\Name + "(*This, MinIndex, LastIndex)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeclareLinearSearch(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        If *This\Type <= #MEMBER_TYPE_STRING02
          Buffer.s = "LinearSearch" + *This\Name + ".l(SearchValue" + *This\TypeLong + ")"
        EndIf
        
      Case 1
        If *This\Type <= #MEMBER_TYPE_STRING02
          Buffer.s = "Data.i @LinearSearch" + *This\Name + "()"
        EndIf
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineLinearSearch(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type < #MEMBER_TYPE_OBJECT
      
      Buffer.s = *Comments\Tabulation(1) + "Procedure.l LinearSearch" + *This\Name + "(*This.Private_Members, " + *This\Name + *This\TypeLong + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "IsFoundAtIndex.l = -1" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      
      If *This\Type <= #MEMBER_TYPE_STRING01
        Buffer + *Comments\Tabulation(3) + "If " + *This\Name + " = *This\" + *This\Access + *Comments\LineFeed()
      Else
        Buffer + *Comments\Tabulation(3) + "If " + *This\Name + "$ = *This\" + *This\Access + *Comments\LineFeed()
      EndIf
      
      Buffer + *Comments\Tabulation(4) + "IsFoundAtIndex = " + *This\ArrayIndexName + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(4) + "Break" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "EndIf" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "Next" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "ProcedureReturn IsFoundAtIndex" +  *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
      
    EndIf
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeclareBinarySearch(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        If *This\Type <= #MEMBER_TYPE_STRING02
          Buffer.s = "BinarySearch" + *This\Name + ".l(SearchValue" + *This\TypeLong + ")"
        EndIf
        
      Case 1
        If *This\Type <= #MEMBER_TYPE_STRING02
          Buffer.s = "Data.i @BinarySearch" + *This\Name + "()"
        EndIf
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineBinarySearch(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type < #MEMBER_TYPE_OBJECT
      
      Buffer.s = *Comments\Tabulation(1) + "Procedure.l BinarySearch" + *This\Name + "(*This.Private_Members, " + *This\Name + *This\TypeLong + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "IsFoundAtIndex.l = -1" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "StartPosition.l = 0" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "MiddlePosition.l = 0" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "EndPosition.l = " + *This\ArraySizeLoop + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "While StartPosition <= EndPosition" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "MiddlePosition = (StartPosition + EndPosition + 1) >> 1" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      
      If *This\Type <= #MEMBER_TYPE_STRING01
        Buffer + *Comments\Tabulation(3) + "If " + *This\Name + " < *This\" + ReplaceString(*This\Access, *This\ArrayIndexName, "MiddlePosition") + *Comments\LineFeed()
      Else
        Buffer + *Comments\Tabulation(3) + "If " + *This\Name + "$ < *This\" + ReplaceString(*This\Access, *This\ArrayIndexName, "MiddlePosition") + *Comments\LineFeed()
      EndIf
      
      Buffer + *Comments\Tabulation(4) + "EndPosition = MiddlePosition - 1" + *Comments\LineFeed()
      
      If *This\Type <= #MEMBER_TYPE_STRING01
        Buffer + *Comments\Tabulation(3) + "ElseIf " + *This\Name + " > *This\" + ReplaceString(*This\Access, *This\ArrayIndexName, "MiddlePosition") + *Comments\LineFeed()
      Else
        Buffer + *Comments\Tabulation(3) + "ElseIf " + *This\Name + "$ > *This\" + ReplaceString(*This\Access, *This\ArrayIndexName, "MiddlePosition") + *Comments\LineFeed()
      EndIf
      
      Buffer + *Comments\Tabulation(4) + "StartPosition = MiddlePosition + 1" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "Else" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(4) + "StartPosition = EndPosition + 1" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(4) + "IsFoundAtIndex = MiddlePosition" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "EndIf" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "Wend" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "ProcedureReturn IsFoundAtIndex" +  *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
      
    EndIf
    
    ProcedureReturn Buffer
  EndProcedure

  Procedure.s GenerateDeclareFixedLenghtQueue(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        If *This\Type <= #MEMBER_TYPE_STRING02
          Buffer.s = "InsertTopBottomOut" + *This\Name + "(" + *This\Name + *This\TypeLong + ")"
        ElseIf *This\Type = #MEMBER_TYPE_OBJECT
          Buffer.s = "InsertTopBottomOut" + *This\Name + "(*" + *This\Name + *This\TypeLong + ")"
        EndIf
        
      Case 1
        Buffer.s = "Data.i @InsertTopBottomOut" + *This\Name + "()"

    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineFixedLenghtQueue(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type <= #MEMBER_TYPE_STRING02
      Buffer.s = *Comments\Tabulation(1) + "Procedure InsertTopBottomOut" + *This\Name + "(*This.Private_Members, " + *This\Name + *This\TypeLong + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    ElseIf *This\Type = #MEMBER_TYPE_OBJECT
      Buffer.s = *Comments\Tabulation(1) + "Procedure InsertTopBottomOut" + *This\Name + "(*This.Private_Members, *" + *This\Name + *This\TypeLong + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Temp.s = ReplaceString(*This\Access, *This\ArrayIndexName, *This\ArraySizeLoop)
      Buffer + *Comments\Tabulation(2) + "If *This\" + Temp + " <> #Null"+ *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "*This\" + Temp + "\Free()"+ *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    EndIf
    
    Buffer + *Comments\Tabulation(2) + "For " + *This\ArrayIndexName + " = " + *This\ArraySizeLoop + " To 1 Step -1" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "*This\" + *This\Access + " = " + InsertString(*This\Access, " - 1", Len(*This\Access)) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "Next" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    
    If *This\Type <= #MEMBER_TYPE_STRING01
      Buffer + *Comments\Tabulation(2) + "*This\" + ReplaceString(*This\Access, *This\ArrayIndexName, "0") + " = " + *This\Name + *Comments\LineFeed()
    ElseIf *This\Type = #MEMBER_TYPE_STRING02
      Buffer + *Comments\Tabulation(2) + "*This\" + ReplaceString(*This\Access, *This\ArrayIndexName, "0") + " = " + *This\Name + "$" + *Comments\LineFeed()
    ElseIf *This\Type = #MEMBER_TYPE_OBJECT
      Buffer + *Comments\Tabulation(2) + "*This\" + ReplaceString(*This\Access, *This\ArrayIndexName, "0") + " = *" + *This\Name + *Comments\LineFeed()
    EndIf
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()

    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateReadBinaryInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i)
    
    Instruction.s = *Comments\Tabulation(TabSize) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = ReadByte(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_ASCII
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = ReadAsciiCharacter(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_UNICODE
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = ReadUnicodeCharacter(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_CHARACTER
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = ReadCharacter(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = ReadInteger(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_WORD
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = ReadWord(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_LONG
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = ReadLong(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = ReadQuad(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = ReadFloat(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = ReadDouble(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = ReadString(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + "\Read" + StringField(*This\TypeShort, 3, ":") + "(FileID)" + *Comments\LineFeed()   
        
    EndSelect
    
    Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateWriteBinaryInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i)
    
    Instruction.s = *Comments\Tabulation(TabSize) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE
        Instruction + *Comments\Tabulation(TabSize+1) + "WriteByte(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_ASCII
        Instruction + *Comments\Tabulation(TabSize+1) + "WriteAsciiCharacter(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_UNICODE
        Instruction + *Comments\Tabulation(TabSize+1) + "WriteUnicodeCharacter(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_CHARACTER
        Instruction + *Comments\Tabulation(TabSize+1) + "WriteCharacter(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction + *Comments\Tabulation(TabSize+1) + "WriteInteger(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_WORD
        Instruction + *Comments\Tabulation(TabSize+1) + "WriteWord(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_LONG
        Instruction + *Comments\Tabulation(TabSize+1) + "WriteLong(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(TabSize+1) + "WriteQuad(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(TabSize+1) + "WriteFloat(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(TabSize+1) + "WriteDouble(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(TabSize+1) + "WriteStringN(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + "\Write" + StringField(*This\TypeShort, 3, ":") + "(FileID)" + *Comments\LineFeed()   
        
    EndSelect
    
    Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()

    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateReadEncodedCryptedInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Pointer.s, *CustomFileLib.CustomFileLib::CustomFileLib)
    
    Instruction.s = *Comments\Tabulation(TabSize) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadByte(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_ASCII
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadAsciiCharacter(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_UNICODE
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadUnicodeCharacter(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_CHARACTER
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadCharacter(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadInteger(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_WORD
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadWord(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_LONG
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadLong(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadQuad(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadFloat(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadDouble(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadString(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + "\" + *CustomFileLib\GetPrefix() + "Read" + StringField(*This\TypeShort, 3, ":") + "(FileID, " + Pointer + "CustomLib)" + *Comments\LineFeed()   
        
    EndSelect
    
    Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateWriteEncodedCryptedInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Pointer.s, *CustomFileLib.CustomFileLib::CustomFileLib)
    
    Instruction.s = *Comments\Tabulation(TabSize) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE
        Instruction + *Comments\Tabulation(TabSize+1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteByte(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_ASCII
        Instruction + *Comments\Tabulation(TabSize+1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteAsciiCharacter(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_UNICODE
        Instruction + *Comments\Tabulation(TabSize+1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteUnicodeCharacter(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_CHARACTER
        Instruction + *Comments\Tabulation(TabSize+1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteCharacter(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction + *Comments\Tabulation(TabSize+1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteInteger(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_WORD
        Instruction + *Comments\Tabulation(TabSize+1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteWord(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_LONG
        Instruction + *Comments\Tabulation(TabSize+1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteLong(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(TabSize+1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteQuad(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(TabSize+1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteFloat(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(TabSize+1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteDouble(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(TabSize+1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteString(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + "\" + *CustomFileLib\GetPrefix() + "Write" + StringField(*This\TypeShort, 3, ":") + "(FileID, " + Pointer + "CustomLib)" + *Comments\LineFeed()   
        
    EndSelect
    
    Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()

    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateReadPrefsInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Mode.i)
    
    Instruction.s = *Comments\Tabulation(TabSize) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE To #MEMBER_TYPE_CHARACTER, #MEMBER_TYPE_WORD, #MEMBER_TYPE_LONG
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = ReadPreferenceLong(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = ReadPreferenceInteger(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = ReadPreferenceQuad(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = ReadPreferenceFloat(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = ReadPreferenceDouble(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + " = ReadPreferenceString(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        If Mode = 0
          Instruction = *Comments\Tabulation(TabSize) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
        Else
          Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + "\ReadPrefs(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "))" + *Comments\LineFeed()
        EndIf
        
    EndSelect
    
    Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateWritePrefsInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Mode.i)
    
    Instruction.s = *Comments\Tabulation(TabSize) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE To #MEMBER_TYPE_CHARACTER, #MEMBER_TYPE_WORD, #MEMBER_TYPE_LONG
        Instruction + *Comments\Tabulation(TabSize+1) + "WritePreferenceLong(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction + *Comments\Tabulation(TabSize+1) + "WritePreferenceInteger(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(TabSize+1) + "WritePreferenceQuad(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(TabSize+1) + "WritePreferenceFloat(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(TabSize+1) + "WritePreferenceDouble(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(TabSize+1) + "WritePreferenceString(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        If Mode = 0
          Instruction = *Comments\Tabulation(TabSize) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
        Else
          Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + "\WritePrefs(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "))" + *Comments\LineFeed()
        EndIf
        
    EndSelect
    
    Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()

    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateXMLSetNodeInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    Instruction.s = *Comments\Tabulation(2) + "FieldNode = CreateXMLNode(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE, #MEMBER_TYPE_CHARACTER, #MEMBER_TYPE_INTEGER, #MEMBER_TYPE_WORD, #MEMBER_TYPE_LONG, #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(3) + "IndexNode = CreateXMLNode(FieldNode, " + Chr(34) + "Index" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLAttribute(IndexNode, " + Chr(34) + "ID" + Chr(34) + ", Str(" + *This\ArrayIndexName + "))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLNodeText(IndexNode, Str(*This\" + *This\Access + "))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_ASCII
        Instruction + *Comments\Tabulation(3) + "IndexNode = CreateXMLNode(FieldNode, " + Chr(34) + "Index" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLAttribute(IndexNode, " + Chr(34) + "ID" + Chr(34) + ", Str(" + *This\ArrayIndexName + "))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLNodeText(IndexNode, StrU(*This\" + *This\Access + ", #PB_Ascii))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_UNICODE
        Instruction + *Comments\Tabulation(3) + "IndexNode = CreateXMLNode(FieldNode, " + Chr(34) + "Index" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLAttribute(IndexNode, " + Chr(34) + "ID" + Chr(34) + ", Str(" + *This\ArrayIndexName + "))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLNodeText(IndexNode, StrU(*This\" + *This\Access + ", #PB_Unicode))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(3) + "IndexNode = CreateXMLNode(FieldNode, " + Chr(34) + "Index" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLAttribute(IndexNode, " + Chr(34) + "ID" + Chr(34) + ", Str(" + *This\ArrayIndexName + "))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLNodeText(IndexNode, StrF(*This\" + *This\Access + ", 12))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(3) + "IndexNode = CreateXMLNode(FieldNode, " + Chr(34) + "Index" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLAttribute(IndexNode, " + Chr(34) + "ID" + Chr(34) + ", Str(" + *This\ArrayIndexName + "))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLNodeText(IndexNode, StrD(*This\" + *This\Access + ", 24))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(3) + "IndexNode = CreateXMLNode(FieldNode, " + Chr(34) + "Index" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLAttribute(IndexNode, " + Chr(34) + "ID" + Chr(34) + ", Str(" + *This\ArrayIndexName + "))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLNodeText(IndexNode, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction + *Comments\Tabulation(3) + "IndexNode = CreateXMLNode(FieldNode, " + Chr(34) + "Index" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLAttribute(IndexNode, " + Chr(34) + "ID" + Chr(34) + ", Str(" + *This\ArrayIndexName + "))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "*This\" + *This\Access + "\XML_SetNode(IndexNode)" + *Comments\LineFeed()   
        Instruction + *Comments\Tabulation(3) + "; *This\" + *This\Access + "\XML_SetAttribute(IndexNode, " + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed() 
        Instruction + *Comments\Tabulation(3) + "; *This\" + *This\Access + "\XML_AddAttribute(IndexNode)" + *Comments\LineFeed() 
        
    EndSelect
    
    Instruction + *Comments\Tabulation(2) + "Next" + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateXMLGetNodeInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    Instruction.s = *Comments\Tabulation(5) + "Case " + Chr(34) + *This\Name + Chr(34) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(6) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(7) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(7) + "IndexNode = ChildXMLNode(FieldNode, " + *This\ArrayIndexName + " + 1)" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(7) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(7) + "If GetXMLNodeName(IndexNode) = " + Chr(34) + "Index" +Chr(34) + " And Val(GetXMLAttribute(IndexNode, "+ Chr(34) + "ID" + Chr(34) + ")) = " + *This\ArrayIndexName + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE To #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(8) + "*This\" + *This\Access + " = Val(GetXMLNodeText(IndexNode))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(8) + "*This\" + *This\Access + " = ValF(GetXMLNodeText(IndexNode))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(8) + "*This\" + *This\Access + " = ValD(GetXMLNodeText(IndexNode))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(8) + "*This\" + *This\Access + " = GetXMLNodeText(IndexNode)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT
        Instruction + *Comments\Tabulation(8) + "*This\" + *This\Access + "\XML_GetNode(IndexNode)" + *Comments\LineFeed()   
        Instruction + *Comments\Tabulation(8) + "; *This\" + *This\Access + "\XML_GetAttribute(ChildXMLNode(IndexNode), "  + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed() 
        Instruction + *Comments\Tabulation(8) + "; *This\" + *This\Access + "\XML_CollectAttribute(IndexNode)" + *Comments\LineFeed() 
        
    EndSelect
    
    Instruction + *Comments\Tabulation(7) + "EndIf" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(7) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(6) + "Next" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(6) + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  
  Procedure.s GenerateJSONInsertInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i)
    
    Instruction.s = *Comments\Tabulation(TabSize) + *This\Name + "Table.i = SetJSONArray(AddJSONMember(Object, " + Chr(34) +  *This\Name + Chr(34) + "))" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE To #MEMBER_TYPE_LONG 
        Instruction + *Comments\Tabulation(TabSize + 1) + "SetJSONInteger(AddJSONElement(" + *This\Name + "Table), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(TabSize + 1) + "SetJSONQuad(AddJSONElement(" + *This\Name + "Table), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(TabSize + 1) + "SetJSONFloat(AddJSONElement(" + *This\Name + "Table), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(TabSize + 1) + "SetJSONDouble(AddJSONElement(" + *This\Name + "Table), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(TabSize + 1) + "SetJSONString(AddJSONElement(" + *This\Name + "Table), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\JSON_Insert(AddJSONElement(" + *This\Name + "Table))" + *Comments\LineFeed() 
        
    EndSelect
    
    Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateJSONExtractInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i)
    
    Instruction.s = *Comments\Tabulation(TabSize) + "Case " + Chr(34) + *This\Name + Chr(34) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize + 1) + *This\Name + "Table.i = GetJSONMember(JSONValue, " + Chr(34) +  *This\Name + Chr(34)  + ")" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
    
    Instruction + *Comments\Tabulation(TabSize + 1) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE To #MEMBER_TYPE_LONG
        Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = GetJSONInteger(GetJSONElement(" + *This\Name + "Table, " + *This\ArrayIndexName + "))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = GetJSONQuad(GetJSONElement(" + *This\Name + "Table, " + *This\ArrayIndexName + "))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = GetJSONFloat(GetJSONElement(" + *This\Name + "Table, " + *This\ArrayIndexName + "))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = GetJSONDouble(GetJSONElement(" + *This\Name + "Table, " + *This\ArrayIndexName + "))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = GetJSONString(GetJSONElement(" + *This\Name + "Table, " + *This\ArrayIndexName + "))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + "\JSON_Extract(GetJSONElement(" + *This\Name + "Table, " + *This\ArrayIndexName + "))" + *Comments\LineFeed() 
        
    EndSelect
    
    Instruction + *Comments\Tabulation(TabSize + 1) + "Next" + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  
  Procedure.s GenerateAddGroupPrefsInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s)
    
    Instruction.s = *Comments\Tabulation(TabSize) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyByte(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyByte(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_ASCII
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyAscii(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyAscii(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_UNICODE
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyUnicode(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyUnicode(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_CHARACTER
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyCharacter(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyCharacter(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_INTEGER
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyInteger(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyInteger(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_WORD
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyWord(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyWord(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_LONG
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyLong(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyLong(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_QUAD
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyQuad(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyQuad(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_FLOAT
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyFloat(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyFloat(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_DOUBLE
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyDouble(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyDouble(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyString(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyString(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_OBJECT 
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\AddPrefsGroup(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), " + Pointer + "CustomPrefs)" + *Comments\LineFeed()   
        EndIf
        
    EndSelect
    
    Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()

    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateExtractGroupPrefsInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s)
    
    If *This\Type < #MEMBER_TYPE_OBJECT
      
      If Mode = 0
        
        Instruction.s = *Comments\Tabulation(TabSize) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "If " + Pointer + "CustomPrefs\IsKey(GroupName, " +Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "))" + *Comments\LineFeed()
        
        Select *This\Type
            
          Case #MEMBER_TYPE_BYTE
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueByte(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_ASCII
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueAscii(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_UNICODE
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueUnicode(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_CHARACTER
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueCharacter(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_INTEGER
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueInteger(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_WORD
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueWord(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_LONG
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueLong(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_QUAD
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueQuad(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_FLOAT
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueFloat(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_DOUBLE
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueDouble(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueString(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
        EndSelect
        
        Instruction + *Comments\Tabulation(TabSize + 1) + "EndIf" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()
        
      Else
        
        Instruction = *Comments\Tabulation(TabSize + 0) + "If " + Pointer + "CustomPrefs\IsGroup(" + Chr(34) + "Orphan" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 2) + "If " + Pointer + "CustomPrefs\IsKey(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "))" + *Comments\LineFeed()
        
        Select *This\Type
            
          Case #MEMBER_TYPE_BYTE
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueByte(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_ASCII
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueAscii(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_UNICODE
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueUnicode(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_CHARACTER
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueCharacter(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_INTEGER
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueInteger(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_WORD
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueWord(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_LONG
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueLong(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_QUAD
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueQuad(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_FLOAT
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueFloat(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_DOUBLE
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueDouble(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueString(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
        EndSelect
        
        Instruction + *Comments\Tabulation(TabSize + 2) + "EndIf" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "Next" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 0) + "EndIf" + *Comments\LineFeed()
        
      EndIf
      
    ElseIf *This\Type = #MEMBER_TYPE_OBJECT 
      
      If Mode = 0
        Instruction.s = *Comments\Tabulation(TabSize) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
        Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()
      Else
        Instruction.s = *Comments\Tabulation(TabSize) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\ExtractPrefsGroup(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), " + Pointer + "CustomPrefs)" + *Comments\LineFeed()   
        Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()
      EndIf
      
    EndIf
 
    ProcedureReturn Instruction
  EndProcedure

  Procedure.s GenerateRefreshGroupPrefsInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s)
    
    If *This\Type < #MEMBER_TYPE_OBJECT
      
      If Mode = 0
        
        Instruction.s = *Comments\Tabulation(TabSize) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "If " + Pointer + "CustomPrefs\IsKey(GroupName, " +Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "))" + *Comments\LineFeed()
        
        Select *This\Type
            
          Case #MEMBER_TYPE_BYTE
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueByte(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_ASCII
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueAscii(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_UNICODE
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueUnicode(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_CHARACTER
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueCharacter(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_INTEGER
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueInteger(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_WORD
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueWord(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_LONG
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueLong(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_QUAD
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueQuad(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_FLOAT
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueFloat(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_DOUBLE
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueDouble(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueString(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
        EndSelect
        
        Instruction + *Comments\Tabulation(TabSize + 1) + "EndIf" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()
        
      Else
        
        Instruction = *Comments\Tabulation(TabSize + 0) + "If " + Pointer + "CustomPrefs\IsGroup(" + Chr(34) + "Orphan" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 2) + "If " + Pointer + "CustomPrefs\IsKey(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "))" + *Comments\LineFeed()
        
        Select *This\Type
            
          Case #MEMBER_TYPE_BYTE
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueByte(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_ASCII
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueAscii(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_UNICODE
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueUnicode(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_CHARACTER
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueCharacter(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_INTEGER
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueInteger(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_WORD
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueWord(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_LONG
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueLong(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_QUAD
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueQuad(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_FLOAT
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueFloat(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_DOUBLE
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueDouble(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueString(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
        EndSelect
        
        Instruction + *Comments\Tabulation(TabSize + 2) + "EndIf" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "Next" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 0) + "EndIf" + *Comments\LineFeed()
        
      EndIf
      
    ElseIf *This\Type = #MEMBER_TYPE_OBJECT 
      
      If Mode = 0
        Instruction.s = *Comments\Tabulation(TabSize) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
        Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()
      Else
        Instruction.s = *Comments\Tabulation(TabSize) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\ExtractPrefsGroup(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\ArrayIndexName + "), " + Pointer + "CustomPrefs)" + *Comments\LineFeed()   
        Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()
      EndIf
      
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure

  Procedure.s GenerateConstructorInstruction(*This.Private_Members, *Comments.Comments::Comments, *SeparatorNeeded.Integer)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      
      Instruction.s = *Comments\Tabulation(2) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(3) + "*This\" + *This\Access + " = " + StringField(*This\TypeShort, 1, ":") + "::New()"  + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(2) + "Next" + *Comments\LineFeed()
      
      If *SeparatorNeeded <> #Null
        *SeparatorNeeded\i = #True
      EndIf
      
    Else
      
      If *SeparatorNeeded <> #Null
        *SeparatorNeeded\i = #False
      EndIf
      
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure

  Procedure.s GenerateDestructorInstruction(*This.Private_Members, *Comments.Comments::Comments, *SeparatorNeeded.Integer)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      
      Instruction.s = *Comments\Tabulation(2) + "For " + *This\ArrayIndexName + " = 0 To " + *This\ArraySizeLoop + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(3) + "If *This\" + *This\Access + " <> #Null" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(4) + "*This\" + *This\Access + "\Free()" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(3) + "EndIf" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(2) + "Next" + *Comments\LineFeed()
      
      If *SeparatorNeeded <> #Null
        *SeparatorNeeded\i = #True
      EndIf
      
    Else
      
      If *SeparatorNeeded <> #Null
        *SeparatorNeeded\i = #False
      EndIf
      
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure Free(*This.Private_Members)

    FreeStructure(*This)

  EndProcedure
  
  Procedure.s Private_ExtractBracket(*This.Private_Members, Description.s, Flag.i = 0)
    
    BracketPart.s = *This\BetweenBrackets\Extract(Description)
    
    If Flag = 0
      BracketPart = "[" + BracketPart + "]"
    EndIf
    
    ProcedureReturn BracketPart
  EndProcedure
  
  Procedure.s Private_CamelCase_To_UpperCase(Input.s)
    
    CharMax = Len("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    
    For CharID = 1 To CharMax
      
      Position = FindString(Input, Mid("ABCDEFGHIJKLMNOPQRSTUVWXYZ", CharID, 1))
      
      If Position > 1
        Input = InsertString(Input, "_", Position)
      EndIf
      
    Next
    
    ProcedureReturn UCase(Input)
  EndProcedure
  
  Procedure.i New(Description.s, *StringUtilities.StringUtilities::StringUtilities, *DynamicObject.Integer, *FastCopy.Integer)

    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\Description = Description
    
    *FoolProofer.FoolProofer::FoolProofer = *StringUtilities\GetFoolProofer()
    
    NameDotType.s = *FoolProofer\GetStaticArrayNameDotType(*This\Description)
    BracketPart.s = *FoolProofer\GetStaticArrayBracketPart(*This\Description)
    
    If FindString(NameDotType, ".") = 0
      
      *This\Name = NameDotType
      
      If Left(*This\Name, 1) = "*"
        *This\Name = Right(*This\Name, Len(*This\Name)-1)
        Type_Pointer_C = #True
        *This\TypeShort = ""
        *This\ArrayIndexName = *This\Name + "ID"
        *This\Access = *This\Name + "[" + *This\ArrayIndexName + "]"
      EndIf
      
      If Right(*This\Name, 1) = "$"
        *This\Name = Left(*This\Name, Len(*This\Name)-1)
        *This\TypeShort = "$"
        *This\ArrayIndexName = *This\Name + "ID"
        *This\Access = *This\Name + "$[" + *This\ArrayIndexName + "]"
      EndIf
      
    Else
      
      *This\Name = StringField(NameDotType, 1, ".")
      
      If Left(*This\Name, 1) = "*"
        *This\Name = Right(*This\Name, Len(*This\Name)-1)
        Type_Pointer_C = #True
      EndIf
      
      *This\ArrayIndexName = *This\Name + "ID"
      *This\Access = *This\Name + "[" + *This\ArrayIndexName + "]"
      *This\TypeShort = StringField(NameDotType, 2, ".")
      
    EndIf
    
    *BetweenBrackets.StringBetween::StringBetween = *StringUtilities\GetBetweenBrackets()
    
    If FindString(BracketPart, "#", 1)
      
      *This\ArraySizeCte = "#" + Private_CamelCase_To_UpperCase(*This\Name) + "_MAX"
      *This\ArraySizeLoop = *This\ArraySizeCte + " - 1"
      
      If FindString(BracketPart, "=", 1)
        Size.s = StringField(*BetweenBrackets\Extract(BracketPart), 2, "=")
        *This\ArraySizeDeclare = *This\ArraySizeCte + " = " + Size
        *This\ArraySize = Val(Size)
      Else
        *This\ArraySizeDeclare = *This\ArraySizeCte + " = 5"
        *This\ArraySize = 5
      EndIf
      
    Else 
      
      Size.s = *BetweenBrackets\Extract(BracketPart)
      *This\ArraySizeCte = Size
      *This\ArraySize = Val(Size)
      *This\ArraySizeLoop = Str(*This\ArraySize - 1)
      
    EndIf
    
    *FastCopy\i = #True
    
    Select *This\TypeShort
        
      Case "a"
        *This\ZeroOut = "0"
        *This\Type = #MEMBER_TYPE_ASCII
        *This\TypeLong = ".a" 
        
      Case "b"
        *This\ZeroOut = "0"
        *This\Type = #MEMBER_TYPE_BYTE
        *This\TypeLong = ".b"
        
      Case "c"
        *This\ZeroOut = "0"
        *This\Type = #MEMBER_TYPE_CHARACTER
        *This\TypeLong = ".c"
        
      Case "w"
        *This\ZeroOut = "0"
        *This\Type = #MEMBER_TYPE_WORD
        *This\TypeLong = ".w"
        
      Case "u"
        *This\ZeroOut = "0" 
        *This\Type = #MEMBER_TYPE_UNICODE
        *This\TypeLong = ".u"
        
      Case "l"
        *This\ZeroOut = "0"
        *This\Type = #MEMBER_TYPE_LONG
        *This\TypeLong = ".l"
        
      Case "q"
        *This\ZeroOut = "0"
        *This\Type = #MEMBER_TYPE_QUAD
        *This\TypeLong = ".q"
        
      Case "i"
        *This\ZeroOut = "0"
        *This\Type = #MEMBER_TYPE_INTEGER
        *This\TypeLong = ".i"
        
      Case "f" 
        *This\ZeroOut = "0.0"
        *This\Type = #MEMBER_TYPE_FLOAT
        *This\TypeLong = ".f"
        
      Case "d"
        *This\ZeroOut = "0.0"
        *This\Type = #MEMBER_TYPE_DOUBLE
        *This\TypeLong = ".d"
        
      Case "s"
        *This\ZeroOut = Chr(34) + Chr(34)
        *This\Type = #MEMBER_TYPE_STRING01
        *This\TypeLong = ".s"
        *DynamicObject\i = #True
        
      Case "$"
        *This\ZeroOut = Chr(34) + Chr(34)
        *This\Type = #MEMBER_TYPE_STRING02
        *This\TypeLong = "$"
        *DynamicObject\i = #True
        
      Default 
        
        *This\ZeroOut = "#Null"
        
        If Type_Pointer_C = #True
          
          If *This\TypeShort = ""
            *This\Type = #MEMBER_TYPE_POINTER_C
            *This\TypeLong = ""
          Else
            *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
            *This\TypeLong = "." + *This\TypeShort
          EndIf
          
        Else  
          
          *This\Type = #MEMBER_TYPE_OBJECT
          *DynamicObject\i = #True
          *FastCopy\i = #False
          
          *This\TypeLong = "." + *This\TypeShort
          
        EndIf
        
    EndSelect
    
    ProcedureReturn *This
  EndProcedure

  DataSection
    START_METHODS:
    Data.i @GetDescription()
    Data.i @GetDescriptionEx()
    Data.i @GetName()
    Data.i @GetAccess()
    Data.i @GetType()
    Data.i @GetTypeShort()
    Data.i @GetTypeLong()
    Data.i @GetZeroOut()
    Data.i @GetArraySize()
    Data.i @GetArraySizeCte()
    Data.i @GetArraySizeLoop()
    Data.i @GetArraySizeDeclare()
    Data.i @GetArrayIndexName()
    Data.i @GenerateDeclareGetter()
    Data.i @GenerateDefineGetter()
    Data.i @GenerateDeclareSetter()
    Data.i @GenerateDefineSetter()
    Data.i @GenerateResetInstruction()
    Data.i @GenerateClearInstruction()
    Data.i @GenerateCopyInstruction()
    Data.i @GenerateCompareInstruction()
    Data.i @GenerateSwappingInstruction()
    Data.i @GenerateDeclareQuickSortAscendant()
    Data.i @GenerateDefineQuickSortAscendant()
    Data.i @GenerateDeclareQuickSortDescendant()
    Data.i @GenerateDefineQuickSortDescendant()
    Data.i @GenerateDeclareLinearSearch()
    Data.i @GenerateDefineLinearSearch() 
    Data.i @GenerateDeclareBinarySearch()
    Data.i @GenerateDefineBinarySearch()
    Data.i @GenerateDeclareFixedLenghtQueue()
    Data.i @GenerateDefineFixedLenghtQueue()
    Data.i @GenerateReadBinaryInstruction()
    Data.i @GenerateWriteBinaryInstruction()
    Data.i @GenerateReadEncodedCryptedInstruction()
    Data.i @GenerateWriteEncodedCryptedInstruction()
    Data.i @GenerateReadPrefsInstruction()
    Data.i @GenerateWritePrefsInstruction()
    Data.i @GenerateXMLSetNodeInstruction()
    Data.i @GenerateXMLGetNodeInstruction()
    
    Data.i @GenerateJSONInsertInstruction()
    Data.i @GenerateJSONExtractInstruction()
    
    Data.i @GenerateAddGroupPrefsInstruction()
    Data.i @GenerateExtractGroupPrefsInstruction()
    Data.i @GenerateRefreshGroupPrefsInstruction()
    
    Data.i @GenerateConstructorInstruction()
    Data.i @GenerateDestructorInstruction()
    Data.i @Free()
    END_METHODS:
  EndDataSection

EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.002 secondes (142500.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = -pAPM9A1A0
; EnableXP
; CompileSourceDirectory