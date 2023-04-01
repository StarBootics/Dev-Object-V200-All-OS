; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V1.6.8
; Nom du projet : DevObject
; Nom du fichier : DevObject - CheckerSource.pb
; Version du fichier : 1.1.1
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 04-05-2021
; Mise à jour : 09-05-2022
; Codé pour PureBasic : V6.00 Beta 7
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule CheckerSource
  
  Interface CheckerSource
    
    GetFileName.s()
    GetMethods.i()
    GetProcedures.i()
    GetVirtualTableEntries.s()
    GetErrors.i()
    GetErrorInterfaceVTMismatchCount.l()
    GetErrorSpellingCount.l()
    GetErrorParameterMismatchCount.l()
    GetErrorReturnTypeMismatchCount.l()
    GetErrorParameterTypeMismatchCount.l()
    SetFileName(FileName.s)
    SetMethods(*Methods.CheckerMethod::CheckerMethod)
    SetProcedures(*Procedures.CheckerMethod::CheckerMethod)
    SetVirtualTableEntries(VirtualTableEntries.s)
    SetErrors(*Errors.CheckerError::CheckerError)
    AddMethodsEx(*Methods.CheckerMethod::CheckerMethod)
    AddProceduresEx(*Procedures.CheckerMethod::CheckerMethod)
    AddVirtualTableEntriesEx(VirtualTableEntries.s)
    AddErrorsEx(*Errors.CheckerError::CheckerError)
    SelectMethods.i(Index.i)
    SelectProcedures.i(Index.i)
    SelectVirtualTableEntries.i(Index.i)
    SelectErrors.i(Index.i)
    FirstMethods.i()
    FirstProcedures.i()
    FirstVirtualTableEntries.i()
    FirstErrors.i()
    LastMethods.i()
    LastProcedures.i()
    LastVirtualTableEntries.i()
    LastErrors.i()
    PreviousMethods.i()
    PreviousProcedures.i()
    PreviousVirtualTableEntries.i()
    PreviousErrors.i()
    NextMethods.i()
    NextProcedures.i()
    NextVirtualTableEntries.i()
    NextErrors.i()
    DeleteMethods()
    DeleteProcedures()
    DeleteVirtualTableEntries()
    DeleteErrors()
    ResetMethods()
    ResetProcedures()
    ResetVirtualTableEntries()
    ResetErrors()
    ClearMethods()
    ClearProcedures()
    ClearVirtualTableEntries()
    ClearErrors()
    MethodsIndex.l()
    ProceduresIndex.l()
    VirtualTableEntriesIndex.l()
    ErrorsIndex.l()
    MethodsSize.l()
    ProceduresSize.l()
    VirtualTableEntriesSize.l()
    ErrorsSize.l()
    Load(*CheckerAnalyzer.CheckerAnalyzer::CheckerAnalyzer)
    Free()
    
  EndInterface
  
  Declare.i New(*BetweenParenthesis.StringBetween::StringBetween)
  
EndDeclareModule

Module CheckerSource
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    FileName.s
    List Methods.CheckerMethod::CheckerMethod()
    List Procedures.CheckerMethod::CheckerMethod()
    List VirtualTableEntries.s()
    List Errors.CheckerError::CheckerError()
    
    ErrorInterfaceVTMismatchCount.l
    ErrorSpellingCount.l
    ErrorParameterMismatchCount.l
    ErrorReturnTypeMismatchCount.l
    ErrorParameterTypeMismatchCount.l
    *BetweenParenthesis.StringBetween::StringBetween
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<

  Procedure.s GetFileName(*This.Private_Members)
    
    ProcedureReturn *This\FileName
  EndProcedure
  
  Procedure.i GetMethods(*This.Private_Members)
    
    ProcedureReturn *This\Methods()
  EndProcedure
  
  Procedure.i GetProcedures(*This.Private_Members)
    
    ProcedureReturn *This\Procedures()
  EndProcedure
  
  Procedure.s GetVirtualTableEntries(*This.Private_Members)
    
    ProcedureReturn *This\VirtualTableEntries()
  EndProcedure
  
  Procedure.i GetErrors(*This.Private_Members)
    
    ProcedureReturn *This\Errors()
  EndProcedure
  
  Procedure.l GetErrorInterfaceVTMismatchCount(*This.Private_Members)
    
    ProcedureReturn *This\ErrorInterfaceVTMismatchCount
  EndProcedure
  
  Procedure.l GetErrorSpellingCount(*This.Private_Members)
    
    ProcedureReturn *This\ErrorSpellingCount
  EndProcedure
  
  Procedure.l GetErrorParameterMismatchCount(*This.Private_Members)
    
    ProcedureReturn *This\ErrorParameterMismatchCount
  EndProcedure
  
  Procedure.l GetErrorReturnTypeMismatchCount(*This.Private_Members)
    
    ProcedureReturn *This\ErrorReturnTypeMismatchCount
  EndProcedure
  
  Procedure.l GetErrorParameterTypeMismatchCount(*This.Private_Members)
    
    ProcedureReturn *This\ErrorParameterTypeMismatchCount
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<

  Procedure SetFileName(*This.Private_Members, FileName.s)
    
    *This\FileName = FileName
    
  EndProcedure
  
  Procedure SetMethods(*This.Private_Members, *Methods.CheckerMethod::CheckerMethod)
    
    If *This\Methods() <> #Null
      *This\Methods()\Free()
    EndIf
    
    *This\Methods() = *Methods
    
  EndProcedure
  
  Procedure SetProcedures(*This.Private_Members, *Procedures.CheckerMethod::CheckerMethod)
    
    If *This\Procedures() <> #Null
      *This\Procedures()\Free()
    EndIf
    
    *This\Procedures() = *Procedures
    
  EndProcedure
  
  Procedure SetVirtualTableEntries(*This.Private_Members, VirtualTableEntries.s)
    
    *This\VirtualTableEntries() = VirtualTableEntries
    
  EndProcedure
  
  Procedure SetErrors(*This.Private_Members, *Errors.CheckerError::CheckerError)
    
    If *This\Errors() <> #Null
      *This\Errors()\Free()
    EndIf
    
    *This\Errors() = *Errors
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) d'ajout Ex à la liste chaînée <<<<<

  Procedure AddMethodsEx(*This.Private_Members, *Methods.CheckerMethod::CheckerMethod)
    
    AddElement(*This\Methods())
    *This\Methods() = *Methods
    
  EndProcedure
  
  Procedure AddProceduresEx(*This.Private_Members, *Procedures.CheckerMethod::CheckerMethod)
    
    AddElement(*This\Procedures())
    *This\Procedures() = *Procedures
    
  EndProcedure
  
  Procedure AddVirtualTableEntriesEx(*This.Private_Members, VirtualTableEntries.s)
    
    AddElement(*This\VirtualTableEntries())
    *This\VirtualTableEntries() = VirtualTableEntries
    
  EndProcedure
  
  Procedure AddErrorsEx(*This.Private_Members, *Errors.CheckerError::CheckerError)
    
    AddElement(*This\Errors())
    *This\Errors() = *Errors
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) de Sélection dans la liste chaînée <<<<<

  Procedure.i SelectMethods(*This.Private_Members, Index.i)
    
    ProcedureReturn SelectElement(*This\Methods(), Index)
  EndProcedure
  
  Procedure.i SelectProcedures(*This.Private_Members, Index.i)
    
    ProcedureReturn SelectElement(*This\Procedures(), Index)
  EndProcedure
  
  Procedure.i SelectVirtualTableEntries(*This.Private_Members, Index.i)
    
    ProcedureReturn SelectElement(*This\VirtualTableEntries(), Index)
  EndProcedure
  
  Procedure.i SelectErrors(*This.Private_Members, Index.i)
    
    ProcedureReturn SelectElement(*This\Errors(), Index)
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) Premier élément de la liste chaînée <<<<<

  Procedure.i FirstMethods(*This.Private_Members)
    
    ProcedureReturn FirstElement(*This\Methods())
  EndProcedure
  
  Procedure.i FirstProcedures(*This.Private_Members)
    
    ProcedureReturn FirstElement(*This\Procedures())
  EndProcedure
  
  Procedure.i FirstVirtualTableEntries(*This.Private_Members)
    
    ProcedureReturn FirstElement(*This\VirtualTableEntries())
  EndProcedure
  
  Procedure.i FirstErrors(*This.Private_Members)
    
    ProcedureReturn FirstElement(*This\Errors())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) Dernier élément de la liste chaînée <<<<<

  Procedure.i LastMethods(*This.Private_Members)
    
    ProcedureReturn LastElement(*This\Methods())
  EndProcedure
  
  Procedure.i LastProcedures(*This.Private_Members)
    
    ProcedureReturn LastElement(*This\Procedures())
  EndProcedure
  
  Procedure.i LastVirtualTableEntries(*This.Private_Members)
    
    ProcedureReturn LastElement(*This\VirtualTableEntries())
  EndProcedure
  
  Procedure.i LastErrors(*This.Private_Members)
    
    ProcedureReturn LastElement(*This\Errors())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) élément Précédent de la liste chaînée <<<<<

  Procedure.i PreviousMethods(*This.Private_Members)
    
    ProcedureReturn PreviousElement(*This\Methods())
  EndProcedure
  
  Procedure.i PreviousProcedures(*This.Private_Members)
    
    ProcedureReturn PreviousElement(*This\Procedures())
  EndProcedure
  
  Procedure.i PreviousVirtualTableEntries(*This.Private_Members)
    
    ProcedureReturn PreviousElement(*This\VirtualTableEntries())
  EndProcedure
  
  Procedure.i PreviousErrors(*This.Private_Members)
    
    ProcedureReturn PreviousElement(*This\Errors())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) élément Suivant de la liste chaînée <<<<<

  Procedure.i NextMethods(*This.Private_Members)
    
    ProcedureReturn NextElement(*This\Methods())
  EndProcedure
  
  Procedure.i NextProcedures(*This.Private_Members)
    
    ProcedureReturn NextElement(*This\Procedures())
  EndProcedure
  
  Procedure.i NextVirtualTableEntries(*This.Private_Members)
    
    ProcedureReturn NextElement(*This\VirtualTableEntries())
  EndProcedure
  
  Procedure.i NextErrors(*This.Private_Members)
    
    ProcedureReturn NextElement(*This\Errors())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) Supprimer l'élément courant de la liste chaînée <<<<<

  Procedure DeleteMethods(*This.Private_Members)
    
    If *This\Methods() <> #Null
      *This\Methods()\Free()
    EndIf
    
    DeleteElement(*This\Methods())
    
  EndProcedure
  
  Procedure DeleteProcedures(*This.Private_Members)
    
    If *This\Procedures() <> #Null
      *This\Procedures()\Free()
    EndIf
    
    DeleteElement(*This\Procedures())
    
  EndProcedure
  
  Procedure DeleteVirtualTableEntries(*This.Private_Members)
    
    DeleteElement(*This\VirtualTableEntries())
    
  EndProcedure
  
  Procedure DeleteErrors(*This.Private_Members)
    
    If *This\Errors() <> #Null
      *This\Errors()\Free()
    EndIf
    
    DeleteElement(*This\Errors())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) Reset de la liste chaînée <<<<<

  Procedure ResetMethods(*This.Private_Members)
    
    ResetList(*This\Methods())
    
  EndProcedure
  
  Procedure ResetProcedures(*This.Private_Members)
    
    ResetList(*This\Procedures())
    
  EndProcedure
  
  Procedure ResetVirtualTableEntries(*This.Private_Members)
    
    ResetList(*This\VirtualTableEntries())
    
  EndProcedure
  
  Procedure ResetErrors(*This.Private_Members)
    
    ResetList(*This\Errors())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) Clear de la liste chaînée <<<<<

  Procedure ClearMethods(*This.Private_Members)
    
    ForEach *This\Methods()
      If *This\Methods() <> #Null
        *This\Methods()\Free()
      EndIf
    Next
    
    ClearList(*This\Methods())
    
  EndProcedure
  
  Procedure ClearProcedures(*This.Private_Members)
    
    ForEach *This\Procedures()
      If *This\Procedures() <> #Null
        *This\Procedures()\Free()
      EndIf
    Next
    
    ClearList(*This\Procedures())
    
  EndProcedure
  
  Procedure ClearVirtualTableEntries(*This.Private_Members)
    
    ClearList(*This\VirtualTableEntries())
    
  EndProcedure
  
  Procedure ClearErrors(*This.Private_Members)
    
    ForEach *This\Errors()
      If *This\Errors() <> #Null
        *This\Errors()\Free()
      EndIf
    Next
    
    ClearList(*This\Errors())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) de numéro d'index de la liste chaînée <<<<<

  Procedure.l MethodsIndex(*This.Private_Members)
    
    ProcedureReturn ListIndex(*This\Methods())
  EndProcedure
  
  Procedure.l ProceduresIndex(*This.Private_Members)
    
    ProcedureReturn ListIndex(*This\Procedures())
  EndProcedure
  
  Procedure.l VirtualTableEntriesIndex(*This.Private_Members)
    
    ProcedureReturn ListIndex(*This\VirtualTableEntries())
  EndProcedure
  
  Procedure.l ErrorsIndex(*This.Private_Members)
    
    ProcedureReturn ListIndex(*This\Errors())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'operateur(s) de grandeur de la liste chaînée <<<<<

  Procedure.l MethodsSize(*This.Private_Members)
    
    ProcedureReturn ListSize(*This\Methods())
  EndProcedure
  
  Procedure.l ProceduresSize(*This.Private_Members)
    
    ProcedureReturn ListSize(*This\Procedures())
  EndProcedure
  
  Procedure.l VirtualTableEntriesSize(*This.Private_Members)
    
    ProcedureReturn ListSize(*This\VirtualTableEntries())
  EndProcedure
  
  Procedure.l ErrorsSize(*This.Private_Members)
    
    ProcedureReturn ListSize(*This\Errors())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure SearchProcedureByName(*This.Private_Members, ProcedureName.s)
    
    IsFoundAtIndex.l = -1
    
    ForEach *This\Procedures()
      
      If *This\Procedures()\GetName() = ProcedureName
        IsFoundAtIndex = ListIndex(*This\Procedures())
        Break
      EndIf
      
    Next
    
    ProcedureReturn IsFoundAtIndex
  EndProcedure
 
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur Load <<<<<
  
  Procedure Load(*This.Private_Members, *CheckerAnalyzer.CheckerAnalyzer::CheckerAnalyzer)
   
    FileHandle.i = ReadFile(#PB_Any, *This\FileName)
    
    If IsFile(FileHandle)
      
      StringFormat.i = ReadStringFormat(FileHandle)
      
      While Eof(FileHandle) = 0
        
        ParamCount00.l = 0
        ParamCount01.l = 0
        
        Line.s = Trim(Trim(ReadString(FileHandle, StringFormat)), Chr(9))
        
        If Line = "EndInterface" And InterfaceFrontMontant.i = #True
          InterfaceFrontMontant = #False
        EndIf
        
        If InterfaceFrontMontant = #True And Line <> ""
          
          If *CheckerAnalyzer\IsItMethod(Line)

            Param.s = Trim(*This\BetweenParenthesis\Extract(*CheckerAnalyzer\GetMethodParams(Line)))
            
            If Param = ""
              ParamCount00.l = 0
            Else
              ParamCount00.l = CountString(Param, ",") + 1
            EndIf
            
            AddMethodsEx(*This, CheckerMethod::New(*CheckerAnalyzer\GetMethodName(Line), *CheckerAnalyzer\GetMethodReturnType(Line), Param, ParamCount00))
            
          EndIf
          
        EndIf
        
        If StringField(Line, 1, " ") = "Interface" And InterfaceFrontMontant = #False
          InterfaceFrontMontant = #True
        EndIf
        
        If *CheckerAnalyzer\IsItProcedure(Line)
          
          Param.s = Trim(*This\BetweenParenthesis\Extract(*CheckerAnalyzer\GetProcedureParams(Line)))
          
          If Param = ""
            ParamCount01.l = 0
          Else
            ParamCount01.l = CountString(Param, ",")
          EndIf
          
          AddProceduresEx(*This, CheckerMethod::New(*CheckerAnalyzer\GetProcedureName(Line), *CheckerAnalyzer\GetProcedureReturnType(Line), Param, ParamCount01))
          
        EndIf

        If FindString(Line, "END_METHODS:")
          VirtualTableFrontMontant.i = #False
          Break
        EndIf
        
        If VirtualTableFrontMontant = #True And Line <> ""
          
          If *CheckerAnalyzer\IsItVirtualTableEntry(Line)
            AddVirtualTableEntriesEx(*This, *CheckerAnalyzer\GetVirtualTableEntryName(Line))
          EndIf
          
        EndIf
        
        If FindString(Line, "START_METHODS:")
          VirtualTableFrontMontant = #True
        EndIf
        
      Wend
      
      CloseFile(FileHandle)
      
    EndIf
    
    If MethodsSize(*This) <> 0 And VirtualTableEntriesSize(*This) <> 0
      
      If MethodsSize(*This) <> VirtualTableEntriesSize(*This)
        Description.s = "Interface : " + Str(MethodsSize(*This)) + " | Virtual Table : " + Str(VirtualTableEntriesSize(*This)) 
        AddErrorsEx(*This, CheckerError::New(CheckerError::#TYPE_INTERFACE_VT_METHODS_SIZE_MISMATCH, Description))
        *This\ErrorInterfaceVTMismatchCount = 1
      Else

        FirstVirtualTableEntries(*This)
        
        ForEach *This\Methods()
          
          If *This\Methods()\GetName() <> *This\VirtualTableEntries()
            Description = *This\Methods()\GetName() + " vs " + *This\VirtualTableEntries()
            AddErrorsEx(*This, CheckerError::New(CheckerError::#TYPE_METHODS_SPELLING_ERROR, Description))
            *This\ErrorSpellingCount + 1
          EndIf
          
          NextVirtualTableEntries(*This)
          
        Next
        
        FirstMethods(*This)
        
        ForEach *This\VirtualTableEntries()
          
          If SearchProcedureByName(*This, *This\VirtualTableEntries()) >= 0
            
            If *This\Methods()\GetReturnType() <> *This\Procedures()\GetReturnType()
              Description = *This\Methods()\GetName() + " -> " + *This\Methods()\GetReturnType() + " vs " + *This\Procedures()\GetName() + " -> " + *This\Procedures()\GetReturnType()
              AddErrorsEx(*This, CheckerError::New(CheckerError::#TYPE_RETURN_TYPE_MISMATCH, Description))
              *This\ErrorParameterMismatchCount + 1
            EndIf
            
            If *This\Methods()\GetParameterCount() <> *This\Procedures()\GetParameterCount()
              Description = *This\Methods()\GetName() + " -> " + Str(*This\Methods()\GetParameterCount()) + " vs " + *This\Procedures()\GetName() + " -> " + Str(*This\Procedures()\GetParameterCount())
              AddErrorsEx(*This, CheckerError::New(CheckerError::#TYPE_PARAMETER_COUNT_MISMATCH, Description))
              *This\ErrorReturnTypeMismatchCount + 1
            EndIf
            
            If *This\Methods()\ParametersAnalysis(*This\Procedures()) = #False
              Description = *This\Methods()\GetName() + " -> " + *This\Methods()\GetParameters() + " vs " + *This\Procedures()\GetName() + " -> " + RemoveString(*This\Procedures()\GetParameters(), "This.Private_Members,")
              AddErrorsEx(*This, CheckerError::New(CheckerError::#TYPE_PARAMETER_TYPE_MISMATCH, Description))
              *This\ErrorParameterTypeMismatchCount + 1
            EndIf
            
          EndIf
          
          NextMethods(*This)
          
        Next
        
      EndIf
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Destructeur <<<<<

  Procedure Free(*This.Private_Members)
    
    ForEach *This\Methods()
      If *This\Methods() <> #Null
        *This\Methods()\Free()
      EndIf
    Next
    
    ForEach *This\Procedures()
      If *This\Procedures() <> #Null
        *This\Procedures()\Free()
      EndIf
    Next
    
    ForEach *This\Errors()
      If *This\Errors() <> #Null
        *This\Errors()\Free()
      EndIf
    Next
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Constructeur <<<<<

  Procedure.i New(*BetweenParenthesis.StringBetween::StringBetween)
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\BetweenParenthesis = *BetweenParenthesis
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les entrées de la table virtuelle <<<<<

  DataSection
    START_METHODS:
    Data.i @GetFileName()
    Data.i @GetMethods()
    Data.i @GetProcedures()
    Data.i @GetVirtualTableEntries()
    Data.i @GetErrors()
    Data.i @GetErrorInterfaceVTMismatchCount()
    Data.i @GetErrorSpellingCount()
    Data.i @GetErrorParameterMismatchCount()
    Data.i @GetErrorReturnTypeMismatchCount()
    Data.i @GetErrorParameterTypeMismatchCount()
    Data.i @SetFileName()
    Data.i @SetMethods()
    Data.i @SetProcedures()
    Data.i @SetVirtualTableEntries()
    Data.i @SetErrors()
    Data.i @AddMethodsEx()
    Data.i @AddProceduresEx()
    Data.i @AddVirtualTableEntriesEx()
    Data.i @AddErrorsEx()
    Data.i @SelectMethods()
    Data.i @SelectProcedures()
    Data.i @SelectVirtualTableEntries()
    Data.i @SelectErrors()
    Data.i @FirstMethods()
    Data.i @FirstProcedures()
    Data.i @FirstVirtualTableEntries()
    Data.i @FirstErrors()
    Data.i @LastMethods()
    Data.i @LastProcedures()
    Data.i @LastVirtualTableEntries()
    Data.i @LastErrors()
    Data.i @PreviousMethods()
    Data.i @PreviousProcedures()
    Data.i @PreviousVirtualTableEntries()
    Data.i @PreviousErrors()
    Data.i @NextMethods()
    Data.i @NextProcedures()
    Data.i @NextVirtualTableEntries()
    Data.i @NextErrors()
    Data.i @DeleteMethods()
    Data.i @DeleteProcedures()
    Data.i @DeleteVirtualTableEntries()
    Data.i @DeleteErrors()
    Data.i @ResetMethods()
    Data.i @ResetProcedures()
    Data.i @ResetVirtualTableEntries()
    Data.i @ResetErrors()
    Data.i @ClearMethods()
    Data.i @ClearProcedures()
    Data.i @ClearVirtualTableEntries()
    Data.i @ClearErrors()
    Data.i @MethodsIndex()
    Data.i @ProceduresIndex()
    Data.i @VirtualTableEntriesIndex()
    Data.i @ErrorsIndex()
    Data.i @MethodsSize()
    Data.i @ProceduresSize()
    Data.i @VirtualTableEntriesSize()
    Data.i @ErrorsSize()
    Data.i @Load()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (582000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 7 (Linux - x64)
; Folding = ------------
; EnableXP
; CompileSourceDirectory