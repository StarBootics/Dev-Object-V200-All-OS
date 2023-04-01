; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.0.1
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - Class.pb
; Version du fichier : 1.5.6
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 11-04-2019
; Mise à jour : 13-05-2022
; Codé pour PureBasic : V6.00 Beta 7
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule Class
  
  Enumeration 

    #MEMBER_STYLE_ARRAY
    #MEMBER_STYLE_LIST
    #MEMBER_STYLE_MAP
    #MEMBER_STYLE_BASIC
    #MEMBER_STYLE_STATIC_ARRAY
    
  EndEnumeration 
  
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
  
  Interface Class

    GetName.s()
    GetSpecialMethodsPresent.i()
    GetDataMethodsNeeded.i()
    GetDynamicArrayPresent.i()
    GetListPresent.i()
    GetMapPresent.i()
    GetDynamicObject.i()
    GetFastCopy.i()
    GetSizeConstantsPresent.i()
    GetStaticArrayPresent.i()
    GetMembers.i()
    SetName(Name.s)
    Reset()
    AddMember(Description.s)
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    GenerateStaticArraySizeConstants.s(*Comments.Comments::Comments)
    GeneratePrivateMemberStructure.s(*Comments.Comments::Comments)
    BuiltParamList.s(Mode.i)
    
    GenerateSpecialMethodsDeclaration.s(*Comments.Comments::Comments, Mode.i)
    GenerateSpecialMethodsDefinition.s(*Comments.Comments::Comments)
    GenerateDataMethodsDeclaration.s(*Comments.Comments::Comments, Mode.i)
    GenerateDataMethodsDefinition.s(*Comments.Comments::Comments)
    
    GenerateConstructorDeclaration.s(*Comments.Comments::Comments)
    GenerateConstructorDefine.s(*Comments.Comments::Comments, *Rules.Rules::Rules) 
    GenerateDestructorDeclaration.s(*Comments.Comments::Comments)
    GenerateDestructorDefine.s(*Comments.Comments::Comments, *Rules.Rules::Rules) 
    Free()

  EndInterface

  Declare.i New(*StringUtilities.StringUtilities::StringUtilities)

EndDeclareModule

Module Class

  Structure Private_Members

    VirtualTable.i
    Name.s
    SpecialMethodsPresent.i
    DataMethodsNeeded.i
    DynamicArrayPresent.i
    ListPresent.i
    MapPresent.i
    DynamicObject.i
    FastCopy.i
    SizeConstantsPresent.i
    StaticArrayPresent.i
    Members.Chain::Chain
    *StringUtilities.StringUtilities::StringUtilities
    
  EndStructure

  Procedure.s GetName(*This.Private_Members)

    ProcedureReturn *This\Name
  EndProcedure

  Procedure.i GetSpecialMethodsPresent(*This.Private_Members)

    ProcedureReturn *This\SpecialMethodsPresent
  EndProcedure
  
  Procedure.i GetDataMethodsNeeded(*This.Private_Members)
    
    ProcedureReturn *This\DataMethodsNeeded
  EndProcedure
  
  Procedure.i GetDynamicArrayPresent(*This.Private_Members)

    ProcedureReturn *This\DynamicArrayPresent
  EndProcedure

  Procedure.i GetListPresent(*This.Private_Members)

    ProcedureReturn *This\ListPresent
  EndProcedure

  Procedure.i GetDynamicObject(*This.Private_Members)

    ProcedureReturn *This\DynamicObject
  EndProcedure
  
  Procedure.i GetFastCopy(*This.Private_Members)

    ProcedureReturn *This\FastCopy
  EndProcedure
  
  Procedure.i GetMapPresent(*This.Private_Members)

    ProcedureReturn *This\MapPresent
  EndProcedure
  
  Procedure.i GetSizeConstantsPresent(*This.Private_Members)

    ProcedureReturn *This\SizeConstantsPresent
  EndProcedure

  Procedure.i GetStaticArrayPresent(*This.Private_Members)

    ProcedureReturn *This\StaticArrayPresent
  EndProcedure
  
  Procedure.i GetMembers(*This.Private_Members)
  
    ProcedureReturn *This\Members
  EndProcedure
  
  Procedure SetName(*This.Private_Members, Name.s)

    *This\Name = Name

  EndProcedure
  
  Procedure Reset(*This.Private_Members)
    
    *This\Name = ""
    *This\SpecialMethodsPresent = 0
    *This\DataMethodsNeeded = 0
    *This\DynamicArrayPresent = 0
    *This\ListPresent = 0
    *This\MapPresent = 0
    *This\DynamicObject = 0
    *This\FastCopy = #True
    *This\SizeConstantsPresent = 0
    *This\StaticArrayPresent = 0
    
    *This\Members\FreeLinks()
    
  EndProcedure
  
  Procedure AddMember(*This.Private_Members, Description.s)

    *FoolProofer.FoolProofer::FoolProofer = *This\StringUtilities\GetFoolProofer()
    
    If *FoolProofer\IsItValidArrayDescription(Description) = #True
      
      *This\Members\AddLink(DynamicArray::New(Description, *This\StringUtilities, @FastCopy.i), #MEMBER_STYLE_ARRAY)
      *This\DynamicArrayPresent = #True
      *This\DynamicObject = #True
      
      If *This\FastCopy = #True And FastCopy = #False
        *This\FastCopy = #False
      EndIf
      
    EndIf
    
    If *FoolProofer\IsItValidListDescription(Description) = #True
      
      *This\Members\AddLink(LinkedList::New(Description, *This\StringUtilities, @FastCopy.i), #MEMBER_STYLE_LIST)
      *This\ListPresent = #True
      *This\DynamicObject = #True
      
      If *This\FastCopy = #True And FastCopy = #False
        *This\FastCopy = #False
      EndIf
      
    EndIf
    
    If *FoolProofer\IsItValidMapDescription(Description) = #True
      
      *This\Members\AddLink(HashMap::New(Description, *This\StringUtilities, @FastCopy.i), #MEMBER_STYLE_MAP)
      *This\MapPresent = #True
      *This\DynamicObject = #True
      
      If *This\FastCopy = #True And FastCopy = #False
        *This\FastCopy = #False
      EndIf
      
    EndIf
    
    If *FoolProofer\IsItValidBasicDescription(Description) = #True
      
      *This\Members\AddLink(Basic::New(Description, *This\StringUtilities, @DynamicObject, @FastCopy.i), #MEMBER_STYLE_BASIC)
      
      If *This\DynamicObject = #False And DynamicObject = #True
        *This\DynamicObject = #True
      EndIf
      
      If *This\FastCopy = #True And FastCopy = #False
        *This\FastCopy = #False
      EndIf
      
      ExtraInfo.s = *FoolProofer\GetBasicExtraInfo(Description)
      
      If FindString(ExtraInfo, "Special")
        *This\SpecialMethodsPresent = #True
      ElseIf FindString(ExtraInfo, "Data")
        *This\DataMethodsNeeded = #True
      EndIf
      
    EndIf
    
    If *FoolProofer\IsItValidStaticArrayDescription(Description) = #True
      
      *This\Members\AddLink(StaticArray::New(Description, *This\StringUtilities, @DynamicObject.i, @FastCopy.i), #MEMBER_STYLE_STATIC_ARRAY)
      *This\StaticArrayPresent = #True
      
      If *This\DynamicObject = #False And DynamicObject = #True
        *This\DynamicObject = #True
      EndIf
      
      If *This\FastCopy = #True And FastCopy = #False
        *This\FastCopy = #False
      EndIf
      
      BracketPart.s = *FoolProofer\GetStaticArrayBracketPart(Description)
      
      If FindString(BracketPart, "#")
        *This\SizeConstantsPresent = #True
      EndIf
      
    EndIf

  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyString(GroupName, "Name", *This\Name)
    
    *CustomPrefs\AddKeyLong(GroupName, "Members_Max", *This\Members\LinkCount())
    
    *This\Members\FirstLink()
    
    Repeat
      
      Select *This\Members\GetLinkTag()
          
        Case #MEMBER_STYLE_ARRAY
          DynamicArray.DynamicArray::DynamicArray = *This\Members\GetLinkObject()
          *CustomPrefs\AddKeyString(GroupName, "Members_" + Str(*This\Members\LinkIndex()), DynamicArray\GetDescription())
          
        Case #MEMBER_STYLE_LIST
          LinkedList.LinkedList::LinkedList = *This\Members\GetLinkObject()
          *CustomPrefs\AddKeyString(GroupName, "Members_" + Str(*This\Members\LinkIndex()), LinkedList\GetDescription())
          
        Case #MEMBER_STYLE_MAP
          HashMap.HashMap::HashMap = *This\Members\GetLinkObject()
          *CustomPrefs\AddKeyString(GroupName, "Members_" + Str(*This\Members\LinkIndex()), HashMap\GetDescription())
          
        Case #MEMBER_STYLE_BASIC
          Basic.Basic::Basic = *This\Members\GetLinkObject()
          *CustomPrefs\AddKeyString(GroupName, "Members_" + Str(*This\Members\LinkIndex()), Basic\GetDescription())
          
        Case #MEMBER_STYLE_STATIC_ARRAY
          StaticArray.StaticArray::StaticArray = *This\Members\GetLinkObject()
          *CustomPrefs\AddKeyString(GroupName, "Members_" + Str(*This\Members\LinkIndex()), StaticArray\GetDescription())
          
      EndSelect
         
    Until *This\Members\NextLink() = #Null
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "Name")
        *This\Name = *CustomPrefs\GetValueString(GroupName, "Name", *This\Name)
      EndIf
      
      Members_Max.l = *CustomPrefs\GetValueLong(GroupName, "Members_Max") - 1
      
      For MemberID = 0 To Members_Max
        
        If *CustomPrefs\IsKey(GroupName, "Members_" + Str(MembersID))
          AddMember(*This, *CustomPrefs\GetValueString(GroupName, "Members_" + Str(MemberID), ""))
        EndIf
        
      Next
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure.s GenerateStaticArraySizeConstants(*This.Private_Members, *Comments.Comments::Comments)
    
    *This\Members\FirstLink()
    
    Repeat
      
      If *This\Members\GetLinkTag() = #MEMBER_STYLE_STATIC_ARRAY
        
        *StaticArray.StaticArray::StaticArray = *This\Members\GetLinkObject()
        
        If *StaticArray\GetArraySizeDeclare() <> ""
          Buffer.s + *Comments\Tabulation(1) + *StaticArray\GetArraySizeDeclare() + *Comments\LineFeed()
        EndIf
        
      EndIf 
      
    Until *This\Members\NextLink() = #Null
 
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GeneratePrivateMemberStructure(*This.Private_Members, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Structure Private_Members" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "VirtualTable.i" + *Comments\LineFeed()
    
    *This\Members\ResetChain()
    
    While *This\Members\NextLink()
      
      Select *This\Members\GetLinkTag()
          
        Case #MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *This\Members\GetLinkObject()
          Buffer + *Comments\Tabulation(2) + *DynamicArray\GetDescription() + *Comments\LineFeed()
          
        Case #MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *This\Members\GetLinkObject()
          Buffer + *Comments\Tabulation(2) + *LinkedList\GetDescription() + *Comments\LineFeed()
          
        Case #MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *This\Members\GetLinkObject()
          Buffer + *Comments\Tabulation(2) + *HashMap\GetDescription() + *Comments\LineFeed()
          
        Case #MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *This\Members\GetLinkObject()
          Buffer + *Comments\Tabulation(2) + *Basic\GetDescription() + *Comments\LineFeed()
          
        Case #MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *This\Members\GetLinkObject()
          Buffer + *Comments\Tabulation(2) + *StaticArray\GetDescriptionEx() + *Comments\LineFeed()
          
      EndSelect
      
    Wend
    
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndStructure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
 
  Procedure.s BuiltParamList(*This.Private_Members, Mode.i)

    Select Mode
        
      Case 0
        
        *This\Members\ResetChain()
        
        While *This\Members\NextLink()
          
          If *This\Members\GetLinkTag() = #MEMBER_STYLE_BASIC
            
            *Basic.Basic::Basic = *This\Members\GetLinkObject()
                 
            If *Basic\GetType() = #MEMBER_TYPE_OBJECT Or *Basic\GetType() = #MEMBER_TYPE_DATA_POINTER_C Or *Basic\GetType() = #MEMBER_TYPE_POINTER_C Or *Basic\GetType() = #MEMBER_TYPE_OBJECT_POINTER_C
              Pointer.s = "*"
            Else
              Pointer = ""
            EndIf
            
            ParamList.s + Pointer + *Basic\GetName() + *Basic\GetTypeLong()
            
            If *This\Members\LinkIndex() < *This\Members\LinkCount() - 1
              ParamList + ", "
            EndIf
            
          EndIf
          
        Wend
        
      Case 2
        
        *This\Members\ResetChain()
        
        While *This\Members\NextLink()
          
          If *This\Members\GetLinkTag() = #MEMBER_STYLE_BASIC
            
            *Basic.Basic::Basic = *This\Members\GetLinkObject()
            
            If *Basic\GetType() = #MEMBER_TYPE_OBJECT Or *Basic\GetType() = #MEMBER_TYPE_DATA_POINTER_C Or *Basic\GetType() = #MEMBER_TYPE_POINTER_C Or *Basic\GetType() = #MEMBER_TYPE_OBJECT_POINTER_C
              Pointer.s = "*"
            Else
              Pointer = ""
            EndIf
            
            ParamList.s + Pointer + *Basic\GetName() + *Basic\GetTypeLong() + " = " + *Basic\GetZeroOut()
            
            If *This\Members\LinkIndex() < *This\Members\LinkCount() - 1
              ParamList + ", "
            EndIf
            
          EndIf
          
        Wend
        
      Case 3
        
        *This\Members\ResetChain()
        
        While *This\Members\NextLink()
          
          If *This\Members\GetLinkTag() = #MEMBER_STYLE_BASIC
            
            *Basic.Basic::Basic = *This\Members\GetLinkObject()
            
            ParamList.s + *Basic\GetName()
            
            If *This\Members\LinkIndex() < *This\Members\LinkCount() - 1
              ParamList + ", "
            EndIf
            
          EndIf
          
        Wend
        
      Case 4
        
        *This\Members\ResetChain()
        
        While *This\Members\NextLink()
          
          If *This\Members\GetLinkTag() = #MEMBER_STYLE_BASIC
            
            *Basic.Basic::Basic = *This\Members\GetLinkObject()
            
            ParamList.s + "*This\" + *Basic\GetName()
            
            If *This\Members\LinkIndex() < *This\Members\LinkCount() - 1
              ParamList + ", "
            EndIf
            
          EndIf
          
        Wend
        
    EndSelect
    
    ProcedureReturn ParamList
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure.s GenerateSpecialMethodsDeclaration(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        
        *This\Members\ResetChain()
        
        While *This\Members\NextLink()
          
          If *This\Members\GetLinkTag() = #MEMBER_STYLE_BASIC
            
            *Basic.Basic::Basic = *This\Members\GetLinkObject()
            
            If *Basic\GetType() <= #MEMBER_TYPE_DOUBLE
              
              If FindString(*Basic\GetExtraInfo(), "Special")
                
                If FindString(*Basic\GetExtraInfo(), "Increment")
                  
                  If *Basic\GetType() <= #MEMBER_TYPE_FLOAT
                    Buffer.s + *Comments\Tabulation(2) + "Increment" + *Basic\GetName() + "(Increment" + *Basic\GetTypeLong() + " = 1)" + *Comments\LineFeed()
                  ElseIf  *Basic\GetType() = #MEMBER_TYPE_FLOAT Or *Basic\GetType() = #MEMBER_TYPE_DOUBLE
                    Buffer.s + *Comments\Tabulation(2) + "Increment" + *Basic\GetName() + "(Increment" + *Basic\GetTypeLong() + " = 1.0)" + *Comments\LineFeed()
                  EndIf
                EndIf
                
                If FindString(*Basic\GetExtraInfo(), "Decrement")
                  If *Basic\GetType() <= #MEMBER_TYPE_FLOAT
                    Buffer.s + *Comments\Tabulation(2) + "Decrement" + *Basic\GetName() + "(Decrement" + *Basic\GetTypeLong() + " = 1)" + *Comments\LineFeed()
                  ElseIf  *Basic\GetType() = #MEMBER_TYPE_FLOAT Or *Basic\GetType() = #MEMBER_TYPE_DOUBLE
                    Buffer.s + *Comments\Tabulation(2) + "Decrement" + *Basic\GetName() + "(Decrement" + *Basic\GetTypeLong() + " = 1.0)" + *Comments\LineFeed()
                  EndIf
                EndIf 
                
                If FindString(*Basic\GetExtraInfo(), "Looping")
                  If *Basic\GetType() <= #MEMBER_TYPE_DOUBLE
                    Buffer.s + *Comments\Tabulation(2) + "Looping" + *Basic\GetName() + "(Minimum" + *Basic\GetTypeLong() + ", Maximum" + *Basic\GetTypeLong() + ", Increment" + *Basic\GetTypeLong()  + ")" + *Comments\LineFeed()
                  EndIf
                EndIf 
                
                If FindString(*Basic\GetExtraInfo(), "Scrolling")
                  If *Basic\GetType() <= #MEMBER_TYPE_DOUBLE
                    Buffer.s + *Comments\Tabulation(2) + "Scrolling" + *Basic\GetName() + "(Minimum" + *Basic\GetTypeLong() + ", Maximum" + *Basic\GetTypeLong() + ", Increment" + *Basic\GetTypeLong()  + ")" + *Comments\LineFeed()
                  EndIf
                EndIf 
                
              EndIf
              
            EndIf
            
            If *Basic\GetType() <= #MEMBER_TYPE_QUAD
              
              If FindString(*Basic\GetExtraInfo(), "Special")
                
                If FindString(*Basic\GetExtraInfo(), "Toggle")
                  Buffer.s + *Comments\Tabulation(2) + "Toggle" + *Basic\GetName() + "()" + *Comments\LineFeed()
                EndIf
                
              EndIf
              
            EndIf       
            
          EndIf
          
        Wend
        
      Case 1
        
        *This\Members\ResetChain()
        
        While *This\Members\NextLink()
          
          If *This\Members\GetLinkTag() = #MEMBER_STYLE_BASIC
            
            *Basic.Basic::Basic = *This\Members\GetLinkObject()
            
            If *Basic\GetType() <= #MEMBER_TYPE_DOUBLE
              
              If FindString(*Basic\GetExtraInfo(), "Special")
                
                If FindString(*Basic\GetExtraInfo(), "Increment")
                  If *Basic\GetType() <= #MEMBER_TYPE_DOUBLE
                    Buffer.s + *Comments\Tabulation(2) + "Data.i @Increment" + *Basic\GetName() + "()" + *Comments\LineFeed()
                  EndIf
                EndIf
                
                If FindString(*Basic\GetExtraInfo(), "Decrement")
                  If *Basic\GetType() <= #MEMBER_TYPE_DOUBLE
                    Buffer.s + *Comments\Tabulation(2) + "Data.i @Decrement" + *Basic\GetName() + "()" + *Comments\LineFeed()
                  EndIf
                EndIf 
                
                If FindString(*Basic\GetExtraInfo(), "Looping")
                  If *Basic\GetType() <= #MEMBER_TYPE_DOUBLE
                    Buffer.s + *Comments\Tabulation(2) + "Data.i @Looping" + *Basic\GetName() + "()" + *Comments\LineFeed()
                  EndIf
                EndIf 
                
                If FindString(*Basic\GetExtraInfo(), "Scrolling")
                  If *Basic\GetType() <= #MEMBER_TYPE_DOUBLE
                    Buffer.s + *Comments\Tabulation(2) + "Data.i @Scrolling" + *Basic\GetName() + "()" + *Comments\LineFeed()
                  EndIf
                EndIf 
                
              EndIf
              
            EndIf
            
            If *Basic\GetType() <= #MEMBER_TYPE_QUAD
              
              If FindString(*Basic\GetExtraInfo(), "Special")
                
                If FindString(*Basic\GetExtraInfo(), "Toggle")
                  Buffer.s + *Comments\Tabulation(2) + "Data.i @Toggle" + *Basic\GetName() + "()" + *Comments\LineFeed()
                EndIf
                
              EndIf
              
            EndIf       
            
          EndIf
          
        Wend
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSpecialMethodsDefinition(*This.Private_Members, *Comments.Comments::Comments)
    
    *This\Members\ResetChain()
    
    While *This\Members\NextLink()
      
      If *This\Members\GetLinkTag() = #MEMBER_STYLE_BASIC
        
        *Basic.Basic::Basic = *This\Members\GetLinkObject()
        
        If *Basic\GetType() <= #MEMBER_TYPE_DOUBLE
          
          If FindString(*Basic\GetExtraInfo(), "Special")
            
            If FindString(*Basic\GetExtraInfo(), "Increment")
              
              If *Basic\GetType() <= #MEMBER_TYPE_FLOAT
                Buffer.s + *Comments\Tabulation(1) + "Procedure Increment" + *Basic\GetName() + "(*This.Private_Members, Increment" + *Basic\GetTypeLong() + " = 1)" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + "*This\" + *Basic\GetName() + " = *This\" + *Basic\GetName() + " + Increment" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(1) + *Comments\LineFeed()
              ElseIf  *Basic\GetType() = #MEMBER_TYPE_FLOAT Or *Basic\GetType() = #MEMBER_TYPE_DOUBLE
                Buffer.s + *Comments\Tabulation(1) + "Procedure Increment" + *Basic\GetName() + "(*This.Private_Members, Increment" + *Basic\GetTypeLong() + " = 1.0)" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + "*This\" + *Basic\GetName() + " = *This\" + *Basic\GetName() + " + Increment" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(1) + *Comments\LineFeed()
              EndIf
              
            EndIf
            
            If FindString(*Basic\GetExtraInfo(), "Decrement")
              If *Basic\GetType() <= #MEMBER_TYPE_FLOAT
                Buffer.s + *Comments\Tabulation(1) + "Procedure Decrement" + *Basic\GetName() + "(*This.Private_Members, Decrement" + *Basic\GetTypeLong() + " = 1)" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + "*This\" + *Basic\GetName() + " = *This\" + *Basic\GetName() + " - Decrement" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(1) + *Comments\LineFeed()
              ElseIf  *Basic\GetType() = #MEMBER_TYPE_FLOAT Or *Basic\GetType() = #MEMBER_TYPE_DOUBLE
                Buffer.s + *Comments\Tabulation(1) + "Procedure Decrement" + *Basic\GetName() + "(Decrement" + *Basic\GetTypeLong() + " = 1.0)" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + "*This\" + *Basic\GetName() + " = *This\" + *Basic\GetName() + " - Decrement" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(1) + *Comments\LineFeed()
              EndIf
              
            EndIf 
            
            If FindString(*Basic\GetExtraInfo(), "Looping")
              If *Basic\GetType() <= #MEMBER_TYPE_DOUBLE
                Buffer.s + *Comments\Tabulation(1) + "Procedure Looping" + *Basic\GetName() + "(*This.Private_Members, Minimum" + *Basic\GetTypeLong() + ", Maximum" + *Basic\GetTypeLong() + ", Increment" + *Basic\GetTypeLong()  + ")" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + "*This\" + *Basic\GetName() + " = *This\" + *Basic\GetName() + " + Increment" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + "If *This\" + *Basic\GetName() + " > Maximum" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(3) + "*This\" + *Basic\GetName() + " = Minimum" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + "ElseIf *This\" + *Basic\GetName() + " < Minimum" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(3) + "*This\" + *Basic\GetName() + " = Maximum" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + "EndIf " + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(1) + *Comments\LineFeed()
              EndIf
              
            EndIf 
            
            If FindString(*Basic\GetExtraInfo(), "Scrolling")
              If *Basic\GetType() <= #MEMBER_TYPE_DOUBLE
                Buffer.s + *Comments\Tabulation(1) + "Procedure Scrolling" + *Basic\GetName() + "(*This.Private_Members, Minimum" + *Basic\GetTypeLong() + ", Maximum" + *Basic\GetTypeLong() + ", Increment" + *Basic\GetTypeLong()  + ")" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + "*This\" + *Basic\GetName() + " = *This\" + *Basic\GetName() + " + Increment" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + "If *This\" + *Basic\GetName() + " > Maximum" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(3) + "*This\" + *Basic\GetName() + " = Maximum" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + "ElseIf *This\" + *Basic\GetName() + " < Minimum" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(3) + "*This\" + *Basic\GetName() + " = Minimum" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + "EndIf " + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(2) + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
                Buffer.s + *Comments\Tabulation(1) + *Comments\LineFeed()
              EndIf
              
            EndIf 
            
          EndIf
          
        EndIf
        
        If *Basic\GetType() <= #MEMBER_TYPE_QUAD
          
          If FindString(*Basic\GetExtraInfo(), "Special")
            
            If FindString(*Basic\GetExtraInfo(), "Toggle")
              Buffer.s + *Comments\Tabulation(1) + "Procedure Toggle" + *Basic\GetName() + "(*This.Private_Members)" + *Comments\LineFeed()
              Buffer.s + *Comments\Tabulation(2) + *Comments\LineFeed()
              Buffer.s + *Comments\Tabulation(2) + "*This\" + *Basic\GetName() + " = *This\" + *Basic\GetName() + " ! 1" + *Comments\LineFeed()
              Buffer.s + *Comments\Tabulation(2) + *Comments\LineFeed()
              Buffer.s + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
              Buffer.s + *Comments\Tabulation(1) + *Comments\LineFeed()
            EndIf
            
          EndIf
          
        EndIf       
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure.s GenerateDataMethodsDeclaration(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        
        *This\Members\ResetChain()
        
        While *This\Members\NextLink()
          
          If *This\Members\GetLinkTag() = #MEMBER_STYLE_BASIC
            
            *Basic.Basic::Basic = *This\Members\GetLinkObject()
            
            If FindString(*Basic\GetExtraInfo(), "Data")
              Buffer.s + *Comments\Tabulation(2) + "Allocate" + *Basic\GetName() + "Memory()" + *Comments\LineFeed()
            EndIf
            
          EndIf
          
        Wend
        
      Case 1
        
        *This\Members\ResetChain()
        
        While *This\Members\NextLink()
          
          If *This\Members\GetLinkTag() = #MEMBER_STYLE_BASIC
            
            *Basic.Basic::Basic = *This\Members\GetLinkObject()
            
            If FindString(*Basic\GetExtraInfo(), "Data")
              Buffer.s + *Comments\Tabulation(2) + "Data.i @Allocate" + *Basic\GetName() + "Memory()" + *Comments\LineFeed()
            EndIf
            
          EndIf
          
        Wend
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDataMethodsDefinition(*This.Private_Members, *Comments.Comments::Comments)
    
    *This\Members\ResetChain()
    
    While *This\Members\NextLink()
      
      If *This\Members\GetLinkTag() = #MEMBER_STYLE_BASIC
        
        *Basic.Basic::Basic = *This\Members\GetLinkObject()
        
        If FindString(*Basic\GetExtraInfo(), "Data")
          SizeMemberName.s = Trim(StringField(*Basic\GetExtraInfo(), 2, ","))
          Buffer.s + *Comments\Tabulation(1) + "Procedure Allocate" + *Basic\GetName() + "Memory(*This.Private_Members)" + *Comments\LineFeed()
          Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
          Buffer + *Comments\Tabulation(2) + "If *This\" + SizeMemberName + " > 0" + *Comments\LineFeed()
          Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
          Buffer + *Comments\Tabulation(3) + "*This\" + *Basic\GetAccess() + " = AllocateMemory(*This\" + SizeMemberName + ")" + *Comments\LineFeed()
          Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
          Buffer + *Comments\Tabulation(3) + "If *This\" + *Basic\GetAccess() + " = #Null" + *Comments\LineFeed()
          Buffer + *Comments\Tabulation(4) + "MessageRequester(" + Chr(34) + "Fatal Error" + Chr(34) + ", " + Chr(34) + *This\Name + "\Allocate" + *Basic\GetName() + "Memory() fail to allocate memory !" + Chr(34) + ")" + *Comments\LineFeed()
          Buffer + *Comments\Tabulation(4) + "End" + *Comments\LineFeed()
          Buffer + *Comments\Tabulation(3) + "EndIf" + *Comments\LineFeed()
          Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
          Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
          Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
          Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
          Buffer.s + *Comments\Tabulation(1) + *Comments\LineFeed()
        EndIf
        
      EndIf
      
    Wend
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateConstructorDeclaration(*This.Private_Members, *Comments.Comments::Comments)
    
    If GetDynamicArrayPresent(*This) = #True Or GetListPresent(*This) = #True Or GetMapPresent(*This) = #True Or GetStaticArrayPresent(*This) = #True
      Output.s = *Comments\Tabulation(1) + "Declare.i New()"  + *Comments\LineFeed()
    Else
      Output = *Comments\Tabulation(1) + "Declare.i New(" + BuiltParamList(*This, 2)  + ")"  + *Comments\LineFeed()
    EndIf
    
    ProcedureReturn Output
  EndProcedure
  
  Procedure.s GenerateConstructorDefine(*This.Private_Members, *Comments.Comments::Comments, *Rules.Rules::Rules) 
    
    If GetDynamicArrayPresent(*This) = #True Or GetListPresent(*This) = #True Or GetMapPresent(*This) = #True Or GetStaticArrayPresent(*This) = #True
      
      SeparatorNeeded.i = #False
      
      Buffer.s + *Comments\Tabulation(1) + "Procedure.i New()" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "*This.Private_Members = AllocateStructure(Private_Members)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "*This\VirtualTable = ?START_METHODS" + *Comments\LineFeed()
      
      *This\Members\ResetChain()
      
      While *This\Members\NextLink()

        Select *This\Members\GetLinkTag()
            
          Case #MEMBER_STYLE_ARRAY
            *DynamicArray.DynamicArray::DynamicArray = *This\Members\GetLinkObject()
            Instruction.s = *DynamicArray\GenerateConstructorInstruction(*Comments, @SeparatorNeeded, *Rules)
            
          Case #MEMBER_STYLE_LIST
            SeparatorNeeded = #False
            
          Case #MEMBER_STYLE_MAP
            SeparatorNeeded = #False
            
          Case #MEMBER_STYLE_BASIC
            *Basic.Basic::Basic = *This\Members\GetLinkObject()
            Instruction = *Basic\GenerateConstructorInstruction(*Comments, 0, @SeparatorNeeded)
            
          Case #MEMBER_STYLE_STATIC_ARRAY
            *StaticArray.StaticArray::StaticArray = *This\Members\GetLinkObject()
            Instruction = *StaticArray\GenerateConstructorInstruction(*Comments, @SeparatorNeeded) 
            
        EndSelect
        
        If *This\Members\LinkIndex() = 0 Or SeparatorNeeded = #True Or PreviousSeparator.i = #True
          Buffer2.s + *Comments\Tabulation(2) + *Comments\LineFeed()
        EndIf 
        
        Buffer2 + Instruction
        Instruction = ""
        
        If *This\Members\LinkIndex() = *This\Members\LinkCount() - 1
          Buffer2 + *Comments\Tabulation(2) + *Comments\LineFeed()
        EndIf
        
        PreviousSeparator = SeparatorNeeded
        
      Wend
      
      If Buffer2 = *Comments\Tabulation(2) + *Comments\LineFeed() + *Comments\Tabulation(2) + *Comments\LineFeed()
        Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Else
        Buffer + Buffer2
      EndIf
      
      Buffer + *Comments\Tabulation(2) + "ProcedureReturn *This" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
      
    Else
      
      Buffer + *Comments\Tabulation(1) + "Procedure.i New(" + BuiltParamList(*This, 2) + ")" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "*This.Private_Members = AllocateStructure(Private_Members)" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(2) + "*This\VirtualTable = ?START_METHODS" + *Comments\LineFeed()
      
      *This\Members\ResetChain()
      
      While *This\Members\NextLink()
        
        Select *This\Members\GetLinkTag()
            
          Case #MEMBER_STYLE_ARRAY
            *DynamicArray.DynamicArray::DynamicArray = *This\Members\GetLinkObject()
            Instruction.s = *DynamicArray\GenerateConstructorInstruction(*Comments, @SeparatorNeeded, *Rules)
            
          Case #MEMBER_STYLE_LIST
            SeparatorNeeded = #False
            
          Case #MEMBER_STYLE_MAP
            SeparatorNeeded = #False
            
          Case #MEMBER_STYLE_BASIC
            *Basic.Basic::Basic = *This\Members\GetLinkObject()
            Instruction.s = *Basic\GenerateConstructorInstruction(*Comments, 1, @SeparatorNeeded)
            
          Case #MEMBER_STYLE_STATIC_ARRAY
            *StaticArray.StaticArray::StaticArray = *This\Members\GetLinkObject()
            Instruction = *StaticArray\GenerateConstructorInstruction(*Comments, @SeparatorNeeded) 
            
        EndSelect
        
        If *This\Members\LinkIndex() = 0 Or SeparatorNeeded = #True Or PreviousSeparator.i = #True
          Buffer2.s + *Comments\Tabulation(2) + *Comments\LineFeed()
        EndIf 
        
        Buffer2 + Instruction
        Instruction = ""
        
        If *This\Members\LinkIndex() = *This\Members\LinkCount() - 1
          Buffer2 + *Comments\Tabulation(2) + *Comments\LineFeed()
        EndIf
        
        PreviousSeparator = SeparatorNeeded
        
      Wend
      
      If Buffer2 = *Comments\Tabulation(2) + *Comments\LineFeed() + *Comments\Tabulation(2) + *Comments\LineFeed()
        Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      Else
        Buffer + Buffer2
      EndIf
      
      Buffer + *Comments\Tabulation(2) + "ProcedureReturn *This" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
      Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
      
    EndIf
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateDestructorDeclaration(*This.Private_Members, *Comments.Comments::Comments)
    
    ProcedureReturn *Comments\Tabulation(1) + "; Declare Free(*This)"  + *Comments\LineFeed()
  EndProcedure
  
  Procedure.s GenerateDestructorDefine(*This.Private_Members, *Comments.Comments::Comments, *Rules.Rules::Rules) 
    
    Buffer.s + *Comments\Tabulation(1) + "Procedure Free(*This.Private_Members)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    
    SeparatorNeeded.i = #False
    
    *This\Members\ResetChain()
    
    While *This\Members\NextLink()
      
      Select *This\Members\GetLinkTag()
          
        Case #MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *This\Members\GetLinkObject()
          Buffer + *DynamicArray\GenerateDestructorInstruction(*Comments, @SeparatorNeeded, *Rules)
          
        Case #MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *This\Members\GetLinkObject()
          Buffer + *LinkedList\GenerateDestructorInstruction(*Comments, @SeparatorNeeded)
          
        Case #MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *This\Members\GetLinkObject()
          Buffer + *HashMap\GenerateDestructorInstruction(*Comments, @SeparatorNeeded)
          
        Case #MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *This\Members\GetLinkObject()
          Buffer + *Basic\GenerateDestructorInstruction(*Comments, @SeparatorNeeded)
          
        Case #MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *This\Members\GetLinkObject()
          Buffer + *StaticArray\GenerateDestructorInstruction(*Comments, @SeparatorNeeded)
          
      EndSelect
      
      If SeparatorNeeded = #True
        Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
      EndIf 
      
    Wend
    
    Buffer + *Comments\Tabulation(2) + "FreeStructure(*This)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure Free(*This.Private_Members)

    If *This\Members <> #Null
      *This\Members\Free()
    EndIf
    
    FreeStructure(*This)

  EndProcedure

  Procedure.i New(*StringUtilities.StringUtilities::StringUtilities)

    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\Members = Chain::New()
    *This\FastCopy = #True
    *This\StringUtilities = *StringUtilities
    
    ProcedureReturn *This
  EndProcedure

  DataSection
    START_METHODS:
    Data.i @GetName()
    Data.i @GetSpecialMethodsPresent()
    Data.i @GetDataMethodsNeeded()
    Data.i @GetDynamicArrayPresent()
    Data.i @GetListPresent()
    Data.i @GetMapPresent()
    Data.i @GetDynamicObject()
    Data.i @GetFastCopy()
    Data.i @GetSizeConstantsPresent()
    Data.i @GetStaticArrayPresent()
    Data.i @GetMembers()
    Data.i @SetName()
    Data.i @Reset()
    Data.i @AddMember()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    Data.i @GenerateStaticArraySizeConstants()
    Data.i @GeneratePrivateMemberStructure()
    Data.i @BuiltParamList()
    Data.i @GenerateSpecialMethodsDeclaration()
    Data.i @GenerateSpecialMethodsDefinition()
    Data.i @GenerateDataMethodsDeclaration()
    Data.i @GenerateDataMethodsDefinition()
    Data.i @GenerateConstructorDeclaration()
    Data.i @GenerateConstructorDefine()
    Data.i @GenerateDestructorDeclaration()
    Data.i @GenerateDestructorDefine()
    Data.i @Free()
    END_METHODS:
  EndDataSection

EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (200000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = -+-HD5-
; EnableXP
; CompileSourceDirectory