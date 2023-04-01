; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.0.1
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - DynamicArray.pb
; Version du fichier : 1.1.9
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 11-04-2019
; Mise à jour : 31-10-2022
; Codé pour PureBasic : V6.00 Beta 7
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule DynamicArray

  Interface DynamicArray

    GetDescription.s()
    GetName.s()
    GetAccess.s()
    GetAccessEmpty.s()
    GetAccessMax.s()
    GetType.i()
    GetTypeShort.s()
    GetTypeLong.s()
    GetZeroOut.s()
    GetDimensionCount.b()
    GetDimensionIndexName.s(DimensionIndexNameID.l)
    GetDimensionIndexMaxName.s(DimensionIndexMaxNameID.l)
    GetDimensionDeclare.s()
    GetIndexList.s()
    GenerateDeclareGetter.s(Mode.i, *Rules.Rules::Rules)
    GenerateDefineGetter.s(*Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateDeclareSetter.s(Mode.i, *Rules.Rules::Rules)
    GenerateDefineSetter.s(*Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateResetInstruction.s(*Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateClearInstruction.s(*Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateCopyInstruction.s(*Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateCompareInstruction.s(*Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateSwappingInstruction.s(*Comments.Comments::Comments)
    GenerateDeclareSort.s(Mode.i)
    GenerateDefineSort.s(*Comments.Comments::Comments)
    GenerateDeclareLinearSearch.s(Mode.i, *Rules.Rules::Rules)
    GenerateDefineLinearSearch.s(*Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateDeclareBinarySearch.s(Mode.i, *Rules.Rules::Rules)
    GenerateDefineBinarySearch.s(*Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateDeclareRandomize.s(Mode.i)
    GenerateDefineRandomize.s(*Comments.Comments::Comments)
    GenerateDeclareReDim.s(Mode.i, *Rules.Rules::Rules)
    GenerateDefineReDim.s(*Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateDeclareSize.s(Mode.i, *Rules.Rules::Rules)
    GenerateDefineSize.s(*Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateReadBinaryInstruction.s(*Comments.Comments::Comments, TabSize.i, *Rules.Rules::Rules)
    GenerateWriteBinaryInstruction.s(*Comments.Comments::Comments, TabSize.i, *Rules.Rules::Rules)
    GenerateReadEncodedCryptedInstruction.s(*Comments.Comments::Comments, TabSize.i, Pointer.s, *CustomFileLib.CustomFileLib::CustomFileLib, *Rules.Rules::Rules)
    GenerateWriteEncodedCryptedInstruction.s(*Comments.Comments::Comments, TabSize.i, Pointer.s, *CustomFileLib.CustomFileLib::CustomFileLib, *Rules.Rules::Rules)
    GenerateReadPrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i, *Rules.Rules::Rules)
    GenerateWritePrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i, *Rules.Rules::Rules)
    GenerateXMLSetNodeInstruction.s(*Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateXMLGetNodeInstruction.s(*Comments.Comments::Comments, *Rules.Rules::Rules)
    
    GenerateJSONInsertInstruction.s(*Comments.Comments::Comments, TabSize.i, *Rules.Rules::Rules)
    GenerateJSONExtractInstruction.s(*Comments.Comments::Comments, TabSize.i, *Rules.Rules::Rules)
    
    GenerateAddGroupPrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s, *Rules.Rules::Rules)
    GenerateExtractGroupPrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s, *Rules.Rules::Rules)
    GenerateRefreshGroupPrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s, *Rules.Rules::Rules)
    
    GenerateConstructorInstruction.s(*Comments.Comments::Comments, *SeparatorNeeded.Integer, *Rules.Rules::Rules)
    GenerateDestructorInstruction.s(*Comments.Comments::Comments, *SeparatorNeeded.Integer, *Rules.Rules::Rules)
    Free()
    
  EndInterface

  Declare.i New(Description.s, *StringUtilities.StringUtilities::StringUtilities, *FastCopy.Integer)

EndDeclareModule

Module DynamicArray
  
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
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members

    VirtualTable.i
    Description.s
    Name.s
    Access.s
    AccessEmpty.s
    AccessMax.s
    Type.i
    TypeShort.s
    TypeLong.s
    ZeroOut.s
    DimensionCount.b
    DimensionIndexName.s[10]
    DimensionIndexMaxName.s[10]
    DimensionDeclare.s
    IndexList.s
    
    
  EndStructure
  
;   Procedure.s ExtractBracket(*This.Private_Members, Description.s, Flag.i = 0)
;     
;     ;If FindString(Description, OpenBracket, 1)
;     
;     BracketPart.s = *This\BetweenBracket\Extract(Description)
;     
;     If Flag = 0
;       BracketPart = "(" + BracketPart + ")"
;     EndIf
;     
;     ;EndIf
;     
;     ProcedureReturn BracketPart
;   EndProcedure
;   
;   Procedure DynamicArrayDimensionsExtraction(*This.Private_Members, ArrayDefinition.s)
;     
;     DimensionPart.s = ExtractBracket(*This, ArrayDefinition, 1)
;     
;     *This\DimensionDeclare = "(" + DimensionPart + ")"
;     *This\DimensionCount = CountString(DimensionPart, ",") + 1
;     
;     For Index = *This\DimensionCount To 1 Step -1  
;       *This\DimensionIndexName[Index-1] = *This\Name + "_ID_" + Str(Index)
;     Next
;     
;     For Index = 1 To *This\DimensionCount
;       *This\DimensionIndexMaxName[Index-1] = *This\Name + "_Max_" + Str(Index) + "D"
;     Next
;     
;   EndProcedure
  
  Procedure.s BuiltDynamicArrayIndexList(*This.Private_Members, Mode.i)
    
    If *This\DimensionCount <> 0
      
      Select Mode
          
        Case 0, 1, 2
          
          For Index = 0 To *This\DimensionCount - 1
            ParamList.s = ParamList + ", " + *This\DimensionIndexName[Index]          
          Next 
          
          If Mode = 1 Or Mode = 2
            ParamList = Right(ParamList, Len(ParamList) - 2)       
          EndIf 
          
          If Mode = 2
            ParamList = "(" + ParamList + ")"
          EndIf
          
        Case 3
          
          For Index = 1 To *This\DimensionCount
            
            ParamList = ParamList + *This\Name + "_Max_" + Str(Index) + "D"
            
            If Index < *This\DimensionCount
              ParamList + ", "
            EndIf
            
          Next
          
        Case 4
          
          For Index = 0 To *This\DimensionCount - 1
            ParamList.s = ParamList + ", " + *This\DimensionIndexName[Index] + ".l"       
          Next 
          
          ParamList = Right(ParamList, Len(ParamList) - 2) 
          
        Case 6
          
          For Index = 1 To *This\DimensionCount
            
            ParamList = ParamList + " + Str(" + *This\DimensionIndexName[Index-1]  + ")"
            
            If Index < *This\DimensionCount
              ParamList = ParamList + " + " + Chr(34) + "_" + Chr(34)
            EndIf 
            
          Next 
          
      EndSelect
      
    EndIf
    
    ProcedureReturn ParamList
  EndProcedure 
  
  Procedure.s DynamicArraySize(*This.Private_Members, Dimension.s = "DimensionID")

    ProcedureReturn "ArraySize(*This\" + *This\AccessEmpty + ", " + Dimension + ")"
  EndProcedure
  
  Procedure.s GetDynamicArrayOpeningLoop(*This.Private_Members, *PtrTabSize.Integer, *Comments.Comments::Comments, TypeShort.s, LoopStart.s = "0", LoopEnd.s = "")
    
    TabSize.i = *PtrTabSize\i
    
    Buffer.s = ""
    
    For Index = *This\DimensionCount To 1 Step -1 
      
      If Index = *This\DimensionCount
        
        If LoopEnd = ""
          Buffer + *Comments\Tabulation(TabSize) + "For " + *This\DimensionIndexName[Index - 1] + TypeShort + " = " + LoopStart + " To " + DynamicArraySize(*This, Str(Index)) + *Comments\LineFeed()
        Else 
          Buffer + *Comments\Tabulation(TabSize) + "For " + *This\DimensionIndexName[Index - 1] + TypeShort + " = " + LoopStart + " To " + LoopEnd + *Comments\LineFeed()
        EndIf
        
      Else
        Buffer + *Comments\Tabulation(TabSize) + "For " + *This\DimensionIndexName[Index - 1] + TypeShort + " = 0 To " + DynamicArraySize(*This, Str(Index)) + *Comments\LineFeed()
      EndIf
      
      If Index > 1
        TabSize + 1
      EndIf 
      
    Next 
    
    *PtrTabSize\i = TabSize
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GetDynamicArrayClosingLoop(*This.Private_Members, *PtrTabSize.Integer, *Comments.Comments::Comments)
    
    TabSize.i = *PtrTabSize\i
    Buffer.s = ""

    For Index = *This\DimensionCount To 1 Step -1 
      
      Buffer + *Comments\Tabulation(TabSize) + "Next"
      
      If Index > 1
        TabSize = TabSize - 1
        Buffer + *Comments\LineFeed()
      EndIf 
      
    Next 
    
    *PtrTabSize\i = TabSize
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GetFixedDimension(*This.Private_Members)
    
    If *This\DimensionCount >= 2
      
      FixedDim.s = RemoveString(RemoveString(*This\DimensionDeclare, "("), ")")
      
      For DimensionID = 1 To *This\DimensionCount - 1
        Output.s + Trim(StringField(FixedDim, DimensionID, ",")) + ", "
      Next
     
    EndIf
    
    ProcedureReturn Output
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure.s BuiltPrefsKey(*This.Private_Members)
    
    For Index = 0 To *This\DimensionCount - 1
      
      DimPart.s + " + Str(" + *This\DimensionIndexName[Index] + ")"
      
      If Index < *This\DimensionCount - 1
        DimPart + " + " + Chr(34) + "_" + Chr(34)
      EndIf
      
    Next
    
    ProcedureReturn Chr(34) + *This\Name + "_" + Chr(34) + DimPart
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<

  Procedure.s GetDescription(*This.Private_Members)

    ProcedureReturn *This\Description
  EndProcedure

  Procedure.s GetName(*This.Private_Members)

    ProcedureReturn *This\Name
  EndProcedure

  Procedure.s GetAccess(*This.Private_Members)

    ProcedureReturn *This\Access
  EndProcedure

  Procedure.s GetAccessEmpty(*This.Private_Members)

    ProcedureReturn *This\AccessEmpty
  EndProcedure

  Procedure.s GetAccessMax(*This.Private_Members)

    ProcedureReturn *This\AccessMax
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

  Procedure.b GetDimensionCount(*This.Private_Members)

    ProcedureReturn *This\DimensionCount
  EndProcedure

  Procedure.s GetDimensionIndexName(*This.Private_Members, DimensionIndexNameID.l)

    ProcedureReturn *This\DimensionIndexName[DimensionIndexNameID]
  EndProcedure

  Procedure.s GetDimensionIndexMaxName(*This.Private_Members, DimensionIndexMaxNameID.l)

    ProcedureReturn *This\DimensionIndexMaxName[DimensionIndexMaxNameID]
  EndProcedure

  Procedure.s GetDimensionDeclare(*This.Private_Members)

    ProcedureReturn *This\DimensionDeclare
  EndProcedure

  Procedure.s GetIndexList(*This.Private_Members)

    ProcedureReturn *This\IndexList
  EndProcedure

  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure.s GenerateDeclareGetter(*This.Private_Members, Mode.i, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        IndexList.s = *This\IndexList
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        IndexList.s = ReplaceString(*This\IndexList, ".l", ".i")
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        IndexList.s = ReplaceString(*This\IndexList, ".l", ".q")
        
    EndSelect
    
    Select Mode
        
      Case 0
        If *This\Type = #MEMBER_TYPE_OBJECT Or *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
          Buffer.s = "Get" + *This\Name + ".i(" + IndexList + ")"
        Else
          Buffer.s = "Get" + *This\Name + *This\TypeLong + "(" + IndexList + ")"
        EndIf
        
      Case 1
        Buffer.s = "Data.i @Get" + *This\Name + "()"
        
    EndSelect
       
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineGetter(*This.Private_Members, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        IndexList.s = *This\IndexList
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        IndexList.s = ReplaceString(*This\IndexList, ".l", ".i")
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        IndexList.s = ReplaceString(*This\IndexList, ".l", ".q")
        
    EndSelect
    
    If *This\Type = #MEMBER_TYPE_OBJECT Or *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
      Buffer.s = *Comments\Tabulation(1) + "Procedure.i Get" + *This\Name + "(*This.Private_Members, " + IndexList + ")"  + *Comments\LineFeed()
    Else
      Buffer.s = *Comments\Tabulation(1) + "Procedure" + *This\TypeLong + " Get" + *This\Name + "(*This.Private_Members, " + IndexList + ")" + *Comments\LineFeed()
    EndIf
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ProcedureReturn *This\" + *This\Access + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeclareSetter(*This.Private_Members, Mode.i, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        IndexList.s = *This\IndexList
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        IndexList.s = ReplaceString(*This\IndexList, ".l", ".i")
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        IndexList.s = ReplaceString(*This\IndexList, ".l", ".q")
        
    EndSelect
    
    Select Mode
        
      Case 0
        If *This\Type = #MEMBER_TYPE_OBJECT Or *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
          Buffer.s = "Set" + *This\Name + "(" + IndexList + ", *" + *This\Name + *This\TypeLong + ")"
        Else
          Buffer.s = "Set" + *This\Name + "(" + IndexList + ", " + *This\Name + *This\TypeLong + ")"
        EndIf
        
      Case 1
        Buffer.s = "Data.i @Set" + *This\Name + "()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineSetter(*This.Private_Members, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        IndexList.s = *This\IndexList
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        IndexList.s = ReplaceString(*This\IndexList, ".l", ".i")
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        IndexList.s = ReplaceString(*This\IndexList, ".l", ".q")
        
    EndSelect
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Buffer.s = *Comments\Tabulation(1) + "Procedure Set" + *This\Name + "(*This.Private_Members, " + IndexList + ", *" + *This\Name + *This\TypeLong + ")"  + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "If *This\" + *This\Access + " <> #Null" + *Comments\LineFeed() 
      Buffer + *Comments\Tabulation(3) + "*This\" + *This\Access + "\Free()" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed() 
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "*This\" + *This\Access + " = *" + *This\Name + *Comments\LineFeed()
    ElseIf *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
      Buffer.s = *Comments\Tabulation(1) + "Procedure Set" + *This\Name + "(*This.Private_Members, " + IndexList + ", *" + *This\Name + *This\TypeLong + ")"  + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "*This\" + *This\Access + " = *" + *This\Name + *Comments\LineFeed()
    ElseIf *This\Type = #MEMBER_TYPE_STRING02  
      Buffer.s = *Comments\Tabulation(1) + "Procedure Set" + *This\Name + "(*This.Private_Members, " + IndexList + ", " + *This\Name + *This\TypeLong + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "*This\" + *This\Access + " = " + *This\Name + *This\TypeLong + *Comments\LineFeed()
    Else
      Buffer.s = *Comments\Tabulation(1) + "Procedure Set" + *This\Name + "(*This.Private_Members, " + IndexList + ", " + *This\Name + *This\TypeLong + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "*This\" + *This\Access + " = " + *This\Name + *Comments\LineFeed()
    EndIf
   
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateResetInstruction(*This.Private_Members, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeShort.s = ".q"
        
    EndSelect
    
    TabSize.i = 2
    Instruction.s = GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)
    
    If *This\Type < #MEMBER_TYPE_OBJECT
      Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + *This\ZeroOut + *Comments\LineFeed()
    ElseIf *This\Type = #MEMBER_TYPE_OBJECT
      Instruction + *Comments\Tabulation(TabSize + 1) + "If *This\" + *This\Access + " <> #Null" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + "\Reset()" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(TabSize + 1) + "EndIf" + *Comments\LineFeed()
    ElseIf *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
      Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + *This\ZeroOut + *Comments\LineFeed()
    EndIf
    
    Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateClearInstruction(*This.Private_Members, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeShort.s = ".q"
        
    EndSelect
    
    TabSize.i = 2
    Instruction.s = GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)
    
    If *This\Type < #MEMBER_TYPE_OBJECT
     Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + *This\ZeroOut + *Comments\LineFeed()
    ElseIf *This\Type = #MEMBER_TYPE_OBJECT
      Instruction + *Comments\Tabulation(TabSize + 1) + "If *This\" + *This\Access + " <> #Null" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + "\Clear()" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(TabSize + 1) + "EndIf" + *Comments\LineFeed()
    ElseIf *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
      Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + *This\ZeroOut + *Comments\LineFeed()
    EndIf
    
    Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateCopyInstruction(*This.Private_Members, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeShort.s = ".q"
        
    EndSelect
    
    TabSize.i = 2
    
    If *This\Type = #MEMBER_TYPE_OBJECT 

      Select *This\DimensionCount
          
        Case 1
          Instruction.s = *Comments\Tabulation(TabSize) + "ReDim *Copy\" + *This\Name + "(ArraySize(*This\" + *This\AccessEmpty + ", 1))"+ *Comments\LineFeed()
          
        Case 2
          Instruction.s = *Comments\Tabulation(TabSize) + "ReDim *Copy\" + *This\Name + "(ArraySize(*This\" + *This\AccessEmpty + ", 1), ArraySize(*This\" + *This\AccessEmpty + ", 2))"+ *Comments\LineFeed()
          
        Case 3
          Instruction.s = *Comments\Tabulation(TabSize) + "ReDim *Copy\" + *This\Name + "(ArraySize(*This\" + *This\AccessEmpty + ", 1), ArraySize(*This\" + *This\AccessEmpty + ", 2), ArraySize(*This\" + *This\AccessEmpty + ", 3))"+ *Comments\LineFeed()
          
        Case 4
          Instruction.s = *Comments\Tabulation(TabSize) + "ReDim *Copy\" + *This\Name + "(ArraySize(*This\" + *This\AccessEmpty + ", 1), ArraySize(*This\" + *This\AccessEmpty + ", 2), ArraySize(*This\" + *This\AccessEmpty + ", 3), ArraySize(*This\" + *This\AccessEmpty + ", 4))"+ *Comments\LineFeed()
          
        Case 5
          Instruction.s = *Comments\Tabulation(TabSize) + "ReDim *Copy\" + *This\Name + "(ArraySize(*This\" + *This\AccessEmpty + ", 1), ArraySize(*This\" + *This\AccessEmpty + ", 2), ArraySize(*This\" + *This\AccessEmpty + ", 3), ArraySize(*This\" + *This\AccessEmpty + ", 4), , ArraySize(*This\" + *This\AccessEmpty + ", 5))"+ *Comments\LineFeed()
          
        Default 
          Instruction.s = *Comments\Tabulation(2) + "; NOT SUPPORTED YET !" + *Comments\LineFeed() 
          
      EndSelect
      
      Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()  
      Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort) 
      Instruction + *Comments\Tabulation(TabSize+1) + "*Copy\" + *This\Access + " = *This\" + *This\Access + "\Copy()" + *Comments\LineFeed()     
      Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
      
    Else
      Instruction = *Comments\Tabulation(TabSize) + "CopyArray(*This\" + *This\AccessEmpty + ", *Copy\" + *This\AccessEmpty + ")" + *Comments\LineFeed()     
    EndIf

    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateCompareInstruction(*This.Private_Members, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeShort.s = ".q"
        
    EndSelect
    
    TabSize.i = 2
    Instruction.s = *Comments\Tabulation(TabSize) + "If ArraySize(*This\" + *This\AccessEmpty + ", " + Str(*This\DimensionCount) + ") <> ArraySize(*Other\" + *This\AccessEmpty + ", " + Str(*This\DimensionCount) + ")" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize+1) + *Comments\LineFeed()  
    Instruction + *Comments\Tabulation(TabSize+1) + "ProcedureReturn #False" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize+1) + *Comments\LineFeed()  
    Instruction + *Comments\Tabulation(TabSize) + "Else" + *Comments\LineFeed()  
    TabSize + 1
    Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()  
    Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)
    
    If *This\Type = #MEMBER_TYPE_OBJECT 
      Instruction + *Comments\Tabulation(TabSize+1) + "If *This\" + *This\Access + "\Compare(*Other\" + *This\Access + ") = #False" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(TabSize+2) + "ProcedureReturn #False" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(TabSize+1) + "EndIf" + *Comments\LineFeed()     
    Else
      Instruction + *Comments\Tabulation(TabSize+1) + "If *This\" + *This\Access + " <> *Other\" + *This\Access + *Comments\LineFeed()     
      Instruction + *Comments\Tabulation(TabSize+2) + "ProcedureReturn #False" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(TabSize+1) + "EndIf" + *Comments\LineFeed()   
    EndIf
    
    Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()  
    TabSize - 1
    Instruction + *Comments\Tabulation(TabSize) + "EndIf" + *Comments\LineFeed() 
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateSwappingInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    Instruction.s = *Comments\Tabulation(2) + "Dim TempThis" + *This\TypeLong + *This\DimensionDeclare + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + "Dim TempOther" + *This\TypeLong + *This\DimensionDeclare + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + *Comments\LineFeed() 
    Instruction + *Comments\Tabulation(2) + "CopyArray(*This\" + *This\AccessEmpty + ", TempThis())" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + "CopyArray(*Other\" + *This\AccessEmpty + ", TempOther())" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + *Comments\LineFeed() 
    Instruction + *Comments\Tabulation(2) + "CopyArray(TempOther(), *This\" + *This\AccessEmpty + ")" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + "CopyArray(TempThis(), *Other\" + *This\AccessEmpty + ")" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + *Comments\LineFeed() 
    Instruction + *Comments\Tabulation(2) + "FreeArray(TempThis())" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + "FreeArray(TempOther())" + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateDeclareSort(*This.Private_Members, Mode.i)
    
    If *This\Type < #MEMBER_TYPE_OBJECT And *This\DimensionCount = 1
      
      Select Mode
          
        Case 0
          Buffer.s = "Sort" + *This\Name + "(Option.i)"
          
        Case 1
          Buffer.s = "Data.i @Sort" + *This\Name + "()"
          
      EndSelect
      
    EndIf
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineSort(*This.Private_Members, *Comments.Comments::Comments)

    If *This\Type < #MEMBER_TYPE_OBJECT And *This\DimensionCount = 1
      
      Buffer.s = *Comments\Tabulation(1) + "Procedure Sort" + *This\Name + "(*This.Private_Members, Option.i)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "SortArray(*This\" + *This\AccessEmpty + ", Option)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
      
    EndIf
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeclareLinearSearch(*This.Private_Members, Mode.i, *Rules.Rules::Rules)
    
    If *This\Type < #MEMBER_TYPE_OBJECT And *This\DimensionCount = 1
      
      Select *Rules\GetDynamicDataSizeType()
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
          TypeShort.s = ".l"
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
          TypeShort.s = ".i"
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
          TypeShort.s = ".q"
          
      EndSelect
      
      Select Mode
          
        Case 0
          Buffer.s = "LinearSearch" + *This\Name + TypeShort + "(" + *This\Name + *This\TypeLong + ")"
          
        Case 1
          Buffer.s = "Data.i @LinearSearch" + *This\Name + "()"
          
      EndSelect
      
    EndIf
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineLinearSearch(*This.Private_Members, *Comments.Comments::Comments, *Rules.Rules::Rules)

    If *This\Type < #MEMBER_TYPE_OBJECT And *This\DimensionCount = 1
      
      Select *Rules\GetDynamicDataSizeType()
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
          TypeShort.s = ".l"
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
          TypeShort.s = ".i"
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
          TypeShort.s = ".q"
          
      EndSelect
      
      Buffer.s = *Comments\Tabulation(1) + "Procedure" + TypeShort + " LinearSearch" + *This\Name + "(*This.Private_Members, " + *This\Name + *This\TypeLong + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "IsFoundAtIndex" + TypeShort + " = -1" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "For Index" + TypeShort + " = 0 To ArraySize(*This\" + *This\AccessEmpty + ", 1)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      
      If *This\Type <= #MEMBER_TYPE_STRING01
        Buffer + *Comments\Tabulation(3) + "If " + *This\Name + " = *This\" + InsertString(*This\AccessEmpty, "Index", Len(*This\AccessEmpty)) + *Comments\LineFeed()
      Else
        Buffer + *Comments\Tabulation(3) + "If " + *This\Name + "$ = *This\" + InsertString(*This\AccessEmpty, "Index", Len(*This\AccessEmpty)) + *Comments\LineFeed()
      EndIf
      
      Buffer + *Comments\Tabulation(4) + "IsFoundAtIndex = Index" + *Comments\LineFeed()
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
  
  Procedure.s GenerateDeclareBinarySearch(*This.Private_Members, Mode.i, *Rules.Rules::Rules)
    
    If *This\Type < #MEMBER_TYPE_OBJECT And *This\DimensionCount = 1
      
      Select *Rules\GetDynamicDataSizeType()
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
          TypeShort.s = ".l"
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
          TypeShort.s = ".i"
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
          TypeShort.s = ".q"
          
      EndSelect
      
      Select Mode
          
        Case 0
          Buffer.s = "BinarySearch" + *This\Name + TypeShort + "(" + *This\Name + *This\TypeLong + ")"
          
        Case 1
          Buffer.s = "Data.i @BinarySearch" + *This\Name + "()"
          
      EndSelect
      
    EndIf
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineBinarySearch(*This.Private_Members, *Comments.Comments::Comments, *Rules.Rules::Rules)

    If *This\Type < #MEMBER_TYPE_OBJECT And *This\DimensionCount = 1
      
      Select *Rules\GetDynamicDataSizeType()
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
          TypeShort.s = ".l"
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
          TypeShort.s = ".i"
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
          TypeShort.s = ".q"
          
      EndSelect
      
      Buffer.s = *Comments\Tabulation(1) + "Procedure" + TypeShort + " BinarySearch" + *This\Name + "(*This.Private_Members, " + *This\Name + *This\TypeLong + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "IsFoundAtIndex" + TypeShort + " = -1" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "StartPosition" + TypeShort + " = 0" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "MiddlePosition" + TypeShort + " = 0" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "EndPosition" + TypeShort + " = ArraySize(*This\" + *This\AccessEmpty + ", 1)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "While StartPosition <= EndPosition" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "MiddlePosition = (StartPosition + EndPosition + 1) >> 1" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      
      If *This\Type <= #MEMBER_TYPE_STRING01
        Buffer + *Comments\Tabulation(3) + "If " + *This\Name + " < *This\" + InsertString(*This\AccessEmpty, "MiddlePosition", Len(*This\AccessEmpty)) + *Comments\LineFeed()
      Else
        Buffer + *Comments\Tabulation(3) + "If " + *This\Name + "$ < *This\" + InsertString(*This\AccessEmpty, "MiddlePosition", Len(*This\AccessEmpty)) + *Comments\LineFeed()
      EndIf
      
      Buffer + *Comments\Tabulation(4) + "EndPosition = MiddlePosition - 1" + *Comments\LineFeed()
      
      If *This\Type <= #MEMBER_TYPE_STRING01
        Buffer + *Comments\Tabulation(3) + "ElseIf " + *This\Name + " > *This\" + InsertString(*This\AccessEmpty, "MiddlePosition", Len(*This\AccessEmpty)) + *Comments\LineFeed()
      Else
        Buffer + *Comments\Tabulation(3) + "ElseIf " + *This\Name + "$ > *This\" + InsertString(*This\AccessEmpty, "MiddlePosition", Len(*This\AccessEmpty)) + *Comments\LineFeed()
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

  Procedure.s GenerateDeclareRandomize(*This.Private_Members, Mode.i)

    Select Mode
        
      Case 0
        Buffer.s = "Randomize" + *This\Name + "()"
          
      Case 1
        Buffer.s = "Data.i @Randomize" + *This\Name + "()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineRandomize(*This.Private_Members, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure Randomize" + *This\Name + "(*This.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "RandomizeArray(*This\" + *This\AccessEmpty + ")" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeclareReDim(*This.Private_Members, Mode.i, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeShort.s = ".q"
        
    EndSelect
    
    Select Mode
        
      Case 0
        Buffer.s = "ReDim" + *This\Name + "(NewSize" + TypeShort + ")"
        
      Case 1
        Buffer.s = "Data.i @ReDim" + *This\Name + "()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineReDim(*This.Private_Members, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeShort.s = ".q"
        
    EndSelect
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure ReDim" + *This\Name + "(*This.Private_Members, NewSize" + TypeShort + ")" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    
    Buffer + *Comments\Tabulation(2) + "CurrentSize" + TypeShort + " = ArraySize(*This\" + *This\AccessEmpty + ", " + *This\DimensionCount + ")" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    
    If *This\Type <= #MEMBER_TYPE_STRING01
      Buffer + *Comments\Tabulation(2) + "If NewSize <> CurrentSize" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "ReDim *This\" + *This\Name + "(" + GetFixedDimension(*This) + "NewSize)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    ElseIf *This\Type = #MEMBER_TYPE_STRING02
      Buffer + *Comments\Tabulation(2) + "If NewSize <> CurrentSize" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "ReDim *This\" + *This\Name + "$(ArraySize(" + GetFixedDimension(*This) + "NewSize)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Else
      Buffer + *Comments\Tabulation(2) + "If NewSize < CurrentSize" + *Comments\LineFeed() 
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      
      TabSize.i = 3
      Buffer + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort, "NewSize + 1", "CurrentSize")
      Buffer + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\Free()" + *Comments\LineFeed()
      Buffer + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "ReDim *This\" + *This\Name + "(" + GetFixedDimension(*This) + "NewSize)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "ElseIf NewSize > CurrentSize"+ *Comments\LineFeed() 
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "ReDim *This\" + *This\Name + "(" + GetFixedDimension(*This) + "NewSize)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      
      Buffer + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort, "CurrentSize + 1", "NewSize")
      Buffer + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + StringField(*This\TypeShort, 1, "::") + "::New()" + *Comments\LineFeed()
      Buffer + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
      
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "EndIf"+ *Comments\LineFeed()    
    EndIf
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeclareSize(*This.Private_Members, Mode.i, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeShort.s = ".q"
        
    EndSelect
    
    Select Mode
        
      Case 0
        If *This\DimensionCount = 1
          Buffer.s = *This\Name + "Size" + TypeShort + "()"
        Else
          Buffer.s = *This\Name + "Size" + TypeShort + "(DimensionID.l)"
        EndIf
        
      Case 1
        Buffer.s = "Data.i @" + *This\Name + "Size()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineSize(*This.Private_Members, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeShort.s = ".q"
        
    EndSelect
    
    If *This\DimensionCount = 1
      Buffer.s = *Comments\Tabulation(1) + "Procedure" + TypeShort + " " + *This\Name + "Size(*This.Private_Members)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "ProcedureReturn ArraySize(*This\" + *This\AccessEmpty + ", 1)" + *Comments\LineFeed()
    Else
      Buffer.s = *Comments\Tabulation(1) + "Procedure" + TypeShort + " " + *This\Name + "Size(*This.Private_Members, DimensionID.l)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "ProcedureReturn ArraySize(*This\" + *This\AccessEmpty + ", DimensionID)"+ *Comments\LineFeed()
    EndIf
    
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateReadBinaryInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeLong.s = "Long"
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeLong.s = "Integer"
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeLong.s = "Quad"
        TypeShort.s = ".q"
        
    EndSelect
    
    Instruction.s = *Comments\Tabulation(TabSize) + "ReDim" + *This\Name + "(*This, Read" + TypeLong + "(FileID))" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()  
    Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)
    
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
    
    Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateWriteBinaryInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeLong.s = "Long"
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeLong.s = "Integer"
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeLong.s = "Quad"
        TypeShort.s = ".q"
        
    EndSelect
    
    Instruction.s = *Comments\Tabulation(TabSize) + "Write" + TypeLong + "(FileID, ArraySize(*This\" + *This\AccessEmpty + ", " + Str(*This\DimensionCount) + "))" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()       
    Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)
    
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
    
    Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateReadEncodedCryptedInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Pointer.s, *CustomFileLib.CustomFileLib::CustomFileLib, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeLong.s = "Long"
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeLong.s = "Integer"
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeLong.s = "Quad"
        TypeShort.s = ".q"
        
    EndSelect
    
    Instruction.s = *Comments\Tabulation(TabSize) + "ReDim" + *This\Name + "(*This, " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "Read" + TypeLong + "(FileID))" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()  
    Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)
    
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
    
    Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateWriteEncodedCryptedInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Pointer.s, *CustomFileLib.CustomFileLib::CustomFileLib, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeLong.s = "Long"
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeLong.s = "Integer"
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeLong.s = "Quad"
        TypeShort.s = ".q"
        
    EndSelect
    
    Instruction.s = *Comments\Tabulation(TabSize) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "Write" + TypeLong + "(FileID, ArraySize(*This\" + *This\AccessEmpty + ", " + Str(*This\DimensionCount) + "))" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()       
    Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)
    
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
    
    Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateReadPrefsInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Mode.i, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeLong.s = "Long"
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeLong.s = "Integer"
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeLong.s = "Quad"
        TypeShort.s = ".q"
        
    EndSelect
        
    Instruction.s = *Comments\Tabulation(TabSize) + "ReDim" + *This\Name + "(*This, ReadPreference" + TypeLong + "(" + Chr(34) + *This\Name + "_Max" + Chr(34) + ", 0))" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
    Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)

    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE To #MEMBER_TYPE_CHARACTER, #MEMBER_TYPE_WORD, #MEMBER_TYPE_LONG
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadPreferenceLong(" + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadPreferenceInteger(" + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadPreferenceQuad(" + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadPreferenceFloat(" + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadPreferenceDouble(" + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadPreferenceString(" + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        If Mode = 0
          Instruction = *Comments\Tabulation(TabSize + 1) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
        Else
          Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + "\ReadPrefs(" + BuiltPrefsKey(*This) + ")" + *Comments\LineFeed()
        EndIf
        
    EndSelect
    
    Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()

    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateWritePrefsInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Mode.i, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeLong.s = "Long"
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeLong.s = "Integer"
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeLong.s = "Quad"
        TypeShort.s = ".q"
        
    EndSelect
        
    Instruction.s = *Comments\Tabulation(TabSize) + "WritePreference" + TypeLong + "(" + Chr(34) + *This\Name + "_Max" + Chr(34) + ", ArraySize(*This\" + *This\AccessEmpty + ", " + Str(*This\DimensionCount) + "))" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
    Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)

    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE To #MEMBER_TYPE_CHARACTER, #MEMBER_TYPE_WORD, #MEMBER_TYPE_LONG
        Instruction + *Comments\Tabulation(TabSize+1) + "WritePreferenceLong(" + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction + *Comments\Tabulation(TabSize+1) + "WritePreferenceInteger(" + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(TabSize+1) + "WritePreferenceQuad(" + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(TabSize+1) + "WritePreferenceFloat(" + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(TabSize+1) + "WritePreferenceDouble(" + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(TabSize+1) + "WritePreferenceString(" + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        If Mode = 0
          Instruction = *Comments\Tabulation(TabSize+1) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
        Else
          Instruction = *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + "\WritePrefs(" + BuiltPrefsKey(*This) + ")" + *Comments\LineFeed()
        EndIf
        
    EndSelect
    
    Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()

    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateXMLSetNodeInstruction(*This.Private_Members, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeShort.s = ".q"
        
    EndSelect
    
    Instruction.s = *Comments\Tabulation(2) + "FieldNode = CreateXMLNode(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + "SetXMLAttribute(FieldNode, " + Chr(34) + *This\DimensionIndexName[*This\DimensionCount-1] + Chr(34) + ", Str(ArraySize(*This\" + *This\AccessEmpty + ", " + Str(*This\DimensionCount) + ")))" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + *Comments\LineFeed()
    TabSize.i = 2
    Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE, #MEMBER_TYPE_CHARACTER, #MEMBER_TYPE_INTEGER, #MEMBER_TYPE_WORD, #MEMBER_TYPE_LONG, #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(TabSize+1) + "IndexNode = CreateXMLNode(FieldNode, " + Chr(34) + "Index" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize+1) + "SetXMLNodeText(IndexNode, Str(*This\" + *This\Access + "))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_ASCII
        Instruction + *Comments\Tabulation(TabSize+1) + "IndexNode = CreateXMLNode(FieldNode, " + Chr(34) + "Index" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize+1) + "SetXMLNodeText(IndexNode, StrU(*This\" + *This\Access + ", #PB_Ascii))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_UNICODE
        Instruction + *Comments\Tabulation(TabSize+1) + "IndexNode = CreateXMLNode(FieldNode, " + Chr(34) + "Index" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize+1) + "SetXMLNodeText(IndexNode, StrU(*This\" + *This\Access + ", #PB_Unicode))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(TabSize+1) + "IndexNode = CreateXMLNode(FieldNode, " + Chr(34) + "Index" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize+1) + "SetXMLNodeText(IndexNode, StrF(*This\" + *This\Access + ", 12))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(TabSize+1) + "IndexNode = CreateXMLNode(FieldNode, " + Chr(34) + "Index" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize+1) + "SetXMLNodeText(IndexNode, StrD(*This\" + *This\Access + ", 24))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(TabSize+1) + "IndexNode = CreateXMLNode(FieldNode, " + Chr(34) + "Index" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize+1) + "SetXMLNodeText(IndexNode, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction + *Comments\Tabulation(TabSize+1) + "IndexNode = CreateXMLNode(FieldNode, " + Chr(34) + "Index" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + "\XML_SetNode(IndexNode)" + *Comments\LineFeed()   
        Instruction + *Comments\Tabulation(TabSize+1) + "; *This\" + *This\Access + "\XML_SetAttribute(IndexNode, " + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed() 
        Instruction + *Comments\Tabulation(TabSize+1) + "; *This\" + *This\Access + "\XML_AddAttribute(IndexNode)" + *Comments\LineFeed() 
        
    EndSelect
    
    Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()

    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateXMLGetNodeInstruction(*This.Private_Members, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeShort.s = ".q"
        
    EndSelect
    
    Instruction.s = *Comments\Tabulation(5) + "Case " + Chr(34) + *This\Name + Chr(34) + *Comments\LineFeed()
    TabSize.i = 6
    Instruction + *Comments\Tabulation(TabSize) + "ReDim" + *This\Name + "(*This, Val(GetXMLAttribute(FieldNode, " + Chr(34) + *This\DimensionIndexName[*This\DimensionCount-1] + Chr(34) + ")))" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + "ChildIndex = 1" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
    Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)
    Instruction + *Comments\Tabulation(TabSize+1) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize+1) + "IndexNode = ChildXMLNode(FieldNode, ChildIndex)" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize+1) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize+1) + "If GetXMLNodeName(IndexNode) = " + Chr(34) + "Index" +Chr(34) + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE To #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(TabSize+2) + "*This\" + *This\Access + " = Val(GetXMLNodeText(IndexNode))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(TabSize+2) + "*This\" + *This\Access + " = ValF(GetXMLNodeText(IndexNode))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(TabSize+2) + "*This\" + *This\Access + " = ValD(GetXMLNodeText(IndexNode))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(TabSize+2) + "*This\" + *This\Access + " = GetXMLNodeText(IndexNode)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT
        Instruction + *Comments\Tabulation(TabSize+2) + "*This\" + *This\Access + "\XML_GetNode(IndexNode)" + *Comments\LineFeed()   
        Instruction + *Comments\Tabulation(TabSize+2) + "; *This\" + *This\Access + "\XML_GetAttribute(ChildXMLNode(IndexNode), "  + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed() 
        Instruction + *Comments\Tabulation(TabSize+2) + "; *This\" + *This\Access + "\XML_CollectAttribute(IndexNode)" + *Comments\LineFeed() 
        
    EndSelect
    
    Instruction + *Comments\Tabulation(TabSize+1) + "EndIf" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize+1) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize+1) + "ChildIndex + 1" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize+1) + *Comments\LineFeed()
    Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateJSONInsertInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, *Rules.Rules::Rules)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      
      Select *Rules\GetDynamicDataSizeType()
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
          TypeShort.s = ".l"
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
          TypeShort.s = ".i"
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
          TypeShort.s = ".q"
          
      EndSelect
      
      If *This\DimensionCount > 1
        Instruction.s = *Comments\Tabulation(TabSize) + "; NOT SUPPORTED YET !" + *Comments\LineFeed()
      Else
        Instruction.s = *Comments\Tabulation(TabSize) + *This\Name + "Table.i = SetJSONArray(AddJSONMember(Object, " + Chr(34) +  *This\Name + Chr(34) + "))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\JSON_Insert(AddJSONElement(" + *This\Name + "Table))" + *Comments\LineFeed() 
        Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
      EndIf
      
    ElseIf *This\Type < #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(TabSize) + "InsertJSONArray(SetJSONArray(AddJSONMember(Object, " + Chr(34) +  *This\Name + Chr(34) + ")), *This\" + *This\AccessEmpty + ")" + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateJSONExtractInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, *Rules.Rules::Rules)
    
    Instruction.s = *Comments\Tabulation(TabSize) + "Case " + Chr(34) + *This\Name + Chr(34) + *Comments\LineFeed()
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      
      Select *Rules\GetDynamicDataSizeType()
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
          TypeShort.s = ".l"
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
          TypeShort.s = ".i"
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
          TypeShort.s = ".q"
          
      EndSelect
      
      If *This\DimensionCount > 1
        Instruction + *Comments\Tabulation(TabSize) + "; NOT SUPPORTED YET !" + *Comments\LineFeed()
      Else
        
        Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + *This\Name + "Table.i = GetJSONMember(JSONValue, " + Chr(34) +  *This\Name + Chr(34)  + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + *This\Name + "TableMax" + TypeShort + " = JSONArraySize(" + *This\Name + "Table) - 1" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "ReDim" + *This\Name + "(*This, " + *This\Name + "TableMax)" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
        TabSize + 1
        Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\JSON_Extract(GetJSONElement(" + *This\Name + "Table, " + *This\DimensionIndexName[0] + "))" + *Comments\LineFeed() 
        Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
        TabSize - 1
        
      EndIf
      
    ElseIf *This\Type < #MEMBER_TYPE_OBJECT
      Instruction + *Comments\Tabulation(TabSize + 1) + "ExtractJSONArray(GetJSONMember(JSONValue, " + Chr(34) +  *This\Name + Chr(34) + "), *This\" + *This\AccessEmpty + ")" + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateAddGroupPrefsInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeLong.s = "Long"
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeLong.s = "Integer"
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeLong.s = "Quad"
        TypeShort.s = ".q"
        
    EndSelect
    
    If Mode = 0
      Instruction.s = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKey" + TypeLong + "(GroupName, " + Chr(34) + *This\Name + "_Max" + Chr(34) + ", ArraySize(*This\" + *This\AccessEmpty + ", " + Str(*This\DimensionCount) + "))" + *Comments\LineFeed()
    Else
      Instruction + *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKey" + TypeLong + "(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_Max" + Chr(34) + ", ArraySize(*This\" + *This\AccessEmpty + ", " + Str(*This\DimensionCount) + "))" + *Comments\LineFeed()
    EndIf
    
    Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
    Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyByte(GroupName, " + BuiltPrefsKey(*This) + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyByte(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_ASCII
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyAscii(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyAscii(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_UNICODE
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyUnicode(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyUnicode(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_CHARACTER
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyCharacter(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyCharacter(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_INTEGER
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyInteger(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyInteger(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_WORD
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyWord(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyWord(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_LONG
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyLong(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyLong(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_QUAD
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyQuad(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyQuad(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_FLOAT
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyFloat(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyFloat(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_DOUBLE
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyDouble(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyDouble(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyString(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyString(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_OBJECT 
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\AddPrefsGroup(" + BuiltPrefsKey(*This) + ", " + Pointer + "CustomPrefs)" + *Comments\LineFeed()   
        EndIf
        
    EndSelect
    
    Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure

  Procedure.s GenerateExtractGroupPrefsInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeLong.s = "Long"
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeLong.s = "Integer"
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeLong.s = "Quad"
        TypeShort.s = ".q"
        
    EndSelect
    
    If *This\Type < #MEMBER_TYPE_OBJECT
      
      If Mode = 0
        
        Instruction.s = *Comments\Tabulation(TabSize) + "ReDim" + *This\Name + "(*This, " + Pointer + "CustomPrefs\GetValue" + TypeLong + "(GroupName, " + Chr(34) + *This\Name + "_Max" + Chr(34) + "))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)
        Instruction + *Comments\Tabulation(TabSize + 1) + "If " + Pointer + "CustomPrefs\IsKey(GroupName, " + BuiltPrefsKey(*This) + ")" + *Comments\LineFeed()
        
        Select *This\Type
            
          Case #MEMBER_TYPE_BYTE
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueByte(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_ASCII
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueAscii(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_UNICODE
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueUnicode(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_CHARACTER
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueCharacter(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_INTEGER
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueInteger(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_WORD
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueWord(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_LONG
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueLong(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_QUAD
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueQuad(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_FLOAT
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueFloat(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_DOUBLE
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueDouble(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueString(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
        EndSelect
        
        Instruction + *Comments\Tabulation(TabSize + 1) + "EndIf" + *Comments\LineFeed()
        Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
        
      Else   
        
        Instruction = *Comments\Tabulation(TabSize) + "If " + Pointer + "CustomPrefs\IsGroup(" + Chr(34) + "Orphan" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "ReDim" + *This\Name + "(*This, " + Pointer + "CustomPrefs\GetValue" + TypeLong + "(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_Max" + Chr(34) + "))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
        TabSize + 1
        Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)
        TabSize - 1
        Instruction + *Comments\Tabulation(TabSize + 2) + "If " + Pointer + "CustomPrefs\IsKey(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ")" + *Comments\LineFeed()
        
        Select *This\Type
            
          Case #MEMBER_TYPE_BYTE
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueByte(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_ASCII
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueAscii(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_UNICODE
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueUnicode(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_CHARACTER
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueCharacter(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_INTEGER
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueInteger(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_WORD
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueWord(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_LONG
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueLong(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_QUAD
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueQuad(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_FLOAT
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueFloat(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_DOUBLE
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueDouble(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueString(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ")" + *Comments\LineFeed()
            
        EndSelect
        
        Instruction + *Comments\Tabulation(TabSize + 2) + "EndIf" + *Comments\LineFeed()
        TabSize + 1
        Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
        TabSize - 1
        Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "EndIf" + *Comments\LineFeed()
        
      EndIf
      
    ElseIf *This\Type = #MEMBER_TYPE_OBJECT
      
      If Mode = 0
        Instruction.s = *Comments\Tabulation(TabSize) + "ReDim" + *This\Name + "(*This, " + Pointer + "CustomPrefs\GetValue" + TypeLong + "(GroupName, " + Chr(34) + *This\Name + "_Max" + Chr(34) + "))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)
        Instruction + *Comments\Tabulation(TabSize + 1) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
        Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
      Else
        Instruction.s = *Comments\Tabulation(TabSize) + "ReDim" + *This\Name + "(*This, " + Pointer + "CustomPrefs\GetValue" + TypeLong + "(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_Max" + Chr(34) + "))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\ExtractPrefsGroup(" + BuiltPrefsKey(*This) + ", " + Pointer + "CustomPrefs)" + *Comments\LineFeed()   
        Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
      EndIf
      
    EndIf

    ProcedureReturn Instruction
  EndProcedure

  Procedure.s GenerateRefreshGroupPrefsInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeLong.s = "Long"
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeLong.s = "Integer"
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeLong.s = "Quad"
        TypeShort.s = ".q"
        
    EndSelect
    
    If *This\Type < #MEMBER_TYPE_OBJECT
      
      If Mode = 0
        
        Instruction.s = *Comments\Tabulation(TabSize) + *This\Name + "_Max" + TypeShort + " = " + Pointer + "CustomPrefs\GetValue" + TypeLong + "(GroupName, " + Chr(34) + *This\Name + "_Max" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "New_" + *This\Name + "_Max" + TypeShort + " = ArraySize(*This\" + *This\AccessEmpty + ", " + Str(*This\DimensionCount) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "If " + *This\Name + "_Max > New_" + *This\Name + "_Max" + *Comments\LineFeed()
        
        TabSize + 1
        Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort, "New_" + *This\Name + "_Max + 1", *This\Name + "_Max")
        Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\DeleteKey(GroupName, " + BuiltPrefsKey(*This) + ")" + *Comments\LineFeed()
        Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
        TabSize - 1
        
        Instruction + *Comments\Tabulation(TabSize) + "EndIf" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        
        Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, "")

        Select *This\Type
            
          Case #MEMBER_TYPE_BYTE
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueByte(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_ASCII
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueAscii(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_UNICODE
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueUnicode(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_CHARACTER
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueCharacter(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_INTEGER
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueInteger(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_WORD
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueWord(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_LONG
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueLong(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_QUAD
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueQuad(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_FLOAT
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueFloat(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_DOUBLE
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueDouble(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueString(GroupName, " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
        EndSelect
        
        Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
        
      Else   
        
        Instruction = *Comments\Tabulation(TabSize) + "If " + Pointer + "CustomPrefs\IsGroup(" + Chr(34) + "Orphan" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + *This\Name + "_Max" + TypeShort + " = " + Pointer + "CustomPrefs\GetValue" + TypeLong +"(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_Max" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "New_" + *This\Name + "_Max" + TypeShort + " =  ArraySize(*This\" + *This\AccessEmpty + ", " + Str(*This\DimensionCount) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "If " + *This\Name + "_Max > New_" + *This\Name + "_Max" + *Comments\LineFeed()
        TabSize + 1
        Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort, "New_" + *This\Name + "_Max + 1", *This\Name + "_Max")
        Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\DeleteKey(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ")" + *Comments\LineFeed()
        Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
        TabSize - 1
        Instruction + *Comments\Tabulation(TabSize + 1) + "EndIf" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
        TabSize + 1
        Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, "")
        
        Select *This\Type
            
          Case #MEMBER_TYPE_BYTE
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueByte(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_ASCII
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueAscii(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_UNICODE
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueUnicode(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_CHARACTER
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueCharacter(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_INTEGER
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueInteger(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_WORD
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueWord(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_LONG
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueLong(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_QUAD
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueQuad(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_FLOAT
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueFloat(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_DOUBLE
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueDouble(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueString(" + Chr(34) + "Orphan" + Chr(34) + ", " + BuiltPrefsKey(*This) + ", *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
        EndSelect
        
        TabSize + 1
        Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
        TabSize - 1
        Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "EndIf" + *Comments\LineFeed()
        
      EndIf
      
    ElseIf *This\Type = #MEMBER_TYPE_OBJECT
      
      If Mode = 0
        
        Instruction.s = *Comments\Tabulation(TabSize) + *This\Name + "_Max" + TypeShort + " = " + Pointer + "CustomPrefs\GetValue" + TypeLong + "(GroupName, " + Chr(34) + *This\Name + "_Max" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "New_" + *This\Name + "_Max" + TypeShort + " = ArraySize(*This\" + *This\AccessEmpty + ", " + Str(*This\DimensionCount) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "If " + *This\Name + "_Max > New_" + *This\Name + "_Max" + *Comments\LineFeed()
        
        TabSize + 1
        Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort, "New_" + *This\Name + "_Max + 1", *This\Name + "_Max")
        Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\DeleteKey(GroupName, " + BuiltPrefsKey(*This) + ")" + *Comments\LineFeed()
        Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
        TabSize - 1
        
        Instruction + *Comments\Tabulation(TabSize) + "EndIf" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, "") 
        Instruction + *Comments\Tabulation(TabSize + 1) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
        Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
        
      Else
        
        Instruction.s = *Comments\Tabulation(TabSize) + *This\Name + "_Max" + TypeShort + " = " + Pointer + "CustomPrefs\GetValue" + TypeLong + "(GroupName, " + Chr(34) + *This\Name + "_Max" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "New_" + *This\Name + "_Max" + TypeShort + " = ArraySize(*This\" + *This\AccessEmpty + ", " + Str(*This\DimensionCount) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "If " + *This\Name + "_Max > New_" + *This\Name + "_Max" + *Comments\LineFeed()
        
        TabSize + 1
        Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort, "New_" + *This\Name + "_Max + 1", *This\Name + "_Max")
        Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\DeleteKey(GroupName, " + BuiltPrefsKey(*This) + ")" + *Comments\LineFeed()
        Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
        TabSize - 1
        
        Instruction + *Comments\Tabulation(TabSize) + "EndIf" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        Instruction + GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, "") 
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\RefreshPrefsGroup(" + BuiltPrefsKey(*This) + ", " + Pointer + "CustomPrefs)" + *Comments\LineFeed()   
        Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
        
      EndIf
      
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure 
  
  Procedure.s GenerateConstructorInstruction(*This.Private_Members, *Comments.Comments::Comments, *SeparatorNeeded.Integer, *Rules.Rules::Rules)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      
      Select *Rules\GetDynamicDataSizeType()
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
          TypeShort.s = ".l"
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
          TypeShort.s = ".i"
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
          TypeShort.s = ".q"
          
      EndSelect
      
      TabSize.i = 2
      Instruction.s = GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)
      Instruction + *Comments\Tabulation(TabSize + 1) + "If *This\" + *This\Access + " = #Null" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + StringField(*This\TypeShort, 1, ":") + "::New()"  + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(TabSize + 1) + "EndIf" + *Comments\LineFeed()
      Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
      
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
  
  Procedure.s GenerateDestructorInstruction(*This.Private_Members, *Comments.Comments::Comments, *SeparatorNeeded.Integer, *Rules.Rules::Rules)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      
      Select *Rules\GetDynamicDataSizeType()
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
          TypeShort.s = ".l"
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
          TypeShort.s = ".i"
          
        Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
          TypeShort.s = ".q"
          
      EndSelect
      
      TabSize.i = 2
      Instruction.s = GetDynamicArrayOpeningLoop(*This, @TabSize, *Comments, TypeShort)
      Instruction + *Comments\Tabulation(TabSize + 1) + "If *This\" + *This\Access + " <> #Null" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + "\Free()" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(TabSize + 1) + "EndIf" + *Comments\LineFeed()
      Instruction + GetDynamicArrayClosingLoop(*This, @TabSize, *Comments) + *Comments\LineFeed()
      
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
  
  Procedure.i New(Description.s, *StringUtilities.StringUtilities::StringUtilities, *FastCopy.Integer)

    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *BetweenBracket.StringBetween::StringBetween = *StringUtilities\GetBetweenParenthesis()
    *FoolProofer.FoolProofer::FoolProofer = *StringUtilities\GetFoolProofer()
    
    *This\Description = Description
    
    NameDotType.s = *FoolProofer\GetArrayNameDotType(*This\Description)
    *This\DimensionDeclare = *FoolProofer\GetArrayBracketPart(*This\Description)
    
    *BetweenParenthesis.StringBetween::StringBetween = *StringUtilities\GetBetweenParenthesis()
    
    DimensionPart.s = *BetweenParenthesis\Extract(*This\DimensionDeclare)
    *This\DimensionCount = CountString(DimensionPart, ",") + 1
    
    If FindString(NameDotType, ".") = 0
      
      *This\Name = NameDotType
      
      If Left(*This\Name, 1) = "*"
        
        *This\Name = Right(*This\Name, Len(*This\Name)-1)
        Type_Pointer_C = #True
        *This\TypeShort = ""
        
        For Index = *This\DimensionCount To 1 Step -1  
          *This\DimensionIndexName[Index-1] = *This\Name + "_ID_" + Str(Index)
        Next
        
        For Index = 1 To *This\DimensionCount
          *This\DimensionIndexMaxName[Index-1] = *This\Name + "_Max_" + Str(Index) + "D"
        Next
        
        *This\Access = *This\Name + "(" + BuiltDynamicArrayIndexList(*This, 1) + ")"
        *This\AccessEmpty = *This\Name + "()"
        *This\AccessMax = *This\Name + "(" + BuiltDynamicArrayIndexList(*This, 3) + ")"
        *This\IndexList = BuiltDynamicArrayIndexList(*This, 4)
        
        *This\TypeShort = StringField(NameDotType, 2, ".")
        
      EndIf
      
      If Right(*This\Name, 1) = "$"
        
        *This\Name = Left(*This\Name, Len(*This\Name)-1)
        *This\TypeShort = "$"
        
        For Index = *This\DimensionCount To 1 Step -1  
          *This\DimensionIndexName[Index-1] = *This\Name + "_ID_" + Str(Index)
        Next
        
        For Index = 1 To *This\DimensionCount
          *This\DimensionIndexMaxName[Index-1] = *This\Name + "_Max_" + Str(Index) + "D"
        Next
        
        *This\Access = *This\Name + "$(" + BuiltDynamicArrayIndexList(*This, 1) + ")"
        *This\AccessEmpty = *This\Name + "$()"
        *This\AccessMax = *This\Name + "$(" + BuiltDynamicArrayIndexList(*This, 3) + ")"
        *This\IndexList = BuiltDynamicArrayIndexList(*This, 4)
        
      EndIf
      
    Else
      
      *This\Name = StringField(NameDotType, 1, ".")
      
      If Left(*This\Name, 1) = "*"
        *This\Name = Right(*This\Name, Len(*This\Name)-1)
        Type_Pointer_C = #True
      EndIf
      
      For Index = *This\DimensionCount To 1 Step -1  
        *This\DimensionIndexName[Index-1] = *This\Name + "_ID_" + Str(Index)
      Next
      
      For Index = 1 To *This\DimensionCount
        *This\DimensionIndexMaxName[Index-1] = *This\Name + "_Max_" + Str(Index) + "D"
      Next
      
      *This\Access = *This\Name + "(" + BuiltDynamicArrayIndexList(*This, 1) + ")"
      *This\AccessEmpty = *This\Name + "()"
      *This\AccessMax = *This\Name + "(" + BuiltDynamicArrayIndexList(*This, 3) + ")"
      *This\IndexList = BuiltDynamicArrayIndexList(*This, 4)
      
      *This\TypeShort = StringField(NameDotType, 2, ".")
      
    EndIf
    
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
        
      Case "$"
        *This\ZeroOut = Chr(34) + Chr(34)
        *This\Type = #MEMBER_TYPE_STRING02
        *This\TypeLong = "$"
        
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
          *FastCopy\i = #False
          *This\TypeLong = "." + *This\TypeShort
          
        EndIf
        
    EndSelect
    
    ProcedureReturn *This
  EndProcedure

  DataSection
    START_METHODS:
    Data.i @GetDescription()
    Data.i @GetName()
    Data.i @GetAccess()
    Data.i @GetAccessEmpty()
    Data.i @GetAccessMax()
    Data.i @GetType()
    Data.i @GetTypeShort()
    Data.i @GetTypeLong()
    Data.i @GetZeroOut()
    Data.i @GetDimensionCount()
    Data.i @GetDimensionIndexName()
    Data.i @GetDimensionIndexMaxName()
    Data.i @GetDimensionDeclare()
    Data.i @GetIndexList()
    Data.i @GenerateDeclareGetter()
    Data.i @GenerateDefineGetter()
    Data.i @GenerateDeclareSetter()
    Data.i @GenerateDefineSetter()
    Data.i @GenerateResetInstruction()
    Data.i @GenerateClearInstruction()
    Data.i @GenerateCopyInstruction()
    Data.i @GenerateCompareInstruction()
    Data.i @GenerateSwappingInstruction()
    Data.i @GenerateDeclareSort()
    Data.i @GenerateDefineSort()    
    Data.i @GenerateDeclareLinearSearch()
    Data.i @GenerateDefineLinearSearch()
    Data.i @GenerateDeclareBinarySearch()
    Data.i @GenerateDefineBinarySearch()
    Data.i @GenerateDeclareRandomize()
    Data.i @GenerateDefineRandomize()
    Data.i @GenerateDeclareReDim()
    Data.i @GenerateDefineReDim()
    Data.i @GenerateDeclareSize()
    Data.i @GenerateDefineSize()
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
; <<<<< Code généré en : 00.002 secondes (124500.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = -AAAAAACAD9
; EnableXP
; CompileSourceDirectory