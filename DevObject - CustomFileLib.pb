; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V1.1.0
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - CustomFileLib.pb
; Version du fichier : 1.2.2
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 26-10-2020
; Mise à jour : 24-04-2022
; Codé pour PureBasic : V6.00 Beta 6
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule CustomFileLib
  
  #Type_Encoded = 0
  #Type_Crypted = 1
 
  Interface CustomFileLib
    
    GetFileName.s()
    GetType.i()
    GetPrefix.s()
    GetDisplayName.s()
    GetModuleName.s()
    GetInterfaceName.s()
    GetConstructorDeclaration.s()
    SetFileName(FileName.s)
    SetType(Type.i)
    SetPrefix(Prefix.s)
    SetDisplayName(DisplayName.s)
    SetModuleName(ModuleName.s)
    SetInterfaceName(InterfaceName.s)
    SetConstructorDeclaration(ConstructorDeclaration.s)
    IsValid.i()
    LibraryAnalyzer()
    FormatModuleInterface.s()
    FormatConstructor.s(*BetweenParenthesis.StringBetween::StringBetween)
    Free()
    
  EndInterface
  
  Declare.i New(FileName.s = "")
  
EndDeclareModule

Module CustomFileLib
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    FileName.s
    IsValid.i
    Type.i
    Prefix.s
    DisplayName.s
    ModuleName.s
    InterfaceName.s
    ConstructorDeclaration.s
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<

  Procedure.s GetFileName(*This.Private_Members)
    
    ProcedureReturn *This\FileName
  EndProcedure
  
  Procedure.i GetType(*This.Private_Members)
    
    ProcedureReturn *This\Type
  EndProcedure
  
  Procedure.s GetPrefix(*This.Private_Members)
    
    ProcedureReturn *This\Prefix
  EndProcedure
  
  Procedure.s GetDisplayName(*This.Private_Members)
    
    ProcedureReturn *This\DisplayName
  EndProcedure
  
  Procedure.s GetModuleName(*This.Private_Members)
    
    ProcedureReturn *This\ModuleName
  EndProcedure
  
  Procedure.s GetInterfaceName(*This.Private_Members)
    
    ProcedureReturn *This\InterfaceName
  EndProcedure
  
  Procedure.s GetConstructorDeclaration(*This.Private_Members)
    
    ProcedureReturn *This\ConstructorDeclaration
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<

  Procedure SetFileName(*This.Private_Members, FileName.s)
    
    *This\FileName = FileName
    
  EndProcedure
  
  Procedure SetType(*This.Private_Members, Type.i)
    
    *This\Type = Type
    
  EndProcedure
  
  Procedure SetPrefix(*This.Private_Members, Prefix.s)
    
    *This\Prefix = Prefix
    
  EndProcedure
  
  Procedure SetDisplayName(*This.Private_Members, DisplayName.s)
    
    *This\DisplayName = DisplayName
    
  EndProcedure
  
  Procedure SetModuleName(*This.Private_Members, ModuleName.s)
    
    *This\ModuleName = ModuleName
    
  EndProcedure
  
  Procedure SetInterfaceName(*This.Private_Members, InterfaceName.s)
    
    *This\InterfaceName = InterfaceName
    
  EndProcedure
  
  Procedure SetConstructorDeclaration(*This.Private_Members, ConstructorDeclaration.s)
    
    *This\ConstructorDeclaration = ConstructorDeclaration
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure.i IsValid(*This.Private_Members)
    
    ProcedureReturn *This\IsValid
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure LibraryAnalyzer(*This.Private_Members)
    
    LibFileID.i = ReadFile(#PB_Any, *This\FileName)
    
    If IsFile(LibFileID)
      
      StringFormat = ReadStringFormat(LibFileID)
      Sanity.i = 0
      
      While Eof(LibFileID) = 0
        
        Line.s = ReadString(LibFileID, StringFormat)
        
        If FindString(Line, "DeclareModule") And *This\ModuleName = ""
          
          Temp.s = Trim(RemoveString(Line, "DeclareModule"))

          If FindString(Temp, ";")
            *This\DisplayName = ReplaceString(Temp, ";", "-")
            *This\ModuleName = Trim(StringField(Temp, 1, ";"))
          Else
            *This\ModuleName = Temp
            *This\DisplayName = *This\ModuleName
          EndIf
          
          Sanity + 1
          
        EndIf
        
        If FindString(Line, "Interface") And *This\InterfaceName = ""
          *This\InterfaceName = Trim(StringField(Trim(Line), 2, " "))
          Sanity + 1
        EndIf
        
        If FindString(Line, "_WriteString") And *This\Prefix = ""
          *This\Prefix = Trim(StringField(Trim(Line), 1, "_")) + "_"
          Sanity + 1
        EndIf
        
        If FindString(Line, "Declare.i New(") And *This\ConstructorDeclaration = ""
          
          *This\ConstructorDeclaration = Trim(StringField(Trim(Line), 2, "Declare.i "))
          Sanity + 1

          If FindString(*This\ConstructorDeclaration, "Key")
            *This\Type = #Type_Crypted
          Else
            *This\Type = #Type_Encoded
          EndIf
          
        EndIf
        
        If FindString(Line, "EndDeclareModule")
          Break
        EndIf
        
      Wend
      
      If Sanity = 4
        *This\IsValid = #True
      Else
        *This\IsValid = #False
      EndIf
      
      CloseFile(LibFileID)
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure.s FormatModuleInterface(*This.Private_Members)
  
    ProcedureReturn *This\ModuleName + "::" + *This\InterfaceName 
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure.s FormatConstructor(*This.Private_Members, *BetweenParenthesis.StringBetween::StringBetween)
    
    Params.s = *BetweenParenthesis\Extract(*This\ConstructorDeclaration)
    
    ParamMax = CountString(Params, ",") + 1
    
    If ParamMax = 1
      
      DefaultParams.s = Trim(StringField(Params, 2, "="))
      
    Else
      
      For ParamID = 1 To ParamMax
        
        DefaultParams.s + Trim(StringField(Trim(StringField(Params, ParamID, ",")), 2, "="))
        
        If ParamID < ParamMax
          DefaultParams + ", "
        EndIf
        
      Next
      
    EndIf
    
    If FindString(DefaultParams, "#")
      DefaultParams = ReplaceString(DefaultParams, "#", *This\ModuleName + "::#")
    EndIf
    
    ProcedureReturn *This\ModuleName + "::New(" + DefaultParams + ")"
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Destructeur <<<<<

  Procedure Free(*This.Private_Members)
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Constructeur <<<<<

  Procedure.i New(FileName.s = "")
    
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
    Data.i @GetType()
    Data.i @GetPrefix()
    Data.i @GetDisplayName()
    Data.i @GetModuleName()
    Data.i @GetInterfaceName()
    Data.i @GetConstructorDeclaration()
    Data.i @SetFileName()
    Data.i @SetType()
    Data.i @SetPrefix()
    Data.i @SetDisplayName()
    Data.i @SetModuleName()
    Data.i @SetInterfaceName()
    Data.i @SetConstructorDeclaration()
    Data.i @IsValid()
    Data.i @LibraryAnalyzer()
    Data.i @FormatModuleInterface()
    Data.i @FormatConstructor()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (199000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 6 (Linux - x64)
; Folding = -----
; EnableXP
; CompileSourceDirectory