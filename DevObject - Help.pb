; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V1.0.0 Beta
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - Help.pb
; Version du fichier : 1.0.2
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 30-03-2020
; Mise à jour : 24-09-2021
; Codé pour PureBasic : V5.73 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule Help
  
  Interface Help
    
    GetPath.s()
    GetComboBoxGadgetID.i()
    GetMarkDownGadgetID.i()
    GetContents.s()
    SetPath(Path.s)
    SetComboBoxGadgetID(ComboBoxGadgetID.i)
    SetMarkDownGadgetID(MarkDownGadgetID.i)
    SetContents(Contents.s)
    AddContents(Key.s)
    ClearContents()
    ContentsSize.l()
    ResetContents()
    DeleteContents()
    FindContents.i(Key.s)
    NextContents.i()
    ContentsKey.s()
    ScanPath()
    DirectlySelectContents()
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module Help
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    Path.s
    ComboBoxGadgetID.i
    MarkDownGadgetID.i
    Map Contents.s()
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<

  Procedure.s GetPath(*This.Private_Members)
    
    ProcedureReturn *This\Path
  EndProcedure
  
  Procedure.i GetComboBoxGadgetID(*This.Private_Members)
    
    ProcedureReturn *This\ComboBoxGadgetID
  EndProcedure
  
  Procedure.i GetMarkDownGadgetID(*This.Private_Members)
    
    ProcedureReturn *This\MarkDownGadgetID
  EndProcedure
  
  Procedure.s GetContents(*This.Private_Members)
    
    ProcedureReturn *This\Contents()
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<

  Procedure SetPath(*This.Private_Members, Path.s)
    
    *This\Path = Path
    
  EndProcedure
  
  Procedure SetComboBoxGadgetID(*This.Private_Members, ComboBoxGadgetID.i)
    
    *This\ComboBoxGadgetID = ComboBoxGadgetID
    
  EndProcedure
  
  Procedure SetMarkDownGadgetID(*This.Private_Members, MarkDownGadgetID.i)
    
    *This\MarkDownGadgetID = MarkDownGadgetID
    
  EndProcedure
  
  Procedure SetContents(*This.Private_Members, Contents.s)
    
    *This\Contents() = Contents
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur(s) d'ajout à la Map <<<<<

  Procedure AddContents(*This.Private_Members, Key.s)
    
    AddMapElement(*This\Contents(), Key)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) Clear de la Map <<<<<

  Procedure ClearContents(*This.Private_Members)
    
    ClearMap(*This\Contents())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) de grandeur de la Map <<<<<

  Procedure.l ContentsSize(*This.Private_Members)
    
    ProcedureReturn MapSize(*This\Contents())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) Reset de la Map <<<<<

  Procedure ResetContents(*This.Private_Members)
    
    ResetMap(*This\Contents())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) Supprimer l'élément courant de la Map <<<<<

  Procedure DeleteContents(*This.Private_Members)
    
    DeleteMapElement(*This\Contents())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur(s) Trouver un élément de la Map <<<<<

  Procedure.i FindContents(*This.Private_Members, Key.s)
    
    ProcedureReturn FindMapElement(*This\Contents(), Key)
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) élément Suivant de la Map <<<<<

  Procedure.i NextContents(*This.Private_Members)
    
    ProcedureReturn NextMapElement(*This\Contents())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur(s) d'obtention de la clé de l'élément actuel de la Map <<<<<

  Procedure.s ContentsKey(*This.Private_Members)
    
    ProcedureReturn MapKey(*This\Contents())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur ScanPath <<<<<
  
  Procedure ScanPath(*This.Private_Members)
    
    If ExamineDirectory(0, *This\Path, "*.md")
      
      MarkDown::SetPath(*This\MarkDownGadgetID, *This\Path)
      
      ClearGadgetItems(GetComboBoxGadgetID(*This))
      ClearContents(*This)
      
      While NextDirectoryEntry(0)
        
        EntryName.s = DirectoryEntryName(0)
        
        If EntryName <> "." And EntryName <> ".."
          
          Select DirectoryEntryType(0)
              
            Case #PB_DirectoryEntry_File
              
              AddContents(*This, StringField(EntryName, 1, "."))
              AddGadgetItem(GetComboBoxGadgetID(*This), -1, ContentsKey(*This))
              
              If ReadFile(0, *This\Path + EntryName)
                SetContents(*This, ReadString(0, #PB_File_IgnoreEOL))
                CloseFile(0)
              EndIf
              
          EndSelect
          
        EndIf
        
      Wend
      
      FinishDirectory(0)
      
      SetGadgetState(GetComboBoxGadgetID(*This), 0)
      
      If FindContents(*This, GetGadgetItemText(GetComboBoxGadgetID(*This), GetGadgetState(GetComboBoxGadgetID(*This))))
        MarkDown::SetText(GetMarkDownGadgetID(*This), GetContents(*This))   
      EndIf
      
    EndIf
    
  EndProcedure  
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur DirectlySelectContents <<<<<
  
  Procedure DirectlySelectContents(*This.Private_Members)
    
    If FindContents(*This, GetGadgetItemText(GetComboBoxGadgetID(*This), GetGadgetState(GetComboBoxGadgetID(*This))))
      MarkDown::SetText(GetMarkDownGadgetID(*This), GetContents(*This))   
    EndIf
    
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
    Data.i @GetPath()
    Data.i @GetComboBoxGadgetID()
    Data.i @GetMarkDownGadgetID()
    Data.i @GetContents()
    Data.i @SetPath()
    Data.i @SetComboBoxGadgetID()
    Data.i @SetMarkDownGadgetID()
    Data.i @SetContents()
    Data.i @AddContents()
    Data.i @ClearContents()
    Data.i @ContentsSize()
    Data.i @ResetContents()
    Data.i @DeleteContents()
    Data.i @FindContents()
    Data.i @NextContents()
    Data.i @ContentsKey()
    Data.i @ScanPath()
    Data.i @DirectlySelectContents()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (228000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 6 (Linux - x64)
; Folding = P9h9-
; EnableXP
; CompileSourceDirectory