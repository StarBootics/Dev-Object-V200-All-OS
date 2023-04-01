; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - Main.pb
; Version du fichier : 2.0.2
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 27-10-2019
; Mise à jour : 09-03-2023
; Code PureBasic : V6.01 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Note de programmation Version 2.0.2
;
; 1. Ajout de la règle pour le générateur de code pour les mots clés DisableDebugger
;    et EnableDebugger dans la définition du module. 3 options possibles : Aucun 
;    ajout de ces mots clés, ajout en commentaire, ajout.
;
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

IncludeFile "TOOLBOX" + #PS$ + "BuiltPathDirectory - Module.pb"
IncludeFile "TOOLBOX" + #PS$ + "ButtonImageGroup - Module.pb"
IncludeFile "TOOLBOX" + #PS$ + "Gadget Locate - Module.pb"
IncludeFile "TOOLBOX" + #PS$ + "GoScintilla - Module.pb"
IncludeFile "TOOLBOX" + #PS$ + "CheckBoxGroup - Module.pb"
IncludeFile "TOOLBOX" + #PS$ + "CheckFileExtension - Module.pb"
IncludeFile "TOOLBOX" + #PS$ + "ColorPreview Gadget - Module.pb"
IncludeFile "TOOLBOX" + #PS$ + "ButtonGroup - Module.pb"

CompilerIf #PB_Compiler_OS = #PB_OS_Linux
  IncludeFile "TOOLBOX" + #PS$ + "WindowBackgroundColor - Module.pb"
CompilerEndIf

IncludeFile "TOOLBOX" + #PS$ + "MarkDownGadget - Module.pb"

IncludeFile "TOOLBOX" + #PS$ + "CustomPrefs - OOP.pb"
IncludeFile "TOOLBOX" + #PS$ + "Language System - OOP.pb"
IncludeFile "TOOLBOX" + #PS$ + "Window - OOP.pb"
IncludeFile "TOOLBOX" + #PS$ + "Sticky - OOP.pb"
IncludeFile "TOOLBOX" + #PS$ + "Chain - OOP.pb"
IncludeFile "TOOLBOX" + #PS$ + "Chrono - OOP.pb"
IncludeFile "TOOLBOX" + #PS$ + "DateFormatting - OOP.pb"
IncludeFile "TOOLBOX" + #PS$ + "AskPureBasicCompiler - OOP.pb"
IncludeFile "TOOLBOX" + #PS$ + "StringBetween - OOP.pb"
IncludeFile "TOOLBOX" + #PS$ + "FormatMilliseconds - OOP.pb"
IncludeFile "TOOLBOX" + #PS$ + "FormatReal - OOP.pb"

IncludeFile "DevObject - Options.pb"
IncludeFile "DevObject - SyntaxHighlighting.pb"

IncludeFile "DevObject - FoolProofer.pb"
IncludeFile "DevObject - StringUtilities.pb"

IncludeFile "DevObject - Stats.pb"
IncludeFile "DevObject - LicenseContent.pb"
IncludeFile "DevObject - Comments.pb"
IncludeFile "DevObject - Help.pb"
IncludeFile "DevObject - LicenseManager.pb"

IncludeFile "DevObject - CheckerAnalyzer.pb"
IncludeFile "DevObject - CheckerMethod.pb"
IncludeFile "DevObject - CheckerError.pb"
IncludeFile "DevObject - CheckerSource.pb"
IncludeFile "DevObject - Checker.pb"

IncludeFile "DevObject - GarbageCollector.pb"

IncludeFile "DevObject - CustomFileLib.pb"
IncludeFile "DevObject - CustomFileLibs.pb"

IncludeFile "DevObject - Rules.pb"

IncludeFile "DevObject - DynamicArray.pb"
IncludeFile "DevObject - LinkedList.pb"
IncludeFile "DevObject - HashMap.pb"
IncludeFile "DevObject - Basic.pb"
IncludeFile "DevObject - StaticArray.pb"
IncludeFile "DevObject - Class.pb"

IncludeFile "DevObject - BasicMethods.pb"
IncludeFile "DevObject - MathsMethods.pb"
IncludeFile "DevObject - MemoryMethods.pb"
IncludeFile "DevObject - DynamicArrayMethods.pb"
IncludeFile "DevObject - LinkedListMethods.pb"
IncludeFile "DevObject - MapMethods.pb"
IncludeFile "DevObject - StaticArrayMethods.pb"
IncludeFile "DevObject - BinaryFile.pb"
IncludeFile "DevObject - EncodedCryptedFile.pb"
IncludeFile "DevObject - PreferencesFile.pb"
IncludeFile "DevObject - CustomPrefsFile.pb"
IncludeFile "DevObject - XMLFile.pb"
IncludeFile "DevObject - JSONFile.pb"
IncludeFile "DevObject - CodeGenerator.pb"

IncludeFile "DevObject - DevObject.pb"

DevObject.DevObject::DevObject = DevObject::New()

DevObject\CreateWindow()

DevObject\EventManager()

DevObject\Shutdown()

DevObject\Free()

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.01 LTS (Linux - x64)
; Folding = -
; Optimizer
; EnableThread
; EnableXP
; Executable = ../../../Programmes/DevObject/DevObject
; DisableDebugger
; CompileSourceDirectory
; Compiler = PureBasic 6.00 LTS (Linux - x64)