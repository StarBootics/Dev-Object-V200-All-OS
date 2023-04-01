; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V1.6.9
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - FoolProofer.pb
; Version du fichier : 1.2.1
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 14-12-2021
; Mise à jour : 30-10-2022
; Codé pour PureBasic : V6.00 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule FoolProofer
  
  Interface FoolProofer
    
    IsItValidDescription.i(Description.s)
    IsItValidArrayDescription.i(Description.s)
    GetArrayNameDotType.s(Description.s)
    GetArrayBracketPart.s(Description.s)
    IsItValidListDescription.i(Description.s)
    GetListNameDotType.s(Description.s)
    IsItValidMapDescription.i(Description.s)
    GetMapNameDotType.s(Description.s)
    IsItValidBasicDescription.i(Description.s)
    GetBasicNameDotType.s(Description.s)
    GetBasicExtraInfo.s(Description.s)
    IsItValidStaticArrayDescription.i(Description.s)
    GetStaticArrayNameDotType.s(Description.s)
    GetStaticArrayBracketPart.s(Description.s)
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module FoolProofer
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<
  
  Structure Private_Members
    
    VirtualTable.i
    ValidArray.i
    ValidList.i
    ValidMap.i
    ValidBasic.i
    ValidStaticArray.i
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure.i IsItValidDescription(*This.Private_Members, Description.s)
    
    If MatchRegularExpression(*This\ValidArray, Description)
      ProcedureReturn #True
    EndIf
    
    If MatchRegularExpression(*This\ValidList, Description)
      ProcedureReturn #True
    EndIf
    
    If MatchRegularExpression(*This\ValidMap, Description)
      ProcedureReturn #True
    EndIf
    
    If MatchRegularExpression(*This\ValidBasic, Description)
      ProcedureReturn #True
    EndIf
    
    If MatchRegularExpression(*This\ValidStaticArray, Description)
      ProcedureReturn #True
    EndIf
    
    ProcedureReturn #False
  EndProcedure
  
  Procedure.i IsItValidArrayDescription(*This.Private_Members, Description.s)
    
    If MatchRegularExpression(*This\ValidArray, Description)
      ProcedureReturn #True
    EndIf
    
    ProcedureReturn #False
  EndProcedure
  
  Procedure.s GetArrayNameDotType(*This.Private_Members, Description.s)
    
    If ExamineRegularExpression(*This\ValidArray, Description)
      NextRegularExpressionMatch(*This\ValidArray)
      ProcedureReturn RegularExpressionGroup(*This\ValidArray, 3)
    EndIf
    
  EndProcedure
  
  Procedure.s GetArrayBracketPart(*This.Private_Members, Description.s)
    
    If ExamineRegularExpression(*This\ValidArray, Description)
      NextRegularExpressionMatch(*This\ValidArray)
      ProcedureReturn RegularExpressionGroup(*This\ValidArray, 4)
    EndIf
    
  EndProcedure
  
  Procedure.i IsItValidListDescription(*This.Private_Members, Description.s)
    
    If MatchRegularExpression(*This\ValidList, Description)
      ProcedureReturn #True
    EndIf
    
    ProcedureReturn #False
  EndProcedure
  
  Procedure.s GetListNameDotType(*This.Private_Members, Description.s)
    
    If ExamineRegularExpression(*This\ValidList, Description)
      NextRegularExpressionMatch(*This\ValidList)
      ProcedureReturn RegularExpressionGroup(*This\ValidList, 3)
    EndIf
    
  EndProcedure

  Procedure.i IsItValidMapDescription(*This.Private_Members, Description.s)
    
    If MatchRegularExpression(*This\ValidMap, Description)
      ProcedureReturn #True
    EndIf
    
    ProcedureReturn #False
  EndProcedure
  
  Procedure.s GetMapNameDotType(*This.Private_Members, Description.s)
    
    If ExamineRegularExpression(*This\ValidMap, Description)
      NextRegularExpressionMatch(*This\ValidMap)
      ProcedureReturn RegularExpressionGroup(*This\ValidMap, 3)
    EndIf
    
  EndProcedure
  
  Procedure.i IsItValidBasicDescription(*This.Private_Members, Description.s)
    
    If MatchRegularExpression(*This\ValidBasic, Description)
      ProcedureReturn #True
    EndIf
    
    ProcedureReturn #False
  EndProcedure
  
  Procedure.s GetBasicNameDotType(*This.Private_Members, Description.s)
    
    If ExamineRegularExpression(*This\ValidBasic, Description)
      NextRegularExpressionMatch(*This\ValidBasic)
      ProcedureReturn RegularExpressionGroup(*This\ValidBasic, 1)
    EndIf
    
  EndProcedure
  
  Procedure.s GetBasicExtraInfo(*This.Private_Members, Description.s)
    
    If ExamineRegularExpression(*This\ValidBasic, Description)
      NextRegularExpressionMatch(*This\ValidBasic)
      ProcedureReturn RegularExpressionGroup(*This\ValidBasic, 2)
    EndIf
    
  EndProcedure
  
  
  
  Procedure.i IsItValidStaticArrayDescription(*This.Private_Members, Description.s)
    
    If MatchRegularExpression(*This\ValidStaticArray, Description)
      ProcedureReturn #True
    EndIf
    
    ProcedureReturn #False
  EndProcedure
  
  Procedure.s GetStaticArrayNameDotType(*This.Private_Members, Description.s)
    
    If ExamineRegularExpression(*This\ValidStaticArray, Description)
      NextRegularExpressionMatch(*This\ValidStaticArray)
      ProcedureReturn RegularExpressionGroup(*This\ValidStaticArray, 1)
    EndIf
    
  EndProcedure
  
  Procedure.s GetStaticArrayBracketPart(*This.Private_Members, Description.s)
    
    If ExamineRegularExpression(*This\ValidStaticArray, Description)
      NextRegularExpressionMatch(*This\ValidStaticArray)
      ProcedureReturn RegularExpressionGroup(*This\ValidStaticArray, 2)
    EndIf
    
  EndProcedure
  
  
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Destructeur <<<<<

  Procedure Free(*This.Private_Members)
    
    FreeRegularExpression(*This\ValidArray)
    FreeRegularExpression(*This\ValidList)
    FreeRegularExpression(*This\ValidMap)
    FreeRegularExpression(*This\ValidBasic)
    FreeRegularExpression(*This\ValidStaticArray)
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Constructeur <<<<<

  Procedure.i New()
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\ValidArray = CreateRegularExpression(#PB_Any, "^(?i)(Array)([ ]+)([\*][\w]+|[\w]+[.][a]|[\w]+[.][b]+|[\w]+[.][c]|[\w]+[.][u]|[\w]+[.][w]|[\w]+[.][i]|[\w]+[.][l]|[\w]+[.][q]|[\w]+[.][f]|[\w]+[.][d]|[\w]+[.][s]|[\w]+[\$]|[\*]?[\w]+[.][\w]+[:][:][\w]+)([\(][, \d]+[\)])$")
    *This\ValidList = CreateRegularExpression(#PB_Any, "^(?i)(List)([ ]+)([\*][\w]+|[\w]+[.][a]|[\w]+[.][b]+|[\w]+[.][c]|[\w]+[.][u]|[\w]+[.][w]|[\w]+[.][i]|[\w]+[.][l]|[\w]+[.][q]|[\w]+[.][f]|[\w]+[.][d]|[\w]+[.][s]|[\w]+[\$]|[\*]?[\w]+[.][\w]+[:][:][\w]+)([\(][\)])$")
    *This\ValidMap = CreateRegularExpression(#PB_Any, "^(?i)(Map)([ ]+)([\*][\w]+|[\w]+[.][a]|[\w]+[.][b]+|[\w]+[.][c]|[\w]+[.][u]|[\w]+[.][w]|[\w]+[.][i]|[\w]+[.][l]|[\w]+[.][q]|[\w]+[.][f]|[\w]+[.][d]|[\w]+[.][s]|[\w]+[\$]|[\*]?[\w]+[.][\w]+[:][:][\w]+)([\(])([\d]+)?([\)])$")
    *This\ValidBasic = CreateRegularExpression(#PB_Any, "^(?i)([\*][\w]+|[\w]+[.][a]|[\w]+[.][b]+|[\w]+[.][c]|[\w]+[.][u]|[\w]+[.][w]|[\w]+[.][i]|[\w]+[.][l]|[\w]+[.][q]|[\w]+[.][f]|[\w]+[.][d]|[\w]+[.][s]|[\w]+[\$]|[\*]?[\w]+[.][\w]+[:][:][\w]+)([ ;]+[\w: ,.]+)?$")
    *This\ValidStaticArray = CreateRegularExpression(#PB_Any, "^(?i)([\*][\w]+|[\w]+[.][a]|[\w]+[.][b]+|[\w]+[.][c]|[\w]+[.][u]|[\w]+[.][w]|[\w]+[.][i]|[\w]+[.][l]|[\w]+[.][q]|[\w]+[.][f]|[\w]+[.][d]|[\w]+[.][s]|[\w]+[\$]|[\*]?[\w]+[.][\w]+[:][:][\w]+)(\[[#= \d]+\])$")
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les entrées de la table virtuelle <<<<<

  DataSection
    START_METHODS:
    Data.i @IsItValidDescription()
    Data.i @IsItValidArrayDescription()
    Data.i @GetArrayNameDotType()
    Data.i @GetArrayBracketPart()
    Data.i @IsItValidListDescription()
    Data.i @GetListNameDotType()
    Data.i @IsItValidMapDescription()
    Data.i @GetMapNameDotType()
    Data.i @IsItValidBasicDescription()
    Data.i @GetBasicNameDotType()
    Data.i @GetBasicExtraInfo()
    Data.i @IsItValidStaticArrayDescription()
    Data.i @GetStaticArrayNameDotType()
    Data.i @GetStaticArrayBracketPart()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (84000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

CompilerIf #PB_Compiler_IsMainFile
  
  FP.FoolProofer::FoolProofer = FoolProofer::New()
  
;   Debug FP\IsItValidDescription("Thread")
;   Debug FP\IsItValidDescription("*Thread")
;   
;   Debug FP\IsItValidDescription("Thread.l[5]")
;   Debug FP\IsItValidDescription("*Thread[5]")
;   
;   Debug FP\IsItValidDescription("Thread()")
;   Debug FP\IsItValidDescription("List *Thread()")
;   
;   Debug FP\IsItValidDescription("Map Thread.i(25)")
;   Debug FP\IsItValidDescription("Map *Thread()")
;   
;   Debug FP\IsItValidDescription("*Vertex ; Data, VertexSize")
  
;   Debug FP\IsItValidArrayDescription("Array *Thread.Thread::Thread(5)")
;   Debug FP\GetArrayNameDotType("Array *Thread.Thread::Thread(5)")
;   Debug FP\GetArrayBracketPart("Array *Thread.Thread::Thread(5)")
;   Debug ""
;   
;   Debug FP\IsItValidListDescription("List *Thread()")
;   Debug FP\GetListNameDotType("List *Thread()")
;   Debug ""
;   
;   Debug FP\IsItValidMapDescription("Map *Thread()")
;   Debug FP\GetMapNameDotType("Map *Thread()")
;   Debug ""
;   
  Debug FP\IsItValidBasicDescription("*Vertex ; Data, VertexSize")
  Debug FP\GetBasicNameDotType("*Vertex ; Data, VertexSize")
  Debug FP\GetBasicExtraInfo("*Vertex ; Data, VertexSize")
  Debug ""
;   
;   Debug FP\IsItValidBasicDescription("*Vertex")
;   Debug FP\GetBasicNameDotType("*Vertex")
;   Debug FP\GetBasicExtraInfo("*Vertex")
;   Debug ""
;   
;   Debug FP\IsItValidStaticArrayDescription("*Thread[5]")
;   Debug FP\GetStaticArrayNameDotType("*Thread[5]")
;   Debug FP\GetStaticArrayBracketPart("*Thread[5]")
;   Debug ""
;   
;   Debug FP\IsItValidArrayDescription("Array Thread$(5)")
;   Debug FP\GetArrayNameDotType("Array Thread$(5)")
;   Debug FP\GetArrayBracketPart("Array Thread$(5)")
;   Debug ""
  
  FP\Free()
  
CompilerEndIf

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = ----
; Optimizer
; EnableXP
; CompileSourceDirectory
; Compiler = PureBasic 6.00 Beta 5 - C Backend (Linux - x64)