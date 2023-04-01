; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Nom du projet : CheckFileExtension - Module
; Fichier : CheckFileExtension - Module.pb
; Version : 1.1.1
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 17-05-2006
; Mise à jour : 29-11-2021
; Codé pour PureBasic : V6.00 Beta 1
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule CheckFileExtension
  
  Declare.s DoIt(FileName.s, Extension.s)
  
EndDeclareModule

Module CheckFileExtension
  
  Procedure.s DoIt(FileName.s, Extension.s)
    
    ; On considère que le chemin initiale est bon
    GoodPath.s = FileName
    
    ; on découpe l'info du nom de fichier
    Path.s = GetPathPart(FileName)
    Name.s = GetFilePart(FileName)
    Ext.s = GetExtensionPart(FileName)
    
    ; S'il y a des problèmes on reconstruit le chemin
    If Ext = ""
      GoodPath = Path + Name + "." + Extension
    EndIf 
    
    If Ext <> Extension
      GoodPath = Path + StringField(Name, 1, ".") + "." + Extension
    EndIf 
    
    ProcedureReturn GoodPath
  EndProcedure
  
EndModule

CompilerIf #PB_Compiler_IsMainFile
  
  Debug CheckFileExtension::DoIt("/home/guillaume/Codesource.xyz", "pb")
  
CompilerEndIf

; <<<<<<<<<<<<<<<<<<<<<<<<
; <<<< FIN DU FICHIER <<<<
; <<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 1 (Linux - x64)
; Folding = -
; EnableXP
; CompileSourceDirectory