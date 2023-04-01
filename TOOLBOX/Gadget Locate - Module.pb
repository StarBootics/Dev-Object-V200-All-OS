; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Nom du projet : Gadget Down Right
; Nom du fichier : Gadget Locate - Module.pb
; Version du fichier : 1.0.1
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : Guimauve
; Courriel : gsaumure79@videotron.ca
; Date : 11-02-2012
; Mise à jour : 07-05-2012
; Code PureBasic : 4.60
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule GadgetLocate
  
  Declare DownOf(GadgetID, Gap = 0)
  Declare RightOf(GadgetID, Gap = 0)
  
EndDeclareModule

Module GadgetLocate
  
  Procedure DownOf(GadgetID, Gap = 0)
    
    ProcedureReturn (GadgetY(GadgetID) + GadgetHeight(GadgetID) + (Gap))
  EndProcedure
  
  Procedure RightOf(GadgetID, Gap = 0)
    
    ProcedureReturn (GadgetX(GadgetID) + GadgetWidth(GadgetID) + (Gap))
  EndProcedure
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 5.42 LTS (Linux - x64)
; Folding = -
; EnableXP
; CompileSourceDirectory