; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V1.1.0
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - CustomFileLibs.pb
; Version du fichier : 1.2.0
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 26-10-2020
; Mise à jour : 26-10-2020
; Codé pour PureBasic : V5.72
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule CustomFileLibs
  
  Interface CustomFileLibs
    
    GetCustomFileLibs.i()
    SetCustomFileLibs(*CustomFileLibs.CustomFileLib::CustomFileLib)
    AddCustomFileLibs()
    SelectCustomFileLibs.i(Index.l)
    FirstCustomFileLibs.i()
    LastCustomFileLibs.i()
    PreviousCustomFileLibs.i()
    NextCustomFileLibs.i()
    DeleteCustomFileLibs()
    ResetCustomFileLibs()
    ClearCustomFileLibs()
    CustomFileLibsIndex.l()
    CustomFileLibsSize.l()
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    RefreshPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    SortCustomFileLibsByDisplayName()
    SearchCustomFileLibsByDisplayName(DisplayName.s)
    SanityCheck()
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module CustomFileLibs
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    List CustomFileLibs.CustomFileLib::CustomFileLib()
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<

  Procedure.i GetCustomFileLibs(*This.Private_Members)
    
    ProcedureReturn *This\CustomFileLibs()
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<

  Procedure SetCustomFileLibs(*This.Private_Members, *CustomFileLibs.CustomFileLib::CustomFileLib)
    
    If *This\CustomFileLibs() <> #Null
      *This\CustomFileLibs()\Free()
    EndIf
    
    *This\CustomFileLibs() = *CustomFileLibs
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) d'ajout à la liste chaînée <<<<<

  Procedure AddCustomFileLibs(*This.Private_Members)
    
    AddElement(*This\CustomFileLibs())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) de Sélection dans la liste chaînée <<<<<

  Procedure.i SelectCustomFileLibs(*This.Private_Members, Index.l)
    
    ProcedureReturn SelectElement(*This\CustomFileLibs(), Index)
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) Premier élément de la liste chaînée <<<<<

  Procedure.i FirstCustomFileLibs(*This.Private_Members)
    
    ProcedureReturn FirstElement(*This\CustomFileLibs())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) Dernier élément de la liste chaînée <<<<<

  Procedure.i LastCustomFileLibs(*This.Private_Members)
    
    ProcedureReturn LastElement(*This\CustomFileLibs())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) élément Précédent de la liste chaînée <<<<<

  Procedure.i PreviousCustomFileLibs(*This.Private_Members)
    
    ProcedureReturn PreviousElement(*This\CustomFileLibs())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) élément Suivant de la liste chaînée <<<<<

  Procedure.i NextCustomFileLibs(*This.Private_Members)
    
    ProcedureReturn NextElement(*This\CustomFileLibs())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) Supprimer l'élément courant de la liste chaînée <<<<<

  Procedure DeleteCustomFileLibs(*This.Private_Members)
    
    If *This\CustomFileLibs() <> #Null
      *This\CustomFileLibs()\Free()
    EndIf
    
    DeleteElement(*This\CustomFileLibs())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) Reset de la liste chaînée <<<<<

  Procedure ResetCustomFileLibs(*This.Private_Members)
    
    ResetList(*This\CustomFileLibs())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) Clear de la liste chaînée <<<<<

  Procedure ClearCustomFileLibs(*This.Private_Members)
    
    ForEach *This\CustomFileLibs()
      If *This\CustomFileLibs() <> #Null
        *This\CustomFileLibs()\Free()
      EndIf
    Next
    
    ClearList(*This\CustomFileLibs())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) de numéro d'index de la liste chaînée <<<<<

  Procedure.l CustomFileLibsIndex(*This.Private_Members)
    
    ProcedureReturn ListIndex(*This\CustomFileLibs())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) de grandeur de la liste chaînée <<<<<

  Procedure.l CustomFileLibsSize(*This.Private_Members)
    
    ProcedureReturn ListSize(*This\CustomFileLibs())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyLong(GroupName, "CustomFileLibs_Max", ListSize(*This\CustomFileLibs()))
    
    ForEach *This\CustomFileLibs()
      *CustomPrefs\AddKeyString(GroupName, "CustomFileLibs_FileName_" + Str(ListIndex(*This\CustomFileLibs())), *This\CustomFileLibs()\GetFileName())
    Next
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      CustomFileLibs_Max.l = *CustomPrefs\GetValueLong(GroupName, "CustomFileLibs_Max") - 1
      
      For CustomFileLibsID.l = 0 To CustomFileLibs_Max
        
        If *CustomPrefs\IsKey(GroupName, "CustomFileLibs_FileName_" + Str(CustomFileLibsID))
          AddElement(*This\CustomFileLibs())
          *This\CustomFileLibs() = CustomFileLib::New()
          *This\CustomFileLibs()\SetFileName(*CustomPrefs\GetValueString(GroupName, "CustomFileLibs_FileName_" + Str(CustomFileLibsID), ""))
        EndIf
      
      Next
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Rafraîchir un Groupe de Prefs <<<<<

  Procedure RefreshPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      CustomFileLibs_Max.l = *CustomPrefs\GetValueLong(GroupName, "CustomFileLibs_Max") - 1
      New_CustomFileLibs_Max.l = ListSize(*This\CustomFileLibs()) - 1
      
      If CustomFileLibs_Max > New_CustomFileLibs_Max
        For CustomFileLibsID.l = New_CustomFileLibs_Max + 1 To CustomFileLibs_Max
          *CustomPrefs\DeleteKey(GroupName, "CustomFileLibs_" + Str(CustomFileLibsID))
        Next
      EndIf
      
      *CustomPrefs\SetValueLong(GroupName, "CustomFileLibs_Max", ListSize(*This\CustomFileLibs()))
      
      ForEach *This\CustomFileLibs()
        *CustomPrefs\SetValueString(GroupName, "CustomFileLibs_FileName_" + Str(ListIndex(*This\CustomFileLibs())), *This\CustomFileLibs()\GetFileName(), #True)
      Next
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure Private_QuickSortCustomFileLibsByDisplayName(*This.Private_Members, FirstIndex, LastIndex)
    
    MinIndex = FirstIndex
    MaxIndex = LastIndex
    SelectElement(*This\CustomFileLibs(), (FirstIndex + LastIndex) >> 1)
    SplitValue.s = *This\CustomFileLibs()\GetDisplayName()
    
    Repeat
      
      MinIndex_Exit_Condition.i = #False
      MaxIndex_Exit_Condition.i = #False
      
      While MinIndex_Exit_Condition = #False
        
        SelectElement(*This\CustomFileLibs(), MinIndex)
        
        If *This\CustomFileLibs()\GetDisplayName() < SplitValue
          MinIndex + 1
        Else
          MinIndex_Exit_Condition = #True
        EndIf
        
      Wend
      
      While MaxIndex_Exit_Condition = #False
        
        SelectElement(*This\CustomFileLibs(), MaxIndex)
        
        If *This\CustomFileLibs()\GetDisplayName() > SplitValue
          MaxIndex - 1
        Else
          MaxIndex_Exit_Condition = #True
        EndIf
        
      Wend
      
      If MinIndex <= MaxIndex
        
        SelectElement(*This\CustomFileLibs(), MinIndex)
        PtrMin = @*This\CustomFileLibs()
        SelectElement(*This\CustomFileLibs(), MaxIndex)
        PtrMax = @*This\CustomFileLibs()
        
        SwapElements(*This\CustomFileLibs(), PtrMin, PtrMax)
        
        MinIndex + 1
        MaxIndex - 1
        
      EndIf
      
    Until MinIndex > MaxIndex
    
    If FirstIndex < MaxIndex
      Private_QuickSortCustomFileLibsByDisplayName(*This, FirstIndex, MaxIndex)
    EndIf
    
    If MinIndex < LastIndex
      Private_QuickSortCustomFileLibsByDisplayName(*This, MinIndex, LastIndex)
    EndIf
    
  EndProcedure
  
  Procedure SortCustomFileLibsByDisplayName(*This.Private_Members)
    
    If ListSize(*This\CustomFileLibs()) >= 2
      Private_QuickSortCustomFileLibsByDisplayName(*This, 0, ListSize(*This\CustomFileLibs()) - 1)
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure SearchCustomFileLibsByDisplayName(*This.Private_Members, DisplayName.s)
    
    FoundAtIndex.l = -1
    
    ForEach *This\CustomFileLibs()
      
      If *This\CustomFileLibs()\GetDisplayName() = DisplayName
        FoundAtIndex = ListIndex(*This\CustomFileLibs())
        Break
      EndIf
      
    Next
    
    ProcedureReturn FoundAtIndex
  EndProcedure
 
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure SanityCheck(*This.Private_Members)
    
    ForEach *This\CustomFileLibs()
      
      If FileSize(*This\CustomFileLibs()\GetFileName()) = -1
       DeleteCustomFileLibs(*This)
      Else
        *This\CustomFileLibs()\LibraryAnalyzer()
      EndIf
      
    Next
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Destructeur <<<<<

  Procedure Free(*This.Private_Members)
    
    ForEach *This\CustomFileLibs()
      If *This\CustomFileLibs() <> #Null
        *This\CustomFileLibs()\Free()
      EndIf
    Next
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Constructeur <<<<<

  Procedure.i New()
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les entrées de la table virtuelle <<<<<

  DataSection
    START_METHODS:
    Data.i @GetCustomFileLibs()
    Data.i @SetCustomFileLibs()
    Data.i @AddCustomFileLibs()
    Data.i @SelectCustomFileLibs()
    Data.i @FirstCustomFileLibs()
    Data.i @LastCustomFileLibs()
    Data.i @PreviousCustomFileLibs()
    Data.i @NextCustomFileLibs()
    Data.i @DeleteCustomFileLibs()
    Data.i @ResetCustomFileLibs()
    Data.i @ClearCustomFileLibs()
    Data.i @CustomFileLibsIndex()
    Data.i @CustomFileLibsSize()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    Data.i @RefreshPrefsGroup()
    Data.i @SortCustomFileLibsByDisplayName()
    Data.i @SearchCustomFileLibsByDisplayName()
    Data.i @SanityCheck()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.002 secondes (132500.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 6 (Linux - x64)
; Folding = ---j-
; EnableXP
; CompileSourceDirectory