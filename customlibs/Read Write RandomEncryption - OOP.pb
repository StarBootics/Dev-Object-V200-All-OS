; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; AUTOMATICALLY GENERATED CODE, DO NOT MODIFY
; UNLESS YOU REALLY, REALLY, REALLY MEAN IT !!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code generated by : Dev-Object - V1.1.0
; Project name : Read Write RandomEncryption
; File name : Read Write RandomEncryption - OOP.pb
; File Version : 1.0.1
; Programmation : OK
; Programmed by : StarBootics
; Creation Date : October 22nd, 2020
; Last update : October 22nd, 2020
; Coded for PureBasic : V5.72
; Platform : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Programming notes
;
; Based on NicTheQuick's original code found in the code 
; archive.
;
; The main purpose of the library is to make the data obscure.
;
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule RandomEncryption
  
  #Mode_String = 0
  #Mode_Binary = 1
  
  Interface RandomEncryption
    
    GetMaxRound.a()
    GetPreset.a()
    GetMode.i()
    SetMaxRound(P_MaxRound.a)
    SetPreset(P_Preset.a)
    SetMode(P_Mode.i)
    
    RE_WriteString(FileID.i, P_String.s)
    RE_WriteByte(FileID.i, P_Value.b)
    RE_WriteAsciiCharacter(FileID.i, P_Value.a)
    RE_WriteWord(FileID.i, P_Value.w)
    RE_WriteUnicodeCharacter(FileID.i, P_Value.u)
    RE_WriteCharacter(FileID.i, P_Value.c)
    RE_WriteLong(FileID.i, P_Value.l)
    RE_WriteQuad(FileID.i, P_Value.q)
    RE_WriteInteger(FileID.i, P_Value.i)
    RE_WriteFloat(FileID.i, P_Value.f)
    RE_WriteDouble(FileID.i, P_Value.d)
    
    RE_ReadString.s(FileID.i)
    RE_ReadByte.b(FileID.i)
    RE_ReadAsciiCharacter.a(FileID.i)
    RE_ReadWord.w(FileID.i)
    RE_ReadUnicodeCharacter.u(FileID.i)
    RE_ReadCharacter.c(FileID.i)
    RE_ReadLong.l(FileID.i)
    RE_ReadQuad.q(FileID.i)
    RE_ReadInteger.i(FileID.i)
    RE_ReadFloat.f(FileID.i)
    RE_ReadDouble.d(FileID.i)
    Free()
    
  EndInterface
  
  Declare.i New(P_MaxRound.a = 5, P_Preset.a = 127, P_Mode.i = #Mode_String)
  
EndDeclareModule

Module RandomEncryption
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Structure declaration <<<<<

  Structure Private_Members
    
    VirtualTable.i
    MaxRound.a
    Preset.a
    Mode.i
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Private Encode operator <<<<<
  
  Procedure.s Private_Encode(*This.Private_Members, String.s)
    
    Max.l = Len(String) 
    
    For Index = 1 To Max
      
      ASCII.l = Asc(Mid(String, Index, 1)) 
      
      If Index = 1 
        PrevASCII.l = *This\Preset
      Else 
        PrevASCII.l = Asc(Mid(String, Index - 1, 1)) 
      EndIf 
      
      Chiffre1.l = Random(*This\MaxRound - 1) + 1 
      Chiffre2.l = (255 + PrevASCII - ASCII) * Chiffre1 
      Chiffre1 = (Random(100) * (*This\MaxRound + 1)) + Chiffre1 
      
      Erg.s = Erg + Right("0000000000" + Str(Chiffre2 + (Chiffre1 << 16)), 10)
      
      If Index < Max
        Erg + " "
      EndIf
      
    Next 
    
    ProcedureReturn Erg
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Private Decode operator <<<<<
  
  Procedure.s Private_Decode(*This.Private_Members, String.s)
    
    StartASCII.l = *This\Preset
    Max.l = CountString(String, " ") + 1
    
    For Index = 1 To Max
      
      Value.l = Val(StringField(String, Index, " "))
      
      Chiffre2.l = Value & $FFFF 
      Chiffre1.l = Value >> 16 
      
      Chiffre1 = Mod(Chiffre1, *This\MaxRound + 1) 
      
      Chiffre2 = (Chiffre2 / Chiffre1) - 255 
      StartASCII - Chiffre2 
      Text1.s = Text1 + Chr(StartASCII) 
      
    Next 
    
    ProcedureReturn Text1
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The observators <<<<<

  Procedure.a GetMaxRound(*This.Private_Members)
    
    ProcedureReturn *This\MaxRound
  EndProcedure
  
  Procedure.a GetPreset(*This.Private_Members)
    
    ProcedureReturn *This\Preset
  EndProcedure
  
  Procedure.i GetMode(*This.Private_Members)
    
    ProcedureReturn *This\Mode
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The mutators <<<<<

  Procedure SetMaxRound(*This.Private_Members, P_MaxRound.a)
    
    If P_MaxRound = 0
      P_MaxRound = 1
    EndIf
    
    *This\MaxRound = P_MaxRound
    
  EndProcedure
  
  Procedure SetPreset(*This.Private_Members, P_Preset.a)
    
    *This\Preset = P_Preset
    
  EndProcedure
  
  Procedure SetMode(*This.Private_Members, P_Mode.i)
    
    If P_Mode <= #Mode_String
      *This\Mode = #Mode_String
    ElseIf P_Mode >= #Mode_Binary
      *This\Mode = #Mode_Binary
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Write on file operators <<<<<
  
  Procedure RE_WriteString(*This.Private_Members, FileID.i, P_String.s)
    
    If *This\Mode = #Mode_Binary
      
      Max.l = Len(P_String) 
      WriteLong(FileID, Max)
      
      For Index = 1 To Max
        
        ASCII.l = Asc(Mid(P_String, Index, 1)) 
        
        If Index = 1 
          PrevASCII.l = *This\Preset
        Else 
          PrevASCII.l = Asc(Mid(P_String, Index - 1, 1)) 
        EndIf 
        
        Chiffre1.l = Random(*This\MaxRound - 1) + 1 
        Chiffre2.l = (255 + PrevASCII - ASCII) * Chiffre1 
        Chiffre1 = (Random(100) * (*This\MaxRound + 1)) + Chiffre1 
        
        WriteLong(FileID, Chiffre2 + (Chiffre1 << 16))
        
      Next 
      
    Else
      
      WriteStringN(FileID, Private_Encode(*This, P_String))
      
    EndIf
    
  EndProcedure
  
  Procedure RE_WriteByte(*This.Private_Members, FileID.i, P_Value.b)
    
    If P_Value < 0
      Sign.s = "-"
      P_Value = P_Value * -1
    EndIf
    
    RE_WriteString(*This, FileID, Sign + RSet(Str(P_Value), 6, "0"))
    
  EndProcedure
  
  Procedure RE_WriteAsciiCharacter(*This.Private_Members, FileID.i, P_Value.a)
    
    RE_WriteString(*This, FileID, RSet(Str(P_Value), 6, "0"))
    
  EndProcedure
  
  Procedure RE_WriteWord(*This.Private_Members, FileID.i, P_Value.w)
    
    If P_Value < 0
      Sign.s = "-"
      P_Value = P_Value * -1
    EndIf
    
    RE_WriteString(*This, FileID, Sign + RSet(Str(P_Value), 10, "0"))
    
  EndProcedure
  
  Procedure RE_WriteUnicodeCharacter(*This.Private_Members, FileID.i, P_Value.u)
    
    RE_WriteString(*This, FileID, RSet(Str(P_Value), 10, "0"))
    
  EndProcedure
  
  Procedure RE_WriteCharacter(*This.Private_Members, FileID.i, P_Value.c)
    
    RE_WriteString(*This, FileID, RSet(Str(P_Value), 10, "0"))
    
  EndProcedure
  
  Procedure RE_WriteLong(*This.Private_Members, FileID.i, P_Value.l)
    
    If P_Value < 0
      Sign.s = "-"
      P_Value = P_Value * -1
    EndIf
    
    RE_WriteString(*This, FileID, Sign + RSet(Str(P_Value), 22, "0"))
    
  EndProcedure
  
  Procedure RE_WriteQuad(*This.Private_Members, FileID.i, P_Value.q)
    
    If P_Value < 0
      Sign.s = "-"
      P_Value = P_Value * -1
    EndIf
    
    RE_WriteString(*This, FileID, Sign + RSet(Str(P_Value), 42, "0"))
    
  EndProcedure
  
  Procedure RE_WriteInteger(*This.Private_Members, FileID.i, P_Value.i)
    
    If P_Value < 0
      Sign.s = "-"
      P_Value = P_Value * -1
    EndIf
    
    RE_WriteString(*This, FileID, Sign + RSet(Str(P_Value), 42, "0"))
    
  EndProcedure
  
  Procedure RE_WriteFloat(*This.Private_Members, FileID.i, P_Value.f)
    
    RE_WriteString(*This, FileID, StrF(P_Value, 14))
    
  EndProcedure
  
  Procedure RE_WriteDouble(*This.Private_Members, FileID.i, P_Value.d)
    
    RE_WriteString(*This, FileID, StrD(P_Value, 25))
    
  EndProcedure

  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Read on file operators <<<<<
  
  Procedure.s RE_ReadString(*This.Private_Members, FileID.i)
    
    If *This\Mode = #Mode_Binary
      
      StartASCII.l = *This\Preset
      Max.l = ReadLong(FileID)
      
      For Index = 1 To Max
        
        Value.l = ReadLong(FileID)
        
        Chiffre2.l = Value & $FFFF 
        Chiffre1.l = Value >> 16 
        
        Chiffre1 = Mod(Chiffre1, *This\MaxRound + 1) 
        
        Chiffre2 = (Chiffre2 / Chiffre1) - 255 
        StartASCII - Chiffre2 
        decoded.s = decoded + Chr(StartASCII) 
        
      Next 
      
    Else
      decoded = Private_Decode(*This, ReadString(FileID))
    EndIf
    
    ProcedureReturn decoded
  EndProcedure
  
  Procedure.b RE_ReadByte(*This.Private_Members, FileID.i)
    
    ProcedureReturn Val(RE_ReadString(*This, FileID))
  EndProcedure
  
  Procedure.a RE_ReadAsciiCharacter(*This.Private_Members, FileID.i)
    
    ProcedureReturn Val(RE_ReadString(*This, FileID))
  EndProcedure
  
  Procedure.w RE_ReadWord(*This.Private_Members, FileID.i)
    
    ProcedureReturn Val(RE_ReadString(*This, FileID))
  EndProcedure
  
  Procedure.u RE_ReadUnicodeCharacter(*This.Private_Members, FileID.i)
    
    ProcedureReturn Val(RE_ReadString(*This, FileID))
  EndProcedure
  
  Procedure.c RE_ReadCharacter(*This.Private_Members, FileID.i)
    
    ProcedureReturn Val(RE_ReadString(*This, FileID))
  EndProcedure
  
  Procedure.l RE_ReadLong(*This.Private_Members, FileID.i)
    
    ProcedureReturn Val(RE_ReadString(*This, FileID))
  EndProcedure
  
  Procedure.q RE_ReadQuad(*This.Private_Members, FileID.i)
    
    ProcedureReturn Val(RE_ReadString(*This, FileID))
  EndProcedure
  
  Procedure.i RE_ReadInteger(*This.Private_Members, FileID.i)
    
    ProcedureReturn Val(RE_ReadString(*This, FileID))
  EndProcedure
  
  Procedure.f RE_ReadFloat(*This.Private_Members, FileID.i)
    
    ProcedureReturn ValF(RE_ReadString(*This, FileID))
  EndProcedure
  
  Procedure.d RE_ReadDouble(*This.Private_Members, FileID.i)
    
    ProcedureReturn ValD(RE_ReadString(*This, FileID))
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Destructor <<<<<

  Procedure Free(*This.Private_Members)
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Constructor <<<<<

  Procedure.i New(P_MaxRound.a = 5, P_Preset.a = 127, P_Mode.i = #Mode_String)
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    SetMaxRound(*This, P_MaxRound)
    SetPreset(*This, P_Preset)
    SetMode(*This, P_Mode)
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Virtual Table Entries <<<<<

  DataSection
    START_METHODS:
    Data.i @GetMaxRound()
    Data.i @GetPreset()
    Data.i @GetMode()
    Data.i @SetMaxRound()
    Data.i @SetPreset()
    Data.i @SetMode()
    Data.i @RE_WriteString()
    Data.i @RE_WriteByte()
    Data.i @RE_WriteAsciiCharacter()
    Data.i @RE_WriteWord()
    Data.i @RE_WriteUnicodeCharacter()
    Data.i @RE_WriteCharacter()
    Data.i @RE_WriteLong()
    Data.i @RE_WriteQuad()
    Data.i @RE_WriteInteger()
    Data.i @RE_WriteFloat()
    Data.i @RE_WriteDouble()
    Data.i @RE_ReadString()
    Data.i @RE_ReadByte()
    Data.i @RE_ReadAsciiCharacter()
    Data.i @RE_ReadWord()
    Data.i @RE_ReadUnicodeCharacter()
    Data.i @RE_ReadCharacter()
    Data.i @RE_ReadLong()
    Data.i @RE_ReadQuad()
    Data.i @RE_ReadInteger()
    Data.i @RE_ReadFloat()
    Data.i @RE_ReadDouble()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code generated in : 00.001 seconds (131000.00 lines/second) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

CompilerIf #PB_Compiler_IsMainFile
  
  RE.RandomEncryption::RandomEncryption = RandomEncryption::New(5, 127, RandomEncryption::#Mode_Binary)
  
  Varw.w = 32700
  Varl.l = -2147483645
  Varq.q = 9223372036854775800
  Varf.f = 2 * #PI
  Vard.d = 3 * #PI
  Text.s = "J'aime les d�esses nordiques super sexy !"
  
  Debug "; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
  Debug "; Test on file"
  Debug ""
  Debug "The Original data : "
  
  Debug Varw
  Debug Varl
  Debug Varq
  Debug Varf
  Debug Vard
  Debug Text
  Debug ""
  
  If CreateFile(0, "Test.Enc")

    RE\RE_WriteWord(0, Varw) 
    RE\RE_WriteLong(0, Varl)  
    RE\RE_WriteQuad(0, Varq)
    
    ; Here we change "MaxRound" and "Preset" on the fly
    RE\SetMaxRound(10)
    RE\SetPreset(195)
    
    RE\RE_WriteFloat(0, Varf)
    RE\RE_WriteDouble(0, Vard)
    RE\RE_WriteString(0, Text)
    
    CloseFile(0)
    
  EndIf 
  
  Debug "From the file : " 
  
  ; Here we restore "MaxRound" and "Preset" so we can read the first 3 data
  RE\SetMaxRound(5)
  RE\SetPreset(127)
  
  If ReadFile(1, "Test.Enc")

    Debug RE\RE_ReadWord(1)
    Debug RE\RE_ReadLong(1)
    Debug RE\RE_ReadQuad(1)
    
    ; Here we change "MaxRound" and "Preset" on the fly so we can read the last 3 data
    RE\SetMaxRound(10)
    RE\SetPreset(195)
    
    Debug RE\RE_ReadFloat(1)
    Debug RE\RE_ReadDouble(1)
    Debug RE\RE_ReadString(1)
    
    CloseFile(1)
    DeleteFile("Test.Enc")
    
  EndIf 
  
  RE\Free()
  
CompilerEndIf

; <<<<<<<<<<<<<<<<<<<<<<<
; <<<<< END OF FILE <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 1 (Linux - x64)
; Folding = -----4-
; EnableXP
; CompileSourceDirectory