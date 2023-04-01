; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Nom du projet : BuiltPathDirectory - Module
; Fichier : BuiltPathDirectory - Module.pb
; Version : 1.1.1
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 09-04-2019
; Mise à jour : 29-11-2021
; Codé pour PureBasic : V6.00 Beta 1
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule BuiltPathDirectory
  
  Declare.i DoIt(Path.s)
  
EndDeclareModule

Module BuiltPathDirectory
  
  Procedure.i DoIt(Path.s)
    
    DirectoryQty = CountString(Path, #PS$) + 1 
    
    For Index = 1 To DirectoryQty
      
      Directory.s = Directory + StringField(Path, Index, #PS$) + #PS$
      
      If FileSize(Directory) = -1
        CreateDirectory(Directory)
      EndIf 
      
    Next
    
    If FileSize(Path) = -2
      Success.i = #True
    Else
      Success = #False
    EndIf
    
    ProcedureReturn Success
  EndProcedure
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 1 (Linux - x64)
; Folding = -
; EnableXP
; CompileSourceDirectory