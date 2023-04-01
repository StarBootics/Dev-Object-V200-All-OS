; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Nom du projet : ButtonGroup - Module
; Nom du fichier : ButtonGroup - Module.pb
; Version du fichier : 0.0.0
; Programmation : En cours
; Programmé par : Guillaume Saumure
; Alias : Guimauve
; Courriel : gsaumure@cgocable.ca
; Date : 14-02-2015
; Mise à jour : 14-02-2015
; Code PureBasic : V5.31
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule ButtonGroup
  
  Declare Horizontal(FirstGadgetID, LastGadgetID, X, Y, Width, Height, Gap = 5, Options = 0)
  Declare Vertical(FirstGadgetID, LastGadgetID, X, Y, Width, Height, Gap = 5, Options = 0)
  Declare Move(FirstGadgetID, LastGadgetID, X, Y, Direction = 0, Gap = 5)
  
EndDeclareModule

Module ButtonGroup
  
  Procedure Horizontal(FirstGadgetID, LastGadgetID, X, Y, Width, Height, Gap = 5, Options = 0)
    
    For Gadget = FirstGadgetID To LastGadgetID
      ButtonGadget(Gadget, X, Y, Width, Height, "", Options)
      X + Width + Gap
    Next
    
  EndProcedure
  
  Procedure Vertical(FirstGadgetID, LastGadgetID, X, Y, Width, Height, Gap = 5, Options = 0)
    
    For Gadget = FirstGadgetID To LastGadgetID
      ButtonGadget(Gadget, X, Y, Width, Height, "", Options)
      Y + Height + Gap
    Next
    
  EndProcedure
  
  Procedure Move(FirstGadgetID, LastGadgetID, X, Y, Direction = 0, Gap = 5)
    
    For Gadget = FirstGadgetID To LastGadgetID 
      
      ResizeGadget(Gadget, X, Y, #PB_Ignore, #PB_Ignore)
      
      If Direction = 0
        X + GadgetWidth(Gadget) + Gap
      ElseIf Direction = 1
        Y + GadgetHeight(Gadget) + Gap
      EndIf
      
    Next
    
  EndProcedure
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 5.50 (Linux - x64)
; Folding = -
; EnableXP
; CompileSourceDirectory