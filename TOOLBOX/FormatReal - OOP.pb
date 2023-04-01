; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE G�N�R� AUTOMATIQUEMENT, NE PAS MODIFIER �
; MOINS D'AVOIR UNE RAISON TR�S TR�S VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code g�n�r� par : Dev-Object - V1.7.4
; Nom du projet : FormatReal
; Nom du fichier : FormatReal - OOP.pb
; Version du fichier : 0.0.0
; Programmation : � v�rifier
; Programm� par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 12-04-2022
; Mise � jour : 12-04-2022
; Cod� pour PureBasic : V6.00 Beta 6
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule FormatReal
  
  Interface FormatReal
    
    DoIt.s(Number.s)
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module FormatReal
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< D�claration de la Structure <<<<<

  Structure Private_Members
    
    VirtualTable.i
    
  EndStructure
  
  Procedure.s DoIt(*This.Private_Members, Number.s)
    
    IntegerPart.s = StringField(Number, 1, ".")
    DecimalPart.s = "." + StringField(Number, 2, ".")
    
    NumberLen = Len(IntegerPart)
    Start = NumberLen % 3
    FormatedNumber.s = Left(IntegerPart, Start)
    
    For i = Start + 1 To NumberLen - Start Step 3
      FormatedNumber + " " + Mid(IntegerPart, i, 3)
    Next
    
    ProcedureReturn LTrim(FormatedNumber + DecimalPart)
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Destructeur <<<<<

  Procedure Free(*This.Private_Members)
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Constructeur <<<<<

  Procedure.i New()
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les entr�es de la table virtuelle <<<<<

  DataSection
    START_METHODS:
    Data.i @DoIt()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code g�n�r� en : 00.001 secondes (72000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 Beta 6 (Linux - x64)
; Folding = --
; EnableXP
; CompileSourceDirectory