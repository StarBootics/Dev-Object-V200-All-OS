; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.9.10
; Nom du projet : AskPureBasicCompiler
; Nom du fichier : AskPureBasicCompiler - OOP.pb
; Version du fichier : 0.0.0
; Programmation : À vérifier
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 03-12-2019
; Mise à jour : 03-12-2019
; Codé pour PureBasic : V5.71 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule AskPureBasicCompiler
  
  Interface AskPureBasicCompiler
    
    CurrentVersion.s()
    CurrentOS.s()
    CurrentVersionOS.s()
    Help.s()
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module AskPureBasicCompiler
  
  CompilerSelect #PB_Compiler_OS
      
    CompilerCase #PB_OS_Windows 
      #LineFeed = #CRLF$
      
    CompilerCase #PB_OS_Linux
      #LineFeed = #LF$
      
    CompilerCase #PB_OS_MacOS
      #LineFeed = #CR$
      
  CompilerEndSelect
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    CompilerProgramFile.s
    CompilerFile.s
    CompilerHome.s
    RunParamVersion.s
    RunParamHelp.s
    RunParamListStructure.s
    CurrentVersion.s
    CurrentOS.s
    CurrentVersionOS.s
    Help.s
    
  EndStructure
  
  Procedure.s Private_FindPureBasicCompiler(Directory.s, FileName.s)
    
    Protected DirectoryHandle.i, EntryName.s, Output.s
    
    CompilerIf #PB_Compiler_OS = #PB_OS_Windows 
      
      If Right(Directory, 1) <> "\"
        Directory + "\"
      EndIf
      
    CompilerElse
      
      If Right(Directory, 1) <> "/"
        Directory + "/"
      EndIf
      
    CompilerEndIf
    
    DirectoryHandle = ExamineDirectory(#PB_Any, Directory, "*.*") 
    
    If DirectoryHandle <> 0
      
      While NextDirectoryEntry(DirectoryHandle) 
        
        EntryName = DirectoryEntryName(DirectoryHandle)
        
        If EntryName <> "." And EntryName <> ".." 
          
          Select DirectoryEntryType(DirectoryHandle)
              
            Case #PB_DirectoryEntry_File
              
              If EntryName = FileName
                Output = Directory
                Break
              Else
                Output = ""
              EndIf
              
            Case #PB_DirectoryEntry_Directory 
              
              Output = Private_FindPureBasicCompiler(Directory + EntryName, FileName)
              
              If Output <> ""
                Break
              EndIf
              
          EndSelect
          
        EndIf
        
      Wend
      
      FinishDirectory(DirectoryHandle)
      
    EndIf
    
    ProcedureReturn Output
  EndProcedure 
  
  Procedure.s CurrentVersion(*This.Private_Members)
    
    Protected LIndex.l, RIndex.l, PB_Compiler_Handle.i
    
    PB_Compiler_Handle = RunProgram(*This\CompilerProgramFile, *This\RunParamVersion, "", #PB_Program_Open|#PB_Program_Read|#PB_Program_Hide)
    
    If PB_Compiler_Handle 
      
      While ProgramRunning(PB_Compiler_Handle)
        If AvailableProgramOutput(PB_Compiler_Handle)
          *This\CurrentVersion = ReadProgramString(PB_Compiler_Handle)
        EndIf
      Wend
      
      CloseProgram(PB_Compiler_Handle)
      
      LIndex = FindString(*This\CurrentVersion, "PureBasic", 0) 
      RIndex = FindString(*This\CurrentVersion, "(", 0) 
      
      If LIndex And RIndex 
        LIndex + Len("PureBasic") 
        *This\CurrentVersion = Trim(Mid(*This\CurrentVersion, LIndex, RIndex - LIndex))
      EndIf 
      
    EndIf
    
    ProcedureReturn *This\CurrentVersion
  EndProcedure
  
  Procedure.s CurrentOS(*This.Private_Members)
    
    Protected LIndex.l, RIndex.l, PB_Compiler_Handle.i
    
    PB_Compiler_Handle = RunProgram(*This\CompilerProgramFile, *This\RunParamVersion, *This\CompilerHome, #PB_Program_Open|#PB_Program_Read|#PB_Program_Hide)
    
    If PB_Compiler_Handle 
      
      While ProgramRunning(PB_Compiler_Handle)
        If AvailableProgramOutput(PB_Compiler_Handle)
          *This\CurrentOS = ReadProgramString(PB_Compiler_Handle)
        EndIf
      Wend
      
      CloseProgram(PB_Compiler_Handle)
      
      LIndex = FindString(*This\CurrentOS, "(", 0) + 1 
      RIndex = FindString(*This\CurrentOS, ")", 0)
      
      If LIndex And RIndex
        *This\CurrentOS = Trim(Mid(*This\CurrentOS, LIndex, RIndex - LIndex))
      EndIf 
      
    EndIf
    
    ProcedureReturn "(" + *This\CurrentOS + ")"
  EndProcedure
  
  Procedure.s CurrentVersionOS(*This.Private_Members)
    
    Protected LIndex.l, RIndex.l, PB_Compiler_Handle.i
    
    PB_Compiler_Handle = RunProgram(*This\CompilerProgramFile, *This\RunParamVersion, *This\CompilerHome, #PB_Program_Open|#PB_Program_Read|#PB_Program_Hide)
    
    If PB_Compiler_Handle 
      
      While ProgramRunning(PB_Compiler_Handle)
        If AvailableProgramOutput(PB_Compiler_Handle)
          *This\CurrentVersionOS = ReadProgramString(PB_Compiler_Handle)
        EndIf
      Wend
      
      CloseProgram(PB_Compiler_Handle)
      
      LIndex = FindString(*This\CurrentVersionOS, "PureBasic", 0)
      RIndex = FindString(*This\CurrentVersionOS, "- (c)", 0)
      
      If LIndex And RIndex
        *This\CurrentVersionOS = Trim(Mid(*This\CurrentVersionOS, LIndex, RIndex - LIndex))
      EndIf 
      
    EndIf
    
    ProcedureReturn *This\CurrentVersionOS
  EndProcedure
  
  Procedure.s Help(*This.Private_Members)
    
    PB_Compiler_Handle = RunProgram(*This\CompilerProgramFile, *This\RunParamHelp, *This\CompilerHome, #PB_Program_Open|#PB_Program_Read|#PB_Program_Hide)
    
    If PB_Compiler_Handle 
      
      *This\Help = ""
      
      While ProgramRunning(PB_Compiler_Handle)
        If AvailableProgramOutput(PB_Compiler_Handle)
          *This\Help + ReadProgramString(PB_Compiler_Handle, #PB_Ascii) + #LineFeed
        EndIf
      Wend
      
      CloseProgram(PB_Compiler_Handle)
      
    EndIf
    
    ProcedureReturn *This\Help
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
    
    CompilerSelect #PB_Compiler_OS
        
      CompilerCase #PB_OS_Windows 
        *This\CompilerFile = "pbcompiler.exe"
        *This\CompilerHome = Private_FindPureBasicCompiler("C:\", *This\CompilerFile)
        *This\RunParamVersion = "/VERSION"
        *This\RunParamHelp = "/HELP"
        
      CompilerCase #PB_OS_Linux
        *This\CompilerFile = "pbcompiler"
        
        If GetEnvironmentVariable("PUREBASIC_HOME") <> ""
          *This\CompilerHome = Private_FindPureBasicCompiler(GetEnvironmentVariable("PUREBASIC_HOME") + "compilers/", *This\CompilerFile)
        EndIf
        
        *This\RunParamVersion = "-v"
        *This\RunParamHelp = "-h"

        If *This\CompilerHome = ""
          *This\CompilerHome = Private_FindPureBasicCompiler("/usr/share/purebasic/compilers/", *This\CompilerFile)
        EndIf
        
        If *This\CompilerHome = ""
          *This\CompilerHome = Private_FindPureBasicCompiler("/bin/", *This\CompilerFile)
        EndIf
        
        If *This\CompilerHome = ""
          *This\CompilerHome = Private_FindPureBasicCompiler(GetHomeDirectory(), *This\CompilerFile)
        EndIf
        
      CompilerCase #PB_OS_MacOS
        *This\CompilerFile = "pbcompiler"
        *This\CompilerHome = Private_FindPureBasicCompiler("/??????/", *This\CompilerFile)
        *This\RunParamVersion = "-v"
        *This\RunParamHelp = "-h"
        
    CompilerEndSelect
    
    *This\CompilerProgramFile = *This\CompilerHome + *This\CompilerFile
    
    ProcedureReturn *This
  EndProcedure
  
  DataSection
    START_METHODS:
    Data.i @CurrentVersion()
    Data.i @CurrentOS()
    Data.i @CurrentVersionOS()
    Data.i @Help()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (89000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

CompilerIf #PB_Compiler_IsMainFile
  
  AskCompiler.AskPureBasicCompiler::AskPureBasicCompiler = AskPureBasicCompiler::New()
  
  Debug AskCompiler\CurrentVersion()
  Debug AskCompiler\CurrentOS()
  Debug AskCompiler\CurrentVersionOS()
  Debug AskCompiler\Help()

  AskCompiler\Free()
  
  
CompilerEndIf

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 5.73 beta 2 (Linux - x64)
; Folding = f--
; EnableXP
; CompileSourceDirectory