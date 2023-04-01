; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.9.10
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - XMLFile.pb
; Version du fichier : 1.1.2
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 08-12-2019
; Mise à jour : 14-06-2022
; Codé pour PureBasic : V6.00 Beta 10
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule XMLFile
  
  Interface XMLFile
    
    GetNodeWithChild.i()
    GetNodeWithAttribute.i()
    GetAddCollectAttribute.i()
    GetCreateLoadFile.i()
    GetCatchFile.i()
    SetNodeWithChild(NodeWithChild.i)
    SetNodeWithAttribute(NodeWithAttribute.i)
    SetAddCollectAttribute(AddCollectAttribute.i)
    SetCreateLoadFile(CreateLoadFile.i)
    SetCatchFile(CatchFile.i)
    
    Reset()
    
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    GenerateSetNodeWithChildDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateGetNodeWithChildDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateSetNodeWithAttributeDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateGetNodeWithAttributeDeclare.s(*Comments.Comments::Comments, Mode.i)
    
    GenerateAddAttributeDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateCollectAttributeDeclare.s(*Comments.Comments::Comments, Mode.i)
    
    GenerateCreateFileDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateLoadFileDeclare.s(*Comments.Comments::Comments, Mode.i)
    GenerateCatchFileDeclare.s(*Comments.Comments::Comments, Mode.i)
    
    GenerateSetNodeWithChildDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateGetNodeWithChildDefine.s(*Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    GenerateSetNodeWithAttributeDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateGetNodeWithAttributeDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    
    GenerateAddAttributeDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    GenerateCollectAttributeDefine.s(*Class.Class::Class, *Comments.Comments::Comments)
    
    GenerateCreateFileDefine.s(*Comments.Comments::Comments)
    GenerateLoadFileDefine.s(*Comments.Comments::Comments)
    GenerateCatchFileDefine.s(*Comments.Comments::Comments)
    
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module XMLFile
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<
  
  Structure Private_Members
    
    VirtualTable.i
    NodeWithChild.i
    NodeWithAttribute.i
    AddCollectAttribute.i
    CreateLoadFile.i
    CatchFile.i
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<
  
  Procedure.i GetNodeWithChild(*This.Private_Members)
    
    ProcedureReturn *This\NodeWithChild
  EndProcedure
  
  Procedure.i GetNodeWithAttribute(*This.Private_Members)
    
    ProcedureReturn *This\NodeWithAttribute
  EndProcedure
  
  Procedure.i GetAddCollectAttribute(*This.Private_Members)
    
    ProcedureReturn *This\AddCollectAttribute
  EndProcedure
  
  Procedure.i GetCreateLoadFile(*This.Private_Members)
    
    ProcedureReturn *This\CreateLoadFile
  EndProcedure
  
  Procedure.i GetCatchFile(*This.Private_Members)
    
    ProcedureReturn *This\CatchFile
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<
  
  Procedure SetNodeWithChild(*This.Private_Members, NodeWithChild.i)
    
    *This\NodeWithChild = NodeWithChild
    
  EndProcedure
  
  Procedure SetNodeWithAttribute(*This.Private_Members, NodeWithAttribute.i)
    
    *This\NodeWithAttribute = NodeWithAttribute
    
  EndProcedure
  
  Procedure SetAddCollectAttribute(*This.Private_Members, AddCollectAttribute.i)
    
    *This\AddCollectAttribute = AddCollectAttribute
    
  EndProcedure
  
  Procedure SetCreateLoadFile(*This.Private_Members, CreateLoadFile.i)
    
    *This\CreateLoadFile = CreateLoadFile
    
  EndProcedure
  
  Procedure SetCatchFile(*This.Private_Members, CatchFile.i)
    
    *This\CatchFile = CatchFile
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur Reset <<<<<
  
  Procedure Reset(*This.Private_Members)
    
    *This\NodeWithChild = 0
    *This\NodeWithAttribute = 0
    *This\AddCollectAttribute = 0
    *This\CreateLoadFile = 0
    *This\CatchFile = 0
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyInteger(GroupName, "NodeWithChild", *This\NodeWithChild)
    *CustomPrefs\AddKeyInteger(GroupName, "NodeWithAttribute", *This\NodeWithAttribute)
    *CustomPrefs\AddKeyInteger(GroupName, "AddCollectAttribute", *This\AddCollectAttribute)
    *CustomPrefs\AddKeyInteger(GroupName, "CreateLoadFile", *This\CreateLoadFile)
    *CustomPrefs\AddKeyInteger(GroupName, "CatchFile", *This\CatchFile)
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "NodeWithChild")
        *This\NodeWithChild = *CustomPrefs\GetValueInteger(GroupName, "NodeWithChild", *This\NodeWithChild)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "NodeWithAttribute")
        *This\NodeWithAttribute = *CustomPrefs\GetValueInteger(GroupName, "NodeWithAttribute", *This\NodeWithAttribute)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "AddCollectAttribute")
        *This\AddCollectAttribute = *CustomPrefs\GetValueInteger(GroupName, "AddCollectAttribute", *This\AddCollectAttribute)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "CreateLoadFile")
        *This\CreateLoadFile = *CustomPrefs\GetValueInteger(GroupName, "CreateLoadFile", *This\CreateLoadFile)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "CatchFile")
        *This\CatchFile = *CustomPrefs\GetValueInteger(GroupName, "CatchFile", *This\CatchFile)
      EndIf
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les différents générateur de code <<<<<
  
  Procedure.s GenerateSetNodeWithChildDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "XML_SetNode(CurrentNode.i)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @XML_SetNode()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateGetNodeWithChildDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)

    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "XML_GetNode.i(CurrentNode.i)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @XML_GetNode()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSetNodeWithAttributeDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)

    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "XML_SetAttribute(CurrentNode.i, NodeName.s)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @XML_SetAttribute()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateGetNodeWithAttributeDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "XML_GetAttribute(CurrentNode.i, NodeName.s, Index.l = 1)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @XML_GetAttribute()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateAddAttributeDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "XML_AddAttribute(CurrentNode.i)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @XML_AddAttribute()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateCollectAttributeDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "XML_CollectAttribute(CurrentNode.i)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @XML_CollectAttribute()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateCreateFileDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "XML_CreateFile(FileName.s)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @XML_CreateFile()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateLoadFileDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "XML_LoadFile(FileName.s)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @XML_LoadFile()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateCatchFileDeclare(*This.Private_Members, *Comments.Comments::Comments, Mode.i)
    
    Select Mode
        
      Case 0
        Buffer.s = *Comments\Tabulation(2) + "XML_CatchFile(*Buffer, BufferSize.q)" + *Comments\LineFeed()
        
      Case 1
        Buffer = *Comments\Tabulation(2) + "Data.i @XML_CatchFile()" + *Comments\LineFeed()
        
    EndSelect
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSetNodeWithChildDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure XML_SetNode(*This.Private_Members, CurrentNode.i)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If ParentXMLNode(CurrentNode) = #Null" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "ObjectNode = CreateXMLNode(CurrentNode, " + Chr(34) + *Class\GetName() + Chr(34) + ")" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "Else" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "ObjectNode = CurrentNode" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateXMLSetNodeInstruction(*Comments, *Rules)
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction = *LinkedList\GenerateXMLSetNodeInstruction(*Comments)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateXMLSetNodeInstruction(*Comments)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateXMLSetNodeInstruction(*Comments)
          SeparatorNeeded = #False
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateXMLSetNodeInstruction(*Comments)
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
  
  Procedure.s GenerateGetNodeWithChildDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments, *Rules.Rules::Rules)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure.i XML_GetNode(*This.Private_Members, CurrentNode.i)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If ParentXMLNode(CurrentNode) = #Null" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "ObjectNode = ChildXMLNode(CurrentNode)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "If GetXMLNodeName(ObjectNode) = " + Chr(34) + *Class\GetName() + Chr(34) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(4) + "Success.i = #True" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "Else" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "Success = #True" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "ObjectNode = CurrentNode" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If Success = #True" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "FieldNode = ChildXMLNode(ObjectNode)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "While FieldNode" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(4) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(4) + "Select GetXMLNodeName(FieldNode)" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          Instruction.s = *DynamicArray\GenerateXMLGetNodeInstruction(*Comments, *Rules)
          SeparatorNeeded.i = #True
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          Instruction = *LinkedList\GenerateXMLGetNodeInstruction(*Comments, *Rules)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          Instruction = *HashMap\GenerateXMLGetNodeInstruction(*Comments, *Rules)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction = *Basic\GenerateXMLGetNodeInstruction(*Comments)
          SeparatorNeeded = #True
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          Instruction = *StaticArray\GenerateXMLGetNodeInstruction(*Comments)
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
    
    Buffer + *Comments\Tabulation(4) + "EndSelect" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(4) + *Comments\LineFeed() 
    Buffer + *Comments\Tabulation(4) + "FieldNode = NextXMLNode(FieldNode)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(4) + *Comments\LineFeed() 
    Buffer + *Comments\Tabulation(3) + "Wend" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + *Comments\LineFeed()    
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ProcedureReturn Success" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateSetNodeWithAttributeDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)

    Buffer.s = *Comments\Tabulation(1) + "Procedure XML_SetAttribute(*This.Private_Members, CurrentNode.i, NodeName.s)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ObjectNode = CreateXMLNode(CurrentNode, NodeName)" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction.s = *Basic\GenerateXMLSetAttributeInstruction(*Comments)
          SeparatorNeeded = #False
          
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
  
  Procedure.s GenerateGetNodeWithAttributeDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure XML_GetAttribute(*This.Private_Members, CurrentNode.i, NodeName.s, Index.l = 1)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "ObjectNode = ChildXMLNode(CurrentNode, Index)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If GetXMLNodeName(ObjectNode) = NodeName" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction.s = *Basic\GenerateXMLGetAttributeInstruction(*Comments)
          SeparatorNeeded = #False
          
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
    
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateAddAttributeDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure XML_AddAttribute(*This.Private_Members, CurrentNode.i)" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction.s = *Basic\GenerateXMLAddAttributeInstruction(*Comments)
          SeparatorNeeded = #False
          
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
  
  Procedure.s GenerateCollectAttributeDefine(*This.Private_Members, *Class.Class::Class, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure XML_CollectAttribute(*This.Private_Members, CurrentNode.i)" + *Comments\LineFeed()
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          Instruction.s = *Basic\GenerateXMLCollectAttributeInstruction(*Comments)
          SeparatorNeeded.i = #False
          
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
  
  Procedure.s GenerateCreateFileDefine(*This.Private_Members, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure XML_CreateFile(*This.Private_Members, FileName.s)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "FileID = CreateXML(#PB_Any)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If IsXML(FileID)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "XML_SetNode(*This, RootXMLNode(FileID))" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "FormatXML(FileID, #PB_XML_ReFormat | #PB_XML_ReIndent)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "SaveXML(FileID, FileName)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "FreeXML(FileID)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateLoadFileDefine(*This.Private_Members, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure XML_LoadFile(*This.Private_Members, FileName.s)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "FileID = LoadXML(#PB_Any, FileName)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If IsXML(FileID)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "FormatXML(FileID, #PB_XML_CutNewline)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "XML_GetNode(*This, RootXMLNode(FileID))" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "FreeXML(FileID)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + "EndProcedure" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(1) + *Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s GenerateCatchFileDefine(*This.Private_Members, *Comments.Comments::Comments)
    
    Buffer.s = *Comments\Tabulation(1) + "Procedure XML_CatchFile(*This.Private_Members, *Buffer, BufferSize.q)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "FileID = CatchXML(#PB_Any, *Buffer, BufferSize)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "If IsXML(FileID)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "FormatXML(FileID, #PB_XML_CutNewline)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "XML_GetNode(*This, RootXMLNode(FileID))" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(3) + "FreeXML(FileID)" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + "EndIf" + *Comments\LineFeed()
    Buffer + *Comments\Tabulation(2) + *Comments\LineFeed()
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
    Data.i @GetNodeWithChild()
    Data.i @GetNodeWithAttribute()
    Data.i @GetAddCollectAttribute()
    Data.i @GetCreateLoadFile()
    Data.i @GetCatchFile()
    Data.i @SetNodeWithChild()
    Data.i @SetNodeWithAttribute()
    Data.i @SetAddCollectAttribute()
    Data.i @SetCreateLoadFile()
    Data.i @SetCatchFile()
    Data.i @Reset()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    Data.i @GenerateSetNodeWithChildDeclare()
    Data.i @GenerateGetNodeWithChildDeclare()
    Data.i @GenerateSetNodeWithAttributeDeclare()
    Data.i @GenerateGetNodeWithAttributeDeclare()
    Data.i @GenerateAddAttributeDeclare()
    Data.i @GenerateCollectAttributeDeclare()
    Data.i @GenerateCreateFileDeclare()
    Data.i @GenerateLoadFileDeclare()
    Data.i @GenerateCatchFileDeclare()
    Data.i @GenerateSetNodeWithChildDefine()
    Data.i @GenerateGetNodeWithChildDefine()
    Data.i @GenerateSetNodeWithAttributeDefine()
    Data.i @GenerateGetNodeWithAttributeDefine()    
    Data.i @GenerateAddAttributeDefine()
    Data.i @GenerateCollectAttributeDefine()
    Data.i @GenerateCreateFileDefine()
    Data.i @GenerateLoadFileDefine()
    Data.i @GenerateCatchFileDefine()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (191000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = -------
; EnableXP
; CompileSourceDirectory