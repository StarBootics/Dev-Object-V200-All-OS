; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Nom du projet : Chronometer
; Nom du fichier : Chrono - OOP.pb
; Version du fichier : 1.0.1
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 09-04-2019
; Mise à jour : 29-11-2021
; Codé pour PureBasic : V6.00 Beta 1
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule Chrono
  
  Interface Chrono
    
    IsRunning.i()
    Reset()
    Start()
    Stop()
    Consult.q()
    Format.s(TimeMask.s)
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module Chrono
  
  Structure Private_Members
    
    VirtualTable.i
    StartTime.q
    TotalTime.q
    IsRunning.i
    
  EndStructure
  
  Procedure.i IsRunning(*This.Private_Members)
  
    ProcedureReturn *This\IsRunning
  EndProcedure
  
  Procedure Reset(*This.Private_Members)
    
    *This\StartTime = 0
    *This\TotalTime = 0
    *This\IsRunning = #False
    
  EndProcedure
  
  Procedure Start(*This.Private_Members)
    
    If *This\IsRunning = #False
      *This\StartTime = ElapsedMilliseconds()
      *This\IsRunning = #True
    EndIf
    
  EndProcedure
  
  Procedure Stop(*This.Private_Members)
    
    If *This\IsRunning = #True
      *This\TotalTime = *This\TotalTime + ElapsedMilliseconds() - *This\StartTime
      *This\IsRunning = #False
    EndIf
    
  EndProcedure
  
  Procedure.q Consult(*This.Private_Members)
    
    If *This\IsRunning = #True
      TotalTime.q = *This\TotalTime + ElapsedMilliseconds() - *This\StartTime
    Else
      TotalTime = *This\TotalTime
    EndIf
    
    ProcedureReturn TotalTime
  EndProcedure
  
  Procedure.s Format(*This.Private_Members, TimeMask.s)
    
    MilliSeconds = Consult(*This)
    
    ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    ; <<<<< On fait l'extraction des jours, Heures, minutes, secondes et des MS <<<<<

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
    
    ProcedureReturn TimeMask
  EndProcedure
  
  Procedure Free(*This.Private_Members)
    
    FreeStructure(*This)
    
  EndProcedure
  
  Procedure.i New()
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    *This\StartTime = 0
    *This\TotalTime = 0
    *This\IsRunning = #False
    
    ProcedureReturn *This
  EndProcedure
  
  DataSection
    START_METHODS:
    Data.i @IsRunning()
    Data.i @Reset()
    Data.i @Start()
    Data.i @Stop()
    Data.i @Consult()
    Data.i @Format()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

CompilerIf #PB_Compiler_IsMainFile
  
  MyChronometer.Chrono::Chrono = Chrono::New()
  MyChronometer\Start()
  
  Delay(1526)
  
  MyChronometer\Stop()
  
  Debug MyChronometer\Consult()
  Debug MyChronometer\Format("%ss:%mss")
  MyChronometer\Free()
  
CompilerEndIf

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 1 (Linux - x64)
; Folding = ---
; EnableXP
; CompileSourceDirectory
; Compiler = PureBasic 6.00 Beta 1 - C Backend (Linux - x64)