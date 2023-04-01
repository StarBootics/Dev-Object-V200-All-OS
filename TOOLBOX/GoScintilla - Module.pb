; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Nom du projet : Nom du projet
; Nom du fichier : *.pb
; Version du fichier : 0.0.0
; Programmation : En cours
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 14-02-2019
; Mise à jour : 15-11-2021
; Code PureBasic : V5.73 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule GoScintilla
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;-CONSTANTS.
  
  ;Creation flags.  Use a combination of the following.
  Enumeration
    #AUTOSIZE_LINE_NUMBERS_MARGIN    = 1
    #KEYWORDS_CASE_SENSITIVE        = 2   ;Use if the keywords lists (syntax highlighting etc.) are case sensitive.
  EndEnumeration
  
  ;Margins.
  Enumeration 
    #MARGIN_LINE_NUMBERS
    #MARGIN_NON_FOLDING_SYMBOLS
    #MARGIN_BOOKMARKS = #MARGIN_NON_FOLDING_SYMBOLS ;Alias.
    #MARGIN_FOLDING_SYMBOLS
    #MARGIN_USER1
    #MARGIN_USER2
  EndEnumeration
  
  ;Colors. Used when setting colors for the entire control (not individual styles).
  ;Some (but not all) of the colors can be retrieved with GOSCI_GetColor().
  Enumeration 1
    #BACK_COLOR                    ;Get/Set.
    #FORE_COLOR                    ;Get/Set.
    #SELECTION_BACK_COLOR           ;Set.
    #SELECTION_FORE_COLOR           ;Set.
    #LINE_NUMBER_BACK_COLOR          ;Get/Set.
    #LINE_NUMBER_FORE_COLOR          ;Get/Set.
    #CARET_LINE_BACK_COLOR           ;Get/Set. Set color to -1 to remove the visible line.
    #CARET_FORE_COLOR               ;Get/Set.
    #CALLTIP_BACK_COLOR              ;Get/Set.
    #CALLTIP_FORE_COLOR              ;Get/Set.
    #CALLTIP_FORE_HLT_COLOR          ;Set. Call-tip highlight color.
    #BOOKMARK_BACK_COLOR            ;Set.
    #BOOKMARK_FORE_COLOR            ;Set.
                                        ;The following colors require #SC_MASK_FOLDERS mask bits to be set for the symbol margin. Set by default for margin #GOSCI_MARGINFOLDINGSYMBOLS.
    #FOLD_MARGIN_LO_BACK_COLOR        ;Set.
    #FOLD_MARGIN_HI_BACK_COLOR        ;Set.
    #FOLD_MARKERS_BACK_COLOR         ;Set.
    #FOLD_MARKERS_FORE_COLOR         ;Set.
    
  EndEnumeration
  
  ;Attributes.  All can be set, some can be retrieved as well.
  ;Use with GOSCI_SetAttribute() and GOSCI_GetAttribute() as appropriate.
  Enumeration 1
    #READ_ONLY                     ;Get/Set.
    #LINE_NUMBER_AUTOSIZE_PADDING    ;Get/Set.
                                        ;Added to the calculated line-number margin width when the #GOSCI_AUTOSIZELINENUMBERSMARGIN creation flag is used.
    #CAN_UNDO                      ;Get/Set.
    #WRAP_LINES                    ;Get/Set.
    #WRAP_LINES_VISUAL_MARKER        ;Get/Set.
                                        ;Value = 0 for no marker, 1 for marker at the end of the subline, 2 for beginning of subline.
    #CODE_COMPLETION_CHARS          ;Get/Set. Default value = #GOSCI_DEFAULTCODECOMPLETIONCHARS. 
                                        ;The number of characters required before a code completion list is shown.
    #BOOKMARK_SYMBOL               ;Set.
  EndEnumeration
  
  ;States.
  ;Use with GOSCI_SetState() and GOSCI_GetState() as approptiate.
  Enumeration 1
    #CLEAR_ALL_BOOKMARKS            ;Set.
    #CURRENT_LINE                  ;Get/Set.    
    #DOCUMENT_SAVED                ;Set. Set this after saving the contents. Of use only if undo/redo operations are permitted.
    #CLEAR_MODIFIED_STATE = #DOCUMENT_SAVED
    ;An alias.
    #EMPTY_UNDO_BUFFER              ;Set.
    #IS_EMPTY                      ;Get.
    #IS_MODIFIED                   ;Get. Returns #True if the document has been modified since the last time the #GOSCI_DOCUMENTSAVED state was set.
                                        ;Only works if undo/redo operations are permitted.
    #IS_READY_TO_REDO                ;Get.
    #IS_READY_TO_UNDO                ;Get.
    #RESTYLE_DOCUMENT              ;Set. Force a restyling of the document. Many operations (such as setting document text) automatically
                                        ;restyle the document.
  EndEnumeration
  
  ;Delimiter flags.  
  Enumeration
    #DELIMIT_BETWEEN                           = $1  ;Ex. 1, set a keyword to "" (a pair of quotes) to have everything between quotes treated as a single keyword.
                                                          ;Ex. 2, set a keyword to [] to have everything within square paranthesis treated as a single keyword.
                                                          ;The first symbol in such a pairing will be regarded AS AN ADDITIONAL SEPARATOR.
    #DELIMIT_TO_END_OF_LINE                       = $2  ;Ex.1 set a keyword to ; to have everything from this symbol to the end of a line treated as a single keyword.
                                                          ;Such symbols will be regarded AS ADDITIONAL SEPARATORS.
    #LEFT_DELIMIT_WITH_WHITESPACE                = $4  ;Ex. set a keyword to # to have every symbol (e.g. #Test, #   test) beginning with this character treated as a keyword.
    #LEFT_DELIMIT_WITHOUT_WHITESPACE             = $8  ;Same as above, but does not count symbols such as '#   test' (those with white space).
    #RIGHT_DELIMIT_WITH_WHITESPACE               = $10 ;Ex. set a keyword to [ to have every symbol (e.g. test[, test   [) ending with this character treated as a keyword.
    #RIGHT_DELIMIT_WITHOUT_WHITESPACE            = $20 ;Same as above, but does not count symbols such as 'test   [' (those with white space).
    
    ;Add the following to have the delimiter not behave like a separator.
    #NON_SEPARATING_DELIMITER                 = $00010000
  EndEnumeration
  
  ;Keywords flags.
  Enumeration
    #OPEN_FOLD_KEYWORD                          = $00100000
    #OPEN_FOLD_KEYWORD_NO_PRECEDING               = $00200000   ;Keyword will open a fold only if no other open-fold keyword precedes this one on the underlying line.
    #CLOSE_FOLD_KEYWORD                         = $00400000
    #ADD_TO_CODE_COMPLETION                      = $00800000
    ;For use with GOSCI_AddKeywordsEx() only.
    #ALLOW_WHITESPACE_PRECEEDING_OPEN_CALLTIP   = $01000000
  EndEnumeration
  
  ;Global call-tip separators.
  Enumeration
    #NULL_CALLTIP          = $10000000
    #TERMINAL_CALLTIP      = $20000000
  EndEnumeration
  
  ;Lexer options.
  ;Use with GOSCI_GetLexerOption()/GOSCI_SetLexerOption().
  Enumeration 1
    #LEXER_OPTION_SEPARATOR_SYMBOLS   ;E.g. "+-*/,()". Used by the default Lexer to separate lexical entities when coloring lines.
                                          ;For GOSCI_SetLexerOption(), set value to the address of a character buffer containing the separator symbols.
                                          ;GOSCI_GetLexerOption() returns the address of the character buffer etc. Use PeekS() to get the string.
                                          ;Non-ascii separators are not supported by our default lexer.
                                          ;Always set the separator symbols BEFORE adding call-tipped keywords.
    #LEXER_OPTION_NUMBERS_STYLE_INDEX  ;For GOSCI_SetLexerOption(), set value to a style index. Default is #STYLE_DEFAULT.
  EndEnumeration
  
  ;Lexer states. Use a combination of values.
  ;Use with GOSCI_GetLexerState()/GOSCI_SetLexerState().
  Enumeration
    #LEXER_STATE_ENABLE_SYNTAX_STYLING             = 1   ;Set by default.
    #LEXER_STATE_ENABLE_CODE_COMPLETION            = 2
    #LEXER_STATE_ENABLE_CODE_FOLDING               = 4   ;Set by default.
    #LEXER_STATE_ENABLE_CLICK_ANYWHERE_CODE_FOLDING  = 8
    #LEXER_STATE_ENABLE_CALLTIPS                  = 16
    #LEXER_STATE_ENABLE_AUTO_INDENTATION           = 32
  EndEnumeration
  ;/////////////////////////////////////////////////////////////////////////////////
  
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;-User defined line styling function.
  
  ;GoScintilla allows the user to declare an additional (and optional) line styling function which is invoked whenever a line requires
  ;re-styling. This function can call on GoScintilla to style parts of the line as appropriate.
  ;The return value from this function determines whether additional lines are to be styled beyond those originally marked for styling etc.
  ;(Typically, a few lines are 'marked' for styling at any given time.)
  
  ;The user-defined line styling function must follow the prototype given :
  Prototype.i GOSCI_proto_StyleLine(GadgetID, *utf8Buffer.ASCII, numUtf8Bytes, currentLine, startLine, originalEndLine)
  ;where *utf8Buffer points to a character buffer containing the bytes to style and numUtf8Bytes gives the number of UTF-8 bytes (not characters)
  ;in the line to style. This will include any EOL bytes (typically #CRLF$).
  ;The remaining parameters are provided for information only.
  ;Your function must return one of the following values as appropriate :
  Enumeration
    #STYLE_LINES_AS_REQUIRED       ;Continue styling lines as directed by the Scintilla library. Stop once the lines originally marked for
                                      ;restyling have been styled.
    #STYLE_NEXT_LINE_REGARDLESS    ;Style the next line regardless of whether it is one of the lines originally marked for styling.
  EndEnumeration  
  
    ;The following structure holds information (such as syntax highlighting info) on individual Scintilla controls.
  Structure Keyword
    Keyword.s
    StyleIndex.i              ;0-based index of the style to apply.
    Flags.i                   ;Set with the GOSCI_AddKeywords() function. A combination of the delimiter and keyword constants listed above.
    CloseDelimiter.a          ;Used only for delimiters of type #DELIMIT_BETWEEN to record the character used as the close delimiter.
                              ;The following fields are for those keywords having associated call-tips.
    OpenCallTipSeparators.s
    CloseCalltipSeparators.s
    CallTip.s                ;Must be of the form : line1$ + #LF$ + line2$ + ...
                             ;The first line will be highlighted.
  EndStructure
  
  Declare Gadget(GadgetID, x, y, Width, Height, CallbackAddress = 0, Flags = 0)
  Declare SetText(GadgetID, Text.s, clearUndoStack=#False)
  Declare AppendText(GadgetID, Text.s, clearUndoStack=#False)
  Declare.s GetText(GadgetID)
  Declare ClearText(GadgetID)
  Declare Cut(GadgetID)
  Declare Copy(GadgetID)
  Declare Paste(GadgetID)
  Declare Undo(GadgetID)
  Declare Redo(GadgetID)
  Declare SelectAll(GadgetID)
  Declare.i GetKeywordInfo(GadgetID, Keyword.s)
  Declare AddKeywords(GadgetID, Keywords.s, styleIndex=#STYLE_DEFAULT, keywordflags=0, blnSortKeywords=#False)
  Declare AddKeywordsEx(GadgetID, numKeywords, *ptrKeywords.STRING, *ptrCallTips.STRING=0, openCallTipSeparators$ = "", closeCallTipSeparators$="", styleIndex=#STYLE_DEFAULT, keywordFlags=0, blnSortKeywords=#False)
  Declare RemoveKeywords(GadgetID, Keywords.s)
  Declare Free(GadgetID)
  Declare SetStyleColors(GadgetID, styleIndex, foreColor=-1, backColor=-1)
  Declare SetStyleFont(GadgetID, styleIndex, fontName.s, fontSize=-1, fontStyle=-1)
  Declare SetLineHighlightColor(GadgetID, color)
  Declare SetLineHighlighted(GadgetID, lineIndex, flag=#True)
  Declare.i GetLexerOption(GadgetID, option)
  Declare SetLexerOption(GadgetID, option, value)
  Declare.i SetLineStylingFunction(GadgetID, addressOfFunction)
  Declare InsertLineOfText(GadgetID, lineIndex, text$)
  Declare SetAttribute(GadgetID, attribute, value)
  Declare.i GetAttribute(GadgetID, attribute)
  Declare SetMarginWidth(GadgetID, margin, width)
  Declare SetFont(GadgetID, fontName.s, fontSize=-1, fontStyle=-1)
  Declare SetTabs(GadgetID, width, blnUseSoftTabs = #False)
  Declare SetColor(GadgetID, colorType, color)
  Declare.i GetColor(GadgetID, colorType)
  
  Declare AddDelimiter(GadgetID, delimiter.s, closeDelimiter.s, delimiterFlags, styleIndex=#STYLE_DEFAULT)
  Declare IncFoldLevel(GadgetID)
  Declare DecFoldLevel(GadgetID)
  Declare.i StyleNextSymbol(GadgetID, *bytePtr.ASCII, numBytesRemaining)
  Declare.i GetLineData(GadgetID, lineIndex)
  Declare.i SetLineData(GadgetID, lineIndex, value)
  Declare.i FindBookmarkedLine(id, startLine, direction=1)
  Declare SetLineBookmark(GadgetID, lineIndex, flag=#True)
  Declare.i GetLineBookmark(GadgetID, lineIndex)
  Declare.s GetLineText(GadgetID, lineIndex)
  Declare SetLineText(GadgetID, lineIndex, text$)
  Declare.i GetMarginWidth(GadgetID, margin)
  Declare.i GetNumberOfLines(GadgetID)
  Declare.s GetSelectedText(GadgetID)
  Declare.i GetUserData(GadgetID)
  Declare.i SetUserData(GadgetID, value)
  Declare DeleteLine(GadgetID, lineIndex)
  Declare.i GetState(GadgetID, stateType)
  Declare SetState(GadgetID, stateType, value=0)
  Declare.i GetTabWidth(GadgetID)
  Declare InsertLineOfText(GadgetID, lineIndex, text$)
  Declare ReplaceSelectedText(GadgetID, text$, blnScrollCaretIntoView=#False)
  Declare AddGlobalCalltipSeparators(GadgetID, openCallTipSeparators$, closeCallTipSeparators$, flags)
  Declare.i GetLexerState(GadgetID)
  Declare SetLexerState(GadgetID, state)
  Declare.i GetNextSymbolByteLength(GadgetID, *bytePtr.ASCII, numBytesRemaining)
  
EndDeclareModule

Module GoScintilla
  
  Prototype GOSCI_proto_Callback(GadgetID, *scinotify.SCNotification)
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;-STRUCTURES.
  
  ;The following is held in a PB map and contains information on individual keywords and delimiters.
  ;Use the GOSCI_GetKeywordInfo() function to retrieve this info for any given keyword. Only really useful for those apps which decide to
  ;user their own customised lexer etc.
  
  Structure GoScintilla
    ;Creation fields.
    GadgetID.i
    Callback.GOSCI_proto_Callback
    Flags.i
    State.i
    ;Custom line styling function.
    StylingFunction.GOSCI_proto_StyleLine
    ;Additional user-supplied data.
    UserData.i
    LineNumberAutoSizePadding.i
    LexerSeparators.s
    LexerNumbersStyleIndex.i
    ;Lists/maps.
    List Keywords.Keyword()
    Map KeywordPtr.i()
    ;Code folding.
    LineCodeFoldOption.i    ;0 = no code folding, 1 = open fold, 2 = close fold.
    FoldLevel.i
    ;Styling.
    PreviouslyRecordedStyle.i   ;Used for left delimiters (separators).
    BytePointer.i               ;Used for left delimiters (separators).
                                ;Code completion.
    CodeCompletionChars.i       ;Number of characters required to instigate code completion.
                                ;Call-tips.
    LastStartPos.i
    CallTipLine.i
    LastCallTipIndex.i
    ;Miscellaneous.
    SpaceAdded.i
  EndStructure
  
  ;The following structure is used to deal with call-tips.
  Structure _GoScintillaCallTips
    *keyword.Keyword
    charPos.i
    previousCloseCalltipSeparator.a
  EndStructure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;-CONSTANTS.
  
  #GOSCI_DEFAULTCODECOMPLETIONCHARS = 3
  #GOSCI_BOOKMARKMARKERNUM          = 0
  
  ;Used to separate the delimiter constants from the folding ones.
  #GOSCI_KEYWORDDELIMITERMASK = $FFFFF
  
  #GOSCI_NUMNESTEDCALLTIPS = 100  ;Gives the upper bound of an array of keyword pointers.
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following internal function adjusts the line number margin in the case that the #GOSCI_AUTOSIZELINENUMBERSMARGIN creation flag was set.
  Procedure Private_AutosizeLineNumberMargin(GadgetID)
    Protected *this.GoScintilla, numLines, numChars, t1, utf8Buffer
    *this = GetGadgetData(GadgetID)
    If *this And *this\flags & #AUTOSIZE_LINE_NUMBERS_MARGIN
      numLines = ScintillaSendMessage(GadgetID, #SCI_GETLINECOUNT)
      numChars = Len(Str(numLines))
      ;Fill a UTF-8 buffer with the appropriate number of '9' 's.
      utf8Buffer = AllocateMemory(numChars+1)
      If utf8Buffer
        FillMemory(utf8Buffer, numChars, '9')
        t1 = ScintillaSendMessage(GadgetID, #SCI_TEXTWIDTH, #STYLE_LINENUMBER, utf8Buffer) + *this\lineNumberAutoSizePadding + 10
        ScintillaSendMessage(GadgetID, #SCI_SETMARGINWIDTHN, #MARGIN_LINE_NUMBERS, t1)
        FreeMemory(utf8Buffer)
      EndIf
    EndIf
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following routine is called by both GOSCI_AddKeywords() and GOSCI_AddKeywordsEx() for the common functionality.
  ;Set styleIndex = -1 to leave any existing style index unaltered.
  ;Returns the number of keywords successfully added.
  Procedure.i Private_AddKeywords(GadgetID, keyWords.s, styleIndex=#STYLE_DEFAULT, flags=0)
    Protected result, *this.GoScintilla, wordCount, i, t1$, blnProceed, keyWord.s, *ptrKeyword.Keyword
    keyWords = Trim(keyWords)
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla And keyWords
      *this = GetGadgetData(GadgetID)
      If *this
        wordCount = CountString(keyWords, " ") + 1
        For i = 1 To wordCount
          keyWord = StringField(keyWords, i, " ")
          If *this\flags & #KEYWORDS_CASE_SENSITIVE = 0
            t1$ = LCase(keyWord)
          Else
            t1$ = keyWord
          EndIf
          ;Check if we already have an entry for this keyword. If not, we make a new one.
          If FindMapElement(*this\keywordPtr(), t1$) = 0
            LastElement(*this\Keywords())
            *ptrKeyword = AddElement(*this\Keywords())
            If *ptrKeyword
              If AddMapElement(*this\keywordPtr(), t1$)
                *this\keywordPtr() = *ptrKeyword
              Else
                DeleteElement(*this\Keywords())
                *ptrKeyword = 0
              EndIf
            EndIf
          Else
            *ptrKeyword = *this\keywordPtr()
          EndIf
          If *ptrKeyword
            *ptrKeyword\keyWord = keyWord
            If styleIndex <> -1
              *ptrKeyword\styleIndex = styleIndex
            EndIf
            *ptrKeyword\flags | flags
            result + 1
          EndIf
        Next
      EndIf
    EndIf
    ProcedureReturn result
  EndProcedure

  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following is used by the default line styler to determine if the given symbol represents a separator character or not?
  ;Returns #True or #False as appropriate. In the case of the symbol being a separator, it also fills the *keyword buffer with any associated keyword info.
  Procedure.i Private_IsSeparator(*this.GoScintilla, symbol.a, *keyword.INTEGER)
    Protected result = #False, *ptrChar.CHARACTER, *ptrKeyword.Keyword
    ;First check the list of separators.
    *ptrChar = @*this\lexerSeparators  ;External Lexer's should use GOSCI_GetLexerOption() to retrieve this address.
    If symbol = #LF Or symbol = #CR
      result = #True
    Else
      While *ptrChar\c
        If *ptrChar\c = symbol
          result = #True
          Break
        EndIf
        *ptrChar + SizeOf(CHARACTER)
      Wend
    EndIf
    ;Retrieve any associated keyword info.
    *ptrKeyword = GetKeywordInfo(*this\GadgetID, Chr(symbol))
    ;If symbol not identified as an explicit separator then we check if it is a delimiter.
    If result = #False
      If *ptrKeyword 
        If *ptrKeyword\flags & #GOSCI_KEYWORDDELIMITERMASK And *ptrKeyword\flags & #NON_SEPARATING_DELIMITER = 0
          result = #True
        EndIf
      EndIf
    EndIf
    If result = #True
      *keyword\i = *ptrKeyword
    Else
      *keyword\i = 0
    EndIf
    ProcedureReturn result
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following is used by the default line styler to determine if the next symbol is a valid number?
  ;Returns the total number of bytes in the number string (so zero if not a valid number). In the case of the symbol being a number, the number of digits is placed into the specified buffer.
  Procedure.i Private_IsNumber(*this.GoScintilla, *bytePtr.ASCII, numBytesRemaining, *numDigits.INTEGER)
    Protected numBytesInNumber, numDecimalPoints, numDigits, t1
    While numBytesInNumber < numBytesRemaining
      If *bytePtr\a = '.'
        If numDecimalPoints
          numBytesInNumber = 0
          Break
        EndIf
        numDecimalPoints + 1
      ElseIf *bytePtr\a >= '0' And *bytePtr\a <= '9'
        numDigits + 1
      ElseIf *bytePtr\a = 9 Or *bytePtr\a = 32 Or Private_IsSeparator(*this, *bytePtr\a, @t1)
        Break
      Else
        numBytesInNumber = 0
        Break
      EndIf
      *bytePtr + 1
      numBytesInNumber + 1
    Wend
    If numBytesInNumber
      *numDigits\i = numDigits
    EndIf
    ProcedureReturn numBytesInNumber
  EndProcedure

  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following is called by our default line-styling function to style individual symbols.
  ;The optional blnDoNotApplyStyle parameter will prevent all styling / code folding being applied to the symbol in question. Intended for
  ;use by user-defined line styling functions which may need to look ahead at additional symbols before styling them.
  ;The optional *styleFlags parameter is used for call-tip processing via the GOSCI_ProcessCodeCompletionCalltipsXXX() function.
  ;Bit 0 is set if whitespace was encountered. Bit 1 is set if we are styling a #DELIMIT_BETWEEN delimiter and the close delimiter was encountered.
  ;Returns the number of bytes styled.
  Procedure.i Private_StyleNextSymbol(*this.GoScintilla, *bytePtr.ASCII, numBytesRemaining, blnDoNotApplyStyle=#False, *keywordBuffer.INTEGER=0, *styleFlags.INTEGER=0)
    Protected numBytesToStyle, styleToUse, *ptrBytes.ASCII, *ptrBytes2.ASCII, *keyword.Keyword, *keywordNext.Keyword
    Protected text$, t1, t2, openDelimeter.a, numSpaces, symbolType, blnIsWhiteSpace
    *ptrBytes = *bytePtr
    styleToUse = *this\previouslyRecordedStyle
    ;Have we white space?
    If *ptrBytes\a = 32 Or *ptrBytes\a = 9
      While numBytesToStyle < numBytesRemaining And (*ptrBytes\a = 32 Or *ptrBytes\a = 9)
        numBytesToStyle + 1
        *ptrBytes+1
      Wend
      blnIsWhiteSpace = #True
      ;Else, have we a separator?
    ElseIf Private_IsSeparator(*this, *ptrBytes\a, @*keyword)
      If blnDoNotApplyStyle = #False
        *this\previouslyRecordedStyle = #STYLE_DEFAULT
      EndIf
      numBytesToStyle = 1
      styleToUse = #STYLE_DEFAULT
      If *keyword
        styleToUse = *keyword\styleIndex
      EndIf
      ;Is the separator a '.' character?
      If *ptrBytes\a = '.'
        numBytesToStyle = Private_IsNumber(*this, *ptrBytes, numBytesRemaining, @t1)
        If t1
          styleToUse = *this\lexerNumbersStyleIndex
          Goto GOSCI_StyleNextSymbolXXX_ApplyStyle
        Else
          numBytesToStyle = 1
        EndIf
      EndIf
      If numBytesToStyle < numBytesRemaining
        If *keyword
          If *keyword\flags & #DELIMIT_BETWEEN
            openDelimeter = *ptrBytes\a
            ;We need to track down the close delimiter. Skipping additional open delimiters as we proceed.
            *ptrBytes + 1
            t1 = 1 ; A temporary count of how many 'open' delimiters we have encountered.
            While numBytesToStyle < numBytesRemaining And t1 > 0
              numBytesToStyle + 1
              If *ptrBytes\a = *keyword\closeDelimiter
                t1 - 1
                If t1 = 0
                  If *styleFlags
                    *styleFlags\i = 2
                  EndIf
                  Break
                EndIf
              ElseIf *ptrBytes\a = openDelimeter
                t1 + 1
              ElseIf *ptrBytes\a = #LF Or *ptrBytes\a = 13 ;We style these separately with the default style.
                numBytesToStyle - 1
                Break
              EndIf
              *ptrBytes+1
            Wend
          ElseIf *keyword\flags & #DELIMIT_TO_END_OF_LINE
            numBytesToStyle = numBytesRemaining
            ;Need to avoid applying the style to the EOL characters which instead must receive the default style.
            ;This is to avoid Scintilla then instructing us to style the whole document needlessly!
            *ptrBytes + numBytesRemaining - 1
            While *ptrBytes\a = #LF Or *ptrBytes\a = #CR
              numBytesToStyle - 1
              *ptrBytes - 1
            Wend          
          ElseIf *keyword\flags & (#LEFT_DELIMIT_WITH_WHITESPACE | #LEFT_DELIMIT_WITHOUT_WHITESPACE)
            *ptrBytes + 1
            If (*ptrBytes\a <> 9 And *ptrBytes\a <> 32) Or *keyword\flags & #LEFT_DELIMIT_WITH_WHITESPACE
              If blnDoNotApplyStyle = #False
                *this\previouslyRecordedStyle = styleToUse
              EndIf
            EndIf
          EndIf
        EndIf    
      EndIf
    Else ;A keyword or unknown symbol.
         ;First check for a number.
      t2 = Private_IsNumber(*this, *ptrBytes, numBytesRemaining, @t1)
      If t2
        If blnDoNotApplyStyle = #False
          *this\previouslyRecordedStyle = #STYLE_DEFAULT
        EndIf
        numBytesToStyle = t2
        styleToUse = *this\lexerNumbersStyleIndex
      Else
        ;Retrieve all bytes up to the next whitespace / separator.
        numBytesToStyle = 1
        *ptrBytes + 1
        While numBytesToStyle < numBytesRemaining
          If Private_IsSeparator(*this, *ptrBytes\a, @*keywordNext) Or *ptrBytes\a = 32 Or *ptrBytes\a = 9
            Break
          EndIf
          numBytesToStyle + 1
          *ptrBytes + 1
        Wend
        text$ = PeekS(*bytePtr, numBytesToStyle, #PB_UTF8)
        ;Is this a registered keyword?
        *keyword = GetKeywordInfo(*this\GadgetID, text$)
        If *this\previouslyRecordedStyle <> #STYLE_DEFAULT ;A left delimiter was previously encountered.
          If blnDoNotApplyStyle = #False
            *this\previouslyRecordedStyle = #STYLE_DEFAULT
          EndIf
        ElseIf *keyword
          If blnDoNotApplyStyle = #False
            *this\previouslyRecordedStyle = #STYLE_DEFAULT
          EndIf
          styleToUse = *keyword\styleIndex
        Else
          ;Perhaps the first character is a non-separating left delimiter?
          *keyword = GetKeywordInfo(*this\GadgetID, Chr(*bytePtr\a))
          If *keyword
            If *keyword\flags & (#LEFT_DELIMIT_WITH_WHITESPACE | #LEFT_DELIMIT_WITHOUT_WHITESPACE)
              If blnDoNotApplyStyle = #False
                *this\previouslyRecordedStyle = #STYLE_DEFAULT
              EndIf
              styleToUse = *keyword\styleIndex
            EndIf
            *keyword = 0 ;Do not allow code-folding for a non-separating delimiter.
          Else
            ;Perhaps the last character is a non-separating right delimiter?
            *ptrBytes2 = *ptrBytes-1
            *keyword = GetKeywordInfo(*this\GadgetID, Chr(*ptrBytes2\a))
            If *keyword
              If *keyword\flags & (#RIGHT_DELIMIT_WITH_WHITESPACE | #RIGHT_DELIMIT_WITHOUT_WHITESPACE)
                If blnDoNotApplyStyle = #False
                  *this\previouslyRecordedStyle = #STYLE_DEFAULT
                EndIf
                styleToUse = *keyword\styleIndex
              EndIf
              *keyword = 0 ;Do not allow code-folding for a non-separating delimiter.
            Else
              ;We check if the next non-space character (if any) following this symbol is a right delimiter. Need to also record if space characters were located.
              If *keywordNext = 0
                While numBytesToStyle + numSpaces < numBytesRemaining
                  If *ptrBytes\a <> 9 And *ptrBytes\a <> 32
                    Private_IsSeparator(*this, *ptrBytes\a, @*keywordNext)
                    Break
                  EndIf
                  numSpaces + 1
                  *ptrBytes + 1
                Wend
              EndIf
              If *keyWordNext
                If *keyWordNext\flags & (#RIGHT_DELIMIT_WITH_WHITESPACE | #RIGHT_DELIMIT_WITHOUT_WHITESPACE)
                  If *keyWordNext\flags & #RIGHT_DELIMIT_WITH_WHITESPACE Or numSpaces = 0
                    numBytesToStyle + numSpaces
                    styleToUse = *keyWordNext\styleIndex 
                  EndIf
                EndIf
              EndIf
            EndIf
          EndIf
        EndIf
      EndIf
    EndIf
    GOSCI_StyleNextSymbolXXX_ApplyStyle:
    If blnDoNotApplyStyle = #False
      ;Apply the appropriate style.
      If *this\state & #LEXER_STATE_ENABLE_SYNTAX_STYLING = 0
        styleToUse = #STYLE_DEFAULT
      EndIf
      ScintillaSendMessage(*this\GadgetID, #SCI_SETSTYLING, numBytesToStyle, styleToUse)
      ;Was the symbol a folding symbol?
      If *keyword
        If *keyword\flags & #OPEN_FOLD_KEYWORD Or (*keyword\flags & #OPEN_FOLD_KEYWORD_NO_PRECEDING And *this\LineCodeFoldOption=0)
          *this\LineCodeFoldOption + 1
        EndIf
        If *keyword\flags & #CLOSE_FOLD_KEYWORD And (*this\foldLevel > #SC_FOLDLEVELBASE Or *this\LineCodeFoldOption)
          *this\LineCodeFoldOption - 1
        EndIf
      EndIf
    EndIf
    If *keywordBuffer
      *keywordBuffer\i = *keyword
    EndIf
    If *styleFlags
      *styleFlags\i =  *styleFlags\i&$FFFFFFFE | blnIsWhiteSpace
    EndIf
    ProcedureReturn numBytesToStyle
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following is called by our main Scintilla callback (#SCN_CHARADDED and #SCN_MODIFIED) to process, and possibly display, a code
  ;completion list or a call-tip. This function will not be called if code completion and call-tips have been disabled.
  ;It has to carefully examine the current line and pull out all lexical entities up to the current character (GoScintilla's lexer is used for this).
  ;Only then can a code completion list be constructed etc.
  Procedure Private_ProcessCodeCompletionCalltips(*this.GoScintilla)
    Protected i, caretPos, *utf8Buffer.ASCII, bufferPtr, numUtf8Bytes, numBytesStyled, bytePos, word$, lenWord, *ptrKeyword.Keyword
    Protected t1, t1$, codeList$, blnProceedWithCallTip, *keyword.Keyword, nPos
    Protected Dim keywords._GoScintillaCallTips(#GOSCI_NUMNESTEDCALLTIPS), styleFlags, callTipIndex
    Protected *currentCalltipKeyword.Keyword, anticipatedCalltipCloseSeparator.a, newCalltipCloseSeparator.a, blnPush
    numUtf8Bytes = ScintillaSendMessage(*this\GadgetID, #SCI_GETCURLINE, 0, 0) - 1 ;Includes the null, hence the -1.
    If numUtf8Bytes
      bufferPtr = AllocateMemory(numUtf8Bytes+1)
      If bufferPtr
        If *this\state & #LEXER_STATE_ENABLE_CALLTIPS
          blnProceedWithCallTip = #True
        EndIf
        *utf8Buffer = bufferPtr
        caretPos = ScintillaSendMessage(*this\GadgetID, #SCI_GETCURLINE, numUtf8Bytes+1, *utf8Buffer)
        While numUtf8Bytes > 0
          styleFlags = 0
          numBytesStyled = Private_StyleNextSymbol(*this, *utf8Buffer, numUtf8Bytes, #True, @*keyword, @styleFlags)
          word$ = PeekS(*utf8Buffer, numBytesStyled, #PB_UTF8)
          blnPush = #False
          ;Do we have a terminal keyword?
          If *keyword And *keyword\flags & #TERMINAL_CALLTIP
            callTipIndex=0
            anticipatedCalltipCloseSeparator = 0
            *currentCalltipKeyword = 0
          Else
            ;Do we have a call-tipped keyword under investigation?
            If *currentCalltipKeyword
              If styleFlags&1 ;White-space encountered.
                nPos = FindString(*currentCalltipKeyword\openCallTipSeparators, " ", 1)
                If nPos
                  Goto GOSCI_ProcessCodeCompletionCalltipsXXX_L4
                EndIf
                If *currentCalltipKeyword\flags & #ALLOW_WHITESPACE_PRECEEDING_OPEN_CALLTIP = 0
                  *currentCalltipKeyword = 0
                EndIf
              Else
                ;Do we have a valid open calltip separator for this keyword?
                nPos = FindString(*currentCalltipKeyword\openCallTipSeparators, " ", 1)
                t1$ = Left(word$, 1)
                If nPos
                  If t1$ = Mid(*currentCalltipKeyword\closeCallTipSeparators, nPos, 1)
                    nPos = 0
                  EndIf
                Else
                  nPos = FindString(*currentCalltipKeyword\openCallTipSeparators, t1$, 1)
                EndIf
                GOSCI_ProcessCodeCompletionCalltipsXXX_L4:
                If nPos ;Yes we have a valid open calltip separator for this keyword.
                  newCalltipCloseSeparator = Asc(Mid(*currentCalltipKeyword\closeCallTipSeparators, nPos, 1))
                  If *keyword And *keyword\flags & #DELIMIT_BETWEEN
                    If styleFlags & 2 = 0 Or caretPos < bytePos + numBytesStyled ;No delimit between terminator found. 
                      blnPush = #True
                    Else
                      ;Check that the keyword's close delimiter does not match the call-tipped keywords close calltip separator.
                      If *keyword\closeDelimiter <> newCalltipCloseSeparator
                        blnPush = #True
                      EndIf
                    EndIf  
                  Else
                    blnPush = #True                  
                  EndIf
                  If blnPush
                    GOSCI_ProcessCodeCompletionXXX_L2:
                    If callTipIndex <= #GOSCI_NUMNESTEDCALLTIPS
                      keywords(callTipIndex)\keyword = *currentCalltipKeyword
                      keywords(callTipIndex)\charPos = bytePos
                      keywords(callTipIndex)\previousCloseCalltipSeparator = anticipatedCalltipCloseSeparator
                      anticipatedCalltipCloseSeparator = newCalltipCloseSeparator
                      callTipIndex + 1
                    Else
                      blnProceedWithCallTip = #False
                    EndIf
                  EndIf
                  *currentCalltipKeyword = 0
                Else
                  If *keyword And *keyword\openCallTipSeparators
                    *currentCalltipKeyword = *keyword
                    If *keyword\flags & #NULL_CALLTIP
                      blnPush = #True
                      newCalltipCloseSeparator = Asc(*keyword\closeCallTipSeparators)
                      Goto GOSCI_ProcessCodeCompletionXXX_L2
                    EndIf
                  Else
                    *currentCalltipKeyword = 0
                  EndIf
                EndIf
              EndIf
            EndIf
            ;In the case that we haven't pushed a call-tipped keyword and no white space was encountered we check if the anticipated
            ;call-tip close separator has been encountered.
            If blnPush = #False And styleFlags&1 = 0
              ;Are we looking for a close calltip separator?
              If anticipatedCalltipCloseSeparator And Chr(anticipatedCalltipCloseSeparator) = word$
                callTipIndex-1
                anticipatedCalltipCloseSeparator = keywords(callTipIndex)\previousCloseCalltipSeparator
                *currentCalltipKeyword = 0
              Else
                If *keyword And *keyword\openCallTipSeparators
                  *currentCalltipKeyword = *keyword
                  If *keyword\flags & #NULL_CALLTIP
                    blnPush = #True
                    newCalltipCloseSeparator = Asc(*keyword\closeCallTipSeparators)
                    Goto GOSCI_ProcessCodeCompletionXXX_L2
                  EndIf
                Else
                  *currentCalltipKeyword = 0
                EndIf
              EndIf
            EndIf
          EndIf
          bytePos + numBytesStyled
          If caretPos <= bytePos
            Break
          EndIf
          numUtf8Bytes - numBytesStyled
          *utf8Buffer + numBytesStyled
        Wend
        FreeMemory(bufferPtr)
        lenWord = Len(word$)
        If lenWord >= *this\codeCompletionChars And *this\state & #LEXER_STATE_ENABLE_CODE_COMPLETION
          If *this\flags & #KEYWORDS_CASE_SENSITIVE = 0
            word$ = LCase(word$)
          EndIf
          ;Build the code completion list.
          ForEach *this\keywords()
            *ptrKeyword = *this\keywords()
            t1$ = *ptrKeyword\keyWord
            If *this\flags & #KEYWORDS_CASE_SENSITIVE = 0
              t1$ = LCase(t1$)
            EndIf
            If Left(t1$, lenWord) = word$
              If *ptrKeyword\flags & #ADD_TO_CODE_COMPLETION
                If codeList$
                  codeList$ + " " + *ptrKeyword\Keyword
                Else
                  codeList$ = *ptrKeyword\Keyword
                EndIf
              EndIf
            EndIf
          Next
          ;Show the list.
          t1$ = codeList$
          If *this\flags & #KEYWORDS_CASE_SENSITIVE = 0
            t1$ = LCase(t1$)
          EndIf
          If codeList$ And t1$ <> word$
            ;Convert to utf-8.
            bufferPtr = AllocateMemory(StringByteLength(codeList$, #PB_UTF8)+1)
            If bufferPtr 
              PokeS(bufferPtr, codeList$, -1, #PB_UTF8)
              ScintillaSendMessage(*this\GadgetID, #SCI_AUTOCSHOW, numBytesStyled, bufferPtr)
              FreeMemory(bufferPtr)
              blnProceedWithCallTip = #False
            Else
              Goto GOSCI_ProcessCodeCompletionXXX_L1
            EndIf
          Else
            Goto GOSCI_ProcessCodeCompletionXXX_L1
          EndIf
        Else
          Goto GOSCI_ProcessCodeCompletionXXX_L1
        EndIf
      Else
        Goto GOSCI_ProcessCodeCompletionXXX_L1
      EndIf
    Else
      GOSCI_ProcessCodeCompletionXXX_L1:
      If ScintillaSendMessage(*this\GadgetID, #SCI_AUTOCACTIVE)
        ScintillaSendMessage(*this\GadgetID, #SCI_AUTOCCANCEL)
        Debug "cancel"
      EndIf
    EndIf
    ;Sort out any call-tips as appropriate.
    If blnProceedWithCallTip And callTipIndex > 0
      callTipIndex - 1
      While keywords(callTipIndex)\keyword\flags & #NULL_CALLTIP
        If callTipIndex = 0
          Break
        EndIf
        callTipIndex - 1
      Wend
      If keywords(callTipIndex)\keyword\flags & #NULL_CALLTIP = 0
        If (*this\lastCallTipIndex <> callTipIndex Or *this\lastStartPos <> ScintillaSendMessage(*this\GadgetID, #SCI_CALLTIPPOSSTART))
          bufferPtr = AllocateMemory(StringByteLength(keywords(callTipIndex)\keyword\callTip, #PB_UTF8)+1)
          If bufferPtr 
            PokeS(bufferPtr, keywords(callTipIndex)\keyword\callTip, -1, #PB_UTF8)
            nPos = ScintillaSendMessage(*this\GadgetID, #SCI_GETCURRENTPOS)
            *this\callTipLine = ScintillaSendMessage(*this\GadgetID, #SCI_LINEFROMPOSITION, nPos)
            t1$ = StringField(keywords(callTipIndex)\keyword\callTip, 1, #LF$)
            t1 = StringByteLength(t1$, #PB_UTF8)
            nPos = ScintillaSendMessage(*this\GadgetID, #SCI_POSITIONFROMLINE, *this\callTipLine) + keywords(callTipIndex)\charPos + 1 - StringByteLength(keywords(callTipIndex)\keyword\keyWord, #PB_UTF8)
            ScintillaSendMessage(*this\GadgetID, #SCI_CALLTIPSHOW, nPos, bufferPtr)
            ScintillaSendMessage(*this\GadgetID, #SCI_CALLTIPSETHLT, 0, t1)
            FreeMemory(bufferPtr)
            *this\lastStartPos = ScintillaSendMessage(*this\GadgetID, #SCI_CALLTIPPOSSTART)
            *this\lastCallTipIndex = callTipIndex
          Else
            Goto GOSCI_ProcessCodeCompletionCalltipsXXX_L3
          EndIf
        EndIf  
      Else
        Goto GOSCI_ProcessCodeCompletionCalltipsXXX_L3
      EndIf
    Else
      GOSCI_ProcessCodeCompletionCalltipsXXX_L3:
      *this\lastStartPos = -1
      *this\callTipLine = -1
      *this\lastCallTipIndex = -1
      ScintillaSendMessage(*this\GadgetID, #SCI_CALLTIPCANCEL) 
    EndIf
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following is the default line-styling function. numUtf8Bytes is guaranteed to be > 0 and does not include the terminating null in the count.
  Procedure Private_StyleLine(GadgetID, *utf8Buffer.ASCII, numUtf8Bytes)
    Protected *this.GoScintilla, numBytesStyled
    Protected ascii.a
    *this = GetGadgetData(GadgetID)
    While numUtf8Bytes > 0
      numBytesStyled = Private_StyleNextSymbol(*this, *utf8Buffer, numUtf8Bytes)
      numUtf8Bytes - numBytesStyled
      *utf8Buffer + numBytesStyled
    Wend
  EndProcedure

  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following internal function is called in order to force a restyling of a range of lines.
  ;The #SCI_COLOURISE message doesn't appear to work! Set 'endLine' to -1 to restyle up to the end of the document.
  ;No return.
  Procedure Private_RestyleLines(GadgetID, startLine, endLine, finalByteToStyle = -1)
    Protected i, lineLength, utf8Buffer, startPos, *this.GoScintilla, blnApplyCodeFolding, t1
    Protected resultFromUserLineStylingFunction, numLines, originalEndLine, numBytesToStyle
    *this = GetGadgetData(GadgetID)
    numLines = ScintillaSendMessage(GadgetID, #SCI_GETLINECOUNT)
    If endLine = -1 Or endLine >= numLines
      endLine = numLines - 1
    EndIf
    originalEndLine = endLine
    If startLine < 0 
      startLine = 0
    EndIf
    If startLine = 0
      *this\foldLevel = #SC_FOLDLEVELBASE    
    Else
      ;We begin the styling at the previous line as it's fold level will be exact and not subject to change.
      ;It may, however, dictate the fold level of subsequent lines (e.g. in the case of a close-fold keyword).
      startLine - 1
      *this\foldLevel = ScintillaSendMessage(GadgetID, #SCI_GETFOLDLEVEL, startLine)&#SC_FOLDLEVELNUMBERMASK
    EndIf
    startPos = ScintillaSendMessage(GadgetID, #SCI_POSITIONFROMLINE, startLine)
    numBytesToStyle = finalByteToStyle - startPos
    ScintillaSendMessage(GadgetID, #SCI_STARTSTYLING, startpos, $1f)
    ;Debug "Startline = " + Str(startLine) + ", Endline = " + Str(endline) + ", Startpos = " + Str(startPos) + ", Endpos = " + Str(finalByteToStyle)
    For i = startLine To endLine
      *this\bytePointer = 0
      *this\previouslyRecordedStyle = #STYLE_DEFAULT
      *this\LineCodeFoldOption = 0 ;No code folding.
      lineLength = ScintillaSendMessage(GadgetID, #SCI_LINELENGTH, i)
      ;The final line being styled may need truncating else we will inevitably be styling more bytes than required. This can impact upon code folding.
      If resultFromUserLineStylingFunction = #STYLE_LINES_AS_REQUIRED And finalByteToStyle <> -1 And lineLength > numBytesToStyle
        lineLength = numBytesToStyle
      EndIf
      numBytesToStyle - lineLength
      If lineLength > 0
        utf8Buffer = AllocateMemory(lineLength + 1)
        If utf8Buffer
          If ScintillaSendMessage(GadgetID, #SCI_GETLINE, i, utf8Buffer)
            ;Call the user-defined line styling function, if present.
            If *this\stylingFunction
              resultFromUserLineStylingFunction = *this\stylingFunction(GadgetID, utf8Buffer, lineLength, i, startLine, originalEndLine)
              If resultFromUserLineStylingFunction = #STYLE_NEXT_LINE_REGARDLESS
                endLine = numLines - 1
              Else
                endLine = originalEndLine
              EndIf
            Else
              Private_StyleLine(GadgetID, utf8Buffer, lineLength)
            EndIf
          EndIf
          FreeMemory(utf8Buffer)
        EndIf
      EndIf
      ;Sort out the fold level.
      If *this\state & (#LEXER_STATE_ENABLE_CODE_FOLDING|#LEXER_STATE_ENABLE_CLICK_ANYWHERE_CODE_FOLDING)
        t1 = 0
        If *this\LineCodeFoldOption >= 1 ;Open fold.
          t1 = #SC_FOLDLEVELHEADERFLAG
        EndIf
        ScintillaSendMessage(GadgetID, #SCI_SETFOLDLEVEL, i, t1|*this\foldLevel)
        *this\foldLevel + *this\LineCodeFoldOption
        If *this\foldLevel < #SC_FOLDLEVELBASE
          *this\foldLevel = #SC_FOLDLEVELBASE
        EndIf
      Else
        ScintillaSendMessage(GadgetID, #SCI_SETFOLDLEVEL, i, 0)
      EndIf
    Next
  EndProcedure
  
  Procedure Private_ScintillaCallBack(GadgetID, *scinotify.SCNotification)
    
    Protected *this.GoScintilla, startLine, endLine, lineLength, utf8Buffer, i, level, newLevel, startPos, nPos, t1
    
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      
      *this = GetGadgetData(GadgetID)
      
      If *this <> #Null
        If ScintillaSendMessage(GadgetID, #SCI_CALLTIPACTIVE) = 0
          *this\LastStartPos = -1
          *this\CallTipLine = -1
          *this\LastCallTipIndex = -1
        Else
          nPos = ScintillaSendMessage(GadgetID, #SCI_GETCURRENTPOS)
          If *this\callTipLine<>-1 And *this\callTipLine <> ScintillaSendMessage(GadgetID, #SCI_LINEFROMPOSITION, nPos)
            *this\lastStartPos = -1
            *this\callTipLine = -1
            *this\lastCallTipIndex = -1
            ScintillaSendMessage(GadgetID, #SCI_CALLTIPCANCEL) 
          EndIf  
        EndIf
      EndIf
      Select *scinotify\nmhdr\code
        Case #SCN_NEEDSHOWN
          ;Here we arrange for lines which may be collapsed to be expanded in the case that the folded section has been altered by the user.
          startLine = ScintillaSendMessage(GadgetID, #SCI_LINEFROMPOSITION, *scinotify\position)
          endLine = ScintillaSendMessage(GadgetID, #SCI_LINEFROMPOSITION, *scinotify\position + *scinotify\length)
          For i = startLine To endLine
            ScintillaSendMessage(GadgetID, #SCI_ENSUREVISIBLE, i)
          Next
          If ScintillaSendMessage(GadgetID, #SCI_GETFOLDLEVEL, endLine)&#SC_FOLDLEVELHEADERFLAG
            level = ScintillaSendMessage(GadgetID, #SCI_GETFOLDLEVEL, endLine) & #SC_FOLDLEVELNUMBERMASK
            newLevel = ScintillaSendMessage(GadgetID, #SCI_GETFOLDLEVEL, endLine+1) & #SC_FOLDLEVELNUMBERMASK
            If newLevel > level
              ScintillaSendMessage(GadgetID, #SCI_ENSUREVISIBLE, endLine+1)
            EndIf  
          EndIf
        Case #SCN_MARGINCLICK
          Select *scinotify\margin
            Case #MARGIN_FOLDING_SYMBOLS
              startLine = ScintillaSendMessage(GadgetID, #SCI_LINEFROMPOSITION, *scinotify\position)
              ;Check it is a header line.
              If *this\state & #LEXER_STATE_ENABLE_CLICK_ANYWHERE_CODE_FOLDING Or ScintillaSendMessage(GadgetID, #SCI_GETFOLDLEVEL, startLine) & #SC_FOLDLEVELHEADERFLAG
                ScintillaSendMessage(GadgetID, #SCI_TOGGLEFOLD, startLine)
              EndIf
          EndSelect
        Case #SCN_MODIFIED
          If *scinotify\linesAdded
            Private_AutosizeLineNumberMargin(GadgetID)
          EndIf
          If *this And *scinotify\modificationType & #SC_MOD_DELETETEXT
            If *this\state&(#LEXER_STATE_ENABLE_CODE_COMPLETION | #LEXER_STATE_ENABLE_CALLTIPS)
              Private_ProcessCodeCompletionCalltips(*this)
            EndIf
          EndIf
        Case #SCN_STYLENEEDED
          startLine = ScintillaSendMessage(GadgetID, #SCI_LINEFROMPOSITION, ScintillaSendMessage(GadgetID, #SCI_GETENDSTYLED))  
          startPos = ScintillaSendMessage(GadgetID, #SCI_POSITIONFROMLINE, startLine)
          endLine = ScintillaSendMessage(GadgetID, #SCI_LINEFROMPOSITION, *scinotify\position)
          endLine = ScintillaSendMessage(GadgetID, #SCI_VISIBLEFROMDOCLINE, endLine)
          ;For some reason, endLine can sometimes be less than startLine (especially after code folding).
          If endLine < startLine
            t1 = startLine
            startLine = endLine
            endLine = t1+1
          EndIf
          Private_RestyleLines(GadgetID, startLine, endLine, *scinotify\position)
        Case #SCN_CHARADDED
          If *scinotify\ch = 10 And *this And *this\state&#LEXER_STATE_ENABLE_AUTO_INDENTATION
            ;Process auto-indent.
            nPos = ScintillaSendMessage(*this\GadgetID, #SCI_GETCURRENTPOS)
            startLine = ScintillaSendMessage(*this\GadgetID, #SCI_LINEFROMPOSITION, nPos)-1
            level = ScintillaSendMessage(*this\GadgetID, #SCI_GETLINEINDENTATION, startLine)
            If level > 0
              startLine+1
              ScintillaSendMessage(*this\GadgetID, #SCI_SETLINEINDENTATION, startLine, level)
              nPos =  ScintillaSendMessage(*this\GadgetID, #SCI_GETLINEINDENTPOSITION, startLine)
              ScintillaSendMessage(*this\GadgetID, #SCI_GOTOPOS, nPos)
            EndIf
          ElseIf *this And *this\state&(#LEXER_STATE_ENABLE_CODE_COMPLETION | #LEXER_STATE_ENABLE_CALLTIPS)
            Private_ProcessCodeCompletionCalltips(*this)
          EndIf
          
      EndSelect
      
      ;Call the user's Scintilla callback.
      If *this And *this\callback
        *this\callback(GadgetID, *scinotify)
      EndIf
      
    EndIf
    
  EndProcedure
  
  Procedure Gadget(GadgetID, x, y, Width, Height, CallbackAddress = 0, Flags = 0)
    
    GadgetHandle = ScintillaGadget(GadgetID, x, y, Width, Height, @Private_ScintillaCallBack())
    
    If GadgetID = #PB_Any
      GadgetID = GadgetHandle
    EndIf
    
    *this.GoScintilla = AllocateMemory(SizeOf(GoScintilla))
    
    If *this <> #Null
      *this\GadgetID = GadgetID
      *this\callback = callbackAddress
      *this\flags = flags
      *this\state = #LEXER_STATE_ENABLE_SYNTAX_STYLING|#LEXER_STATE_ENABLE_CODE_FOLDING
      *this\lexerSeparators = ""
      *this\lexerNumbersStyleIndex = #STYLE_DEFAULT
      *this\codeCompletionChars = #GOSCI_DEFAULTCODECOMPLETIONCHARS
    Else
      DebuggerError("GoScintilla::Gadget() - Impossible to allocate memory !")
    EndIf
    
    ;Set utf-8 codepage.
    ScintillaSendMessage(GadgetID, #SCI_SETCODEPAGE, #SC_CP_UTF8, 0)
    ;Set lexer.
    ScintillaSendMessage(GadgetID, #SCI_SETLEXER, #SCLEX_CONTAINER)
    ;Zero all margins.
    ScintillaSendMessage(GadgetID, #SCI_SETMARGINWIDTHN, #MARGIN_NON_FOLDING_SYMBOLS, 0)
    ;Set some defaults for the folding  margin for future use.
    ScintillaSendMessage(GadgetID, #SCI_SETMARGINSENSITIVEN, #MARGIN_FOLDING_SYMBOLS, #True)  ;Ensure that #SCN_MARGINCLICK notifications are sent for this margin.
    ScintillaSendMessage(GadgetID, #SCI_SETMARGINMASKN, #MARGIN_FOLDING_SYMBOLS, #SC_MASK_FOLDERS)
    ScintillaSendMessage(GadgetID, #SCI_MARKERDEFINE, #SC_MARKNUM_FOLDEROPEN, #SC_MARK_BOXMINUS)
    ScintillaSendMessage(GadgetID, #SCI_MARKERSETFORE, #SC_MARKNUM_FOLDEROPEN, RGB(255,255,255))
    ScintillaSendMessage(GadgetID, #SCI_MARKERSETBACK, #SC_MARKNUM_FOLDEROPEN, 0)
    ScintillaSendMessage(GadgetID, #SCI_MARKERDEFINE, #SC_MARKNUM_FOLDER, #SC_MARK_BOXPLUS)
    ScintillaSendMessage(GadgetID, #SCI_MARKERSETFORE, #SC_MARKNUM_FOLDER, RGB(255,255,255))
    ScintillaSendMessage(GadgetID, #SCI_MARKERSETBACK, #SC_MARKNUM_FOLDER, 0)
    ScintillaSendMessage(GadgetID, #SCI_MARKERDEFINE, #SC_MARKNUM_FOLDERSUB, #SC_MARK_VLINE)
    ScintillaSendMessage(GadgetID, #SCI_MARKERSETBACK, #SC_MARKNUM_FOLDERSUB, 0)
    ScintillaSendMessage(GadgetID, #SCI_MARKERDEFINE, #SC_MARKNUM_FOLDERTAIL, #SC_MARK_LCORNER)
    ScintillaSendMessage(GadgetID, #SCI_MARKERSETBACK, #SC_MARKNUM_FOLDERTAIL, 0)
    ScintillaSendMessage(GadgetID, #SCI_MARKERDEFINE, #SC_MARKNUM_FOLDEREND, #SC_MARK_BOXPLUSCONNECTED)
    ScintillaSendMessage(GadgetID, #SCI_MARKERSETBACK, #SC_MARKNUM_FOLDEREND, 0)
    ScintillaSendMessage(GadgetID, #SCI_MARKERSETFORE, #SC_MARKNUM_FOLDEREND, RGB(255,255,255))
    ScintillaSendMessage(GadgetID, #SCI_MARKERDEFINE, #SC_MARKNUM_FOLDEROPENMID, #SC_MARK_BOXMINUSCONNECTED)
    ScintillaSendMessage(GadgetID, #SCI_MARKERSETBACK, #SC_MARKNUM_FOLDEROPENMID, 0)
    ScintillaSendMessage(GadgetID, #SCI_MARKERSETFORE, #SC_MARKNUM_FOLDEROPENMID, RGB(255,255,255))
    ScintillaSendMessage(GadgetID, #SCI_MARKERDEFINE, #SC_MARKNUM_FOLDERMIDTAIL, #SC_MARK_TCORNER)
    ScintillaSendMessage(GadgetID, #SCI_MARKERSETBACK, #SC_MARKNUM_FOLDERMIDTAIL, 0)
    ;Clear all styles.
    ScintillaSendMessage(GadgetID, #SCI_STYLECLEARALL)
    ;Auto size the margin if appropriate.
    Private_AutosizeLineNumberMargin(GadgetID)
    ;Set case sensitivity for code completion.
    If flags & #KEYWORDS_CASE_SENSITIVE
      ScintillaSendMessage(*this\GadgetID, #SCI_AUTOCSETIGNORECASE, 0)
    Else
      ScintillaSendMessage(*this\GadgetID, #SCI_AUTOCSETIGNORECASE, 1)
    EndIf
    
    ;Call tips.
    *this\lastStartPos = -1
    *this\callTipLine = -1
    *this\lastCallTipIndex = -1
    ;Set style for call-tips.
    ScintillaSendMessage(*this\GadgetID, #SCI_CALLTIPUSESTYLE, 0)
    ;Bookmarks.
    ScintillaSendMessage(*this\GadgetID, #SCI_SETMARGINMASKN, #MARGIN_NON_FOLDING_SYMBOLS, 1)  ;Only marker number 0 to be allowed.
    ScintillaSendMessage(*this\GadgetID, #SCI_MARKERDEFINE, #GOSCI_BOOKMARKMARKERNUM, #SC_MARK_SHORTARROW)
    InitializeStructure(*this, GoScintilla)
    ;Record a pointer to our _GoScintilla structure.
    SetGadgetData(GadgetID, *this)
    
    ProcedureReturn GadgetID
  EndProcedure
 
  Procedure SetText(GadgetID, Text.s, clearUndoStack=#False)

    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      *Texte = UTF8(Text)
      ScintillaSendMessage(GadgetID, #SCI_SETTEXT, Len(Text), *Texte)
      FreeMemory(*Texte)
      If clearUndoStack = #True
        ScintillaSendMessage(GadgetID, #SCI_EMPTYUNDOBUFFER)
      EndIf
      Private_RestyleLines(GadgetID, 0, -1)  
    EndIf 

  EndProcedure
  
  Procedure AppendText(GadgetID, Text.s, clearUndoStack=#False)
    
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      *Texte = UTF8(Text)
      ScintillaSendMessage(GadgetID, #SCI_APPENDTEXT, Len(Text), *Texte)
      FreeMemory(*Texte)
      If clearUndoStack = #True
        ScintillaSendMessage(GadgetID, #SCI_EMPTYUNDOBUFFER)
      EndIf
      Private_RestyleLines(GadgetID, 0, -1)  
    EndIf 
    
  EndProcedure
  
  Procedure.s GetText(GadgetID)
    
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      TextLength = ScintillaSendMessage(GadgetID, #SCI_GETTEXTLENGTH)
      *Text = UTF8(Space(TextLength + 1))
      ScintillaSendMessage(GadgetID, #SCI_GETTEXT, TextLength + 1, *Text)
      Text.s = PeekS(*Text, -1, #PB_UTF8)
      FreeMemory(*Text) 
    EndIf 
    
    ProcedureReturn Text
  EndProcedure
  
  Procedure ClearText(GadgetID)
    
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      ScintillaSendMessage(GadgetID, #SCI_CLEARALL)
    EndIf 
    
  EndProcedure
  
  Procedure Cut(GadgetID)
    
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      ScintillaSendMessage(GadgetID, #SCI_CUT)
    EndIf
    
  EndProcedure
  
  Procedure Copy(GadgetID)
    
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      ScintillaSendMessage(GadgetID, #SCI_COPY)
    EndIf
    
  EndProcedure
  
  Procedure Paste(GadgetID)
    
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      ScintillaSendMessage(GadgetID, #SCI_PASTE)
    EndIf
    
  EndProcedure
  
  Procedure Undo(GadgetID)
    
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      ScintillaSendMessage(GadgetID, #SCI_UNDO)
    EndIf
    
  EndProcedure
  
  Procedure Redo(GadgetID)
    
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      ScintillaSendMessage(GadgetID, #SCI_REDO)
    EndIf
    
  EndProcedure
  
  Procedure SelectAll(GadgetID)
    
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      ScintillaSendMessage(GadgetID, #SCI_SELECTALL)
    EndIf
    
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function retrieves info for the specified keyword in the form of a pointer to it's associated GoScintillaKeywords structure.
  ;Returns 0 if the keyword is not found.
  Procedure.i GetKeywordInfo(GadgetID, Keyword.s)
    Protected result, *this.GoScintilla
    Keyword = Trim(Keyword)
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla And Keyword
      *this = GetGadgetData(GadgetID)  
      If *this And *this\flags & #KEYWORDS_CASE_SENSITIVE = 0
        Keyword = LCase(Keyword)
      EndIf
      If FindMapElement(*this\keywordPtr(), Keyword)
        result = *this\keywordPtr()
      EndIf
    EndIf
    ProcedureReturn result
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function records a list of keywords to use the style specified. The list of words are to be separated by space characters.
  ;Note that only Ascii characters must be used within each keyword.
  ;Duplicates are simply replaced.
  ;Set keywordFlags to one (or more) of the keyword flags #OPEN_FOLD_KEYWORD, #CLOSE_FOLD_KEYWORD or GOSCI_ADDTOCODECOMPLETION ... etc.
  Procedure AddKeywords(GadgetID, Keywords.s, styleIndex=#STYLE_DEFAULT, keywordflags=0, blnSortKeywords=#False)
    Protected *this.GoScintilla, t1
    If Private_AddKeywords(GadgetID, keyWords, styleIndex, keywordFlags)
      *this = GetGadgetData(GadgetID)
      If *this
        If blnSortKeywords
          If *this\flags & #KEYWORDS_CASE_SENSITIVE = 0
            t1 = #PB_Sort_NoCase 
          EndIf
          SortStructuredList(*this\Keywords(), #PB_Sort_Ascending|t1, OffsetOf(Keyword\keyWord), #PB_String)
        EndIf
      EndIf
      Private_RestyleLines(GadgetID, 0, -1)
    EndIf
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following extended function records a list of keywords to use the style specified along with an (optional) set of call-tips.
  ;Note that only Ascii characters must be used within each keyword.
  ;Duplicates are simply replaced.
  ;*ptrKeywords and *ptrCallTips point to string arrays with numKeywords elements. A crash will result if one array contains less elemenst than
  ;the other.
  ;openCallTipSeparators$ and closeCallTipSeparators$ hold non-empty lists of call-tip separators for use with the keywords. Every open call-tip
  ;separator must have an accompanying close call-tip separator. A space character used as part of the openCallTipSeparators$ means that
  ;any symbol will result in the call-tip being displayed.
  ;Set keywordFlags to one (or more) of the keyword flags #GOSCI_OPENFOLDKEYWORD, #GOSCI_CLOSEFOLDKEYWORD or GOSCI_ADDTOCODECOMPLETION ... etc.
  Procedure AddKeywordsEx(GadgetID, numKeywords, *ptrKeywords.STRING, *ptrCallTips.STRING=0, openCallTipSeparators$ = "", closeCallTipSeparators$="", styleIndex=#STYLE_DEFAULT, keywordFlags=0, blnSortKeywords=#False)
    Protected *this.GoScintilla, *keyword.Keyword, lenOpen, lenClose, t1, t1$, t2$, i
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla And *ptrKeywords
      *this = GetGadgetData(GadgetID)
      If *this
        If *ptrCallTips
          ;We must check that we have some separator symbols.
          lenOpen = Len(openCallTipSeparators$)
          lenClose = Len(closeCallTipSeparators$)
          If lenOpen <= 0 Or lenOpen <> lenClose
            ProcedureReturn
          EndIf
          ;Add the separators to the separator list if not already present.
          For i = 1 To lenOpen
            t1$ = Mid(openCallTipSeparators$, i, 1)
            t2$ = Mid(closeCallTipSeparators$, i, 1)
            If t1$ <> " " And FindString(*this\lexerSeparators, t1$, 1) = 0
              *this\lexerSeparators + t1$
            EndIf
            If t2$ <> " " And FindString(*this\lexerSeparators, t2$, 1) = 0
              *this\lexerSeparators + t2$
            EndIf
          Next
        EndIf
        For i = 0 To numKeywords-1
          t1$ = *ptrKeywords\s
          Private_AddKeywords(GadgetID, t1$, styleIndex, keywordFlags)
          If *this\flags & #KEYWORDS_CASE_SENSITIVE = 0
            t1$ = LCase(t1$)
          EndIf
          If *ptrCallTips 
            If FindMapElement(*this\keywordPtr(), t1$)
              *keyword = *this\keywordPtr()
              *keyword\callTip = *ptrCallTips\s
              *keyword\openCallTipSeparators = openCallTipSeparators$
              *keyword\closeCallTipSeparators = closeCallTipSeparators$
            EndIf
            *ptrCallTips + SizeOf(STRING)
          EndIf
          *ptrKeywords + SizeOf(STRING)
        Next
        If blnSortKeywords
          If *this\flags & #KEYWORDS_CASE_SENSITIVE = 0
            t1 = #PB_Sort_NoCase 
          EndIf
          SortStructuredList(*this\Keywords(), #PB_Sort_Ascending|t1, OffsetOf(Keyword\Keyword), #PB_String)
        EndIf
        Private_RestyleLines(GadgetID, 0, -1)
      EndIf
    EndIf
  EndProcedure

  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function removes a list of keywords from the specified Scintilla control. The list of words are to be separated by space characters.
  ;Note that only Ascii characters must be used within each keyword.
  
  Procedure RemoveKeywords(GadgetID, Keywords.s)
    Protected *this.GoScintilla, wordCount, i, t1$, *keyword.Keyword
    Keywords = Trim(Keywords)
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla And keyWords$
      *this = GetGadgetData(GadgetID)  
      If *this And *this\flags & #KEYWORDS_CASE_SENSITIVE = 0
        Keywords = LCase(Keywords)
      EndIf
      wordCount = CountString(Keywords, " ") + 1
      For i = 1 To wordCount
        t1$ = StringField(Keywords, i, " ")
        If FindMapElement(*this\keywordPtr(), t1$)
          *keyword = *this\keywordPtr()
          DeleteMapElement(*this\keywordPtr(), t1$)
          ChangeCurrentElement(*this\keywords(), *keyword)
          DeleteElement(*this\keywords())
        EndIf
      Next
      Private_RestyleLines(GadgetID, 0, -1)
    EndIf
    
  EndProcedure
  
  Procedure Free(GadgetID)
    
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      
      *This.GoScintilla = GetGadgetData(GadgetID)
      
      If *This <> #Null
        FreeMemory(*This)
      EndIf
      
    EndIf 
    
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function sets the colors for the specified style.
  ;Set the various color values to -1 to skip that color.
  ;No return value.
  Procedure SetStyleColors(GadgetID, styleIndex, foreColor=-1, backColor=-1)
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      If foreColor <> -1
        ScintillaSendMessage(GadgetID, #SCI_STYLESETFORE, styleIndex, foreColor)  
      EndIf
      If backColor <> -1
        ScintillaSendMessage(GadgetID, #SCI_STYLESETBACK, styleIndex, backColor)  
      EndIf
    EndIf
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function sets the font for the specified style. Can set bold, italic and underline.
  ;Set fontName$ to "" to skip changing font face. Set fontSize to -1 to skip altering the size. Ditto for fontStyle.
  ;No return value.
  Procedure SetStyleFont(GadgetID, styleIndex, fontName.s, fontSize=-1, fontStyle=-1)
    Protected asciiBuffer, bold, italic, underline
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      If fontName <> ""
        ;Convert the fontName$ to Ascii.
        asciiBuffer = AllocateMemory(Len(fontName) + 1)
        If asciiBuffer
          PokeS(asciiBuffer, fontName, -1, #PB_Ascii)
          ScintillaSendMessage(GadgetID, #SCI_STYLESETFONT, styleIndex, asciiBuffer)
          FreeMemory(asciiBuffer)    
        EndIf
      EndIf
      If fontSize <> -1
        ScintillaSendMessage(GadgetID, #SCI_STYLESETSIZE, styleIndex, fontSize)
      EndIf
      If fontStyle <> -1
        If fontStyle & #PB_Font_Bold
          bold = #True
        EndIf
        ScintillaSendMessage(GadgetID, #SCI_STYLESETBOLD, styleIndex, bold)
        If fontStyle & #PB_Font_Italic
          italic = #True
        EndIf
        ScintillaSendMessage(GadgetID, #SCI_STYLESETITALIC, styleIndex, italic)
        If fontStyle & #PB_Font_Underline
          underline = #True
        EndIf
        ScintillaSendMessage(GadgetID, #SCI_STYLESETUNDERLINE, styleIndex, underline)
      EndIf
      If styleIndex = #STYLE_LINENUMBER
        ;Auto size the margin if appropriate.
        Private_AutosizeLineNumberMargin(GadgetID)
      EndIf
    EndIf
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function adds a delimiter (or delimiter pair) to the underlying Scintilla control.
  ;Note that only Ascii characters must be used within each delimiter.
  ;Duplicates are simply replaced.
  ;Set flags to one (or more) of the constants #DELIMIT_BETWEEN or ... etc.
  ;closeDelimiter$ is only used for delimiters of type #DELIMIT_BETWEEN and are not added to the list of separators.
  Procedure AddDelimiter(GadgetID, delimiter.s, closeDelimiter.s, delimiterFlags, styleIndex=#STYLE_DEFAULT)
    Protected *this.GoScintilla, t1$, *keyword.Keyword
    If delimiter And (closeDelimiter Or delimiterFlags & #DELIMIT_BETWEEN=0) And Private_AddKeywords(GadgetID, delimiter, styleIndex, delimiterFlags)
      If delimiterFlags & #DELIMIT_BETWEEN
        ;We need to record the close delimiter.    
        *this = GetGadgetData(GadgetID)
        t1$ = delimiter
        If *this\flags & #KEYWORDS_CASE_SENSITIVE = 0
          t1$ = LCase(t1$)
        EndIf
        If FindMapElement(*this\keywordPtr(), t1$)
          *keyword = *this\keywordPtr()
          *keyword\closeDelimiter = Asc(closeDelimiter)
        EndIf
      EndIf
      Private_RestyleLines(GadgetID, 0, -1)
    EndIf
  EndProcedure
  
  Procedure SetLineHighlightColor(GadgetID, color)
    
    #GOSCI_HIGHLIGHTERMARKERNUM = #GOSCI_BOOKMARKMARKERNUM + 1
    ScintillaSendMessage(GadgetID, #SCI_MARKERSETBACK, #GOSCI_HIGHLIGHTERMARKERNUM, color)
    ScintillaSendMessage(GadgetID, #SCI_MARKERDEFINE, #GOSCI_HIGHLIGHTERMARKERNUM, #SC_MARK_BACKGROUND)
    
  EndProcedure
  
  Procedure SetLineHighlighted(GadgetID, lineIndex, flag=#True)
    If IsGadget(GadgetID) And GadgetType(GadgetID)=#PB_GadgetType_Scintilla
      If flag
        ScintillaSendMessage(GadgetID, #SCI_MARKERADD, lineIndex, #GOSCI_HIGHLIGHTERMARKERNUM)
      Else
        ScintillaSendMessage(GadgetID, #SCI_MARKERDELETE, lineIndex, #GOSCI_HIGHLIGHTERMARKERNUM)
      EndIf
    EndIf
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function retrieves a Lexer option. See the GoScintilla_HeaderFile.pbi file for a list of possible options.
  Procedure.i GetLexerOption(GadgetID, option)
    Protected result, *this.GoScintilla
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      *this = GetGadgetData(GadgetID)  
      If *this 
        Select option
          Case #LEXER_OPTION_SEPARATOR_SYMBOLS
            result = @*this\lexerSeparators
          Case #LEXER_OPTION_NUMBERS_STYLE_INDEX
            result = *this\lexerNumbersStyleIndex
        EndSelect
      EndIf
    EndIf
    ProcedureReturn result
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function sets an option for the lexer. See the GoScintilla_HeaderFile.pbi file for a list of possible options.
  Procedure SetLexerOption(GadgetID, option, value)
    Protected *this.GoScintilla, text$
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      *this = GetGadgetData(GadgetID)  
      If *this 
        Select option
          Case #LEXER_OPTION_SEPARATOR_SYMBOLS
            If value
              text$ = PeekS(value)
            EndIf
            If *this\lexerSeparators <> text$
              *this\lexerSeparators = text$
              Private_RestyleLines(GadgetID, 0, -1)
            EndIf
          Case #LEXER_OPTION_NUMBERS_STYLE_INDEX
            If *this\lexerNumbersStyleIndex <> value
              *this\lexerNumbersStyleIndex = value
              Private_RestyleLines(GadgetID, 0, -1)
            EndIf
        EndSelect
      EndIf
    EndIf
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function sets the user-defined line styling function.
  ;Such a function, if present, is called before the default GoScintilla's line styling function and is invoked once for each line to be styled
  ;and it's return value directs GoScintilla as to whether it should style any part of the line etc. (See header file).
  ;Set addressOfFunction to 0 to remove this optional function.
  ;Returns the previous function address.
  Procedure.i SetLineStylingFunction(GadgetID, addressOfFunction)
    Protected result, *this.GoScintilla
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      *this = GetGadgetData(GadgetID)  
      If *this
        result = *this\stylingFunction
        *this\stylingFunction = addressOfFunction
        Private_RestyleLines(GadgetID, 0, -1)
      EndIf
    EndIf
    ProcedureReturn result
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function inserts a line of text at the specified lineIndex position (o to numLines). Set lineIndex = -1 to append the line.
  Procedure InsertLineOfText(GadgetID, lineIndex, text$)
    Protected numLines, pos, utf8Buffer, *this.GoScintilla
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      *this = GetGadgetData(GadgetID)
      ;Remove all EOL characters.
      text$ = RemoveString(text$, #LF$)
      text$ = RemoveString(text$, #CR$)
      ;Decide the insertion row.
      numLines = ScintillaSendMessage(GadgetID, #SCI_GETLINECOUNT)
      If (numLines = 0 Or ScintillaSendMessage(GadgetID, #SCI_GETLENGTH) = 0) And *this\SpaceAdded = #False
        
        lineIndex = 0
        
        If text$ = ""
          *this\SpaceAdded = #True
        EndIf
        
      ElseIf lineIndex < 0 Or lineIndex >= numLines
        
        lineIndex = numLines
        
        CompilerSelect #PB_Compiler_OS
            
          CompilerCase #PB_OS_Windows 
            text$ = #CRLF$ + text$ 
            
          CompilerCase #PB_OS_Linux
            text$ = #LF$ + text$
            
          CompilerCase #PB_OS_MacOS
            text$ = #CR$ + text$ 
            
        CompilerEndSelect
        
      Else
        
        CompilerSelect #PB_Compiler_OS
            
          CompilerCase #PB_OS_Windows 
            text$ + #CRLF$   
            
          CompilerCase #PB_OS_Linux
            text$ + #LF$
            
          CompilerCase #PB_OS_MacOS
            text$ + #CR$
            
        CompilerEndSelect

      EndIf
      
      ;Determine the insertion pos.
      pos = ScintillaSendMessage(GadgetID, #SCI_POSITIONFROMLINE, lineIndex)
      ;Insert text
      ;Need to convert to utf-8 first.
      utf8Buffer = AllocateMemory(StringByteLength(text$, #PB_UTF8)+1)
      If utf8Buffer 
        PokeS(utf8Buffer, text$, -1, #PB_UTF8)
        ScintillaSendMessage(GadgetID, #SCI_INSERTTEXT, pos, utf8Buffer)
        FreeMemory(utf8Buffer)
        Private_RestyleLines(GadgetID, lineIndex, lineIndex)  
      EndIf
    EndIf
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function sets control attributes. See header file for more details.
  ;No return.
  Procedure SetAttribute(GadgetID, attribute, value)
    Protected *this.GoScintilla, scinotify.SCNotification
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      Select attribute
        Case #READ_ONLY
          ScintillaSendMessage(GadgetID, #SCI_SETREADONLY, value)
        Case #LINE_NUMBER_AUTOSIZE_PADDING
          If value >= 0
            *this = GetGadgetData(GadgetID)
            If *this And *this\lineNumberAutoSizePadding <> value
              *this\lineNumberAutoSizePadding = value
              ;Auto size the margin if appropriate.
              Private_AutosizeLineNumberMargin(GadgetID)
            EndIf
          EndIf
        Case #CAN_UNDO
          If value = #False
            ScintillaSendMessage(GadgetID, #SCI_EMPTYUNDOBUFFER)
          EndIf
          ScintillaSendMessage(GadgetID, #SCI_SETUNDOCOLLECTION, value)
        Case #WRAP_LINES
          ScintillaSendMessage(GadgetID, #SCI_SETWRAPMODE, value) 
        Case #WRAP_LINES_VISUAL_MARKER
          ScintillaSendMessage(GadgetID, #SCI_SETWRAPVISUALFLAGS, value)
        Case #CODE_COMPLETION_CHARS
          If value > 0
            *this = GetGadgetData(GadgetID)
            If *this And *this\codeCompletionChars <> value
              *this\codeCompletionChars = value
            EndIf
          EndIf
        Case #BOOKMARK_SYMBOL
          ScintillaSendMessage(GadgetID, #SCI_MARKERDEFINE, #GOSCI_BOOKMARKMARKERNUM, value)
      EndSelect
    EndIf
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function retrieves control attributes. See header file for more details of which attributes can be retrieved.
  Procedure.i GetAttribute(GadgetID, attribute)
    Protected result, *this.GoScintilla
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      Select attribute
        Case #READ_ONLY
          result = ScintillaSendMessage(GadgetID, #SCI_GETREADONLY)
        Case #LINE_NUMBER_AUTOSIZE_PADDING
          *this = GetGadgetData(GadgetID)
          If *this
            result = *this\lineNumberAutoSizePadding
          EndIf
        Case #CAN_UNDO
          result = ScintillaSendMessage(GadgetID, #SCI_GETUNDOCOLLECTION)
        Case #WRAP_LINES
          result = ScintillaSendMessage(GadgetID, #SCI_GETWRAPMODE) 
        Case #WRAP_LINES_VISUAL_MARKER
          result = ScintillaSendMessage(GadgetID, #SCI_GETWRAPVISUALFLAGS)
        Case #CODE_COMPLETION_CHARS
          *this = GetGadgetData(GadgetID)
          If *this
            result = *this\codeCompletionChars
          EndIf
      EndSelect
    EndIf
    ProcedureReturn result
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function sets the width of the specified margin.
  ;In the case of the line number margin, this function will fail if the #GOSCI_AUTOSIZELINENUMBERSMARGIN creation flag was set.
  ;No return value.
  Procedure SetMarginWidth(GadgetID, margin, width)
    Protected *this.GoScintilla, blnDoNotProceed
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      If width < 0
        width = 0
      EndIf
      If margin = #MARGIN_LINE_NUMBERS
        *this = GetGadgetData(GadgetID)
        If *this
          If *this\flags & #AUTOSIZE_LINE_NUMBERS_MARGIN
            blnDoNotProceed = #True
          EndIf
        EndIf
      EndIf
      If blnDoNotProceed = #False
        ScintillaSendMessage(GadgetID, #SCI_SETMARGINWIDTHN, margin, width)
      EndIf
    EndIf
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function sets the main font. Can set bold and italic.
  ;Set fontName$ to "" to skip changing font face. Set fontSize to -1 to skip altering the size. Ditto for fontStyle.
  ;No return value.
  Procedure SetFont(GadgetID, fontName.s, fontSize=-1, fontStyle=-1)
    SetStyleFont(GadgetID, #STYLE_DEFAULT, fontName, fontSize, fontStyle)
    ScintillaSendMessage(GadgetID, #SCI_STYLECLEARALL)
    ;Auto size the margin if appropriate.
    Private_AutosizeLineNumberMargin(GadgetID)
  EndProcedure
  
    ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function sets the tab width and whether hard or soft tabs are used. A soft tab inserts spaces.
  ;For this to work, you must remove the default keyboard shortcut for the tab key from the main PB window.
  ;No return value.
  Procedure SetTabs(GadgetID, width, blnUseSoftTabs = #False)
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      ScintillaSendMessage(GadgetID, #SCI_SETTABWIDTH, width)
      ScintillaSendMessage(GadgetID, #SCI_SETUSETABS, 1-blnUseSoftTabs)
    EndIf
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function sets colors for the entire control (not individual styles).
  ;See header file for more details.
  ;No return.
  Procedure SetColor(GadgetID, colorType, color)
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      Select colorType
        Case #BACK_COLOR
          ScintillaSendMessage(GadgetID, #SCI_STYLESETBACK, #STYLE_DEFAULT, color)  
          ScintillaSendMessage(GadgetID, #SCI_STYLECLEARALL)
        Case #FORE_COLOR
          ScintillaSendMessage(GadgetID, #SCI_STYLESETFORE, #STYLE_DEFAULT, color)  
          ScintillaSendMessage(GadgetID, #SCI_STYLECLEARALL)
        Case #SELECTION_BACK_COLOR
          ScintillaSendMessage(GadgetID, #SCI_SETSELBACK, #True, color)  
        Case #SELECTION_FORE_COLOR
          ScintillaSendMessage(GadgetID, #SCI_SETSELFORE, #True, color)  
        Case #LINE_NUMBER_BACK_COLOR
          ScintillaSendMessage(GadgetID, #SCI_STYLESETBACK, #STYLE_LINENUMBER, color)  
        Case #LINE_NUMBER_FORE_COLOR
          ScintillaSendMessage(GadgetID, #SCI_STYLESETFORE, #STYLE_LINENUMBER, color)  
        Case #CARET_LINE_BACK_COLOR
          If color = -1
            ScintillaSendMessage(GadgetID, #SCI_SETCARETLINEVISIBLE, #False)
          Else
            ScintillaSendMessage(GadgetID, #SCI_SETCARETLINEBACK, color)
            ScintillaSendMessage(GadgetID, #SCI_SETCARETLINEVISIBLE, #True)
          EndIf
        Case #CARET_FORE_COLOR
          ScintillaSendMessage(GadgetID, #SCI_SETCARETFORE, color)
        Case #CALLTIP_BACK_COLOR
          ScintillaSendMessage(GadgetID, #SCI_STYLESETBACK, #STYLE_CALLTIP, color)
        Case #CALLTIP_FORE_COLOR
          ScintillaSendMessage(GadgetID, #SCI_STYLESETFORE, #STYLE_CALLTIP, color)
        Case #CALLTIP_FORE_HLT_COLOR
          ScintillaSendMessage(GadgetID, #SCI_CALLTIPSETFOREHLT, color)
        Case #BOOKMARK_BACK_COLOR
          ScintillaSendMessage(GadgetID, #SCI_MARKERSETBACK, #GOSCI_BOOKMARKMARKERNUM, color)
        Case #BOOKMARK_FORE_COLOR
          ScintillaSendMessage(GadgetID, #SCI_MARKERSETFORE, #GOSCI_BOOKMARKMARKERNUM, color)
        Case #FOLD_MARGIN_LO_BACK_COLOR
          ScintillaSendMessage(GadgetID, #SCI_SETFOLDMARGINCOLOUR, 1, color)
        Case #FOLD_MARGIN_HI_BACK_COLOR
          ScintillaSendMessage(GadgetID, #SCI_SETFOLDMARGINHICOLOUR, 1, color)
        Case #FOLD_MARKERS_BACK_COLOR
          ScintillaSendMessage(GadgetID, #SCI_MARKERSETBACK, #SC_MARKNUM_FOLDEROPEN, color)
          ScintillaSendMessage(GadgetID, #SCI_MARKERSETBACK, #SC_MARKNUM_FOLDER, color)
          ScintillaSendMessage(GadgetID, #SCI_MARKERSETBACK, #SC_MARKNUM_FOLDERSUB, color)
          ScintillaSendMessage(GadgetID, #SCI_MARKERSETBACK, #SC_MARKNUM_FOLDERTAIL, color)
          ScintillaSendMessage(GadgetID, #SCI_MARKERSETBACK, #SC_MARKNUM_FOLDEREND, color)
          ScintillaSendMessage(GadgetID, #SCI_MARKERSETBACK, #SC_MARKNUM_FOLDEROPENMID, color)
          ScintillaSendMessage(GadgetID, #SCI_MARKERSETBACK, #SC_MARKNUM_FOLDERMIDTAIL, color)
        Case #FOLD_MARKERS_FORE_COLOR
          ScintillaSendMessage(GadgetID, #SCI_MARKERSETFORE, #SC_MARKNUM_FOLDEROPEN, color)
          ScintillaSendMessage(GadgetID, #SCI_MARKERSETFORE, #SC_MARKNUM_FOLDER, color)
          ScintillaSendMessage(GadgetID, #SCI_MARKERSETFORE, #SC_MARKNUM_FOLDEREND, color)
          ScintillaSendMessage(GadgetID, #SCI_MARKERSETFORE, #SC_MARKNUM_FOLDEROPENMID, color)
      EndSelect
    EndIf
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function retrieves the specified color for the entire control (not individual styles).
  ;See header file for more details of which color constants can be used here (not all colors can be retrieved).
  Procedure GetColor(GadgetID, colorType)
    Protected result
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      Select colorType
        Case #BACK_COLOR
          result = ScintillaSendMessage(GadgetID, #SCI_STYLEGETBACK, #STYLE_DEFAULT) 
        Case #FORE_COLOR
          result = ScintillaSendMessage(GadgetID, #SCI_STYLEGETFORE, #STYLE_DEFAULT) 
        Case #LINE_NUMBER_BACK_COLOR
          result = ScintillaSendMessage(GadgetID, #SCI_STYLEGETBACK, #STYLE_LINENUMBER)  
        Case #LINE_NUMBER_FORE_COLOR
          result = ScintillaSendMessage(GadgetID, #SCI_STYLEGETFORE, #STYLE_LINENUMBER)  
        Case #CARET_LINE_BACK_COLOR
          result = ScintillaSendMessage(GadgetID, #SCI_GETCARETLINEBACK)
        Case #CARET_FORE_COLOR
          result = ScintillaSendMessage(GadgetID, #SCI_GETCARETFORE)
        Case #CALLTIP_BACK_COLOR
          result = ScintillaSendMessage(GadgetID, #SCI_STYLEGETBACK, #STYLE_CALLTIP)
        Case #CALLTIP_FORE_COLOR
          result = ScintillaSendMessage(GadgetID, #SCI_STYLEGETFORE, #STYLE_CALLTIP)
      EndSelect
    EndIf
    ProcedureReturn result
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function can be called by a user-defined line styling function in order to increment the current line's fold level
  ;(as in the line currently being styled). DO NOT call this function from outside of a user-defined line styling function!
  ;No return value.
  Procedure IncFoldLevel(GadgetID)
    Protected *this.GoScintilla
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      *this = GetGadgetData(GadgetID)  
      If *this\state & (#LEXER_STATE_ENABLE_CODE_FOLDING|#LEXER_STATE_ENABLE_CLICK_ANYWHERE_CODE_FOLDING)
        *this\LineCodeFoldOption + 1
      EndIf
    EndIf
  EndProcedure

  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function can be called by a user-defined line styling function in order to decrement the current line's fold level
  ;(as in the line currently being styled). DO NOT call this function from outside of a user-defined line styling function!
  ;No return value.
  Procedure DecFoldLevel(GadgetID)
    Protected *this.GoScintilla
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      *this = GetGadgetData(GadgetID)  
      If *this\state & (#LEXER_STATE_ENABLE_CODE_FOLDING|#LEXER_STATE_ENABLE_CLICK_ANYWHERE_CODE_FOLDING)
        If *this\foldLevel > #SC_FOLDLEVELBASE Or *this\LineCodeFoldOption
          *this\LineCodeFoldOption - 1
        EndIf
      EndIf
    EndIf
  EndProcedure
  
    ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function can be called by a user-defined line styling function in order to invoke GoScintilla's default lexer to style
  ;the next symbol in the line. DO NOT call this function from outside of a user-defined line styling function!
  ;Returns the number of bytes actually styled.
  Procedure.i StyleNextSymbol(GadgetID, *bytePtr.ASCII, numBytesRemaining)
    Protected *this.GoScintilla, numBytesStyled
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla And numBytesRemaining
      *this = GetGadgetData(GadgetID)  
      ;Reset the left-delimiter previously recorded style if this function is being called out of order.
      If *this\bytePointer <> *bytePtr
        *this\previouslyRecordedStyle = #STYLE_DEFAULT
      EndIf
      numBytesStyled = Private_StyleNextSymbol(*this, *bytePtr, numBytesRemaining)
      *this\bytePointer = *bytePtr + numBytesStyled
    EndIf
    ProcedureReturn numBytesStyled
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function retrieves a line's user data value.
  Procedure.i GetLineData(GadgetID, lineIndex)
    Protected result, numLines
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      numLines = ScintillaSendMessage(GadgetID, #SCI_GETLINECOUNT)
      If lineIndex >= 0 And lineIndex < numLines
        result = ScintillaSendMessage(GadgetID, #SCI_GETLINESTATE, lineIndex)
      EndIf
    EndIf
    ProcedureReturn result
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function sets a line's user data value.
  ;Returns the original value.
  Procedure.i SetLineData(GadgetID, lineIndex, value)
    Protected result, numLines
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      numLines = ScintillaSendMessage(GadgetID, #SCI_GETLINECOUNT)
      If lineIndex >=0 And lineIndex < numLines
        result = ScintillaSendMessage(GadgetID, #SCI_GETLINESTATE, lineIndex)
        ScintillaSendMessage(GadgetID, #SCI_SETLINESTATE, lineIndex, value)
      EndIf
    EndIf
    ProcedureReturn result
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function searches for a bookmarked line starting from the given line.
  ;Set direction < 0 for a backwards search.
  ;Returns -1 if no bookmark is found.
  Procedure.i FindBookmarkedLine(id, startLine, direction=1)
    Protected result=-1
    If IsGadget(id) And GadgetType(id) = #PB_GadgetType_Scintilla
      If direction < 0
        result = ScintillaSendMessage(id, #SCI_MARKERPREVIOUS, startLine, 1)
      Else
        result = ScintillaSendMessage(id, #SCI_MARKERNEXT, startLine, 1)
      EndIf
    EndIf
    ProcedureReturn result
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function sets or clears a bookmark from the given line depending on the flag parameter.
  Procedure SetLineBookmark(GadgetID, lineIndex, flag=#True)
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      If flag
        ScintillaSendMessage(GadgetID, #SCI_MARKERADD, lineIndex, #GOSCI_BOOKMARKMARKERNUM)    
      Else
        ScintillaSendMessage(GadgetID, #SCI_MARKERDELETE, lineIndex, #GOSCI_BOOKMARKMARKERNUM) 
      EndIf
    EndIf
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function returns #True if the specified line shows a bookmark.
  Procedure.i GetLineBookmark(GadgetID, lineIndex)
    Protected result
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      result = ScintillaSendMessage(GadgetID, #SCI_MARKERGET, lineIndex)&1
    EndIf
    ProcedureReturn result
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function retrieves the text (minus any EOL characters) for a given line.
  Procedure.s GetLineText(GadgetID, lineIndex)
    Protected text$, numLines, lineLength, utf8Buffer, *ptrAscii.ASCII
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      numLines = ScintillaSendMessage(GadgetID, #SCI_GETLINECOUNT)
      If lineIndex >=0 And lineIndex < numLines
        lineLength = ScintillaSendMessage(GadgetID, #SCI_LINELENGTH, lineIndex)
        If lineLength
          utf8Buffer = AllocateMemory(lineLength+1)
          If utf8Buffer
            ScintillaSendMessage(GadgetID, #SCI_GETLINE, lineIndex, utf8Buffer)
            ;Remove any terminating EOL characters.
            *ptrAscii = utf8Buffer + lineLength - 1
            While (*ptrAscii\a = 10 Or *ptrAscii\a = 13) And lineLength
              lineLength - 1
              *ptrAscii - 1
            Wend
            text$ = PeekS(utf8Buffer, lineLength, #PB_UTF8)
            FreeMemory(utf8Buffer)
          EndIf
        EndIf
      EndIf
    EndIf
    ProcedureReturn text$
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function changes the text for a given line.
  ;No return value.
  Procedure SetLineText(GadgetID, lineIndex, text$)
    Protected numLines, lineLength, startPos, endPos, char.a, utf8Buffer
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      numLines = ScintillaSendMessage(GadgetID, #SCI_GETLINECOUNT)
      If lineIndex >=0 And lineIndex < numLines
        ;Remove all EOL characters.
        text$ = RemoveString(text$, #LF$)
        text$ = RemoveString(text$, #CR$)
        ;Find the beginning and the end of the text to replace.
        lineLength = ScintillaSendMessage(GadgetID, #SCI_LINELENGTH, lineIndex)
        startPos = ScintillaSendMessage(GadgetID, #SCI_POSITIONFROMLINE, lineIndex)
        endPos = startPos + lineLength
        ;We ignore any EOL characters.
        endPos - 1
        char = ScintillaSendMessage(GadgetID, #SCI_GETCHARAT, endPos)
        While (char = 10 Or char = 13) And endPos >= startPos
          endPos-1
          char = ScintillaSendMessage(GadgetID, #SCI_GETCHARAT, endPos)
        Wend
        endPos + 1
        ;Need to convert text to utf-8 first.
        utf8Buffer = AllocateMemory(StringByteLength(text$, #PB_UTF8)+1)
        If utf8Buffer 
          PokeS(utf8Buffer, text$, -1, #PB_UTF8)
          ScintillaSendMessage(GadgetID, #SCI_SETTARGETSTART, startPos)
          ScintillaSendMessage(GadgetID, #SCI_SETTARGETEND, endPos)
          ScintillaSendMessage(GadgetID, #SCI_REPLACETARGET, -1, utf8Buffer)
          FreeMemory(utf8Buffer)
          Private_RestyleLines(GadgetID, lineIndex, lineIndex)  
        EndIf
      EndIf
    EndIf
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function gets the width of the specified margin.
  Procedure.i GetMarginWidth(GadgetID, margin)
    Protected result
    If IsGadget(id) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      result = ScintillaSendMessage(GadgetID, #SCI_GETMARGINWIDTHN, margin)
    EndIf
    ProcedureReturn result
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function returns the number of lines of text.
  Procedure.i GetNumberOfLines(GadgetID)
    Protected result
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      result = ScintillaSendMessage(GadgetID, #SCI_GETLINECOUNT)
    EndIf
    ProcedureReturn result
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function returns the selected text.
  Procedure.s GetSelectedText(GadgetID)
    Protected text$, numBytes, utf8Buffer
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      numBytes = ScintillaSendMessage(GadgetID, #SCI_GETSELTEXT)
      If numBytes
        utf8Buffer = AllocateMemory(numBytes)
        If utf8Buffer
          ScintillaSendMessage(GadgetID, #SCI_GETSELTEXT, 0, utf8Buffer)
          text$ = PeekS(utf8Buffer, -1, #PB_UTF8)
          FreeMemory(utf8Buffer)
        EndIf
      EndIf
    EndIf
    ProcedureReturn text$
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function replaces the current selection with the given text.
  ;No return value.
  Procedure ReplaceSelectedText(GadgetID, text$, blnScrollCaretIntoView=#False)
    Protected startPos, endPos, utf8Buffer, byteLength
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      startPos = ScintillaSendMessage(GadgetID, #SCI_GETSELECTIONSTART)
      endPos = ScintillaSendMessage(GadgetID, #SCI_GETSELECTIONEND)
      ;Need to convert text to utf-8 first.
      byteLength = StringByteLength(text$, #PB_UTF8)
      utf8Buffer = AllocateMemory(byteLength+1)
      If utf8Buffer 
        PokeS(utf8Buffer, text$, -1, #PB_UTF8)
        ScintillaSendMessage(GadgetID, #SCI_SETTARGETSTART, startPos)
        ScintillaSendMessage(GadgetID, #SCI_SETTARGETEND, endPos)
        ScintillaSendMessage(GadgetID, #SCI_REPLACETARGET, -1, utf8Buffer)
        startPos + byteLength
        ScintillaSendMessage(GadgetID, #SCI_SETCURRENTPOS, startpos)
        ScintillaSendMessage(GadgetID, #SCI_SETANCHOR, startpos)
        If blnScrollCaretIntoView
          ScintillaSendMessage(GadgetID, #SCI_GOTOPOS, startPos)
        EndIf
        FreeMemory(utf8Buffer)
        Private_RestyleLines(GadgetID, 0, -1)  
      EndIf
    EndIf
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function retrieves the control's user data.
  Procedure.i GetUserData(GadgetID)
    Protected result, *this.GoScintilla
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      *this = GetGadgetData(GadgetID)
      If *this
        result = *this\userData
      EndIf
    EndIf
    ProcedureReturn result
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function sets the control's user data.
  ;Returns the original value.
  Procedure.i SetUserData(GadgetID, value)
    Protected result, *this.GoScintilla
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      *this = GetGadgetData(GadgetID)
      If *this
        result = *this\userData
        *this\userData = value
      EndIf
    EndIf
    ProcedureReturn result
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function removes the specified line of text.
  ;No return value.
  Procedure DeleteLine(GadgetID, lineIndex)
    Protected numLines, lineLength, startPos, endPos, char.a
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      If ScintillaSendMessage(GadgetID, #SCI_GETLENGTH)
        numLines = ScintillaSendMessage(GadgetID, #SCI_GETLINECOUNT)
        If lineIndex >=0 And lineIndex < numLines
          lineLength = ScintillaSendMessage(GadgetID, #SCI_LINELENGTH, lineIndex)
          startPos = ScintillaSendMessage(GadgetID, #SCI_POSITIONFROMLINE, lineIndex)
          endPos = startPos + lineLength
          If lineIndex = numLines - 1
            ;We may have to delete the EOL characters in the previous line.
            If lineIndex
              startPos-1
              char = ScintillaSendMessage(GadgetID, #SCI_GETCHARAT, startPos)
              While char = 10 Or char = 13
                startPos-1
                char = ScintillaSendMessage(GadgetID, #SCI_GETCHARAT, startPos)
              Wend
              startPos+1
            EndIf
          EndIf
          ;We now replace the text with an empty string.
          ScintillaSendMessage(GadgetID, #SCI_SETTARGETSTART, startPos)
          ScintillaSendMessage(GadgetID, #SCI_SETTARGETEND, endPos)
          ScintillaSendMessage(GadgetID, #SCI_REPLACETARGET, -1, @"")
        EndIf
      EndIf
    EndIf
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function retrieves state information. See header file for more details of which states can be retrieved.
  Procedure.i GetState(GadgetID, stateType)
    Protected result, nPos
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      Select stateType
        Case #CURRENT_LINE
          nPos = ScintillaSendMessage(GadgetID, #SCI_GETCURRENTPOS)
          result = ScintillaSendMessage(GadgetID, #SCI_LINEFROMPOSITION, nPos)
        Case #IS_MODIFIED
          result = ScintillaSendMessage(GadgetID, #SCI_GETMODIFY)
        Case #IS_READY_TO_REDO
          result = ScintillaSendMessage(GadgetID, #SCI_CANREDO)
        Case #IS_READY_TO_UNDO
          result = ScintillaSendMessage(GadgetID, #SCI_CANUNDO)
        Case #IS_EMPTY
          If ScintillaSendMessage(GadgetID, #SCI_GETLENGTH) = 0
            result = #True
          EndIf
      EndSelect
    EndIf
    ProcedureReturn result
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function sets a control state. See header file for more details.
  ;No return.
  Procedure SetState(GadgetID, stateType, value=0)
    Protected nPos
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      Select stateType
        Case #CURRENT_LINE
          ScintillaSendMessage(GadgetID, #SCI_GOTOLINE, value)
          ScintillaSendMessage(GadgetID, #SCI_ENSUREVISIBLE, value)
        Case #DOCUMENT_SAVED ;Value is ignored.
          ScintillaSendMessage(GadgetID, #SCI_SETSAVEPOINT)
        Case #EMPTY_UNDO_BUFFER ;Value is ignored.
          ScintillaSendMessage(GadgetID, #SCI_EMPTYUNDOBUFFER)
        Case #CLEAR_ALL_BOOKMARKS ;Value is ignored.
          ScintillaSendMessage(GadgetID, #SCI_MARKERDELETEALL, #GOSCI_BOOKMARKMARKERNUM)
        Case #RESTYLE_DOCUMENT
          Private_RestyleLines(GadgetID, 0, -1)
      EndSelect
    EndIf
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function returns the tab width.
  Procedure.i GetTabWidth(GadgetID)
    Protected result
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      result = ScintillaSendMessage(GadgetID, #SCI_GETTABWIDTH)
    EndIf
    ProcedureReturn result
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function adds additional call-tip separators not tied to any individual keyword and instead assume global significance.
  ;The choices are a null call-tip or a terminal call-tip.
  ;No return value.
  Procedure AddGlobalCalltipSeparators(GadgetID, openCallTipSeparators$, closeCallTipSeparators$, flags)
    Protected *this.GoScintilla, *keyword.Keyword
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla And openCallTipSeparators$ <>" "
      *this = GetGadgetData(GadgetID)  
      If *this
        Select flags
          Case #NULL_CALLTIP 
            If closeCallTipSeparators$ = " " Or Len(openCallTipSeparators$) <> 1 Or Len(closeCallTipSeparators$) <> 1
              ProcedureReturn
            EndIf
          Case #TERMINAL_CALLTIP
            If Len(openCallTipSeparators$) <> 1 Or openCallTipSeparators$ = " "
              ProcedureReturn
            EndIf
          Default 
            ProcedureReturn
        EndSelect
        If Private_AddKeywords(GadgetID, openCallTipSeparators$, -1, flags)
          If FindMapElement(*this\keywordPtr(), openCallTipSeparators$)
            *keyword = *this\keywordPtr()
            *keyword\openCallTipSeparators = openCallTipSeparators$
            *keyword\closeCallTipSeparators = closeCallTipSeparators$
            If FindString(*this\lexerSeparators, openCallTipSeparators$, 1) = 0
              *this\lexerSeparators + openCallTipSeparators$
            EndIf
            If flags = #NULL_CALLTIP And FindString(*this\lexerSeparators, closeCallTipSeparators$, 1) = 0
              *this\lexerSeparators + closeCallTipSeparators$
            EndIf
          EndIf
        EndIf
      EndIf
    EndIf
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function retrieves the lexer state.
  Procedure.i GetLexerState(GadgetID)
    Protected *this.GoScintilla, result
    If IsGadget(id) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      *this = GetGadgetData(GadgetID)
      If *this
        result = *this\state
      EndIf
    EndIf
    ProcedureReturn result
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function sets various lexer states; e.g. disables syntax styling.
  ;No return value.
  Procedure SetLexerState(GadgetID, state)
    Protected *this.GoScintilla, blnNeedRestyle
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla
      *this = GetGadgetData(GadgetID)
      If *this
        ;Do we need to restyle the whole document?
        If *this\state & (#LEXER_STATE_ENABLE_SYNTAX_STYLING|#LEXER_STATE_ENABLE_CODE_FOLDING|#LEXER_STATE_ENABLE_CLICK_ANYWHERE_CODE_FOLDING) <> state & (#LEXER_STATE_ENABLE_SYNTAX_STYLING|#LEXER_STATE_ENABLE_CODE_FOLDING|#LEXER_STATE_ENABLE_CLICK_ANYWHERE_CODE_FOLDING)
          blnNeedRestyle = #True
        EndIf
        *this\state = state
        If blnNeedRestyle
          Private_RestyleLines(GadgetID, 0, -1)
        EndIf 
      EndIf
    EndIf
  EndProcedure
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following function can be called by a user-defined line styling function in order to determine the number of bytes in the next 'symbol',
  ;that which would be retrieved by GoScintilla's lexer whilst styling the current line.
  ;DO NOT call this function from outside of a user-defined line styling function!
  Procedure.i GetNextSymbolByteLength(GadgetID, *bytePtr.ASCII, numBytesRemaining)
    Protected *this.GoScintilla, result
    If IsGadget(GadgetID) And GadgetType(GadgetID) = #PB_GadgetType_Scintilla And numBytesRemaining
      *this = GetGadgetData(GadgetID)  
      result = Private_StyleNextSymbol(*this, *bytePtr, numBytesRemaining, #True)
    EndIf
    ProcedureReturn result
  EndProcedure
  
  
EndModule

CompilerIf #PB_Compiler_IsMainFile
  
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
  
  ;/////////////////////////////////////////////////////////////////////////////////
  ;The following is our user-defined line-styling function, called whenever GoScintilla is called upon to style lines.
  
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
      Enumeration
        #Highlight_Remove=-1
        #Highlight_None=0
        #Highlight_Visible=1
        #Highlight_End=2
      EndEnumeration
      
      regexHEX = CreateRegularExpression(#PB_Any, "^[$][0-9A-Fa-f]+")
      regexBIN = CreateRegularExpression(#PB_Any, "^[%][0-1]+")
      regexFunc = CreateRegularExpression(#PB_Any, "^^[\w]+[$]?([.][\w]*)?(::)?([\w]*)?[(]")
      regexFuncName = CreateRegularExpression(#PB_Any, "^[\w]+[$]?")
      regexType = CreateRegularExpression(#PB_Any, "^[.][a-zA-Z_][\w]*")
      regexModuleType = CreateRegularExpression(#PB_Any, "^[.]([a-zA-Z_][\w]*)(::)([a-zA-Z_][\w]*)")
      regexModule = CreateRegularExpression(#PB_Any, "^([a-zA-Z_][\w]*)(::)")
      regexPointer = CreateRegularExpression(#PB_Any, "^[\*][a-zA-Z_][\w]*")
      
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
          
          ; search module name
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
    
    If GoScintilla::GetLineData(GadgetID, currentLine)<>lineHighlighting
      Select lineHighlighting
        Case #Highlight_Visible
          GoScintilla::SetLineData(GadgetID, currentLine, #Highlight_Visible)
          GoScintilla::SetLineHighlighted(GadgetID,currentLine,1)
        Case #Highlight_End
          GoScintilla::SetLineData(GadgetID, currentLine, #Highlight_None)
          GoScintilla::SetLineHighlighted(GadgetID, currentLine, 1)
        Case #Highlight_None, #Highlight_Remove
          GoScintilla::SetLineData(GadgetID, currentLine, #Highlight_None)
          GoScintilla::SetLineHighlighted(GadgetID, currentLine, 0)
      EndSelect
      result = GoScintilla::#STYLE_NEXT_LINE_REGARDLESS
    EndIf
    
    ProcedureReturn result
  EndProcedure
  
  
  
  
  If OpenWindow(0, 100, 200, 600, 600, "GoScintilla demo!", #PB_Window_SystemMenu | #PB_Window_MinimizeGadget | #PB_Window_ScreenCentered)
    
    RemoveKeyboardShortcut(0, #PB_Shortcut_Tab)
    RemoveKeyboardShortcut(0, #PB_Shortcut_Tab | #PB_Shortcut_Shift)
    
    GoScintilla::Gadget(1, 10, 10, 580, 580, 0, GoScintilla::#AUTOSIZE_LINE_NUMBERS_MARGIN | GoScintilla::#KEYWORDS_CASE_SENSITIVE)
    ;Set the padding added to the width of the line-number margin.
    GoScintilla::SetAttribute(1, GoScintilla::#LINE_NUMBER_AUTOSIZE_PADDING, 10)
    GoScintilla::SetMarginWidth(1, GoScintilla::#MARGIN_FOLDING_SYMBOLS, 14)
    GoScintilla::SetFont(1, "CQ Mono", 14)
    GoScintilla::SetTabs(1, 1, #False)
    
    ;Set colors of text area
    GoScintilla::SetColor(1, GoScintilla::#FORE_COLOR, $FFFFFF)
    GoScintilla::SetColor(1, GoScintilla::#BACK_COLOR, $000000)
    
    ;Set colors of caret (caret color and the back color of the line containing the caret)
    GoScintilla::SetColor(1, GoScintilla::#CARET_FORE_COLOR, $FFFFFF)
    GoScintilla::SetColor(1, GoScintilla::#CARET_LINE_BACK_COLOR, $000000)
    
    ;Set colors of selection
    GoScintilla::SetColor(1, GoScintilla::#SELECTION_BACK_COLOR, $808080)
    GoScintilla::SetColor(1, GoScintilla::#SELECTION_FORE_COLOR, $ffffff)
    
    ;Set colors of line margin
    GoScintilla::SetColor(1, GoScintilla::#LINE_NUMBER_FORE_COLOR, RGB(000, 180, 180))
    GoScintilla::SetColor(1, GoScintilla::#LINE_NUMBER_BACK_COLOR, $000000)
    
    ;Set colors of fold margin
    GoScintilla::SetColor(1, GoScintilla::#FOLD_MARGIN_HI_BACK_COLOR, $000000)
    GoScintilla::SetColor(1, GoScintilla::#FOLD_MARGIN_LO_BACK_COLOR, $000000)
    
    ;Set colors of fold markers
    GoScintilla::SetColor(1, GoScintilla::#FOLD_MARKERS_FORE_COLOR, $888800)
    GoScintilla::SetColor(1, GoScintilla::#FOLD_MARKERS_BACK_COLOR, $000000)
    
    GoScintilla::SetLineHighlightColor(1, $000000)
    
    ;Set individual styles for commands.
    GoScintilla::SetStyleFont(1, #STYLES_COMMANDS, "", -1, #PB_Font_Bold)
    GoScintilla::SetStyleColors(1, #STYLES_COMMANDS, $808080)    ;We have omitted the optional back color.
    
    ;Set individual styles for comments.
    GoScintilla::SetStyleColors(1, #STYLES_COMMENTS, RGB(000, 255, 000))    ;We have omitted the optional back color.
    
    ;Set individual styles for literal strings.
    GoScintilla::SetStyleColors(1, #STYLES_LITERAL_STRINGS, RGB(147, 000, 255))  ;We have omitted the optional back color.
    
    ;Set individual styles for numbers.
    GoScintilla::SetStyleColors(1, #STYLES_NUMBERS, RGB(255, 000, 164))     ;We have omitted the optional back color.
    
    ;Set individual styles for constants.
    GoScintilla::SetStyleColors(1, #STYLES_CONSTANTS, RGB(255, 115, 000))   ;We have omitted the optional back color.
    
    ;Set individual styles for functions.
    GoScintilla::SetStyleColors(1, #STYLES_FUNCTIONS, RGB(000, 142, 146))   ;We have omitted the optional back color.
    
    ;Set individual styles for separators.
    GoScintilla::SetStyleColors(1, #STYLES_SEPARATORS, RGB(255, 255, 000))  ;We have omitted the optional back color.
    
    ;Set individual styles for operators.
    GoScintilla::SetStyleColors(1, #STYLES_OPERATORS, RGB(255, 255, 000))   ;We have omitted the optional back color.
    
    ;Set individual styles for types.
    GoScintilla::SetStyleColors(1, #STYLES_TYPES, RGB(255, 125, 125))       ;We have omitted the optional back color.
    
    ;Set individual styles for modules.
    GoScintilla::SetStyleColors(1, #STYLES_MODULES, RGB(255, 000, 000))       ;We have omitted the optional back color.
    
    ;Set individual styles for pointers.
    GoScintilla::SetStyleColors(1, #STYLES_POINTERS, RGB(125, 125, 255))       ;We have omitted the optional back color.
    
    ;Set delimiters and keywords for our syntax highlighting.
    ;========================================================
    ;Delimiters.
    ;First set up a ; symbol to denote a comment.
    GoScintilla::AddDelimiter(1, ";", "", GoScintilla::#DELIMIT_TO_END_OF_LINE, #STYLES_COMMENTS)
    ;Now set up quotes to denote literal strings.
    GoScintilla::AddDelimiter(1, Chr(34), Chr(34), GoScintilla::#DELIMIT_BETWEEN, #STYLES_LITERAL_STRINGS)
    ;Now set up a # symbol to denote a constant.
    GoScintilla::AddDelimiter(1, "#", "", GoScintilla::#LEFT_DELIMIT_WITHOUT_WHITESPACE, #STYLES_CONSTANTS)
    ;Now set up a \ symbol to denote a type.
;     GoScintilla::AddDelimiter(1, "\", "", GoScintilla::#LEFT_DELIMIT_WITHOUT_WHITESPACE, #STYLES_TYPES)
;     GoScintilla::AddDelimiter(1, "\", "", GoScintilla::#RIGHT_DELIMIT_WITHOUT_WHITESPACE, #STYLES_TYPES)
    
    ;Basic command keywords.
    GoScintilla::AddKeywords(1, "Debug End If ElseIf Else EndIf For To Next Step Protected", #STYLES_COMMANDS)
    GoScintilla::AddKeywords(1, "ProcedureReturn Select Case EndSelect Global Declare Static", #STYLES_COMMANDS)
    GoScintilla::AddKeywords(1, "CompilerIf CompilerEndIf Dim And Or NewList NewMap Define", #STYLES_COMMANDS)
    GoScintilla::AddKeywords(1, "Map List Array Default While Wend Repeat Until ForEver ForEach", #STYLES_COMMANDS)
   
    ;Add some folding keywords.
    GoScintilla::AddKeywords(1, "Procedure ProcedureDll ProcedureCDll ProcedureC Macro DeclareModule Module Enumeration", #STYLES_COMMANDS, GoScintilla::#OPEN_FOLD_KEYWORD)
    GoScintilla::AddKeywords(1, "EndProcedure EndMacro EndDeclareModule EndModule EndEnumeration", #STYLES_COMMANDS, GoScintilla::#CLOSE_FOLD_KEYWORD)
    
    ;Add separator keywords
    GoScintilla::AddKeywords(1, "( ) [ ] { } , : . \", #STYLES_SEPARATORS)
    
    ;Add operator keywords
    GoScintilla::AddKeywords(1, "= + - * / % & | < >", #STYLES_OPERATORS)
    
    ;Additional lexer options.
    ;=========================
    ;The lexer needs to know what separator characters we are using.
    GoScintilla::SetLexerOption(1, GoScintilla::#LEXER_OPTION_SEPARATOR_SYMBOLS, @"=+-*/%&|<>(){}[],.\:")
    ;We can also set a style for numbers.
    GoScintilla::SetLexerOption(1, GoScintilla::#LEXER_OPTION_NUMBERS_STYLE_INDEX, #STYLES_NUMBERS)
    
    ;Set our user-defined line styling function.
    ;===========================================
    GoScintilla::SetLineStylingFunction(1, @MyLineStyler())

    Repeat
      eventID=WaitWindowEvent()
      Select eventID
        Case #PB_Event_Gadget
          Select EventGadget()
              
            Case 1
              If EventType() = #PB_EventType_RightClick
                Debug "#PB_EventType_RightClick"
              EndIf
              
              
          EndSelect
      EndSelect
    Until eventID=#PB_Event_CloseWindow
    
  EndIf
  
CompilerEndIf

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 1 (Linux - x64)
; Folding = --Pks-QQekByhy-
; EnableXP
; CompileSourceDirectory