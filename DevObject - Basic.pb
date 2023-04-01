; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.0.1
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - Basic.pb
; Version du fichier : 1.5.4
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 11-04-2019
; Mise à jour : 08-11-2022
; Codé pour PureBasic : V6.00 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule Basic

  Interface Basic

    GetDescription.s()
    GetName.s()
    GetAccess.s()
    GetType.i()
    GetTypeShort.s()
    GetTypeLong.s()
    GetZeroOut.s()
    GetExtraInfo.s()
    GenerateDeclareGetter.s(Mode.i)
    GenerateDefineGetter.s(*Comments.Comments::Comments)
    GenerateDeclareSetter.s(Mode.i)
    GenerateDefineSetter.s(*Comments.Comments::Comments)
    GenerateUpdateInstruction.s(*Comments.Comments::Comments, ItIsTheLast.i)
    GenerateResetInstruction.s(*Comments.Comments::Comments, *SeparatorNeeded.Integer)
    GenerateClearInstruction.s(*Comments.Comments::Comments, *SeparatorNeeded.Integer)
    GenerateEqualInstruction.s(*Comments.Comments::Comments)
    GeneratePlusInstruction.s(*Comments.Comments::Comments)
    GenerateMinusInstruction.s(*Comments.Comments::Comments)
    GenerateAddInstruction.s(*Comments.Comments::Comments)
    GenerateAddScaledInstruction.s(*Comments.Comments::Comments)
    GenerateSubtractInstruction.s(*Comments.Comments::Comments)
    GenerateProductInstruction.s(*Comments.Comments::Comments)
    GenerateDivideInstruction.s(*Comments.Comments::Comments)
    GenerateAddScalarInstruction.s(*Comments.Comments::Comments)
    GenerateSubtractScalarInstruction.s(*Comments.Comments::Comments)
    GenerateProductByScalarInstruction.s(*Comments.Comments::Comments)
    GenerateDivideByScalarInstruction.s(*Comments.Comments::Comments)
    GenerateLerpInstruction.s(*Comments.Comments::Comments)
    GenerateCopyInstruction.s(*Comments.Comments::Comments)
    GenerateCompareInstruction.s(*Comments.Comments::Comments)
    GenerateSwappingInstruction.s(*Comments.Comments::Comments)
    GenerateReadBinaryInstruction.s(*Comments.Comments::Comments, TabSize.i)
    GenerateWriteBinaryInstruction.s(*Comments.Comments::Comments, TabSize.i)
    GenerateReadEncodedCryptedInstruction.s(*Comments.Comments::Comments, TabSize.i, Pointer.s, *CustomFileLib.CustomFileLib::CustomFileLib)
    GenerateWriteEncodedCryptedInstruction.s(*Comments.Comments::Comments, TabSize.i, Pointer.s, *CustomFileLib.CustomFileLib::CustomFileLib)
    GenerateReadPrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i)
    GenerateWritePrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i)
    GenerateXMLSetNodeInstruction.s(*Comments.Comments::Comments)
    GenerateXMLGetNodeInstruction.s(*Comments.Comments::Comments)
    GenerateXMLSetAttributeInstruction.s(*Comments.Comments::Comments)
    GenerateXMLGetAttributeInstruction.s(*Comments.Comments::Comments)
    GenerateXMLAddAttributeInstruction.s(*Comments.Comments::Comments)
    GenerateXMLCollectAttributeInstruction.s(*Comments.Comments::Comments)
    
    GenerateJSONInsertInstruction.s(*Comments.Comments::Comments, TabSize.i)
    GenerateJSONExtractInstruction.s(*Comments.Comments::Comments, TabSize.i)

    GenerateAddGroupPrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s)
    GenerateExtractGroupPrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s)
    GenerateRefreshGroupPrefsInstruction.s(*Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s)
    GenerateConstructorInstruction.s(*Comments.Comments::Comments, Mode.i, *SeparatorNeeded.Integer)
    GenerateDestructorInstruction.s(*Comments.Comments::Comments, *SeparatorNeeded.Integer)
    Free()

  EndInterface

  Declare.i New(Description.s, *StringUtilities.StringUtilities::StringUtilities, *DynamicObject.Integer, *FastCopy.Integer)

EndDeclareModule

Module Basic
  
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
    ExtraInfo.s
  
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

  Procedure.s GetExtraInfo(*This.Private_Members)

    ProcedureReturn *This\ExtraInfo
  EndProcedure

  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
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
    ElseIf *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C Or *This\Type = #MEMBER_TYPE_POINTER_C
      Buffer.s = *Comments\Tabulation(1) + "Procedure Set" + *This\Name + "(*This.Private_Members, *" + *This\Name + *This\TypeLong + ")"  + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "*This\" + *This\Access + " = *" + *This\Name + *Comments\LineFeed()
    ElseIf *This\Type = #MEMBER_TYPE_DATA_POINTER_C 
      Buffer.s = *Comments\Tabulation(1) + "Procedure Set" + *This\Name + "(*This.Private_Members, *" + *This\Name + ")"  + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "If *This\" + *This\Access + " <> #Null" + *Comments\LineFeed() 
      Buffer + *Comments\Tabulation(3) + "FreeMemory(*This\" + *This\Access + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed() 
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
  
  Procedure.s GenerateUpdateInstruction(*This.Private_Members, *Comments.Comments::Comments, ItIsTheLast.i)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      
      Instruction.s = *Comments\Tabulation(2) + "If *This\" + *This\Access + " <> #Null" + *Comments\LineFeed() 
      Instruction + *Comments\Tabulation(3) + "*This\" + *This\Access + "\Free()" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed() 
      Instruction + *Comments\Tabulation(2) + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(2) + "*This\" + *This\Access + " = *" + *This\Name + *Comments\LineFeed()
      
      If ItIsTheLast = #False
        Instruction + *Comments\Tabulation(2) + *Comments\LineFeed()
      EndIf
      
    ElseIf *This\Type = #MEMBER_TYPE_DATA_POINTER_C
      Instruction = *Comments\Tabulation(2) + "If *This\" + *This\Access + " <> " + *This\ZeroOut + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(3) + "FreeMemory(*This\" + *This\Access + ")" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(2) + "*This\" + *This\Access + " = *" + *This\Name + *Comments\LineFeed()
      
      If ItIsTheLast = #False
        Instruction + *Comments\Tabulation(2) + *Comments\LineFeed()
      EndIf
      
    ElseIf *This\Type = #MEMBER_TYPE_STRING02
      Instruction = *Comments\Tabulation(2) + "*This\" + *This\Access + " = " + *This\Name + *This\TypeLong + *Comments\LineFeed()
    Else
      Instruction = *Comments\Tabulation(2) + "*This\" + *This\Access + " = " + *This\Name + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure

  Procedure.s GenerateResetInstruction(*This.Private_Members, *Comments.Comments::Comments, *SeparatorNeeded.Integer)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "*This\" + *This\Access + "\Reset()" + *Comments\LineFeed() 
      *SeparatorNeeded\i = #False
    ElseIf *This\Type = #MEMBER_TYPE_DATA_POINTER_C
      Instruction + *Comments\Tabulation(2) + "If *This\" + *This\Access + " <> " + *This\ZeroOut + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(3) + "FreeMemory(*This\" + *This\Access + ")" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(3) + "*This\" + *This\Access + " = " + *This\ZeroOut + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
      *SeparatorNeeded\i = #True
    Else
      Instruction = *Comments\Tabulation(2) + "*This\" + *This\Access + " = " + *This\ZeroOut + *Comments\LineFeed()
      *SeparatorNeeded\i = #False
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateClearInstruction(*This.Private_Members, *Comments.Comments::Comments, *SeparatorNeeded.Integer)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "*This\" + *This\Access + "\Clear()" + *Comments\LineFeed()    
      *SeparatorNeeded\i = #False
    ElseIf *This\Type = #MEMBER_TYPE_DATA_POINTER_C
      Instruction = *Comments\Tabulation(2) + "If *This\" + *This\Access + " <> " + *This\ZeroOut + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(3) + "FreeMemory(*This\" + *This\Access + ")" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(3) + "*This\" + *This\Access + " = " + *This\ZeroOut + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
      *SeparatorNeeded\i = #True
    Else
      Instruction = *Comments\Tabulation(2) + "*This\" + *This\Access + " = " + *This\ZeroOut + *Comments\LineFeed()
      *SeparatorNeeded\i = #False
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateEqualInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "*This\" + *This\Access + "\Equal(*Other\" + *This\Access + ")" + *Comments\LineFeed()    
    Else
      Instruction = *Comments\Tabulation(2) + "*This\" + *This\Access + " = *Other\" + *This\Access + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GeneratePlusInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "*This\" + *This\Access + "\Plus(*Other\" + *This\Access + ")" + *Comments\LineFeed()    
    Else
      Instruction = *Comments\Tabulation(2) + "*Result\" + *This\Access + " = *This\" + *This\Access + " + *Other\" + *This\Access + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateMinusInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "*This\" + *This\Access + "\Minus(*Other\" + *This\Access + ")" + *Comments\LineFeed()    
    Else
      Instruction = *Comments\Tabulation(2) + "*Result\" + *This\Access + " = *This\" + *This\Access + " - *Other\" + *This\Access + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateAddInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "*This\" + *This\Access + "\Add(*Other\" + *This\Access + ")" + *Comments\LineFeed()    
    Else
      Instruction = *Comments\Tabulation(2) + "*This\" + *This\Access + " + *Other\" + *This\Access + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateAddScaledInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "; NOT SUPPORTED YET" + *Comments\LineFeed()    
    Else
      Instruction = *Comments\Tabulation(2) + "*This\" + *This\Access + " + *Other\" + *This\Access + " * Scale" + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateSubtractInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "*This\" + *This\Access + "\Subtract(*Other\" + *This\Access + ")" + *Comments\LineFeed()    
    Else
      Instruction = *Comments\Tabulation(2) + "*This\" + *This\Access + " - *Other\" + *This\Access + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateProductInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "*This\" + *This\Access + "\Product(*Other\" + *This\Access + ")" + *Comments\LineFeed()    
    Else
      Instruction = *Comments\Tabulation(2) + "*Result\" + *This\Access + " = *This\" + *This\Access + " * *Other\" + *This\Access + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateDivideInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "*This\" + *This\Access + "\Divide(*Other\" + *This\Access + ")" + *Comments\LineFeed()    
    Else
      Instruction = *Comments\Tabulation(2) + "*Result\" + *This\Access + " = *This\" + *This\Access + " / *Other\" + *This\Access + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateAddScalarInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "; NOT SUPPORTED YET" + *Comments\LineFeed()    
    Else
      Instruction = *Comments\Tabulation(2) + "*This\" + *This\Access + " + Scalar" + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateSubtractScalarInstruction(*This.Private_Members, *Comments.Comments::Comments)

    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "; NOT SUPPORTED YET" + *Comments\LineFeed()    
    Else
      Instruction = *Comments\Tabulation(2) + "*This\" + *This\Access + " - Scalar" + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateProductByScalarInstruction(*This.Private_Members, *Comments.Comments::Comments)

    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "; NOT SUPPORTED YET" + *Comments\LineFeed()    
    Else
      Instruction = *Comments\Tabulation(2) + "*This\" + *This\Access + " * Scalar" + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateDivideByScalarInstruction(*This.Private_Members, *Comments.Comments::Comments)

    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "; NOT SUPPORTED YET" + *Comments\LineFeed()    
    Else
      Instruction = *Comments\Tabulation(2) + "*This\" + *This\Access + " / Scalar" + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateLerpInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "; NOT SUPPORTED YET" + *Comments\LineFeed()    
    Else
      Instruction = *Comments\Tabulation(2) + "*Result\" + *This\Access + " = *This\" + *This\Access + " + Proportion * (*Other\" + *This\Access + " - *This\" + *This\Access + ")" + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateCopyInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "*Copy\" + *This\Access + " = *This\" + *This\Access + "\Copy()" + *Comments\LineFeed() 
    ElseIf *This\Type = #MEMBER_TYPE_DATA_POINTER_C
      SizeMemberName.s = Trim(StringField(*This\ExtraInfo, 2, ","))
      Instruction = *Comments\Tabulation(2) + "Allocate" + *This\Name + "Memory(*Copy)" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(2) + "CopyMemory(*This\" + *This\Access + ", *Copy\" + *This\Access + ", *This\" + SizeMemberName + ")" + *Comments\LineFeed()
    Else
      Instruction = *Comments\Tabulation(2) + "*Copy\" + *This\Access + " = *This\" + *This\Access + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateCompareInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "If *This\" + *This\Access + "\Compare(*Other\" + *This\Access + ") = #False" + *Comments\LineFeed() 
      Instruction + *Comments\Tabulation(3) + "ProcedureReturn #False" + *Comments\LineFeed() 
      Instruction + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed() 
    ElseIf *This\Type = #MEMBER_TYPE_DATA_POINTER_C
      SizeMemberName.s = Trim(StringField(*This\ExtraInfo, 2, ","))
      Instruction.s = *Comments\Tabulation(2) + "If *This\" + SizeMemberName + " = *Other\" + SizeMemberName + " And CompareMemory(*This\" + *This\Access + ", *Other\" + *This\Access + ", *This\" + SizeMemberName + ") = 0" + *Comments\LineFeed() 
      Instruction + *Comments\Tabulation(3) + "ProcedureReturn #False" + *Comments\LineFeed() 
      Instruction + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed() 
    Else
      Instruction.s = *Comments\Tabulation(2) + "If *This\" + *This\Access + " <> *Other\" + *This\Access + *Comments\LineFeed() 
      Instruction + *Comments\Tabulation(3) + "ProcedureReturn #False" + *Comments\LineFeed() 
      Instruction + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed() 
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateSwappingInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      Instruction.s = *Comments\Tabulation(2) + "*This\" + *This\Access + "\Swapping(*Other\" + *This\Access + ")" + *Comments\LineFeed()    
    Else
      Instruction.s = *Comments\Tabulation(2) + "Swap *This\" + *This\Access + ", *Other\" + *This\Access + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateReadBinaryInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i)
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE
        Instruction.s = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = ReadByte(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_ASCII
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = ReadAsciiCharacter(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_UNICODE
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = ReadUnicodeCharacter(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_CHARACTER
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = ReadCharacter(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = ReadInteger(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_WORD
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = ReadWord(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_LONG
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = ReadLong(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = ReadQuad(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = ReadFloat(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = ReadDouble(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = ReadString(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + "\Read" + StringField(*This\TypeShort, 3, ":") + "(FileID)" + *Comments\LineFeed()   
        
      Case #MEMBER_TYPE_DATA_POINTER_C
        SizeMemberName.s = Trim(StringField(*This\ExtraInfo, 2, ","))
        Instruction = *Comments\Tabulation(TabSize) + "Allocate" + *This\Name + "Memory(*This)" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) + "ReadData(FileID, *This\" + *This\Access + ", *This\" + SizeMemberName + ")" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Instruction
  EndProcedure
 
  Procedure.s GenerateWriteBinaryInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i)
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE
        Instruction.s = *Comments\Tabulation(TabSize) + "WriteByte(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_ASCII
        Instruction = *Comments\Tabulation(TabSize) + "WriteAsciiCharacter(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_UNICODE
        Instruction = *Comments\Tabulation(TabSize) + "WriteUnicodeCharacter(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_CHARACTER
        Instruction = *Comments\Tabulation(TabSize) + "WriteCharacter(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction = *Comments\Tabulation(TabSize) + "WriteInteger(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_WORD
        Instruction = *Comments\Tabulation(TabSize) + "WriteWord(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_LONG
        Instruction = *Comments\Tabulation(TabSize) + "WriteLong(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction = *Comments\Tabulation(TabSize) + "WriteQuad(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction = *Comments\Tabulation(TabSize) + "WriteFloat(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction = *Comments\Tabulation(TabSize) + "WriteDouble(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction = *Comments\Tabulation(TabSize) + "WriteStringN(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + "\Write" + StringField(*This\TypeShort, 3, ":") + "(FileID)" + *Comments\LineFeed()   
        
      Case #MEMBER_TYPE_DATA_POINTER_C
        SizeMemberName.s = Trim(StringField(*This\ExtraInfo, 2, ","))
        Instruction = *Comments\Tabulation(TabSize) + "WriteData(FileID, *This\" + *This\Access + ", *This\" + SizeMemberName + ")" + *Comments\LineFeed()
        
    EndSelect

    ProcedureReturn Instruction
  EndProcedure

  Procedure.s GenerateReadEncodedCryptedInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Pointer.s, *CustomFileLib.CustomFileLib::CustomFileLib)
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE
        Instruction.s = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadByte(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_ASCII
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadAsciiCharacter(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_UNICODE
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadUnicodeCharacter(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_CHARACTER
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadCharacter(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadInteger(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_WORD
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadWord(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_LONG
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadLong(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadQuad(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadFloat(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadDouble(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = " + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadString(FileID)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + "\" + *CustomFileLib\GetPrefix() + "Read" + StringField(*This\TypeShort, 3, ":") + "(FileID, " + Pointer + "CustomLib)" + *Comments\LineFeed()   
        
      Case #MEMBER_TYPE_DATA_POINTER_C
        SizeMemberName.s = Trim(StringField(*This\ExtraInfo, 2, ","))
        Instruction = *Comments\Tabulation(TabSize) + "Allocate" + *This\Name + "Memory(*This)" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize) +  Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "ReadData(FileID, *This\" + *This\Access + ", *This\" + SizeMemberName + ")" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Instruction
  EndProcedure
 
  Procedure.s GenerateWriteEncodedCryptedInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Pointer.s, *CustomFileLib.CustomFileLib::CustomFileLib)
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE
        Instruction.s = *Comments\Tabulation(TabSize) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteByte(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_ASCII
        Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteAsciiCharacter(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_UNICODE
        Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteUnicodeCharacter(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_CHARACTER
        Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteCharacter(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteInteger(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_WORD
        Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteWord(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_LONG
        Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteLong(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteQuad(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteFloat(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteDouble(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteString(FileID, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + "\" + *CustomFileLib\GetPrefix() + "Write" + StringField(*This\TypeShort, 3, ":") + "(FileID, " + Pointer + "CustomLib)" + *Comments\LineFeed()   
        
      Case #MEMBER_TYPE_DATA_POINTER_C
        SizeMemberName.s = Trim(StringField(*This\ExtraInfo, 2, ","))
        Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomLib\" + *CustomFileLib\GetPrefix() + "WriteData(FileID, *This\" + *This\Access + ", *This\" + SizeMemberName + ")" + *Comments\LineFeed()
        
    EndSelect

    ProcedureReturn Instruction
  EndProcedure

  Procedure.s GenerateReadPrefsInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Mode.i)
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE To #MEMBER_TYPE_CHARACTER, #MEMBER_TYPE_WORD, #MEMBER_TYPE_LONG
        Instruction.s = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = ReadPreferenceLong(" + Chr(34) + *This\Name + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = ReadPreferenceInteger(" + Chr(34) + *This\Name + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = ReadPreferenceQuad(" + Chr(34) + *This\Name + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = ReadPreferenceFloat(" + Chr(34) + *This\Name + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = ReadPreferenceDouble(" + Chr(34) + *This\Name + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + " = ReadPreferenceString(" + Chr(34) + *This\Name + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        If Mode = 0
          Instruction = *Comments\Tabulation(TabSize) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
        Else
          Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + "\ReadPrefs(" + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed()
        EndIf
        
    EndSelect
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateWritePrefsInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Mode.i)
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE To #MEMBER_TYPE_CHARACTER, #MEMBER_TYPE_WORD, #MEMBER_TYPE_LONG
        Instruction.s = *Comments\Tabulation(TabSize) + "WritePreferenceLong(" + Chr(34) + *This\Name + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_INTEGER
        Instruction.s = *Comments\Tabulation(TabSize) + "WritePreferenceInteger(" + Chr(34) + *This\Name + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction.s = *Comments\Tabulation(TabSize) + "WritePreferenceQuad(" + Chr(34) + *This\Name + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction.s = *Comments\Tabulation(TabSize) + "WritePreferenceFloat(" + Chr(34) + *This\Name + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction.s = *Comments\Tabulation(TabSize) + "WritePreferenceDouble(" + Chr(34) + *This\Name + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction.s = *Comments\Tabulation(TabSize) + "WritePreferenceString(" + Chr(34) + *This\Name + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        If Mode = 0
          Instruction = *Comments\Tabulation(TabSize) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
        Else
          Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + "\WritePrefs(" + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed()
        EndIf
        
    EndSelect
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateXMLSetNodeInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE, #MEMBER_TYPE_CHARACTER, #MEMBER_TYPE_INTEGER, #MEMBER_TYPE_WORD, #MEMBER_TYPE_LONG, #MEMBER_TYPE_QUAD
        Instruction.s = *Comments\Tabulation(2) + "FieldNode = CreateXMLNode(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(2) + "SetXMLNodeText(FieldNode, Str(*This\" + *This\Access + "))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_ASCII
        Instruction = *Comments\Tabulation(2) + "FieldNode = CreateXMLNode(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(2) + "SetXMLNodeText(FieldNode, StrU(*This\" + *This\Access + ", #PB_Ascii))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_UNICODE
        Instruction = *Comments\Tabulation(2) + "FieldNode = CreateXMLNode(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(2) + "SetXMLNodeText(FieldNode, StrU(*This\" + *This\Access + ", #PB_Unicode))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction = *Comments\Tabulation(2) + "FieldNode = CreateXMLNode(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(2) + "SetXMLNodeText(FieldNode, StrF(*This\" + *This\Access + ", 12))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction = *Comments\Tabulation(2) + "FieldNode = CreateXMLNode(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(2) + "SetXMLNodeText(FieldNode, StrD(*This\" + *This\Access + ", 24))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction = *Comments\Tabulation(2) + "FieldNode = CreateXMLNode(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(2) + "SetXMLNodeText(FieldNode, *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction = *Comments\Tabulation(2) + "FieldNode = CreateXMLNode(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(2) + "*This\" + *This\Access + "\XML_SetNode(FieldNode)" + *Comments\LineFeed()  
        Instruction + *Comments\Tabulation(2) + "; *This\" + *This\Access + "\XML_SetAttribute(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed() 
        
    EndSelect
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateXMLGetNodeInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    Instruction.s = *Comments\Tabulation(5) + "Case " + Chr(34) + *This\Name + Chr(34) + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE To #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(6) + "*This\" + *This\Access + " = Val(GetXMLNodeText(FieldNode))" + *Comments\LineFeed()
             
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(6) + "*This\" + *This\Access + " = ValF(GetXMLNodeText(FieldNode))" + *Comments\LineFeed()
            
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(6) + "*This\" + *This\Access + " = ValD(GetXMLNodeText(FieldNode))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(6) + "*This\" + *This\Access + " = GetXMLNodeText(FieldNode)" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT
        Instruction + *Comments\Tabulation(6) + "*This\" + *This\Access + "\XML_GetNode(FieldNode)" + *Comments\LineFeed()  
        Instruction + *Comments\Tabulation(6) + "; *This\" + *This\Access + "\XML_GetAttribute(FieldNode, " + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateXMLSetAttributeInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE, #MEMBER_TYPE_CHARACTER, #MEMBER_TYPE_INTEGER, #MEMBER_TYPE_WORD, #MEMBER_TYPE_LONG, #MEMBER_TYPE_QUAD
        Instruction.s + *Comments\Tabulation(2) + "SetXMLAttribute(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + ", Str(*This\" + *This\Access + "))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_ASCII
        Instruction + *Comments\Tabulation(2) + "SetXMLAttribute(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + ", StrU(*This\" + *This\Access + ", #PB_Ascii))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_UNICODE
        Instruction + *Comments\Tabulation(2) + "SetXMLAttribute(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + ", StrU(*This\" + *This\Access + ", #PB_Unicode))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(2) + "SetXMLAttribute(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + ", StrF(*This\" + *This\Access + ", 12))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(2) + "SetXMLAttribute(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + ", StrD(*This\" + *This\Access + ", 24))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(2) + "SetXMLAttribute(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction + *Comments\Tabulation(2) + "; NOT SUPPORTED YET" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateXMLGetAttributeInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE To #MEMBER_TYPE_QUAD
        Instruction.s + *Comments\Tabulation(3) + "*This\" + *This\Access + " = Val(GetXMLAttribute(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + "))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(3) + "*This\" + *This\Access + " = ValF(GetXMLAttribute(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + "))" + *Comments\LineFeed()
              
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(3) + "*This\" + *This\Access + " = ValD(GetXMLAttribute(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + "))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(3) + "*This\" + *This\Access + " = GetXMLNodeText(ObjectNode, " + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT
        Instruction + *Comments\Tabulation(3) + "; NOT SUPPORTED YET"
        
    EndSelect
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateXMLAddAttributeInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE, #MEMBER_TYPE_CHARACTER, #MEMBER_TYPE_INTEGER, #MEMBER_TYPE_WORD, #MEMBER_TYPE_LONG, #MEMBER_TYPE_QUAD
        Instruction.s + *Comments\Tabulation(2) + "SetXMLAttribute(CurrentNode, " + Chr(34) + *This\Name + Chr(34) + ", Str(*This\" + *This\Access + "))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_ASCII
        Instruction + *Comments\Tabulation(2) + "SetXMLAttribute(CurrentNode, " + Chr(34) + *This\Name + Chr(34) + ", StrU(*This\" + *This\Access + ", #PB_Ascii))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_UNICODE
        Instruction + *Comments\Tabulation(2) + "SetXMLAttribute(CurrentNode, " + Chr(34) + *This\Name + Chr(34) + ", StrU(*This\" + *This\Access + ", #PB_Unicode))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(2) + "SetXMLAttribute(CurrentNode, " + Chr(34) + *This\Name + Chr(34) + ", StrF(*This\" + *This\Access + ", 12))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(2) + "SetXMLAttribute(CurrentNode, " + Chr(34) + *This\Name + Chr(34) + ", StrD(*This\" + *This\Access + ", 24))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(2) + "SetXMLAttribute(CurrentNode, " + Chr(34) + *This\Name + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction + *Comments\Tabulation(2) + "; NOT SUPPORTED YET" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateXMLCollectAttributeInstruction(*This.Private_Members, *Comments.Comments::Comments)
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE To #MEMBER_TYPE_QUAD
        Instruction.s + *Comments\Tabulation(2) + "*This\" + *This\Access + " = Val(GetXMLAttribute(CurrentNode, " + Chr(34) + *This\Name + Chr(34) + "))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(2) + "*This\" + *This\Access + " = ValF(GetXMLAttribute(CurrentNode, " + Chr(34) + *This\Name + Chr(34) + "))" + *Comments\LineFeed()
              
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(2) + "*This\" + *This\Access + " = ValD(GetXMLAttribute(CurrentNode, " + Chr(34) + *This\Name + Chr(34) + "))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(2) + "*This\" + *This\Access + " = GetXMLNodeText(CurrentNode, " + Chr(34) + *This\Name + Chr(34) + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT
        Instruction + *Comments\Tabulation(2) + "; NOT SUPPORTED YET"
        
    EndSelect
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateJSONInsertInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i)
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE To #MEMBER_TYPE_LONG 
        Instruction.s = *Comments\Tabulation(TabSize) + "SetJSONInteger(AddJSONMember(Object, " + Chr(34) + *This\Name + Chr(34) + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction = *Comments\Tabulation(TabSize) + "SetJSONQuad(AddJSONMember(Object, " + Chr(34) + *This\Name + Chr(34) + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction = *Comments\Tabulation(TabSize) + "SetJSONFloat(AddJSONMember(Object, " + Chr(34) + *This\Name + Chr(34) + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction = *Comments\Tabulation(TabSize) + "SetJSONDouble(AddJSONMember(Object, " + Chr(34) + *This\Name + Chr(34) + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction = *Comments\Tabulation(TabSize) + "SetJSONString(AddJSONMember(Object, " + Chr(34) + *This\Name + Chr(34) + "), *This\" + *This\Access + ")" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + "\JSON_Insert(AddJSONMember(Object, " + Chr(34) + *This\Name + Chr(34) + "))" + *Comments\LineFeed() 
        
    EndSelect
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateJSONExtractInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i)
    
    Instruction.s = *Comments\Tabulation(TabSize) + "Case " + Chr(34) + *This\Name + Chr(34) + *Comments\LineFeed()
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE To #MEMBER_TYPE_LONG
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = GetJSONInteger(JSONMemberValue(JSONValue))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_QUAD
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = GetJSONQuad(JSONMemberValue(JSONValue))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_FLOAT
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = GetJSONFloat(JSONMemberValue(JSONValue))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_DOUBLE
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = GetJSONDouble(JSONMemberValue(JSONValue))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = GetJSONString(JSONMemberValue(JSONValue))" + *Comments\LineFeed()
        
      Case #MEMBER_TYPE_OBJECT 
        Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + "\JSON_Extract(GetJSONMember(JSONValue, " + Chr(34) + *This\Name + Chr(34) + "))" + *Comments\LineFeed() 
        
    EndSelect
    
    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateAddGroupPrefsInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s)
    
    Select *This\Type
        
      Case #MEMBER_TYPE_BYTE
        If Mode = 0
          Instruction.s = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyByte(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyByte(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_ASCII
        If Mode = 0
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyAscii(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyAscii(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_UNICODE
        If Mode = 0
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyUnicode(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyUnicode(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_CHARACTER
        If Mode = 0
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyCharacter(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyCharacter(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_INTEGER
        If Mode = 0
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyInteger(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyInteger(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_WORD
        If Mode = 0
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyWord(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyWord(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_LONG
        If Mode = 0
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyLong(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyLong(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_QUAD
        If Mode = 0
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyQuad(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyQuad(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_FLOAT
        If Mode = 0
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyFloat(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyFloat(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_DOUBLE
        If Mode = 0
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyDouble(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyDouble(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
        If Mode = 0
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyString(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        Else
          Instruction = *Comments\Tabulation(TabSize) + Pointer + "CustomPrefs\AddKeyString(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
        EndIf
        
      Case #MEMBER_TYPE_OBJECT 
        If Mode = 0
          Instruction = *Comments\Tabulation(TabSize) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
        Else
          Instruction = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + "\AddPrefsGroup(" + Chr(34) + *This\Access + Chr(34) + ", " + Pointer + "CustomPrefs)" + *Comments\LineFeed()   
        EndIf
        
    EndSelect
    
    ProcedureReturn Instruction
  EndProcedure
 
  Procedure.s GenerateExtractGroupPrefsInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s)
    
    If *This\Type < #MEMBER_TYPE_OBJECT
      
      If Mode = 0
        
        Instruction.s = *Comments\Tabulation(TabSize + 0) + "If " + Pointer + "CustomPrefs\IsKey(GroupName, " +Chr(34) + *This\Access + Chr(34) + ")" + *Comments\LineFeed()
        
        Select *This\Type
            
          Case #MEMBER_TYPE_BYTE
            Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueByte(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_ASCII
            Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueAscii(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_UNICODE
            Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueUnicode(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_CHARACTER
            Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueCharacter(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_INTEGER
            Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueInteger(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_WORD
            Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueWord(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_LONG
            Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueLong(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_QUAD
            Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueQuad(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_FLOAT
            Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueFloat(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_DOUBLE
            Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueDouble(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
            Instruction + *Comments\Tabulation(TabSize + 1) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueString(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
        EndSelect
        
        Instruction + *Comments\Tabulation(TabSize + 0) + "EndIf" + *Comments\LineFeed()
        
      Else
        
        Instruction = *Comments\Tabulation(TabSize + 0) + "If " + Pointer + "CustomPrefs\IsGroup(" + Chr(34) + "Orphan" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "If " + Pointer + "CustomPrefs\IsKey(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ")" + *Comments\LineFeed()
        
        Select *This\Type
            
          Case #MEMBER_TYPE_BYTE
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueByte(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_ASCII
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueAscii(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_UNICODE
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueUnicode(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_CHARACTER
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueCharacter(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_INTEGER
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueInteger(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_WORD
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueWord(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_LONG
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueLong(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_QUAD
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueQuad(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_FLOAT
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueFloat(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_DOUBLE
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueDouble(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
            Instruction + *Comments\Tabulation(TabSize + 2) + "*This\" + *This\Access + " = " + Pointer + "CustomPrefs\GetValueString(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
        EndSelect
        
        Instruction + *Comments\Tabulation(TabSize + 1) + "EndIf" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 0) + "EndIf" + *Comments\LineFeed()
        
      EndIf
      
    ElseIf *This\Type = #MEMBER_TYPE_OBJECT 
      
      If Mode = 0
        Instruction.s = *Comments\Tabulation(TabSize) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
      Else
        Instruction.s = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + "\ExtractPrefsGroup(" + Chr(34) + *This\Access + Chr(34) + ", " + Pointer + "CustomPrefs)" + *Comments\LineFeed()   
      EndIf
      
    EndIf

    ProcedureReturn Instruction
  EndProcedure

  Procedure.s GenerateRefreshGroupPrefsInstruction(*This.Private_Members, *Comments.Comments::Comments, TabSize.i, Mode.i, Pointer.s)
    
    If *This\Type < #MEMBER_TYPE_OBJECT
      
      If Mode = 0
        
        Instruction.s = *Comments\Tabulation(TabSize + 0) + "If " + Pointer + "CustomPrefs\IsKey(GroupName, " +Chr(34) + *This\Access + Chr(34) + ")" + *Comments\LineFeed()
        
        Select *This\Type
            
          Case #MEMBER_TYPE_BYTE
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueByte(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_ASCII
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueAscii(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_UNICODE
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueUnicode(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_CHARACTER
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueCharacter(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_INTEGER
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueInteger(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_WORD
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueWord(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_LONG
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueLong(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_QUAD
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueQuad(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_FLOAT
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueFloat(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_DOUBLE
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueDouble(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
            Instruction + *Comments\Tabulation(TabSize + 1) + Pointer + "CustomPrefs\SetValueString(GroupName, " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
        EndSelect
        
        Instruction + *Comments\Tabulation(TabSize + 0) + "EndIf" + *Comments\LineFeed()
        
      Else
        
        Instruction = *Comments\Tabulation(TabSize + 0) + "If " + Pointer + "CustomPrefs\IsGroup(" + Chr(34) + "Orphan" + Chr(34) + ")" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 1) + "If " + Pointer + "CustomPrefs\IsKey(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ")" + *Comments\LineFeed()
        
        Select *This\Type
            
          Case #MEMBER_TYPE_BYTE
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueByte(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_ASCII
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueAscii(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_UNICODE
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueUnicode(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_CHARACTER
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueCharacter(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_INTEGER
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueInteger(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_WORD
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueWord(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_LONG
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueLong(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_QUAD
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueQuad(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_FLOAT
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueFloat(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_DOUBLE
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueDouble(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
          Case #MEMBER_TYPE_STRING01, #MEMBER_TYPE_STRING02
            Instruction + *Comments\Tabulation(TabSize + 2) + Pointer + "CustomPrefs\SetValueString(" + Chr(34) + "Orphan" + Chr(34) + ", " + Chr(34) + *This\Access + Chr(34) + ", *This\" + *This\Access + ")" + *Comments\LineFeed()
            
        EndSelect
        
        Instruction + *Comments\Tabulation(TabSize + 1) + "EndIf" + *Comments\LineFeed()
        Instruction + *Comments\Tabulation(TabSize + 0) + "EndIf" + *Comments\LineFeed()
        
      EndIf
      
    ElseIf *This\Type = #MEMBER_TYPE_OBJECT 
      
      If Mode = 0
        Instruction.s = *Comments\Tabulation(TabSize) + "; NOT SUPPORTED YET" + *Comments\LineFeed() 
      Else
        Instruction.s = *Comments\Tabulation(TabSize) + "*This\" + *This\Access + "\RefreshPrefsGroup(" + Chr(34) + *This\Access + Chr(34) + ", " + Pointer + "CustomPrefs)" + *Comments\LineFeed()   
      EndIf
      
    EndIf
    
    ProcedureReturn Instruction
  EndProcedure

  Procedure.s GenerateConstructorInstruction(*This.Private_Members, *Comments.Comments::Comments, Mode.i, *SeparatorNeeded.Integer)
    
    Select Mode
        
      Case 0
        If *This\Type = #MEMBER_TYPE_OBJECT
          Instruction.s = *Comments\Tabulation(2) + "*This\" + *This\Access + " = " + StringField(*This\TypeShort, 1, ":") + "::New()" + *Comments\LineFeed()
        ElseIf *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C
          Instruction = *Comments\Tabulation(2) + "*This\" + *This\Access + " = #Null" + *Comments\LineFeed()
        Else
          Instruction = *Comments\Tabulation(2) + "; *This\" + *This\Access + " = " + *This\ZeroOut + *Comments\LineFeed()
        EndIf
        
        If *SeparatorNeeded <> #Null
          *SeparatorNeeded\i = #False
        EndIf
        
      Case 1
        If *This\Type = #MEMBER_TYPE_OBJECT
          
          Instruction.s = *Comments\Tabulation(2) + "If *" + *This\Name + " <> #Null" + *Comments\LineFeed()
          Instruction + *Comments\Tabulation(3) + "*This\" + *This\Access + " = *" + *This\Name + *Comments\LineFeed()
          Instruction + *Comments\Tabulation(2) + "Else" + *Comments\LineFeed()
          Instruction + *Comments\Tabulation(3) + "*This\" + *This\Access + " = " + StringField(*This\TypeShort, 1, ":") + "::New()" + *Comments\LineFeed()
          Instruction + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
          
          If *SeparatorNeeded <> #Null
            *SeparatorNeeded\i = #True
          EndIf
          
        ElseIf *This\Type = #MEMBER_TYPE_POINTER_C Or *This\Type = #MEMBER_TYPE_OBJECT_POINTER_C Or *This\Type = #MEMBER_TYPE_DATA_POINTER_C
              
          Instruction = *Comments\Tabulation(2) + "*This\" + *This\Access + " = *" + *This\Name + *Comments\LineFeed()
          
          If *SeparatorNeeded <> #Null
            *SeparatorNeeded\i = #False
          EndIf
          
        Else
          
          Instruction = *Comments\Tabulation(2) + "*This\" + *This\Access + " = " + *This\Access + *Comments\LineFeed()
          
          If *SeparatorNeeded <> #Null
            *SeparatorNeeded\i = #False
          EndIf
          
        EndIf
       
    EndSelect

    ProcedureReturn Instruction
  EndProcedure
  
  Procedure.s GenerateDestructorInstruction(*This.Private_Members, *Comments.Comments::Comments, *SeparatorNeeded.Integer)
    
    If *This\Type = #MEMBER_TYPE_OBJECT
      
      Instruction.s = *Comments\Tabulation(2) + "If *This\" + *This\Access + " <> #Null" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(3) + "*This\" + *This\Access + "\Free()" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
      
      If *SeparatorNeeded <> #Null
        *SeparatorNeeded\i = #True
      EndIf
      
    ElseIf *This\Type = #MEMBER_TYPE_DATA_POINTER_C
      
      Instruction.s = *Comments\Tabulation(2) + "If *This\" + *This\Access + " <> #Null" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(3) + "FreeMemory(*This\" + *This\Access + ")" + *Comments\LineFeed()
      Instruction + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
      
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

  Procedure.i New(Description.s, *StringUtilities.StringUtilities::StringUtilities, *DynamicObject.Integer, *FastCopy.Integer)
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\Description = Description
    
    *FoolProofer.FoolProofer::FoolProofer = *StringUtilities\GetFoolProofer()
    
    *This\ExtraInfo = *FoolProofer\GetBasicExtraInfo(*This\Description)
    
    NameDotType.s = *FoolProofer\GetBasicNameDotType(*This\Description)
    
    If FindString(NameDotType, ".") = 0
      
      *This\Name = NameDotType
      
      If Left(*This\Name, 1) = "*"
        *This\Name = Right(*This\Name, Len(*This\Name)-1)
        Type_Pointer_C = #True
        *This\TypeShort = ""
        *This\Access = *This\Name
      EndIf
      
      If Right(*This\Name, 1) = "$"
        *This\Name = Left(*This\Name, Len(*This\Name)-1)
        *This\TypeShort = "$"
        *This\Access = *This\Name + "$"
      EndIf
      
    Else
      
      *This\Name = StringField(NameDotType, 1, ".")
      
      If Left(*This\Name, 1) = "*"
        *This\Name = Right(*This\Name, Len(*This\Name)-1)
        Type_Pointer_C = #True
      EndIf
      
      *This\Access = *This\Name
      *This\TypeShort = StringField(NameDotType, 2, ".")
      
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
          
          If FindString(*This\ExtraInfo, "Data")
            *This\Type = #MEMBER_TYPE_DATA_POINTER_C
            *DynamicObject\i = #True
            *FastCopy\i = #False
            *This\TypeLong = ""
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
    Data.i @GetName()
    Data.i @GetAccess()
    Data.i @GetType()
    Data.i @GetTypeShort()
    Data.i @GetTypeLong()
    Data.i @GetZeroOut()
    Data.i @GetExtraInfo()
    Data.i @GenerateDeclareGetter()
    Data.i @GenerateDefineGetter()
    Data.i @GenerateDeclareSetter()
    Data.i @GenerateDefineSetter()
    Data.i @GenerateUpdateInstruction()
    Data.i @GenerateResetInstruction()
    Data.i @GenerateClearInstruction()
    Data.i @GenerateEqualInstruction()
    Data.i @GeneratePlusInstruction()
    Data.i @GenerateMinusInstruction()
    Data.i @GenerateAddInstruction()
    Data.i @GenerateAddScaledInstruction()
    Data.i @GenerateSubtractInstruction()
    Data.i @GenerateProductInstruction()
    Data.i @GenerateDivideInstruction()
    Data.i @GenerateAddScalarInstruction()
    Data.i @GenerateSubtractScalarInstruction()
    Data.i @GenerateProductByScalarInstruction()
    Data.i @GenerateDivideByScalarInstruction()
    Data.i @GenerateLerpInstruction()
    Data.i @GenerateCopyInstruction()
    Data.i @GenerateCompareInstruction()
    Data.i @GenerateSwappingInstruction()
    Data.i @GenerateReadBinaryInstruction()
    Data.i @GenerateWriteBinaryInstruction()
    Data.i @GenerateReadEncodedCryptedInstruction()
    Data.i @GenerateWriteEncodedCryptedInstruction()
    Data.i @GenerateReadPrefsInstruction()
    Data.i @GenerateWritePrefsInstruction()
    Data.i @GenerateXMLSetNodeInstruction()
    Data.i @GenerateXMLGetNodeInstruction()
    Data.i @GenerateXMLSetAttributeInstruction()
    Data.i @GenerateXMLGetAttributeInstruction()
    Data.i @GenerateXMLAddAttributeInstruction()
    Data.i @GenerateXMLCollectAttributeInstruction()
    
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
; <<<<< Code généré en : 00.001 secondes (213000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = fAAAAAAAD5
; EnableXP
; CompileSourceDirectory