; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Nom du projet : Chain
; Nom du fichier : Chain - OOP.pb
; Version du fichier : 1.0.1
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 09-12-2020
; Mise à jour : 27-11-2021
; Code PureBasic : V6.00
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule Chain
  
  Interface Chain
    
    GetLinkTag.i()
    GetLinkObject.i()
    UpdateLink(*Object, Tag.i = 0, *ObjectDestructorAddress = #Null)
    AddLink(*Object, Tag.i = 0, *ObjectDestructorAddress = #Null)
    InsertLink(*Object, Tag.i = 0, *ObjectDestructorAddress = #Null)
    SelectLink.i(Index.l)
    SelectLinkByTag.i(Tag.i)
    ResetChain()
    FirstLink.i()
    LastLink.i()
    PreviousLink.i(Looping.i = #False)
    NextLink.i(Looping.i = #False)
    RemoveLink()
    LinkCount.l()
    LinkIndex.l()
    SwapLinks(*LinkA, *LinkB)
    FreeLinks()
    Free()
    
  EndInterface
  
  Declare.i New(*ObjectDestructorAddress = #Null, DirectlyThrowable.i = #False)
  
EndDeclareModule

Module Chain
  
  Structure Link
    
    Tag.i
    Object.i
    ObjectDestructor.i
    Index.l
    *PreviousLink.Link
    *NextLink.Link
    
  EndStructure
  
  Structure Private_Members
    
    VirtualTable.i
    LinkCount.l
    ObjectDestructor.i
    DirectlyThrowable.i
    *FirstLink.Link
    *CurrentLink.Link
    *LastLink.Link
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Macro IsBetween(Value, Lower, Upper)
    
    ((Value) >= (Lower) And (Value) <= (Upper))
    
  EndMacro
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Object Destructor prototype <<<<<
  
  Prototype DestructorFunction(*Object)
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<
  
  Procedure.i GetLinkTag(*This.Private_Members)
    
    If *This\CurrentLink <> #Null
      ProcedureReturn *This\CurrentLink\Tag
    EndIf
    
  EndProcedure
  
  Procedure.i GetLinkObject(*This.Private_Members)
    
    If *This\CurrentLink <> #Null
      ProcedureReturn *This\CurrentLink\Object
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur UpdateLink <<<<<

  Procedure UpdateLink(*This.Private_Members, *Object, Tag.i = 0, *ObjectDestructorAddress = #Null)
    
    If *This\CurrentLink <> #Null
      
      If *This\DirectlyThrowable = #False
        
        If *This\CurrentLink\ObjectDestructor <> #Null
          Destructor.DestructorFunction = *This\CurrentLink\ObjectDestructor
          Destructor(*This\CurrentLink\Object)
        ElseIf *This\ObjectDestructor <> #Null
          Destructor.DestructorFunction = *This\ObjectDestructor
          Destructor(*This\CurrentLink\Object)
        Else
          FreeStructure(*This\CurrentLink\Object)
        EndIf
        
      EndIf    
      
      *This\CurrentLink\Object = *Object
      *This\CurrentLink\Tag = Tag
      *This\CurrentLink\ObjectDestructor = *ObjectDestructorAddress
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur AddLink <<<<<
  
  Procedure AddLink(*This.Private_Members, *Object, Tag.i = 0, *ObjectDestructorAddress = #Null)
    
    *NewLink.Link = AllocateStructure(Link)
    
    *NewLink\Tag = Tag
    *NewLink\Object = *Object
    *NewLink\ObjectDestructor = *ObjectDestructorAddress
   
    If *This\FirstLink = #Null
      *This\FirstLink = *NewLink
      *This\LastLink = *NewLink
      *NewLink\PreviousLink = #Null
      *NewLink\NextLink = #Null
    Else
      
      If *This\CurrentLink = *This\LastLink
        *LastLink.Link = *This\LastLink
        *LastLink\NextLink = *NewLink
        *This\LastLink = *NewLink
        *NewLink\PreviousLink = *LastLink
        *NewLink\NextLink = #Null
      Else
        *CurrentLink.Link = *This\CurrentLink
        *FollowingLink.Link = *CurrentLink\NextLink
        *CurrentLink\NextLink = *NewLink
        *FollowingLink\PreviousLink = *NewLink
        *NewLink\PreviousLink = *CurrentLink
        *NewLink\NextLink = *FollowingLink
      EndIf
      
    EndIf
    
    *This\CurrentLink = *NewLink
    *This\LinkCount + 1
    
    *Link.Link = *This\FirstLink
    
    While *Link <> #Null
      
      *Link\Index = Counter
      Counter + 1
      *Link = *Link\NextLink
      
    Wend
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure InsertLink(*This.Private_Members, *Object, Tag.i = 0, *ObjectDestructorAddress = #Null)
    
    *NewLink.Link = AllocateStructure(Link)
    
    *NewLink\Tag = Tag
    *NewLink\Object = *Object
    *NewLink\ObjectDestructor = *ObjectDestructorAddress
    
    If *This\FirstLink = #Null
      *This\FirstLink = *NewLink
      *This\LastLink = *NewLink
      *NewLink\PreviousLink = #Null
      *NewLink\NextLink = #Null
    Else
      
      If *This\CurrentLink = *This\FirstLink
        *FirstLink.Link = *This\FirstLink
        *NewLink\PreviousLink = #Null
        *NewLink\NextLink = *FirstLink
        *This\CurrentLink\PreviousLink = *NewLink
        *This\FirstLink = *NewLink
      Else
        *CurrentLink.Link = *This\CurrentLink
        *PreviousLink.Link = *CurrentLink\PreviousLink
        *CurrentLink\PreviousLink = *NewLink
        *PreviousLink\NextLink = *NewLink
        *NewLink\PreviousLink = *PreviousLink
        *NewLink\NextLink = *CurrentLink
      EndIf
      
    EndIf
    
    *This\CurrentLink = *NewLink
    *This\LinkCount + 1
    
    *Link.Link = *This\FirstLink
    
    While *Link <> #Null
      
      *Link\Index = Counter
      Counter + 1
      *Link = *Link\NextLink
      
    Wend
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur SelectLink <<<<<
  
  Procedure.i SelectLink(*This.Private_Members, Index.l)
    
    *Selected.Link = #Null
    
    If IsBetween(Index, 0, *This\LinkCount - 1)
      
      *Link.Link = *This\FirstLink
      
      While *Link <> #Null
        
        If *Link\Index = Index
          *This\CurrentLink = *Link
          *Selected = *Link
          *Link = #Null
        Else
          *Link = *Link\NextLink
        EndIf
        
      Wend
      
    EndIf
    
    ProcedureReturn *Selected
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur SelectLinkByTag <<<<<
  
  Procedure.i SelectLinkByTag(*This.Private_Members, Tag.i)
    
    *Selected.Link = #Null
    *Link.Link = *This\FirstLink
    
    While *Link <> #Null
      
      If *Link\Tag = Tag
        *This\CurrentLink = *Link
        *Selected = *Link
        *Link = #Null
      Else
        *Link = *Link\NextLink
      EndIf
      
    Wend
    
    ProcedureReturn *Selected
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur ResetChain <<<<<
  
  Procedure ResetChain(*This.Private_Members)
    
    *This\CurrentLink = #Null
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur FirstLink <<<<<
  
  Procedure.i FirstLink(*This.Private_Members)
    
    *This\CurrentLink = *This\FirstLink
    
   ProcedureReturn *This\CurrentLink
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur LastLink <<<<<
  
  Procedure.i LastLink(*This.Private_Members)
    
    *This\CurrentLink = *This\LastLink
    
   ProcedureReturn *This\CurrentLink
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur PreviousLink <<<<<
  
  Procedure.i PreviousLink(*This.Private_Members, Looping.i = #False)
    
    If *This\CurrentLink <> #Null
      
      *Current.Link = *This\CurrentLink
      *Previous.Link = *Current\PreviousLink
      
      If Looping = #True
        
        If *Previous <> #Null
          *This\CurrentLink = *Previous
        Else
          *This\CurrentLink = *This\LastLink
        EndIf
        
      Else
        
        *This\CurrentLink = *Previous
        
      EndIf
      
    Else
      
      *This\CurrentLink = *This\LastLink
      
    EndIf
    
    ProcedureReturn *This\CurrentLink
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur NextLink <<<<<
  
  Procedure.i NextLink(*This.Private_Members, Looping.i = #False)
    
    If *This\CurrentLink <> #Null
      
      *Current.Link = *This\CurrentLink
      *Next.Link = *Current\NextLink
      
      If Looping = #True
        
        If *Next <> #Null
          *This\CurrentLink = *Next
        Else
          *This\CurrentLink = *This\FirstLink
        EndIf
        
      Else
        
        *This\CurrentLink = *Next
        
      EndIf
      
    Else
      
      *This\CurrentLink = *This\FirstLink
      
    EndIf
    
    ProcedureReturn *This\CurrentLink
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur RemoveLink <<<<<
  
  Procedure RemoveLink(*This.Private_Members)
    
    If *This\CurrentLink <> #Null
      
      If *This\DirectlyThrowable = #False
        
        If *This\CurrentLink\Object <> #Null
          
          If *This\CurrentLink\ObjectDestructor <> #Null
            Destructor.DestructorFunction = *This\CurrentLink\ObjectDestructor
            Destructor(*This\CurrentLink\Object)
          ElseIf *This\ObjectDestructor <> #Null
            Destructor.DestructorFunction = *This\ObjectDestructor
            Destructor(*This\CurrentLink\Object)
          Else
            FreeStructure(*This\CurrentLink\Object)
          EndIf
          
        EndIf
        
      EndIf
      
      If *This\CurrentLink = *This\FirstLink
        
        *Previous.Link = *This\CurrentLink\PreviousLink
        *Next.Link = *This\CurrentLink\NextLink
        
        *Previous\NextLink = *Next
        *Next\PreviousLink = *Previous
        
        FreeStructure(*This\CurrentLink)
        
        *This\CurrentLink = *Next
        *This\FirstLink = *Next
        
      Else
        
        *Previous.Link = *This\CurrentLink\PreviousLink
        *Next.Link = *This\CurrentLink\NextLink
        
        *Previous\NextLink = *Next
        *Next\PreviousLink = *Previous
        
        FreeStructure(*This\CurrentLink)
        *This\CurrentLink = *Previous
        
      EndIf
      
      *This\LinkCount - 1
      
      *Link.Link = *This\FirstLink
      
      While *Link <> #Null
        
        *Link\Index = Counter
        Counter + 1
        *Link = *Link\NextLink
        
      Wend
      
    EndIf
    
  EndProcedure
 
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur LinkCount <<<<<
  
  Procedure.l LinkCount(*This.Private_Members)
  
    ProcedureReturn *This\LinkCount
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur LinkCount <<<<<
  
  Procedure.l LinkIndex(*This.Private_Members)
    
    LinkIndex.l = -1
    
    If *This\CurrentLink <> #Null
      LinkIndex.l = *This\CurrentLink\Index
    EndIf

    ProcedureReturn LinkIndex
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur SwapLinks <<<<<
  
  Procedure SwapLinks(*This.Private_Members, *LinkA, *LinkB)
    
    If *LinkA <> *LinkB And *LinkA <> #Null And *LinkB <> #Null
      
      *LinkAA.Link = *LinkA
      *LinkBB.Link = *LinkB
      
      Swap *LinkAA\Tag, *LinkBB\Tag
      Swap *LinkAA\Object, *LinkBB\Object
      Swap *LinkAA\ObjectDestructor, *LinkBB\ObjectDestructor
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur FreeLinks (Private) <<<<<
  
  Procedure Private_FreeLinks(*This.Private_Members, *Link.Link)
    
    If *Link <> #Null
      
      *NextLink.Link = *Link\NextLink
      
      If *This\DirectlyThrowable = #False
        
        If *Link\Object <> #Null
          
          If *Link\ObjectDestructor <> #Null
            Destructor.DestructorFunction = *Link\ObjectDestructor
            Destructor(*Link\Object)
          ElseIf *This\ObjectDestructor <> #Null
            Destructor.DestructorFunction = *This\ObjectDestructor
            Destructor(*Link\Object)
          Else
            FreeStructure(*Link\Object)
          EndIf
          
        EndIf
        
      EndIf
      
      FreeStructure(*Link)
      
      If *NextLink <> #Null
        Private_FreeLinks(*This, *NextLink)
      EndIf
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur FreeLinks <<<<<
  
  Procedure FreeLinks(*This.Private_Members)
    
    Private_FreeLinks(*This, *This\FirstLink)
    
    *This\FirstLink = #Null
    *This\CurrentLink = #Null
    *This\LastLink = #Null
    *This\LinkCount = 0
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Destructeur <<<<<

  Procedure Free(*This.Private_Members)
    
    Private_FreeLinks(*This, *This\FirstLink)
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Constructeur <<<<<

  Procedure.i New(*ObjectDestructorAddress = #Null, DirectlyThrowable.i = #False)
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\ObjectDestructor = *ObjectDestructorAddress
    *This\DirectlyThrowable = DirectlyThrowable
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les entrées de la table virtuelle <<<<<

  DataSection
    START_METHODS:
    Data.i @GetLinkTag()
    Data.i @GetLinkObject()
    Data.i @UpdateLink()
    Data.i @AddLink()
    Data.i @InsertLink()
    Data.i @SelectLink()
    Data.i @SelectLinkByTag()
    Data.i @ResetChain()
    Data.i @FirstLink()
    Data.i @LastLink()
    Data.i @PreviousLink()
    Data.i @NextLink()
    Data.i @RemoveLink()
    Data.i @LinkCount()
    Data.i @LinkIndex()
    Data.i @SwapLinks()
    Data.i @FreeLinks()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = -----
; EnableXP
; CompileSourceDirectory