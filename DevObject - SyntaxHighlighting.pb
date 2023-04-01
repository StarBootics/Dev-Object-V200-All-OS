; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.0.1
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - SyntaxHighlighting.pb
; Version du fichier : 1.0.0
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 27-10-2019
; Mise à jour : 27-10-2019
; Codé pour PureBasic : V5.71 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule SyntaxHighlighting

  Interface SyntaxHighlighting

    GetDefaultForeColor.l()
    GetDefaultBackColor.l()
    GetCaretForeColor.l()
    GetCaretBackColor.l()
    GetSelectionForeColor.l()
    GetSelectionBackColor.l()
    GetLineNumbersForeColor.l()
    GetLineNumbersBackColor.l()
    GetFoldMarginHiBackColor.l()
    GetFoldMarginLoBackColor.l()
    GetFoldMarkerForeColor.l()
    GetFoldMarkerBackColor.l()
    GetLineHighlightColor.l()
    GetKeywordsColor.l()
    GetCommentColor.l()
    GetLiteralStringColor.l()
    GetNumbersColor.l()
    GetConstantsColor.l()
    GetProceduresColor.l()
    GetSeparatorsColor.l()
    GetOperatorsColor.l()
    GetTypesColor.l()
    GetModulesColor.l()
    GetPointersColor.l()
    GetSeparators.s()
    GetOperators.s()
    GetKeywordsInBold.i()
    GetKeywords.s()
    GetOpenFoldKeywords.s()
    GetCloseFoldKeywords.s()
    SetDefaultForeColor(DefaultForeColor.l)
    SetDefaultBackColor(DefaultBackColor.l)
    SetCaretForeColor(CaretForeColor.l)
    SetCaretBackColor(CaretBackColor.l)
    SetSelectionForeColor(SelectionForeColor.l)
    SetSelectionBackColor(SelectionBackColor.l)
    SetLineNumbersForeColor(LineNumbersForeColor.l)
    SetLineNumbersBackColor(LineNumbersBackColor.l)
    SetFoldMarginHiBackColor(FoldMarginHiBackColor.l)
    SetFoldMarginLoBackColor(FoldMarginLoBackColor.l)
    SetFoldMarkerForeColor(FoldMarkerForeColor.l)
    SetFoldMarkerBackColor(FoldMarkerBackColor.l)
    SetLineHighlightColor(LineHighlightColor.l)
    SetKeywordsColor(KeywordsColor.l)
    SetCommentColor(CommentColor.l)
    SetLiteralStringColor(LiteralStringColor.l)
    SetNumbersColor(NumbersColor.l)
    SetConstantsColor(ConstantsColor.l)
    SetProceduresColor(ProceduresColor.l)
    SetSeparatorsColor(SeparatorsColor.l)
    SetOperatorsColor(OperatorsColor.l)
    SetTypesColor(TypesColor.l)
    SetModulesColor(ModulesColor.l)
    SetPointersColor(PointersColor.l)
    SetSeparators(Separators.s)
    SetOperators(Operators.s)
    SetKeywordsInBold(KeywordsInBold.i)
    SetKeywords(Keywords.s)
    SetOpenFoldKeywords(OpenFoldKeywords.s)
    SetCloseFoldKeywords(CloseFoldKeywords.s)
    AddPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    ExtractPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    RefreshPrefsGroup(GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    BuiltKeywordList.s()
    BuiltOpenFoldKeywordList.s()
    BuiltCloseFoldKeywordList.s()
    Free()

  EndInterface

  Declare.i New()

EndDeclareModule

Module SyntaxHighlighting

  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members

    VirtualTable.i
    DefaultForeColor.l
    DefaultBackColor.l
    CaretForeColor.l
    CaretBackColor.l
    SelectionForeColor.l
    SelectionBackColor.l
    LineNumbersForeColor.l
    LineNumbersBackColor.l
    FoldMarginHiBackColor.l
    FoldMarginLoBackColor.l
    FoldMarkerForeColor.l
    FoldMarkerBackColor.l
    LineHighlightColor.l
    KeywordsColor.l
    CommentColor.l
    LiteralStringColor.l
    NumbersColor.l
    ConstantsColor.l
    ProceduresColor.l
    SeparatorsColor.l
    OperatorsColor.l
    TypesColor.l
    ModulesColor.l
    PointersColor.l
    Separators.s
    Operators.s
    KeywordsInBold.i
    List Keywords.s()
    List OpenFoldKeywords.s()
    List CloseFoldKeywords.s()
  
  EndStructure

  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<

  Procedure.l GetDefaultForeColor(*This.Private_Members)

    ProcedureReturn *This\DefaultForeColor
  EndProcedure

  Procedure.l GetDefaultBackColor(*This.Private_Members)

    ProcedureReturn *This\DefaultBackColor
  EndProcedure

  Procedure.l GetCaretForeColor(*This.Private_Members)

    ProcedureReturn *This\CaretForeColor
  EndProcedure

  Procedure.l GetCaretBackColor(*This.Private_Members)

    ProcedureReturn *This\CaretBackColor
  EndProcedure

  Procedure.l GetSelectionForeColor(*This.Private_Members)

    ProcedureReturn *This\SelectionForeColor
  EndProcedure

  Procedure.l GetSelectionBackColor(*This.Private_Members)

    ProcedureReturn *This\SelectionBackColor
  EndProcedure

  Procedure.l GetLineNumbersForeColor(*This.Private_Members)

    ProcedureReturn *This\LineNumbersForeColor
  EndProcedure

  Procedure.l GetLineNumbersBackColor(*This.Private_Members)

    ProcedureReturn *This\LineNumbersBackColor
  EndProcedure

  Procedure.l GetFoldMarginHiBackColor(*This.Private_Members)

    ProcedureReturn *This\FoldMarginHiBackColor
  EndProcedure

  Procedure.l GetFoldMarginLoBackColor(*This.Private_Members)

    ProcedureReturn *This\FoldMarginLoBackColor
  EndProcedure

  Procedure.l GetFoldMarkerForeColor(*This.Private_Members)

    ProcedureReturn *This\FoldMarkerForeColor
  EndProcedure

  Procedure.l GetFoldMarkerBackColor(*This.Private_Members)

    ProcedureReturn *This\FoldMarkerBackColor
  EndProcedure

  Procedure.l GetLineHighlightColor(*This.Private_Members)

    ProcedureReturn *This\LineHighlightColor
  EndProcedure

  Procedure.l GetKeywordsColor(*This.Private_Members)

    ProcedureReturn *This\KeywordsColor
  EndProcedure

  Procedure.l GetCommentColor(*This.Private_Members)

    ProcedureReturn *This\CommentColor
  EndProcedure

  Procedure.l GetLiteralStringColor(*This.Private_Members)

    ProcedureReturn *This\LiteralStringColor
  EndProcedure

  Procedure.l GetNumbersColor(*This.Private_Members)

    ProcedureReturn *This\NumbersColor
  EndProcedure

  Procedure.l GetConstantsColor(*This.Private_Members)

    ProcedureReturn *This\ConstantsColor
  EndProcedure

  Procedure.l GetProceduresColor(*This.Private_Members)

    ProcedureReturn *This\ProceduresColor
  EndProcedure

  Procedure.l GetSeparatorsColor(*This.Private_Members)

    ProcedureReturn *This\SeparatorsColor
  EndProcedure

  Procedure.l GetOperatorsColor(*This.Private_Members)

    ProcedureReturn *This\OperatorsColor
  EndProcedure

  Procedure.l GetTypesColor(*This.Private_Members)

    ProcedureReturn *This\TypesColor
  EndProcedure

  Procedure.l GetModulesColor(*This.Private_Members)

    ProcedureReturn *This\ModulesColor
  EndProcedure

  Procedure.l GetPointersColor(*This.Private_Members)

    ProcedureReturn *This\PointersColor
  EndProcedure

  Procedure.s GetSeparators(*This.Private_Members)

    ProcedureReturn *This\Separators
  EndProcedure

  Procedure.s GetOperators(*This.Private_Members)

    ProcedureReturn *This\Operators
  EndProcedure

  Procedure.i GetKeywordsInBold(*This.Private_Members)

    ProcedureReturn *This\KeywordsInBold
  EndProcedure

  Procedure.s GetKeywords(*This.Private_Members)

    ProcedureReturn *This\Keywords()
  EndProcedure

  Procedure.s GetOpenFoldKeywords(*This.Private_Members)

    ProcedureReturn *This\OpenFoldKeywords()
  EndProcedure

  Procedure.s GetCloseFoldKeywords(*This.Private_Members)

    ProcedureReturn *This\CloseFoldKeywords()
  EndProcedure

  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<

  Procedure SetDefaultForeColor(*This.Private_Members, DefaultForeColor.l)

    *This\DefaultForeColor = DefaultForeColor

  EndProcedure

  Procedure SetDefaultBackColor(*This.Private_Members, DefaultBackColor.l)

    *This\DefaultBackColor = DefaultBackColor

  EndProcedure

  Procedure SetCaretForeColor(*This.Private_Members, CaretForeColor.l)

    *This\CaretForeColor = CaretForeColor

  EndProcedure

  Procedure SetCaretBackColor(*This.Private_Members, CaretBackColor.l)

    *This\CaretBackColor = CaretBackColor

  EndProcedure

  Procedure SetSelectionForeColor(*This.Private_Members, SelectionForeColor.l)

    *This\SelectionForeColor = SelectionForeColor

  EndProcedure

  Procedure SetSelectionBackColor(*This.Private_Members, SelectionBackColor.l)

    *This\SelectionBackColor = SelectionBackColor

  EndProcedure

  Procedure SetLineNumbersForeColor(*This.Private_Members, LineNumbersForeColor.l)

    *This\LineNumbersForeColor = LineNumbersForeColor

  EndProcedure

  Procedure SetLineNumbersBackColor(*This.Private_Members, LineNumbersBackColor.l)

    *This\LineNumbersBackColor = LineNumbersBackColor

  EndProcedure

  Procedure SetFoldMarginHiBackColor(*This.Private_Members, FoldMarginHiBackColor.l)

    *This\FoldMarginHiBackColor = FoldMarginHiBackColor

  EndProcedure

  Procedure SetFoldMarginLoBackColor(*This.Private_Members, FoldMarginLoBackColor.l)

    *This\FoldMarginLoBackColor = FoldMarginLoBackColor

  EndProcedure

  Procedure SetFoldMarkerForeColor(*This.Private_Members, FoldMarkerForeColor.l)

    *This\FoldMarkerForeColor = FoldMarkerForeColor

  EndProcedure

  Procedure SetFoldMarkerBackColor(*This.Private_Members, FoldMarkerBackColor.l)

    *This\FoldMarkerBackColor = FoldMarkerBackColor

  EndProcedure

  Procedure SetLineHighlightColor(*This.Private_Members, LineHighlightColor.l)

    *This\LineHighlightColor = LineHighlightColor

  EndProcedure

  Procedure SetKeywordsColor(*This.Private_Members, KeywordsColor.l)

    *This\KeywordsColor = KeywordsColor

  EndProcedure

  Procedure SetCommentColor(*This.Private_Members, CommentColor.l)

    *This\CommentColor = CommentColor

  EndProcedure

  Procedure SetLiteralStringColor(*This.Private_Members, LiteralStringColor.l)

    *This\LiteralStringColor = LiteralStringColor

  EndProcedure

  Procedure SetNumbersColor(*This.Private_Members, NumbersColor.l)

    *This\NumbersColor = NumbersColor

  EndProcedure

  Procedure SetConstantsColor(*This.Private_Members, ConstantsColor.l)

    *This\ConstantsColor = ConstantsColor

  EndProcedure

  Procedure SetProceduresColor(*This.Private_Members, ProceduresColor.l)

    *This\ProceduresColor = ProceduresColor

  EndProcedure

  Procedure SetSeparatorsColor(*This.Private_Members, SeparatorsColor.l)

    *This\SeparatorsColor = SeparatorsColor

  EndProcedure

  Procedure SetOperatorsColor(*This.Private_Members, OperatorsColor.l)

    *This\OperatorsColor = OperatorsColor

  EndProcedure

  Procedure SetTypesColor(*This.Private_Members, TypesColor.l)

    *This\TypesColor = TypesColor

  EndProcedure

  Procedure SetModulesColor(*This.Private_Members, ModulesColor.l)

    *This\ModulesColor = ModulesColor

  EndProcedure

  Procedure SetPointersColor(*This.Private_Members, PointersColor.l)

    *This\PointersColor = PointersColor

  EndProcedure

  Procedure SetSeparators(*This.Private_Members, Separators.s)

    *This\Separators = Separators

  EndProcedure

  Procedure SetOperators(*This.Private_Members, Operators.s)

    *This\Operators = Operators

  EndProcedure

  Procedure SetKeywordsInBold(*This.Private_Members, KeywordsInBold.i)

    *This\KeywordsInBold = KeywordsInBold

  EndProcedure

  Procedure SetKeywords(*This.Private_Members, Keywords.s)

    *This\Keywords() = Keywords

  EndProcedure

  Procedure SetOpenFoldKeywords(*This.Private_Members, OpenFoldKeywords.s)

    *This\OpenFoldKeywords() = OpenFoldKeywords

  EndProcedure

  Procedure SetCloseFoldKeywords(*This.Private_Members, CloseFoldKeywords.s)

    *This\CloseFoldKeywords() = CloseFoldKeywords

  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Ajout d'un Groupe de Prefs <<<<<

  Procedure AddPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    *CustomPrefs\AddGroup(GroupName)
    
    *CustomPrefs\AddKeyLong(GroupName, "DefaultForeColor", *This\DefaultForeColor)
    *CustomPrefs\AddKeyLong(GroupName, "DefaultBackColor", *This\DefaultBackColor)
    *CustomPrefs\AddKeyLong(GroupName, "CaretForeColor", *This\CaretForeColor)
    *CustomPrefs\AddKeyLong(GroupName, "CaretBackColor", *This\CaretBackColor)
    *CustomPrefs\AddKeyLong(GroupName, "SelectionForeColor", *This\SelectionForeColor)
    *CustomPrefs\AddKeyLong(GroupName, "SelectionBackColor", *This\SelectionBackColor)
    *CustomPrefs\AddKeyLong(GroupName, "LineNumbersForeColor", *This\LineNumbersForeColor)
    *CustomPrefs\AddKeyLong(GroupName, "LineNumbersBackColor", *This\LineNumbersBackColor)
    *CustomPrefs\AddKeyLong(GroupName, "FoldMarginHiBackColor", *This\FoldMarginHiBackColor)
    *CustomPrefs\AddKeyLong(GroupName, "FoldMarginLoBackColor", *This\FoldMarginLoBackColor)
    *CustomPrefs\AddKeyLong(GroupName, "FoldMarkerForeColor", *This\FoldMarkerForeColor)
    *CustomPrefs\AddKeyLong(GroupName, "FoldMarkerBackColor", *This\FoldMarkerBackColor)
    *CustomPrefs\AddKeyLong(GroupName, "LineHighlightColor", *This\LineHighlightColor)
    *CustomPrefs\AddKeyLong(GroupName, "KeywordsColor", *This\KeywordsColor)
    *CustomPrefs\AddKeyLong(GroupName, "CommentColor", *This\CommentColor)
    *CustomPrefs\AddKeyLong(GroupName, "LiteralStringColor", *This\LiteralStringColor)
    *CustomPrefs\AddKeyLong(GroupName, "NumbersColor", *This\NumbersColor)
    *CustomPrefs\AddKeyLong(GroupName, "ConstantsColor", *This\ConstantsColor)
    *CustomPrefs\AddKeyLong(GroupName, "ProceduresColor", *This\ProceduresColor)
    *CustomPrefs\AddKeyLong(GroupName, "SeparatorsColor", *This\SeparatorsColor)
    *CustomPrefs\AddKeyLong(GroupName, "OperatorsColor", *This\OperatorsColor)
    *CustomPrefs\AddKeyLong(GroupName, "TypesColor", *This\TypesColor)
    *CustomPrefs\AddKeyLong(GroupName, "ModulesColor", *This\ModulesColor)
    *CustomPrefs\AddKeyLong(GroupName, "PointersColor", *This\PointersColor)
    *CustomPrefs\AddKeyInteger(GroupName, "KeywordsInBold", *This\KeywordsInBold)
    
    *CustomPrefs\AddGroupEmptyLine(GroupName)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Extraction d'un Groupe de Prefs <<<<<

  Procedure ExtractPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "DefaultForeColor")
        *This\DefaultForeColor = *CustomPrefs\GetValueLong(GroupName, "DefaultForeColor", *This\DefaultForeColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "DefaultBackColor")
        *This\DefaultBackColor = *CustomPrefs\GetValueLong(GroupName, "DefaultBackColor", *This\DefaultBackColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "CaretForeColor")
        *This\CaretForeColor = *CustomPrefs\GetValueLong(GroupName, "CaretForeColor", *This\CaretForeColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "CaretBackColor")
        *This\CaretBackColor = *CustomPrefs\GetValueLong(GroupName, "CaretBackColor", *This\CaretBackColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "SelectionForeColor")
        *This\SelectionForeColor = *CustomPrefs\GetValueLong(GroupName, "SelectionForeColor", *This\SelectionForeColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "SelectionBackColor")
        *This\SelectionBackColor = *CustomPrefs\GetValueLong(GroupName, "SelectionBackColor", *This\SelectionBackColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "LineNumbersForeColor")
        *This\LineNumbersForeColor = *CustomPrefs\GetValueLong(GroupName, "LineNumbersForeColor", *This\LineNumbersForeColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "LineNumbersBackColor")
        *This\LineNumbersBackColor = *CustomPrefs\GetValueLong(GroupName, "LineNumbersBackColor", *This\LineNumbersBackColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "FoldMarginHiBackColor")
        *This\FoldMarginHiBackColor = *CustomPrefs\GetValueLong(GroupName, "FoldMarginHiBackColor", *This\FoldMarginHiBackColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "FoldMarginLoBackColor")
        *This\FoldMarginLoBackColor = *CustomPrefs\GetValueLong(GroupName, "FoldMarginLoBackColor", *This\FoldMarginLoBackColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "FoldMarkerForeColor")
        *This\FoldMarkerForeColor = *CustomPrefs\GetValueLong(GroupName, "FoldMarkerForeColor", *This\FoldMarkerForeColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "FoldMarkerBackColor")
        *This\FoldMarkerBackColor = *CustomPrefs\GetValueLong(GroupName, "FoldMarkerBackColor", *This\FoldMarkerBackColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "LineHighlightColor")
        *This\LineHighlightColor = *CustomPrefs\GetValueLong(GroupName, "LineHighlightColor", *This\LineHighlightColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "KeywordsColor")
        *This\KeywordsColor = *CustomPrefs\GetValueLong(GroupName, "KeywordsColor", *This\KeywordsColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "CommentColor")
        *This\CommentColor = *CustomPrefs\GetValueLong(GroupName, "CommentColor", *This\CommentColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "LiteralStringColor")
        *This\LiteralStringColor = *CustomPrefs\GetValueLong(GroupName, "LiteralStringColor", *This\LiteralStringColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "NumbersColor")
        *This\NumbersColor = *CustomPrefs\GetValueLong(GroupName, "NumbersColor", *This\NumbersColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "ConstantsColor")
        *This\ConstantsColor = *CustomPrefs\GetValueLong(GroupName, "ConstantsColor", *This\ConstantsColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "ProceduresColor")
        *This\ProceduresColor = *CustomPrefs\GetValueLong(GroupName, "ProceduresColor", *This\ProceduresColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "SeparatorsColor")
        *This\SeparatorsColor = *CustomPrefs\GetValueLong(GroupName, "SeparatorsColor", *This\SeparatorsColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "OperatorsColor")
        *This\OperatorsColor = *CustomPrefs\GetValueLong(GroupName, "OperatorsColor", *This\OperatorsColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "TypesColor")
        *This\TypesColor = *CustomPrefs\GetValueLong(GroupName, "TypesColor", *This\TypesColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "ModulesColor")
        *This\ModulesColor = *CustomPrefs\GetValueLong(GroupName, "ModulesColor", *This\ModulesColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "PointersColor")
        *This\PointersColor = *CustomPrefs\GetValueLong(GroupName, "PointersColor", *This\PointersColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "KeywordsInBold")
        *This\KeywordsInBold = *CustomPrefs\GetValueInteger(GroupName, "KeywordsInBold", *This\KeywordsInBold)
      EndIf
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Rafraîchir un Groupe de Prefs <<<<<

  Procedure RefreshPrefsGroup(*This.Private_Members, GroupName.s, *CustomPrefs.CustomPrefs::CustomPrefs)
    
    If *CustomPrefs\IsGroup(GroupName)
      
      If *CustomPrefs\IsKey(GroupName, "DefaultForeColor")
        *CustomPrefs\SetValueLong(GroupName, "DefaultForeColor", *This\DefaultForeColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "DefaultBackColor")
        *CustomPrefs\SetValueLong(GroupName, "DefaultBackColor", *This\DefaultBackColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "CaretForeColor")
        *CustomPrefs\SetValueLong(GroupName, "CaretForeColor", *This\CaretForeColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "CaretBackColor")
        *CustomPrefs\SetValueLong(GroupName, "CaretBackColor", *This\CaretBackColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "SelectionForeColor")
        *CustomPrefs\SetValueLong(GroupName, "SelectionForeColor", *This\SelectionForeColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "SelectionBackColor")
        *CustomPrefs\SetValueLong(GroupName, "SelectionBackColor", *This\SelectionBackColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "LineNumbersForeColor")
        *CustomPrefs\SetValueLong(GroupName, "LineNumbersForeColor", *This\LineNumbersForeColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "LineNumbersBackColor")
        *CustomPrefs\SetValueLong(GroupName, "LineNumbersBackColor", *This\LineNumbersBackColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "FoldMarginHiBackColor")
        *CustomPrefs\SetValueLong(GroupName, "FoldMarginHiBackColor", *This\FoldMarginHiBackColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "FoldMarginLoBackColor")
        *CustomPrefs\SetValueLong(GroupName, "FoldMarginLoBackColor", *This\FoldMarginLoBackColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "FoldMarkerForeColor")
        *CustomPrefs\SetValueLong(GroupName, "FoldMarkerForeColor", *This\FoldMarkerForeColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "FoldMarkerBackColor")
        *CustomPrefs\SetValueLong(GroupName, "FoldMarkerBackColor", *This\FoldMarkerBackColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "LineHighlightColor")
        *CustomPrefs\SetValueLong(GroupName, "LineHighlightColor", *This\LineHighlightColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "KeywordsColor")
        *CustomPrefs\SetValueLong(GroupName, "KeywordsColor", *This\KeywordsColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "CommentColor")
        *CustomPrefs\SetValueLong(GroupName, "CommentColor", *This\CommentColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "LiteralStringColor")
        *CustomPrefs\SetValueLong(GroupName, "LiteralStringColor", *This\LiteralStringColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "NumbersColor")
        *CustomPrefs\SetValueLong(GroupName, "NumbersColor", *This\NumbersColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "ConstantsColor")
        *CustomPrefs\SetValueLong(GroupName, "ConstantsColor", *This\ConstantsColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "ProceduresColor")
        *CustomPrefs\SetValueLong(GroupName, "ProceduresColor", *This\ProceduresColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "SeparatorsColor")
        *CustomPrefs\SetValueLong(GroupName, "SeparatorsColor", *This\SeparatorsColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "OperatorsColor")
        *CustomPrefs\SetValueLong(GroupName, "OperatorsColor", *This\OperatorsColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "TypesColor")
        *CustomPrefs\SetValueLong(GroupName, "TypesColor", *This\TypesColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "ModulesColor")
        *CustomPrefs\SetValueLong(GroupName, "ModulesColor", *This\ModulesColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "PointersColor")
        *CustomPrefs\SetValueLong(GroupName, "PointersColor", *This\PointersColor)
      EndIf
      
      If *CustomPrefs\IsKey(GroupName, "KeywordsInBold")
        *CustomPrefs\SetValueInteger(GroupName, "KeywordsInBold", *This\KeywordsInBold)
      EndIf
      
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< BuiltKeywordList <<<<<
  
  Procedure.s BuiltKeywordList(*This.Private_Members)
    
    ForEach *This\Keywords()
      Result.s + *This\Keywords() + " "
    Next

    ProcedureReturn Trim(Result)
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< BuiltOpenFoldKeywordList <<<<<
  
  Procedure.s BuiltOpenFoldKeywordList(*This.Private_Members)
    
    ForEach *This\OpenFoldKeywords()
      Result.s + *This\OpenFoldKeywords() + " "
    Next
    
    ProcedureReturn Trim(Result)
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< BuiltCloseFoldKeywordList <<<<<
  
  Procedure.s BuiltCloseFoldKeywordList(*This.Private_Members)
    
    ForEach *This\CloseFoldKeywords()
      Result.s + *This\CloseFoldKeywords() + " "
    Next
    
    ProcedureReturn Trim(Result)
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
    
    *This\DefaultForeColor = RGB(255, 255, 255)
    *This\DefaultBackColor = RGB(000, 000, 000)
    *This\CaretForeColor = RGB(255, 255, 255)
    *This\CaretBackColor = RGB(000, 000, 000)
    *This\SelectionForeColor = RGB(255, 255, 255)
    *This\SelectionBackColor = RGB(125, 125, 125)
    *This\LineNumbersForeColor = RGB(000, 180, 180)
    *This\LineNumbersBackColor = RGB(000, 000, 000)
    *This\FoldMarginHiBackColor = RGB(000, 000, 000)
    *This\FoldMarginLoBackColor = RGB(000, 000, 000)
    *This\FoldMarkerForeColor = RGB(000, 180, 180)
    *This\FoldMarkerBackColor = RGB(000, 000, 000)
    *This\LineHighlightColor = RGB(000, 000, 000)
    *This\KeywordsColor = RGB(128, 128, 128)
    *This\CommentColor = RGB(000, 255, 000)
    *This\LiteralStringColor = RGB(147, 000, 255)
    *This\NumbersColor = RGB(255, 000, 164)
    *This\ConstantsColor = RGB(255, 128, 000)
    *This\ProceduresColor = RGB(000, 145, 145)
    *This\SeparatorsColor = RGB(255, 255, 000)
    *This\OperatorsColor = RGB(255, 255, 000)
    *This\TypesColor = RGB(255, 255, 255)
    *This\ModulesColor = RGB(255, 255, 255)
    *This\PointersColor = RGB(255, 255, 255)
    
    *This\Separators = "( ) [ ] { } , : . \"
    *This\Operators = "= + - * / % & | < >"
    *This\KeywordsInBold = #True
    
    AddElement(*This\Keywords())
    *This\Keywords() = "Debug"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "End"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "If"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "ElseIf"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "Else"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "EndIf"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "ForEach"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "For"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "To"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "Next"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "Step"
   
    AddElement(*This\Keywords())
    *This\Keywords() = "Protected"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "ProcedureReturn"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "Select"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "Case"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "EndSelect"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "Global"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "Declare"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "Static"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "Shared"
     
    AddElement(*This\Keywords())
    *This\Keywords() = "CompilerIf"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "CompilerEndIf"
   
    AddElement(*This\Keywords())
    *This\Keywords() = "Dim"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "ReDim"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "And"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "Or"
   
    AddElement(*This\Keywords())
    *This\Keywords() = "Not"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "NewList"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "NewMap"
   
    AddElement(*This\Keywords())
    *This\Keywords() = "Define"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "List"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "Map"
   
    AddElement(*This\Keywords())
    *This\Keywords() = "Array"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "Default"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "While"
   
    AddElement(*This\Keywords())
    *This\Keywords() = "Wend"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "Repeat"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "Until"
   
    AddElement(*This\Keywords())
    *This\Keywords() = "ForEver"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "Swap"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "CompilerCase"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "Data"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "Break"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "EnableDebugger"
    
    AddElement(*This\Keywords())
    *This\Keywords() = "DisableDebugger"    
    
    AddElement(*This\OpenFoldKeywords())
    *This\OpenFoldKeywords() = "Procedure"
    
    AddElement(*This\OpenFoldKeywords())
    *This\OpenFoldKeywords() = "ProcedureDLL"
    
    AddElement(*This\OpenFoldKeywords())
    *This\OpenFoldKeywords() = "ProcedureCDLL"
    
    AddElement(*This\OpenFoldKeywords())
    *This\OpenFoldKeywords() = "ProcedureC"
    
    AddElement(*This\OpenFoldKeywords())
    *This\OpenFoldKeywords() = "Macro"
    
    AddElement(*This\OpenFoldKeywords())
    *This\OpenFoldKeywords() = "DeclareModule"
    
    AddElement(*This\OpenFoldKeywords())
    *This\OpenFoldKeywords() = "Module"
    
    AddElement(*This\OpenFoldKeywords())
    *This\OpenFoldKeywords() = "Enumeration"
    
    AddElement(*This\OpenFoldKeywords())
    *This\OpenFoldKeywords() = "Structure"
    
    AddElement(*This\OpenFoldKeywords())
    *This\OpenFoldKeywords() = "CompilerSelect"
    
    AddElement(*This\OpenFoldKeywords())
    *This\OpenFoldKeywords() = "DataSection"
    
    AddElement(*This\OpenFoldKeywords())
    *This\OpenFoldKeywords() = "Interface"
    
    AddElement(*This\CloseFoldKeywords())
    *This\CloseFoldKeywords() = "EndProcedure"
    
    AddElement(*This\CloseFoldKeywords())
    *This\CloseFoldKeywords() = "EndMacro"
      
    AddElement(*This\CloseFoldKeywords())
    *This\CloseFoldKeywords() = "EndDeclareModule"
      
    AddElement(*This\CloseFoldKeywords())
    *This\CloseFoldKeywords() = "EndModule"
      
    AddElement(*This\CloseFoldKeywords())
    *This\CloseFoldKeywords() = "EndEnumeration"
    
    AddElement(*This\CloseFoldKeywords())
    *This\CloseFoldKeywords() = "EndStructure"
    
    AddElement(*This\CloseFoldKeywords())
    *This\CloseFoldKeywords() = "CompilerEndSelect"
    
    AddElement(*This\CloseFoldKeywords())
    *This\CloseFoldKeywords() = "EndDataSection"   
    
    AddElement(*This\CloseFoldKeywords())
    *This\CloseFoldKeywords() = "EndInterface" 
    
    ProcedureReturn *This
  EndProcedure

  DataSection
    START_METHODS:
    Data.i @GetDefaultForeColor()
    Data.i @GetDefaultBackColor()
    Data.i @GetCaretForeColor()
    Data.i @GetCaretBackColor()
    Data.i @GetSelectionForeColor()
    Data.i @GetSelectionBackColor()
    Data.i @GetLineNumbersForeColor()
    Data.i @GetLineNumbersBackColor()
    Data.i @GetFoldMarginHiBackColor()
    Data.i @GetFoldMarginLoBackColor()
    Data.i @GetFoldMarkerForeColor()
    Data.i @GetFoldMarkerBackColor()
    Data.i @GetLineHighlightColor()
    Data.i @GetKeywordsColor()
    Data.i @GetCommentColor()
    Data.i @GetLiteralStringColor()
    Data.i @GetNumbersColor()
    Data.i @GetConstantsColor()
    Data.i @GetProceduresColor()
    Data.i @GetSeparatorsColor()
    Data.i @GetOperatorsColor()
    Data.i @GetTypesColor()
    Data.i @GetModulesColor()
    Data.i @GetPointersColor()
    Data.i @GetSeparators()
    Data.i @GetOperators()
    Data.i @GetKeywordsInBold()
    Data.i @GetKeywords()
    Data.i @GetOpenFoldKeywords()
    Data.i @GetCloseFoldKeywords()
    Data.i @SetDefaultForeColor()
    Data.i @SetDefaultBackColor()
    Data.i @SetCaretForeColor()
    Data.i @SetCaretBackColor()
    Data.i @SetSelectionForeColor()
    Data.i @SetSelectionBackColor()
    Data.i @SetLineNumbersForeColor()
    Data.i @SetLineNumbersBackColor()
    Data.i @SetFoldMarginHiBackColor()
    Data.i @SetFoldMarginLoBackColor()
    Data.i @SetFoldMarkerForeColor()
    Data.i @SetFoldMarkerBackColor()
    Data.i @SetLineHighlightColor()
    Data.i @SetKeywordsColor()
    Data.i @SetCommentColor()
    Data.i @SetLiteralStringColor()
    Data.i @SetNumbersColor()
    Data.i @SetConstantsColor()
    Data.i @SetProceduresColor()
    Data.i @SetSeparatorsColor()
    Data.i @SetOperatorsColor()
    Data.i @SetTypesColor()
    Data.i @SetModulesColor()
    Data.i @SetPointersColor()
    Data.i @SetSeparators()
    Data.i @SetOperators()
    Data.i @SetKeywordsInBold()
    Data.i @SetKeywords()
    Data.i @SetOpenFoldKeywords()
    Data.i @SetCloseFoldKeywords()
    Data.i @AddPrefsGroup()
    Data.i @ExtractPrefsGroup()
    Data.i @RefreshPrefsGroup()
    Data.i @BuiltKeywordList()
    Data.i @BuiltOpenFoldKeywordList()
    Data.i @BuiltCloseFoldKeywordList()
    Data.i @Free()
    END_METHODS:
  EndDataSection

EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (556000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = PAAAAx-------
; EnableXP
; CompileSourceDirectory