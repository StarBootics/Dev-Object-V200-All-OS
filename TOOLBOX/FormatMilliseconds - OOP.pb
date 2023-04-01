; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V1.7.4
; Nom du projet : FormatMilliseconds
; Nom du fichier : FormatMilliseconds - OOP.pb
; Version du fichier : 0.0.0
; Programmation : À vérifier
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 12-04-2022
; Mise à jour : 12-04-2022
; Codé pour PureBasic : V6.00 Beta 6
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule FormatMilliseconds
  
  Interface FormatMilliseconds
    
    GetTimeMask.s()
    SetTimeMask(TimeMask.s)
    DoIt.s(MilliSeconds.q)
    Free()
    
  EndInterface
  
  ; Declare Free(*This)
  Declare.i New(TimeMask.s)
  
EndDeclareModule

Module FormatMilliseconds
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    TimeMask.s
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<

  Procedure.s GetTimeMask(*This.Private_Members)
    
    ProcedureReturn *This\TimeMask
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<

  Procedure SetTimeMask(*This.Private_Members, TimeMask.s)
    
    *This\TimeMask = TimeMask
    
  EndProcedure
  
  Procedure.s DoIt(*This.Private_Members, MilliSeconds.q)
    
    TimeMask.s = *This\TimeMask
    
    ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    ; <<<<< On fait l'extraction des jours, Heures, minutes, secondes et des MS <<<<<
    
    If MilliSeconds < 0 
      MilliSeconds = MilliSeconds * -1
      Sign.s = "-"
    EndIf 
    
    Days = MilliSeconds / 86400000 
    MilliSeconds % 86400000
    
    Hours = MilliSeconds / 3600000
    MilliSeconds % 3600000
    
    Minutes = MilliSeconds / 60000
    MilliSeconds % 60000
    
    Seconds = MilliSeconds / 1000
    MilliSeconds % 1000
    
    ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    ; <<<<< On s'occupe du filtre de sortie <<<<<
    
    If FindString(TimeMask, "%dd", 1)
      TimeMask = ReplaceString(TimeMask,"%dd", RSet(Str(Days), 2, "0"))
    EndIf 
    
    If FindString(TimeMask, "%hh", 1)
      TimeMask = ReplaceString(TimeMask,"%hh", RSet(Str(Hours), 2, "0"))
    EndIf 
    
    If FindString(TimeMask, "%mm", 1)
      TimeMask = ReplaceString(TimeMask,"%mm", RSet(Str(Minutes), 2, "0"))
    EndIf 
    
    If FindString(TimeMask, "%ss", 1)
      TimeMask = ReplaceString(TimeMask,"%ss", RSet(Str(Seconds), 2, "0"))
    EndIf 
    
    If FindString(TimeMask, "%mss", 1)
      TimeMask = ReplaceString(TimeMask,"%mss", RSet(Str(MilliSeconds), 3, "0"))
    EndIf
    
    ProcedureReturn Sign + TimeMask
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Destructeur <<<<<

  Procedure Free(*This.Private_Members)
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Constructeur <<<<<

  Procedure.i New(TimeMask.s)
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\TimeMask = TimeMask
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les entrées de la table virtuelle <<<<<

  DataSection
    START_METHODS:
    Data.i @GetTimeMask()
    Data.i @SetTimeMask()
    Data.i @DoIt()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (97000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 6 (Linux - x64)
; Folding = --
; EnableXP
; CompileSourceDirectory