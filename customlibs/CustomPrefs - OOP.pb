; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Project name : Custom Preferences system
; File Name : CustomPrefs - OOP.pb
; File version: 1.0.2
; Programming : OK
; Programmed by : StarBootics
; Date : 20-11-2021
; Last Update : 25-11-2021
; PureBasic code : V5.73 LTS
; Platform : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Programming Notes
;
; Based on mk-soft original code. See on the English forum :
;
; https://www.purebasic.fr/english/viewtopic.php?f=12&t=78235
;
; This library is meant to be used for managing program 
; preferences file. 
;
; The file managed by this library doesn't have a Byte Order 
; Mark (BOM) but the strings are written as UTF-8 strings. This
; is more flexible than the Standard Preferences library shipped
; with PB.
;
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule CustomPrefs
  
  Interface CustomPrefs
    
    GetHeader.s()
    SetHeader(Header.s)
    AddHeaderEx(Header.s)
    InsertHeaderEx(Header.s)
    SelectHeader.i(Index.l)
    NextHeader.i()
    DeleteHeader()
    ResetHeader()
    ClearHeader()
    HeaderIndex.l()
    HeaderSize.l()
    
    SaveOnFile.i(Clean.i = #False)
    LoadFromFile.i()
    IsGroup.i(Group.s)
    IsKey.i(Group.s, Key.s)
    AddGroup.i(Group.s)
    DeleteGroup.i(Group.s)
    
    AddGroupEmptyLine.i(Group.s)
    
    AddKeyByte.i(Group.s, Key.s, Value.b)
    AddKeyAscii.i(Group.s, Key.s, Value.a)
    AddKeyCharacter.i(Group.s, Key.s, Value.c)
    AddKeyWord.i(Group.s, Key.s, Value.w)
    AddKeyUnicode.i(Group.s, Key.s, Value.u)
    AddKeyLong.i(Group.s, Key.s, Value.l)
    AddKeyInteger.i(Group.s, Key.s, Value.i)
    AddKeyFloat.i(Group.s, Key.s, Value.f)
    AddKeyQuad.i(Group.s, Key.s, Value.q)
    AddKeyDouble.i(Group.s, Key.s, Value.d)
    AddKeyString.i(Group.s, Key.s, Value.s)
    
    DeleteKey.i(Group.s, Key.s)
    
    GetValueByte.b(Group.s, Key.s, DefaultValue.b = 0)
    GetValueAscii.a(Group.s, Key.s, DefaultValue.a = 0)
    GetValueCharacter.c(Group.s, Key.s, DefaultValue.c = 0)
    GetValueWord.w(Group.s, Key.s, DefaultValue.w = 0)
    GetValueUnicode.u(Group.s, Key.s, DefaultValue.u = 0)
    GetValueLong.l(Group.s, Key.s, DefaultValue.l = 0)
    GetValueInteger.i(Group.s, Key.s, DefaultValue.i = 0)
    GetValueFloat.f(Group.s, Key.s, DefaultValue.f = 0.0)
    GetValueQuad.q(Group.s, Key.s, DefaultValue.q = 0)
    GetValueDouble.d(Group.s, Key.s, DefaultValue.d = 0.0)
    GetValueString.s(Group.s, Key.s, DefaultValue.s = "")

    SetValueByte.i(Group.s, Key.s, Value.b, Flags.i = #False)
    SetValueAscii.i(Group.s, Key.s, Value.a, Flags.i = #False)
    SetValueCharacter.i(Group.s, Key.s, Value.c, Flags.i = #False)
    SetValueWord.i(Group.s, Key.s, Value.w, Flags.i = #False)
    SetValueUnicode.i(Group.s, Key.s, Value.u, Flags.i = #False)
    SetValueLong.i(Group.s, Key.s, Value.l, Flags.i = #False)
    SetValueInteger.i(Group.s, Key.s, Value.i, Flags.i = #False)
    SetValueFloat.i(Group.s, Key.s, Value.f, Flags.i = #False)
    SetValueQuad.i(Group.s, Key.s, Value.q, Flags.i = #False)
    SetValueDouble.i(Group.s, Key.s, Value.d, Flags.i = #False)
    SetValueString.i(Group.s, Key.s, Value.s, Flags.i = #False)
    
    Free()
    
  EndInterface
  
  Declare.i New(FileName.s)
  
EndDeclareModule

Module CustomPrefs
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Structures declarations <<<<<
  
  Structure PrefsKeys
    Key.s
    Value.s
  EndStructure
  
  Structure PrefsGroups
    Name.s
    List Keys.PrefsKeys()
    List Empty.s() ; Empty lines inside groups
    Map *IndexKeys.PrefsKeys()
    
  EndStructure
  
  Structure Private_Members
    
    VirtualTable.i
    FileName.s
    List Header.s()
    List Groups.PrefsGroups()
    Map *IndexGroups.PrefsGroups()
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The observators <<<<<

  Procedure.s GetHeader(*This.Private_Members)
    
    ProcedureReturn *This\Header()
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The mutators <<<<<

  Procedure SetHeader(*This.Private_Members, Header.s)
    
    *This\Header() = Header
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The AddEx to linked list operator(s) <<<<<

  Procedure AddHeaderEx(*This.Private_Members, Header.s)
    
    AddElement(*This\Header())
    *This\Header() = Header
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The InsertEx in linked list operator(s) <<<<<

  Procedure InsertHeaderEx(*This.Private_Members, Header.s)
    
    InsertElement(*This\Header())
    *This\Header() = Header
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Select in linked list operator(s) <<<<<

  Procedure.i SelectHeader(*This.Private_Members, Index.l)
    
    ProcedureReturn SelectElement(*This\Header(), Index)
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Next element in linked list operator(s) <<<<<

  Procedure.i NextHeader(*This.Private_Members)
    
    ProcedureReturn NextElement(*This\Header())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Delete element from linked list operator(s) <<<<<

  Procedure DeleteHeader(*This.Private_Members)
    
    DeleteElement(*This\Header())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Reset linked list operator(s) <<<<<

  Procedure ResetHeader(*This.Private_Members)
    
    ResetList(*This\Header())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Clear linked list operator(s) <<<<<

  Procedure ClearHeader(*This.Private_Members)
    
    ClearList(*This\Header())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Index in the linked list operator(s) <<<<<

  Procedure.l HeaderIndex(*This.Private_Members)
    
    ProcedureReturn ListIndex(*This\Header())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Size of the linked list operator(s) <<<<<

  Procedure.l HeaderSize(*This.Private_Members)
    
    ProcedureReturn ListSize(*This\Header())
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Save On File operator <<<<<
  
  Procedure.i SaveOnFile(*This.Private_Members, Clean.b = #False)
    
    Protected file, text.s

    file = OpenFile(#PB_Any, *This\FileName)
    If file
      If Not Clean
        ForEach *This\Header()
          WriteStringN(file, *This\Header(), #PB_UTF8)
        Next
      EndIf
      ForEach *This\Groups()
        text = "[" + *This\Groups()\Name + "]"
        WriteStringN(file, text, #PB_UTF8)
        ForEach *This\Groups()\Keys()
          text = *This\Groups()\Keys()\Key + "=" + *This\Groups()\Keys()\Value
          WriteStringN(file, text, #PB_UTF8)
        Next
        If Clean
          WriteStringN(file, "", #PB_UTF8)
        Else
          ForEach *This\Groups()\Empty()
            WriteStringN(file, *This\Groups()\Empty(), #PB_UTF8)
          Next
        EndIf
      Next
      
      TruncateFile(file)
      CloseFile(file)
      ProcedureReturn #True
      
    EndIf
    
    ProcedureReturn #False
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Load From File operator <<<<<
  
  Procedure.i LoadFromFile(*This.Private_Members)
    
    Protected file, text.s, key.s, value.s, pos, readline = #True
    
    file = ReadFile(#PB_Any, *This\FileName)
    
    If file
      
      Repeat
        
        While Not Eof(file)
          If readline
            text = Trim(ReadString(file, #PB_UTF8))
          EndIf
          readline = #True
          If Left(text, 1) = "["
            text = LTrim(text, "[")
            text = RTrim(text, "]")
            *This\IndexGroups(LCase(text)) = AddElement(*This\Groups())
            *This\Groups()\Name = text
            readline = #False
            Break
          Else
            AddElement(*This\Header())
            *This\Header() = text
          EndIf
        Wend
        
        While Not Eof(file)
          text = Trim(ReadString(file, #PB_UTF8))
          If Left(text, 1) = "["
            Break
          EndIf
          pos = FindString(text, "=")
          If pos > 1
            key.s = Trim(Left(text, pos - 1))
            value = Trim(Mid(text, pos + 1))
            *This\Groups()\IndexKeys(LCase(key)) = AddElement(*This\Groups()\Keys())
            *This\Groups()\Keys()\Key = key
            *This\Groups()\Keys()\Value = value
          Else
            AddElement(*This\Groups()\Empty())
            *This\Groups()\Empty() = text
          EndIf
        Wend
      Until Eof(file)
      
      CloseFile(file)
      ProcedureReturn #True
      
    EndIf
    
    ProcedureReturn #False
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Test if Group and Key exist <<<<<
  
  Procedure.i IsPrefsGroup(*This.Private_Members, Group.s)
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      ProcedureReturn #True
    EndIf
    
    ProcedureReturn #False
  EndProcedure
  
  Procedure.i IsPrefsKey(*This.Private_Members, Group.s, Key.s)
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      If FindMapElement(*This\IndexGroups()\IndexKeys(), LCase(Key))
        ProcedureReturn #True
      EndIf
    EndIf
    
    ProcedureReturn #False
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Add and Delete Group operator <<<<<
  
  Procedure.i AddPrefsGroup(*This.Private_Members, Group.s)
    
    Protected lgroup.s = LCase(Group)
    
    If Not FindMapElement(*This\IndexGroups(), lgroup)
      LastElement(*This\Groups())
      *This\IndexGroups(lgroup) = AddElement(*This\Groups())
      *This\Groups()\Name = Group
      ProcedureReturn 1
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i DeletePrefsGroup(*This.Private_Members, Group.s)
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      ChangeCurrentElement(*This\Groups(), *This\IndexGroups())
      DeleteElement(*This\Groups())
      DeleteMapElement(*This\IndexGroups())
      ProcedureReturn #True
    EndIf
    
    ProcedureReturn #False
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Add Group Empty Line operator <<<<<
  
  Procedure.i AddPrefsGroupEmptyLine(*This.Private_Members, Group.s)
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      
      If AddElement(*This\IndexGroups()\Empty())
        *This\IndexGroups()\Empty() = ""
        ProcedureReturn 1
      EndIf
      
    EndIf
    
    ProcedureReturn 0
  EndProcedure
 
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Add Key operators <<<<<
  
  Procedure.i AddPrefsKeyByte(*This.Private_Members, Group.s, Key.s, Value.b)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      lkey = LCase(key)
      If Not FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = Str(Value)
        ProcedureReturn 1
      EndIf
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i AddPrefsKeyAscii(*This.Private_Members, Group.s, Key.s, Value.a)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      lkey = LCase(key)
      If Not FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = StrU(Value)
        ProcedureReturn 1
      EndIf
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i AddPrefsKeyCharacter(*This.Private_Members, Group.s, Key.s, Value.c)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      lkey = LCase(key)
      If Not FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = StrU(Value)
        ProcedureReturn 1
      EndIf
    EndIf
    
    ProcedureReturn 0
  EndProcedure
 
  Procedure.i AddPrefsKeyWord(*This.Private_Members, Group.s, Key.s, Value.w)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      lkey = LCase(key)
      If Not FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = Str(Value)
        ProcedureReturn 1
      EndIf
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i AddPrefsKeyUnicode(*This.Private_Members, Group.s, Key.s, Value.u)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      lkey = LCase(key)
      If Not FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = StrU(Value)
        ProcedureReturn 1
      EndIf
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i AddPrefsKeyLong(*This.Private_Members, Group.s, Key.s, Value.l)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      lkey = LCase(key)
      If Not FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = Str(Value)
        ProcedureReturn 1
      EndIf
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i AddPrefsKeyInteger(*This.Private_Members, Group.s, Key.s, Value.i)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      lkey = LCase(key)
      If Not FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = Str(Value)
        ProcedureReturn 1
      EndIf
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i AddPrefsKeyFloat(*This.Private_Members, Group.s, Key.s, Value.f)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      lkey = LCase(key)
      If Not FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = StrF(Value)
        ProcedureReturn 1
      EndIf
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i AddPrefsKeyQuad(*This.Private_Members, Group.s, Key.s, Value.q)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      lkey = LCase(key)
      If Not FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = StrF(Value)
        ProcedureReturn 1
      EndIf
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i AddPrefsKeyDouble(*This.Private_Members, Group.s, Key.s, Value.d)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      lkey = LCase(key)
      If Not FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = StrD(Value)
        ProcedureReturn 1
      EndIf
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i AddPrefsKeyString(*This.Private_Members, Group.s, Key.s, Value.s)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      lkey = LCase(key)
      If Not FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = Value
        ProcedureReturn 1
      EndIf
    EndIf
    
    ProcedureReturn 0
  EndProcedure

  Procedure.i DeletePrefsKey(*This.Private_Members, Group.s, Key.s)
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      If FindMapElement(*This\IndexGroups()\IndexKeys(), LCase(Key))
        ChangeCurrentElement(*This\IndexGroups()\Keys(), *This\IndexGroups()\IndexKeys())
        DeleteElement(*This\IndexGroups()\Keys())
        DeleteMapElement(*This\IndexGroups()\IndexKeys())
        ProcedureReturn #True
      EndIf
    EndIf
    
    ProcedureReturn #False
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Value Getters <<<<<
  
  Procedure.b GetPrefsValueByte(*This.Private_Members, Group.s, Key.s, DefaultValue.b = 0)
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      If FindMapElement(*This\IndexGroups()\IndexKeys(), LCase(Key))
        ProcedureReturn Val(*This\IndexGroups()\IndexKeys()\Value)
      EndIf
    EndIf
    
    ProcedureReturn DefaultValue
  EndProcedure
  
  Procedure.a GetPrefsValueAscii(*This.Private_Members, Group.s, Key.s, DefaultValue.a = 0)
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      If FindMapElement(*This\IndexGroups()\IndexKeys(), LCase(Key))
        ProcedureReturn Val(*This\IndexGroups()\IndexKeys()\Value)
      EndIf
    EndIf
    
    ProcedureReturn DefaultValue
  EndProcedure
  
  Procedure.c GetPrefsValueCharacter(*This.Private_Members, Group.s, Key.s, DefaultValue.c = 0)
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      If FindMapElement(*This\IndexGroups()\IndexKeys(), LCase(Key))
        ProcedureReturn Val(*This\IndexGroups()\IndexKeys()\Value)
      EndIf
    EndIf
    
    ProcedureReturn DefaultValue
  EndProcedure
  
  Procedure.w GetPrefsValueWord(*This.Private_Members, Group.s, Key.s, DefaultValue.w = 0)
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      If FindMapElement(*This\IndexGroups()\IndexKeys(), LCase(Key))
        ProcedureReturn Val(*This\IndexGroups()\IndexKeys()\Value)
      EndIf
    EndIf
    
    ProcedureReturn DefaultValue
  EndProcedure
  
  Procedure.u GetPrefsValueUnicode(*This.Private_Members, Group.s, Key.s, DefaultValue.u = 0)
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      If FindMapElement(*This\IndexGroups()\IndexKeys(), LCase(Key))
        ProcedureReturn Val(*This\IndexGroups()\IndexKeys()\Value)
      EndIf
    EndIf
    
    ProcedureReturn DefaultValue
  EndProcedure
  
  Procedure.l GetPrefsValueLong(*This.Private_Members, Group.s, Key.s, DefaultValue.l = 0)
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      If FindMapElement(*This\IndexGroups()\IndexKeys(), LCase(Key))
        ProcedureReturn Val(*This\IndexGroups()\IndexKeys()\Value)
      EndIf
    EndIf
    
    ProcedureReturn DefaultValue
  EndProcedure
  
  Procedure.i GetPrefsValueInteger(*This.Private_Members, Group.s, Key.s, DefaultValue.i = 0)
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      If FindMapElement(*This\IndexGroups()\IndexKeys(), LCase(Key))
        ProcedureReturn Val(*This\IndexGroups()\IndexKeys()\Value)
      EndIf
    EndIf
    
    ProcedureReturn DefaultValue
  EndProcedure
  
  Procedure.f GetPrefsValueFloat(*This.Private_Members, Group.s, Key.s, DefaultValue.f = 0.0)
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      If FindMapElement(*This\IndexGroups()\IndexKeys(), LCase(Key))
        ProcedureReturn ValF(*This\IndexGroups()\IndexKeys()\Value)
      EndIf
    EndIf
    
    ProcedureReturn DefaultValue
  EndProcedure
  
  Procedure.q GetPrefsValueQuad(*This.Private_Members, Group.s, Key.s, DefaultValue.q = 0)
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      If FindMapElement(*This\IndexGroups()\IndexKeys(), LCase(Key))
        ProcedureReturn Val(*This\IndexGroups()\IndexKeys()\Value)
      EndIf
    EndIf
    
    ProcedureReturn DefaultValue
  EndProcedure
  
  Procedure.d GetPrefsValueDouble(*This.Private_Members, Group.s, Key.s, DefaultValue.d = 0.0)
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      If FindMapElement(*This\IndexGroups()\IndexKeys(), LCase(Key))
        ProcedureReturn ValD(*This\IndexGroups()\IndexKeys()\Value)
      EndIf
    EndIf
    
    ProcedureReturn DefaultValue
  EndProcedure
 
  Procedure.s GetPrefsValueString(*This.Private_Members, Group.s, Key.s, DefaultValue.s = "")
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      If FindMapElement(*This\IndexGroups()\IndexKeys(), LCase(Key))
        ProcedureReturn *This\IndexGroups()\IndexKeys()\Value
      EndIf
    EndIf
    
    ProcedureReturn DefaultValue
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Value Setters <<<<<
  
  Procedure.i SetPrefsValueByte(*This.Private_Members, Group.s, Key.s, Value.b, Flags.i = #False)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      
      lKey = LCase(key)
      
      If FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        *This\IndexGroups()\IndexKeys()\Value = Str(Value)
        ProcedureReturn 1
      ElseIf Flags
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = Str(Value)
        ProcedureReturn 2
      EndIf
      
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i SetPrefsValueAscii(*This.Private_Members, Group.s, Key.s, Value.a, Flags.i = #False)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      
      lKey = LCase(key)
      
      If FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        *This\IndexGroups()\IndexKeys()\Value = StrU(Value)
        ProcedureReturn 1
      ElseIf Flags
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = StrU(Value)
        ProcedureReturn 2
      EndIf
      
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i SetPrefsValueCharacter(*This.Private_Members, Group.s, Key.s, Value.c, Flags.i = #False)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      
      lKey = LCase(key)
      
      If FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        *This\IndexGroups()\IndexKeys()\Value = StrU(Value)
        ProcedureReturn 1
      ElseIf Flags
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = StrU(Value)
        ProcedureReturn 2
      EndIf
      
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i SetPrefsValueWord(*This.Private_Members, Group.s, Key.s, Value.w, Flags.i = #False)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      
      lKey = LCase(key)
      
      If FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        *This\IndexGroups()\IndexKeys()\Value = Str(Value)
        ProcedureReturn 1
      ElseIf Flags
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = Str(Value)
        ProcedureReturn 2
      EndIf
      
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i SetPrefsValueUnicode(*This.Private_Members, Group.s, Key.s, Value.u, Flags.i = #False)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      
      lKey = LCase(key)
      
      If FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        *This\IndexGroups()\IndexKeys()\Value = StrU(Value)
        ProcedureReturn 1
      ElseIf Flags
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = StrU(Value)
        ProcedureReturn 2
      EndIf
      
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i SetPrefsValueLong(*This.Private_Members, Group.s, Key.s, Value.l, Flags.i = #False)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      
      lKey = LCase(key)
      
      If FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        *This\IndexGroups()\IndexKeys()\Value = Str(Value)
        ProcedureReturn 1
      ElseIf Flags
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = Str(Value)
        ProcedureReturn 2
      EndIf
      
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i SetPrefsValueInteger(*This.Private_Members, Group.s, Key.s, Value.i, Flags.i = #False)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      
      lKey = LCase(key)
      
      If FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        *This\IndexGroups()\IndexKeys()\Value = Str(Value)
        ProcedureReturn 1
      ElseIf Flags
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = Str(Value)
        ProcedureReturn 2
      EndIf
      
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i SetPrefsValueFloat(*This.Private_Members, Group.s, Key.s, Value.f, Flags.i = #False)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      
      lKey = LCase(key)
      
      If FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        *This\IndexGroups()\IndexKeys()\Value = StrF(Value)
        ProcedureReturn 1
      ElseIf Flags
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = StrF(Value)
        ProcedureReturn 2
      EndIf
      
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i SetPrefsValueQuad(*This.Private_Members, Group.s, Key.s, Value.q, Flags.i = #False)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      
      lKey = LCase(key)
      
      If FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        *This\IndexGroups()\IndexKeys()\Value = Str(Value)
        ProcedureReturn 1
      ElseIf Flags
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = Str(Value)
        ProcedureReturn 2
      EndIf
      
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i SetPrefsValueDouble(*This.Private_Members, Group.s, Key.s, Value.d, Flags.i = #False)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      
      lKey = LCase(key)
      
      If FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        *This\IndexGroups()\IndexKeys()\Value = StrD(Value)
        ProcedureReturn 1
      ElseIf Flags
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = StrD(Value)
        ProcedureReturn 2
      EndIf
      
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  Procedure.i SetPrefsValueString(*This.Private_Members, Group.s, Key.s, Value.s, Flags.i = #False)
    
    Protected lkey.s
    
    If FindMapElement(*This\IndexGroups(), LCase(Group))
      
      lKey = LCase(key)
      
      If FindMapElement(*This\IndexGroups()\IndexKeys(), lkey)
        *This\IndexGroups()\IndexKeys()\Value = Value
        ProcedureReturn 1
      ElseIf Flags
        LastElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\IndexKeys(lkey) = AddElement(*This\IndexGroups()\Keys())
        *This\IndexGroups()\Keys()\Key = Key
        *This\IndexGroups()\Keys()\Value = Value
        ProcedureReturn 2
      EndIf
      
    EndIf
    
    ProcedureReturn 0
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Destructor <<<<<
  
  Procedure Free(*This.Private_Members)
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Constructor <<<<<
  
  Procedure.i New(FileName.s)
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\FileName = FileName
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Virtual Table Entries <<<<<
  
  DataSection
    START_METHODS:
    Data.i @GetHeader()
    Data.i @SetHeader()
    Data.i @AddHeaderEx()
    Data.i @InsertHeaderEx()
    Data.i @SelectHeader()
    Data.i @NextHeader()
    Data.i @DeleteHeader()
    Data.i @ResetHeader()
    Data.i @ClearHeader()
    Data.i @HeaderIndex()
    Data.i @HeaderSize()
    
    Data.i @SaveOnFile()
    Data.i @LoadFromFile()
    Data.i @IsPrefsGroup()
    Data.i @IsPrefsKey()
    Data.i @AddPrefsGroup()
    Data.i @DeletePrefsGroup()
    
    Data.i @AddPrefsGroupEmptyLine()
    
    Data.i @AddPrefsKeyByte()
    Data.i @AddPrefsKeyAscii()
    Data.i @AddPrefsKeyCharacter()
    Data.i @AddPrefsKeyWord()
    Data.i @AddPrefsKeyUnicode()
    Data.i @AddPrefsKeyLong()
    Data.i @AddPrefsKeyInteger()
    Data.i @AddPrefsKeyFloat()
    Data.i @AddPrefsKeyQuad()
    Data.i @AddPrefsKeyDouble()
    Data.i @AddPrefsKeyString()
    
    Data.i @DeletePrefsKey()
    
    Data.i @GetPrefsValueByte()
    Data.i @GetPrefsValueAscii()
    Data.i @GetPrefsValueCharacter()
    Data.i @GetPrefsValueWord()
    Data.i @GetPrefsValueUnicode()
    Data.i @GetPrefsValueLong()
    Data.i @GetPrefsValueInteger()
    Data.i @GetPrefsValueFloat()
    Data.i @GetPrefsValueQuad()
    Data.i @GetPrefsValueDouble()
    Data.i @GetPrefsValueString()
    
    Data.i @SetPrefsValueByte()
    Data.i @SetPrefsValueAscii()
    Data.i @SetPrefsValueCharacter()
    Data.i @SetPrefsValueWord()
    Data.i @SetPrefsValueUnicode()
    Data.i @SetPrefsValueLong()
    Data.i @SetPrefsValueInteger()
    Data.i @SetPrefsValueFloat()
    Data.i @SetPrefsValueQuad()
    Data.i @SetPrefsValueDouble()
    Data.i @SetPrefsValueString()
    
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

CompilerIf #PB_Compiler_IsMainFile
  
  MyPrefs.CustomPrefs::CustomPrefs = CustomPrefs::New("MyPrefs.prefs")
  
  MyPrefs\AddGroup("MainWin")
  MyPrefs\AddKeyLong("MainWin", "PosX", 50)
  MyPrefs\AddKeyLong("MainWin", "PosY", 50)
  MyPrefs\AddKeyLong("MainWin", "Width", 500)
  MyPrefs\AddKeyLong("MainWin", "Height", 375)
  MyPrefs\AddGroupEmptyLine("MainWin")
  
  MyPrefs\AddGroup("OptionWin")
  MyPrefs\AddKeyLong("OptionWin", "PosX", 150)
  MyPrefs\AddKeyLong("OptionWin", "PosY", 150)
  MyPrefs\AddKeyLong("OptionWin", "Width", 525)
  MyPrefs\AddKeyLong("OptionWin", "Height", 400)
  MyPrefs\AddGroupEmptyLine("OptionWin")
  
  MyPrefs\AddHeaderEx("; This is the Header for this prefs file")
  MyPrefs\AddHeaderEx("; The 2nd line of the header.")
  
  MyPrefs\SaveOnFile()
  MyPrefs\Free()
  
  MyPrefs2.CustomPrefs::CustomPrefs = CustomPrefs::New("MyPrefs.prefs")
  
  If MyPrefs2\LoadFromFile()
    
    MyPrefs2\ResetHeader()
    
    While MyPrefs2\NextHeader()
      Debug MyPrefs2\GetHeader()
    Wend
    
    If MyPrefs2\IsGroup("MainWin")
      
      Debug "[MainWin] -> Position and Size"
      Debug MyPrefs2\GetValueLong("MainWin", "PosX")
      Debug MyPrefs2\GetValueLong("MainWin", "PosY")
      Debug MyPrefs2\GetValueLong("MainWin", "Width")
      Debug MyPrefs2\GetValueLong("MainWin", "Height")
      Debug ""
      
    EndIf
    
    If MyPrefs2\IsGroup("OptionWin")
      
      Debug "[OptionWin] -> Position and Size"
      Debug MyPrefs2\GetValueLong("OptionWin", "PosX")
      Debug MyPrefs2\GetValueLong("OptionWin", "PosY")
      Debug MyPrefs2\GetValueLong("OptionWin", "Width")
      Debug MyPrefs2\GetValueLong("OptionWin", "Height")
      Debug ""
      
    EndIf
    
  EndIf  
  
  MyPrefs2\Free()
  
CompilerEndIf

; <<<<<<<<<<<<<<<<<<<<<<<
; <<<<< END OF FILE <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 5.73 LTS (Linux - x64)
; Folding = -eA5--AAAI+
; EnableXP
; CompileSourceDirectory