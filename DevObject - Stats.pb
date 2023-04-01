; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.0.1
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - Stats.pb
; Version du fichier : 1.1.0
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 27-10-2019
; Mise à jour : 13-05-2022
; Codé pour PureBasic : V6.00 Beta 7
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule Stats

  Interface Stats

    GetBestRate.d()
    GetMeanRate.d()
    GetWorstRate.d()
    GetRateDeviation.d()
    GetBestTime.l()
    GetMeanTime.l()
    GetWorstTime.l()
    GetTimeDeviation.q()
    GetSampleSize.w()
    GetRates.d()
    GetTimes.l()
    GetRatesTop5.d(RatesTop5ID.l)
    GetTimesTop5.l(TimesTop5ID.l)
    SetBestRate(BestRate.d)
    SetMeanRate(MeanRate.d)
    SetWorstRate(WorstRate.d)
    SetRateDeviation(RateDeviation.d)
    SetBestTime(BestTime.l)
    SetMeanTime(MeanTime.l)
    SetWorstTime(WorstTime.l)
    SetTimeDeviation(TimeDeviation.q)
    SetSampleSize(SampleSize.w)
    SetRates(Rates.d)
    SetTimes(Times.l)
    SetRatesTop5(RatesTop5ID.l, RatesTop5.d)
    SetTimesTop5(TimesTop5ID.l, TimesTop5.l)
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    RefreshPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    Analysis()
    InsertRatesTimes(Rates.d, Times.l)
    Free()

  EndInterface

  Declare.i New()

EndDeclareModule

Module Stats
  
  #STATS_MAX = 200
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members

    VirtualTable.i
    BestRate.d
    MeanRate.d
    WorstRate.d
    RateDeviation.d
    BestTime.l
    MeanTime.l
    WorstTime.l
    TimeDeviation.q
    SampleSize.w
    List Rates.d()
    List Times.l()
    RatesTop5.d[5]
    TimesTop5.l[5]
  
  EndStructure

  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<

  Procedure.d GetBestRate(*This.Private_Members)

    ProcedureReturn *This\BestRate
  EndProcedure

  Procedure.d GetMeanRate(*This.Private_Members)

    ProcedureReturn *This\MeanRate
  EndProcedure

  Procedure.d GetWorstRate(*This.Private_Members)

    ProcedureReturn *This\WorstRate
  EndProcedure

  Procedure.d GetRateDeviation(*This.Private_Members)

    ProcedureReturn *This\RateDeviation
  EndProcedure

  Procedure.l GetBestTime(*This.Private_Members)

    ProcedureReturn *This\BestTime
  EndProcedure

  Procedure.l GetMeanTime(*This.Private_Members)

    ProcedureReturn *This\MeanTime
  EndProcedure

  Procedure.l GetWorstTime(*This.Private_Members)

    ProcedureReturn *This\WorstTime
  EndProcedure

  Procedure.q GetTimeDeviation(*This.Private_Members)

    ProcedureReturn *This\TimeDeviation
  EndProcedure

  Procedure.w GetSampleSize(*This.Private_Members)

    ProcedureReturn *This\SampleSize
  EndProcedure

  Procedure.d GetRates(*This.Private_Members)

    ProcedureReturn *This\Rates()
  EndProcedure

  Procedure.l GetTimes(*This.Private_Members)

    ProcedureReturn *This\Times()
  EndProcedure

  Procedure.d GetRatesTop5(*This.Private_Members, RatesTop5ID.l)

    ProcedureReturn *This\RatesTop5[RatesTop5ID]
  EndProcedure

  Procedure.l GetTimesTop5(*This.Private_Members, TimesTop5ID.l)

    ProcedureReturn *This\TimesTop5[TimesTop5ID]
  EndProcedure

  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<

  Procedure SetBestRate(*This.Private_Members, BestRate.d)

    *This\BestRate = BestRate

  EndProcedure

  Procedure SetMeanRate(*This.Private_Members, MeanRate.d)

    *This\MeanRate = MeanRate

  EndProcedure

  Procedure SetWorstRate(*This.Private_Members, WorstRate.d)

    *This\WorstRate = WorstRate

  EndProcedure

  Procedure SetRateDeviation(*This.Private_Members, RateDeviation.d)

    *This\RateDeviation = RateDeviation

  EndProcedure

  Procedure SetBestTime(*This.Private_Members, BestTime.l)

    *This\BestTime = BestTime

  EndProcedure

  Procedure SetMeanTime(*This.Private_Members, MeanTime.l)

    *This\MeanTime = MeanTime

  EndProcedure

  Procedure SetWorstTime(*This.Private_Members, WorstTime.l)

    *This\WorstTime = WorstTime

  EndProcedure

  Procedure SetTimeDeviation(*This.Private_Members, TimeDeviation.q)

    *This\TimeDeviation = TimeDeviation

  EndProcedure

  Procedure SetSampleSize(*This.Private_Members, SampleSize.w)

    *This\SampleSize = SampleSize

  EndProcedure

  Procedure SetRates(*This.Private_Members, Rates.d)

    *This\Rates() = Rates

  EndProcedure

  Procedure SetTimes(*This.Private_Members, Times.l)

    *This\Times() = Times

  EndProcedure

  Procedure SetRatesTop5(*This.Private_Members, RatesTop5ID.l, RatesTop5.d)

    *This\RatesTop5[RatesTop5ID] = RatesTop5

  EndProcedure

  Procedure SetTimesTop5(*This.Private_Members, TimesTop5ID.l, TimesTop5.l)

    *This\TimesTop5[TimesTop5ID] = TimesTop5

  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyDouble(GroupName, "BestRate", *This\BestRate)
    *CustomPrefs\AddKeyDouble(GroupName, "MeanRate", *This\MeanRate)
    *CustomPrefs\AddKeyDouble(GroupName, "WorstRate", *This\WorstRate)
    *CustomPrefs\AddKeyDouble(GroupName, "RateDeviation", *This\RateDeviation)
    *CustomPrefs\AddKeyLong(GroupName, "BestTime", *This\BestTime)
    *CustomPrefs\AddKeyLong(GroupName, "MeanTime", *This\MeanTime)
    *CustomPrefs\AddKeyLong(GroupName, "WorstTime", *This\WorstTime)
    *CustomPrefs\AddKeyQuad(GroupName, "TimeDeviation", *This\TimeDeviation)
    *CustomPrefs\AddKeyWord(GroupName, "SampleSize", *This\SampleSize)
    
    *CustomPrefs\AddKeyLong(GroupName, "Rates_Max", ListSize(*This\Rates()))
    
    ForEach *This\Rates()
      *CustomPrefs\AddKeyDouble(GroupName, "Rates_" + Str(ListIndex(*This\Rates())), *This\Rates())
    Next
    
    *CustomPrefs\AddKeyLong(GroupName, "Times_Max", ListSize(*This\Times()))
    
    ForEach *This\Times()
      *CustomPrefs\AddKeyLong(GroupName, "Times_" + Str(ListIndex(*This\Times())), *This\Times())
    Next
    
    For RatesTop5ID = 0 To 4
      *CustomPrefs\AddKeyDouble(GroupName, "RatesTop5_" + Str(RatesTop5ID), *This\RatesTop5[RatesTop5ID])
    Next
    
    For TimesTop5ID = 0 To 4
      *CustomPrefs\AddKeyLong(GroupName, "TimesTop5_" + Str(TimesTop5ID), *This\TimesTop5[TimesTop5ID])
    Next
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "BestRate")
        *This\BestRate = *CustomPrefs\GetValueDouble(GroupName, "BestRate", *This\BestRate)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "MeanRate")
        *This\MeanRate = *CustomPrefs\GetValueDouble(GroupName, "MeanRate", *This\MeanRate)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "WorstRate")
        *This\WorstRate = *CustomPrefs\GetValueDouble(GroupName, "WorstRate", *This\WorstRate)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "RateDeviation")
        *This\RateDeviation = *CustomPrefs\GetValueDouble(GroupName, "RateDeviation", *This\RateDeviation)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "BestTime")
        *This\BestTime = *CustomPrefs\GetValueLong(GroupName, "BestTime", *This\BestTime)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "MeanTime")
        *This\MeanTime = *CustomPrefs\GetValueLong(GroupName, "MeanTime", *This\MeanTime)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "WorstTime")
        *This\WorstTime = *CustomPrefs\GetValueLong(GroupName, "WorstTime", *This\WorstTime)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "TimeDeviation")
        *This\TimeDeviation = *CustomPrefs\GetValueQuad(GroupName, "TimeDeviation", *This\TimeDeviation)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "SampleSize")
        *This\SampleSize = *CustomPrefs\GetValueWord(GroupName, "SampleSize", *This\SampleSize)
      EndIf
      
      Rates_Max.l = *CustomPrefs\GetValueLong(GroupName, "Rates_Max") - 1
      
      For RatesID.l = 0 To Rates_Max
        
        If *CustomPrefs\IsKey(GroupName, "Rates_" + Str(RatesID))
          AddElement(*This\Rates())
          *This\Rates() = *CustomPrefs\GetValueDouble(GroupName, "Rates_" + Str(RatesID), *This\Rates())
        EndIf
      
      Next
      
      Times_Max.l = *CustomPrefs\GetValueLong(GroupName, "Times_Max") - 1
      
      For TimesID.l = 0 To Times_Max
        
        If *CustomPrefs\IsKey(GroupName, "Times_" + Str(TimesID))
          AddElement(*This\Times())
          *This\Times() = *CustomPrefs\GetValueLong(GroupName, "Times_" + Str(TimesID), *This\Times())
        EndIf
      
      Next
      
      For RatesTop5ID = 0 To 4
        If *CustomPrefs\IsKey(GroupName, "RatesTop5_" + Str(RatesTop5ID))
          *This\RatesTop5[RatesTop5ID] = *CustomPrefs\GetValueDouble(GroupName, "RatesTop5_" + Str(RatesTop5ID), *This\RatesTop5[RatesTop5ID])
        EndIf
      Next
      
      For TimesTop5ID = 0 To 4
        If *CustomPrefs\IsKey(GroupName, "TimesTop5_" + Str(TimesTop5ID))
          *This\TimesTop5[TimesTop5ID] = *CustomPrefs\GetValueLong(GroupName, "TimesTop5_" + Str(TimesTop5ID), *This\TimesTop5[TimesTop5ID])
        EndIf
      Next
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Rafraîchir un Groupe de Prefs <<<<<

  Procedure RefreshPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "BestRate")
        *CustomPrefs\SetValueDouble(GroupName, "BestRate", *This\BestRate)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "MeanRate")
        *CustomPrefs\SetValueDouble(GroupName, "MeanRate", *This\MeanRate)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "WorstRate")
        *CustomPrefs\SetValueDouble(GroupName, "WorstRate", *This\WorstRate)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "RateDeviation")
        *CustomPrefs\SetValueDouble(GroupName, "RateDeviation", *This\RateDeviation)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "BestTime")
        *CustomPrefs\SetValueLong(GroupName, "BestTime", *This\BestTime)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "MeanTime")
        *CustomPrefs\SetValueLong(GroupName, "MeanTime", *This\MeanTime)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "WorstTime")
        *CustomPrefs\SetValueLong(GroupName, "WorstTime", *This\WorstTime)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "TimeDeviation")
        *CustomPrefs\SetValueQuad(GroupName, "TimeDeviation", *This\TimeDeviation)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "SampleSize")
        *CustomPrefs\SetValueWord(GroupName, "SampleSize", *This\SampleSize)
      EndIf
      
      Rates_Max.l = *CustomPrefs\GetValueLong(GroupName, "Rates_Max") - 1
      New_Rates_Max.l = ListSize(*This\Rates()) - 1
      
      If Rates_Max > New_Rates_Max
        For RatesID.l = New_Rates_Max + 1 To Rates_Max
          *CustomPrefs\DeleteKey(GroupName, "Rates_" + Str(RatesID))
        Next
      EndIf
      
      *CustomPrefs\SetValueLong(GroupName, "Rates_Max", ListSize(*This\Rates()))
      
      ForEach *This\Rates()
        *CustomPrefs\SetValueDouble(GroupName, "Rates_" + Str(ListIndex(*This\Rates())), *This\Rates(), #True)
      Next
      
      Times_Max.l = *CustomPrefs\GetValueLong(GroupName, "Times_Max") - 1
      New_Times_Max.l = ListSize(*This\Times()) - 1
      
      If Times_Max > New_Times_Max
        For TimesID.l = New_Times_Max + 1 To Times_Max
          *CustomPrefs\DeleteKey(GroupName, "Times_" + Str(TimesID))
        Next
      EndIf
      
      *CustomPrefs\SetValueLong(GroupName, "Times_Max", ListSize(*This\Times()))
      
      ForEach *This\Times()
        *CustomPrefs\SetValueLong(GroupName, "Times_" + Str(ListIndex(*This\Times())), *This\Times(), #True)
      Next
      
      For RatesTop5ID = 0 To 4
        If *CustomPrefs\IsKey(GroupName, "RatesTop5_" + Str(RatesTop5ID))
          *CustomPrefs\SetValueDouble(GroupName, "RatesTop5_" + Str(RatesTop5ID), *This\RatesTop5[RatesTop5ID])
        EndIf
      Next
      
      For TimesTop5ID = 0 To 4
        If *CustomPrefs\IsKey(GroupName, "TimesTop5_" + Str(TimesTop5ID))
          *CustomPrefs\SetValueLong(GroupName, "TimesTop5_" + Str(TimesTop5ID), *This\TimesTop5[TimesTop5ID])
        EndIf
      Next
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< RatesCandidateForTop5 <<<<<
  
  Procedure Private_RatesCandidateForTop5(*This.Private_Members, Rates.d)
    
    CandidateID.b = -1
    
    For RatesTop5ID = 0 To 4
      
      If *This\RatesTop5[RatesTop5ID] = Rates
        CandidateID = -1
        Break
      EndIf
      
      If *This\RatesTop5[RatesTop5ID] < Rates
        CandidateID = RatesTop5ID
        Break
      EndIf
      
    Next
    
    If CandidateID <> -1
      
      For RatesTop5ID = 4 To CandidateID + 1 Step -1
        *This\RatesTop5[RatesTop5ID] = *This\RatesTop5[RatesTop5ID - 1]
      Next
      
      *This\RatesTop5[CandidateID] = Rates
      
    EndIf
    
  EndProcedure
  
  Procedure Private_TimesCandidateForTop5(*This.Private_Members, Times.l)
    
    If Times > 0
      
      CandidateID.b = -1
      
      For TimesTop5ID = 0 To 4
        
        If *This\TimesTop5[TimesTop5ID] = Times
          CandidateID = -1
          Break
        EndIf
        
        If *This\TimesTop5[TimesTop5ID] > Times
          CandidateID = TimesTop5ID
          Break
        EndIf
        
      Next
      
      If CandidateID <> -1
        
        For TimesTop5ID = 4 To CandidateID + 1 Step -1
          *This\TimesTop5[TimesTop5ID] = *This\TimesTop5[TimesTop5ID - 1]
        Next
        
        *This\TimesTop5[TimesTop5ID] = Times
        
      EndIf
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Analyse des données statistiques <<<<<
  
  Procedure Analysis(*This.Private_Members)
    
    *This\SampleSize = ListSize(*This\Rates())
    
    If *This\SampleSize >= 2
      
      FirstElement(*This\Rates())
      FirstElement(*This\Times())
      
      *This\BestRate = *This\Rates()
      *This\WorstRate = *This\Rates()
      *This\BestTime = *This\Times()
      *This\WorstTime = *This\Times()
      
      ForEach *This\Rates()
        
        Private_RatesCandidateForTop5(*This, *This\Rates())
        
        If *This\Rates() > *This\BestRate
          *This\BestRate = *This\Rates()
        EndIf
        
        If *This\Rates() <> 0.0
          
          SumRate.d = SumRate + *This\Rates()
          
          If *This\Rates() < *This\WorstRate
            *This\WorstRate = *This\Rates()
          EndIf
          
        EndIf
        
      Next
      
      ForEach *This\Times()
        
        Private_TimesCandidateForTop5(*This, *This\Times())
        
        If *This\Times() <> 0
          
          SumTime = SumTime + *This\Times()
          
          If *This\Times() < *This\BestTime
            *This\BestTime = *This\Times()
          EndIf
          
        EndIf
        
        If *This\Times() > *This\WorstTime
          *This\WorstTime = *This\Times()
        EndIf
        
      Next
      
      *This\MeanRate = SumRate / *This\SampleSize
      *This\MeanTime = Int(SumTime / *This\SampleSize)
      
      ForEach *This\Rates()
        DeltaRate.d = *This\Rates() - *This\MeanRate
        SquareRateSum.d = SquareRateSum + DeltaRate * DeltaRate
      Next
      
      ForEach *This\Times()
        DeltaTime.q = *This\Times() - *This\MeanTime
        SquareTimeSum.q = SquareTimeSum + DeltaTime * DeltaTime
      Next
      
      *This\RateDeviation = Sqr(SquareRateSum / (*This\SampleSize - 1))
      *This\TimeDeviation = Int(Sqr(SquareTimeSum / (*This\SampleSize - 1)))
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Insertion des données statistiques par le haut <<<<<
  
  Procedure InsertRatesTimes(*This.Private_Members, Rates.d, Times.l)
    
    FirstElement(*This\Rates())
    InsertElement(*This\Rates())
    *This\Rates() = Rates
    
    FirstElement(*This\Times())
    InsertElement(*This\Times())
    *This\Times() = Times
    
    If ListSize(*This\Rates()) > #STATS_MAX
      LastElement(*This\Rates())
      DeleteElement(*This\Rates())
    EndIf
    
    If ListSize(*This\Times()) > #STATS_MAX
      LastElement(*This\Times())
      DeleteElement(*This\Times())
    EndIf
    
    Analysis(*This)
    
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
    
    For TimesTop5ID = 0 To 4
      *This\TimesTop5[TimesTop5ID] = 2147483647
    Next
    
    ProcedureReturn *This
  EndProcedure

  DataSection
    START_METHODS:
    Data.i @GetBestRate()
    Data.i @GetMeanRate()
    Data.i @GetWorstRate()
    Data.i @GetRateDeviation()
    Data.i @GetBestTime()
    Data.i @GetMeanTime()
    Data.i @GetWorstTime()
    Data.i @GetTimeDeviation()
    Data.i @GetSampleSize()
    Data.i @GetRates()
    Data.i @GetTimes()
    Data.i @GetRatesTop5()
    Data.i @GetTimesTop5()
    Data.i @SetBestRate()
    Data.i @SetMeanRate()
    Data.i @SetWorstRate()
    Data.i @SetRateDeviation()
    Data.i @SetBestTime()
    Data.i @SetMeanTime()
    Data.i @SetWorstTime()
    Data.i @SetTimeDeviation()
    Data.i @SetSampleSize()
    Data.i @SetRates()
    Data.i @SetTimes()
    Data.i @SetRatesTop5()
    Data.i @SetTimesTop5()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    Data.i @RefreshPrefsGroup()
    Data.i @Analysis()
    Data.i @InsertRatesTimes()
    Data.i @Free()
    END_METHODS:
  EndDataSection

EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (284000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = -------
; EnableXP
; CompileSourceDirectory