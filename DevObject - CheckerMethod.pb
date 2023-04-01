; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V1.6.9 Beta
; Nom du projet : DevObject
; Nom du fichier : DevObject - CheckerMethod.pb
; Version du fichier : 1.1.0
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 28-11-2021
; Mise à jour : 18-12-2021
; Codé pour PureBasic : V6.00 Beta 1
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule CheckerMethod
  
  Interface CheckerMethod
    
    GetName.s()
    GetReturnType.s()
    GetParameters.s()
    GetParameterCount.l()
    SetName(Name.s)
    SetReturnType(ReturnType.s)
    SetParameters(Parameters.s)
    SetParameterCount(ParameterCount.l)
    ParametersAnalysis.i(*Other)
    Free()
    
  EndInterface
  
  Declare.i New(Name.s = "", ReturnType.s = "", Parameters.s = "", ParameterCount.l = 0)
  
EndDeclareModule

Module CheckerMethod
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    Name.s
    ReturnType.s
    Parameters.s
    ParameterCount.l
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<

  Procedure.s GetName(*This.Private_Members)
    
    ProcedureReturn *This\Name
  EndProcedure
  
  Procedure.s GetReturnType(*This.Private_Members)
    
    ProcedureReturn *This\ReturnType
  EndProcedure
  
  Procedure.s GetParameters(*This.Private_Members)
    
    ProcedureReturn *This\Parameters
  EndProcedure
  
  Procedure.l GetParameterCount(*This.Private_Members)
    
    ProcedureReturn *This\ParameterCount
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<

  Procedure SetName(*This.Private_Members, Name.s)
    
    *This\Name = Name
    
  EndProcedure
  
  Procedure SetReturnType(*This.Private_Members, ReturnType.s)
    
    *This\ReturnType = ReturnType
    
  EndProcedure
  
  Procedure SetParameters(*This.Private_Members, Parameters.s)
    
    *This\Parameters = Parameters
    
  EndProcedure
  
  Procedure SetParameterCount(*This.Private_Members, ParameterCount.l)
    
    *This\ParameterCount = ParameterCount
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure.i ParametersAnalysis(*This.Private_Members, *Other.Private_Members)
    
    If *This\Parameters = ""
      MethodParameterCount.l = 0
    Else
      MethodParameterCount.l = CountString(*This\Parameters, ",") + 1
    EndIf
    
    If *Other\Parameters = ""
      ProcParameterCount.l = 0
    Else
      ProcParameterCount.l = CountString(*Other\Parameters, ",") + 1
    EndIf
    
    If MethodParameterCount = ProcParameterCount - 1
      
      For ParamID = 1 To ProcParameterCount - 1
        
        MethodParam.s = Trim(StringField(*This\Parameters, ParamID, ","))
        ProcParam.s = Trim(StringField(*Other\Parameters, ParamID + 1, ","))
        ModProcParam.s = RemoveString(ProcParam, ".Private_Members")
        
        If (MethodParam = "" And ProcParam = "*This.Private_Members") Or (ProcParam = MethodParam + ".Private_Members") Or (MethodParam = ModProcParam)
          Continue
        ElseIf MethodParam <> ProcParam
          ProcedureReturn #False
        EndIf
        
      Next
      
      ProcedureReturn #True
      
    EndIf
    
    ProcedureReturn #False
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Destructeur <<<<<

  Procedure Free(*This.Private_Members)
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Constructeur <<<<<

  Procedure.i New(Name.s = "", ReturnType.s = "", Parameters.s = "", ParameterCount.l = 0)
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\Name = Name
    *This\ReturnType = ReturnType
    *This\Parameters = Parameters
    *This\ParameterCount = ParameterCount
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les entrées de la table virtuelle <<<<<

  DataSection
    START_METHODS:
    Data.i @GetName()
    Data.i @GetReturnType()
    Data.i @GetParameters()
    Data.i @GetParameterCount()
    Data.i @SetName()
    Data.i @SetReturnType()
    Data.i @SetParameters()
    Data.i @SetParameterCount()
    Data.i @ParametersAnalysis()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (131000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

;CheckerMethod.CheckerMethod::CheckerMethod = CheckerMethod::New("AddScaled", "", "*Other, Scale.f", 2)
;CheckerProc.CheckerMethod::CheckerMethod = CheckerMethod::New("AddScaled", "", "*This.Private_Members, *Other.Private_Members, Scale.f", 3)

; CheckerMethod.CheckerMethod::CheckerMethod = CheckerMethod::New("AddScaled", "", "*Other = #Null", 2)
; CheckerProc.CheckerMethod::CheckerMethod = CheckerMethod::New("AddScaled", "", "*This.Private_Members, *Other.Private_Members = #Null", 3)
;  
; Debug CheckerMethod\ParametersAnalysis(CheckerProc)

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 1 (Linux - x64)
; Folding = ---
; EnableXP
; CompileSourceDirectory