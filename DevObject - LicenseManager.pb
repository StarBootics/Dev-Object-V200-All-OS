; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V1.6.3
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - LicenseManager.pb
; Version du fichier : 1.0.1
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 13-11-2021
; Mise à jour : 11-12-2021
; Codé pour PureBasic : V5.73 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule LicenseManager
  
  Interface LicenseManager
    
    GetLicensePath.s()
    GetLicenseToUse.l()
    GetAvailableLicenses.i()
    SetLicensePath(LicensePath.s)
    SetLicenseToUse(LicenseToUse.l)
    SetAvailableLicenses(*AvailableLicenses.LicenseContent::LicenseContent)
    AddAvailableLicensesEx(*AvailableLicenses.LicenseContent::LicenseContent)
    SelectAvailableLicenses.i(Index.l)
    NextAvailableLicenses.i()
    ResetAvailableLicenses()
    AvailableLicensesIndex.l()
    SearchAvailableLicensesByName(Name.s)
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    Free()
    
  EndInterface
  
  Declare.i New(LicensePath.s)
  
EndDeclareModule

Module LicenseManager
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    LicensePath.s
    LicenseToUse.l
    List AvailableLicenses.LicenseContent::LicenseContent()
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<

  Procedure.s GetLicensePath(*This.Private_Members)
    
    ProcedureReturn *This\LicensePath
  EndProcedure
  
  Procedure.l GetLicenseToUse(*This.Private_Members)
    
    ProcedureReturn *This\LicenseToUse
  EndProcedure
  
  Procedure.i GetAvailableLicenses(*This.Private_Members)
    
    ProcedureReturn *This\AvailableLicenses()
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<

  Procedure SetLicensePath(*This.Private_Members, LicensePath.s)
    
    *This\LicensePath = LicensePath
    
  EndProcedure
  
  Procedure SetLicenseToUse(*This.Private_Members, LicenseToUse.l)
    
    *This\LicenseToUse = LicenseToUse
    
  EndProcedure
  
  Procedure SetAvailableLicenses(*This.Private_Members, *AvailableLicenses.LicenseContent::LicenseContent)
    
    If *This\AvailableLicenses() <> #Null
      *This\AvailableLicenses()\Free()
    EndIf
    
    *This\AvailableLicenses() = *AvailableLicenses
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) d'ajout Ex à la liste chaînée <<<<<

  Procedure AddAvailableLicensesEx(*This.Private_Members, *AvailableLicenses.LicenseContent::LicenseContent)
    
    AddElement(*This\AvailableLicenses())
    *This\AvailableLicenses() = *AvailableLicenses
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) de Sélection dans la liste chaînée <<<<<

  Procedure.i SelectAvailableLicenses(*This.Private_Members, Index.l)
    
    ProcedureReturn SelectElement(*This\AvailableLicenses(), Index)
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) élément Suivant de la liste chaînée <<<<<

  Procedure.i NextAvailableLicenses(*This.Private_Members)
    
    ProcedureReturn NextElement(*This\AvailableLicenses())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) Reset de la liste chaînée <<<<<

  Procedure ResetAvailableLicenses(*This.Private_Members)
    
    ResetList(*This\AvailableLicenses())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) de numéro d'index de la liste chaînée <<<<<

  Procedure.l AvailableLicensesIndex(*This.Private_Members)
    
    ProcedureReturn ListIndex(*This\AvailableLicenses())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure SearchAvailableLicensesByName(*This.Private_Members, Name.s)
    
    FoundAtIndex.l = -1
    
    ForEach *This\AvailableLicenses()
      
      If StringField(*This\AvailableLicenses()\GetFileName(), 1, ".") = Name
        FoundAtIndex = ListIndex(*This\AvailableLicenses())
        Break
      EndIf
      
    Next
    
    ProcedureReturn FoundAtIndex
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    If *This\LicenseToUse = -1
      *CustomPrefs\AddKeyString(GroupName, "LicenseToUse", "")
    Else
      SelectAvailableLicenses(*This, *This\LicenseToUse)
      *CustomPrefs\AddKeyString(GroupName, "LicenseToUse", StringField(*This\AvailableLicenses()\GetFileName(), 1, "."))
    EndIf
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "LicenseToUse")
        LicenseName.s = *CustomPrefs\GetValueString(GroupName, "LicenseToUse", "")
        *This\LicenseToUse = SearchAvailableLicensesByName(*This, LicenseName)
      EndIf
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur de trie des Tasks <<<<<
  
  Procedure Private_QuickSortAvailableLicensesByName(*This.Private_Members, FirstIndex, LastIndex)
    
    MinIndex = FirstIndex
    MaxIndex = LastIndex
    SelectElement(*This\AvailableLicenses(), (FirstIndex + LastIndex) >> 1)
    SplitValue.s = *This\AvailableLicenses()\GetFileName()
    
    Repeat
      
      MinIndex_Exit_Condition.i = #False
      MaxIndex_Exit_Condition.i = #False
      
      While MinIndex_Exit_Condition = #False
        
        SelectElement(*This\AvailableLicenses(), MinIndex)
        
        If *This\AvailableLicenses()\GetFileName() < SplitValue
          MinIndex + 1
        Else
          MinIndex_Exit_Condition = #True
        EndIf
        
      Wend
      
      While MaxIndex_Exit_Condition = #False
        
        SelectElement(*This\AvailableLicenses(), MaxIndex)
        
        If *This\AvailableLicenses()\GetFileName() > SplitValue
          MaxIndex - 1
        Else
          MaxIndex_Exit_Condition = #True
        EndIf
        
      Wend
      
      If MinIndex <= MaxIndex
        
        SelectElement(*This\AvailableLicenses(), MinIndex)
        PtrMin = @*This\AvailableLicenses()
        SelectElement(*This\AvailableLicenses(), MaxIndex)
        PtrMax = @*This\AvailableLicenses()
        
        SwapElements(*This\AvailableLicenses(), PtrMin, PtrMax)
        
        MinIndex + 1
        MaxIndex - 1
        
      EndIf
      
    Until MinIndex > MaxIndex
    
    If FirstIndex < MaxIndex
      Private_QuickSortAvailableLicensesByName(*This, FirstIndex, MaxIndex)
    EndIf
    
    If MinIndex < LastIndex
      Private_QuickSortAvailableLicensesByName(*This, MinIndex, LastIndex)
    EndIf
    
  EndProcedure
  
  Procedure SortAvailableLicensesByName(*This.Private_Members)
    
    If ListSize(*This\AvailableLicenses()) >= 2
      Private_QuickSortAvailableLicensesByName(*This, 0, ListSize(*This\AvailableLicenses()) - 1)
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Destructeur <<<<<

  Procedure Free(*This.Private_Members)
    
    ForEach *This\AvailableLicenses()
      If *This\AvailableLicenses() <> #Null
        *This\AvailableLicenses()\Free()
      EndIf
    Next
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Constructeur <<<<<

  Procedure.i New(LicensePath.s)
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\LicensePath = LicensePath
    *This\LicenseToUse = -1
    
    If ExamineDirectory(0, *This\LicensePath, "*.txt") <> 0
      
      While NextDirectoryEntry(0)
        
        EntryName.s = DirectoryEntryName(0)
        
        If EntryName <> "." And EntryName <> ".."
          
          Select DirectoryEntryType(0)
              
            Case #PB_DirectoryEntry_File
              LicenseContent.LicenseContent::LicenseContent = LicenseContent::New(EntryName)
              LicenseContent\Load(*This\LicensePath)
              AddAvailableLicensesEx(*This, LicenseContent)
              
          EndSelect
          
        EndIf
        
      Wend
      
      FinishDirectory(0)
      
    EndIf
    
    SortAvailableLicensesByName(*This)
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les entrées de la table virtuelle <<<<<

  DataSection
    START_METHODS:
    Data.i @GetLicensePath()
    Data.i @GetLicenseToUse()
    Data.i @GetAvailableLicenses()
    Data.i @SetLicensePath()
    Data.i @SetLicenseToUse()
    Data.i @SetAvailableLicenses()
    Data.i @AddAvailableLicensesEx()
    Data.i @SelectAvailableLicenses()
    Data.i @NextAvailableLicenses()
    Data.i @ResetAvailableLicenses()
    Data.i @AvailableLicensesIndex()
    Data.i @SearchAvailableLicensesByName()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (193000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 6 (Linux - x64)
; Folding = ----
; EnableXP
; CompileSourceDirectory