; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.0.1
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - LinkedList.pb
; Version du fichier : 1.2.4
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 11-04-2019
; Mise à jour : 29-11-2022
; Codé pour PureBasic : V6.00 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule LinkedList

  Interface LinkedList

    GetDescription.s()
    GetName.s()
    GetAccess.s()
    GetType.i()
    GetTypeShort.s()
    GetTypeLong.s()
    GetZeroOut.s()
    GenerateDeclareGetter.s(Mode.i)
    GenerateDefineGetter.s(*Comments.Comments::Comments)
    GenerateDeclareSetter.s(Mode.i)
    GenerateDefineSetter.s(*Comments.Comments::Comments)
    GenerateResetInstruction.s(*Comments.Comments::Comments)
    GenerateClearInstruction.s(*Comments.Comments::Comments)
    GenerateCopyInstruction.s(*Comments.Comments::Comments)
    GenerateCompareInstruction.s(*Comments.Comments::Comments)
    GenerateSwappingInstruction.s(*Comments.Comments::Comments)
    GenerateDeclareSort.s(Mode.i)
    GenerateDefineSort.s(*Comments.Comments::Comments)
    GenerateDeclareLinearSearch.s(Mode.i, *Rules.Rules::Rules)
    GenerateDefineLinearSearch.s(*Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateDeclareBinarySearch.s(Mode.i, *Rules.Rules::Rules)
    GenerateDefineBinarySearch.s(*Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateDeclareRandomize.s(Mode.i)
    GenerateDefineRandomize.s(*Comments.Comments::Comments)
    GenerateDeclareAdd.s(Mode.i)
    GenerateDefineAdd.s(*Comments.Comments::Comments)
    GenerateDeclareAddEx.s(Mode.i)
    GenerateDefineAddEx.s(*Comments.Comments::Comments)
    GenerateDeclareInsert.s(Mode.i)
    GenerateDefineInsert.s(*Comments.Comments::Comments)
    GenerateDeclareInsertEx.s(Mode.i)
    GenerateDefineInsertEx.s(*Comments.Comments::Comments)
    GenerateDeclareSelect.s(Mode.i, *Rules.Rules::Rules)
    GenerateDefineSelect.s(*Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateDeclareFirst.s(Mode.i)
    GenerateDefineFirst.s(*Comments.Comments::Comments)
    GenerateDeclareLast.s(Mode.i)
    GenerateDefineLast.s(*Comments.Comments::Comments)
    GenerateDeclarePrevious.s(Mode.i)
    GenerateDefinePrevious.s(*Comments.Comments::Comments)
    GenerateDeclareNext.s(Mode.i)
    GenerateDefineNext.s(*Comments.Comments::Comments)
    GenerateDeclareDelete.s(Mode.i)
    GenerateDefineDelete.s(*Comments.Comments::Comments)
    GenerateDeclareReset.s(Mode.i)
    GenerateDefineReset.s(*Comments.Comments::Comments)
    GenerateDeclareClear.s(Mode.i)
    GenerateDefineClear.s(*Comments.Comments::Comments)
    GenerateDeclareIndex.s(Mode.i, *Rules.Rules::Rules)
    GenerateDefineIndex.s(*Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateDeclareSize.s(Mode.i, *Rules.Rules::Rules)
    GenerateDefineSize.s(*Comments.Comments::Comments, *Rules.Rules::Rules)  
    
    GenerateDeclareMerge.s(Mode.i)
    GenerateDefineMerge.s(*Comments.Comments::Comments)  
    
    GenerateReadBinaryInstruction.s(*Comments.Comments::Comments, TabSize.i, *Rules.Rules::Rules)
    GenerateWriteBinaryInstruction.s(*Comments.Comments::Comments, TabSize.i, *Rules.Rules::Rules)
    GenerateReadEncodedCryptedInstruction.s(*Comments.Comments::Comments, TabSize.i, Pointer.s, *CustomFileLib.CustomFileLib::CustomFileLib, *Rules.Rules::Rules)
    GenerateWriteEncodedCryptedInstruction.s(*Comments.Comments::Comments, TabSize.i, Pointer.s, *CustomFileLib.CustomFileLib::CustomFileLib, *Rules.Rules::Rules)
    GenerateReadPrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i, *Rules.Rules::Rules)
    GenerateWritePrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i, *Rules.Rules::Rules)
    GenerateXMLSetNodeInstruction.s(*Comments.Comments::Comments)
    GenerateXMLGetNodeInstruction.s(*Comments.Comments::Comments, *Rules.Rules::Rules)
    
    GenerateJSONInsertInstruction.s(*Comments.Comments::Comments, TabSize.i)
    GenerateJSONExtractInstruction.s(*Comments.Comments::Comments, TabSize.i, *Rules.Rules::Rules)
    
    GenerateAddGroupPrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s, *Rules.Rules::Rules)
    GenerateExtractGroupPrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s, *Rules.Rules::Rules)
    GenerateRefreshGroupPrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s, *Rules.Rules::Rules)
    
    GenerateDestructorInstruction.s(*Comments.Comments::Comments, *SeparatorNeeded.Integer)
    Free()

  EndInterface

  Declare.i New(Description.s, *StringUtilities.StringUtilities::StringUtilities, *FastCopy.Integer)

EndDeclareModule

Module LinkedList
  
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
  
  EndStructure

  Procedure.s GetDescription(*This.Private_Members)

    ProcedureReturn *This\Description
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

  Procedure.s GenerateDeclareGetter(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        If *This\Type = #MEMBER_TYPE_OBJECT Or *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
          Buffer.s = "Get" + *This\Name + ".i()"
        Else
          Buffer.s = "Get" + *This\Name + *This\TypeLong + "()"
        EndIf
        
      Case 1
        Buffer.s = "Data.i @Get" + *This\Name + "()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineGetter(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT Or *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
      Buffer.s = *Comments\Tabulation(1) + "Procedure.i Get" + *This\Name + "(*This.Private_Members)"  + *Comments\LineFeed()
    Else
      Buffer.s = *Comments\Tabulation(1) + "Procedure" + *This\TypeLong + " Get" + *This\Name + "(*This.Private_Members)" + *Comments\LineFeed()
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
          Buffer.s = "Set" + *This\Name + "(*" + *This\Name + *This\TypeLong + ")"
        Else
          Buffer.s = "Set" + *This\Name + "(" + *This\Name + *This\TypeLong + ")"
        EndIf
        
      Case 1
        Buffer.s = "Data.i @Set" + *This\Name + "()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineSetter(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Buffer.s = *Comments\Tabulation(1) + "Procedure Set" + *This\Name + "(*This.Private_Members, *" + *This\Name + *This\TypeLong + ")"  + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "If *This\" + *This\Access + " <> #Null" + *Comments\LineFeed() 
      Buffer + *Comments\Tabulation(3) + "*This\" + *This\Access + "\Free()" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed() 
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "*This\" + *This\Access + " = *" + *This\Name + *Comments\LineFeed()
    ElseIf *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
      Buffer.s = *Comments\Tabulation(1) + "Procedure Set" + *This\Name + "(*This.Private_Members, *" + *This\Name + *This\TypeLong + ")"  + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "*This\" + *This\Access + " = *" + *This\Name + *Comments\LineFeed()
    ElseIf *This\Type = #MEMBER_TYPE_STRING02  
      Buffer.s = *Comments\Tabulation(1) + "Procedure Set" + *This\Name + "(*This.Private_Members, " + *This\Name + *This\TypeLong + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "*This\" + *This\Access + " = " + *This\Name + *This\TypeLong + *Comments\LineFeed()
    Else
      Buffer.s = *Comments\Tabulation(1) + "Procedure Set" + *This\Name + "(*This.Private_Members, " + *This\Name + *This\TypeLong + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "*This\" + *This\Access + " = " + *This\Name + *Comments\LineFeed()
    EndIf
   
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateResetInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "ForEach *This\" + *This\Access + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(3) + "If *This\" + *This\Access + " <> #Null" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(4) + "*This\" + *This\Access + "\Free()" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(3) + "EndIf" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(2) + "Next" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(2) + *Comments\LineFeed()
    EndIf
    
    Instruction + *Comments\Tabulation(2) + "ClearList(*This\" + *This\Access + ")" + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateClearInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "ForEach *This\" + *This\Access + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(3) + "If *This\" + *This\Access + " <> #Null" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(4) + "*This\" + *This\Access + "\Free()" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(3) + "EndIf" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(2) + "Next" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(2) + *Comments\LineFeed()
    EndIf
    
    Instruction + *Comments\Tabulation(2) + "ClearList(*This\" + *This\Access + ")" + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateCopyInstruction(*This.Private_Members, *Comments.Comments::Comments)

    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "ForEach *This\" + *This\Access + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(3) + "AddElement(*Copy\" + *This\Access + ")" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(3) + "*Copy\" + *This\Access + " = *This\" + *This\Access + "\Copy()" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(2) + "Next" + *Comments\LineFeed()
    Else
      Instruction = *Comments\Tabulation(2) + "CopyList(*This\" + *This\Access + ", *Copy\" + *This\Access + ")" + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateCompareInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    Instruction.s = *Comments\Tabulation(2) + "If ListSize(*This\" + *This\Access + ") <> ListSize(*Other\" + *This\Access + ")" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(3) + *Comments\LineFeed()  
    Instruction + *Comments\Tabulation(3) + "ProcedureReturn #False" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(3) + *Comments\LineFeed()  
    Instruction + *Comments\Tabulation(2) + "Else" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(3) + *Comments\LineFeed()  
    Instruction + *Comments\Tabulation(3) + "FirstElement(*Other\" + *This\Access + ")" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(3) + *Comments\LineFeed()  
    Instruction + *Comments\Tabulation(3) + "ForEach *This\" + *This\Access + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(3) + *Comments\LineFeed()  
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction + *Comments\Tabulation(4) + "If *This\" + *This\Access + "\Compare(*Other\" + *This\Access + ") = #False" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(5) + "ProcedureReturn #False" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(4) + "EndIf" + *Comments\LineFeed()
    Else
      Instruction + *Comments\Tabulation(4) + "If *This\" + *This\Access + " <> *Other\" + *This\Access + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(5) + "ProcedureReturn #False" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(4) + "EndIf" + *Comments\LineFeed()
    EndIf
    
    Instruction + *Comments\Tabulation(4) + *Comments\LineFeed()  
    Instruction + *Comments\Tabulation(4) + "NextElement(*Other\" + *This\Access + ")" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(3) + *Comments\LineFeed()  
    Instruction + *Comments\Tabulation(3) + "Next" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + *Comments\LineFeed() 
    Instruction + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateSwappingInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    Instruction.s = *Comments\Tabulation(2) + "NewList TempThis" + *This\TypeLong + "()" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + "NewList TempOther" + *This\TypeLong + "()" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + *Comments\LineFeed() 
    Instruction + *Comments\Tabulation(2) + "CopyList(*This\" + *This\Access + ", TempThis())" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + "CopyList(*Other\" + *This\Access + ", TempOther())" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + *Comments\LineFeed() 
    Instruction + *Comments\Tabulation(2) + "CopyList(TempOther(), *This\" + *This\Access + ")" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + "CopyList(TempThis(), *Other\" + *This\Access + ")" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + *Comments\LineFeed() 
    Instruction + *Comments\Tabulation(2) + "FreeList(TempThis())" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + "FreeList(TempOther())" + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateDeclareSort(*This.Private_Members, Mode.i)
    
    If *This\Type < #MEMBER_TYPE_OBJECT
      
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

    If *This\Type < #MEMBER_TYPE_OBJECT
      
      Buffer.s = *Comments\Tabulation(1) + "Procedure Sort" + *This\Name + "(*This.Private_Members, Option.i)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "SortList(*This\" + *This\Access + ", Option)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
      
    EndIf
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeclareLinearSearch(*This.Private_Members, Mode.i, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeShort.s = ".q"
        
    EndSelect
    
    If *This\Type < #MEMBER_TYPE_OBJECT
      
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
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeShort.s = ".q"
        
    EndSelect
    
    If *This\Type < #MEMBER_TYPE_OBJECT
      
      Buffer.s = *Comments\Tabulation(1) + "Procedure" + TypeShort + " LinearSearch" + *This\Name + "(*This.Private_Members, " + *This\Name + *This\TypeLong + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "IsFoundAtIndex" + TypeShort + " = -1" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "ForEach *This\" + *This\Access + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      
      If *This\Type <= #MEMBER_TYPE_STRING01
        Buffer + *Comments\Tabulation(3) + "If " + *This\Name + " = *This\" + *This\Access + *Comments\LineFeed()
      Else
        Buffer + *Comments\Tabulation(3) + "If " + *This\Name + "$ = *This\" + *This\Access + *Comments\LineFeed()
      EndIf
      
      Buffer + *Comments\Tabulation(4) + "IsFoundAtIndex = ListIndex(*This\" + *This\Access + ")" + *Comments\LineFeed()
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
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeShort.s = ".q"
        
    EndSelect
    
    If *This\Type < #MEMBER_TYPE_OBJECT
      
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
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeShort.s = ".q"
        
    EndSelect
    
    If *This\Type < #MEMBER_TYPE_OBJECT
      
      Buffer.s = *Comments\Tabulation(1) + "Procedure" + TypeShort + " BinarySearch" + *This\Name + "(*This.Private_Members, " + *This\Name + *This\TypeLong + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "IsFoundAtIndex" + TypeShort + " = -1" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "StartPosition" + TypeShort + " = 0" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "MiddlePosition" + TypeShort + " = 0" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "EndPosition" + TypeShort + " = ListSize(*This\" + *This\Access + ") - 1" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "While StartPosition <= EndPosition" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "MiddlePosition = (StartPosition + EndPosition + 1) >> 1" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "SelectElement(*This\" + *This\Access + ", MiddlePosition)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
     
      If *This\Type <= #MEMBER_TYPE_STRING01
        Buffer + *Comments\Tabulation(3) + "If " + *This\Name + " < *This\" + *This\Access + *Comments\LineFeed()
      Else
        Buffer + *Comments\Tabulation(3) + "If " + *This\Name + "$ < *This\" + *This\Access + *Comments\LineFeed()
      EndIf
      
      Buffer + *Comments\Tabulation(4) + "EndPosition = MiddlePosition - 1" + *Comments\LineFeed()
      
      If *This\Type <= #MEMBER_TYPE_STRING01
        Buffer + *Comments\Tabulation(3) + "ElseIf " + *This\Name + " > *This\" + *This\Access + *Comments\LineFeed()
      Else
        Buffer + *Comments\Tabulation(3) + "ElseIf " + *This\Name + "$ > *This\" + *This\Access + *Comments\LineFeed()
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
    Buffer + *Comments\Tabulation(2) + "RandomizeList(*This\" + *This\Access + ")" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeclareAdd(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = "Add" + *This\Name + "()"
        
      Case 1
        Buffer.s = "Data.i @Add" + *This\Name + "()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineAdd(*This.Private_Members, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure Add" + *This\Name + "(*This.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "AddElement(*This\" + *This\Access + ")" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeclareAddEx(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        If *This\Type = #MEMBER_TYPE_OBJECT Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C Or *This\Type = #MEMBER_TYPE_POINTER_C
          Buffer.s = "Add" + *This\Name + "Ex(*" + *This\Name + *This\TypeLong + ")"
        Else
          Buffer.s = "Add" + *This\Name + "Ex(" + *This\Name + *This\TypeLong + ")"
        EndIf
        
      Case 1
        Buffer.s = "Data.i @Add" + *This\Name + "Ex()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineAddEx(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT Or *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
      Buffer.s = *Comments\Tabulation(1) + "Procedure Add" + *This\Name + "Ex(*This.Private_Members, *" + *This\Name + *This\TypeLong + ")" + *Comments\LineFeed()
    Else
      Buffer.s = *Comments\Tabulation(1) + "Procedure Add" + *This\Name + "Ex(*This.Private_Members, " + *This\Name + *This\TypeLong + ")" + *Comments\LineFeed()
    EndIf
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "AddElement(*This\" + *This\Access + ")" + *Comments\LineFeed()
    
    If *This\Type = #MEMBER_TYPE_OBJECT Or *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
      Buffer + *Comments\Tabulation(2) + "*This\" + *This\Access + " = *" + *This\Name + *Comments\LineFeed()
    Else
      Buffer + *Comments\Tabulation(2) + "*This\" + *This\Access + " = " + *This\Name + *Comments\LineFeed()
    EndIf
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure

  Procedure.s GenerateDeclareInsert(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = "Insert" + *This\Name + "()"
        
      Case 1
        Buffer.s = "Data.i @Insert" + *This\Name + "()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineInsert(*This.Private_Members, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure Insert" + *This\Name + "(*This.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "InsertElement(*This\" + *This\Access + ")" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeclareInsertEx(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        If *This\Type = #MEMBER_TYPE_OBJECT Or *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
          Buffer.s = "Insert" + *This\Name + "Ex(*" + *This\Name + *This\TypeLong + ")"
        Else
          Buffer.s = "Insert" + *This\Name + "Ex(" + *This\Name + *This\TypeLong + ")"
        EndIf
        
      Case 1
        Buffer.s = "Data.i @Insert" + *This\Name + "Ex()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineInsertEx(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT Or *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
      Buffer.s = *Comments\Tabulation(1) + "Procedure Insert" + *This\Name + "Ex(*This.Private_Members, *" + *This\Name + *This\TypeLong + ")" + *Comments\LineFeed()
    Else
      Buffer.s = *Comments\Tabulation(1) + "Procedure Insert" + *This\Name + "Ex(*This.Private_Members, " + *This\Name + *This\TypeLong + ")" + *Comments\LineFeed()
    EndIf
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "InsertElement(*This\" + *This\Access + ")" + *Comments\LineFeed()
    
    If *This\Type = #MEMBER_TYPE_OBJECT Or *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
      Buffer + *Comments\Tabulation(2) + "*This\" + *This\Access + " = *" + *This\Name + *Comments\LineFeed()
    Else
      Buffer + *Comments\Tabulation(2) + "*This\" + *This\Access + " = " + *This\Name + *Comments\LineFeed()
    EndIf
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeclareSelect(*This.Private_Members, Mode.i, *Rules.Rules::Rules)
    
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
        Buffer.s = "Select" + *This\Name + ".i(Index" + TypeShort + ")"
        
      Case 1
        Buffer.s = "Data.i @Select" + *This\Name + "()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineSelect(*This.Private_Members, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeShort.s = ".q"
        
    EndSelect
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure.i Select" + *This\Name + "(*This.Private_Members, Index" + TypeShort + ")" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ProcedureReturn SelectElement(*This\" + *This\Access + ", Index)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeclareFirst(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = "First" + *This\Name + ".i()"
        
      Case 1
        Buffer.s = "Data.i @First" + *This\Name + "()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineFirst(*This.Private_Members, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure.i First" + *This\Name + "(*This.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ProcedureReturn FirstElement(*This\" + *This\Access + ")" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeclareLast(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = "Last" + *This\Name + ".i()"
        
      Case 1
        Buffer.s = "Data.i @Last" + *This\Name + "()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineLast(*This.Private_Members, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure.i Last" + *This\Name + "(*This.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ProcedureReturn LastElement(*This\" + *This\Access + ")" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeclarePrevious(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = "Previous" + *This\Name + ".i()"
        
      Case 1
        Buffer.s = "Data.i @Previous" + *This\Name + "()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefinePrevious(*This.Private_Members, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure.i Previous" + *This\Name + "(*This.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ProcedureReturn PreviousElement(*This\" + *This\Access + ")" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeclareNext(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = "Next" + *This\Name + ".i()"
        
      Case 1
        Buffer.s = "Data.i @Next" + *This\Name + "()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineNext(*This.Private_Members, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure.i Next" + *This\Name + "(*This.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ProcedureReturn NextElement(*This\" + *This\Access + ")" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeclareDelete(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = "Delete" + *This\Name + "()"
        
      Case 1
        Buffer.s = "Data.i @Delete" + *This\Name + "()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineDelete(*This.Private_Members, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure Delete" + *This\Name + "(*This.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    
    If *this\Type = #MEMBER_TYPE_OBJECT
      Buffer + *Comments\Tabulation(2) + "If *This\" + *This\Access + " <> #Null" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "*This\" + *This\Access + "\Free()" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    EndIf
  
    Buffer + *Comments\Tabulation(2) + "DeleteElement(*This\" + *This\Access + ")" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeclareReset(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = "Reset" + *This\Name + "()"
        
      Case 1
        Buffer.s = "Data.i @Reset" + *This\Name + "()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineReset(*This.Private_Members, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure Reset" + *This\Name + "(*This.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ResetList(*This\" + *This\Access + ")" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDeclareClear(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = "Clear" + *This\Name + "()"
        
      Case 1
        Buffer.s = "Data.i @Clear" + *This\Name + "()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineClear(*This.Private_Members, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure Clear" + *This\Name + "(*This.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    
    If *this\Type = #MEMBER_TYPE_OBJECT
      Buffer + *Comments\Tabulation(2) + "ForEach *This\" + *This\Access + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "If *This\" + *This\Access + " <> #Null" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(4) + "*This\" + *This\Access + "\Free()" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(3) + "EndIf" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "Next" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    EndIf

    Buffer + *Comments\Tabulation(2) + "ClearList(*This\" + *This\Access + ")" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure 
  
  Procedure.s GenerateDeclareIndex(*This.Private_Members, Mode.i, *Rules.Rules::Rules)
    
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
        Buffer.s = *This\Name + "Index" + TypeShort + "()"
        
      Case 1
        Buffer.s = "Data.i @" + *This\Name + "Index()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineIndex(*This.Private_Members, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeShort.s = ".l"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeShort.s = ".i"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeShort.s = ".q"
        
    EndSelect
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure" + TypeShort + " " + *This\Name + "Index(*This.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ProcedureReturn ListIndex(*This\" + *This\Access + ")" + *Comments\LineFeed()
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
        Buffer.s = *This\Name + "Size" + TypeShort + "()"
        
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
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure" + TypeShort + " " + *This\Name + "Size(*This.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ProcedureReturn ListSize(*This\" + *This\Access + ")" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" +  *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure

  Procedure.s GenerateDeclareMerge(*This.Private_Members, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = "Merge" + *This\Name + "(*Other, Location.i = #PB_List_Last)"
        
      Case 1
        Buffer.s = "Data.i @Merge" + *This\Name + "()"
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDefineMerge(*This.Private_Members, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure Merge" + *This\Name + "(*This.Private_Members, *Other.Private_Members, Location.i = #PB_List_Last)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "MergeLists(*Other\" + *This\Access + ", *This\" + *This\Access + ", Location)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
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
    
    Instruction.s = *Comments\Tabulation(TabSize) + *This\Name + "_Max" + TypeShort + " = Read" + TypeLong + "(FileID) - 1" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + "For " + *This\Name + "ID" + TypeShort + " = 0 To " + *This\Name + "_Max" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize + 1) + "AddElement(*This\" + *This\Access + ")" + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadByte(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_ASCII
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadAsciiCharacter(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_UNICODE
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadUnicodeCharacter(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_CHARACTER
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadCharacter(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadInteger(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_WORD
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadWord(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_LONG
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadLong(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadQuad(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadFloat(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadDouble(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadString(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + StringField(*This\TypeShort, 1, "::") + "::New()"+ *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\Read" + StringField(*This\TypeShort, 2, "::") + "(FileID)" + *Comments\LineFeed()   
        
    EndSelect
    
    Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()

    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateWriteBinaryInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeLong.s = "Long"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeLong.s = "Integer"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeLong.s = "Quad"
        
    EndSelect
   
    Instruction.s = *Comments\Tabulation(TabSize) + "Write" + TypeLong + "(FileID, ListSize(*This\" + *This\Access + "))" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + "ForEach *This\" + *This\Access + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE
        Instruction + *Comments\Tabulation(TabSize + 1) + "WriteByte(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_ASCII
        Instruction + *Comments\Tabulation(TabSize + 1) + "WriteAsciiCharacter(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_UNICODE
        Instruction + *Comments\Tabulation(TabSize + 1) + "WriteUnicodeCharacter(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_CHARACTER
        Instruction + *Comments\Tabulation(TabSize + 1) + "WriteCharacter(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction + *Comments\Tabulation(TabSize + 1) + "WriteInteger(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_WORD
        Instruction + *Comments\Tabulation(TabSize + 1) + "WriteWord(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_LONG
        Instruction + *Comments\Tabulation(TabSize + 1) + "WriteLong(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(TabSize + 1) + "WriteQuad(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(TabSize + 1) + "WriteFloat(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(TabSize + 1) + "WriteDouble(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(TabSize + 1) + "WriteStringN(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\Write" + StringField(*This\TypeShort, 3, ":") + "(FileID)" + *Comments\LineFeed()   
        
    EndSelect
    
    Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()

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
    
    Instruction.s = *Comments\Tabulation(TabSize) + *This\Name + "_Max" + TypeShort + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "Read" + TypeLong + "(FileID) - 1" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + "For " + *This\Name + "ID" + TypeShort + " = 0 To " + *This\Name + "_Max" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize + 1) + "AddElement(*This\" + *This\Access + ")" + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadByte(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_ASCII
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadAsciiCharacter(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_UNICODE
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadUnicodeCharacter(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_CHARACTER
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadCharacter(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadInteger(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_WORD
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadWord(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_LONG
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadLong(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadQuad(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadFloat(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadDouble(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadString(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + StringField(*This\TypeShort, 1, "::") + "::New()" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\" + *CustomFileLib\GetPrefix() + "Read" + StringField(*This\TypeShort, 2, "::") + "(FileID, " + Pointer + "CustomLib)" + *Comments\LineFeed()   
        
    EndSelect
    
    Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()

    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateWriteEncodedCryptedInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Pointer.s, *CustomFileLib.CustomFileLib::CustomFileLib, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeLong.s = "Long"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeLong.s = "Integer"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeLong.s = "Quad"
        
    EndSelect
    
    Instruction.s = *Comments\Tabulation(TabSize) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "Write" + TypeLong + "(FileID, ListSize(*This\" + *This\Access + "))" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + "ForEach *This\" + *This\Access + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE
        Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteByte(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_ASCII
        Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteAsciiCharacter(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_UNICODE
        Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteUnicodeCharacter(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_CHARACTER
        Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteCharacter(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteInteger(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_WORD
        Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteWord(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_LONG
        Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteLong(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteQuad(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteFloat(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteDouble(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteString(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\" + *CustomFileLib\GetPrefix() + "Write" + StringField(*This\TypeShort, 3, ":") + "(FileID, " + Pointer + "CustomLib)" + *Comments\LineFeed()   
        
    EndSelect
    
    Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()

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
    
    Instruction.s = *Comments\Tabulation(TabSize) + *This\Name + "_Max" + TypeShort + " = ReadPreference" + TypeLong + "(" + Chr(34) + *This\Name + "_Max" + Chr(34) + ", 0) - 1" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + "For " + *This\Name + "ID" + TypeShort + " = 0 To " + *This\Name + "_Max" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize + 1) + "AddElement(*This\" + *This\Access + ")" + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE To #MEMBER_TYPE_CHARACTER, #MEMBER_TYPE_WORD, #MEMBER_TYPE_LONG
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadPreferenceLong(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadPreferenceInteger(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadPreferenceQuad(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadPreferenceFloat(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadPreferenceDouble(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = ReadPreferenceString(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + StringField(*This\TypeShort, 1, "::") + "::New()"+ *Comments\LineFeed()
          Instruction + *Comments\Tabulation(TabSize + 1) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + StringField(*This\TypeShort, 1, "::") + "::New()"+ *Comments\LineFeed()
          Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\ReadPrefs(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID))" + *Comments\LineFeed()
        EndIf
        
    EndSelect
    
    Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()

    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateWritePrefsInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Mode.i, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeLong.s = "Long"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeLong.s = "Integer"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeLong.s = "Quad"
        
    EndSelect
    
    Instruction.s = *Comments\Tabulation(TabSize) + "WritePreference" + TypeLong + "(" + Chr(34) + *This\Name + "_Max" + Chr(34) + ", ListSize(*This\" + *This\Access + "))" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + "ForEach *This\" + *This\Access + *Comments\LineFeed()

    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE To #MEMBER_TYPE_CHARACTER, #MEMBER_TYPE_WORD, #MEMBER_TYPE_LONG
        Instruction + *Comments\Tabulation(TabSize+1) + "WritePreferenceLong(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction + *Comments\Tabulation(TabSize+1) + "WritePreferenceInteger(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(TabSize+1) + "WritePreferenceQuad(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(TabSize+1) + "WritePreferenceFloat(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(TabSize+1) + "WritePreferenceDouble(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(TabSize+1) + "WritePreferenceString(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize+1) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
        Else
          Instruction + *Comments\Tabulation(TabSize+1) + "*This\" + *This\Access + "\WritePrefs(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")))" + *Comments\LineFeed()
        EndIf
        
    EndSelect
    
    Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()

    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateXMLSetNodeInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    Instruction.s = *Comments\Tabulation(2) + "FieldNode = CreateXMLNode(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + "SetXMLAttribute(FieldNode, " + Chr(34) + "ElementCount" + Chr(34) + ", Str(ListSize(*This\" + *This\Access + ")))" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(2) + "ForEach *This\" + *This\Access + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE, #MEMBER_TYPE_CHARACTER, #MEMBER_TYPE_INTEGER, #MEMBER_TYPE_WORD, #MEMBER_TYPE_LONG, #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(3) + "ElementNode = CreateXMLNode(FieldNode, " + Chr(34) + "Element" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLAttribute(ElementNode, " + Chr(34) + "ID" + Chr(34) + ", Str(ListIndex(*This\" + *This\Access + ")))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLNodeText(ElementNode, Str(*This\" + *This\Access + "))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_ASCII
        Instruction + *Comments\Tabulation(3) + "ElementNode = CreateXMLNode(FieldNode, " + Chr(34) + "Element" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLAttribute(ElementNode, " + Chr(34) + "ID" + Chr(34) + ", Str(ListIndex(*This\" + *This\Access + ")))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLNodeText(ElementNode, StrU(*This\" + *This\Access + ", #PB_Ascii))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_UNICODE
        Instruction + *Comments\Tabulation(3) + "ElementNode = CreateXMLNode(FieldNode, " + Chr(34) + "Element" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLAttribute(ElementNode, " + Chr(34) + "ID" + Chr(34) + ", Str(ListIndex(*This\" + *This\Access + ")))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLNodeText(ElementNode, StrU(*This\" + *This\Access + ", #PB_Unicode))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(3) + "ElementNode = CreateXMLNode(FieldNode, " + Chr(34) + "Element" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLAttribute(ElementNode, " + Chr(34) + "ID" + Chr(34) + ", Str(ListIndex(*This\" + *This\Access + ")))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLNodeText(ElementNode, StrF(*This\" + *This\Access + ", 12))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(3) + "ElementNode = CreateXMLNode(FieldNode, " + Chr(34) + "Element" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLAttribute(ElementNode, " + Chr(34) + "ID" + Chr(34) + ", Str(ListIndex(*This\" + *This\Access + ")))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLNodeText(ElementNode, StrD(*This\" + *This\Access + ", 24))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(3) + "ElementNode = CreateXMLNode(FieldNode, " + Chr(34) + "Element" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLAttribute(ElementNode, " + Chr(34) + "ID" + Chr(34) + ", Str(ListIndex(*This\" + *This\Access + ")))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLNodeText(ElementNode, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction + *Comments\Tabulation(3) + "ElementNode = CreateXMLNode(FieldNode, " + Chr(34) + "Element" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "SetXMLAttribute(ElementNode, " + Chr(34) + "ID" + Chr(34) + ", Str(ListIndex(*This\" + *This\Access + ")))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(3) + "*This\" + *This\Access + "\XML_SetNode(ElementNode)" + *Comments\LineFeed()   
        Instruction + *Comments\Tabulation(3) + "; *This\" + *This\Access + "\XML_SetAttribute(ElementNode)" + *Comments\LineFeed() 
        Instruction + *Comments\Tabulation(3) + "; *This\" + *This\Access + "\XML_AddAttribute(ElementNode)" + *Comments\LineFeed() 
        
    EndSelect
    
    Instruction + *Comments\Tabulation(2) + "Next" + *Comments\LineFeed()
    
    
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
    Instruction + *Comments\Tabulation(6) + *This\Name + "_Max" + TypeShort + " = Val(GetXMLAttribute(FieldNode, " + Chr(34) + "ElementCount" + Chr(34) + ")) - 1" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(6) + *Comments\LineFeed()
    
    Instruction + *Comments\Tabulation(6) + "For " + *This\Name + "ID" + TypeShort + " = 0 To " + *This\Name + "_Max" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(7) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(7) + "ElementNode = ChildXMLNode(FieldNode, " + *This\Name + "ID + 1)" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(7) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(7) + "If GetXMLNodeName(ElementNode) = " + Chr(34) + "Element" + Chr(34) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(8) + "AddElement(*This\" + *This\Access + ")" + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE To #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(8) + "*This\" + *This\Access + " = Val(GetXMLNodeText(ElementNode))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(8) + "*This\" + *This\Access + " = ValF(GetXMLNodeText(ElementNode))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(8) + "*This\" + *This\Access + " = ValD(GetXMLNodeText(ElementNode))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(8) + "*This\" + *This\Access + " = GetXMLNodeText(ElementNode)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT
        Instruction + *Comments\Tabulation(8) + "*This\" + *This\Access + " = " + StringField(*This\TypeShort, 1, "::") + "::New()"+ *Comments\LineFeed()
        Instruction + *Comments\Tabulation(8) + "*This\" + *This\Access + "\XML_GetNode(ElementNode)" + *Comments\LineFeed()   
        Instruction + *Comments\Tabulation(8) + "; *This\" + *This\Access + "\XML_GetAttribute(ChildXMLNode(ElementNode), " + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed()  
        Instruction + *Comments\Tabulation(8) + "; *This\" + *This\Access + "\XML_CollectAttribute(ElementNode)" + *Comments\LineFeed()  
        
    EndSelect
    
    Instruction + *Comments\Tabulation(7) + "EndIf" + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(7) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(6) + "Next" + *Comments\LineFeed()
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateJSONInsertInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(TabSize) + *This\Name + "Table.i = SetJSONArray(AddJSONMember(Object, " + Chr(34) +  *This\Name + Chr(34) + "))" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(TabSize) + "ForEach *This\" + *This\Access + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\JSON_Insert(AddJSONElement(" + *This\Name + "Table))" + *Comments\LineFeed() 
      Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()
    ElseIf *This\Type < #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(TabSize) + "InsertJSONList(SetJSONArray(AddJSONMember(Object, " + Chr(34) +  *This\Name + Chr(34) + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
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
      
      Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(TabSize + 1) + *This\Name + "Table.i = GetJSONMember(JSONValue, " + Chr(34) +  *This\Name + Chr(34)  + ")" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(TabSize + 1) + *This\Name + "TableMax" + TypeShort + " = JSONArraySize(" + *This\Name + "Table) - 1"
      Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
      
      Instruction + *Comments\Tabulation(TabSize + 1) + "For " + *This\Name + "TableID" + TypeShort + " = 0 To " + *This\Name + "TableMax" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + StringField(*This\TypeShort, 1, "::") + "::New()"+ *Comments\LineFeed()
      Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + "\JSON_Extract(GetJSONElement(" + *This\Name + "Table, " + *This\Name + "TableID))" + *Comments\LineFeed() 
      Instruction + *Comments\Tabulation(TabSize + 1) + "Next" + *Comments\LineFeed()
      
    ElseIf *This\Type < #MEMBER_TYPE_OBJECT
      Instruction + *Comments\Tabulation(TabSize + 1) + "ExtractJSONList(GetJSONMember(JSONValue, " + Chr(34) +  *This\Name + Chr(34) + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
    EndIf

    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateAddGroupPrefsInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s, *Rules.Rules::Rules)
    
    Select *Rules\GetDynamicDataSizeType()
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG
        TypeLong.s = "Long"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER
        TypeLong.s = "Integer"
        
      Case Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD
        TypeLong.s = "Quad"
        
    EndSelect
    
    If Mode = 0
      Instruction.s =  *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKey" + TypeLong + "(GroupName, " + Chr(34) + *This\Name + "_Max" + Chr(34) + ", ListSize(*This\" + *This\Access + "))" + *Comments\LineFeed()
    Else
      Instruction + *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKey" + TypeLong + "(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_Max" + Chr(34) + ", ListSize(*This\" + *This\Access + "))" + *Comments\LineFeed()
    EndIf
    
    Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
    Instruction + *Comments\Tabulation(TabSize) + "ForEach *This\" + *This\Access + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyByte(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyByte(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "_ID), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_ASCII
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyAscii(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyAscii(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_UNICODE
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyUnicode(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyUnicode(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_CHARACTER
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyCharacter(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyCharacter(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_INTEGER
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyInteger(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyInteger(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_WORD
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyWord(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyWord(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_LONG
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyLong(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyLong(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_QUAD
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyQuad(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyQuad(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_FLOAT
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyFloat(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyFloat(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_DOUBLE
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyDouble(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyDouble(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyString(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\AddKeyString(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_OBJECT 
        If Mode = 0
          Instruction + *Comments\Tabulation(TabSize + 1) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
        Else
          Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\AddPrefsGroup(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" +*This\Access + ")), " + Pointer + "CustomPrefs)" + *Comments\LineFeed()   
        EndIf
        
    EndSelect
    
    Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()
    
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
        
        Instruction.s = *Comments\Tabulation(TabSize) + *This\Name + "_Max" + TypeShort + " = " + Pointer + "CustomPrefs\GetValue" + TypeLong + "(GroupName, " + Chr(34) + *This\Name + "_Max" + Chr(34) + ") - 1" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "For " + *This\Name + "ID" + TypeShort + " = 0 To " + *This\Name + "_Max" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "If " + Pointer + "CustomPrefs\IsKey(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 2) + "AddElement(*This\" + *This\Access + ")" + *Comments\LineFeed()
        
        Select *This\Type
            
          Case #MEMBER_TYPE_BYTE
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueByte(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_ASCII  
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueAscii(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_UNICODE
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueUnicode(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_CHARACTER
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueCharacter(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_INTEGER 
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueInteger(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_WORD
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueWord(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_LONG
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueLong(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID), *This\" + *This\Access + ")" + *Comments\LineFeed()
           
          Case #MEMBER_TYPE_QUAD  
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueQuad(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_FLOAT
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueFloat(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_DOUBLE
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueDouble(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02  
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueString(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID), *This\" + *This\Access + ")" + *Comments\LineFeed()
            
        EndSelect
        
        Instruction + *Comments\Tabulation(TabSize + 1) + "EndIf" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()
        
      Else 
        
        Instruction = *Comments\Tabulation(TabSize) + "If " + Pointer + "CustomPrefs\IsGroup(" + Chr(34) + "Orphan" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + *This\Name + "_Max" + TypeShort + " = " + Pointer + "CustomPrefs\GetValue" + TypeLong + "(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_Max" + Chr(34) + ") - 1" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "For " + *This\Name + "ID" + TypeShort + " = 0 To " + *This\Name + "_Max" + *Comments\LineFeed() 
        Instruction + *Comments\Tabulation(TabSize + 2) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 2) + "If " + Pointer + "CustomPrefs\IsKey(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 3) + "AddElement(*This\" + *This\Access + ")" + *Comments\LineFeed()

        Select *This\Type
            
          Case #MEMBER_TYPE_BYTE
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueByte(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID))" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_ASCII
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueAscii(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID))" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_UNICODE
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueUnicode(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID))" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_CHARACTER
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueCharacter(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID))" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_INTEGER
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueInteger(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID))" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_WORD
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueWord(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID))" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_LONG
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueLong(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID))" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_QUAD
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueQuad(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID))" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_FLOAT
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueFloat(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID))" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_DOUBLE
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueDouble(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID))" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
            Instruction + *Comments\Tabulation(TabSize + 3) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueString(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID))" + *Comments\LineFeed()
            
        EndSelect
        
        Instruction + *Comments\Tabulation(TabSize + 2) + "EndIf" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 2) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "Next" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "EndIf" + *Comments\LineFeed()
        
      EndIf
      
    ElseIf *This\Type = #MEMBER_TYPE_OBJECT
      
      If Mode = 0
        Instruction = *Comments\Tabulation(TabSize) + *This\Name + "_Max" + TypeShort + " = " + Pointer + "CustomPrefs\GetValue" + TypeLong +"(GroupName, " + Chr(34) + *This\Name + "_Max" + Chr(34) + ") - 1" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "For " + *This\Name + "ID" + TypeShort + " = 0 To " + *This\Name + "_Max" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "AddElement(*This\" + *This\Access + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + StringField(*This\TypeShort, 1, "::") + "::New()"+ *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
        Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()
      Else
        Instruction + *Comments\Tabulation(TabSize) + *This\Name + "_Max" + TypeShort + " = " + Pointer + "CustomPrefs\GetValueLong(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_Max" + Chr(34) + ") - 1" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "For " + *This\Name + "ID" + TypeShort + " = 0 To " + *This\Name + "_Max" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "AddElement(*This\" + *This\Access + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + StringField(*This\TypeShort, 1, "::") + "::New()"+ *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\ExtractPrefsGroup(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID), " + Pointer + "CustomPrefs)" + *Comments\LineFeed()   
        Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()
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
        
        Instruction.s = *Comments\Tabulation(TabSize) + *This\Name + "_Max" + TypeShort + " = " + Pointer + "CustomPrefs\GetValue" + TypeLong + "(GroupName, " + Chr(34) + *This\Name + "_Max" + Chr(34) + ") - 1" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "New_" + *This\Name + "_Max" + TypeShort + " = ListSize(*This\" + *This\Access + ") - 1" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "If " + *This\Name + "_Max > New_" + *This\Name + "_Max" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "For " + *This\Name + "ID" + TypeShort + " = New_" + *This\Name + "_Max + 1 To " + *This\Name + "_Max" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\DeleteKey(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "ID))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "Next" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "EndIf" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\SetValueLong(GroupName, " + Chr(34) + *This\Name + "_Max" + Chr(34) + ", ListSize(*This\" + *This\Access + "))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "ForEach *This\" + *This\Access + *Comments\LineFeed()

        Select *This\Type
            
          Case #MEMBER_TYPE_BYTE
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueByte(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_ASCII  
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueAscii(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_UNICODE
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueUnicode(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_CHARACTER
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueCharacter(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
                    
          Case #MEMBER_TYPE_INTEGER 
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueInteger(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_WORD
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueWord(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_LONG
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueLong(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_QUAD  
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueQuad(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_FLOAT
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueFloat(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_DOUBLE
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueDouble(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02  
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueString(GroupName, " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
        EndSelect
        
        Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()
        
      Else 
        
        Instruction = *Comments\Tabulation(TabSize) + "If " + Pointer + "CustomPrefs\IsGroup(" + Chr(34) + "Orphan" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + *This\Name + "_Max" + TypeShort + " = " + Pointer + "CustomPrefs\GetValue" + TypeLong + "(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_Max" + Chr(34) + ") - 1" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "New_" + *This\Name + "_Max" + TypeShort + " = ListSize(*This\" + *This\Access + ") - 1" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "If " + *This\Name + "_Max > New_" + *This\Name + "_Max" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "For " + *This\Name + "ID" + TypeShort + " = New_" + *This\Name + "_Max + 1 To " + *This\Name + "_Max" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 3) + Pointer + "CustomPrefs\DeleteKey(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "_ID))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 2) + "Next" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "EndIf" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueLong(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_Max" + Chr(34) + ", ListSize(*This\" + *This\Access + "))" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "ForEach *This\" + *This\Access + *Comments\LineFeed()
        
        Select *This\Type
            
          Case #MEMBER_TYPE_BYTE
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueByte(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_ASCII  
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueAscii(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_UNICODE
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueUnicode(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_CHARACTER
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueCharacter(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
                    
          Case #MEMBER_TYPE_INTEGER 
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueInteger(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_WORD
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueWord(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_LONG
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueLong(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_QUAD  
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueQuad(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_FLOAT
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueFloat(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_DOUBLE
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueDouble(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02  
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueString(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(ListIndex(*This\" + *This\Access + ")), *This\" + *This\Access + ", #True)" + *Comments\LineFeed()
            
        EndSelect

        Instruction + *Comments\Tabulation(TabSize + 1) + "Next" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "EndIf" + *Comments\LineFeed()
        
      EndIf
      
    ElseIf *This\Type = #MEMBER_TYPE_OBJECT
      
      If Mode = 0
        Instruction = *Comments\Tabulation(TabSize) + *This\Name + "_Max" + TypeShort + " = " + Pointer + "CustomPrefs\GetValue" + TypeLong + "(GroupName, " + Chr(34) + *This\Name + "_Max" + Chr(34) + ") - 1" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "For " + *This\Name + "ID" + TypeShort + " = 0 To " + *This\Name + "_Max" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
        Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()
      Else
        Instruction + *Comments\Tabulation(TabSize) + *This\Name + "_Max" + TypeShort + " = " + Pointer + "CustomPrefs\GetValue" + TypeLong + "(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Name + "_Max" + Chr(34) + ") - 1" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "For " + *This\Name + "ID" + TypeShort + " = 0 To " + *This\Name + "_Max" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\RefreshPrefsGroup(" + Chr(34) + *This\Name + "_" + Chr(34) + " + Str(" + *This\Name + "_ID), " + Pointer + "CustomPrefs)" + *Comments\LineFeed()   
        Instruction + *Comments\Tabulation(TabSize) + "Next" + *Comments\LineFeed()
      EndIf
      
    EndIf

    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateDestructorInstruction(*This.Private_Members, *Comments.Comments::Comments, *SeparatorNeeded.Integer)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      
      Instruction.s = *Comments\Tabulation(2) + "ForEach *This\" + *This\Access + *Comments\LineFeed()
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

  Procedure.i New(Description.s, *StringUtilities.StringUtilities::StringUtilities, *FastCopy.Integer)

    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\Description = Description
    *FoolProofer.FoolProofer::FoolProofer = *StringUtilities\GetFoolProofer()
    
    NameDotType.s = *FoolProofer\GetListNameDotType(*This\Description)
    
    If FindString(NameDotType, ".") = 0
      
      *This\Name = NameDotType
      
      If Left(*This\Name, 1) = "*"
        *This\Name = Right(*This\Name, Len(*This\Name)-1)
        Type_Pointer_C = #True
        *This\TypeShort = ""
        *This\Access = *This\Name + "()"
      EndIf
      
      If Right(*This\Name, 1) = "$"
        *This\Name = Left(*This\Name, Len(*This\Name)-1)
        *This\TypeShort = "$"
        *This\Access = *This\Name + "$()"
      EndIf
      
    Else
      
      *This\Name = StringField(NameDotType, 1, ".")
      
      If Left(*This\Name, 1) = "*"
        *This\Name = Right(*This\Name, Len(*This\Name)-1)
        Type_Pointer_C = #True
      EndIf
      
      *This\Access = *This\Name + "()"
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
    Data.i @GetType()
    Data.i @GetTypeShort()
    Data.i @GetTypeLong()
    Data.i @GetZeroOut()
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
    Data.i @GenerateDeclareAdd()
    Data.i @GenerateDefineAdd()
    Data.i @GenerateDeclareAddEx()
    Data.i @GenerateDefineAddEx()
    Data.i @GenerateDeclareInsert()
    Data.i @GenerateDefineInsert()
    Data.i @GenerateDeclareInsertEx()
    Data.i @GenerateDefineInsertEx()
    Data.i @GenerateDeclareSelect()
    Data.i @GenerateDefineSelect()
    Data.i @GenerateDeclareFirst()
    Data.i @GenerateDefineFirst()
    Data.i @GenerateDeclareLast()
    Data.i @GenerateDefineLast()
    Data.i @GenerateDeclarePrevious()
    Data.i @GenerateDefinePrevious()      
    Data.i @GenerateDeclareNext()
    Data.i @GenerateDefineNext()      
    Data.i @GenerateDeclareDelete()
    Data.i @GenerateDefineDelete()      
    Data.i @GenerateDeclareReset()
    Data.i @GenerateDefineReset()   
    Data.i @GenerateDeclareClear()
    Data.i @GenerateDefineClear()   
    Data.i @GenerateDeclareIndex()
    Data.i @GenerateDefineIndex()  
    Data.i @GenerateDeclareSize()
    Data.i @GenerateDefineSize()  
    Data.i @GenerateDeclareMerge()
    Data.i @GenerateDefineMerge() 
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
    Data.i @GenerateDestructorInstruction()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (195000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = -APABmBAAAAH9
; EnableXP
; CompileSourceDirectory