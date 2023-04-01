; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Nom du projet : ButtonImageGroup - Module
; Nom du fichier : ButtonImageGroup - Module.pb
; Version du fichier : 1.0.0
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : Guimauve
; Courriel : gsaumure@cgocable.ca
; Date : 14-02-2015
; Mise à jour : 14-02-2015
; Code PureBasic : V5.31
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule ButtonImageGroup
  
  Declare Horizontal(FirstGadgetID, LastGadgetID, X, Y, Width, Height, Gap = 5)
  Declare Vertical(FirstGadgetID, LastGadgetID, X, Y, Width, Height, Gap = 5)
  Declare Move(FirstGadgetID, LastGadgetID, X, Y, Direction = 0, Gap = 5)
  
EndDeclareModule

Module ButtonImageGroup
  
  Procedure Horizontal(FirstGadgetID, LastGadgetID, X, Y, Width, Height, Gap = 5)
    
    For Gadget = FirstGadgetID To LastGadgetID 
      
      If IsImage(Gadget)
        ImageID = ImageID(Gadget)
      Else
        ImageID = 0
      EndIf
      
      ButtonImageGadget(Gadget, X, Y, Width, Height, ImageID)
      X + Width + Gap
      
    Next
    
  EndProcedure
  
  Procedure Vertical(FirstGadgetID, LastGadgetID, X, Y, Width, Height, Gap = 5)
    
    For Gadget = FirstGadgetID To LastGadgetID 
      
      If IsImage(Gadget)
        ImageID = ImageID(Gadget)
      Else
        ImageID = 0
      EndIf
      
      ButtonImageGadget(Gadget, X, Y, Width, Height, ImageID)
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