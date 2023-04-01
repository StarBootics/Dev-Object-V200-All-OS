; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V1.7.6
; Nom du projet : DevObject
; Nom du fichier : DevObject - StringUtilities.pb
; Version du fichier : 0.0.0
; Programmation : À vérifier
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 24-04-2022
; Mise à jour : 24-04-2022
; Codé pour PureBasic : V6.00 Beta 6
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule StringUtilities
  
  Interface StringUtilities
    
    GetFoolProofer.i()
    GetBetweenParenthesis.i()
    GetBetweenBrackets.i()
    GetFormatReal.i()
    GetFormatMilliseconds.i()
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module StringUtilities
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    FoolProofer.FoolProofer::FoolProofer
    BetweenParenthesis.StringBetween::StringBetween
    BetweenBrackets.StringBetween::StringBetween
    FormatReal.FormatReal::FormatReal
    FormatMilliseconds.FormatMilliseconds::FormatMilliseconds
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<

  Procedure.i GetFoolProofer(*This.Private_Members)
    
    ProcedureReturn *This\FoolProofer
  EndProcedure
  
  Procedure.i GetBetweenParenthesis(*This.Private_Members)
    
    ProcedureReturn *This\BetweenParenthesis
  EndProcedure
  
  Procedure.i GetBetweenBrackets(*This.Private_Members)
    
    ProcedureReturn *This\BetweenBrackets
  EndProcedure
  
  Procedure.i GetFormatReal(*This.Private_Members)
    
    ProcedureReturn *This\FormatReal
  EndProcedure
  
  Procedure.i GetFormatMilliseconds(*This.Private_Members)
    
    ProcedureReturn *This\FormatMilliseconds
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Destructeur <<<<<

  Procedure Free(*This.Private_Members)

    If *This\FoolProofer <> #Null
      *This\FoolProofer\Free()
    EndIf
    
    If *This\BetweenParenthesis <> #Null
      *This\BetweenParenthesis\Free()
    EndIf
    
    If *This\BetweenBrackets <> #Null
      *This\BetweenBrackets\Free()
    EndIf

    If *This\FormatReal <> #Null
      *This\FormatReal\Free()
    EndIf
    
    If *This\FormatMilliseconds <> #Null
      *This\FormatMilliseconds\Free()
    EndIf
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Constructeur <<<<<

  Procedure.i New()
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\FoolProofer = FoolProofer::New()
    *This\BetweenParenthesis = StringBetween::New("(", ")")
    *This\BetweenBrackets = StringBetween::New("[", "]")
    *This\FormatReal = FormatReal::New()
    *This\FormatMilliseconds = FormatMilliseconds::New("%ss.%mss")
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les entrées de la table virtuelle <<<<<

  DataSection
    START_METHODS:
    Data.i @GetFoolProofer()
    Data.i @GetBetweenParenthesis()
    Data.i @GetBetweenBrackets()
    Data.i @GetFormatReal()
    Data.i @GetFormatMilliseconds()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.002 secondes (47000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = ---
; EnableXP
; CompileSourceDirectory