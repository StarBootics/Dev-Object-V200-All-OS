; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.0.1
; Nom du projet : DateFormatting
; Nom du fichier : DateFormatting - OOP.pb
; Version du fichier : 1.0.1
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 02-11-2019
; Mise à jour : 25-04-2022
; Codé pour PureBasic : V6.00 Beta 6
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule DateFormatting
  
  Interface DateFormatting
    
    SetMonth(MonthID.l, P_ShortMonth.s, P_LongMonth.s)
    SetDay(DayID.l, P_ShortDay.s, P_LongDay.s)
    SetOrdinal(OrdinalSequence.s)
    Format.s(Mask.s, Date.i)
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module DateFormatting
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    ShortMonth.s[12]
    LongMonth.s[12]
    ShortDay.s[7]
    LongDay.s[7]
    Ordinal.s[31]
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<

  Procedure SetMonth(*This.Private_Members, MonthID.l, P_ShortMonth.s, P_LongMonth.s)
    
    *This\ShortMonth[MonthID] = P_ShortMonth
    *This\LongMonth[MonthID] = P_LongMonth
    
  EndProcedure
  
  Procedure SetDay(*This.Private_Members, DayID.l, P_ShortDay.s, P_LongDay.s)
    
    *This\ShortDay[DayID] = P_ShortDay
    *This\LongDay[DayID] = P_LongDay
    
  EndProcedure
  
  Procedure SetOrdinal(*This.Private_Members, OrdinalSequence.s)
    
    ;SetOrdinal("st:1,21,31|nd:2,22|rd:3,23|th:x")
    ;SetOrdinal("er: 1|: x")
    
    For OrdinalID = 0 To 30
      *This\Ordinal[OrdinalID] = ""
    Next
    
    NewList Blocks.s()
    BlockMax = CountString(OrdinalSequence, "|") + 1
    
    For BlockID = 1 To BlockMax
      AddElement(Blocks())
      Blocks() = StringField(OrdinalSequence, BlockID, "|")
    Next
    
    ForEach Blocks()
      
      Symbol.s = StringField(Blocks(), 1, ":")
      DaysToApply.s = Trim(StringField(Blocks(), 2, ":"))
      
      If DaysToApply = "x"
        
        For OrdinalID = 0 To 30
          
          If *This\Ordinal[OrdinalID] = ""
            *This\Ordinal[OrdinalID] = Symbol
          EndIf
          
        Next
        
      Else
        
        DaysToApplyMax = CountString(DaysToApply, ",") + 1
        
        For DaysToApplyID = 1 To DaysToApplyMax
          Index = Val(StringField(DaysToApply, DaysToApplyID, ","))-1
          *This\Ordinal[Index] = Symbol
        Next
        
      EndIf
      
      Blocks() = ""
      
    Next
    
    FreeList(Blocks())
    
  EndProcedure
  
  Procedure.s Format(*This.Private_Members, Mask.s, Date.i)
    
    Year.i = Year(Date)
    MonthCount.i = Month(Date)
    DayCount.i = Day(Date)
    HourCount.i = Hour(Date)
    MinuteCount.i = Minute(Date)
    SecondCount.i = Second(Date)
    FormattedDate.s = Mask
    
    If FindString(FormattedDate, "%yyyy", 1)
      FormattedDate = ReplaceString(FormattedDate, "%yyyy", Str(Year), #PB_String_NoCase, 1)
    EndIf
    
    If FindString(FormattedDate, "%dd", 1)
      
      If FindString(FormattedDate, "%ord", 1)
        FormattedDate = ReplaceString(FormattedDate, "%dd", Str(DayCount), #PB_String_NoCase, 1)
      Else
        FormattedDate = ReplaceString(FormattedDate, "%dd", RSet(Str(DayCount), 2, "0"), #PB_String_NoCase, 1)
      EndIf
      
    EndIf
    
    If FindString(FormattedDate, "%mm", 1)
      FormattedDate = ReplaceString(FormattedDate, "%mm", RSet(Str(MonthCount), 2, "0"), #PB_String_NoCase, 1)
    EndIf 
    
    If FindString(FormattedDate, "%hh", 1)
      FormattedDate = ReplaceString(FormattedDate, "%hh", RSet(Str(HourCount), 2, "0"), #PB_String_NoCase, 1)
    EndIf 
    
    If FindString(FormattedDate, "%ii", 1)
      FormattedDate = ReplaceString(FormattedDate, "%ii", RSet(Str(MinuteCount), 2, "0"), #PB_String_NoCase, 1)
    EndIf  
    
    If FindString(FormattedDate, "%ss", 1)
      FormattedDate = ReplaceString(FormattedDate, "%ss", RSet(Str(SecondCount), 2, "0"), #PB_String_NoCase, 1)
    EndIf  
    
    If FindString(FormattedDate, "%smm", 1)
      FormattedDate = ReplaceString(FormattedDate, "%smm", *This\ShortMonth[Month(Date) - 1], #PB_String_NoCase, 1)
    EndIf 
    
    If FindString(FormattedDate, "%lmm", 1)
      FormattedDate = ReplaceString(FormattedDate, "%lmm", *This\LongMonth[Month(Date) - 1], #PB_String_NoCase, 1)
    EndIf 
    
    If FindString(FormattedDate, "%sdd", 1)
      FormattedDate = ReplaceString(FormattedDate, "%sdd", *This\ShortDay[DayOfWeek(Date)], #PB_String_NoCase, 1)
    EndIf 
    
    If FindString(FormattedDate, "%ldd", 1)
      FormattedDate = ReplaceString(FormattedDate, "%ldd", *This\LongDay[DayOfWeek(Date)], #PB_String_NoCase, 1)
    EndIf 
    
    If FindString(FormattedDate, "%ord", 1)
      FormattedDate = ReplaceString(FormattedDate, "%ord", *This\Ordinal[Day(Date)-1], #PB_String_NoCase, 1)
    EndIf 
    
    ProcedureReturn FormattedDate
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
    Data.i @SetMonth()
    Data.i @SetDay()
    Data.i @SetOrdinal()
    Data.i @Format()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (160000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 6 (Linux - x64)
; Folding = P-
; EnableXP
; CompileSourceDirectory