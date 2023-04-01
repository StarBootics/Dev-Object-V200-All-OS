; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Nom du projet : WindowBackgroundColor
; Nom du fichier : WindowBackgroundColor - Module.pb
; Version du fichier : 1.0.0
; Programmation : En cours
; Programmé par : Guillaume Saumure
; Alias : Guimauve
; Courriel : gsaumure@cgocable.ca
; Date : 07-03-2015
; Mise à jour : 07-03-2015
; Code PureBasic : 5.31
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule WindowBackgroundColor
  
  Declare.l FindIt(Window)
  
EndDeclareModule

Module WindowBackgroundColor
  
  Procedure.l FindIt(Window)
    
    If StartDrawing(WindowOutput(Window))
      Color.l = Point(3, 3)
      StopDrawing()
    EndIf
    
    If Color = 0 
      Color = RGB(239,235,231)
      Debug "Default Window Back color used !"
    EndIf
    
    ProcedureReturn Color
  EndProcedure
  
EndModule

CompilerIf #PB_Compiler_IsMainFile
  
  If OpenWindow(0,50,50,100,100, "")
    
    Color.l = WindowBackgroundColor::FindIt(0)
    
    Debug Red(Color)
    Debug Green(Color)
    Debug Blue(Color)
    
    Repeat
    Until WaitWindowEvent() = #PB_Event_CloseWindow
    
  EndIf
  
CompilerEndIf

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 5.71 LTS (Linux - x64)
; Folding = -
; EnableXP
; CompileSourceDirectory
; EnableUnicode