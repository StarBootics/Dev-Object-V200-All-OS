; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Nom du projet : ColorPreview Gadget
; Nom du fichier : ColorPreview Gadget - Module.pb
; Version du fichier : 0.0.0
; Programmation : En cours
; Programmé par : Guillaume Saumure
; Alias : Guimauve
; Courriel : gsaumure@cgocable.ca
; Date : 09-03-2015
; Mise à jour : 19-06-2016
; Code PureBasic : V5.50 B1
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule ColorPreview
  
  Declare.l CurrentColor(GadgetID, Color.l = -1)
  Declare Gadget(GadgetID, x.w, y.w, Width.w, Height.w, Color.l)
  Declare Free(GadgetID)
  
EndDeclareModule

Module ColorPreview
  
  Procedure.l CurrentColor(GadgetID, Color.l = -1)
    
    If IsGadget(GadgetID)
      
      If Color <> -1
        
        If GetGadgetData(GadgetID) <> #Null
          
          Width = GadgetWidth(GadgetID)
          Height = GadgetHeight(GadgetID)
          
          If StartDrawing(ImageOutput(GetGadgetData(GadgetID)))
            Box(0, 0, Width, Height, Color)
            StopDrawing()
            SetGadgetState(GadgetID, ImageID(GetGadgetData(GadgetID)))
          EndIf 
          
        EndIf
        
      Else
        
        If GetGadgetData(GadgetID) <> #Null
          
          PosX = GadgetWidth(GadgetID) >> 1
          PosY = GadgetHeight(GadgetID) >> 1
          
          If StartDrawing(ImageOutput(GetGadgetData(GadgetID)))
            CurrentColor = Point(PosX, PosY)
            StopDrawing()
          EndIf 
          
        EndIf

        ProcedureReturn CurrentColor
        
      EndIf
      
    EndIf  
    
  EndProcedure 
  
  Procedure Gadget(GadgetID, x.w, y.w, Width.w, Height.w, Color.l)
    
    GadgetHandle = ImageGadget(GadgetID, x, y, Width, Height, 0, #PB_Image_Border)
    
    If GadgetID = #PB_Any 
      GadgetID = GadgetHandle 
    EndIf 
    
    SetGadgetData(GadgetID, CreateImage(#PB_Any, Width, Height))
    CurrentColor(GadgetID, Color)
    
    ProcedureReturn GadgetID
  EndProcedure 
  
  Procedure Free(GadgetID)
    
    If IsGadget(GadgetID)
      If GetGadgetData(GadgetID) <> #Null
        FreeImage(GetGadgetData(GadgetID))
      EndIf
    EndIf
    
  EndProcedure
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 1 (Linux - x64)
; Folding = -
; EnableXP
; CompileSourceDirectory
; EnableUnicode