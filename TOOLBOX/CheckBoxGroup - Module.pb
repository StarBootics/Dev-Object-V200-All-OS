; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Nom du projet : CheckBoxGroup - Module
; Nom du fichier : CheckBoxGroup - Module.pb
; Version du fichier : 0.0.0
; Programmation : En cours
; Programmé par : Guillaume Saumure
; Alias : Guimauve
; Courriel : gsaumure@cgocable.ca
; Date : 14-05-2015
; Mise à jour : 14-05-2015
; Code PureBasic : PureBasic V5.31
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule CheckBoxGroup
  
  Declare Horizontal(FirstGadgetID, LastGadgetID, X, Y, Width, Height, Gap, Options = 0)
  Declare Vertical(FirstGadgetID, LastGadgetID, X, Y, Width, Height, Gap, Options = 0)
  
EndDeclareModule

Module CheckBoxGroup
  
  Procedure Horizontal(FirstGadgetID, LastGadgetID, X, Y, Width, Height, Gap, Options = 0)
    
    For Gadget = FirstGadgetID To LastGadgetID
      CheckBoxGadget(Gadget, X, Y, Width, Height, "", Options)
      X + Width + Gap
    Next
    
  EndProcedure
  
  Procedure Vertical(FirstGadgetID, LastGadgetID, X, Y, Width, Height, Gap, Options = 0)
    
    For Gadget = FirstGadgetID To LastGadgetID
      CheckBoxGadget(Gadget, X, Y, Width, Height, "", Options)
      Y + Height + Gap
    Next
    
  EndProcedure
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 5.42 LTS (Linux - x64)
; Folding = -
; EnableUnicode
; EnableXP
; CompileSourceDirectory