; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V1.4.8
; Nom du projet : DevObject
; Nom du fichier : DevObject - GarbageCollector.pb
; Version du fichier : 1.0.1
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 15-05-2021
; Mise à jour : 24-11-2021
; Codé pour PureBasic : V5.73 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule GarbageCollector
  
  Interface GarbageCollector
    
    SetEditorGadget(EditorGadget.i)
    Process(*Comments.Comments::Comments)
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module GarbageCollector
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    EditorGadget.i
    Regex.i
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les mutateurs <<<<<

  Procedure SetEditorGadget(*This.Private_Members, EditorGadget.i)
    
    *This\EditorGadget = EditorGadget
    
  EndProcedure
  
  Procedure Process(*This.Private_Members, *Comments.Comments::Comments)
    
    NewList CodeLines.s()
    NewList Variables.s()
    
    Content.s = GoScintilla::GetText(*This\EditorGadget)
    Field_Max = CountString(Content, *Comments\LineFeed()) + 1
    
    For FieldID = 1 To Field_Max
      
      AddElement(CodeLines())
      CodeLines() = StringField(Content, FieldID, *Comments\LineFeed())
      
    Next
    
    ForEach CodeLines()
      
      If FindString(CodeLines(), "=")
        
        Affectation.s = StringField(CodeLines(), 1, "=")
        
        If MatchRegularExpression(*This\Regex, Trim(Affectation))
          AddElement(Variables())
          Variables() = Affectation
        EndIf
        
      EndIf
      
      CodeLines() = ""
      
    Next
    
    ForEach Variables()
      
      Buffer.s + StringField(Variables(), 1, ".") + "\Free()"
      
      If ListIndex(Variables()) <> ListSize(Variables())-1
        Buffer + *Comments\LineFeed()
      EndIf
      
      Variables() = ""
      
    Next 
    
    Content + *Comments\LineFeed() + *Comments\LineFeed()
    Content + Buffer
    
    GoScintilla::SetText(*This\EditorGadget, Content)
    
    FreeList(CodeLines())
    FreeList(Variables())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Destructeur <<<<<

  Procedure Free(*This.Private_Members)
    
    FreeRegularExpression(*This\Regex)
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Constructeur <<<<<

  Procedure.i New()
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\Regex = CreateRegularExpression(#PB_Any, "^([\w]+)(.)([\w]+)(::)([\w]+)$")
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les entrées de la table virtuelle <<<<<

  DataSection
    START_METHODS:
    Data.i @SetEditorGadget()
    Data.i @Process()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (107000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 5.73 LTS (Linux - x64)
; Folding = --
; EnableXP
; CompileSourceDirectory