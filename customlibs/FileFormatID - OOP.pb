; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; AUTOMATICALLY GENERATED CODE, DO NOT MODIFY
; UNLESS YOU REALLY, REALLY, REALLY MEAN IT !!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code generated by : Dev-Object - V1.1.0
; Project name : FileFormatID
; File name : FileFormatID - OOP.pb
; File Version : 1.0.2
; Programmation : OK
; Programmed by : StarBootics
; Creation Date : October 24th, 2020
; Last update : November 27th, 2021
; Coded for PureBasic : V6.00 Beta 1
; Platform : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Programming notes
;
; When we create binary file for some data (example a
; Bitmap Font Format) it could be necessary to make sure
; the file we are reading is the right file format. 
; 
; Otherwise we can try to read wrong data in the file and 
; our program may crash in some cases.
;
; Inspired by ID Software who write a Magic Number (Long 
; Value = 860898377) at the beging of the file to identify 
; the MD3 file format. By the way it's not the only 
; software developer doing that. Search the web for "File  
; Format Magic Number" or take a look at :
;
; https://en.wikipedia.org/wiki/File_format#Magic_number
;
; See the example at the end of this file to see how
; this library can be used.
; 
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule FileFormatID
  
  Interface FileFormatID
    
    GetMagicNumber.l()
    SetMagicNumber(Char00.a, Char01.a, Char02.a, Char03.a)
    Compare.i(*Other)
    ReadFileFormatID(FileID.i)
    WriteFileFormatID(FileID.i)
    Free()
    
  EndInterface
  
  Declare.i New(Char00.a = 0, Char01.a = 0, Char02.a = 0, Char03.a = 0)
  
EndDeclareModule

Module FileFormatID
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Structure declaration <<<<<

  Structure Private_Members
    
    VirtualTable.i
    MagicNumber.l
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The observators <<<<<

  Procedure.l GetMagicNumber(*This.Private_Members)
    
    ProcedureReturn *This\MagicNumber
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The mutators <<<<<

  Procedure SetMagicNumber(*This.Private_Members, Char00.a, Char01.a, Char02.a, Char03.a)
    
    *This\MagicNumber = Char03 << 24 + Char02 << 16 + Char01 << 8 + Char00
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Compare operator <<<<<

  Procedure.i Compare(*This.Private_Members, *Other)
    
    ProcedureReturn CompareMemory(*This, *Other, SizeOf(Private_Members))
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Read in Binary file <<<<<

  Procedure ReadFileFormatID(*This.Private_Members, FileID.i)
    
    *This\MagicNumber = ReadLong(FileID)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Write in Binary file <<<<<

  Procedure WriteFileFormatID(*This.Private_Members, FileID.i)
    
    WriteLong(FileID, *This\MagicNumber)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Destructor <<<<<

  Procedure Free(*This.Private_Members)
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Constructor <<<<<

  Procedure.i New(Char00.a = 0, Char01.a = 0, Char02.a = 0, Char03.a = 0)
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    SetMagicNumber(*This, Char00, Char01, Char02, Char03)
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Virtual Table Entries <<<<<

  DataSection
    START_METHODS:
    Data.i @GetMagicNumber()
    Data.i @SetMagicNumber()
    Data.i @Compare()
    Data.i @ReadFileFormatID()
    Data.i @WriteFileFormatID()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code generated in : 00.001 seconds (129000.00 lines/second) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

CompilerIf #PB_Compiler_IsMainFile
  
 Debug "The MD3 file format (ID Software)"
  
 IDP3.FileFormatID::FileFormatID = FileFormatID::New('I', 'D', 'P', '3') 
 Debug Str(IDP3\GetMagicNumber()) + " (Should be : 860898377)"
 IDP3\Free()
 
 Debug ""
 Debug "Bitmap Font File example"
 Debug ""
 
  #Bitmap_Font_Format_V0 = 809911874
  
  If CreateFile(0, "MyFont.bff")
    
    FFID00.FileFormatID::FileFormatID = FileFormatID::New('B', 'F', 'F', '0') 
    FFID00\WriteFileFormatID(0)
    
    ; Then we proceed with the rest of the stuff we need to write on the file
    
    CloseFile(0)
    FFID00\Free()
    
  EndIf
  
  If ReadFile(1, "MyFont.bff")
    
    ExpectedFFID.FileFormatID::FileFormatID = FileFormatID::New('B', 'F', 'F', '1')
    FromFileFFID.FileFormatID::FileFormatID = FileFormatID::New()
    
    FromFileFFID\ReadFileFormatID(1)
    
    If ExpectedFFID\Compare(FromFileFFID) = 1
      
      Debug "FileFormatID OK, We proceed with the rest of the stuff we need to read from the file"
      
    Else
      
      Debug "FileFormatID Not OK, Check for old version just in case"
      Debug ""
      
      Select FromFileFFID\GetMagicNumber()
          
        Case #Bitmap_Font_Format_V0
          Debug "FileFormatID correspond to Version 0"
          Debug "Pop a message about this or put the"
          Debug "read instructions for that version."
          
        Default
          Debug "Unknown file format !"
          
      EndSelect
      
    EndIf
    
    CloseFile(1)
    ExpectedFFID\Free()
    FromFileFFID\Free()
    
    ; The delete file is for the example only
    DeleteFile("MyFont.bff")
    
  EndIf
  
CompilerEndIf

; <<<<<<<<<<<<<<<<<<<<<<<
; <<<<< END OF FILE <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 1 (Linux - x64)
; Folding = ---
; EnableXP
; CompileSourceDirectory