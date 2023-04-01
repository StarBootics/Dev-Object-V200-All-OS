; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V1.6.3
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - LicenseContent.pb
; Version du fichier : 1.0.0
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 13-11-2021
; Mise à jour : 13-11-2021
; Codé pour PureBasic : V5.73 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule LicenseContent
  
  Interface LicenseContent
    
    GetFileName.s()
    GetMaxLength.l()
    GetLines.s()
    SetFileName(FileName.s)
    SetMaxLength(MaxLength.l)
    SetLines(Lines.s)
    AddLinesEx(Lines.s)
    SelectLines.i(Index.l)
    NextLines.i()
    ResetLines()
    LinesIndex.l()
    Load(Path.s)
    Free()
    
  EndInterface
  
  Declare.i New(FileName.s)
  
EndDeclareModule

Module LicenseContent
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    FileName.s
    MaxLength.l
    List Lines.s()
    
  EndStructure
  
  Procedure.l Max(Number01.l, Number02.l)
    
    Biggest.l = Number01
    
    If Number02 > Biggest
      Biggest = Number02
    EndIf
    
    ProcedureReturn Biggest
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<

  Procedure.s GetFileName(*This.Private_Members)
    
    ProcedureReturn *This\FileName
  EndProcedure
  
  Procedure.l GetMaxLength(*This.Private_Members)
    
    ProcedureReturn *This\MaxLength
  EndProcedure
  
  Procedure.s GetLines(*This.Private_Members)
    
    ProcedureReturn *This\Lines()
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<

  Procedure SetFileName(*This.Private_Members, FileName.s)
    
    *This\FileName = FileName
    
  EndProcedure
  
  Procedure SetMaxLength(*This.Private_Members, MaxLength.l)
    
    *This\MaxLength = MaxLength
    
  EndProcedure
  
  Procedure SetLines(*This.Private_Members, Lines.s)
    
    *This\Lines() = Lines
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) d'ajout Ex à la liste chaînée <<<<<

  Procedure AddLinesEx(*This.Private_Members, Lines.s)
    
    AddElement(*This\Lines())
    *This\Lines() = Lines
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) de Sélection dans la liste chaînée <<<<<

  Procedure.i SelectLines(*This.Private_Members, Index.l)
    
    ProcedureReturn SelectElement(*This\Lines(), Index)
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) élément Suivant de la liste chaînée <<<<<

  Procedure.i NextLines(*This.Private_Members)
    
    ProcedureReturn NextElement(*This\Lines())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) Reset de la liste chaînée <<<<<

  Procedure ResetLines(*This.Private_Members)
    
    ResetList(*This\Lines())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) de numéro d'index de la liste chaînée <<<<<

  Procedure.l LinesIndex(*This.Private_Members)
    
    ProcedureReturn ListIndex(*This\Lines())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure Load(*This.Private_Members, Path.s)
    
    FileHandle.i = ReadFile(#PB_Any, Path + *This\FileName)
    
    If IsFile(FileHandle)
      
      While Eof(FileHandle) = 0
        
        Line.s = ReadString(FileHandle)
        
        *This\MaxLength = Max(*This\MaxLength, Len(Line))
        AddLinesEx(*This, Line)
        
      Wend
      
      CloseFile(FileHandle)
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Destructeur <<<<<

  Procedure Free(*This.Private_Members)
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Constructeur <<<<<

  Procedure.i New(FileName.s)
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\FileName = FileName
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les entrées de la table virtuelle <<<<<

  DataSection
    START_METHODS:
    Data.i @GetFileName()
    Data.i @GetMaxLength()
    Data.i @GetLines()
    Data.i @SetFileName()
    Data.i @SetMaxLength()
    Data.i @SetLines()
    Data.i @AddLinesEx()
    Data.i @SelectLines()
    Data.i @NextLines()
    Data.i @ResetLines()
    Data.i @LinesIndex()
    Data.i @Load()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (183000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 5.73 LTS (Linux - x64)
; Folding = ----
; EnableXP
; CompileSourceDirectory