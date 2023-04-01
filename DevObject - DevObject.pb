; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - DevObject.pb
; Version du fichier : 2.0.1
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 27-10-2019
; Mise à jour : 29-11-2022
; Code PureBasic : V6.00 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule DevObject

  Interface DevObject
    
    CreateWindow()
    EventManager()
    Shutdown()
    Free()

  EndInterface

  Declare.i New()

EndDeclareModule

Module DevObject
  
  #Version = " - V2.0.2"
  
  Enumeration
    
    #Panel
    
    #Text_Module_Name
    #String_Module_Name
    #ComboBox_License
    #Editor_Class_Members
    
    #Frame_Basic_Methods
    #CheckBox_Getters
    #CheckBox_Setters
    #CheckBox_Update
    #CheckBox_Reset
    #CheckBox_Clear
    #CheckBox_Access
    
    #Frame_Maths_Methods
    #CheckBox_Equal
    #CheckBox_Plus
    #CheckBox_Minus
    #CheckBox_Add
    #CheckBox_AddScaled
    #CheckBox_Subtract
    #CheckBox_Product
    #CheckBox_Divide
    #CheckBox_AddScalar
    #CheckBox_SubtractScalar
    #CheckBox_ProductByScalar
    #CheckBox_DivideByScalar
    #CheckBox_Lerp
    
    #Frame_Memory_Methods
    #CheckBox_Copy
    #CheckBox_Compare
    #CheckBox_Swapping
    
    #Frame_DynamicArray_Methods
    #CheckBox_DynamicArray_Sort
    #CheckBox_DynamicArray_LinearSearch
    #CheckBox_DynamicArray_BinarySearch    
    #CheckBox_DynamicArray_Randomize
    #CheckBox_DynamicArray_ReDimension
    #CheckBox_DynamicArray_Size
    
    #Frame_LinkedList_Methods
    #CheckBox_LinkedList_Sort
    #CheckBox_LinkedList_LinearSearch
    #CheckBox_LinkedList_BinarySearch
    #CheckBox_LinkedList_Randomize
    #CheckBox_LinkedList_Add
    #CheckBox_LinkedList_AddEx
    #CheckBox_LinkedList_Insert
    #CheckBox_LinkedList_InsertEx
    #CheckBox_LinkedList_Select
    #CheckBox_LinkedList_First
    #CheckBox_LinkedList_Last
    #CheckBox_LinkedList_Previous
    #CheckBox_LinkedList_Next
    #CheckBox_LinkedList_Delete
    #CheckBox_LinkedList_Reset
    #CheckBox_LinkedList_Clear
    #CheckBox_LinkedList_Index
    #CheckBox_LinkedList_Size
    #CheckBox_LinkedList_Merge
    
    #Frame_Map_Methods
    #CheckBox_Map_Add
    #CheckBox_Map_AddEx
    #CheckBox_Map_Clear
    #CheckBox_Map_Size
    #CheckBox_Map_Reset
    #CheckBox_Map_Delete
    #CheckBox_Map_Find
    #CheckBox_Map_Next
    #CheckBox_Map_Key
    
    #Frame_Static_Array
    #CheckBox_QuickSortAscending
    #CheckBox_QuickSortDescending
    #CheckBox_LinearSearch
    #CheckBox_BinarySearch
    #CheckBox_FixedLengthQueue
    
    #Frame_BinaryFile_Methods
    #CheckBox_ReadWriteBinary
    #CheckBox_CreateBinaryFile
    #CheckBox_OpenBinaryFile
    #CheckBox_ReadBinaryFile
    #CheckBox_AddBinaryFileFormatID
    
    #Frame_EncodedCryptedFile_Methods
    #CheckBox_ReadWriteEncodedCrypted
    #CheckBox_CreateEncodedCryptedFile
    #CheckBox_OpenEncodedCryptedFile
    #CheckBox_ReadEncodedCryptedFile
    #CheckBox_AddEncodedCryptedFileFormatID
    #ComboBox_EncodedCrypted_Files
    #Button_EncodedCrypted_Add_File
    #Button_EncodedCrypted_Remove_File
    
    #Frame_Preference_Methods
    #CheckBox_Preference_Group
    #CheckBox_Preference_File
    
    #Frame_XML_Methods
    #CheckBox_XML_Node_With_Childs
    #CheckBox_XML_Node_With_Attributes
    #CheckBox_XML_Add_Collect_Attributes
    #CheckBox_XML_Create_Load_File
    #CheckBox_XML_Catch_File
    
    #Frame_JSON_Methods
    #CheckBox_JSON_IE_Object
    #CheckBox_JSON_Save_Load_File
    #CheckBox_JSON_Catch_File
    
    #Frame_CustomPrefs_Methods
    #CheckBox_CustomPrefs_AE_Group
    #CheckBox_CustomPrefs_R_Group
    #CheckBox_CustomPrefs_File
    
    #Editor_Source_Code
    
    #ComboBox_Help
    #MarkDown_Help
    
    #Panel_Tools
    
    #ListIcon_Sources
    
    #Editor_GarbageCollector

    #Button_PushPin
    #Button_New
    #Button_Open
    #Button_Save
    #Button_Code
    #Button_Brush
    #Button_ClipBoard
    #Button_Language
    #Button_Options
    #Button_Quit
    
    #Panel_Options
    
    #Frame_Project_SavePath
    #String_Project_SavePath
    #Button_Browse_Project_SavePath
    
    #Frame_Source_SavePath
    #String_Source_SavePath
    #Button_Browse_Source_SavePath
    
    #Frame_Editor_Color
    #Text_Editor_FontName
    #Text_Editor_FontSize
    #String_Editor_FontName
    #String_Editor_FontSize
    #Button_Editor_FontSelect 
    
    #Frame_User
    #Text_User_Name
    #String_User_Name
    #Text_User_NickName
    #String_User_NickName
    #Text_User_Email
    #String_User_Email
    
    #Frame_Source_Formatting
    #Option_Use_NBSPACE_Tabulation
    #Option_Use_ASCII_Tabulation
    #TrackBar_Tabulation_Size
    #Text_Tabulation_Size
    
    #Frame_Date_Formatting
    #ComboBox_Date_Format
    #Button_Delete_Date_Mask
    #Button_Date_Format_Editor
    
    #Frame_Keyword_Bold
    #CheckBox_Keyword_Bold
    
    #Frame_Syntax_Colors
    #Scroll_Syntax_Colors
    
    #Text_DefaultForeColor
    #Text_DefaultBackColor
    #Text_CaretForeColor
    #Text_CaretBackColor
    #Text_SelectionForeColor
    #Text_SelectionBackColor
    #Text_LineNumbersForeColor
    #Text_LineNumbersBackColor
    #Text_FoldMarginHiBackColor
    #Text_FoldMarginLoBackColor
    #Text_FoldMarkerForeColor
    #Text_FoldMarkerBackColor
    #Text_LineHighlightColor
    #Text_KeywordsColor
    #Text_CommentColor
    #Text_LiteralStringColor
    #Text_NumbersColor
    #Text_ConstantsColor
    #Text_ProceduresColor
    #Text_SeperatorsColor
    #Text_OperatorsColor
    #Text_TypesColor
    #Text_ModulesColor
    #Text_PointersColor
    
    #PreviewColor_DefaultForeColor
    #PreviewColor_DefaultBackColor
    #PreviewColor_CaretForeColor
    #PreviewColor_CaretBackColor
    #PreviewColor_SelectionForeColor
    #PreviewColor_SelectionBackColor
    #PreviewColor_LineNumbersForeColor
    #PreviewColor_LineNumbersBackColor
    #PreviewColor_FoldMarginHiBackColor
    #PreviewColor_FoldMarginLoBackColor
    #PreviewColor_FoldMarkerForeColor
    #PreviewColor_FoldMarkerBackColor
    #PreviewColor_LineHighlightColor
    #PreviewColor_KeywordsColor
    #PreviewColor_CommentColor
    #PreviewColor_LiteralStringColor
    #PreviewColor_NumbersColor
    #PreviewColor_ConstantsColor
    #PreviewColor_ProceduresColor
    #PreviewColor_SeperatorsColor
    #PreviewColor_OperatorsColor
    #PreviewColor_TypesColor
    #PreviewColor_ModulesColor
    #PreviewColor_PointersColor
    
    #Frame_DynamicDataSizeType
    #ComboBox_DynamicDataSizeType
    
    #Frame_DisableEnableDebugger
    #Option_DontAddKeywords
    #Option_AddKeywordsAsComments
    #Option_AddKeywords
    
    
    #Button_Options_OK
    #Button_Options_CANCEL
    
    #Frm_Rate_Stats
    #Txt_BestRate
    #Str_BestRate
    #Txt_MeanRate
    #Str_MeanRate
    #Txt_WorstRate
    #Str_WorstRate
    #Txt_RateDeviation
    #Str_RateDeviation
    
    #Frm_Time_Stats
    #Txt_BestTime
    #Str_BestTime
    #Txt_MeanTime
    #Str_MeanTime
    #Txt_WorstTime
    #Str_WorstTime
    #Txt_TimeDeviation
    #Str_TimeDeviation
    
    #Txt_Stats_Data_Count
    
    #Frm_Time_Top5
    #Txt_Time_Top5_1
    #Str_Time_Top5_1
    #Txt_Time_Top5_2
    #Str_Time_Top5_2
    #Txt_Time_Top5_3
    #Str_Time_Top5_3
    #Txt_Time_Top5_4
    #Str_Time_Top5_4
    #Txt_Time_Top5_5
    #Str_Time_Top5_5
    
    #Frm_Rate_Top5
    #Txt_Rate_Top5_1
    #Str_Rate_Top5_1
    #Txt_Rate_Top5_2
    #Str_Rate_Top5_2
    #Txt_Rate_Top5_3
    #Str_Rate_Top5_3
    #Txt_Rate_Top5_4
    #Str_Rate_Top5_4
    #Txt_Rate_Top5_5
    #Str_Rate_Top5_5
    
    #Btn_Stats_Close
    
    #ShortCut_Stats_Windows
    
    #PopupMenu_Editor_Class_Members
    #PopupMenu_Editor_Class_Members_Paste
    
  EndEnumeration
  
  Enumeration 1
    
    #STYLES_COMMANDS
    #STYLES_COMMENTS
    #STYLES_LITERAL_STRINGS
    #STYLES_NUMBERS
    #STYLES_CONSTANTS
    #STYLES_FUNCTIONS
    #STYLES_SEPARATORS
    #STYLES_OPERATORS
    #STYLES_TYPES
    #STYLES_MODULES
    #STYLES_POINTERS
    
  EndEnumeration

  Structure Members

    VirtualTable.i
    Prefs.CustomPrefs::CustomPrefs
    StatsWindowCounter.b
    MainWin.Window::Window
    OptionWin.Window::Window
    StatsWin.Window::Window
    Language.Language::Language
    Sticky.Sticky::Sticky
    Options.Options::Options
    SyntaxHighlighting.SyntaxHighlighting::SyntaxHighlighting
    StringUtilities.StringUtilities::StringUtilities
    CodeGenerator.CodeGenerator::CodeGenerator
    Help.Help::Help
    Checker.Checker::Checker
    LicenseManager.LicenseManager::LicenseManager
    GarbageCollector.GarbageCollector::GarbageCollector
    
  EndStructure
  
  Procedure.i MyLineStyler(GadgetID, *utf8Buffer.ASCII, numUtf8Bytes, currentLine, startLine, originalEndLine)
    
    Protected result = GoScintilla::#STYLE_LINES_AS_REQUIRED, numBytesStyled, symbolJustStyled$, *ptrAscii.ASCII
    
    Static regexHEX
    Static regexBIN
    Static regexFunc
    Static regexFuncName
    Static regexType
    Static regexModuleType
    Static regexModule
    Static regexPointer
    
    If Not regexHEX
      
      ; Init search patterns
      #Highlight_Remove = -1
      #Highlight_None = 0
      #Highlight_Visible = 1
      #Highlight_End = 2
      
      regexHEX = CreateRegularExpression(#PB_Any, "^[$][0-9A-Fa-f]+")
      regexBIN = CreateRegularExpression(#PB_Any, "^[%][0-1]+")
      regexFunc = CreateRegularExpression(#PB_Any, "^[\w]+[$]?([.][\w]+)?(::)?([\w]+)?[(]")
      regexFuncName = CreateRegularExpression(#PB_Any, "^[\w]+[$]?")
      regexType = CreateRegularExpression(#PB_Any, "^[.][\w]*")
      regexModuleType = CreateRegularExpression(#PB_Any, "^[.]([\w]*)(::)([\w]*)")
      regexModule = CreateRegularExpression(#PB_Any, "^([\w]*)(::)")
      regexPointer = CreateRegularExpression(#PB_Any, "^[\*][\w]*")
      
    EndIf
    
    lineHighlighting = GoScintilla::GetLineData(GadgetID, currentLine-1)
    
    ;Need to loop through the UTF-8 buffer invoking GoScintilla's styling lexer as appropriate.
    While numUtf8Bytes
      Dim foundSymbol$(0)
      Select *utf8Buffer\a
        Case ';'
          ; search fold markers to update fold levels
          textToExamine$=LCase(PeekS(*utf8Buffer, numUtf8Bytes, #PB_UTF8))
          Select Left(textToExamine$, 2)
            Case ";{"
              GoScintilla::IncFoldLevel(GadgetID)
            Case ";}"
              GoScintilla::DecFoldLevel(GadgetID)
          EndSelect
          
        Case '.'
          ; search type
          textToExamine$ = LCase(PeekS(*utf8Buffer, numUtf8Bytes, #PB_UTF8))
          
          If ExtractRegularExpression(regexModuleType, textToExamine$, foundSymbol$())
            
            If ExamineRegularExpression(regexModuleType, foundSymbol$(0))
              ;apply separator style
              numBytesStyled = GoScintilla::StyleNextSymbol(GadgetID, *utf8Buffer, numUtf8Bytes)
              numUtf8Bytes-numBytesStyled
              *utf8Buffer+numBytesStyled
              
              ;apply Module style
              NextRegularExpressionMatch(regexModuleType)
              numBytesStyled = RegularExpressionGroupLength(regexModuleType, 1) + 1 - numBytesStyled
              ScintillaSendMessage(GadgetID, #SCI_SETSTYLING, numBytesStyled, #STYLES_MODULES)
              numUtf8Bytes-numBytesStyled
              *utf8Buffer+numBytesStyled
              
              ;apply separator style
              numBytesStyled = GoScintilla::StyleNextSymbol(GadgetID, *utf8Buffer, numUtf8Bytes)
              numUtf8Bytes-numBytesStyled
              *utf8Buffer+numBytesStyled
              
              ;apply separator style
              numBytesStyled = GoScintilla::StyleNextSymbol(GadgetID, *utf8Buffer, numUtf8Bytes)
              numUtf8Bytes-numBytesStyled
              *utf8Buffer+numBytesStyled
              
              numBytesStyled = RegularExpressionGroupLength(regexModuleType, 3) + 1 - numBytesStyled
              ScintillaSendMessage(GadgetID, #SCI_SETSTYLING, numBytesStyled, #STYLES_TYPES)
              numUtf8Bytes-numBytesStyled
              *utf8Buffer+numBytesStyled
              Continue
              
            EndIf
            
          ElseIf ExtractRegularExpression(regexType, textToExamine$, foundSymbol$())
            ;apply separator style
            numBytesStyled = GoScintilla::StyleNextSymbol(GadgetID, *utf8Buffer, numUtf8Bytes)
            numUtf8Bytes-numBytesStyled
            *utf8Buffer+numBytesStyled
            ;apply type style
            numBytesStyled=Len(foundSymbol$(0))-numBytesStyled
            Select LCase(foundSymbol$(0))
              Case ".a", ".b", ".c", ".d", ".f", ".i", ".l", ".q", ".s", ".u", ".w"
                ScintillaSendMessage(GadgetID, #SCI_SETSTYLING, numBytesStyled, 0)
              Default
                ScintillaSendMessage(GadgetID, #SCI_SETSTYLING, numBytesStyled, #STYLES_TYPES)
            EndSelect
            numUtf8Bytes-numBytesStyled
            *utf8Buffer+numBytesStyled
            Continue
          EndIf
         
        Case '$', '%'
          ; search BIN or HEX number
          textToExamine$ = LCase(PeekS(*utf8Buffer, numUtf8Bytes, #PB_UTF8))
          If ExtractRegularExpression(regexHEX, textToExamine$, foundSymbol$()) Or ExtractRegularExpression(regexBIN, textToExamine$, foundSymbol$())
            ;apply number style
            numBytesStyled = Len(foundSymbol$(0))
            ScintillaSendMessage(GadgetID, #SCI_SETSTYLING, numBytesStyled, #STYLES_NUMBERS)
            numUtf8Bytes-numBytesStyled
            *utf8Buffer+numBytesStyled
            Continue
          EndIf
          
          
        Case '_', 'a' To 'z', 'A' To 'Z'
          ; search function name
          textToExamine$ = LCase(PeekS(*utf8Buffer, numUtf8Bytes, #PB_UTF8))
          
          If MatchRegularExpression(regexModule, textToExamine$)
            If ExtractRegularExpression(regexModule, textToExamine$, foundSymbol$())
              ; apply Module style
              numBytesStyled = Len(foundSymbol$(0))-2
              ScintillaSendMessage(GadgetID, #SCI_SETSTYLING, numBytesStyled, #STYLES_MODULES)
              numUtf8Bytes-numBytesStyled
              *utf8Buffer+numBytesStyled
              
              ;apply separator style
              numBytesStyled = GoScintilla::StyleNextSymbol(GadgetID, *utf8Buffer, numUtf8Bytes)
              numUtf8Bytes-numBytesStyled
              *utf8Buffer+numBytesStyled
              
              ;apply separator style
              numBytesStyled = GoScintilla::StyleNextSymbol(GadgetID, *utf8Buffer, numUtf8Bytes)
              numUtf8Bytes-numBytesStyled
              *utf8Buffer+numBytesStyled
              Continue
            EndIf
          EndIf
          
          If MatchRegularExpression(regexFunc, textToExamine$)
            If ExtractRegularExpression(regexFuncName, textToExamine$, foundSymbol$())
              ;apply function style
              numBytesStyled = Len(foundSymbol$(0))
              ScintillaSendMessage(GadgetID, #SCI_SETSTYLING, numBytesStyled, #STYLES_FUNCTIONS)
              numUtf8Bytes-numBytesStyled
              *utf8Buffer+numBytesStyled
              Continue
            EndIf
          EndIf
          
        Case '*'
          ; search pointer name
          textToExamine$ = LCase(PeekS(*utf8Buffer, numUtf8Bytes, #PB_UTF8))
          If MatchRegularExpression(regexPointer, textToExamine$)
            If ExtractRegularExpression(regexPointer, textToExamine$, foundSymbol$())
              ;apply function style
              numBytesStyled = Len(foundSymbol$(0))
              ScintillaSendMessage(GadgetID, #SCI_SETSTYLING, numBytesStyled, #STYLES_POINTERS)
              numUtf8Bytes-numBytesStyled
              *utf8Buffer+numBytesStyled
              Continue
            EndIf
          EndIf
          
      EndSelect
      
      numBytesStyled = GoScintilla::StyleNextSymbol(GadgetID, *utf8Buffer, numUtf8Bytes)
      symbolJustStyled$ = LCase(PeekS(*utf8Buffer, numBytesStyled, #PB_UTF8))
      
      If symbolJustStyled$="procedure"
        lineHighlighting=#Highlight_Visible
      ElseIf symbolJustStyled$="endprocedure"
        If lineHighlighting=#Highlight_Visible
          lineHighlighting=#Highlight_End
        Else
          lineHighlighting=#Highlight_Remove
        EndIf
      EndIf
      
      numUtf8Bytes-numBytesStyled
      *utf8Buffer+numBytesStyled
      
    Wend
    
    If GoScintilla::GetLineData(GadgetID, currentLine) <> lineHighlighting
      
      Select lineHighlighting
          
        Case #Highlight_Visible
          GoScintilla::SetLineData(GadgetID, currentLine, #Highlight_Visible)
          GoScintilla::SetLineHighlighted(GadgetID,currentLine, 1)
          
        Case #Highlight_End
          GoScintilla::SetLineData(GadgetID, currentLine, #Highlight_None)
          GoScintilla::SetLineHighlighted(GadgetID, currentLine, 1)
          
        Case #Highlight_None, #Highlight_Remove
          GoScintilla::SetLineData(GadgetID, currentLine, #Highlight_None)
          GoScintilla::SetLineHighlighted(GadgetID, currentLine, 0)
          
      EndSelect
      
      result = GoScintilla::#STYLE_NEXT_LINE_REGARDLESS
      
    EndIf
    
    FreeArray(foundSymbol$())
    
    ProcedureReturn result
  EndProcedure
  
  Procedure GoScintillaSetup(*This.Members, EditorID, FullSetup.i = #True)
    
    ;Set the padding added to the width of the line-number margin.
    GoScintilla::SetAttribute(EditorID,  GoScintilla::#LINE_NUMBER_AUTOSIZE_PADDING, 10)
    GoScintilla::SetMarginWidth(EditorID,  GoScintilla::#MARGIN_FOLDING_SYMBOLS, 14)
    GoScintilla::SetFont(EditorID, *This\Options\GetFontName(), *This\Options\GetFontSize())
    
    *Comments.Comments::Comments = *This\CodeGenerator\GetComments()
    
    If *Comments\GetTabOption() = 0
      GoScintilla::SetTabs(EditorID, *Comments\GetTabSize(), #True)
    Else
      GoScintilla::SetTabs(EditorID, *Comments\GetTabSize(), #False)
    EndIf
    
    ;Set colors of text area
    GoScintilla::SetColor(EditorID, GoScintilla::#FORE_COLOR, *This\SyntaxHighlighting\GetDefaultForeColor())
    GoScintilla::SetColor(EditorID, GoScintilla::#BACK_COLOR, *This\SyntaxHighlighting\GetDefaultBackColor())
    
    ;Set colors of caret (caret color and the back color of the line containing the caret)
    GoScintilla::SetColor(EditorID, GoScintilla::#CARET_FORE_COLOR, *This\SyntaxHighlighting\GetCaretForeColor())
    GoScintilla::SetColor(EditorID, GoScintilla::#CARET_LINE_BACK_COLOR, *This\SyntaxHighlighting\GetCaretBackColor())
    
    ;Set colors of selection
    GoScintilla::SetColor(EditorID, GoScintilla::#SELECTION_BACK_COLOR, *This\SyntaxHighlighting\GetSelectionBackColor())
    GoScintilla::SetColor(EditorID, GoScintilla::#SELECTION_FORE_COLOR, *This\SyntaxHighlighting\GetSelectionForeColor())
    
    ;Set colors of line margin
    GoScintilla::SetColor(EditorID, GoScintilla::#LINE_NUMBER_FORE_COLOR, *This\SyntaxHighlighting\GetLineNumbersForeColor())
    GoScintilla::SetColor(EditorID, GoScintilla::#LINE_NUMBER_BACK_COLOR, *This\SyntaxHighlighting\GetLineNumbersBackColor())
    
    ;Set colors of fold margin
    GoScintilla::SetColor(EditorID, GoScintilla::#FOLD_MARGIN_HI_BACK_COLOR, *This\SyntaxHighlighting\GetFoldMarginHiBackColor())
    GoScintilla::SetColor(EditorID, GoScintilla::#FOLD_MARGIN_LO_BACK_COLOR, *This\SyntaxHighlighting\GetFoldMarginLoBackColor())
    
    ;Set colors of fold markers
    GoScintilla::SetColor(EditorID, GoScintilla::#FOLD_MARKERS_FORE_COLOR, *This\SyntaxHighlighting\GetFoldMarkerForeColor())
    GoScintilla::SetColor(EditorID, GoScintilla::#FOLD_MARKERS_BACK_COLOR, *This\SyntaxHighlighting\GetFoldMarkerBackColor())
    
    GoScintilla::SetLineHighlightColor(EditorID, *This\SyntaxHighlighting\GetLineHighlightColor())
    
    If *This\SyntaxHighlighting\GetKeywordsInBold() = #True
      GoScintilla::SetStyleFont(EditorID, #STYLES_COMMANDS, "", -1, #PB_Font_Bold)
    EndIf
    
    GoScintilla::SetStyleColors(EditorID, #STYLES_COMMANDS, *This\SyntaxHighlighting\GetKeywordsColor())
    GoScintilla::SetStyleColors(EditorID, #STYLES_COMMENTS, *This\SyntaxHighlighting\GetCommentColor()) 
    GoScintilla::SetStyleColors(EditorID, #STYLES_LITERAL_STRINGS, *This\SyntaxHighlighting\GetLiteralStringColor()) 
    GoScintilla::SetStyleColors(EditorID, #STYLES_NUMBERS, *This\SyntaxHighlighting\GetNumbersColor())
    GoScintilla::SetStyleColors(EditorID, #STYLES_CONSTANTS, *This\SyntaxHighlighting\GetConstantsColor()) 
    GoScintilla::SetStyleColors(EditorID, #STYLES_FUNCTIONS, *This\SyntaxHighlighting\GetProceduresColor())
    GoScintilla::SetStyleColors(EditorID, #STYLES_SEPARATORS, *This\SyntaxHighlighting\GetSeparatorsColor())
    GoScintilla::SetStyleColors(EditorID, #STYLES_OPERATORS, *This\SyntaxHighlighting\GetOperatorsColor())
    GoScintilla::SetStyleColors(EditorID, #STYLES_TYPES, *This\SyntaxHighlighting\GetTypesColor())
    GoScintilla::SetStyleColors(EditorID, #STYLES_MODULES, *This\SyntaxHighlighting\GetModulesColor())
    GoScintilla::SetStyleColors(EditorID, #STYLES_POINTERS, *This\SyntaxHighlighting\GetPointersColor())
    
    If FullSetup = #True
      
      ;Set delimiters and keywords for our syntax highlighting.
      ;========================================================
      ;Delimiters.
      ;First set up a ; symbol to denote a comment.
      GoScintilla::AddDelimiter(EditorID, ";", "", GoScintilla::#DELIMIT_TO_END_OF_LINE, #STYLES_COMMENTS)
      ;Now set up quotes to denote literal strings.
      GoScintilla::AddDelimiter(EditorID, Chr(34), Chr(34), GoScintilla::#DELIMIT_BETWEEN, #STYLES_LITERAL_STRINGS)
      ;Now set up a # symbol to denote a constant.
      GoScintilla::AddDelimiter(EditorID, "#", "", GoScintilla::#LEFT_DELIMIT_WITHOUT_WHITESPACE, #STYLES_CONSTANTS)
      
      ;Basic command keywords.
      GoScintilla::AddKeywords(EditorID, *This\SyntaxHighlighting\BuiltKeywordList(), #STYLES_COMMANDS)
      
      ;Add some folding keywords.
      GoScintilla::AddKeywords(EditorID, *This\SyntaxHighlighting\BuiltOpenFoldKeywordList(), #STYLES_COMMANDS, GoScintilla::#OPEN_FOLD_KEYWORD)
      GoScintilla::AddKeywords(EditorID, *This\SyntaxHighlighting\BuiltCloseFoldKeywordList(), #STYLES_COMMANDS, GoScintilla::#CLOSE_FOLD_KEYWORD)
      
      ;Add separator keywords
      GoScintilla::AddKeywords(EditorID, *This\SyntaxHighlighting\GetSeparators(), #STYLES_SEPARATORS)
      
      ;Add operator keywords
      GoScintilla::AddKeywords(EditorID, *This\SyntaxHighlighting\GetOperators(), #STYLES_OPERATORS)
      
      ;Additional lexer options.
      ;=========================
      ;The lexer needs to know what separator characters we are using.
      GoScintilla::SetLexerOption(EditorID,  GoScintilla::#LEXER_OPTION_SEPARATOR_SYMBOLS, @"=+-*/%&|<>(){}[],.:\")
      ;We can also set a style for numbers.
      GoScintilla::SetLexerOption(EditorID,  GoScintilla::#LEXER_OPTION_NUMBERS_STYLE_INDEX, #STYLES_NUMBERS)
      
      ;Set our user-defined line styling function.
      ;===========================================
      GoScintilla::SetLineStylingFunction(EditorID,  @MyLineStyler())
      
    EndIf
    
  EndProcedure
  
  Procedure SelectComboBoxGadgetItem(ComboBoxGadget, ItemText.s)
    
    FoundAtItemID = -1
    
    ItemMax = CountGadgetItems(ComboBoxGadget) - 1
    
    For ItemID = 0 To ItemMax
      
      If GetGadgetItemText(ComboBoxGadget, ItemID) = ItemText
        SetGadgetState(ComboBoxGadget, ItemID)
        FoundAtItemID = ItemID
        Break
      EndIf
      
    Next
    
    If FoundAtItemID = -1
      SetGadgetState(ComboBoxGadget, 0)
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< PastedCodeCleanUp (Private) <<<<<
  
  Procedure PastedCodeCleanUp(*This.Members, GadgetID)
    
    *Comments.Comments::Comments = *This\CodeGenerator\GetComments()
    
    Code.s = GoScintilla::GetText(GadgetID)
    GoScintilla::ClearText(GadgetID)
    
    LineMax = CountString(Code, *Comments\LineFeed()) + 1
    
    For LineID = 1 To LineMax
      
      Field.s = Trim(RemoveString(StringField(Code, LineID, *Comments\LineFeed()), Chr(9)))
      
      If Field <> ""
        
        If LineID = LineMax
          GoScintilla::AppendText(GadgetID, Field)
        Else
          GoScintilla::AppendText(GadgetID, Field + *Comments\LineFeed())
        EndIf
        
      EndIf
      
    Next 
    
  EndProcedure
  
  Procedure Language_To_GUI(*This.Members)
    
    *This\MainWin\SetTitle(*This\Language\Message("Dev-Object") + #Version)
    
    SetGadgetItemText(#Panel, 0, *This\Language\Message("Object"))
    SetGadgetItemText(#Panel, 1, *This\Language\Message("Methods") + " 1")    
    SetGadgetItemText(#Panel, 2, *This\Language\Message("Methods") + " 2")   
    SetGadgetItemText(#Panel, 3, *This\Language\Message("Source"))
    SetGadgetItemText(#Panel, 4, *This\Language\Message("Help"))
    SetGadgetItemText(#Panel, 5, *This\Language\Message("Tools"))
    
    SetGadgetItemText(#Panel_Tools, 0, *This\Language\Message("Sanity Checker"))
    SetGadgetItemText(#Panel_Tools, 1, *This\Language\Message("Garbage Collector"))
    
    SetGadgetText(#Text_Module_Name, *This\Language\Message("Object name") + " :")
    
    SetGadgetText(#Frame_Basic_Methods, *This\Language\Message("Basic Methods"))
    SetGadgetText(#CheckBox_Getters, *This\Language\Message("Getters"))
    SetGadgetText(#CheckBox_Setters, *This\Language\Message("Setters"))
    SetGadgetText(#CheckBox_Update, *This\Language\Message("Update"))
    SetGadgetText(#CheckBox_Reset, *This\Language\Message("Reset"))
    SetGadgetText(#CheckBox_Clear, *This\Language\Message("Clear"))
    SetGadgetText(#CheckBox_Access, *This\Language\Message("Access"))
    
    SetGadgetText(#Frame_Maths_Methods, *This\Language\Message("Mathematic Operators"))  
    SetGadgetText(#CheckBox_Equal, *This\Language\Message("Equal"))
    SetGadgetText(#CheckBox_Plus, *This\Language\Message("Plus")) 
    SetGadgetText(#CheckBox_Minus, *This\Language\Message("Minus")) 
    SetGadgetText(#CheckBox_Add, *This\Language\Message("Add")) 
    SetGadgetText(#CheckBox_AddScaled, *This\Language\Message("Add Scaled")) 
    SetGadgetText(#CheckBox_Subtract, *This\Language\Message("Subtract")) 
    SetGadgetText(#CheckBox_Product, *This\Language\Message("Product"))
    SetGadgetText(#CheckBox_Divide, *This\Language\Message("Divide")) 
    SetGadgetText(#CheckBox_AddScalar, *This\Language\Message("Add Scalar")) 
    SetGadgetText(#CheckBox_SubtractScalar, *This\Language\Message("Subtract Scalar")) 
    SetGadgetText(#CheckBox_ProductByScalar, *This\Language\Message("Product by Scalar")) 
    SetGadgetText(#CheckBox_DivideByScalar, *This\Language\Message("Divide by Scalar"))
    SetGadgetText(#CheckBox_Lerp, *This\Language\Message("Linear Interpolation"))
    
    SetGadgetText(#Frame_Memory_Methods, *This\Language\Message("Memory Operators"))  
    SetGadgetText(#CheckBox_Copy, *This\Language\Message("Copy")) 
    SetGadgetText(#CheckBox_Compare, *This\Language\Message("Compare"))
    SetGadgetText(#CheckBox_Swapping, *This\Language\Message("Swapping"))
    
    SetGadgetText(#Frame_DynamicArray_Methods, *This\Language\Message("Dynamic Array Operators"))
    SetGadgetText(#CheckBox_DynamicArray_Sort, *This\Language\Message("Sort"))
    SetGadgetText(#CheckBox_DynamicArray_LinearSearch, *This\Language\Message("Linear Search"))
    SetGadgetText(#CheckBox_DynamicArray_BinarySearch, *This\Language\Message("Binary Search"))    
    SetGadgetText(#CheckBox_DynamicArray_Randomize, *This\Language\Message("Randomize"))
    SetGadgetText(#CheckBox_DynamicArray_ReDimension, *This\Language\Message("Re-Dimension"))
    SetGadgetText(#CheckBox_DynamicArray_Size, *This\Language\Message("Size"))
    
    SetGadgetText(#Frame_LinkedList_Methods, *This\Language\Message("Linked List Operators"))
    SetGadgetText(#CheckBox_LinkedList_Sort, *This\Language\Message("Sort"))
    SetGadgetText(#CheckBox_LinkedList_LinearSearch, *This\Language\Message("Linear Search"))
    SetGadgetText(#CheckBox_LinkedList_BinarySearch, *This\Language\Message("Binary Search"))
    SetGadgetText(#CheckBox_LinkedList_Randomize, *This\Language\Message("Randomize"))
    SetGadgetText(#CheckBox_LinkedList_Add, *This\Language\Message("Add Element"))
    SetGadgetText(#CheckBox_LinkedList_AddEx, *This\Language\Message("Add Element Ex"))
    SetGadgetText(#CheckBox_LinkedList_Insert, *This\Language\Message("Insert Element"))
    SetGadgetText(#CheckBox_LinkedList_InsertEx, *This\Language\Message("Insert Element Ex"))
    SetGadgetText(#CheckBox_LinkedList_Select, *This\Language\Message("Select Element"))
    SetGadgetText(#CheckBox_LinkedList_First, *This\Language\Message("First Element"))
    SetGadgetText(#CheckBox_LinkedList_Last, *This\Language\Message("Last Element"))
    SetGadgetText(#CheckBox_LinkedList_Previous, *This\Language\Message("Previous Element"))
    SetGadgetText(#CheckBox_LinkedList_Next, *This\Language\Message("Next Element"))
    SetGadgetText(#CheckBox_LinkedList_Delete, *This\Language\Message("Delete Element"))
    SetGadgetText(#CheckBox_LinkedList_Reset, *This\Language\Message("Reset"))
    SetGadgetText(#CheckBox_LinkedList_Clear, *This\Language\Message("Clear"))
    SetGadgetText(#CheckBox_LinkedList_Index, *This\Language\Message("Index"))
    SetGadgetText(#CheckBox_LinkedList_Size, *This\Language\Message("Size"))
    SetGadgetText(#CheckBox_LinkedList_Merge, *This\Language\Message("Merge"))
    
    SetGadgetText(#Frame_Map_Methods, *This\Language\Message("Map Operators"))
    SetGadgetText(#CheckBox_Map_Add, *This\Language\Message("Add Element"))
    SetGadgetText(#CheckBox_Map_AddEx, *This\Language\Message("Add Element Ex"))
    SetGadgetText(#CheckBox_Map_Clear, *This\Language\Message("Clear"))
    SetGadgetText(#CheckBox_Map_Size, *This\Language\Message("Size"))
    SetGadgetText(#CheckBox_Map_Reset, *This\Language\Message("Reset"))
    SetGadgetText(#CheckBox_Map_Delete, *This\Language\Message("Delete Element"))
    SetGadgetText(#CheckBox_Map_Find, *This\Language\Message("Find Element"))
    SetGadgetText(#CheckBox_Map_Next, *This\Language\Message("Next Element"))
    SetGadgetText(#CheckBox_Map_Key, *This\Language\Message("Key"))
    
    SetGadgetText(#Frame_Static_Array, *This\Language\Message("Static Array Operators"))
    SetGadgetText(#CheckBox_QuickSortAscending, *This\Language\Message("QuickSort Ascending"))
    SetGadgetText(#CheckBox_QuickSortDescending, *This\Language\Message("QuickSort Descending"))
    SetGadgetText(#CheckBox_LinearSearch, *This\Language\Message("Linear Search"))
    SetGadgetText(#CheckBox_BinarySearch, *This\Language\Message("Binary Search"))
    SetGadgetText(#CheckBox_FixedLengthQueue, *This\Language\Message("Fixed Queue"))

    SetGadgetText(#Frame_BinaryFile_Methods, *This\Language\Message("Binary File"))
    SetGadgetText(#CheckBox_ReadWriteBinary, *This\Language\Message("Read and Write on file"))
    SetGadgetText(#CheckBox_CreateBinaryFile, *This\Language\Message("Create File"))
    SetGadgetText(#CheckBox_OpenBinaryFile, *This\Language\Message("Open File"))
    SetGadgetText(#CheckBox_ReadBinaryFile, *This\Language\Message("Read File"))
    SetGadgetText(#CheckBox_AddBinaryFileFormatID, *This\Language\Message("Add FileFormatID"))
      
    SetGadgetText(#Frame_EncodedCryptedFile_Methods, *This\Language\Message("Encoded/Encrypted File"))
    SetGadgetText(#CheckBox_ReadWriteEncodedCrypted, *This\Language\Message("Read and Write on file"))
    SetGadgetText(#CheckBox_CreateEncodedCryptedFile, *This\Language\Message("Create File"))
    SetGadgetText(#CheckBox_OpenEncodedCryptedFile, *This\Language\Message("Open File"))
    SetGadgetText(#CheckBox_ReadEncodedCryptedFile, *This\Language\Message("Read File"))
    SetGadgetText(#CheckBox_AddEncodedCryptedFileFormatID, *This\Language\Message("Add FileFormatID"))
    SetGadgetText(#Button_EncodedCrypted_Add_File, "+")
    SetGadgetText(#Button_EncodedCrypted_Remove_File, "-")
    
    SetGadgetText(#Frame_Preference_Methods, *This\Language\Message("Preferences File"))
    SetGadgetText(#CheckBox_Preference_Group, *This\Language\Message("Read/Write group"))
    SetGadgetText(#CheckBox_Preference_File, *This\Language\Message("Create/Open file"))
    
    SetGadgetText(#Frame_XML_Methods, *This\Language\Message("XML File"))
    SetGadgetText(#CheckBox_XML_Node_With_Childs, *This\Language\Message("Node with child nodes"))
    SetGadgetText(#CheckBox_XML_Node_With_Attributes, *This\Language\Message("Node with attributes"))
    SetGadgetText(#CheckBox_XML_Add_Collect_Attributes, *This\Language\Message("Add/Collect attributes"))
    SetGadgetText(#CheckBox_XML_Create_Load_File, *This\Language\Message("Create/Load File"))
    SetGadgetText(#CheckBox_XML_Catch_File, *This\Language\Message("Catch File"))
    
    SetGadgetText(#Frame_JSON_Methods, *This\Language\Message("JSON File"))
    SetGadgetText(#CheckBox_JSON_IE_Object, *This\Language\Message("Insert/Extract object"))
    SetGadgetText(#CheckBox_JSON_Save_Load_File, *This\Language\Message("SaveOn/LoadFrom File"))
    SetGadgetText(#CheckBox_JSON_Catch_File, *This\Language\Message("Catch File"))
    
    SetGadgetText(#Frame_CustomPrefs_Methods, *This\Language\Message("Custom Prefs File"))
    SetGadgetText(#CheckBox_CustomPrefs_AE_Group, *This\Language\Message("Add/Extract Group"))
    SetGadgetText(#CheckBox_CustomPrefs_R_Group, *This\Language\Message("Refresh Group"))
    SetGadgetText(#CheckBox_CustomPrefs_File, *This\Language\Message("SaveOn/LoadFrom File"))
      
    SetGadgetItemText(#ListIcon_Sources, -1, *This\Language\Message("File Name"), 0)
    SetGadgetItemText(#ListIcon_Sources, -1, *This\Language\Message("State"), 1)
     
    GadgetToolTip(#Button_PushPin, *This\Language\Message("Always on top"))
    GadgetToolTip(#Button_New, *This\Language\Message("New"))
    GadgetToolTip(#Button_Open, *This\Language\Message("Open"))
    GadgetToolTip(#Button_Save, *This\Language\Message("Save"))
    GadgetToolTip(#Button_Code, *This\Language\Message("Generate code"))
    GadgetToolTip(#Button_Brush, *This\Language\Message("Code cleanup"))
    GadgetToolTip(#Button_ClipBoard, *This\Language\Message("Send to Clipboard"))
    GadgetToolTip(#Button_Language, *This\Language\Message("Language Requester"))
    GadgetToolTip(#Button_Options, *This\Language\Message("Options"))
    GadgetToolTip(#Button_Quit, *This\Language\Message("Quit"))
    
    If IsMenu(#PopupMenu_Editor_Class_Members)
      FreeMenu(#PopupMenu_Editor_Class_Members)
    EndIf
    
    If CreatePopupMenu(#PopupMenu_Editor_Class_Members) 
      MenuItem(#PopupMenu_Editor_Class_Members_Paste, *This\Language\Message("Paste") + Chr(9) + "Ctrl+V")
    EndIf
    
    ClearGadgetItems(#ComboBox_License)
    
    AddGadgetItem(#ComboBox_License, -1, *This\Language\Message("No licence"))
    
    *This\LicenseManager\ResetAvailableLicenses()
    
    While *This\LicenseManager\NextAvailableLicenses()
      *CurrentLicenseContent.LicenseContent::LicenseContent = *This\LicenseManager\GetAvailableLicenses()
      AddGadgetItem(#ComboBox_License, -1, StringField(*CurrentLicenseContent\GetFileName(), 1, "."))
    Wend
    
    SetGadgetState(#ComboBox_License, 0)

    *DateFormatting.DateFormatting::DateFormatting = *This\CodeGenerator\GetDateFormatting()
    
    *DateFormatting\SetMonth(00, *This\Language\Message("Jan"), *This\Language\Message("January"))
    *DateFormatting\SetMonth(01, *This\Language\Message("Feb"), *This\Language\Message("February"))
    *DateFormatting\SetMonth(02, *This\Language\Message("Mar"), *This\Language\Message("March"))
    *DateFormatting\SetMonth(03, *This\Language\Message("Apr"), *This\Language\Message("April"))
    *DateFormatting\SetMonth(04, *This\Language\Message("May"), *This\Language\Message("May"))
    *DateFormatting\SetMonth(05, *This\Language\Message("Jun"), *This\Language\Message("June"))
    *DateFormatting\SetMonth(06, *This\Language\Message("Jul"), *This\Language\Message("July"))
    *DateFormatting\SetMonth(07, *This\Language\Message("Aug"), *This\Language\Message("August"))
    *DateFormatting\SetMonth(08, *This\Language\Message("Sep"), *This\Language\Message("September"))
    *DateFormatting\SetMonth(09, *This\Language\Message("Oct"), *This\Language\Message("October"))
    *DateFormatting\SetMonth(10, *This\Language\Message("Nov"), *This\Language\Message("November"))
    *DateFormatting\SetMonth(11, *This\Language\Message("Dec"), *This\Language\Message("December"))
    
    *DateFormatting\SetDay(00, *This\Language\Message("Sun"), *This\Language\Message("Sunday"))
    *DateFormatting\SetDay(01, *This\Language\Message("Mon"), *This\Language\Message("Monday"))
    *DateFormatting\SetDay(02, *This\Language\Message("Tue"), *This\Language\Message("Tuesday"))
    *DateFormatting\SetDay(03, *This\Language\Message("Wed"), *This\Language\Message("Wednesday"))
    *DateFormatting\SetDay(04, *This\Language\Message("Thu"), *This\Language\Message("Thursday"))
    *DateFormatting\SetDay(05, *This\Language\Message("Fri"), *This\Language\Message("Friday"))
    *DateFormatting\SetDay(06, *This\Language\Message("Sat"), *This\Language\Message("Saturday"))
    
    *DateFormatting\SetOrdinal(*This\Language\Message("st:1,21,31|nd:2,22|rd:3,23|th:x"))
    
    *Comments.Comments::Comments = *This\CodeGenerator\GetComments()
    *Comments\RefreshHeader(*This\Language)
    
  EndProcedure
  
  Procedure.i From_GUI(*This.Members)
    
    *This\CodeGenerator\Reset()
    
    If Trim(GetGadgetText(#String_Module_Name)) = ""
      MessageRequester(*This\Language\Message("Dev-Object - Error"), *This\Language\Message("The Object name is missing !"))
      ProcedureReturn #False
    EndIf
    
    *Comments.Comments::Comments = *This\CodeGenerator\GetComments()
    
    If *Comments\DateMaskSize() = 0
      MessageRequester(*This\Language\Message("Dev-Object - Error"), *This\Language\Message("No Date Mask !"))
      ProcedureReturn #False
    EndIf
    
    *Class.Class::Class = *This\CodeGenerator\GetClass()
    *Class\SetName(Trim(GetGadgetText(#String_Module_Name)))
    *FoolProofer.FoolProofer::FoolProofer = *This\StringUtilities\GetFoolProofer()
    
    PastedCodeCleanUp(*This, #Editor_Class_Members)
    
    Content.s = GoScintilla::GetText(#Editor_Class_Members)
    Field_Max = CountString(Content, *Comments\LineFeed()) + 1
    
    For FieldID = 1 To Field_Max
      
      Description.s = StringField(Content, FieldID, *Comments\LineFeed())
      
      If Description <> ""
        
        If *FoolProofer\IsItValidDescription(Description)
          *Class\AddMember(Description)
        Else
          ErrorMessage.s = ReplaceString(*This\Language\Message("The member %DESC% is invalid ! By the way Structured members are not supported yet !"), "%DESC%", Description)
          MessageRequester(*This\Language\Message("Dev-Object - Error"), ErrorMessage)
          ProcedureReturn #False
        EndIf
        
      EndIf
      
    Next
    
    *BasicMethods.BasicMethods::BasicMethods = *This\CodeGenerator\GetBasicMethods()
    
    *BasicMethods\SetGetters(GetGadgetState(#CheckBox_Getters))
    *BasicMethods\SetSetters(GetGadgetState(#CheckBox_Setters))
    *BasicMethods\SetUpdate(GetGadgetState(#CheckBox_Update))
    *BasicMethods\SetReset(GetGadgetState(#CheckBox_Reset))
    *BasicMethods\SetClear(GetGadgetState(#CheckBox_Clear))
    *BasicMethods\SetAccess(GetGadgetState(#CheckBox_Access))
    
    *MathsMethods.MathsMethods::MathsMethods = *This\CodeGenerator\GetMathsMethods()
    
    *MathsMethods\SetEqual(GetGadgetState(#CheckBox_Equal))
    *MathsMethods\SetPlus(GetGadgetState(#CheckBox_Plus))
    *MathsMethods\SetMinus(GetGadgetState(#CheckBox_Minus))
    *MathsMethods\SetAdd(GetGadgetState(#CheckBox_Add))
    *MathsMethods\SetAddScaled(GetGadgetState(#CheckBox_AddScaled))
    *MathsMethods\SetSubtract(GetGadgetState(#CheckBox_Subtract))
    *MathsMethods\SetProduct(GetGadgetState(#CheckBox_Product))
    *MathsMethods\SetDivide(GetGadgetState(#CheckBox_Divide))
    *MathsMethods\SetAddScalar(GetGadgetState(#CheckBox_AddScalar))
    *MathsMethods\SetSubtractScalar(GetGadgetState(#CheckBox_SubtractScalar))
    *MathsMethods\SetProductByScalar(GetGadgetState(#CheckBox_ProductByScalar))
    *MathsMethods\SetDivideByScalar(GetGadgetState(#CheckBox_DivideByScalar))
    *MathsMethods\SetLerp(GetGadgetState(#CheckBox_Lerp))
    
    *MemoryMethods.MemoryMethods::MemoryMethods = *This\CodeGenerator\GetMemoryMethods()
    
    *MemoryMethods\SetCopy(GetGadgetState(#CheckBox_Copy))
    *MemoryMethods\SetCompare(GetGadgetState(#CheckBox_Compare))
    *MemoryMethods\SetSwapping(GetGadgetState(#CheckBox_Swapping))
    
    *DynamicArrayMethods.DynamicArrayMethods::DynamicArrayMethods = *This\CodeGenerator\GetDynamicArrayMethods()
    
    *DynamicArrayMethods\SetSort(GetGadgetState(#CheckBox_DynamicArray_Sort))
    *DynamicArrayMethods\SetLinearSearch(GetGadgetState(#CheckBox_DynamicArray_LinearSearch))
    *DynamicArrayMethods\SetBinarySearch(GetGadgetState(#CheckBox_DynamicArray_BinarySearch))
    *DynamicArrayMethods\SetRandomize(GetGadgetState(#CheckBox_DynamicArray_Randomize))
    *DynamicArrayMethods\SetReDimension(GetGadgetState(#CheckBox_DynamicArray_ReDimension))
    *DynamicArrayMethods\SetSize(GetGadgetState(#CheckBox_DynamicArray_Size))
    
    *LinkedListMethods.LinkedListMethods::LinkedListMethods = *This\CodeGenerator\GetLinkedListMethods()   
    
    *LinkedListMethods\SetSort(GetGadgetState(#CheckBox_LinkedList_Sort))
    *LinkedListMethods\SetLinearSearch(GetGadgetState(#CheckBox_LinkedList_LinearSearch))
    *LinkedListMethods\SetBinarySearch(GetGadgetState(#CheckBox_LinkedList_BinarySearch))
    *LinkedListMethods\SetRandomize(GetGadgetState(#CheckBox_LinkedList_Randomize))
    *LinkedListMethods\SetAdd(GetGadgetState(#CheckBox_LinkedList_Add))
    *LinkedListMethods\SetAddEx(GetGadgetState(#CheckBox_LinkedList_AddEx))
    *LinkedListMethods\SetInsert(GetGadgetState(#CheckBox_LinkedList_Insert))
    *LinkedListMethods\SetInsertEx(GetGadgetState(#CheckBox_LinkedList_InsertEx))
    *LinkedListMethods\SetSelect(GetGadgetState(#CheckBox_LinkedList_Select))
    *LinkedListMethods\SetFirst(GetGadgetState(#CheckBox_LinkedList_First))
    *LinkedListMethods\SetLast(GetGadgetState(#CheckBox_LinkedList_Last))
    *LinkedListMethods\SetPrevious(GetGadgetState(#CheckBox_LinkedList_Previous))
    *LinkedListMethods\SetNext(GetGadgetState(#CheckBox_LinkedList_Next))
    *LinkedListMethods\SetDelete(GetGadgetState(#CheckBox_LinkedList_Delete))
    *LinkedListMethods\SetReset(GetGadgetState(#CheckBox_LinkedList_Reset))
    *LinkedListMethods\SetClear(GetGadgetState(#CheckBox_LinkedList_Clear))
    *LinkedListMethods\SetIndex(GetGadgetState(#CheckBox_LinkedList_Index))
    *LinkedListMethods\SetSize(GetGadgetState(#CheckBox_LinkedList_Size))
    *LinkedListMethods\SetMerge(GetGadgetState(#CheckBox_LinkedList_Merge))
    
    *MapMethods.MapMethods::MapMethods = *This\CodeGenerator\GetMapMethods()
    
    *MapMethods\SetAdd(GetGadgetState(#CheckBox_Map_Add))
    *MapMethods\SetAddEx(GetGadgetState(#CheckBox_Map_AddEx))
    *MapMethods\SetClear(GetGadgetState(#CheckBox_Map_Clear))
    *MapMethods\SetSize(GetGadgetState(#CheckBox_Map_Size))
    *MapMethods\SetReset(GetGadgetState(#CheckBox_Map_Reset))
    *MapMethods\SetDelete(GetGadgetState(#CheckBox_Map_Delete))
    *MapMethods\SetFind(GetGadgetState(#CheckBox_Map_Find))
    *MapMethods\SetNext(GetGadgetState(#CheckBox_Map_Next))
    *MapMethods\SetKey(GetGadgetState(#CheckBox_Map_Key))

    *StaticArrayMethods.StaticArrayMethods::StaticArrayMethods = *This\CodeGenerator\GetStaticArrayMethods()
    
    *StaticArrayMethods\SetQuickSortAscendant(GetGadgetState(#CheckBox_QuickSortAscending))
    *StaticArrayMethods\SetQuickSortDescendant(GetGadgetState(#CheckBox_QuickSortDescending))
    *StaticArrayMethods\SetLinearSearch(GetGadgetState(#CheckBox_LinearSearch))
    *StaticArrayMethods\SetBinarySearch(GetGadgetState(#CheckBox_BinarySearch))
    *StaticArrayMethods\SetFixedLenghtQueue(GetGadgetState(#CheckBox_FixedLengthQueue))

    *BinaryFile.BinaryFile::BinaryFile = *This\CodeGenerator\GetBinaryFile()
    
    *BinaryFile\SetReadWrite(GetGadgetState(#CheckBox_ReadWriteBinary))
    *BinaryFile\SetCreateFile(GetGadgetState(#CheckBox_CreateBinaryFile))
    *BinaryFile\SetOpenFile(GetGadgetState(#CheckBox_OpenBinaryFile))
    *BinaryFile\SetReadFile(GetGadgetState(#CheckBox_ReadBinaryFile))
    *BinaryFile\SetAddFileFormatID(GetGadgetState(#CheckBox_AddBinaryFileFormatID))
    
    *EncodedCryptedFile.EncodedCryptedFile::EncodedCryptedFile = *This\CodeGenerator\GetEncodedCryptedFile()
    
    *EncodedCryptedFile\SetReadWrite(GetGadgetState(#CheckBox_ReadWriteEncodedCrypted))
    *EncodedCryptedFile\SetCreateFile(GetGadgetState(#CheckBox_CreateEncodedCryptedFile))
    *EncodedCryptedFile\SetOpenFile(GetGadgetState(#CheckBox_OpenEncodedCryptedFile))
    *EncodedCryptedFile\SetReadFile(GetGadgetState(#CheckBox_ReadEncodedCryptedFile))
    *EncodedCryptedFile\SetAddFileFormatID(GetGadgetState(#CheckBox_AddEncodedCryptedFileFormatID))
    *EncodedCryptedFile\SetCustomFileLibToUse(GetGadgetText(#ComboBox_EncodedCrypted_Files))
    
    *PrefsFile.PreferencesFile::PreferencesFile = *This\CodeGenerator\GetPrefsFile()
    
    *PrefsFile\SetReadWriteGroup(GetGadgetState(#CheckBox_Preference_Group))
    *PrefsFile\SetCreateOpenFile(GetGadgetState(#CheckBox_Preference_File))
    
    *XMLFile.XMLFile::XMLFile = *This\CodeGenerator\GetXMLFile()
    
    *XMLFile\SetNodeWithChild(GetGadgetState(#CheckBox_XML_Node_With_Childs))
    *XMLFile\SetNodeWithAttribute(GetGadgetState(#CheckBox_XML_Node_With_Attributes))
    *XMLFile\SetAddCollectAttribute(GetGadgetState(#CheckBox_XML_Add_Collect_Attributes))
    *XMLFile\SetCreateLoadFile(GetGadgetState(#CheckBox_XML_Create_Load_File))
    *XMLFile\SetCatchFile(GetGadgetState(#CheckBox_XML_Catch_File))
    
    *JSONFile.JSONFile::JSONFile = *This\CodeGenerator\GetJSONFile()
    
    *JSONFile\SetInsertExtract(GetGadgetState(#CheckBox_JSON_IE_Object))
    *JSONFile\SetSaveLoad(GetGadgetState(#CheckBox_JSON_Save_Load_File))
    *JSONFile\SetCatch(GetGadgetState(#CheckBox_JSON_Catch_File))
    
    *CustomPrefsFile.CustomPrefsFile::CustomPrefsFile = *This\CodeGenerator\GetCustomPrefsFile()
    
    *CustomPrefsFile\SetAddExtractGroup(GetGadgetState(#CheckBox_CustomPrefs_AE_Group))
    *CustomPrefsFile\SetRefreshGroup(GetGadgetState(#CheckBox_CustomPrefs_R_Group))
    *CustomPrefsFile\SetSaveOnLoadFromFile(GetGadgetState(#CheckBox_CustomPrefs_File))
        
    ProcedureReturn #True
  EndProcedure
  
  Procedure To_GUI(*This.Members)
    
    *Class.Class::Class = *This\CodeGenerator\GetClass()
    
    SetGadgetText(#String_Module_Name, *Class\GetName())
    SetGadgetState(#ComboBox_License, *This\LicenseManager\GetLicenseToUse() + 1)
    
    GoScintilla::ClearText(#Editor_Class_Members)
    
    *Members.Chain::Chain = *Class\GetMembers()
    
    *Members\ResetChain()
    
    While *Members\NextLink()
      
      Select *Members\GetLinkTag()
          
        Case Class::#MEMBER_STYLE_ARRAY
          *DynamicArray.DynamicArray::DynamicArray = *Members\GetLinkObject()
          GoScintilla::InsertLineOfText(#Editor_Class_Members, -1, *DynamicArray\GetDescription())
          
        Case Class::#MEMBER_STYLE_LIST
          *LinkedList.LinkedList::LinkedList = *Members\GetLinkObject()
          GoScintilla::InsertLineOfText(#Editor_Class_Members, -1, *LinkedList\GetDescription())
          
        Case Class::#MEMBER_STYLE_MAP
          *HashMap.HashMap::HashMap = *Members\GetLinkObject()
          GoScintilla::InsertLineOfText(#Editor_Class_Members, -1, *HashMap\GetDescription())
          
        Case Class::#MEMBER_STYLE_BASIC
          *Basic.Basic::Basic = *Members\GetLinkObject()
          GoScintilla::InsertLineOfText(#Editor_Class_Members, -1, *Basic\GetDescription())
          
        Case Class::#MEMBER_STYLE_STATIC_ARRAY
          *StaticArray.StaticArray::StaticArray = *Members\GetLinkObject()
          GoScintilla::InsertLineOfText(#Editor_Class_Members, -1, *StaticArray\GetDescription())
          
      EndSelect
      
    Wend
    
    *BasicMethods.BasicMethods::BasicMethods = *This\CodeGenerator\GetBasicMethods()
    
    SetGadgetState(#CheckBox_Getters, *BasicMethods\GetGetters())
    SetGadgetState(#CheckBox_Setters, *BasicMethods\GetSetters())
    SetGadgetState(#CheckBox_Update, *BasicMethods\GetUpdate())
    SetGadgetState(#CheckBox_Reset, *BasicMethods\GetReset())
    SetGadgetState(#CheckBox_Clear, *BasicMethods\GetClear())
    SetGadgetState(#CheckBox_Access, *BasicMethods\GetAccess())
    
    *MathsMethods.MathsMethods::MathsMethods = *This\CodeGenerator\GetMathsMethods()
    
    SetGadgetState(#CheckBox_Equal, *MathsMethods\GetEqual())
    SetGadgetState(#CheckBox_Plus, *MathsMethods\GetPlus())
    SetGadgetState(#CheckBox_Minus, *MathsMethods\GetMinus())
    SetGadgetState(#CheckBox_Add, *MathsMethods\GetAdd())
    SetGadgetState(#CheckBox_AddScaled, *MathsMethods\GetAddScaled())
    SetGadgetState(#CheckBox_Subtract, *MathsMethods\GetSubtract())
    SetGadgetState(#CheckBox_Product, *MathsMethods\GetProduct())
    SetGadgetState(#CheckBox_Divide, *MathsMethods\GetDivide())
    SetGadgetState(#CheckBox_AddScalar, *MathsMethods\GetAddScalar())
    SetGadgetState(#CheckBox_SubtractScalar, *MathsMethods\GetSubtractScalar())
    SetGadgetState(#CheckBox_ProductByScalar, *MathsMethods\GetProductByScalar())
    SetGadgetState(#CheckBox_DivideByScalar, *MathsMethods\GetDivideByScalar())
    SetGadgetState(#CheckBox_Lerp, *MathsMethods\GetLerp())
    
    *MemoryMethods.MemoryMethods::MemoryMethods = *This\CodeGenerator\GetMemoryMethods()
    
    SetGadgetState(#CheckBox_Copy, *MemoryMethods\GetCopy())
    SetGadgetState(#CheckBox_Compare, *MemoryMethods\GetCompare())
    SetGadgetState(#CheckBox_Swapping, *MemoryMethods\GetSwapping())
    
    *DynamicArrayMethods.DynamicArrayMethods::DynamicArrayMethods = *This\CodeGenerator\GetDynamicArrayMethods()
    
    SetGadgetState(#CheckBox_DynamicArray_Sort, *DynamicArrayMethods\GetSort())
    SetGadgetState(#CheckBox_DynamicArray_LinearSearch, *DynamicArrayMethods\GetLinearSearch())
    SetGadgetState(#CheckBox_DynamicArray_BinarySearch, *DynamicArrayMethods\GetBinarySearch())
    SetGadgetState(#CheckBox_DynamicArray_Randomize, *DynamicArrayMethods\GetRandomize())
    SetGadgetState(#CheckBox_DynamicArray_ReDimension, *DynamicArrayMethods\GetReDimension())
    SetGadgetState(#CheckBox_DynamicArray_Size, *DynamicArrayMethods\GetSize())
    
    *LinkedListMethods.LinkedListMethods::LinkedListMethods = *This\CodeGenerator\GetLinkedListMethods()   
    
    SetGadgetState(#CheckBox_LinkedList_Sort, *LinkedListMethods\GetSort())
    SetGadgetState(#CheckBox_LinkedList_LinearSearch, *LinkedListMethods\GetLinearSearch())
    SetGadgetState(#CheckBox_LinkedList_BinarySearch, *LinkedListMethods\GetBinarySearch())
    SetGadgetState(#CheckBox_LinkedList_Randomize, *LinkedListMethods\GetRandomize())
    SetGadgetState(#CheckBox_LinkedList_Add, *LinkedListMethods\GetAdd())
    SetGadgetState(#CheckBox_LinkedList_AddEx, *LinkedListMethods\GetAddEx())
    SetGadgetState(#CheckBox_LinkedList_Insert, *LinkedListMethods\GetInsert())
    SetGadgetState(#CheckBox_LinkedList_InsertEx, *LinkedListMethods\GetInsertEx())
    SetGadgetState(#CheckBox_LinkedList_Select, *LinkedListMethods\GetSelect())
    SetGadgetState(#CheckBox_LinkedList_First, *LinkedListMethods\GetFirst())
    SetGadgetState(#CheckBox_LinkedList_Last, *LinkedListMethods\GetLast())
    SetGadgetState(#CheckBox_LinkedList_Previous, *LinkedListMethods\GetPrevious())
    SetGadgetState(#CheckBox_LinkedList_Next, *LinkedListMethods\GetNext())
    SetGadgetState(#CheckBox_LinkedList_Delete, *LinkedListMethods\GetDelete())
    SetGadgetState(#CheckBox_LinkedList_Reset, *LinkedListMethods\GetReset())
    SetGadgetState(#CheckBox_LinkedList_Clear, *LinkedListMethods\GetClear())
    SetGadgetState(#CheckBox_LinkedList_Index, *LinkedListMethods\GetIndex())
    SetGadgetState(#CheckBox_LinkedList_Size, *LinkedListMethods\GetSize())
    SetGadgetState(#CheckBox_LinkedList_Merge, *LinkedListMethods\GetMerge())
    
    *MapMethods.MapMethods::MapMethods = *This\CodeGenerator\GetMapMethods()
    
    SetGadgetState(#CheckBox_Map_Add, *MapMethods\GetAdd())
    SetGadgetState(#CheckBox_Map_AddEx, *MapMethods\GetAddEx())
    SetGadgetState(#CheckBox_Map_Clear, *MapMethods\GetClear())
    SetGadgetState(#CheckBox_Map_Size, *MapMethods\GetSize())
    SetGadgetState(#CheckBox_Map_Reset, *MapMethods\GetReset())
    SetGadgetState(#CheckBox_Map_Delete, *MapMethods\GetDelete())
    SetGadgetState(#CheckBox_Map_Find, *MapMethods\GetFind())
    SetGadgetState(#CheckBox_Map_Next, *MapMethods\GetNext())
    SetGadgetState(#CheckBox_Map_Key, *MapMethods\GetKey())

    *StaticArrayMethods.StaticArrayMethods::StaticArrayMethods = *This\CodeGenerator\GetStaticArrayMethods()
    
    SetGadgetState(#CheckBox_QuickSortAscending, *StaticArrayMethods\GetQuickSortAscendant())
    SetGadgetState(#CheckBox_QuickSortDescending, *StaticArrayMethods\GetQuickSortDescendant())
    SetGadgetState(#CheckBox_LinearSearch, *StaticArrayMethods\GetLinearSearch())
    SetGadgetState(#CheckBox_BinarySearch, *StaticArrayMethods\GetBinarySearch())
    SetGadgetState(#CheckBox_FixedLengthQueue, *StaticArrayMethods\GetFixedLenghtQueue())
    
    *BinaryFile.BinaryFile::BinaryFile = *This\CodeGenerator\GetBinaryFile()
    
    SetGadgetState(#CheckBox_ReadWriteBinary, *BinaryFile\GetReadWrite())
    SetGadgetState(#CheckBox_CreateBinaryFile, *BinaryFile\GetCreateFile())
    SetGadgetState(#CheckBox_OpenBinaryFile, *BinaryFile\GetOpenFile())
    SetGadgetState(#CheckBox_ReadBinaryFile, *BinaryFile\GetReadFile())
    SetGadgetState(#CheckBox_AddBinaryFileFormatID, *BinaryFile\GetAddFileFormatID())
    
    *EncodedCryptedFile.EncodedCryptedFile::EncodedCryptedFile = *This\CodeGenerator\GetEncodedCryptedFile()
    
    SetGadgetState(#CheckBox_ReadWriteEncodedCrypted, *EncodedCryptedFile\GetReadWrite())
    SetGadgetState(#CheckBox_CreateEncodedCryptedFile, *EncodedCryptedFile\GetCreateFile())
    SetGadgetState(#CheckBox_OpenEncodedCryptedFile, *EncodedCryptedFile\GetOpenFile())
    SetGadgetState(#CheckBox_ReadEncodedCryptedFile, *EncodedCryptedFile\GetReadFile())
    SetGadgetState(#CheckBox_AddEncodedCryptedFileFormatID, *EncodedCryptedFile\GetAddFileFormatID())
    SelectComboBoxGadgetItem(#ComboBox_EncodedCrypted_Files, *EncodedCryptedFile\GetCustomFileLibToUse())
    
    *PrefsFile.PreferencesFile::PreferencesFile = *This\CodeGenerator\GetPrefsFile()
    
    SetGadgetState(#CheckBox_Preference_Group, *PrefsFile\GetReadWriteGroup())
    SetGadgetState(#CheckBox_Preference_File, *PrefsFile\GetCreateOpenFile())
    
    *XMLFile.XMLFile::XMLFile = *This\CodeGenerator\GetXMLFile()
    
    SetGadgetState(#CheckBox_XML_Node_With_Childs, *XMLFile\GetNodeWithChild())
    SetGadgetState(#CheckBox_XML_Node_With_Attributes, *XMLFile\GetNodeWithAttribute())
    SetGadgetState(#CheckBox_XML_Add_Collect_Attributes, *XMLFile\GetAddCollectAttribute())
    SetGadgetState(#CheckBox_XML_Create_Load_File, *XMLFile\GetCreateLoadFile())
    SetGadgetState(#CheckBox_XML_Catch_File, *XMLFile\GetCatchFile())
    
    *JSONFile.JSONFile::JSONFile = *This\CodeGenerator\GetJSONFile()
    
    SetGadgetState(#CheckBox_JSON_IE_Object, *JSONFile\GetInsertExtract())
    SetGadgetState(#CheckBox_JSON_Save_Load_File, *JSONFile\GetSaveLoad())
    SetGadgetState(#CheckBox_JSON_Catch_File, *JSONFile\GetCatch())
    
    *CustomPrefsFile.CustomPrefsFile::CustomPrefsFile = *This\CodeGenerator\GetCustomPrefsFile()
    
    SetGadgetState(#CheckBox_CustomPrefs_AE_Group, *CustomPrefsFile\GetAddExtractGroup())
    SetGadgetState(#CheckBox_CustomPrefs_R_Group, *CustomPrefsFile\GetRefreshGroup())
    SetGadgetState(#CheckBox_CustomPrefs_File, *CustomPrefsFile\GetSaveOnLoadFromFile())
    
  EndProcedure
  
  Procedure GenerateCode(*This.Members)
    
    Select GetGadgetState(#Panel)
        
      Case 0, 1, 2, 3, 4
        If From_GUI(*This) = #True
          GoScintilla::SetText(#Editor_Source_Code, *This\CodeGenerator\Generate())
          SetGadgetState(#Panel, 3)
        EndIf
        
      Case 5
        *This\GarbageCollector\Process(*This\CodeGenerator\GetComments())
        
    EndSelect
    
  EndProcedure
  
  Procedure Refresh(*This.Members)
    
    Select GetGadgetState(#Panel)
        
      Case 0, 1, 2, 3, 4
        
        *This\CodeGenerator\Reset()
        
        SetGadgetState(#Panel, 0)
        SetGadgetState(#ComboBox_License, 0)
        *This\LicenseManager\SetLicenseToUse(-1)
        GoScintilla::ClearText(#Editor_Source_Code)
        
        To_GUI(*This)
        
      Case 5
        
        GoScintilla::ClearText(#Editor_GarbageCollector)
        
    EndSelect
    
  EndProcedure
  
  Procedure SaveSourceCode(FileName.s)
    
    FileID = CreateFile(#PB_Any, FileName)
    
    If IsFile(FileID)
      
      WriteStringFormat(FileID, #PB_Ascii)
      WriteString(FileID, GoScintilla::GetText(#Editor_Source_Code), #PB_Ascii)
      CloseFile(FileID)
      
    EndIf
    
  EndProcedure
  
  Procedure SaveDevObjectSourceCode(*This.Members)
    
    FileName.s = SaveFileRequester(*This\Language\Message("Select the Source code to save"), *This\Options\GetSourceSavePath(), *This\Language\Message("PureBasic SourceCode (*.pb)|*.pb|PureBasic IncludeCode (*.pbi)|*.pbi"), 0)
    
    If FileName <> ""
      
      Select SelectedFilePattern()
          
        Case 0
          FileName = CheckFileExtension::DoIt(FileName, "pb")
          
        Case 1
          FileName = CheckFileExtension::DoIt(FileName, "pbi")
          
      EndSelect
      
      If FileSize(FileName) <> -1
        
        If MessageRequester(*This\Language\Message("Dev-Object - Warning"), ReplaceString(*This\Language\Message("The file %FILE% already exist. Would you like to overwrite ?"), "%FILE%", Chr(34) + GetFilePart(FileName) + Chr(34)), #PB_MessageRequester_YesNo) = #PB_MessageRequester_Yes
          
          If DeleteFile(FileName)
            SaveSourceCode(FileName)
          EndIf
          
        EndIf
        
      Else
        
        SaveSourceCode(FileName)
        
      EndIf
      
    EndIf
    
  EndProcedure
  
  Procedure SaveDevObjectProjectFile(*This.Members)
    
    FileName.s = SaveFileRequester(*This\Language\Message("Select project to save"), *This\Options\GetProjectSavePath(), *This\Language\Message("Dev-Object Project (*.devo)|*.devo"), 1)
    
    If FileName <> ""
      
      From_GUI(*This)
      
      FileName = CheckFileExtension::DoIt(FileName, "devo")
      
      If FileSize(FileName) <> -1
        
        If MessageRequester(*This\Language\Message("Dev-Object - Warning"), ReplaceString(*This\Language\Message("The file %FILE% already exist. Would you like to overwrite ?"), "%FILE%", Chr(34) + GetFilePart(FileName) + Chr(34)), #PB_MessageRequester_YesNo) = #PB_MessageRequester_Yes
          
          If DeleteFile(FileName)
            *This\CodeGenerator\SaveProjectFile(FileName)
          EndIf
          
        EndIf
        
      Else
        
        *This\CodeGenerator\SaveProjectFile(FileName)
        
      EndIf
      
    EndIf
    
  EndProcedure

  Procedure OpenFileDispatcher(*This.Members)
    
    Select GetGadgetState(#Panel)
        
      Case 0, 1, 2, 3, 4
        FileName.s = OpenFileRequester(*This\Language\Message("Select project to open"), *This\Options\GetProjectSavePath(), *This\Language\Message("Dev-Object Project (*.devo)|*.devo"), 1)
        
        If FileName <> ""
          *This\CodeGenerator\Reset()
          *This\CodeGenerator\LoadProjectFile(FileName)
          To_GUI(*This)
          SetGadgetState(#Panel, 0)
        EndIf
        
      Case 5
        
        ClearGadgetItems(#ListIcon_Sources)
        *This\Checker\ClearSources()
        
        FileName.s = OpenFileRequester(*This\Language\Message("Select the Source(s) code to analyse"), *This\Options\GetSourceSavePath(), *This\Language\Message("PureBasic SourceCode (*.pb, *.pbi)|*.pb;*.pbi"), 0 , #PB_Requester_MultiSelection)
        
        While FileName
          
          If FileName <> ""
            *This\Checker\AddSources(FileName)
          EndIf
          
          FileName = NextSelectedFileName()
          
        Wend
        
        *This\Checker\ResetSources() 
        
        While *This\Checker\NextSources() 
          
          *Sources.CheckerSource::CheckerSource = *This\Checker\GetSources() 
          
          If *Sources\ErrorsSize() = 0
            Flag.s = *This\Language\Message("OK")
            BackColor = RGB(000, 255, 000)
            DoSomething.i = #False
          Else
            
            DoSomething.i = #True
            
            If *Sources\GetErrorInterfaceVTMismatchCount() = 1
              Flag = *This\Language\Message("The number of methods differ")
              BackColor = RGB(255, 000, 000)
            Else  
              
              If *Sources\GetErrorSpellingCount() > 0 And *Sources\GetErrorParameterMismatchCount() = 0 And *Sources\GetErrorReturnTypeMismatchCount() = 0
                Flag = *This\Language\Message("Spelling error")
                BackColor = RGB(255, 255, 000)
              Else
                Flag = *This\Language\Message("Other errors")
                BackColor = RGB(255, 000, 000)
              EndIf
              
            EndIf
            
          EndIf
          
          AddGadgetItem(#ListIcon_Sources, *This\Checker\SourcesIndex(), GetFilePart(*Sources\GetFileName()) + Chr(10) + Flag)
          SetGadgetItemColor(#ListIcon_Sources, *This\Checker\SourcesIndex(), #PB_Gadget_BackColor, BackColor, -1)
          SetGadgetItemData(#ListIcon_Sources, *This\Checker\SourcesIndex(), DoSomething)
          
        Wend
        
    EndSelect
    
  EndProcedure
  
  Procedure SaveFileDispatcher(*This.Members)

    Select GetGadgetState(#Panel)
    
    	Case 0, 1, 2
    	  SaveDevObjectProjectFile(*This)
    	  
    	Case 3
    	  SaveDevObjectSourceCode(*This)
    	  
    EndSelect
    
  EndProcedure
  
  Procedure TextFollowTrackBar()
    
    SetGadgetText(#Text_Tabulation_Size, Str(GetGadgetState(#TrackBar_Tabulation_Size)))
    
  EndProcedure
  
  Procedure TrackBarFollowOption()
    
    GadgetID = EventGadget()
    
    Select GadgetID
        
      Case #Option_Use_NBSPACE_Tabulation
        DisableGadget(#TrackBar_Tabulation_Size, 0)
        DisableGadget(#Text_Tabulation_Size, 0)
        
      Case #Option_Use_ASCII_Tabulation
        DisableGadget(#TrackBar_Tabulation_Size, 1)
        DisableGadget(#Text_Tabulation_Size, 1)
        
    EndSelect
    
  EndProcedure
  
  Procedure TrackBarGadgetGroup(TrackBarID, TextID, PosX, PosY, FrameWidth)
    
    TrackBarGadget(TrackBarID, PosX , PosY, FrameWidth - 40, 30, 0, 0, #PB_TrackBar_Ticks)
    TextGadget(TextID, GadgetLocate::RightOf(TrackBarID, 5), PosY + 5, 30, 30, "", #PB_Text_Center)
    
  EndProcedure 
  
  Procedure DateFormatGadgetGroup(FrameID, PosX.l, PosY.l, Width.l, FrameHeight.l = 65)
    
    CompilerSelect #PB_Compiler_OS
        
      CompilerCase #PB_OS_Windows
        Height = 25
        
      CompilerCase #PB_OS_Linux
        Height = 34
        
      CompilerCase #PB_OS_MacOS; Maybe the interface need some adjustment 
        Height = 34
        
    CompilerEndSelect
    
    FrameGadget(FrameID, PosX, PosY, Width, FrameHeight, "")
    ComboBoxGadget(FrameID + 1, PosX + 5, PosY + 25, Width - 120, Height)
    ButtonGadget(FrameID + 2, GadgetLocate::RightOf(FrameID + 1, 5), PosY + 25, 50, Height, "-")
    ButtonGadget(FrameID + 3, GadgetLocate::RightOf(FrameID + 2, 5), PosY + 25, 50, Height, "+")
    
  EndProcedure
  
  Procedure MethodsGadgetTextStringGroup(PosX.l, PosY.l, FrameID, LastTextID, FrameWidth.l = 240)
    
    CompilerSelect #PB_Compiler_OS
        
      CompilerCase #PB_OS_Windows
        
        FrameHeight = 25 + (((LastTextID+1) - FrameID) >> 1) * 30
        
        FrameGadget(FrameID, PosX, PosY, FrameWidth, FrameHeight, "")
        PosY + 25
        FirstTextID = FrameID + 1
        
        For TextID = FirstTextID To LastTextID Step 2
          
          TextGadget(TextID, PosX + 5, PosY, 75, 25, "")
          StringGadget(TextID+1, PosX + 80, PosY, FrameWidth - 85, 25, "")
          
          PosY + 30
          
        Next
        
      CompilerCase #PB_OS_Linux
        
        FrameHeight = 30 + (((LastTextID+1) - FrameID) >> 1) * 35
        
        FrameGadget(FrameID, PosX, PosY, FrameWidth, FrameHeight, "")
        PosY + 25
        FirstTextID = FrameID + 1
        
        For TextID = FirstTextID To LastTextID Step 2
          
          TextGadget(TextID, PosX + 5, PosY, 75, 30, "")
          StringGadget(TextID+1, PosX + 80, PosY, FrameWidth - 85, 30, "")
          
          PosY + 35
          
        Next
        
      CompilerCase #PB_OS_MacOS ; Maybe the interface need some adjustment 
        
        FrameHeight = 30 + (((LastTextID+1) - FrameID) >> 1) * 35
        
        FrameGadget(FrameID, PosX, PosY, FrameWidth, FrameHeight, "")
        PosY + 25
        FirstTextID = FrameID + 1
        
        For TextID = FirstTextID To LastTextID Step 2
          
          TextGadget(TextID, PosX + 5, PosY, 75, 30, "")
          StringGadget(TextID+1, PosX + 80, PosY, FrameWidth - 85, 30, "")
          
          PosY + 35
          
        Next
        
    CompilerEndSelect
    
  EndProcedure
  
  Procedure BrowsePathGadgetGroup(FrameID, PosX, PosY, Width, FrameHeight = 65)
    
    CompilerSelect #PB_Compiler_OS
        
      CompilerCase #PB_OS_Windows
        Height = 25
        
      CompilerCase #PB_OS_Linux
        Height = 34
        
      CompilerCase #PB_OS_MacOS ; Maybe the interface need some adjustment 
        Height = 34
        
    CompilerEndSelect
    
    FrameGadget(FrameID, PosX, PosY, Width, FrameHeight, "")
    
    StringGadget(FrameID + 1, PosX + 5, PosY + 25, Width - 115, Height, "", #PB_String_ReadOnly)
    ButtonGadget(FrameID + 2, GadgetLocate::RightOf(FrameID + 1, 5), PosY + 25, 100, Height, "")
    
  EndProcedure
  
  Procedure OptionsEditor(*This.Members)
    
    If *This\OptionWin\OpenEx(*This\Language\Message("Options"), #PB_Window_WindowCentered, *This\MainWin\GetID())
      
      *This\MainWin\Hide(#True)
      
      CompilerSelect #PB_Compiler_OS
          
        CompilerCase #PB_OS_Windows 
          
          PanelGadget(#Panel_Options, 5, 5, *This\OptionWin\Width()-10, *This\OptionWin\Height()-50)
            
            AddGadgetItem(#Panel_Options, 0, *This\Language\Message("Options"))
            
            BrowsePathGadgetGroup(#Frame_Project_SavePath, 5, 5, 650)
            BrowsePathGadgetGroup(#Frame_Source_SavePath, 5, GadgetLocate::DownOf(#Frame_Project_SavePath, 5), 650)
            
            MethodsGadgetTextStringGroup(5, GadgetLocate::DownOf(#Frame_Source_SavePath, 5), #Frame_User, #Text_User_Email, 320)
            
            FrameGadget(#Frame_Source_Formatting, 5, GadgetLocate::DownOf(#Frame_User, 5), 320, 115, *This\Language\Message("Source code formatting"))
            OptionGadget(#Option_Use_NBSPACE_Tabulation, GadgetX(#Frame_Source_Formatting) + 10, GadgetY(#Frame_Source_Formatting) + 20, 295, 20, *This\Language\Message("Tabulation (Number of space)"))
            OptionGadget(#Option_Use_ASCII_Tabulation, GadgetX(#Frame_Source_Formatting) + 10, GadgetLocate::DownOf(#Option_Use_NBSPACE_Tabulation, 40), 295, 20, *This\Language\Message("Use the real tabulation character"))
            TrackBarGadgetGroup(#TrackBar_Tabulation_Size, #Text_Tabulation_Size, GadgetX(#Frame_Source_Formatting) + 10, GadgetLocate::DownOf(#Option_Use_NBSPACE_Tabulation, 5), 305)
            
            DateFormatGadgetGroup(#Frame_Date_Formatting, 5, GadgetLocate::DownOf(#Frame_Source_Formatting, 5), 320)
            
            FrameGadget(#Frame_Editor_Color, 5, GadgetLocate::DownOf(#Frame_Date_Formatting, 5), 320, 100, *This\Language\Message("Editors Font"))
            TextGadget(#Text_Editor_FontName, 10, GadgetY(#Frame_Editor_Color) + 20, 125, 34, *This\Language\Message("Font"), #PB_Text_Center)
            StringGadget(#String_Editor_FontName, GadgetLocate::RightOf(#Text_Editor_FontName, 5), GadgetY(#Text_Editor_FontName), 125, 34, "", #PB_String_ReadOnly)
            ButtonGadget(#Button_Editor_FontSelect, GadgetLocate::RightOf(#String_Editor_FontName, 5), GadgetY(#Text_Editor_FontName), 50, 34, "...")
            TextGadget(#Text_Editor_FontSize, 10, GadgetLocate::DownOf(#Text_Editor_FontName, 5), 125, 34, *This\Language\Message("Size"), #PB_Text_Center)
            StringGadget(#String_Editor_FontSize, GadgetLocate::RightOf(#Text_Editor_FontSize, 5), GadgetY(#Text_Editor_FontSize), 125, 34, "",  #PB_String_ReadOnly)
            
            FrameGadget(#Frame_Keyword_Bold, 5, GadgetLocate::DownOf(#Frame_Editor_Color, 5), 320, 55, *This\Language\Message("Keywords"))
            CheckBoxGadget(#CheckBox_Keyword_Bold, 10, GadgetY(#Frame_Keyword_Bold) + 20, 300, 34, *This\Language\Message("Keywords in bold"))
            
            FrameGadget(#Frame_Syntax_Colors, GadgetLocate::RightOf(#Frame_Date_Formatting, 5), GadgetLocate::DownOf(#Frame_Source_SavePath, 5), 325, 490, *This\Language\Message("Syntax coloring"))
            ScrollAreaGadget(#Scroll_Syntax_Colors, GadgetLocate::RightOf(#Frame_Date_Formatting, 10), GadgetY(#Frame_Syntax_Colors) + 20, 315, 465, 290, 940)
              
              StringGadget(#Text_DefaultForeColor, 5,5, 225,34, *This\Language\Message("Normal Text"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_DefaultForeColor, 235, 5, 50, 32, *This\SyntaxHighlighting\GetDefaultForeColor())
              
              StringGadget(#Text_DefaultBackColor, 5, GadgetLocate::DownOf(#Text_DefaultForeColor, 5), 225, 34, *This\Language\Message("Background"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_DefaultBackColor, 235, GadgetY(#Text_DefaultBackColor), 50, 32, *This\SyntaxHighlighting\GetDefaultBackColor())
              
              StringGadget(#Text_CaretForeColor, 5, GadgetLocate::DownOf(#Text_DefaultBackColor, 5), 225, 34, *This\Language\Message("Caret"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_CaretForeColor, 235, GadgetY(#Text_CaretForeColor), 50, 32, *This\SyntaxHighlighting\GetCaretForeColor())
              
              StringGadget(#Text_CaretBackColor, 5, GadgetLocate::DownOf(#Text_CaretForeColor, 5), 225, 34, *This\Language\Message("Current line Background"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_CaretBackColor, 235, GadgetY(#Text_CaretBackColor), 50, 32, *This\SyntaxHighlighting\GetCaretBackColor())
              
              StringGadget(#Text_SelectionForeColor, 5, GadgetLocate::DownOf(#Text_CaretBackColor, 5), 225, 34, *This\Language\Message("Selection"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_SelectionForeColor, 235, GadgetY(#Text_SelectionForeColor), 50, 32, *This\SyntaxHighlighting\GetSelectionForeColor())
              
              StringGadget(#Text_SelectionBackColor, 5, GadgetLocate::DownOf(#Text_SelectionForeColor, 5), 225, 34, *This\Language\Message("Selection Background"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_SelectionBackColor, 235, GadgetY(#Text_SelectionBackColor), 50, 32, *This\SyntaxHighlighting\GetSelectionBackColor())
              
              StringGadget(#Text_LineNumbersForeColor, 5, GadgetLocate::DownOf(#Text_SelectionBackColor, 5), 225, 34, *This\Language\Message("Line Numbers"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_LineNumbersForeColor, 235, GadgetY(#Text_LineNumbersForeColor), 50, 32, *This\SyntaxHighlighting\GetLineNumbersForeColor())
              
              StringGadget(#Text_LineNumbersBackColor, 5, GadgetLocate::DownOf(#Text_LineNumbersForeColor, 5), 225, 34, *This\Language\Message("Line Numbers Background"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_LineNumbersBackColor, 235, GadgetY(#Text_LineNumbersBackColor), 50, 32, *This\SyntaxHighlighting\GetLineNumbersBackColor())
              
              StringGadget(#Text_FoldMarginHiBackColor, 5, GadgetLocate::DownOf(#Text_LineNumbersBackColor, 5), 225, 34, *This\Language\Message("Fold Margin Background") + " (Hi)",  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_FoldMarginHiBackColor, 235, GadgetY(#Text_FoldMarginHiBackColor), 50, 32, *This\SyntaxHighlighting\GetFoldMarginHiBackColor())
              
              StringGadget(#Text_FoldMarginLoBackColor, 5, GadgetLocate::DownOf(#Text_FoldMarginHiBackColor, 5), 225, 34, *This\Language\Message("Fold Margin Background") + " (Lo)",  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_FoldMarginLoBackColor, 235, GadgetY(#Text_FoldMarginLoBackColor), 50, 32, *This\SyntaxHighlighting\GetFoldMarginLoBackColor())
              
              StringGadget(#Text_FoldMarkerForeColor, 5, GadgetLocate::DownOf(#Text_FoldMarginLoBackColor, 5), 225, 34, *This\Language\Message("Fold Markers"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_FoldMarkerForeColor, 235, GadgetY(#Text_FoldMarkerForeColor), 50, 32, *This\SyntaxHighlighting\GetFoldMarkerForeColor())
              
              StringGadget(#Text_FoldMarkerBackColor, 5, GadgetLocate::DownOf(#Text_FoldMarkerForeColor, 5), 225, 34, *This\Language\Message("Fold Markers Background"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_FoldMarkerBackColor, 235, GadgetY(#Text_FoldMarkerBackColor), 50, 32, *This\SyntaxHighlighting\GetFoldMarkerBackColor())
              
              StringGadget(#Text_LineHighlightColor, 5, GadgetLocate::DownOf(#Text_FoldMarkerBackColor, 5), 225, 34, *This\Language\Message("Line Highlight"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_LineHighlightColor, 235, GadgetY(#Text_LineHighlightColor), 50, 32, *This\SyntaxHighlighting\GetLineHighlightColor())
              
              StringGadget(#Text_KeywordsColor, 5, GadgetLocate::DownOf(#Text_LineHighlightColor, 5), 225, 34, *This\Language\Message("Keywords"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_KeywordsColor, 235, GadgetY(#Text_KeywordsColor), 50, 32, *This\SyntaxHighlighting\GetKeywordsColor())
              
              StringGadget(#Text_CommentColor, 5, GadgetLocate::DownOf(#Text_KeywordsColor, 5), 225, 34, *This\Language\Message("Comments"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_CommentColor, 235, GadgetY(#Text_CommentColor), 50, 32, *This\SyntaxHighlighting\GetCommentColor())
              
              StringGadget(#Text_LiteralStringColor, 5, GadgetLocate::DownOf(#Text_CommentColor, 5), 225, 34, *This\Language\Message("Literal Strings"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_LiteralStringColor, 235, GadgetY(#Text_LiteralStringColor), 50, 32, *This\SyntaxHighlighting\GetLiteralStringColor())
              
              StringGadget(#Text_NumbersColor, 5, GadgetLocate::DownOf(#Text_LiteralStringColor, 5), 225, 34, *This\Language\Message("Numbers"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_NumbersColor, 235, GadgetY(#Text_NumbersColor), 50, 32, *This\SyntaxHighlighting\GetNumbersColor())
              
              StringGadget(#Text_ConstantsColor, 5, GadgetLocate::DownOf(#Text_NumbersColor, 5), 225, 34, *This\Language\Message("Constants"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_ConstantsColor, 235, GadgetY(#Text_ConstantsColor), 50, 32, *This\SyntaxHighlighting\GetConstantsColor())
              
              StringGadget(#Text_ProceduresColor, 5, GadgetLocate::DownOf(#Text_ConstantsColor, 5), 225, 34, *This\Language\Message("Procedures"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_ProceduresColor, 235, GadgetY(#Text_ProceduresColor), 50, 32, *This\SyntaxHighlighting\GetProceduresColor())
              
              StringGadget(#Text_SeperatorsColor, 5, GadgetLocate::DownOf(#Text_ProceduresColor, 5), 225, 34, *This\Language\Message("Separators"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_SeperatorsColor, 235, GadgetY(#Text_SeperatorsColor), 50, 32, *This\SyntaxHighlighting\GetSeparatorsColor())
              
              StringGadget(#Text_OperatorsColor, 5, GadgetLocate::DownOf(#Text_SeperatorsColor, 5), 225, 34, *This\Language\Message("Operators"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_OperatorsColor, 235, GadgetY(#Text_OperatorsColor), 50, 32, *This\SyntaxHighlighting\GetOperatorsColor())
              
              StringGadget(#Text_TypesColor, 5, GadgetLocate::DownOf(#Text_OperatorsColor, 5), 225, 34, *This\Language\Message("Types"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_TypesColor, 235, GadgetY(#Text_TypesColor), 50, 32, *This\SyntaxHighlighting\GetTypesColor())
              
              StringGadget(#Text_ModulesColor, 5, GadgetLocate::DownOf(#Text_TypesColor, 5), 225, 34, *This\Language\Message("Modules"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_ModulesColor, 235, GadgetY(#Text_ModulesColor), 50, 32, *This\SyntaxHighlighting\GetModulesColor())
              
              StringGadget(#Text_PointersColor, 5, GadgetLocate::DownOf(#Text_ModulesColor, 5), 225, 34, *This\Language\Message("Pointers"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_PointersColor, 235, GadgetY(#Text_PointersColor), 50, 32, *This\SyntaxHighlighting\GetPointersColor())
              
            CloseGadgetList() 
            
            AddGadgetItem(#Panel_Options, 1, *This\Language\Message("Code Generator Rules"))
            
            FrameGadget(#Frame_DynamicDataSizeType, 5, 5, 325, 65, *This\Language\Message("Dynamic Data Size and Indexes Type"))
            ComboBoxGadget(#ComboBox_DynamicDataSizeType, 10, 30, 315, 34)
            
            FrameGadget(#Frame_DisableEnableDebugger, 5, 75, 325, 100, *This\Language\Message("Disable/Enable Debugger"))
            OptionGadget(#Option_DontAddKeywords, GadgetX(#Frame_DisableEnableDebugger) + 10, GadgetY(#Frame_DisableEnableDebugger) + 20, 295, 20, *This\Language\Message("Don't add keywords"))
            OptionGadget(#Option_AddKeywordsAsComments, GadgetX(#Frame_DisableEnableDebugger) + 10, GadgetLocate::DownOf(#Option_DontAddKeywords, 5), 295, 20, *This\Language\Message("Add keywords as comments"))
            OptionGadget(#Option_AddKeywords, GadgetX(#Frame_DisableEnableDebugger) + 10, GadgetLocate::DownOf(#Option_AddKeywordsAsComments, 5), 295, 20, *This\Language\Message("Add keywords"))
            
            
          CloseGadgetList()
          
          ButtonGroup::Horizontal(#Button_Options_OK, #Button_Options_CANCEL, 670-150*2-10, *This\OptionWin\Height() - 40, 150, 34, 5)
          
        CompilerCase #PB_OS_Linux  
          
          PanelGadget(#Panel_Options, 5, 5, *This\OptionWin\Width()-10, *This\OptionWin\Height()-50)
            
            AddGadgetItem(#Panel_Options, 0, *This\Language\Message("Options"))
            
            BrowsePathGadgetGroup(#Frame_Project_SavePath, 5, 5, 650)
            BrowsePathGadgetGroup(#Frame_Source_SavePath, 5, GadgetLocate::DownOf(#Frame_Project_SavePath, 5), 650)
            
            MethodsGadgetTextStringGroup(5, GadgetLocate::DownOf(#Frame_Source_SavePath, 5), #Frame_User, #Text_User_Email, 320)
            
            FrameGadget(#Frame_Source_Formatting, 5, GadgetLocate::DownOf(#Frame_User, 5), 320, 115, *This\Language\Message("Source code formatting"))
            OptionGadget(#Option_Use_NBSPACE_Tabulation, GadgetX(#Frame_Source_Formatting) + 10, GadgetY(#Frame_Source_Formatting) + 20, 295, 20, *This\Language\Message("Tabulation (Number of space)"))
            OptionGadget(#Option_Use_ASCII_Tabulation, GadgetX(#Frame_Source_Formatting) + 10, GadgetLocate::DownOf(#Option_Use_NBSPACE_Tabulation, 40), 295, 20, *This\Language\Message("Use the real tabulation character"))
            TrackBarGadgetGroup(#TrackBar_Tabulation_Size, #Text_Tabulation_Size, GadgetX(#Frame_Source_Formatting) + 10, GadgetLocate::DownOf(#Option_Use_NBSPACE_Tabulation, 5), 305)
            
            DateFormatGadgetGroup(#Frame_Date_Formatting, 5, GadgetLocate::DownOf(#Frame_Source_Formatting, 5), 320)
            
            FrameGadget(#Frame_Editor_Color, 5, GadgetLocate::DownOf(#Frame_Date_Formatting, 5), 320, 100, *This\Language\Message("Editors Font"))
            TextGadget(#Text_Editor_FontName, 10, GadgetY(#Frame_Editor_Color) + 20, 125, 34, *This\Language\Message("Font"), #PB_Text_Center)
            StringGadget(#String_Editor_FontName, GadgetLocate::RightOf(#Text_Editor_FontName, 5), GadgetY(#Text_Editor_FontName), 125, 34, "", #PB_String_ReadOnly)
            ButtonGadget(#Button_Editor_FontSelect, GadgetLocate::RightOf(#String_Editor_FontName, 5), GadgetY(#Text_Editor_FontName), 50, 34, "...")
            TextGadget(#Text_Editor_FontSize, 10, GadgetLocate::DownOf(#Text_Editor_FontName, 5), 125, 34, *This\Language\Message("Size"), #PB_Text_Center)
            StringGadget(#String_Editor_FontSize, GadgetLocate::RightOf(#Text_Editor_FontSize, 5), GadgetY(#Text_Editor_FontSize), 125, 34, "",  #PB_String_ReadOnly)
            
            FrameGadget(#Frame_Keyword_Bold, 5, GadgetLocate::DownOf(#Frame_Editor_Color, 5), 320, 55, *This\Language\Message("Keywords"))
            CheckBoxGadget(#CheckBox_Keyword_Bold, 10, GadgetY(#Frame_Keyword_Bold) + 20, 300, 34, *This\Language\Message("Keywords in bold"))
            
            FrameGadget(#Frame_Syntax_Colors, GadgetLocate::RightOf(#Frame_Date_Formatting, 5), GadgetLocate::DownOf(#Frame_Source_SavePath, 5), 325, 490, *This\Language\Message("Syntax coloring"))
            ScrollAreaGadget(#Scroll_Syntax_Colors, GadgetLocate::RightOf(#Frame_Date_Formatting, 10), GadgetY(#Frame_Syntax_Colors) + 20, 315, 465, 315, 940)
              
              Dummy = TextGadget(#PB_Any, 0, 0, GetGadgetAttribute(#Scroll_Syntax_Colors, #PB_ScrollArea_InnerWidth), GetGadgetAttribute(#Scroll_Syntax_Colors, #PB_ScrollArea_InnerHeight), "")
              SetGadgetColor(Dummy, #PB_Gadget_BackColor, WindowBackgroundColor::FindIt(*This\OptionWin\GetHandle()))
              
              StringGadget(#Text_DefaultForeColor, 5,5, 250,34, *This\Language\Message("Normal Text"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_DefaultForeColor, 260, 5, 50, 32, *This\SyntaxHighlighting\GetDefaultForeColor())
              
              StringGadget(#Text_DefaultBackColor, 5, GadgetLocate::DownOf(#Text_DefaultForeColor, 5), 250, 34, *This\Language\Message("Background"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_DefaultBackColor, 260, GadgetY(#Text_DefaultBackColor), 50, 32, *This\SyntaxHighlighting\GetDefaultBackColor())
              
              StringGadget(#Text_CaretForeColor, 5, GadgetLocate::DownOf(#Text_DefaultBackColor, 5), 250, 34, *This\Language\Message("Caret"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_CaretForeColor, 260, GadgetY(#Text_CaretForeColor), 50, 32, *This\SyntaxHighlighting\GetCaretForeColor())
              
              StringGadget(#Text_CaretBackColor, 5, GadgetLocate::DownOf(#Text_CaretForeColor, 5), 250, 34, *This\Language\Message("Current line Background"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_CaretBackColor, 260, GadgetY(#Text_CaretBackColor), 50, 32, *This\SyntaxHighlighting\GetCaretBackColor())
              
              StringGadget(#Text_SelectionForeColor, 5, GadgetLocate::DownOf(#Text_CaretBackColor, 5), 250, 34, *This\Language\Message("Selection"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_SelectionForeColor, 260, GadgetY(#Text_SelectionForeColor), 50, 32, *This\SyntaxHighlighting\GetSelectionForeColor())
              
              StringGadget(#Text_SelectionBackColor, 5, GadgetLocate::DownOf(#Text_SelectionForeColor, 5), 250, 34, *This\Language\Message("Selection Background"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_SelectionBackColor, 260, GadgetY(#Text_SelectionBackColor), 50, 32, *This\SyntaxHighlighting\GetSelectionBackColor())
              
              StringGadget(#Text_LineNumbersForeColor, 5, GadgetLocate::DownOf(#Text_SelectionBackColor, 5), 250, 34, *This\Language\Message("Line Numbers"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_LineNumbersForeColor, 260, GadgetY(#Text_LineNumbersForeColor), 50, 32, *This\SyntaxHighlighting\GetLineNumbersForeColor())
              
              StringGadget(#Text_LineNumbersBackColor, 5, GadgetLocate::DownOf(#Text_LineNumbersForeColor, 5), 250, 34, *This\Language\Message("Line Numbers Background"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_LineNumbersBackColor, 260, GadgetY(#Text_LineNumbersBackColor), 50, 32, *This\SyntaxHighlighting\GetLineNumbersBackColor())
              
              StringGadget(#Text_FoldMarginHiBackColor, 5, GadgetLocate::DownOf(#Text_LineNumbersBackColor, 5), 250, 34, *This\Language\Message("Fold Margin Background") + " (Hi)",  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_FoldMarginHiBackColor, 260, GadgetY(#Text_FoldMarginHiBackColor), 50, 32, *This\SyntaxHighlighting\GetFoldMarginHiBackColor())
              
              StringGadget(#Text_FoldMarginLoBackColor, 5, GadgetLocate::DownOf(#Text_FoldMarginHiBackColor, 5), 250, 34, *This\Language\Message("Fold Margin Background") + " (Lo)",  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_FoldMarginLoBackColor, 260, GadgetY(#Text_FoldMarginLoBackColor), 50, 32, *This\SyntaxHighlighting\GetFoldMarginLoBackColor())
              
              StringGadget(#Text_FoldMarkerForeColor, 5, GadgetLocate::DownOf(#Text_FoldMarginLoBackColor, 5), 250, 34, *This\Language\Message("Fold Markers"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_FoldMarkerForeColor, 260, GadgetY(#Text_FoldMarkerForeColor), 50, 32, *This\SyntaxHighlighting\GetFoldMarkerForeColor())
              
              StringGadget(#Text_FoldMarkerBackColor, 5, GadgetLocate::DownOf(#Text_FoldMarkerForeColor, 5), 250, 34, *This\Language\Message("Fold Markers Background"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_FoldMarkerBackColor, 260, GadgetY(#Text_FoldMarkerBackColor), 50, 32, *This\SyntaxHighlighting\GetFoldMarkerBackColor())
              
              StringGadget(#Text_LineHighlightColor, 5, GadgetLocate::DownOf(#Text_FoldMarkerBackColor, 5), 250, 34, *This\Language\Message("Line Highlight"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_LineHighlightColor, 260, GadgetY(#Text_LineHighlightColor), 50, 32, *This\SyntaxHighlighting\GetLineHighlightColor())
              
              StringGadget(#Text_KeywordsColor, 5, GadgetLocate::DownOf(#Text_LineHighlightColor, 5), 250, 34, *This\Language\Message("Keywords"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_KeywordsColor, 260, GadgetY(#Text_KeywordsColor), 50, 32, *This\SyntaxHighlighting\GetKeywordsColor())
              
              StringGadget(#Text_CommentColor, 5, GadgetLocate::DownOf(#Text_KeywordsColor, 5), 250, 34, *This\Language\Message("Comments"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_CommentColor, 260, GadgetY(#Text_CommentColor), 50, 32, *This\SyntaxHighlighting\GetCommentColor())
              
              StringGadget(#Text_LiteralStringColor, 5, GadgetLocate::DownOf(#Text_CommentColor, 5), 250, 34, *This\Language\Message("Literal Strings"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_LiteralStringColor, 260, GadgetY(#Text_LiteralStringColor), 50, 32, *This\SyntaxHighlighting\GetLiteralStringColor())
              
              StringGadget(#Text_NumbersColor, 5, GadgetLocate::DownOf(#Text_LiteralStringColor, 5), 250, 34, *This\Language\Message("Numbers"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_NumbersColor, 260, GadgetY(#Text_NumbersColor), 50, 32, *This\SyntaxHighlighting\GetNumbersColor())
              
              StringGadget(#Text_ConstantsColor, 5, GadgetLocate::DownOf(#Text_NumbersColor, 5), 250, 34, *This\Language\Message("Constants"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_ConstantsColor, 260, GadgetY(#Text_ConstantsColor), 50, 32, *This\SyntaxHighlighting\GetConstantsColor())
              
              StringGadget(#Text_ProceduresColor, 5, GadgetLocate::DownOf(#Text_ConstantsColor, 5), 250, 34, *This\Language\Message("Procedures"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_ProceduresColor, 260, GadgetY(#Text_ProceduresColor), 50, 32, *This\SyntaxHighlighting\GetProceduresColor())
              
              StringGadget(#Text_SeperatorsColor, 5, GadgetLocate::DownOf(#Text_ProceduresColor, 5), 250, 34, *This\Language\Message("Separators"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_SeperatorsColor, 260, GadgetY(#Text_SeperatorsColor), 50, 32, *This\SyntaxHighlighting\GetSeparatorsColor())
              
              StringGadget(#Text_OperatorsColor, 5, GadgetLocate::DownOf(#Text_SeperatorsColor, 5), 250, 34, *This\Language\Message("Operators"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_OperatorsColor, 260, GadgetY(#Text_OperatorsColor), 50, 32, *This\SyntaxHighlighting\GetOperatorsColor())
              
              StringGadget(#Text_TypesColor, 5, GadgetLocate::DownOf(#Text_OperatorsColor, 5), 250, 34, *This\Language\Message("Types"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_TypesColor, 260, GadgetY(#Text_TypesColor), 50, 32, *This\SyntaxHighlighting\GetTypesColor())
              
              StringGadget(#Text_ModulesColor, 5, GadgetLocate::DownOf(#Text_TypesColor, 5), 250, 34, *This\Language\Message("Modules"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_ModulesColor, 260, GadgetY(#Text_ModulesColor), 50, 32, *This\SyntaxHighlighting\GetModulesColor())
              
              StringGadget(#Text_PointersColor, 5, GadgetLocate::DownOf(#Text_ModulesColor, 5), 250, 34, *This\Language\Message("Pointers"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_PointersColor, 260, GadgetY(#Text_PointersColor), 50, 32, *This\SyntaxHighlighting\GetPointersColor())
              
            CloseGadgetList() 
            
            AddGadgetItem(#Panel_Options, 1, *This\Language\Message("Code Generator Rules"))
            
            FrameGadget(#Frame_DynamicDataSizeType, 5, 5, 325, 65, *This\Language\Message("Dynamic Data Size and Indexes Type"))
            ComboBoxGadget(#ComboBox_DynamicDataSizeType, 10, 30, 315, 34)
            
            FrameGadget(#Frame_DisableEnableDebugger, 5, 75, 325, 100, *This\Language\Message("Disable/Enable Debugger"))
            OptionGadget(#Option_DontAddKeywords, GadgetX(#Frame_DisableEnableDebugger) + 10, GadgetY(#Frame_DisableEnableDebugger) + 20, 295, 20, *This\Language\Message("Don't add keywords"))
            OptionGadget(#Option_AddKeywordsAsComments, GadgetX(#Frame_DisableEnableDebugger) + 10, GadgetLocate::DownOf(#Option_DontAddKeywords, 5), 295, 20, *This\Language\Message("Add keywords as comments"))
            OptionGadget(#Option_AddKeywords, GadgetX(#Frame_DisableEnableDebugger) + 10, GadgetLocate::DownOf(#Option_AddKeywordsAsComments, 5), 295, 20, *This\Language\Message("Add keywords"))
            
          CloseGadgetList()
          
          ButtonGroup::Horizontal(#Button_Options_OK, #Button_Options_CANCEL, 670-150*2-10, *This\OptionWin\Height() - 40, 150, 34, 5)
          
        CompilerCase #PB_OS_MacOS ; Maybe the interface need some adjustment
          
          PanelGadget(#Panel_Options, 5, 5, *This\OptionWin\Width()-10, *This\OptionWin\Height()-50)
            
            AddGadgetItem(#Panel_Options, 0, *This\Language\Message("Options"))
            
            BrowsePathGadgetGroup(#Frame_Project_SavePath, 5, 5, 650)
            BrowsePathGadgetGroup(#Frame_Source_SavePath, 5, GadgetLocate::DownOf(#Frame_Project_SavePath, 5), 650)
            
            MethodsGadgetTextStringGroup(5, GadgetLocate::DownOf(#Frame_Source_SavePath, 5), #Frame_User, #Text_User_Email, 320)
            
            FrameGadget(#Frame_Source_Formatting, 5, GadgetLocate::DownOf(#Frame_User, 5), 320, 115, *This\Language\Message("Source code formatting"))
            OptionGadget(#Option_Use_NBSPACE_Tabulation, GadgetX(#Frame_Source_Formatting) + 10, GadgetY(#Frame_Source_Formatting) + 20, 295, 20, *This\Language\Message("Tabulation (Number of space)"))
            OptionGadget(#Option_Use_ASCII_Tabulation, GadgetX(#Frame_Source_Formatting) + 10, GadgetLocate::DownOf(#Option_Use_NBSPACE_Tabulation, 40), 295, 20, *This\Language\Message("Use the real tabulation character"))
            TrackBarGadgetGroup(#TrackBar_Tabulation_Size, #Text_Tabulation_Size, GadgetX(#Frame_Source_Formatting) + 10, GadgetLocate::DownOf(#Option_Use_NBSPACE_Tabulation, 5), 305)
            
            DateFormatGadgetGroup(#Frame_Date_Formatting, 5, GadgetLocate::DownOf(#Frame_Source_Formatting, 5), 320)
            
            FrameGadget(#Frame_Editor_Color, 5, GadgetLocate::DownOf(#Frame_Date_Formatting, 5), 320, 100, *This\Language\Message("Editors Font"))
            TextGadget(#Text_Editor_FontName, 10, GadgetY(#Frame_Editor_Color) + 20, 125, 34, *This\Language\Message("Font"), #PB_Text_Center)
            StringGadget(#String_Editor_FontName, GadgetLocate::RightOf(#Text_Editor_FontName, 5), GadgetY(#Text_Editor_FontName), 125, 34, "", #PB_String_ReadOnly)
            ButtonGadget(#Button_Editor_FontSelect, GadgetLocate::RightOf(#String_Editor_FontName, 5), GadgetY(#Text_Editor_FontName), 50, 34, "...")
            TextGadget(#Text_Editor_FontSize, 10, GadgetLocate::DownOf(#Text_Editor_FontName, 5), 125, 34, *This\Language\Message("Size"), #PB_Text_Center)
            StringGadget(#String_Editor_FontSize, GadgetLocate::RightOf(#Text_Editor_FontSize, 5), GadgetY(#Text_Editor_FontSize), 125, 34, "",  #PB_String_ReadOnly)
            
            FrameGadget(#Frame_Keyword_Bold, 5, GadgetLocate::DownOf(#Frame_Editor_Color, 5), 320, 55, *This\Language\Message("Keywords"))
            CheckBoxGadget(#CheckBox_Keyword_Bold, 10, GadgetY(#Frame_Keyword_Bold) + 20, 300, 34, *This\Language\Message("Keywords in bold"))
            
            FrameGadget(#Frame_Syntax_Colors, GadgetLocate::RightOf(#Frame_Date_Formatting, 5), GadgetLocate::DownOf(#Frame_Source_SavePath, 5), 325, 490, *This\Language\Message("Syntax coloring"))
            ScrollAreaGadget(#Scroll_Syntax_Colors, GadgetLocate::RightOf(#Frame_Date_Formatting, 10), GadgetY(#Frame_Syntax_Colors) + 20, 315, 465, 315, 940)
              
              StringGadget(#Text_DefaultForeColor, 5,5, 250,34, *This\Language\Message("Normal Text"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_DefaultForeColor, 260, 5, 50, 32, *This\SyntaxHighlighting\GetDefaultForeColor())
              
              StringGadget(#Text_DefaultBackColor, 5, GadgetLocate::DownOf(#Text_DefaultForeColor, 5), 250, 34, *This\Language\Message("Background"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_DefaultBackColor, 260, GadgetY(#Text_DefaultBackColor), 50, 32, *This\SyntaxHighlighting\GetDefaultBackColor())
              
              StringGadget(#Text_CaretForeColor, 5, GadgetLocate::DownOf(#Text_DefaultBackColor, 5), 250, 34, *This\Language\Message("Caret"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_CaretForeColor, 260, GadgetY(#Text_CaretForeColor), 50, 32, *This\SyntaxHighlighting\GetCaretForeColor())
              
              StringGadget(#Text_CaretBackColor, 5, GadgetLocate::DownOf(#Text_CaretForeColor, 5), 250, 34, *This\Language\Message("Current line Background"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_CaretBackColor, 260, GadgetY(#Text_CaretBackColor), 50, 32, *This\SyntaxHighlighting\GetCaretBackColor())
              
              StringGadget(#Text_SelectionForeColor, 5, GadgetLocate::DownOf(#Text_CaretBackColor, 5), 250, 34, *This\Language\Message("Selection"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_SelectionForeColor, 260, GadgetY(#Text_SelectionForeColor), 50, 32, *This\SyntaxHighlighting\GetSelectionForeColor())
              
              StringGadget(#Text_SelectionBackColor, 5, GadgetLocate::DownOf(#Text_SelectionForeColor, 5), 250, 34, *This\Language\Message("Selection Background"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_SelectionBackColor, 260, GadgetY(#Text_SelectionBackColor), 50, 32, *This\SyntaxHighlighting\GetSelectionBackColor())
              
              StringGadget(#Text_LineNumbersForeColor, 5, GadgetLocate::DownOf(#Text_SelectionBackColor, 5), 250, 34, *This\Language\Message("Line Numbers"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_LineNumbersForeColor, 260, GadgetY(#Text_LineNumbersForeColor), 50, 32, *This\SyntaxHighlighting\GetLineNumbersForeColor())
              
              StringGadget(#Text_LineNumbersBackColor, 5, GadgetLocate::DownOf(#Text_LineNumbersForeColor, 5), 250, 34, *This\Language\Message("Line Numbers Background"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_LineNumbersBackColor, 260, GadgetY(#Text_LineNumbersBackColor), 50, 32, *This\SyntaxHighlighting\GetLineNumbersBackColor())
              
              StringGadget(#Text_FoldMarginHiBackColor, 5, GadgetLocate::DownOf(#Text_LineNumbersBackColor, 5), 250, 34, *This\Language\Message("Fold Margin Background") + " (Hi)",  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_FoldMarginHiBackColor, 260, GadgetY(#Text_FoldMarginHiBackColor), 50, 32, *This\SyntaxHighlighting\GetFoldMarginHiBackColor())
              
              StringGadget(#Text_FoldMarginLoBackColor, 5, GadgetLocate::DownOf(#Text_FoldMarginHiBackColor, 5), 250, 34, *This\Language\Message("Fold Margin Background") + " (Lo)",  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_FoldMarginLoBackColor, 260, GadgetY(#Text_FoldMarginLoBackColor), 50, 32, *This\SyntaxHighlighting\GetFoldMarginLoBackColor())
              
              StringGadget(#Text_FoldMarkerForeColor, 5, GadgetLocate::DownOf(#Text_FoldMarginLoBackColor, 5), 250, 34, *This\Language\Message("Fold Markers"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_FoldMarkerForeColor, 260, GadgetY(#Text_FoldMarkerForeColor), 50, 32, *This\SyntaxHighlighting\GetFoldMarkerForeColor())
              
              StringGadget(#Text_FoldMarkerBackColor, 5, GadgetLocate::DownOf(#Text_FoldMarkerForeColor, 5), 250, 34, *This\Language\Message("Fold Markers Background"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_FoldMarkerBackColor, 260, GadgetY(#Text_FoldMarkerBackColor), 50, 32, *This\SyntaxHighlighting\GetFoldMarkerBackColor())
              
              StringGadget(#Text_LineHighlightColor, 5, GadgetLocate::DownOf(#Text_FoldMarkerBackColor, 5), 250, 34, *This\Language\Message("Line Highlight"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_LineHighlightColor, 260, GadgetY(#Text_LineHighlightColor), 50, 32, *This\SyntaxHighlighting\GetLineHighlightColor())
              
              StringGadget(#Text_KeywordsColor, 5, GadgetLocate::DownOf(#Text_LineHighlightColor, 5), 250, 34, *This\Language\Message("Keywords"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_KeywordsColor, 260, GadgetY(#Text_KeywordsColor), 50, 32, *This\SyntaxHighlighting\GetKeywordsColor())
              
              StringGadget(#Text_CommentColor, 5, GadgetLocate::DownOf(#Text_KeywordsColor, 5), 250, 34, *This\Language\Message("Comments"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_CommentColor, 260, GadgetY(#Text_CommentColor), 50, 32, *This\SyntaxHighlighting\GetCommentColor())
              
              StringGadget(#Text_LiteralStringColor, 5, GadgetLocate::DownOf(#Text_CommentColor, 5), 250, 34, *This\Language\Message("Literal Strings"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_LiteralStringColor, 260, GadgetY(#Text_LiteralStringColor), 50, 32, *This\SyntaxHighlighting\GetLiteralStringColor())
              
              StringGadget(#Text_NumbersColor, 5, GadgetLocate::DownOf(#Text_LiteralStringColor, 5), 250, 34, *This\Language\Message("Numbers"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_NumbersColor, 260, GadgetY(#Text_NumbersColor), 50, 32, *This\SyntaxHighlighting\GetNumbersColor())
              
              StringGadget(#Text_ConstantsColor, 5, GadgetLocate::DownOf(#Text_NumbersColor, 5), 250, 34, *This\Language\Message("Constants"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_ConstantsColor, 260, GadgetY(#Text_ConstantsColor), 50, 32, *This\SyntaxHighlighting\GetConstantsColor())
              
              StringGadget(#Text_ProceduresColor, 5, GadgetLocate::DownOf(#Text_ConstantsColor, 5), 250, 34, *This\Language\Message("Procedures"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_ProceduresColor, 260, GadgetY(#Text_ProceduresColor), 50, 32, *This\SyntaxHighlighting\GetProceduresColor())
              
              StringGadget(#Text_SeperatorsColor, 5, GadgetLocate::DownOf(#Text_ProceduresColor, 5), 250, 34, *This\Language\Message("Separators"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_SeperatorsColor, 260, GadgetY(#Text_SeperatorsColor), 50, 32, *This\SyntaxHighlighting\GetSeparatorsColor())
              
              StringGadget(#Text_OperatorsColor, 5, GadgetLocate::DownOf(#Text_SeperatorsColor, 5), 250, 34, *This\Language\Message("Operators"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_OperatorsColor, 260, GadgetY(#Text_OperatorsColor), 50, 32, *This\SyntaxHighlighting\GetOperatorsColor())
              
              StringGadget(#Text_TypesColor, 5, GadgetLocate::DownOf(#Text_OperatorsColor, 5), 250, 34, *This\Language\Message("Types"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_TypesColor, 260, GadgetY(#Text_TypesColor), 50, 32, *This\SyntaxHighlighting\GetTypesColor())
              
              StringGadget(#Text_ModulesColor, 5, GadgetLocate::DownOf(#Text_TypesColor, 5), 250, 34, *This\Language\Message("Modules"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_ModulesColor, 260, GadgetY(#Text_ModulesColor), 50, 32, *This\SyntaxHighlighting\GetModulesColor())
              
              StringGadget(#Text_PointersColor, 5, GadgetLocate::DownOf(#Text_ModulesColor, 5), 250, 34, *This\Language\Message("Pointers"),  #PB_String_ReadOnly)
              ColorPreview::Gadget(#PreviewColor_PointersColor, 260, GadgetY(#Text_PointersColor), 50, 32, *This\SyntaxHighlighting\GetPointersColor())
              
            CloseGadgetList() 
            
            AddGadgetItem(#Panel_Options, 1, *This\Language\Message("Code Generator Rules"))
            
            FrameGadget(#Frame_DynamicDataSizeType, 5, 5, 325, 65, *This\Language\Message("Dynamic Data Size and Indexes Type"))
            ComboBoxGadget(#ComboBox_DynamicDataSizeType, 10, 30, 315, 34)
            
            FrameGadget(#Frame_DisableEnableDebugger, 5, 75, 325, 100, *This\Language\Message("Disable/Enable Debugger"))
            OptionGadget(#Option_DontAddKeywords, GadgetX(#Frame_DisableEnableDebugger) + 10, GadgetY(#Frame_DisableEnableDebugger) + 20, 295, 20, *This\Language\Message("Don't add keywords"))
            OptionGadget(#Option_AddKeywordsAsComments, GadgetX(#Frame_DisableEnableDebugger) + 10, GadgetLocate::DownOf(#Option_DontAddKeywords, 5), 295, 20, *This\Language\Message("Add keywords as comments"))
            OptionGadget(#Option_AddKeywords, GadgetX(#Frame_DisableEnableDebugger) + 10, GadgetLocate::DownOf(#Option_AddKeywordsAsComments, 5), 295, 20, *This\Language\Message("Add keywords"))
            
          CloseGadgetList()
          
          ButtonGroup::Horizontal(#Button_Options_OK, #Button_Options_CANCEL, 670-150*2-10, *This\OptionWin\Height() - 40, 150, 34, 5)
          
      CompilerEndSelect
      
      For ColorPreviewID = #PreviewColor_DefaultForeColor To #PreviewColor_PointersColor
        GadgetToolTip(ColorPreviewID, *This\Language\Message("Click me"))
      Next
      
      SetGadgetText(#Frame_Project_SavePath, *This\Language\Message("Projects files folder"))
      SetGadgetText(#Button_Browse_Project_SavePath, *This\Language\Message("Browse"))
      SetGadgetText(#String_Project_SavePath, *This\Options\GetProjectSavePath())
      
      SetGadgetText(#Frame_Source_SavePath, *This\Language\Message("Sources files folder"))
      SetGadgetText(#Button_Browse_Source_SavePath, *This\Language\Message("Browse"))
      SetGadgetText(#String_Source_SavePath, *This\Options\GetSourceSavePath())
      
      SetGadgetText(#Frame_User, *This\Language\Message("User Informations"))
      SetGadgetText(#Text_User_Name, *This\Language\Message("Name") + " :")
      SetGadgetText(#Text_User_NickName, *This\Language\Message("AKA") + " :")
      SetGadgetText(#Text_User_Email, *This\Language\Message("E-mail") + " :")
      
      *Comments.Comments::Comments = *This\CodeGenerator\GetComments()
      
      If *Comments\GetUserName() <> ""
        SetGadgetText(#String_User_Name, *Comments\GetUserName())
      Else
        SetGadgetText(#String_User_Name, *This\Language\Message("Your name"))
      EndIf
      
      If *Comments\GetUserNickName() <> ""
        SetGadgetText(#String_User_NickName, *Comments\GetUserNickName())
      Else
        SetGadgetText(#String_User_NickName, *This\Language\Message("Your nickname"))
      EndIf
      
      If *Comments\GetUserEmail() <> ""
        SetGadgetText(#String_User_Email, *Comments\GetUserEmail())
      Else
        SetGadgetText(#String_User_Email, *This\Language\Message("E-mail"))
      EndIf
      
      SetGadgetAttribute(#TrackBar_Tabulation_Size, #PB_TrackBar_Minimum, *Comments\GetTabSizeMin())
      SetGadgetAttribute(#TrackBar_Tabulation_Size, #PB_TrackBar_Maximum, *Comments\GetTabSizeMax())
      
      SetGadgetState(#TrackBar_Tabulation_Size, *Comments\GetTabSize())
      SetGadgetText(#Text_Tabulation_Size, Str(*Comments\GetTabSize()))
      
      If *Comments\GetTabOption() = 0
        SetGadgetState(#Option_Use_NBSPACE_Tabulation, 1)
        DisableGadget(#TrackBar_Tabulation_Size, 0)
        DisableGadget(#Text_Tabulation_Size, 0)
      Else
        SetGadgetState(#Option_Use_ASCII_Tabulation, 1)
        DisableGadget(#TrackBar_Tabulation_Size, 1)
        DisableGadget(#Text_Tabulation_Size, 1)
      EndIf
      
      SetGadgetText(#Frame_Date_Formatting, *This\Language\Message("Dates formatting"))
      
      *DateFormatting.DateFormatting::DateFormatting = *This\CodeGenerator\GetDateFormatting()
      
      *Comments\ResetDateMask()
      
      While *Comments\NextDateMask() 
        AddGadgetItem(#ComboBox_Date_Format, *Comments\DateMaskIndex(), *DateFormatting\Format(*Comments\GetDateMask(), Date()))  
      Wend
      
      SetGadgetState(#ComboBox_Date_Format, *Comments\GetSelectedDateMask())
      
      SetGadgetText(#String_Editor_FontName, *This\Options\GetFontName())
      SetGadgetText(#String_Editor_FontSize, Str(*This\Options\GetFontSize()))
      
      SetGadgetState(#CheckBox_Keyword_Bold, *This\SyntaxHighlighting\GetKeywordsInBold())
      
      AddGadgetItem(#ComboBox_DynamicDataSizeType, Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG, "Long (.l)")
      AddGadgetItem(#ComboBox_DynamicDataSizeType, Rules::#DYNAMIC_DATA_SIZE_TYPE_INTEGER, "Integer (.i)")
      AddGadgetItem(#ComboBox_DynamicDataSizeType, Rules::#DYNAMIC_DATA_SIZE_TYPE_QUAD, "Quad (.q)")
      
      *Rules.Rules::Rules = *This\CodeGenerator\GetRules()
      SetGadgetState(#ComboBox_DynamicDataSizeType, *Rules\GetDynamicDataSizeType())
      
      If *Rules\GetAddDisableEnableDebugger() = Rules::#DISABLE_ENABLE_DEBUGGER_NONE
        SetGadgetState(#Option_DontAddKeywords, 1)
      ElseIf *Rules\GetAddDisableEnableDebugger() = Rules::#DISABLE_ENABLE_DEBUGGER_COMMENTED
        SetGadgetState(#Option_AddKeywordsAsComments, 1)
      ElseIf *Rules\GetAddDisableEnableDebugger() = Rules::#DISABLE_ENABLE_DEBUGGER_UNCOMMENTED
        SetGadgetState(#Option_AddKeywords, 1)
      EndIf
      
      SetGadgetText(#Button_Options_OK, *This\Language\Message("OK"))
      SetGadgetText(#Button_Options_CANCEL, *This\Language\Message("Cancel"))
      
      BindGadgetEvent(#TrackBar_Tabulation_Size, @TextFollowTrackBar()) 
      BindGadgetEvent(#Option_Use_NBSPACE_Tabulation, @TrackBarFollowOption())
      BindGadgetEvent(#Option_Use_ASCII_Tabulation, @TrackBarFollowOption())
      
    EndIf
    
  EndProcedure
  
  Procedure CloseOptionsEditor(*This.Members, Mode.b)
    
    If Mode = 1
      
      *This\Options\SetProjectSavePath(GetGadgetText(#String_Project_SavePath))
      *This\Options\SetSourceSavePath(GetGadgetText(#String_Source_SavePath))
      *This\Options\SetFontName(GetGadgetText(#String_Editor_FontName))
      *This\Options\SetFontSize(Val(GetGadgetText(#String_Editor_FontSize)))
      
      *This\Options\RefreshPrefsGroup("Options", *This\Prefs)
      
      *Comments.Comments::Comments = *This\CodeGenerator\GetComments()
      
      *Comments\SetUserName(GetGadgetText(#String_User_Name))
      *Comments\SetUserNickName(GetGadgetText(#String_User_NickName))
      *Comments\SetUserEmail(GetGadgetText(#String_User_Email))
      *Comments\SetTabSize(GetGadgetState(#TrackBar_Tabulation_Size))
      
      If GetGadgetState(#Option_Use_NBSPACE_Tabulation) = 1
        *Comments\SetTabOption(0)
      ElseIf GetGadgetState(#Option_Use_ASCII_Tabulation) = 1
        *Comments\SetTabOption(1)
      EndIf
      
      *Comments\SetSelectedDateMask(GetGadgetState(#ComboBox_Date_Format))
      *Comments\RefreshPrefsGroup("Comments", *This\Prefs)
      
      *Rules.Rules::Rules = *This\CodeGenerator\GetRules()
      *Rules\SetDynamicDataSizeType(GetGadgetState(#ComboBox_DynamicDataSizeType))
      *Rules\RefreshPrefsGroup("Rules", *This\Prefs)
      
      If GetGadgetState(#Option_DontAddKeywords) = 1
        *Rules\SetAddDisableEnableDebugger(Rules::#DISABLE_ENABLE_DEBUGGER_NONE)
      ElseIf GetGadgetState(#Option_AddKeywordsAsComments) = 1
        *Rules\SetAddDisableEnableDebugger(Rules::#DISABLE_ENABLE_DEBUGGER_COMMENTED)
      ElseIf GetGadgetState(#Option_AddKeywords) = 1
        *Rules\SetAddDisableEnableDebugger(Rules::#DISABLE_ENABLE_DEBUGGER_UNCOMMENTED)
      EndIf
      
      *This\SyntaxHighlighting\SetKeywordsInBold(GetGadgetState(#CheckBox_Keyword_Bold))
      
      *This\SyntaxHighlighting\SetDefaultForeColor(ColorPreview::CurrentColor(#PreviewColor_DefaultForeColor))
      *This\SyntaxHighlighting\SetDefaultBackColor(ColorPreview::CurrentColor(#PreviewColor_DefaultBackColor))
      *This\SyntaxHighlighting\SetCaretForeColor(ColorPreview::CurrentColor(#PreviewColor_CaretForeColor))
      *This\SyntaxHighlighting\SetCaretBackColor(ColorPreview::CurrentColor(#PreviewColor_CaretBackColor))
      *This\SyntaxHighlighting\SetSelectionForeColor(ColorPreview::CurrentColor(#PreviewColor_SelectionForeColor))
      *This\SyntaxHighlighting\SetSelectionBackColor(ColorPreview::CurrentColor(#PreviewColor_SelectionBackColor))
      *This\SyntaxHighlighting\SetLineNumbersForeColor(ColorPreview::CurrentColor(#PreviewColor_LineNumbersForeColor))
      *This\SyntaxHighlighting\SetLineNumbersBackColor(ColorPreview::CurrentColor(#PreviewColor_LineNumbersBackColor))
      *This\SyntaxHighlighting\SetFoldMarginHiBackColor(ColorPreview::CurrentColor(#PreviewColor_FoldMarginHiBackColor))
      *This\SyntaxHighlighting\SetFoldMarginLoBackColor(ColorPreview::CurrentColor(#PreviewColor_FoldMarginLoBackColor))
      *This\SyntaxHighlighting\SetFoldMarkerForeColor(ColorPreview::CurrentColor(#PreviewColor_FoldMarkerForeColor))
      *This\SyntaxHighlighting\SetFoldMarkerBackColor(ColorPreview::CurrentColor(#PreviewColor_FoldMarkerBackColor))
      *This\SyntaxHighlighting\SetLineHighlightColor(ColorPreview::CurrentColor(#PreviewColor_LineHighlightColor))
      *This\SyntaxHighlighting\SetKeywordsColor(ColorPreview::CurrentColor(#PreviewColor_KeywordsColor))
      *This\SyntaxHighlighting\SetCommentColor(ColorPreview::CurrentColor(#PreviewColor_CommentColor))
      *This\SyntaxHighlighting\SetLiteralStringColor(ColorPreview::CurrentColor(#PreviewColor_LiteralStringColor))
      *This\SyntaxHighlighting\SetNumbersColor(ColorPreview::CurrentColor(#PreviewColor_NumbersColor))
      *This\SyntaxHighlighting\SetConstantsColor(ColorPreview::CurrentColor(#PreviewColor_ConstantsColor))
      *This\SyntaxHighlighting\SetProceduresColor(ColorPreview::CurrentColor(#PreviewColor_ProceduresColor))
      *This\SyntaxHighlighting\SetSeparatorsColor(ColorPreview::CurrentColor(#PreviewColor_SeperatorsColor))
      *This\SyntaxHighlighting\SetOperatorsColor(ColorPreview::CurrentColor(#PreviewColor_OperatorsColor))
      *This\SyntaxHighlighting\SetTypesColor(ColorPreview::CurrentColor(#PreviewColor_TypesColor))
      *This\SyntaxHighlighting\SetModulesColor(ColorPreview::CurrentColor(#PreviewColor_ModulesColor))
      *This\SyntaxHighlighting\SetPointersColor(ColorPreview::CurrentColor(#PreviewColor_PointersColor))
      
      *This\SyntaxHighlighting\RefreshPrefsGroup("SyntaxHighlighting", *This\Prefs)
      
      GoScintillaSetup(*This, #Editor_Class_Members, #False)
      GoScintillaSetup(*This, #Editor_Source_Code, #False)
      GoScintillaSetup(*This, #Editor_GarbageCollector, #False)
      
    EndIf
    
    For GadgetID = #PreviewColor_DefaultForeColor To #PreviewColor_ModulesColor
      ColorPreview::Free(GadgetID)
    Next
    
    UnbindGadgetEvent(#TrackBar_Tabulation_Size, @TextFollowTrackBar()) 
    UnbindGadgetEvent(#Option_Use_ASCII_Tabulation, @TrackBarFollowOption())
    UnbindGadgetEvent(#Option_Use_NBSPACE_Tabulation, @TrackBarFollowOption())
    
    *This\OptionWin\Close()
    *This\MainWin\Hide(#False)
    
  EndProcedure
  
  Procedure TwinTextGroup(PosX.l, PosY.l, FrameID.l, LastTextID.l, FrameWidth.l = 240)
    
    FrameHeight = 25 + (((LastTextID+1) - FrameID) >> 1) * 30
    TextWidth = (FrameWidth - 15) >> 1
    
    FrameGadget(FrameID, PosX, PosY, FrameWidth, FrameHeight, "")
    PosY + 25
    FirstTextID = FrameID + 1
    
    For TextID = FirstTextID To LastTextID Step 2
      
      TextGadget(TextID, PosX + 5, PosY, TextWidth, 25, "", #PB_Text_Right)
      TextGadget(TextID+1, PosX + TextWidth + 5, PosY, TextWidth, 25, "")
      
      PosY + 30
      
    Next
    
  EndProcedure
  
  Procedure StatsRequester(*This.Members)
    
    *Stats.Stats::Stats = *This\CodeGenerator\GetStats()
    
    If *Stats\GetSampleSize() >= 10
      
      If *This\StatsWindowCounter < 3
        *This\StatsWindowCounter + 1
      Else
        
        *This\StatsWindowCounter = 0
        *This\MainWin\Hide(#True)
        
        If *This\StatsWin\OpenEx(*This\Language\Message("Dev-Object") + " - " + *This\Language\Message("Code Generator Statistics"), #PB_Window_WindowCentered, *This\MainWin\GetID())
          
          TwinTextGroup(5, 5, #Frm_Rate_Stats, #Txt_RateDeviation, 295)
          TwinTextGroup(GadgetLocate::RightOf(#Frm_Rate_Stats, 5), 5, #Frm_Time_Stats, #Txt_TimeDeviation, 295)
          
          TextGadget(#Txt_Stats_Data_Count, (*This\StatsWin\Width() - 480) >> 1, GadgetLocate::DownOf(#Frm_Rate_Stats, 5) , 480, 25, "", #PB_Text_Center)
          
          TwinTextGroup(5, GadgetLocate::DownOf(#Txt_Stats_Data_Count, 10), #Frm_Rate_Top5, #Txt_Rate_Top5_5, 295)
          TwinTextGroup(GadgetLocate::RightOf(#Frm_Rate_Top5, 5), GadgetLocate::DownOf(#Txt_Stats_Data_Count, 10), #Frm_Time_Top5, #Txt_Time_Top5_5, 295)
          
          ButtonGadget(#Btn_Stats_Close, (*This\StatsWin\Width() - 120) >> 1, *This\StatsWin\Height() - 40, 120, 30, "")
          
          *FormatReal.FormatReal::FormatReal = *This\StringUtilities\GetFormatReal()
          *FormatMilliseconds.FormatMilliseconds::FormatMilliseconds = *This\StringUtilities\GetFormatMilliseconds()
          
          SetGadgetText(#Str_BestRate, *FormatReal\DoIt(StrD(*Stats\GetBestRate(), 2)))
          SetGadgetText(#Str_MeanRate, *FormatReal\DoIt(StrD(*Stats\GetMeanRate(), 2)))
          SetGadgetText(#Str_WorstRate, *FormatReal\DoIt(StrD(*Stats\GetWorstRate(), 2)))
          SetGadgetText(#Str_RateDeviation, *FormatReal\DoIt(StrD(*Stats\GetRateDeviation(), 2)))
          SetGadgetText(#Str_BestTime, *FormatMilliseconds\DoIt(*Stats\GetBestTime()))
          SetGadgetText(#Str_MeanTime, *FormatMilliseconds\DoIt(*Stats\GetMeanTime()))
          SetGadgetText(#Str_WorstTime, *FormatMilliseconds\DoIt(*Stats\GetWorstTime()))
          SetGadgetText(#Str_TimeDeviation, *FormatMilliseconds\DoIt(*Stats\GetTimeDeviation()))
          
          NoRateID = #Txt_Rate_Top5_1
          NoTimeID = #Txt_Time_Top5_1
          
          For RatesTop5ID = 0 To 4
            
            SetGadgetText(NoRateID, Str(RatesTop5ID + 1) + "." + Chr(9))
            SetGadgetText(NoRateID + 1, *FormatReal\DoIt(StrD(*Stats\GetRatesTop5(RatesTop5ID), 2)))
            SetGadgetText(NoTimeID, Str(RatesTop5ID + 1) + "." + Chr(9))
            
            If *Stats\GetTimesTop5(RatesTop5ID) = 2147483647
              SetGadgetText(NoTimeID + 1, "")
            Else
              SetGadgetText(NoTimeID + 1, *FormatMilliseconds\DoIt(*Stats\GetTimesTop5(RatesTop5ID)))
            EndIf
            
            NoRateID + 2
            NoTimeID + 2
            
          Next
          
          SetGadgetText(#Frm_Rate_Stats, *This\Language\Message("Generation Rate (Line/Second)"))
          SetGadgetText(#Txt_BestRate, *This\Language\Message("Best") + " : ")
          SetGadgetText(#Txt_MeanRate, *This\Language\Message("Average") + " : ")
          SetGadgetText(#Txt_WorstRate, *This\Language\Message("Worst") + " : ")
          SetGadgetText(#Txt_RateDeviation, *This\Language\Message("Standard Deviation") + " : ")
          
          SetGadgetText(#Frm_Time_Stats, *This\Language\Message("Generation Time (Second)"))
          SetGadgetText(#Txt_BestTime, *This\Language\Message("Best") + " : ")
          SetGadgetText(#Txt_MeanTime, *This\Language\Message("Average") + " : ")
          SetGadgetText(#Txt_WorstTime, *This\Language\Message("Worst") + " : ")
          SetGadgetText(#Txt_TimeDeviation, *This\Language\Message("Standard Deviation") + " : ")
          
          SetGadgetText(#Txt_Stats_Data_Count, ReplaceString(*This\Language\Message("Statistics based on last %X% code generations"), "%X%", Str(*Stats\GetSampleSize())))
          SetGadgetText(#Frm_Rate_Top5, *This\Language\Message("Top 5 (Line/Second)"))
          SetGadgetText(#Frm_Time_Top5, *This\Language\Message("Top 5 (Second)"))
          
          SetGadgetText(#Btn_Stats_Close, *This\Language\Message("Close"))
          
        EndIf
        
      EndIf
      
    EndIf
     
  EndProcedure
  
  Procedure AskNewColor(GadgetID)
    
    NewColor.l = ColorRequester(ColorPreview::CurrentColor(GadgetID))
    
    If NewColor <> -1
      ColorPreview::CurrentColor(GadgetID, NewColor)
    EndIf
    
  EndProcedure
  
  Procedure AskSavePath(*This.Members, Mode.i)
    
    If Mode = 0
      
      NewPath.s = PathRequester(*This\Language\Message("Select folder"),  *This\Options\GetProjectSavePath())
      
      If NewPath <> ""
        SetGadgetText(#String_Project_SavePath, NewPath)
      EndIf 
      
    ElseIf Mode = 1
      
      NewPath.s = PathRequester(*This\Language\Message("Select folder"),  *This\Options\GetSourceSavePath())
      
      If NewPath <> ""
        SetGadgetText(#String_Source_SavePath, NewPath)
      EndIf 
      
    EndIf
    
  EndProcedure
  
  Procedure AskNewFont()
    
    If FontRequester(GetGadgetText(#String_Editor_FontName), Val(GetGadgetText(#String_Editor_FontSize)), #PB_FontRequester_Effects)
      
      SetGadgetText(#String_Editor_FontName, SelectedFontName())
      SetGadgetText(#String_Editor_FontSize, Str(SelectedFontSize()))
      
    EndIf 
    
  EndProcedure 
 
  Procedure AskDateMaskEditor(*This.Members)
    
    *DateFormatting.DateFormatting::DateFormatting = *This\CodeGenerator\GetDateFormatting()
    
    Handle = OpenWindow(#PB_Any, 0, 0, 345, 460, *This\Language\Message("Date Mask Editor"), #PB_Window_WindowCentered, *This\MainWin\GetID())
    
    If IsWindow(Handle)
      
      *This\OptionWin\Hide(#True)
      
      FrameGadget(#PB_Any, 5, 5, 335, 305, *This\Language\Message("Mask parts"))
      TextGadget(#PB_Any, 10, 30, 325, 25, "%dd : " + *This\Language\Message("2 digits day"), #PB_Text_Center)
      TextGadget(#PB_Any, 10, 55, 325, 25, "%sdd : " + *This\Language\Message("3 characters day name"), #PB_Text_Center)
      TextGadget(#PB_Any, 10, 80, 325, 25, "%ldd : " + *This\Language\Message("Long day name"), #PB_Text_Center)
      TextGadget(#PB_Any, 10, 105, 325, 25, "%ord : " + *This\Language\Message("Ordinal"), #PB_Text_Center)
      TextGadget(#PB_Any, 10, 130, 325, 25, "%mm : " + *This\Language\Message("2 digits month"), #PB_Text_Center)
      TextGadget(#PB_Any, 10, 155, 325, 25, "%smm : " + *This\Language\Message("3 characters month name"), #PB_Text_Center)
      TextGadget(#PB_Any, 10, 180, 325, 25, "%lmm : " + *This\Language\Message("Long month name"), #PB_Text_Center)
      TextGadget(#PB_Any, 10, 205, 325, 25, "%yyyy : " + *This\Language\Message("4 digits year"), #PB_Text_Center)
      TextGadget(#PB_Any, 10, 230, 325, 25, "%hh : " + *This\Language\Message("2 digits hours"), #PB_Text_Center)
      TextGadget(#PB_Any, 10, 255, 325, 25, "%ii : " + *This\Language\Message("2 digits minutes"), #PB_Text_Center)
      TextGadget(#PB_Any, 10, 280, 325, 25, "%ss : " + *This\Language\Message("2 digits seconds"), #PB_Text_Center)
      
      FrameGadget(#PB_Any, 5, 315, 335, 100, *This\Language\Message("Definition"))
      MaskPreview = TextGadget(#PB_Any, 10, 340, 325, 34, "", #PB_Text_Center|#PB_Text_Border)
      MaskEdit = StringGadget(#PB_Any, 10, 375, 325, 34, "")
      
      Button_OK = ButtonGadget(#PB_Any, 5, 420, 165, 34, *This\Language\Message("OK"))
      Button_Cancel = ButtonGadget(#PB_Any, 175, 420, 165, 34, *This\Language\Message("Cancel"))
      
      AddKeyboardShortcut(Handle, #PB_Shortcut_Escape, 123)
      
      Repeat
        
        Select WaitWindowEvent()
            
          Case #PB_Event_CloseWindow
            
            Select EventWindow()
                
              Case Handle
                RemoveKeyboardShortcut(Handle, #PB_Shortcut_Escape)
                CloseWindow(Handle)
                Break
                
            EndSelect
            
          Case #PB_Event_Menu
            
            Select EventMenu()
                
              Case 123
                RemoveKeyboardShortcut(Handle, #PB_Shortcut_Escape)
                CloseWindow(Handle)
                Break
                
            EndSelect
            
          Case #PB_Event_Gadget
            
            Select EventGadget()
                
              Case MaskEdit
                SetGadgetText(MaskPreview, *DateFormatting\Format(GetGadgetText(MaskEdit), Date(Year(Date()), Month(Date()), 1, Hour(Date()), Minute(Date()), Second(Date()))))
                
              Case Button_OK
                RemoveKeyboardShortcut(Handle, #PB_Shortcut_Escape)
                DateMask.s = GetGadgetText(MaskEdit)
                CloseWindow(Handle)
                Break
                
              Case Button_Cancel
                RemoveKeyboardShortcut(Handle, #PB_Shortcut_Escape)
                CloseWindow(Handle)
                Break
                
            EndSelect
            
        EndSelect
        
      ForEver
      
      *This\OptionWin\Hide(#False)
      
    EndIf
    
    If DateMask <> ""
      
      *Comments.Comments::Comments = *This\CodeGenerator\GetComments()
      
      *Comments\AddDateMask(DateMask)
      ClearGadgetItems(#ComboBox_Date_Format)
      
      *Comments\ResetDateMask()
      
      While *Comments\NextDateMask()
        AddGadgetItem(#ComboBox_Date_Format, *Comments\DateMaskIndex(), *DateFormatting\Format(*Comments\GetDateMask(), Date()))  
      Wend
      
      SetGadgetState(#ComboBox_Date_Format, *Comments\GetSelectedDateMask())
      
    EndIf
    
  EndProcedure
  
  Procedure DeleteSelectedDateMask(*This.Members)
    
    If MessageRequester(*This\Language\Message("Dev-Module - Warning"), ReplaceString(*This\Language\Message("You are about to delete the date mask : %DATE_MASK%. Would you like to continue ?"), "%DATE_MASK%", Chr(34) + GetGadgetItemText(#ComboBox_Date_Format, GetGadgetState(#ComboBox_Date_Format)) + Chr(34)), #PB_MessageRequester_YesNo) = 6
      
      *DateFormatting.DateFormatting::DateFormatting = *This\CodeGenerator\GetDateFormatting() 
      *Comments.Comments::Comments = *This\CodeGenerator\GetComments()
      
      *Comments\RemoveDateMask(GetGadgetState(#ComboBox_Date_Format))
      ClearGadgetItems(#ComboBox_Date_Format)
      
      *Comments\ResetDateMask()
      
      While *Comments\NextDateMask()
        AddGadgetItem(#ComboBox_Date_Format, *Comments\DateMaskIndex(), *DateFormatting\Format(*Comments\GetDateMask(), Date()))  
      Wend
      
      SetGadgetState(#ComboBox_Date_Format, *Comments\GetSelectedDateMask())
      
      If *Comments\DateMaskSize() = 0
        MessageRequester(*This\Language\Message("Dev-Object - Error"), *This\Language\Message("No Date Mask !"))
      EndIf
      
    EndIf
    
  EndProcedure
  
  Procedure CustomFileLibs_To_GUI(*This.Members)
    
    *CustomFileLibs.CustomFileLibs::CustomFileLibs = *This\CodeGenerator\GetCustomFileLibs()
    
    If *CustomFileLibs\CustomFileLibsSize() = 0
      
      DisableGadget(#CheckBox_ReadWriteEncodedCrypted, #True)
      DisableGadget(#CheckBox_CreateEncodedCryptedFile, #True)
      DisableGadget(#CheckBox_OpenEncodedCryptedFile, #True)
      DisableGadget(#CheckBox_ReadEncodedCryptedFile, #True)
      DisableGadget(#CheckBox_AddEncodedCryptedFileFormatID, #True)
      DisableGadget(#Button_EncodedCrypted_Remove_File, #True)
      
    Else
      
      DisableGadget(#CheckBox_ReadWriteEncodedCrypted, #False)
      DisableGadget(#CheckBox_CreateEncodedCryptedFile, #False)
      DisableGadget(#CheckBox_OpenEncodedCryptedFile, #False)
      DisableGadget(#CheckBox_ReadEncodedCryptedFile, #False)
      DisableGadget(#CheckBox_AddEncodedCryptedFileFormatID, #False)
      DisableGadget(#Button_EncodedCrypted_Remove_File, #False)
      
      ClearGadgetItems(#ComboBox_EncodedCrypted_Files)
      
      *CustomFileLibs\SortCustomFileLibsByDisplayName()
      
      *CustomFileLibs\ResetCustomFileLibs()
      
      While *CustomFileLibs\NextCustomFileLibs()
        
        *CustomFileLib.CustomFileLib::CustomFileLib = *CustomFileLibs\GetCustomFileLibs()
        AddGadgetItem(#ComboBox_EncodedCrypted_Files, -1, *CustomFileLib\GetDisplayName())
        
      Wend
      
      *CustomFileLibs\FirstCustomFileLibs()
      SetGadgetState(#ComboBox_EncodedCrypted_Files, 0)
      
    EndIf
    
  EndProcedure
  
  Procedure RemoveCustomLibs(*This.Members)
    
    *CustomFileLibs.CustomFileLibs::CustomFileLibs = *This\CodeGenerator\GetCustomFileLibs()
    
    If *CustomFileLibs\CustomFileLibsSize() > 0
      CurrentLibID.l = GetGadgetState(#ComboBox_EncodedCrypted_Files)
      *CustomFileLibs\SelectCustomFileLibs(CurrentLibID)
      *CustomFileLibs\DeleteCustomFileLibs()
      *CustomFileLibs\RefreshPrefsGroup("CustomFileLibs", *This\Prefs)
      RemoveGadgetItem(#ComboBox_EncodedCrypted_Files, CurrentLibID)
    EndIf
    
    CustomFileLibs_To_GUI(*This)
    
  EndProcedure
  
  Procedure AddCustomLibs(*This.Members) 
    
    LibFileName.s = OpenFileRequester(*This\Language\Message("Select library source to open"), GetHomeDirectory(), *This\Language\Message("PureBasic SourceCode (*.pb)|*.pb"), 1)
    
    If LibFileName <> ""
      
      CustomFileLib.CustomFileLib::CustomFileLib = CustomFileLib::New(LibFileName)
      CustomFileLib\LibraryAnalyzer()
      
      If CustomFileLib\IsValid()
        *CustomFileLibs.CustomFileLibs::CustomFileLibs = *This\CodeGenerator\GetCustomFileLibs()
        *CustomFileLibs\AddCustomFileLibs()
        *CustomFileLibs\SetCustomFileLibs(CustomFileLib)
        *CustomFileLibs\RefreshPrefsGroup("CustomFileLibs", *This\Prefs)
        CustomFileLibs_To_GUI(*This)
      Else
        CustomFileLib\Free()
      EndIf
      
    EndIf
    
  EndProcedure
  
  Procedure SelectCustomLibs(*This.Members)
    
    *CustomFileLibs.CustomFileLibs::CustomFileLibs = *This\CodeGenerator\GetCustomFileLibs()
    *CustomFileLibs\SelectCustomFileLibs(GetGadgetState(#ComboBox_EncodedCrypted_Files))
    
  EndProcedure
  
  Procedure ClipBoardManager()
    
    Select GetGadgetState(#Panel)
        
      Case 0, 1, 2, 3, 4
        SetClipboardText(GoScintilla::GetText(#Editor_Source_Code))
        
      Case 5
        SetClipboardText(GoScintilla::GetText(#Editor_GarbageCollector))
        
    EndSelect
    
  EndProcedure
  
  Procedure SourceCheckerManager(*This.Members)
    
    Select EventType() 
        
      Case #PB_EventType_LeftDoubleClick
        
        SelectedItem.l = GetGadgetState(#ListIcon_Sources)
        
        If SelectedItem >= 0
          
          If GetGadgetItemData(#ListIcon_Sources, SelectedItem) = #True
            
            If *This\Checker\SelectSources(SelectedItem)
              
              *Comments.Comments::Comments = *This\CodeGenerator\GetComments()
              *CheckerSource.CheckerSource::CheckerSource = *This\Checker\GetSources()
              
              If *CheckerSource\ErrorsSize() = 1
                Title.s = *CheckerSource\GetFileName() + " - " + Str(*CheckerSource\ErrorsSize()) + " " + *This\Language\Message("Error")
              Else
                Title.s = *CheckerSource\GetFileName() + " - " + Str(*CheckerSource\ErrorsSize()) + " " + *This\Language\Message("Errors")
              EndIf
              
              *CheckerSource\ResetErrors()
              
              While *CheckerSource\NextErrors()
                
                *CheckerError.CheckerError::CheckerError = *CheckerSource\GetErrors()
                
                Select *CheckerError\GetType()
                    
                  Case CheckerError::#TYPE_INTERFACE_VT_METHODS_SIZE_MISMATCH
                    ErrorType.s = *This\Language\Message("The number of methods differ")
                    
                  Case CheckerError::#TYPE_METHODS_SPELLING_ERROR
                    ErrorType.s = *This\Language\Message("Spelling error")
                    
                  Case CheckerError::#TYPE_PARAMETER_COUNT_MISMATCH
                    ErrorType.s = *This\Language\Message("The number of parameters differ")
                    
                  Case CheckerError::#TYPE_PARAMETER_TYPE_MISMATCH
                    ErrorType.s = *This\Language\Message("The parameters type differ")
                    
                  Case CheckerError::#TYPE_RETURN_TYPE_MISMATCH
                    ErrorType.s = *This\Language\Message("The return type differ")
                    
                EndSelect
                
                Message.s + ErrorType + *Comments\LineFeed() + *CheckerError\GetDescription() + *Comments\LineFeed()
                
              Wend
              
              MessageRequester(Title, Message)
              
            EndIf
            
          EndIf
          
        EndIf
        
      ; Case #PB_EventType_RightClick
        
    EndSelect
    
  EndProcedure
  
  Procedure CreateWindow(*This.Members)
    
    If *This\MainWin\Open()
      
      CompilerSelect #PB_Compiler_OS
          
        CompilerCase #PB_OS_Windows 
          
          If InitScintilla() = 0
            CompilerIf #PB_Compiler_Debugger
              DebuggerError("Dev-Object - Fatal Error - Impossible To Initialize Scintilla !")
            CompilerElse 
              MessageRequester("Dev-Object - Fatal Error", "Impossible to Initialize Scintilla !")
              End
            CompilerEndIf
          EndIf
          
          PanelGadget(#Panel, 5, 5, *This\MainWin\Width()-65, *This\MainWin\Height()-10)
            
            AddGadgetItem(#Panel, 0, "")
            
            TextGadget(#Text_Module_Name, 5, 10, 125, 25, "")
            StringGadget(#String_Module_Name, GadgetLocate::RightOf(#Text_Module_Name, 5), 5, 300, 25, "")
            ComboBoxGadget(#ComboBox_License, GadgetLocate::RightOf(#String_Module_Name, 5), 5, 285, 25)
            
            GoScintilla::Gadget(#Editor_Class_Members, 5, 40, 720, 520, 0, GoScintilla::#AUTOSIZE_LINE_NUMBERS_MARGIN | GoScintilla::#KEYWORDS_CASE_SENSITIVE)
            
            AddGadgetItem(#Panel, 1, "")
            
            FrameGadget(#Frame_Basic_Methods, 5, 5, 235, 175, "")
            CheckBoxGroup::Vertical(#CheckBox_Getters, #CheckBox_Access, 10, 25, 215, 25, 0)
            
            FrameGadget(#Frame_Maths_Methods, 5, GadgetLocate::DownOf(#Frame_Basic_Methods, 5), 235, 350, "")
            CheckBoxGroup::Vertical(#CheckBox_Equal, #CheckBox_Lerp, GadgetX(#Frame_Maths_Methods) + 5, GadgetY(#Frame_Maths_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_Memory_Methods, GadgetLocate::RightOf(#Frame_Basic_Methods, 5), 5, 235, 100, "")
            CheckBoxGroup::Vertical(#CheckBox_Copy, #CheckBox_Swapping, GadgetX(#Frame_Memory_Methods) + 5, GadgetY(#Frame_Memory_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_DynamicArray_Methods, GadgetLocate::RightOf(#Frame_Basic_Methods, 5), GadgetLocate::DownOf(#Frame_Memory_Methods, 5), 235, 175, "")
            CheckBoxGroup::Vertical(#CheckBox_DynamicArray_Sort, #CheckBox_DynamicArray_Size, GadgetX(#Frame_DynamicArray_Methods) + 5, GadgetY(#Frame_DynamicArray_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_Map_Methods, GadgetLocate::RightOf(#Frame_Basic_Methods, 5), GadgetLocate::DownOf(#Frame_DynamicArray_Methods, 5), 235, 250, "")
            CheckBoxGroup::Vertical(#CheckBox_Map_Add, #CheckBox_Map_Key, GadgetX(#Frame_Map_Methods) + 5, GadgetY(#Frame_Map_Methods) + 20, 150, 25, 0)
            
            FrameGadget(#Frame_LinkedList_Methods, GadgetLocate::RightOf(#Frame_DynamicArray_Methods, 5), 5 , 235, 500, "")
            CheckBoxGroup::Vertical(#CheckBox_LinkedList_Sort, #CheckBox_LinkedList_Merge, GadgetX(#Frame_LinkedList_Methods) + 5, GadgetY(#Frame_LinkedList_Methods) + 20, 215, 25, 0)
            
            AddGadgetItem(#Panel, 2, "")
            
            FrameGadget(#Frame_Static_Array, 5, 5, 235, 150, "")
            CheckBoxGroup::Vertical(#CheckBox_QuickSortAscending, #CheckBox_FixedLengthQueue, GadgetX(#Frame_Static_Array) + 5, GadgetY(#Frame_Static_Array) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_BinaryFile_Methods, GadgetLocate::RightOf(#Frame_Static_Array, 5), 5, 235, 150, "")
            CheckBoxGroup::Vertical(#CheckBox_ReadWriteBinary, #CheckBox_AddBinaryFileFormatID, GadgetX(#Frame_BinaryFile_Methods) + 5, GadgetY(#Frame_BinaryFile_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_EncodedCryptedFile_Methods, GadgetLocate::RightOf(#Frame_Static_Array, 5), GadgetLocate::DownOf(#Frame_BinaryFile_Methods, 5), 235, 230, "")
            CheckBoxGroup::Vertical(#CheckBox_ReadWriteEncodedCrypted, #CheckBox_AddEncodedCryptedFileFormatID, GadgetX(#Frame_EncodedCryptedFile_Methods) + 5, GadgetY(#Frame_EncodedCryptedFile_Methods) + 20, 215, 25, 0)
            ComboBoxGadget(#ComboBox_EncodedCrypted_Files, GadgetX(#Frame_EncodedCryptedFile_Methods) + 5, GadgetLocate::DownOf(#CheckBox_AddEncodedCryptedFileFormatID, 5), 225, 34)            
            ButtonGroup::Horizontal(#Button_EncodedCrypted_Add_File, #Button_EncodedCrypted_Remove_File, GadgetX(#Frame_EncodedCryptedFile_Methods) + 5, GadgetLocate::DownOf(#ComboBox_EncodedCrypted_Files, 5), 110, 34)
            
            FrameGadget(#Frame_Preference_Methods, 5, GadgetLocate::DownOf(#Frame_Static_Array, 5), 235, 75, "")
            CheckBoxGroup::Vertical(#CheckBox_Preference_Group, #CheckBox_Preference_File, GadgetX(#Frame_Preference_Methods) + 5, GadgetY(#Frame_Preference_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_XML_Methods, 5, GadgetLocate::DownOf(#Frame_Preference_Methods, 5), 235, 150, "")
            CheckBoxGroup::Vertical(#CheckBox_XML_Node_With_Childs, #CheckBox_XML_Catch_File, GadgetX(#Frame_XML_Methods) + 5, GadgetY(#Frame_XML_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_JSON_Methods, 5, GadgetLocate::DownOf(#Frame_XML_Methods, 5), 235, 100, "")
            CheckBoxGroup::Vertical(#CheckBox_JSON_IE_Object, #CheckBox_JSON_Catch_File, GadgetX(#Frame_JSON_Methods) + 5, GadgetY(#Frame_JSON_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_CustomPrefs_Methods, GadgetLocate::RightOf(#Frame_BinaryFile_Methods, 5), 5, 235, 100, "")
            CheckBoxGroup::Vertical(#CheckBox_CustomPrefs_AE_Group, #CheckBox_CustomPrefs_File, GadgetX(#Frame_CustomPrefs_Methods) + 5, GadgetY(#Frame_CustomPrefs_Methods) + 20, 215, 25, 0)
            
            AddGadgetItem(#Panel, 3, "")
            GoScintilla::Gadget(#Editor_Source_Code, 5, 5, 720, 555, 0, GoScintilla::#AUTOSIZE_LINE_NUMBERS_MARGIN | GoScintilla::#KEYWORDS_CASE_SENSITIVE)
            
            AddGadgetItem(#Panel, 4, "")
            
            ComboBoxGadget(#ComboBox_Help, 5, 5, 720, 30)
            
            If MarkDown::Gadget(#MarkDown_Help, 5, 40, 720, 518, MarkDown::#AutoResize)
              MarkDown::SetFont(#MarkDown_Help, "Arial", 10)
              MarkDown::SetAttribute(#MarkDown_Help, MarkDown::#ScrollBar, MarkDown::#ScrollBar_DragPoint)
            EndIf
            
            AddGadgetItem(#Panel, 5, "")
            
            PanelGadget(#Panel_Tools, 5, 5, 722, 540)
              
              AddGadgetItem(#Panel_Tools, 0, "")
              ListIconGadget(#ListIcon_Sources, 5, 5, 710, 490, "", 710-250, #PB_ListIcon_GridLines)
              AddGadgetColumn(#ListIcon_Sources, 1, "", 250)
              
              AddGadgetItem(#Panel_Tools, 1, "")
              
              GoScintilla::Gadget(#Editor_GarbageCollector, 5, 5, 710, 490, 0, GoScintilla::#AUTOSIZE_LINE_NUMBERS_MARGIN | GoScintilla::#KEYWORDS_CASE_SENSITIVE)
              
            CloseGadgetList()
            
          CloseGadgetList()
          
          ButtonImageGroup::Vertical(#Button_PushPin, #Button_Quit, GadgetLocate::RightOf(#Panel, 5), 5, 50, 50, 2)
          
        CompilerCase #PB_OS_Linux
          
          PanelGadget(#Panel, 5, 5, *This\MainWin\Width()-65, *This\MainWin\Height()-10)
            
            AddGadgetItem(#Panel, 0, "")
            TextGadget(#Text_Module_Name, 5, 10, 125, 34, "")
            StringGadget(#String_Module_Name, GadgetLocate::RightOf(#Text_Module_Name, 5), 5, 300, 34, "")
            ComboBoxGadget(#ComboBox_License, GadgetLocate::RightOf(#String_Module_Name, 5), 5, 290, 34)
            
            GoScintilla::Gadget(#Editor_Class_Members, 5, 45, 725, 500, 0, GoScintilla::#AUTOSIZE_LINE_NUMBERS_MARGIN | GoScintilla::#KEYWORDS_CASE_SENSITIVE)
            
            AddGadgetItem(#Panel, 1, "")
            
            FrameGadget(#Frame_Basic_Methods, 5, 5, 235, 175, "")
            CheckBoxGroup::Vertical(#CheckBox_Getters, #CheckBox_Access, 10, 25, 215, 25, 0)
            
            FrameGadget(#Frame_Maths_Methods, 5, GadgetLocate::DownOf(#Frame_Basic_Methods, 5), 235, 350, "")
            CheckBoxGroup::Vertical(#CheckBox_Equal, #CheckBox_Lerp, GadgetX(#Frame_Maths_Methods) + 5, GadgetY(#Frame_Maths_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_Memory_Methods, GadgetLocate::RightOf(#Frame_Basic_Methods, 5), 5, 235, 100, "")
            CheckBoxGroup::Vertical(#CheckBox_Copy, #CheckBox_Swapping, GadgetX(#Frame_Memory_Methods) + 5, GadgetY(#Frame_Memory_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_DynamicArray_Methods, GadgetLocate::RightOf(#Frame_Basic_Methods, 5), GadgetLocate::DownOf(#Frame_Memory_Methods, 5), 235, 175, "")
            CheckBoxGroup::Vertical(#CheckBox_DynamicArray_Sort, #CheckBox_DynamicArray_Size, GadgetX(#Frame_DynamicArray_Methods) + 5, GadgetY(#Frame_DynamicArray_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_Map_Methods, GadgetLocate::RightOf(#Frame_Basic_Methods, 5), GadgetLocate::DownOf(#Frame_DynamicArray_Methods, 5), 235, 250, "")
            CheckBoxGroup::Vertical(#CheckBox_Map_Add, #CheckBox_Map_Key, GadgetX(#Frame_Map_Methods) + 5, GadgetY(#Frame_Map_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_LinkedList_Methods, GadgetLocate::RightOf(#Frame_DynamicArray_Methods, 5), 5 , 235, 500, "")
            CheckBoxGroup::Vertical(#CheckBox_LinkedList_Sort, #CheckBox_LinkedList_Merge, GadgetX(#Frame_LinkedList_Methods) + 5, GadgetY(#Frame_LinkedList_Methods) + 20, 215, 25, 0)
            
            AddGadgetItem(#Panel, 2, "")
            
            FrameGadget(#Frame_Static_Array, 5, 5, 235, 150, "")
            CheckBoxGroup::Vertical(#CheckBox_QuickSortAscending, #CheckBox_FixedLengthQueue, GadgetX(#Frame_Static_Array) + 5, GadgetY(#Frame_Static_Array) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_BinaryFile_Methods, GadgetLocate::RightOf(#Frame_Static_Array, 5), 5, 235, 150, "")
            CheckBoxGroup::Vertical(#CheckBox_ReadWriteBinary, #CheckBox_AddBinaryFileFormatID, GadgetX(#Frame_BinaryFile_Methods) + 5, GadgetY(#Frame_BinaryFile_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_EncodedCryptedFile_Methods, GadgetLocate::RightOf(#Frame_Static_Array, 5), GadgetLocate::DownOf(#Frame_BinaryFile_Methods, 5), 235, 230, "")
            CheckBoxGroup::Vertical(#CheckBox_ReadWriteEncodedCrypted, #CheckBox_AddEncodedCryptedFileFormatID, GadgetX(#Frame_EncodedCryptedFile_Methods) + 5, GadgetY(#Frame_EncodedCryptedFile_Methods) + 20, 215, 25, 0)
            ComboBoxGadget(#ComboBox_EncodedCrypted_Files, GadgetX(#Frame_EncodedCryptedFile_Methods) + 5, GadgetLocate::DownOf(#CheckBox_AddEncodedCryptedFileFormatID, 5), 225, 34)            
            ButtonGroup::Horizontal(#Button_EncodedCrypted_Add_File, #Button_EncodedCrypted_Remove_File, GadgetX(#Frame_EncodedCryptedFile_Methods) + 5, GadgetLocate::DownOf(#ComboBox_EncodedCrypted_Files, 5), 110, 34)
            
            FrameGadget(#Frame_Preference_Methods, 5, GadgetLocate::DownOf(#Frame_Static_Array, 5), 235, 75, "")
            CheckBoxGroup::Vertical(#CheckBox_Preference_Group, #CheckBox_Preference_File, GadgetX(#Frame_Preference_Methods) + 5, GadgetY(#Frame_Preference_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_XML_Methods, 5, GadgetLocate::DownOf(#Frame_Preference_Methods, 5), 235, 150, "")
            CheckBoxGroup::Vertical(#CheckBox_XML_Node_With_Childs, #CheckBox_XML_Catch_File, GadgetX(#Frame_XML_Methods) + 5, GadgetY(#Frame_XML_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_JSON_Methods, 5, GadgetLocate::DownOf(#Frame_XML_Methods, 5), 235, 100, "")
            CheckBoxGroup::Vertical(#CheckBox_JSON_IE_Object, #CheckBox_JSON_Catch_File, GadgetX(#Frame_JSON_Methods) + 5, GadgetY(#Frame_JSON_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_CustomPrefs_Methods, GadgetLocate::RightOf(#Frame_BinaryFile_Methods, 5), 5, 235, 100, "")
            CheckBoxGroup::Vertical(#CheckBox_CustomPrefs_AE_Group, #CheckBox_CustomPrefs_File, GadgetX(#Frame_CustomPrefs_Methods) + 5, GadgetY(#Frame_CustomPrefs_Methods) + 20, 215, 25, 0)
            
            AddGadgetItem(#Panel, 3, "")
            GoScintilla::Gadget(#Editor_Source_Code, 5, 5, 725, 540, 0, GoScintilla::#AUTOSIZE_LINE_NUMBERS_MARGIN | GoScintilla::#KEYWORDS_CASE_SENSITIVE)
            
            AddGadgetItem(#Panel, 4, "")
            
            ComboBoxGadget(#ComboBox_Help, 5, 5, 722, 34)
            
            If MarkDown::Gadget(#MarkDown_Help, 5, 44, 722, 500, MarkDown::#AutoResize)
              MarkDown::SetFont(#MarkDown_Help, "Ubuntu", 10)
              MarkDown::SetAttribute(#MarkDown_Help, MarkDown::#ScrollBar, MarkDown::#ScrollBar_DragPoint)
            EndIf
            
            AddGadgetItem(#Panel, 5, "")
            
            PanelGadget(#Panel_Tools, 5, 5, 722, 540)
              
              AddGadgetItem(#Panel_Tools, 0, "")
              ListIconGadget(#ListIcon_Sources, 5, 5, 710, 490, "", 710-250, #PB_ListIcon_GridLines)
              AddGadgetColumn(#ListIcon_Sources, 1, "", 250)
              
              AddGadgetItem(#Panel_Tools, 1, "")
              
              GoScintilla::Gadget(#Editor_GarbageCollector, 5, 5, 710, 490, 0, GoScintilla::#AUTOSIZE_LINE_NUMBERS_MARGIN | GoScintilla::#KEYWORDS_CASE_SENSITIVE)
              
            CloseGadgetList()
            
          CloseGadgetList()
          
          ButtonImageGroup::Vertical(#Button_PushPin, #Button_Quit, GadgetLocate::RightOf(#Panel, 5), 5, 50, 50, 2)
          
        CompilerCase #PB_OS_MacOS ; Maybe the interface need some adjustment 
          
          PanelGadget(#Panel, 5, 5, *This\MainWin\Width()-65, *This\MainWin\Height()-10)
            
            AddGadgetItem(#Panel, 0, "")
            TextGadget(#Text_Module_Name, 5, 10, 125, 34, "")
            StringGadget(#String_Module_Name, GadgetLocate::RightOf(#Text_Module_Name, 5), 5, 300, 34, "")
            ComboBoxGadget(#ComboBox_License, GadgetLocate::RightOf(#String_Module_Name, 5), 5, 290, 25)
            
            GoScintilla::Gadget(#Editor_Class_Members, 5, 45, 725,500, 0, GoScintilla::#AUTOSIZE_LINE_NUMBERS_MARGIN | GoScintilla::#KEYWORDS_CASE_SENSITIVE)
            
            AddGadgetItem(#Panel, 1, "")
            
            FrameGadget(#Frame_Basic_Methods, 5, 5, 235, 175, "")
            CheckBoxGroup::Vertical(#CheckBox_Getters, #CheckBox_Access, 10, 25, 215, 25, 0)
            
            FrameGadget(#Frame_Maths_Methods, 5, GadgetLocate::DownOf(#Frame_Basic_Methods, 5), 235, 350, "")
            CheckBoxGroup::Vertical(#CheckBox_Equal, #CheckBox_Lerp, GadgetX(#Frame_Maths_Methods) + 5, GadgetY(#Frame_Maths_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_Memory_Methods, GadgetLocate::RightOf(#Frame_Basic_Methods, 5), 5, 235, 100, "")
            CheckBoxGroup::Vertical(#CheckBox_Copy, #CheckBox_Swapping, GadgetX(#Frame_Memory_Methods) + 5, GadgetY(#Frame_Memory_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_DynamicArray_Methods, GadgetLocate::RightOf(#Frame_Basic_Methods, 5), GadgetLocate::DownOf(#Frame_Memory_Methods, 5), 235, 175, "")
            CheckBoxGroup::Vertical(#CheckBox_DynamicArray_Sort, #CheckBox_DynamicArray_Size, GadgetX(#Frame_DynamicArray_Methods) + 5, GadgetY(#Frame_DynamicArray_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_Map_Methods, GadgetLocate::RightOf(#Frame_Basic_Methods, 5), GadgetLocate::DownOf(#Frame_DynamicArray_Methods, 5), 235, 250, "")
            CheckBoxGroup::Vertical(#CheckBox_Map_Add, #CheckBox_Map_Key, GadgetX(#Frame_Map_Methods) + 5, GadgetY(#Frame_Map_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_LinkedList_Methods, GadgetLocate::RightOf(#Frame_DynamicArray_Methods, 5), 5 , 235, 500, "")
            CheckBoxGroup::Vertical(#CheckBox_LinkedList_Sort, #CheckBox_LinkedList_Merge, GadgetX(#Frame_LinkedList_Methods) + 5, GadgetY(#Frame_LinkedList_Methods) + 20, 215, 25, 0)
            
            AddGadgetItem(#Panel, 2, "")
            
            FrameGadget(#Frame_Static_Array, 5, 5, 235, 150, "")
            CheckBoxGroup::Vertical(#CheckBox_QuickSortAscending, #CheckBox_FixedLengthQueue, GadgetX(#Frame_Static_Array) + 5, GadgetY(#Frame_Static_Array) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_BinaryFile_Methods, 5, GadgetLocate::DownOf(#Frame_Static_Array, 5), 235, 150, "")
            CheckBoxGroup::Vertical(#CheckBox_ReadWriteBinary, #CheckBox_AddBinaryFileFormatID, GadgetX(#Frame_BinaryFile_Methods) + 5, GadgetY(#Frame_BinaryFile_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_EncodedCryptedFile_Methods, GadgetLocate::RightOf(#Frame_Static_Array, 5), GadgetLocate::DownOf(#Frame_BinaryFile_Methods, 5), 235, 230, "")
            CheckBoxGroup::Vertical(#CheckBox_ReadWriteEncodedCrypted, #CheckBox_AddEncodedCryptedFileFormatID, GadgetX(#Frame_EncodedCryptedFile_Methods) + 5, GadgetY(#Frame_EncodedCryptedFile_Methods) + 20, 215, 25, 0)
            ComboBoxGadget(#ComboBox_EncodedCrypted_Files, GadgetX(#Frame_EncodedCryptedFile_Methods) + 5, GadgetLocate::DownOf(#CheckBox_AddEncodedCryptedFileFormatID, 5), 225, 34)            
            ButtonGroup::Horizontal(#Button_EncodedCrypted_Add_File, #Button_EncodedCrypted_Remove_File, GadgetX(#Frame_EncodedCryptedFile_Methods) + 5, GadgetLocate::DownOf(#ComboBox_EncodedCrypted_Files, 5), 110, 34)
            
            FrameGadget(#Frame_Preference_Methods, 5, GadgetLocate::DownOf(#Frame_BinaryFile_Methods, 5), 235, 75, "")
            CheckBoxGroup::Vertical(#CheckBox_Preference_Group, #CheckBox_Preference_File, GadgetX(#Frame_Preference_Methods) + 5, GadgetY(#Frame_Preference_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_XML_Methods, 5, GadgetLocate::DownOf(#Frame_Preference_Methods, 5), 235, 150, "")
            CheckBoxGroup::Vertical(#CheckBox_XML_Node_With_Childs, #CheckBox_XML_Catch_File, GadgetX(#Frame_XML_Methods) + 5, GadgetY(#Frame_XML_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_JSON_Methods, 5, GadgetLocate::DownOf(#Frame_XML_Methods, 5), 235, 100, "")
            CheckBoxGroup::Vertical(#CheckBox_JSON_IE_Object, #CheckBox_JSON_Catch_File, GadgetX(#Frame_JSON_Methods) + 5, GadgetY(#Frame_JSON_Methods) + 20, 215, 25, 0)
            
            FrameGadget(#Frame_CustomPrefs_Methods, GadgetLocate::RightOf(#Frame_BinaryFile_Methods, 5), 5, 235, 100, "")
            CheckBoxGroup::Vertical(#CheckBox_CustomPrefs_AE_Group, #CheckBox_CustomPrefs_File, GadgetX(#Frame_CustomPrefs_Methods) + 5, GadgetY(#Frame_CustomPrefs_Methods) + 20, 215, 25, 0)
            
            AddGadgetItem(#Panel, 3, "")
            GoScintilla::Gadget(#Editor_Source_Code, 5, 5, 725, 540, 0, GoScintilla::#AUTOSIZE_LINE_NUMBERS_MARGIN | GoScintilla::#KEYWORDS_CASE_SENSITIVE)
            
            AddGadgetItem(#Panel, 4, "")
            
            ComboBoxGadget(#ComboBox_Help, 5, 5, 722, 34)
            
            If MarkDown::Gadget(#MarkDown_Help, 5, 44, 722, 500, MarkDown::#AutoResize)
              MarkDown::SetFont(#MarkDown_Help, "Arial", 10)
              MarkDown::SetAttribute(#MarkDown_Help, MarkDown::#ScrollBar, MarkDown::#ScrollBar_DragPoint)
            EndIf
            
            AddGadgetItem(#Panel, 5, "")
            
            PanelGadget(#Panel_Tools, 5, 5, 722, 540)
              
              AddGadgetItem(#Panel_Tools, 0, "")
              ListIconGadget(#ListIcon_Sources, 5, 5, 710, 490, "", 710-250, #PB_ListIcon_GridLines)
              AddGadgetColumn(#ListIcon_Sources, 1, "", 250)
              
              AddGadgetItem(#Panel_Tools, 1, "")
              
              GoScintilla::Gadget(#Editor_GarbageCollector, 5, 5, 710, 490, 0, GoScintilla::#AUTOSIZE_LINE_NUMBERS_MARGIN | GoScintilla::#KEYWORDS_CASE_SENSITIVE)
              
            CloseGadgetList()
            
          CloseGadgetList()
          
          ButtonImageGroup::Vertical(#Button_PushPin, #Button_Quit, GadgetLocate::RightOf(#Panel, 5), 5, 50, 50, 2)
          
      CompilerEndSelect

      GoScintillaSetup(*This, #Editor_Class_Members)
      GoScintillaSetup(*This, #Editor_Source_Code)
      GoScintillaSetup(*This, #Editor_GarbageCollector)
      
      AddKeyboardShortcut(*This\MainWin\GetHandle(), #PB_Shortcut_Control | #PB_Shortcut_F1, #ShortCut_Stats_Windows)
      
      *This\Sticky\ToggleStatus(*This\MainWin\GetHandle(), #True)
      
      *This\Language\SetParentWindowID(*This\MainWin\GetID())
      *This\Language\To_GUI()
      
      *This\Help\SetComboboxGadgetID(#ComboBox_Help)
      *This\Help\SetMarkDownGadgetID(#MarkDown_Help)
      *This\Help\ScanPath()
      
      *This\GarbageCollector\SetEditorGadget(#Editor_GarbageCollector)
      
      CustomFileLibs_To_GUI(*This)
      
    EndIf
    
  EndProcedure
  
  Procedure EventManager(*This.Members)

    Repeat
      
      Select WaitWindowEvent()
          
        Case #PB_Event_Menu
          
          Select EventMenu()
              
            Case #ShortCut_Stats_Windows
              StatsRequester(*This)
              
            Case #PopupMenu_Editor_Class_Members_Paste
              GoScintilla::Paste(#Editor_Class_Members)
              
          EndSelect
          
        Case #PB_Event_Gadget
          
          Select EventGadget()
              
            Case #Editor_Class_Members
              If EventType() = #PB_EventType_RightClick 
                DisplayPopupMenu(#PopupMenu_Editor_Class_Members, *This\MainWin\GetID())
              EndIf
              
            Case #Button_Options
              OptionsEditor(*This)
              
            Case #Button_Options_OK
              CloseOptionsEditor(*This, 1)
              
            Case #Button_Options_CANCEL
              CloseOptionsEditor(*This, 0)
              
            Case #PreviewColor_DefaultForeColor To #PreviewColor_PointersColor
              If EventType() = #PB_EventType_LeftClick
                AskNewColor(EventGadget())
              EndIf
              
            Case #Button_Editor_FontSelect
              AskNewFont()
              
            Case #Button_Browse_Project_SavePath
              AskSavePath(*This, 0)
              
            Case #Button_Browse_Source_SavePath
              AskSavePath(*This, 1)
              
            Case #Button_Delete_Date_Mask
              DeleteSelectedDateMask(*This)
              
            Case #Button_Date_Format_Editor
              AskDateMaskEditor(*This)
    
            Case #Button_PushPin
              *This\Sticky\ToggleStatus(*This\MainWin\GetHandle())
              *This\Sticky\RefreshPrefsGroup("Sticky", *This\Prefs)
              
            Case #Button_New
              Refresh(*This)
              
            Case #Button_Open
              OpenFileDispatcher(*This)
              
            Case #Button_Save
              SaveFileDispatcher(*This)
              
            Case #Button_Brush
              PastedCodeCleanUp(*This, #Editor_Class_Members)
              
            Case #Button_ClipBoard
              ClipBoardManager()
              
            Case #Button_Language
              *This\Language\Requester()
              *This\Language\RefreshPrefsGroup("Language", *This\Prefs)
              *This\Help\SetPath(GetPathPart(ProgramFilename()) + "help" + #PS$ + StringField(*This\Language\GetFileName(), 1, ".") + #PS$)
              *This\Help\ScanPath()
              
            Case #Button_Code
              GenerateCode(*This)
              
            Case #Button_EncodedCrypted_Add_File
              AddCustomLibs(*This) 
              
            Case #Button_EncodedCrypted_Remove_File
              RemoveCustomLibs(*This)
              
            Case #ComboBox_EncodedCrypted_Files
              SelectCustomLibs(*This)
              
            Case #ComboBox_Help
              *This\Help\DirectlySelectContents()
              
            Case #ListIcon_Sources
              SourceCheckerManager(*This)
              
            Case #Button_Quit
              Exit_Condition.i = #True
              
            Case #Btn_Stats_Close
              *This\StatsWin\Close()
              *This\MainWin\Hide(#False)  
              
            Case #ComboBox_License
              If EventType() = #PB_EventType_Change
                *This\LicenseManager\SetLicenseToUse(GetGadgetState(#ComboBox_License) - 1)
              EndIf
              
          EndSelect
          
        Case #PB_Event_CloseWindow
          
          Select EventWindow()
              
            Case *This\MainWin\GetHandle()
              Exit_Condition = #True
              
            Case *This\OptionWin\GetHandle()
              CloseOptionsEditor(*This, 0)
              
            Case *This\StatsWin\GetHandle()
              *This\StatsWin\Close()
              *This\MainWin\Hide(#False)
              
          EndSelect
          
      EndSelect
      
    Until Exit_Condition = #True

  EndProcedure
  
  Procedure Shutdown(*This.Members)
    
    *This\MainWin\GetCurrentPosition()
    *This\MainWin\RefreshPrefsGroup("MainWindow", *This\Prefs)
    *This\MainWin\Close()
    
    *This\Prefs\SaveOnFile()
    
  EndProcedure
  
  Procedure Free(*This.Members)
    
    If *This\Prefs <> #Null
      *This\Prefs\Free()
    EndIf
    
    If *This\MainWin <> #Null
      *This\MainWin\Free()
    EndIf
    
    If *This\OptionWin <> #Null
      *This\OptionWin\Free()
    EndIf
    
    If *This\StatsWin <> #Null
      *This\StatsWin\Free()
    EndIf
    
    If *This\Language <> #Null
      *This\Language\Free()
    EndIf
    
    If *This\Sticky <> #Null
      *This\Sticky\Free()
    EndIf
    
    If *This\Options <> #Null
      *This\Options\Free()
    EndIf
    
    If *This\SyntaxHighlighting <> #Null
      *This\SyntaxHighlighting\Free()
    EndIf

    If *This\CodeGenerator <> #Null
      *This\CodeGenerator\Free()
    EndIf
    
    If *This\Help <> #Null
      *This\Help\Free()
    EndIf 
    
    If *This\Checker <> #Null
      *This\Checker\Free()
    EndIf
    
    If *This\StringUtilities <> #Null
      *This\StringUtilities\Free()
    EndIf
    
    If *This\GarbageCollector <> #Null
      *This\GarbageCollector\Free()
    EndIf
    
    If *This\LicenseManager <> #Null
      *This\LicenseManager\Free()
    EndIf
    
    FreeStructure(*This)

  EndProcedure

  Procedure.i New()
    
    UsePNGImageDecoder()
    
    *This.Members = AllocateStructure(Members)
    *This\VirtualTable = ?START_METHODS
    
    Path.s = GetPathPart(ProgramFilename())
    
    CompilerSelect #PB_Compiler_OS
        
      CompilerCase #PB_OS_Windows 
        UserPath.s = GetEnvironmentVariable("APPDATA") + #PS$ + "DevObject" + #PS$
        
        If Left(UserPath, 2) <> "C:"
          UserPath = "C:" + #PS$ + UserPath
        EndIf
        
      CompilerCase #PB_OS_Linux
        UserPath.s = GetHomeDirectory() + ".devobject" + #PS$
        
      CompilerCase #PB_OS_MacOS
        UserPath.s = GetHomeDirectory() + ".devobject" + #PS$ ; This might be wrong
        
    CompilerEndSelect

    BuiltPathDirectory::DoIt(UserPath)
    
    LanguagePath.s = Path + "language" + #PS$
    LicensesPath.s = Path + "licenses" + #PS$
    
    *This\Prefs = CustomPrefs::New(UserPath + "DevObject190.prefs")
   
    *This\MainWin = Window::New(50, 50, 800, 600, #False)
    *This\OptionWin = Window::New(0, 0, 670, 730, #False)
    *This\StatsWin = Window::New(0, 0, 605, 410, #False)
    
    *This\Options = Options::New()
    *This\SyntaxHighlighting = SyntaxHighlighting::New()
    *This\Help = Help::New()
    
    If FindString(GetEnvironmentVariable("LANGUAGE"), "fr")
      LanguageFileName.s = "Français.xml"
    Else
      LanguageFileName = "English.xml"
    EndIf
    
    *This\Language = Language::New(LanguagePath, LanguageFileName, @Language_To_GUI(), *This)
    *This\LicenseManager = LicenseManager::New(LicensesPath)
    *This\StringUtilities = StringUtilities::New()
    
    AskCompiler.AskPureBasicCompiler::AskPureBasicCompiler = AskPureBasicCompiler::New()
    *This\CodeGenerator = CodeGenerator::New(#Version, AskCompiler\CurrentVersion(), *This\Language, *This\LicenseManager, *This\Prefs, *This\StringUtilities)
    AskCompiler\Free()
    
    *This\Checker = Checker::New(*This\StringUtilities\GetBetweenParenthesis())
    *This\GarbageCollector = GarbageCollector::New()
    
    *This\Sticky = Sticky::New(#Button_PushPin, Path + "icons" + #PS$,  "Push Pin 01 XP - 32.png", "Push Pin 02 XP - 32.png")
    LoadImage(#Button_New, Path + "icons" + #PS$ + "New XP - 32.png")
    LoadImage(#Button_Open, Path + "icons" + #PS$ + "Open XP - 32.png")
    LoadImage(#Button_Save, Path + "icons" + #PS$ + "Save XP - 32.png")
    LoadImage(#Button_Code, Path + "icons" + #PS$ + "Generate Code XP - 32.png")
    LoadImage(#Button_Brush, Path + "icons" + #PS$ + "Brush XP - 32.png")
    LoadImage(#Button_ClipBoard, Path + "icons" + #PS$ + "ClipBoard XP - 32.png")
    LoadImage(#Button_Language, Path + "icons" + #PS$ + "Language XP - 32.png")
    LoadImage(#Button_Options, Path + "icons" + #PS$ + "Option XP - 32.png")
    LoadImage(#Button_Quit, Path + "icons" + #PS$ + "Quit XP - 32.png")
    
    If FileSize(*This\Prefs\GetFileName()) = -1
      
      *This\MainWin\AddPrefsGroup("MainWindow", *This\Prefs)
      *This\Language\AddPrefsGroup("Language", *This\Prefs)
      *This\Sticky\AddPrefsGroup("Sticky", *This\Prefs)
      *This\Options\AddPrefsGroup("Options", *This\Prefs)
      *This\SyntaxHighlighting\AddPrefsGroup("SyntaxHighlighting", *This\Prefs)
      
      *Rules.Rules::Rules = *This\CodeGenerator\GetRules()
      *Rules\AddPrefsGroup("Rules", *This\Prefs)
      
      *Comments.Comments::Comments = *This\CodeGenerator\GetComments()
      *Comments\AddPrefsGroup("Comments", *This\Prefs)
      
      *CustomFileLibs.CustomFileLibs::CustomFileLibs = *This\CodeGenerator\GetCustomFileLibs()
      *CustomFileLibs\AddPrefsGroup("CustomFileLibs", *This\Prefs)
      
      *Stats.Stats::Stats = *This\CodeGenerator\GetStats()
      *Stats\AddPrefsGroup("Stats", *This\Prefs)
      
      *This\Prefs\SaveOnFile()
      
    Else
      
      *This\Prefs\LoadFromFile()
      
      *This\MainWin\ExtractPrefsGroup("MainWindow", *This\Prefs)
      *This\Language\ExtractPrefsGroup("Language", *This\Prefs)
      *This\Sticky\ExtractPrefsGroup("Sticky", *This\Prefs)
      *This\Options\ExtractPrefsGroup("Options", *This\Prefs)
      *This\SyntaxHighlighting\ExtractPrefsGroup("SyntaxHighlighting", *This\Prefs)
      
      *Rules.Rules::Rules = *This\CodeGenerator\GetRules()
      *Rules\ExtractPrefsGroup("Rules", *This\Prefs)
      
      *Comments.Comments::Comments = *This\CodeGenerator\GetComments()
      *Comments\ExtractPrefsGroup("Comments", *This\Prefs)
      
      *CustomFileLibs.CustomFileLibs::CustomFileLibs = *This\CodeGenerator\GetCustomFileLibs()
      *CustomFileLibs\ExtractPrefsGroup("CustomFileLibs", *This\Prefs)
      
      *Stats.Stats::Stats = *This\CodeGenerator\GetStats()
      *Stats\ExtractPrefsGroup("Stats", *This\Prefs)
      
    EndIf
    
    *This\Language\LoadTableFile()
    
    *This\Help\SetPath(Path + "help" + #PS$ + StringField(*This\Language\GetFileName(), 1, ".") + #PS$)
    
    *This\MainWin\SanityCheck()
    *This\OptionWin\SanityCheck()
    
    *Stats.Stats::Stats = *This\CodeGenerator\GetStats()
    *Stats\Analysis()
    
    *CustomFileLibs.CustomFileLibs::CustomFileLibs = *This\CodeGenerator\GetCustomFileLibs()
    *CustomFileLibs\SanityCheck()
    
    ProcedureReturn *This
  EndProcedure
  
  DataSection
    START_METHODS:
    Data.i @CreateWindow()
    Data.i @EventManager()
    Data.i @Shutdown()
    Data.i @Free()
    END_METHODS:
  EndDataSection

EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.01 LTS (Linux - x64)
; Folding = -wBA2DA5--
; EnableXP
; DisableDebugger
; CompileSourceDirectory