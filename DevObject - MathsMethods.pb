; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.0.1
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - MathsMethods.pb
; Version du fichier : 1.3.0
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 27-10-2019
; Mise à jour : 10-06-2021
; Codé pour PureBasic : V5.71 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule MathsMethods
  
  Interface MathsMethods
    
    GetEqual.i()
    GetPlus.i()
    GetMinus.i()
    GetAdd.i()
    GetAddScaled.i()
    GetSubtract.i()
    GetProduct.i()
    GetDivide.i()
    GetAddScalar.i()
    GetSubtractScalar.i()
    GetProductByScalar.i()
    GetDivideByScalar.i()
    GetLerp.i()
    SetEqual(Equal.i)
    SetPlus(Plus.i)
    SetMinus(Minus.i)
    SetAdd(Add.i)
    SetAddScaled(AddScaled.i)
    SetSubtract(Subtract.i)
    SetProduct(Product.i)
    SetDivide(Divide.i)
    SetAddScalar(AddScalar.i)
    SetSubtractScalar(SubtractScalar.i)
    SetProductByScalar(ProductByScalar.i)
    SetDivideByScalar(DivideByScalar.i)
    SetLerp(Lerp.i)
    Reset()
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    GenerateEqualDeclare.s(*Comments.Comments::Comments, Mode.i)
    GeneratePlusDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateMinusDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateAddDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateAddScaledDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateSubtractDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateProductDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateDivideDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateAddScalarDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateSubtractScalarDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateProductByScalarDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateDivideByScalarDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateLerpDeclare.s(*Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    GenerateEqualDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GeneratePlusDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateMinusDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateAddDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateAddScaledDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateSubtractDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateProductDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateDivideDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateAddScalarDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateSubtractScalarDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateProductByScalarDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateDivideByScalarDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateLerpDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module MathsMethods
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<
  
  Structure Private_Members
    
    VirtualTable.i
    Equal.i
    Plus.i
    Minus.i
    Add.i
    AddScaled.i
    Subtract.i
    Product.i
    Divide.i
    AddScalar.i
    SubtractScalar.i
    ProductByScalar.i
    DivideByScalar.i
    Lerp.i
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<
  
  Procedure.i GetEqual(*This.Private_Members)
    
    ProcedureReturn *This\Equal
  EndProcedure
  
  Procedure.i GetPlus(*This.Private_Members)
    
    ProcedureReturn *This\Plus
  EndProcedure
  
  Procedure.i GetMinus(*This.Private_Members)
    
    ProcedureReturn *This\Minus
  EndProcedure
  
  Procedure.i GetAdd(*This.Private_Members)
    
    ProcedureReturn *This\Add
  EndProcedure
  
  Procedure.i GetAddScaled(*This.Private_Members)
    
    ProcedureReturn *This\AddScaled
  EndProcedure
  
  Procedure.i GetSubtract(*This.Private_Members)
    
    ProcedureReturn *This\Subtract
  EndProcedure
  
  Procedure.i GetProduct(*This.Private_Members)
    
    ProcedureReturn *This\Product
  EndProcedure
  
  Procedure.i GetDivide(*This.Private_Members)
    
    ProcedureReturn *This\Divide
  EndProcedure
  
  Procedure.i GetAddScalar(*This.Private_Members)
    
    ProcedureReturn *This\AddScalar
  EndProcedure
  
  Procedure.i GetSubtractScalar(*This.Private_Members)
    
    ProcedureReturn *This\SubtractScalar
  EndProcedure
  
  Procedure.i GetProductByScalar(*This.Private_Members)
    
    ProcedureReturn *This\ProductByScalar
  EndProcedure
  
  Procedure.i GetDivideByScalar(*This.Private_Members)
    
    ProcedureReturn *This\DivideByScalar
  EndProcedure
  
  Procedure.i GetLerp(*This.Private_Members)
    
    ProcedureReturn *This\Lerp
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<
  
  Procedure SetEqual(*This.Private_Members, Equal.i)
    
    *This\Equal = Equal
    
  EndProcedure
  
  Procedure SetPlus(*This.Private_Members, Plus.i)
    
    *This\Plus = Plus
    
  EndProcedure
  
  Procedure SetMinus(*This.Private_Members, Minus.i)
    
    *This\Minus = Minus
    
  EndProcedure
  
  Procedure SetAdd(*This.Private_Members, Add.i)
    
    *This\Add = Add
    
  EndProcedure
  
  Procedure SetAddScaled(*This.Private_Members, AddScaled.i)
    
    *This\AddScaled = AddScaled
    
  EndProcedure
  
  Procedure SetSubtract(*This.Private_Members, Subtract.i)
    
    *This\Subtract = Subtract
    
  EndProcedure
  
  Procedure SetProduct(*This.Private_Members, Product.i)
    
    *This\Product = Product
    
  EndProcedure
  
  Procedure SetDivide(*This.Private_Members, Divide.i)
    
    *This\Divide = Divide
    
  EndProcedure
  
  Procedure SetAddScalar(*This.Private_Members, AddScalar.i)
    
    *This\AddScalar = AddScalar
    
  EndProcedure
  
  Procedure SetSubtractScalar(*This.Private_Members, SubtractScalar.i)
    
    *This\SubtractScalar = SubtractScalar
    
  EndProcedure
  
  Procedure SetProductByScalar(*This.Private_Members, ProductByScalar.i)
    
    *This\ProductByScalar = ProductByScalar
    
  EndProcedure
  
  Procedure SetDivideByScalar(*This.Private_Members, DivideByScalar.i)
    
    *This\DivideByScalar = DivideByScalar
    
  EndProcedure
  
  Procedure SetLerp(*This.Private_Members, Lerp.i)
    
    *This\Lerp = Lerp
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur Reset <<<<<
  
  Procedure Reset(*This.Private_Members)
    
    *This\Equal = 0
    *This\Plus = 0
    *This\Minus = 0
    *This\Add = 0
    *This\AddScaled = 0
    *This\Subtract = 0
    *This\Product = 0
    *This\Divide = 0
    *This\AddScalar = 0
    *This\SubtractScalar = 0
    *This\ProductByScalar = 0
    *This\DivideByScalar = 0
    *This\Lerp = 0
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyInteger(GroupName, "Equal", *This\Equal)
    *CustomPrefs\AddKeyInteger(GroupName, "Plus", *This\Plus)
    *CustomPrefs\AddKeyInteger(GroupName, "Minus", *This\Minus)
    *CustomPrefs\AddKeyInteger(GroupName, "Add", *This\Add)
    *CustomPrefs\AddKeyInteger(GroupName, "AddScaled", *This\AddScaled)
    *CustomPrefs\AddKeyInteger(GroupName, "Subtract", *This\Subtract)
    *CustomPrefs\AddKeyInteger(GroupName, "Product", *This\Product)
    *CustomPrefs\AddKeyInteger(GroupName, "Divide", *This\Divide)
    *CustomPrefs\AddKeyInteger(GroupName, "AddScalar", *This\AddScalar)
    *CustomPrefs\AddKeyInteger(GroupName, "SubtractScalar", *This\SubtractScalar)
    *CustomPrefs\AddKeyInteger(GroupName, "ProductByScalar", *This\ProductByScalar)
    *CustomPrefs\AddKeyInteger(GroupName, "DivideByScalar", *This\DivideByScalar)
    *CustomPrefs\AddKeyInteger(GroupName, "Lerp", *This\Lerp)
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "Equal")
        *This\Equal = *CustomPrefs\GetValueInteger(GroupName, "Equal", *This\Equal)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Plus")
        *This\Plus = *CustomPrefs\GetValueInteger(GroupName, "Plus", *This\Plus)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Minus")
        *This\Minus = *CustomPrefs\GetValueInteger(GroupName, "Minus", *This\Minus)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Add")
        *This\Add = *CustomPrefs\GetValueInteger(GroupName, "Add", *This\Add)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "AddScaled")
        *This\AddScaled = *CustomPrefs\GetValueInteger(GroupName, "AddScaled", *This\AddScaled)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Subtract")
        *This\Subtract = *CustomPrefs\GetValueInteger(GroupName, "Subtract", *This\Subtract)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Product")
        *This\Product = *CustomPrefs\GetValueInteger(GroupName, "Product", *This\Product)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Divide")
        *This\Divide = *CustomPrefs\GetValueInteger(GroupName, "Divide", *This\Divide)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "AddScalar")
        *This\AddScalar = *CustomPrefs\GetValueInteger(GroupName, "AddScalar", *This\AddScalar)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "SubtractScalar")
        *This\SubtractScalar = *CustomPrefs\GetValueInteger(GroupName, "SubtractScalar", *This\SubtractScalar)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "ProductByScalar")
        *This\ProductByScalar = *CustomPrefs\GetValueInteger(GroupName, "ProductByScalar", *This\ProductByScalar)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "DivideByScalar")
        *This\DivideByScalar = *CustomPrefs\GetValueInteger(GroupName, "DivideByScalar", *This\DivideByScalar)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "Lerp")
        *This\Lerp = *CustomPrefs\GetValueInteger(GroupName, "Lerp", *This\Lerp)
      EndIf
      
    EndIf
    
  EndProcedure
  
  Procedure.s GenerateEqualDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "Equal(*Other)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @Equal()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GeneratePlusDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "Plus.i(*Other)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @Plus()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateMinusDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "Minus.i(*Other)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @Minus()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateAddDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "Add(*Other)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @Add()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateAddScaledDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        
        *Members.Chain::Chain = *Class\GetMembers()
        
        If *Members\FirstLink()
          
          If *Members\GetLinkTag() <> Class::#MEMBER_STYLE_BASIC
            Type.s = ".ERROR"
          Else
            
            *Basic.Basic::Basic = *Members\GetLinkObject()
            
            If *Basic\GetType() > Class::#MEMBER_TYPE_DOUBLE
              Type = ".ERROR"
            Else
              Type = *Basic\GetTypeLong()
            EndIf
            
          EndIf
          
          Buffer.s = *Comments\Tabulation(2) + "AddScaled(*Other, Scale" + Type + ")" + *Comments\LineFeed()
          
        EndIf
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @AddScaled()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSubtractDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "Subtract(*Other)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @Subtract()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateProductDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "Product.i(*Other)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @Product()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDivideDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "Divide.i(*Other)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @Divide()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateAddScalarDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        
        *Members.Chain::Chain = *Class\GetMembers()
        
        If *Members\FirstLink()
          
          If *Members\GetLinkTag() <> Class::#MEMBER_STYLE_BASIC
            Type.s = ".ERROR"
          Else
            
            *Basic.Basic::Basic = *Members\GetLinkObject()
            
            If *Basic\GetType() > Class::#MEMBER_TYPE_DOUBLE
              Type = ".ERROR"
            Else
              Type = *Basic\GetTypeLong()
            EndIf
            
          EndIf
          
          Buffer.s = *Comments\Tabulation(2) + "AddScalar(Scalar" + Type + ")" + *Comments\LineFeed()
          
        EndIf
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @AddScalar()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSubtractScalarDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        
        *Members.Chain::Chain = *Class\GetMembers()
        
        If *Members\FirstLink()
          
          If *Members\GetLinkTag() <> Class::#MEMBER_STYLE_BASIC
            Type.s = ".ERROR"
          Else
            
            *Basic.Basic::Basic = *Members\GetLinkObject()
            
            If *Basic\GetType() > Class::#MEMBER_TYPE_DOUBLE
              Type = ".ERROR"
            Else
              Type = *Basic\GetTypeLong()
            EndIf
            
          EndIf
          
          Buffer.s = *Comments\Tabulation(2) + "SubtractScalar(Scalar" + Type +")" + *Comments\LineFeed()
          
        EndIf
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @SubtractScalar()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateProductByScalarDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        
        *Members.Chain::Chain = *Class\GetMembers()
        
        If *Members\FirstLink()
          
          If *Members\GetLinkTag() <> Class::#MEMBER_STYLE_BASIC
            Type.s = ".ERROR"
          Else
            
            *Basic.Basic::Basic = *Members\GetLinkObject()
            
            If *Basic\GetType() > Class::#MEMBER_TYPE_DOUBLE
              Type = ".ERROR"
            Else
              Type = *Basic\GetTypeLong()
            EndIf
            
          EndIf
          
          Buffer.s = *Comments\Tabulation(2) + "ProductByScalar(Scalar" + Type + ")" + *Comments\LineFeed()
          
        EndIf
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @ProductByScalar()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDivideByScalarDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        
        *Members.Chain::Chain = *Class\GetMembers()
        
        If *Members\FirstLink()
          
          If *Members\GetLinkTag() <> Class::#MEMBER_STYLE_BASIC
            Type.s = ".ERROR"
          Else
            
            *Basic.Basic::Basic = *Members\GetLinkObject()
            
            If *Basic\GetType() > Class::#MEMBER_TYPE_DOUBLE
              Type = ".ERROR"
            Else
              Type = *Basic\GetTypeLong()
            EndIf
            
          EndIf
          
          Buffer.s = *Comments\Tabulation(2) + "DivideByScalar(Scalar" + Type + ")" + *Comments\LineFeed()
          
        EndIf
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @DivideByScalar()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateLerpDeclare(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        
        *Members.Chain::Chain = *Class\GetMembers()
        
        If *Members\FirstLink()
          
          If *Members\GetLinkTag() <> Class::#MEMBER_STYLE_BASIC
            Type.s = ".ERROR"
          Else
            
            *Basic.Basic::Basic = *Members\GetLinkObject()
            
            If *Basic\GetType() > Class::#MEMBER_TYPE_DOUBLE
              Type = ".ERROR"
            Else
              Type = *Basic\GetTypeLong()
            EndIf
            
          EndIf
          
          Buffer.s = *Comments\Tabulation(2) + "Lerp.i(*Other, Proportion" + Type + ")" + *Comments\LineFeed()
          
        EndIf
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @Lerp()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateEqualDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure Equal(*This.Private_Members, *Other.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_BASIC
        *Basic.Basic::Basic = *Members\GetLinkObject()
        Buffer + *Basic\GenerateEqualInstruction(*Comments) 
      EndIf
      
    Wend
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GeneratePlusDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure.i Plus(*This.Private_Members, *Other.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "*Result.Private_Members = AllocateStructure(Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "*Result\VirtualTable = ?START_METHODS" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_BASIC
        *Basic.Basic::Basic = *Members\GetLinkObject()
        Buffer + *Basic\GeneratePlusInstruction(*Comments) 
      EndIf
      
    Wend
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ProcedureReturn *Result" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateMinusDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure.i Minus(*This.Private_Members, *Other.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "*Result.Private_Members = AllocateStructure(Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "*Result\VirtualTable = ?START_METHODS" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_BASIC
        *Basic.Basic::Basic = *Members\GetLinkObject()
        Buffer + *Basic\GenerateMinusInstruction(*Comments) 
      EndIf
      
    Wend
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ProcedureReturn *Result" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateAddDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure Add(*This.Private_Members, *Other.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_BASIC
        *Basic.Basic::Basic = *Members\GetLinkObject()
        Buffer + *Basic\GenerateAddInstruction(*Comments) 
      EndIf
      
    Wend
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateAddScaledDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    If *Members\FirstLink()
      
      If *Members\GetLinkTag() <> Class::#MEMBER_STYLE_BASIC
        Type.s = ".ERROR"
      Else
        
        *Basic.Basic::Basic = *Members\GetLinkObject()
        
        If *Basic\GetType() > Class::#MEMBER_TYPE_DOUBLE
          Type = ".ERROR"
        Else
          Type = *Basic\GetTypeLong()
        EndIf
        
      EndIf
      
      Buffer.s = *Comments\Tabulation(1) + "Procedure AddScaled(*This.Private_Members, *Other.Private_Members, Scale" + Type + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      
      *Members\ResetChain()
      
      While *Members\NextLink()
        
        If *Members\GetLinkTag() = Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Buffer + *Basic\GenerateAddScaledInstruction(*Comments) 
        EndIf
        
      Wend
      
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
      
    EndIf
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSubtractDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure Subtract(*This.Private_Members, *Other.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_BASIC
        *Basic.Basic::Basic = *Members\GetLinkObject()
        Buffer + *Basic\GenerateSubtractInstruction(*Comments) 
      EndIf
      
    Wend
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateProductDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure.i Product(*This.Private_Members, *Other.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "*Result.Private_Members = AllocateStructure(Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "*Result\VirtualTable = ?START_METHODS" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_BASIC
        *Basic.Basic::Basic = *Members\GetLinkObject()
        Buffer + *Basic\GenerateProductInstruction(*Comments) 
      EndIf
      
    Wend
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ProcedureReturn *Result" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDivideDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure.i Divide(*This.Private_Members, *Other.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "*Result.Private_Members = AllocateStructure(Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "*Result\VirtualTable = ?START_METHODS" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      If *Members\GetLinkTag() = Class::#MEMBER_STYLE_BASIC
        *Basic.Basic::Basic = *Members\GetLinkObject()
        Buffer + *Basic\GenerateDivideInstruction(*Comments) 
      EndIf
      
    Wend
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ProcedureReturn *Result" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateAddScalarDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    If *Members\FirstLink()
      
      If *Members\GetLinkTag() <> Class::#MEMBER_STYLE_BASIC
        Type.s = ".ERROR"
      Else
        
        *Basic.Basic::Basic = *Members\GetLinkObject()
        
        If *Basic\GetType() > Class::#MEMBER_TYPE_DOUBLE
          Type = ".ERROR"
        Else
          Type = *Basic\GetTypeLong()
        EndIf
        
      EndIf
      
      Buffer.s = *Comments\Tabulation(1) + "Procedure AddScalar(*This.Private_Members, Scalar" + Type + ")" + *Comments\LineFeed()
      
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      
      *Members\ResetChain()
      
      While *Members\NextLink()
        
        If *Members\GetLinkTag() = Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Buffer + *Basic\GenerateAddScalarInstruction(*Comments) 
        EndIf
        
      Wend
      
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
      
    EndIf
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSubtractScalarDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    If *Members\FirstLink()
      
      If *Members\GetLinkTag() <> Class::#MEMBER_STYLE_BASIC
        Type.s = ".ERROR"
      Else
        
        *Basic.Basic::Basic = *Members\GetLinkObject()
        
        If *Basic\GetType() > Class::#MEMBER_TYPE_DOUBLE
          Type = ".ERROR"
        Else
          Type = *Basic\GetTypeLong()
        EndIf
        
      EndIf
      
      Buffer.s = *Comments\Tabulation(1) + "Procedure SubtractScalar(*This.Private_Members, Scalar" + Type + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      
      *Members\ResetChain()
      
      While *Members\NextLink()
        
        If *Members\GetLinkTag() = Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Buffer + *Basic\GenerateSubtractScalarInstruction(*Comments) 
        EndIf
        
      Wend
      
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
      
    EndIf
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateProductByScalarDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    If *Members\FirstLink()
      
      If *Members\GetLinkTag() <> Class::#MEMBER_STYLE_BASIC
        Type.s = ".ERROR"
      Else
        
        *Basic.Basic::Basic = *Members\GetLinkObject()
        
        If *Basic\GetType() > Class::#MEMBER_TYPE_DOUBLE
          Type = ".ERROR"
        Else
          Type = *Basic\GetTypeLong()
        EndIf
        
      EndIf
      
      Buffer.s = *Comments\Tabulation(1) + "Procedure ProductByScalar(*This.Private_Members, Scalar" + Type + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      
      *Members\ResetChain()
      
      While *Members\NextLink()
        
        If *Members\GetLinkTag() = Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Buffer + *Basic\GenerateProductByScalarInstruction(*Comments) 
        EndIf
        
      Wend
      
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
      
    EndIf
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDivideByScalarDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    If *Members\FirstLink()
      
      If *Members\GetLinkTag() <> Class::#MEMBER_STYLE_BASIC
        Type.s = ".ERROR"
      Else
        
        *Basic.Basic::Basic = *Members\GetLinkObject()
        
        If *Basic\GetType() > Class::#MEMBER_TYPE_DOUBLE
          Type = ".ERROR"
        Else
          Type = *Basic\GetTypeLong()
        EndIf
        
      EndIf
      
      Buffer.s = *Comments\Tabulation(1) + "Procedure DivideByScalar(*This.Private_Members, Scalar" + Type + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      
      *Members\ResetChain()
      
      While *Members\NextLink()
        
        If *Members\GetLinkTag() = Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Buffer + *Basic\GenerateDivideByScalarInstruction(*Comments) 
        EndIf
        
      Wend
      
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
      
    EndIf
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateLerpDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    If *Members\FirstLink()
      
      If *Members\GetLinkTag() <> Class::#MEMBER_STYLE_BASIC
        Type.s = ".ERROR"
      Else
        
        *Basic.Basic::Basic = *Members\GetLinkObject()
        
        If *Basic\GetType() > Class::#MEMBER_TYPE_DOUBLE
          Type = ".ERROR"
        Else
          Type = *Basic\GetTypeLong()
        EndIf
        
      EndIf
      
      Buffer.s = *Comments\Tabulation(1) + "Procedure.i Lerp(*This.Private_Members, *Other.Private_Members, Proportion" + Type + ")" + *Comments\LineFeed()
      
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "*Result.Private_Members = AllocateStructure(Private_Members)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "*Result\VirtualTable = ?START_METHODS" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      
      *Members\ResetChain()
      
      While *Members\NextLink()
        
        If *Members\GetLinkTag() = Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Buffer + *Basic\GenerateLerpInstruction(*Comments) 
        EndIf
        
      Wend
      
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "ProcedureReturn *Result" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
      
    EndIf
    
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
    Data.i @GetEqual()
    Data.i @GetPlus()
    Data.i @GetMinus()
    Data.i @GetAdd()
    Data.i @GetAddScaled()
    Data.i @GetSubtract()
    Data.i @GetProduct()
    Data.i @GetDivide()
    Data.i @GetAddScalar()
    Data.i @GetSubtractScalar()
    Data.i @GetProductByScalar()
    Data.i @GetDivideByScalar()
    Data.i @GetLerp()
    Data.i @SetEqual()
    Data.i @SetPlus()
    Data.i @SetMinus()
    Data.i @SetAdd()
    Data.i @SetAddScaled()
    Data.i @SetSubtract()
    Data.i @SetProduct()
    Data.i @SetDivide()
    Data.i @SetAddScalar()
    Data.i @SetSubtractScalar()
    Data.i @SetProductByScalar()
    Data.i @SetDivideByScalar()
    Data.i @SetLerp()
    Data.i @Reset()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    Data.i @GenerateEqualDeclare()
    Data.i @GeneratePlusDeclare()
    Data.i @GenerateMinusDeclare()
    Data.i @GenerateAddDeclare()
    Data.i @GenerateAddScaledDeclare()
    Data.i @GenerateSubtractDeclare()
    Data.i @GenerateProductDeclare()
    Data.i @GenerateDivideDeclare()
    Data.i @GenerateAddScalarDeclare()
    Data.i @GenerateSubtractScalarDeclare()
    Data.i @GenerateProductByScalarDeclare()
    Data.i @GenerateDivideByScalarDeclare()
    Data.i @GenerateLerpDeclare()
    Data.i @GenerateEqualDefine()
    Data.i @GeneratePlusDefine()
    Data.i @GenerateMinusDefine()
    Data.i @GenerateAddDefine()
    Data.i @GenerateAddScaledDefine()
    Data.i @GenerateSubtractDefine()
    Data.i @GenerateProductDefine()
    Data.i @GenerateDivideDefine()
    Data.i @GenerateAddScalarDefine()
    Data.i @GenerateSubtractScalarDefine()
    Data.i @GenerateProductByScalarDefine()
    Data.i @GenerateDivideByScalarDefine()
    Data.i @GenerateLerpDefine()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (303000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = -----------
; EnableXP
; CompileSourceDirectory