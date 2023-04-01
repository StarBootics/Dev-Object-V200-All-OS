; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V1.3.0
; Nom du projet : Le nom du projet ici
; Nom du fichier : Nom du fichier
; Version du fichier : 0.0.0
; Programmation : À vérifier
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 21-11-2020
; Mise à jour : 17-07-2022
; Codé pour PureBasic : V6.00 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule StringBetween
  
  Interface StringBetween
    
    Extract.s(String.s)
    Free()
    
  EndInterface
  
  Declare.i New(LeftString.s, RightString.s)
  
EndDeclareModule

Module StringBetween
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    LeftString.s
    RightString.s
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur Extract <<<<<
  
  Procedure.s Extract(*This.Private_Members, String.s)
   
    Protected Between.s, LIndex.l, RIndex.l 
    
    LIndex = FindString(string, *This\LeftString, 0) 
    RIndex = FindString(string, *This\RightString, LIndex + 1) 
    
    If LIndex And RIndex 
      LIndex + Len(*This\LeftString) 
      Between = Mid(String, LIndex, RIndex - LIndex) 
    EndIf 
    
    ProcedureReturn Between 
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Destructeur <<<<<

  Procedure Free(*This.Private_Members)
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Constructeur <<<<<

  Procedure.i New(LeftString.s, RightString.s)
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\LeftString = LeftString
    *This\RightString = RightString
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les entrées de la table virtuelle <<<<<

  DataSection
    START_METHODS:
    Data.i @Extract()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (106000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

CompilerIf #PB_Compiler_IsMainFile
 
;   BetweenBrackets.StringBetween::StringBetween = StringBetween::New("[", "]")
;   BetweenParenthesis.StringBetween::StringBetween = StringBetween::New("(", ")")
;   TestBetween.StringBetween::StringBetween = StringBetween::New("[", ")")
  
  BetweenComplex.StringBetween::StringBetween = StringBetween::New("%%", "%%")
 
;   Debug BetweenBrackets\Extract("MonTableau.d[25]")
;   Debug BetweenParenthesis\Extract("MonTableau.d(25, 2)")  
;   Debug TestBetween\Extract("[25)")
;   
  CodeLine.s = "Date de création : %%DATE>%dd-%mm-%yyyy%% Blabla"
  DateDateMask.s = BetweenComplex\Extract(CodeLine)
  DateMask.s = StringField(DateDateMask, 2, ">")
  
  CodeLine = ReplaceString(CodeLine, "%%" + DateDateMask + "%%", FormatDate(DateMask, Date()))
  Debug CodeLIne
  
CompilerEndIf

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = --
; EnableXP
; CompileSourceDirectory