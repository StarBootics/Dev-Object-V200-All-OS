; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À
; MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code généré par : Dev-Object - V0.0.1
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - CodeGenerator.pb
; Version du fichier : 1.2.7
; Programmation : OK
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 27-10-2019
; Mise à jour : 09-03-2023
; Codé pour PureBasic : V6.01 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule CodeGenerator
  
  Interface CodeGenerator
    
    GetRules.i()
    GetBasicMethods.i()
    GetMathsMethods.i()
    GetMemoryMethods.i()
    GetBinaryFile.i()
    GetCustomFileLibs.i()
    GetEncodedCryptedFile.i()
    GetPrefsFile.i()
    GetXMLFile.i()
    GetJSONFile.i()
    GetCustomPrefsFile.i()
    GetDynamicArrayMethods.i()
    GetLinkedListMethods.i()
    GetMapMethods.i()
    GetStaticArrayMethods.i()
    GetDateFormatting.i()
    GetComments.i()
    GetClass.i()
    GetChronometer.i()
    GetStats.i()
    Reset()
    SaveProjectFile(FileName.s)
    LoadProjectFile(FileName.s)
    Generate.s()
    Free()
    
  EndInterface
  
  Declare.i New(ProgramVersion.s, PureBasicVersion.s, *Language.Language::Language, *LicenseManager.LicenseManager::LicenseManager, *CustomPrefs.CustomPrefs::CustomPrefs, *StringUtilities.StringUtilities::StringUtilities)

EndDeclareModule

Module CodeGenerator

  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Déclaration de la Structure <<<<<

  Structure Private_Members

    VirtualTable.i
    Rules.Rules::Rules
    BasicMethods.BasicMethods::BasicMethods
    MathsMethods.MathsMethods::MathsMethods
    MemoryMethods.MemoryMethods::MemoryMethods
    BinaryFile.BinaryFile::BinaryFile
    CustomFileLibs.CustomFileLibs::CustomFileLibs
    EncodedCryptedFile.EncodedCryptedFile::EncodedCryptedFile
    PrefsFile.PreferencesFile::PreferencesFile
    XMLFile.XMLFile::XMLFile
    JSONFile.JSONFile::JSONFile
    CustomPrefsFile.CustomPrefsFile::CustomPrefsFile
    DynamicArrayMethods.DynamicArrayMethods::DynamicArrayMethods
    LinkedListMethods.LinkedListMethods::LinkedListMethods
    MapMethods.MapMethods::MapMethods
    StaticArrayMethods.StaticArrayMethods::StaticArrayMethods
    
    DateFormatting.DateFormatting::DateFormatting
    Comments.Comments::Comments
    Class.Class::Class
    Chronometer.Chrono::Chrono
    Stats.Stats::Stats
    *Language.Language::Language
    *LicenseManager.LicenseManager::LicenseManager
    *CustomPrefs.CustomPrefs::CustomPrefs
    
  EndStructure

  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Les observateurs <<<<<
  
  Procedure.i GetRules(*This.Private_Members)
    
    ProcedureReturn *This\Rules
  EndProcedure
  
  Procedure.i GetBasicMethods(*This.Private_Members)
    
    ProcedureReturn *This\BasicMethods
  EndProcedure
  
  Procedure.i GetMathsMethods(*This.Private_Members)
    
    ProcedureReturn *This\MathsMethods
  EndProcedure
  
  Procedure.i GetMemoryMethods(*This.Private_Members)
    
    ProcedureReturn *This\MemoryMethods
  EndProcedure
  
  Procedure.i GetBinaryFile(*This.Private_Members)
    
    ProcedureReturn *This\BinaryFile
  EndProcedure
  
  Procedure.i GetCustomFileLibs(*This.Private_Members)
    
    ProcedureReturn *This\CustomFileLibs
  EndProcedure
  
  Procedure.i GetEncodedCryptedFile(*This.Private_Members)
    
    ProcedureReturn *This\EncodedCryptedFile
  EndProcedure
  
  Procedure.i GetPrefsFile(*This.Private_Members)
    
    ProcedureReturn *This\PrefsFile
  EndProcedure
  
  Procedure.i GetXMLFile(*This.Private_Members)
    
    ProcedureReturn *This\XMLFile
  EndProcedure
  
  Procedure.i GetJSONFile(*This.Private_Members)
    
    ProcedureReturn *This\JSONFile
  EndProcedure
  
  Procedure.i GetCustomPrefsFile(*This.Private_Members)
    
    ProcedureReturn *This\CustomPrefsFile
  EndProcedure
  
  Procedure.i GetDynamicArrayMethods(*This.Private_Members)
    
    ProcedureReturn *This\DynamicArrayMethods
  EndProcedure
  
  Procedure.i GetLinkedListMethods(*This.Private_Members)
    
    ProcedureReturn *This\LinkedListMethods
  EndProcedure
  
  Procedure.i GetMapMethods(*This.Private_Members)
    
    ProcedureReturn *This\MapMethods
  EndProcedure
  
  Procedure.i GetStaticArrayMethods(*This.Private_Members)
    
    ProcedureReturn *This\StaticArrayMethods
  EndProcedure

  Procedure.i GetDateFormatting(*This.Private_Members)
    
    ProcedureReturn *This\DateFormatting
  EndProcedure
    
  Procedure.i GetComments(*This.Private_Members)
    
    ProcedureReturn *This\Comments
  EndProcedure
  
  Procedure.i GetClass(*This.Private_Members)
    
    ProcedureReturn *This\Class
  EndProcedure
  
  Procedure.i GetChronometer(*This.Private_Members)
    
    ProcedureReturn *This\Chronometer
  EndProcedure
  
  Procedure.i GetStats(*This.Private_Members)
    
    ProcedureReturn *This\Stats
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< L'opérateur Reset <<<<<

  Procedure Reset(*This.Private_Members)
 
    *This\BasicMethods\Reset()
    *This\MathsMethods\Reset()
    *This\MemoryMethods\Reset()
    *This\BinaryFile\Reset()
    *This\EncodedCryptedFile\Reset() 
    *This\PrefsFile\Reset()
    *This\XMLFile\Reset()
    *This\CustomPrefsFile\Reset()
    *This\DynamicArrayMethods\Reset()
    *This\LinkedListMethods\Reset()
    *This\MapMethods\Reset()
    *This\StaticArrayMethods\Reset()
    *This\Class\Reset()
    *This\Chronometer\Reset()
    
  EndProcedure

  Procedure SaveProjectFile(*This.Private_Members, FileName.s)
    
    CustomPrefs.CustomPrefs::CustomPrefs = CustomPrefs::New(FileName)
    
    *This\LicenseManager\AddPrefsGroup("LicenseManager", CustomPrefs)
    *This\BasicMethods\AddPrefsGroup("BasicMethods", CustomPrefs)
    *This\MathsMethods\AddPrefsGroup("MathsMethods", CustomPrefs)
    *This\MemoryMethods\AddPrefsGroup("MemoryMethods", CustomPrefs)
    *This\DynamicArrayMethods\AddPrefsGroup("DynamicArrayMethods", CustomPrefs)
    *This\LinkedListMethods\AddPrefsGroup("LinkedListMethods", CustomPrefs)
    *This\MapMethods\AddPrefsGroup("MapMethods", CustomPrefs)
    *This\StaticArrayMethods\AddPrefsGroup("StaticArrayMethods", CustomPrefs)
    *This\BinaryFile\AddPrefsGroup("BinaryFile", CustomPrefs)
    *This\EncodedCryptedFile\AddPrefsGroup("EncodedCryptedFile", CustomPrefs)
    *This\PrefsFile\AddPrefsGroup("PrefsFile", CustomPrefs)
    *This\XMLFile\AddPrefsGroup("XMLFile", CustomPrefs)
    *This\JSONFile\AddPrefsGroup("JSONFile", CustomPrefs)
    *This\CustomPrefsFile\AddPrefsGroup("CustomPrefsFile", CustomPrefs)
    *This\Class\AddPrefsGroup("Class", CustomPrefs)
    
    CustomPrefs\SaveOnFile()
    CustomPrefs\Free()
    
  EndProcedure
  
  Procedure LoadProjectFile(*This.Private_Members, FileName.s)
    
    CustomPrefs.CustomPrefs::CustomPrefs = CustomPrefs::New(FileName)
    
    If CustomPrefs\LoadFromFile()
      
      *This\LicenseManager\ExtractPrefsGroup("LicenseManager", CustomPrefs)
      *This\BasicMethods\ExtractPrefsGroup("BasicMethods", CustomPrefs)
      *This\MathsMethods\ExtractPrefsGroup("MathsMethods", CustomPrefs)
      *This\MemoryMethods\ExtractPrefsGroup("MemoryMethods", CustomPrefs)
      *This\DynamicArrayMethods\ExtractPrefsGroup("DynamicArrayMethods", CustomPrefs)
      *This\LinkedListMethods\ExtractPrefsGroup("LinkedListMethods", CustomPrefs)
      *This\MapMethods\ExtractPrefsGroup("MapMethods", CustomPrefs)
      *This\StaticArrayMethods\ExtractPrefsGroup("StaticArrayMethods", CustomPrefs)
      *This\BinaryFile\ExtractPrefsGroup("BinaryFile", CustomPrefs)
      *This\EncodedCryptedFile\ExtractPrefsGroup("EncodedCryptedFile", CustomPrefs)
      *This\PrefsFile\ExtractPrefsGroup("PrefsFile", CustomPrefs)
      *This\XMLFile\ExtractPrefsGroup("XMLFile", CustomPrefs)
      *This\JSONFile\ExtractPrefsGroup("JSONFile", CustomPrefs)
      *This\CustomPrefsFile\ExtractPrefsGroup("CustomPrefsFile", CustomPrefs)
      *This\Class\ExtractPrefsGroup("Class", CustomPrefs)
      
    EndIf
    
    CustomPrefs\Free()
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Nom de la procédure <<<<<
  
  Procedure.s Private_DeclareModule(*This.Private_Members)
    
    Buffer.s + "DeclareModule " + *This\Class\GetName() + *This\Comments\LineFeed()
    Buffer + *This\Comments\Tabulation(1) + *This\Comments\LineFeed()
    Buffer + *This\Comments\Tabulation(1) + "Interface " + *This\Class\GetName() + *This\Comments\LineFeed()
    Buffer + *This\Comments\Tabulation(2) + *This\Comments\LineFeed()
    
    If *This\BasicMethods\GetGetters() = #True
      Buffer + *This\BasicMethods\GenerateGettersDeclare(*This\Class, *This\Comments, 0, *This\Rules)
    EndIf
    
    If *This\BasicMethods\GetSetters() = #True
      Buffer + *This\BasicMethods\GenerateSettersDeclare(*This\Class, *This\Comments, 0, *This\Rules)
    EndIf
    
    If *This\BasicMethods\GetUpdate() = #True
      Buffer + *This\BasicMethods\GenerateUpdateDeclare(*This\Class, *This\Comments, 0)
    EndIf
    
    If *This\BasicMethods\GetReset() = #True
      Buffer + *This\BasicMethods\GenerateResetDeclare(*This\Comments, 0)
    EndIf
    
    If *This\BasicMethods\GetClear() = #True
      Buffer + *This\BasicMethods\GenerateClearDeclare(*This\Comments, 0)
    EndIf
    
    If *This\BasicMethods\GetAccess() = #True
      Buffer + *This\BasicMethods\GenerateAccessDeclare(*This\Comments, 0)
    EndIf
    
    If *This\MathsMethods\GetEqual() = #True
      Buffer + *This\MathsMethods\GenerateEqualDeclare(*This\Comments, 0)
    EndIf
    
    If *This\MathsMethods\GetPlus() = #True
      Buffer + *This\MathsMethods\GeneratePlusDeclare(*This\Comments, 0)
    EndIf
    
    If *This\MathsMethods\GetMinus() = #True
      Buffer + *This\MathsMethods\GenerateMinusDeclare(*This\Comments, 0)
    EndIf
    
    If *This\MathsMethods\GetAdd() = #True
      Buffer + *This\MathsMethods\GenerateAddDeclare(*This\Comments, 0)
    EndIf
    
    If *This\MathsMethods\GetAddScaled() = #True
      Buffer + *This\MathsMethods\GenerateAddScaledDeclare(*This\Class, *This\Comments, 0)
    EndIf
    
    If *This\MathsMethods\GetSubtract() = #True
      Buffer + *This\MathsMethods\GenerateSubtractDeclare(*This\Comments, 0)
    EndIf
    
    If *This\MathsMethods\GetProduct() = #True
      Buffer + *This\MathsMethods\GenerateProductDeclare(*This\Comments, 0)
    EndIf
    
    If *This\MathsMethods\GetDivide() = #True
      Buffer + *This\MathsMethods\GenerateDivideDeclare(*This\Comments, 0)
    EndIf
    
    If *This\MathsMethods\GetAddScalar() = #True
      Buffer + *This\MathsMethods\GenerateAddScalarDeclare(*This\Class, *This\Comments, 0)
    EndIf
    
    If *This\MathsMethods\GetSubtractScalar() = #True
      Buffer + *This\MathsMethods\GenerateSubtractScalarDeclare(*This\Class, *This\Comments, 0)
    EndIf
    
    If *This\MathsMethods\GetProductByScalar() = #True
      Buffer + *This\MathsMethods\GenerateProductByScalarDeclare(*This\Class, *This\Comments, 0)
    EndIf
    
    If *This\MathsMethods\GetDivideByScalar() = #True
      Buffer + *This\MathsMethods\GenerateDivideByScalarDeclare(*This\Class, *This\Comments, 0)
    EndIf
    
    If *This\MathsMethods\GetLerp() = #True
      Buffer + *This\MathsMethods\GenerateLerpDeclare(*This\Class, *This\Comments, 0)
    EndIf
    
    If *This\Class\GetDataMethodsNeeded() = #True
      Buffer + *This\Class\GenerateDataMethodsDeclaration(*This\Comments, 0)
    EndIf
    
    If *This\MemoryMethods\GetCopy() = #True
      Buffer + *This\MemoryMethods\GenerateCopyDeclare(*This\Comments, 0)
    EndIf
    
    If *This\MemoryMethods\GetCompare() = #True
      Buffer + *This\MemoryMethods\GenerateCompareDeclare(*This\Comments, 0)
    EndIf
    
    If *This\MemoryMethods\GetSwapping() = #True
      Buffer + *This\MemoryMethods\GenerateSwappingDeclare(*This\Comments, 0)
    EndIf
    
    If *This\Class\GetDynamicArrayPresent() = #True
      
      If *This\DynamicArrayMethods\GetSort() = #True
        Buffer + *This\DynamicArrayMethods\GenerateSortDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\DynamicArrayMethods\GetLinearSearch() = #True
        Buffer + *This\DynamicArrayMethods\GenerateLinearSearchDeclare(*This\Class, *This\Comments, 0, *This\Rules)
      EndIf
      
      If *This\DynamicArrayMethods\GetBinarySearch() = #True
        Buffer + *This\DynamicArrayMethods\GenerateBinarySearchDeclare(*This\Class, *This\Comments, 0, *This\Rules)
      EndIf
      
      If *This\DynamicArrayMethods\GetRandomize() = #True
        Buffer + *This\DynamicArrayMethods\GenerateRandomizeDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\DynamicArrayMethods\GetReDimension() = #True
        Buffer + *This\DynamicArrayMethods\GenerateReDimDeclare(*This\Class, *This\Comments, 0, *This\Rules)
      EndIf
      
      If *This\DynamicArrayMethods\GetSize() = #True
        Buffer + *This\DynamicArrayMethods\GenerateSizeDeclare(*This\Class, *This\Comments, 0, *This\Rules)
      EndIf
      
    EndIf
    
    If *This\Class\GetListPresent() = #True
      
      If *This\LinkedListMethods\GetSort() = #True
        Buffer + *This\LinkedListMethods\GenerateSortDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\LinkedListMethods\GetLinearSearch() = #True
        Buffer + *This\LinkedListMethods\GenerateLinearSearchDeclare(*This\Class, *This\Comments, 0, *This\Rules)
      EndIf
      
      If *This\LinkedListMethods\GetBinarySearch() = #True
        Buffer + *This\LinkedListMethods\GenerateBinarySearchDeclare(*This\Class, *This\Comments, 0, *This\Rules)
      EndIf
      
      If *This\LinkedListMethods\GetRandomize() = #True
        Buffer + *This\LinkedListMethods\GenerateRandomizeDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\LinkedListMethods\GetAdd()
        Buffer + *This\LinkedListMethods\GenerateAddDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\LinkedListMethods\GetAddEx()
        Buffer + *This\LinkedListMethods\GenerateAddExDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\LinkedListMethods\GetInsert()
        Buffer + *This\LinkedListMethods\GenerateInsertDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\LinkedListMethods\GetInsertEx()
        Buffer + *This\LinkedListMethods\GenerateInsertExDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\LinkedListMethods\GetSelect()
        Buffer + *This\LinkedListMethods\GenerateSelectDeclare(*This\Class, *This\Comments, 0, *This\Rules)
      EndIf
      
      If *This\LinkedListMethods\GetFirst()
        Buffer + *This\LinkedListMethods\GenerateFirstDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\LinkedListMethods\GetLast()
        Buffer + *This\LinkedListMethods\GenerateLastDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\LinkedListMethods\GetPrevious()
        Buffer + *This\LinkedListMethods\GeneratePreviousDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\LinkedListMethods\GetNext()
        Buffer + *This\LinkedListMethods\GenerateNextDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\LinkedListMethods\GetDelete()
        Buffer + *This\LinkedListMethods\GenerateDeleteDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\LinkedListMethods\GetReset()
        Buffer + *This\LinkedListMethods\GenerateResetDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\LinkedListMethods\GetClear()
        Buffer + *This\LinkedListMethods\GenerateClearDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\LinkedListMethods\GetIndex()
        Buffer + *This\LinkedListMethods\GenerateIndexDeclare(*This\Class, *This\Comments, 0, *This\Rules)
      EndIf
      
      If *This\LinkedListMethods\GetSize()
        Buffer + *This\LinkedListMethods\GenerateSizeDeclare(*This\Class, *This\Comments, 0, *This\Rules)
      EndIf
      
      If *This\LinkedListMethods\GetMerge()
        Buffer + *This\LinkedListMethods\GenerateMergeDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
    EndIf
    
    If *This\Class\GetMapPresent() = #True
      
      If *This\MapMethods\GetAdd()
        Buffer + *This\MapMethods\GenerateAddDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\MapMethods\GetAddEx()
        Buffer + *This\MapMethods\GenerateAddExDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\MapMethods\GetClear()
        Buffer + *This\MapMethods\GenerateClearDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\MapMethods\GetSize()
        Buffer + *This\MapMethods\GenerateSizeDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\MapMethods\GetReset()
        Buffer + *This\MapMethods\GenerateResetDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\MapMethods\GetDelete()
        Buffer + *This\MapMethods\GenerateDeleteDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\MapMethods\GetFind()
        Buffer + *This\MapMethods\GenerateFindDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\MapMethods\GetNext()
        Buffer + *This\MapMethods\GenerateNextDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\MapMethods\GetKey()
        Buffer + *This\MapMethods\GenerateKeyDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
    EndIf
    
    If *This\Class\GetSpecialMethodsPresent() = #True
      Buffer + *This\Class\GenerateSpecialMethodsDeclaration(*This\Comments, 0)
    EndIf
    
    If *This\Class\GetStaticArrayPresent() = #True
      
      If *This\StaticArrayMethods\GetQuickSortAscendant() = #True
        Buffer + *This\StaticArrayMethods\GenerateQuickSortAscendantDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\StaticArrayMethods\GetQuickSortDescendant() = #True
        Buffer + *This\StaticArrayMethods\GenerateQuickSortDescendantDeclare(*This\Class, *This\Comments, 0)
      EndIf  
      
      If *This\StaticArrayMethods\GetLinearSearch() = #True
        Buffer + *This\StaticArrayMethods\GenerateLinearSearchDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\StaticArrayMethods\GetBinarySearch() = #True
        Buffer + *This\StaticArrayMethods\GenerateBinarySearchDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
      If *This\StaticArrayMethods\GetFixedLenghtQueue() = #True
        Buffer + *This\StaticArrayMethods\GenerateFixedLenghtQueueDeclare(*This\Class, *This\Comments, 0)
      EndIf
      
    EndIf
    
    If *This\BinaryFile\GetReadWrite() = #True
      Buffer + *This\BinaryFile\GenerateReadDeclare(*This\Class, *This\Comments, 0)
      Buffer + *This\BinaryFile\GenerateWriteDeclare(*This\Class, *This\Comments, 0)
    EndIf
    
    If *This\BinaryFile\GetCreateFile() = #True
      Buffer + *This\BinaryFile\GenerateCreateFileDeclare(*This\Class, *This\Comments, 0)
    EndIf
    
    If *This\BinaryFile\GetOpenFile() = #True
      Buffer + *This\BinaryFile\GenerateOpenFileDeclare(*This\Class, *This\Comments, 0)
    EndIf
    
    If *This\BinaryFile\GetReadFile() = #True
      Buffer + *This\BinaryFile\GenerateReadFileDeclare(*This\Class, *This\Comments, 0)
    EndIf
    
    If *This\EncodedCryptedFile\GetReadWrite() = #True
      Buffer + *This\EncodedCryptedFile\GenerateReadDeclare(*This\Class, *This\Comments, 0)
      Buffer + *This\EncodedCryptedFile\GenerateWriteDeclare(*This\Class, *This\Comments, 0)
    EndIf
    
    If *This\EncodedCryptedFile\GetCreateFile() = #True
      Buffer + *This\EncodedCryptedFile\GenerateCreateFileDeclare(*This\Class, *This\Comments, 0)
    EndIf
    
    If *This\EncodedCryptedFile\GetOpenFile() = #True
      Buffer + *This\EncodedCryptedFile\GenerateOpenFileDeclare(*This\Class, *This\Comments, 0)
    EndIf
    
    If *This\EncodedCryptedFile\GetReadFile() = #True
      Buffer + *This\EncodedCryptedFile\GenerateReadFileDeclare(*This\Class, *This\Comments, 0)
    EndIf
    
    If *This\PrefsFile\GetReadWriteGroup() = #True
      Buffer + *This\PrefsFile\GenerateReadGroupDeclare(*This\Comments, 0)
      Buffer + *This\PrefsFile\GenerateWriteGroupDeclare(*This\Comments, 0)
    EndIf
    
    If *This\PrefsFile\GetCreateOpenFile() = #True
      Buffer + *This\PrefsFile\GenerateCreateFileDeclare(*This\Comments, 0)
      Buffer + *This\PrefsFile\GenerateOpenFileDeclare(*This\Comments, 0)
    EndIf
    
    If *This\XMLFile\GetNodeWithChild() = #True
      Buffer + *This\XMLFile\GenerateSetNodeWithChildDeclare(*This\Comments, 0)
      Buffer + *This\XMLFile\GenerateGetNodeWithChildDeclare(*This\Comments, 0)
    EndIf
    
    If *This\XMLFile\GetNodeWithAttribute() = #True
      Buffer + *This\XMLFile\GenerateSetNodeWithAttributeDeclare(*This\Comments, 0)
      Buffer + *This\XMLFile\GenerateGetNodeWithAttributeDeclare(*This\Comments, 0)
    EndIf
    
    If *This\XMLFile\GetAddCollectAttribute() = #True
      Buffer + *This\XMLFile\GenerateAddAttributeDeclare(*This\Comments, 0)
      Buffer + *This\XMLFile\GenerateCollectAttributeDeclare(*This\Comments, 0)
    EndIf

    If *This\XMLFile\GetCreateLoadFile() = #True
      Buffer + *This\XMLFile\GenerateCreateFileDeclare(*This\Comments, 0)
      Buffer + *This\XMLFile\GenerateLoadFileDeclare(*This\Comments, 0)
    EndIf
    
    If *This\XMLFile\GetCatchFile() = #True
      Buffer + *This\XMLFile\GenerateCatchFileDeclare(*This\Comments, 0)
    EndIf
    
    If *This\JSONFile\GetInsertExtract() = #True
      Buffer + *This\JSONFile\GenerateInsertDeclare(*This\Comments, 0)
      Buffer + *This\JSONFile\GenerateExtractDeclare(*This\Comments, 0)
    EndIf
    
    If *This\JSONFile\GetSaveLoad() = #True
      Buffer + *This\JSONFile\GenerateSaveDeclare(*This\Comments, 0)
      Buffer + *This\JSONFile\GenerateLoadDeclare(*This\Comments, 0)
    EndIf
    
    If *This\JSONFile\GetCatch() = #True
      Buffer + *This\JSONFile\GenerateCatchDeclare(*This\Comments, 0)
    EndIf

    If *This\CustomPrefsFile\GetAddExtractGroup() = #True
      Buffer + *This\CustomPrefsFile\GenerateAddGroupDeclare(*This\Comments, 0)
      Buffer + *This\CustomPrefsFile\GenerateExtractGroupDeclare(*This\Comments, 0)
    EndIf
    
    If *This\CustomPrefsFile\GetRefreshGroup() = #True
      Buffer + *This\CustomPrefsFile\GenerateRefreshGroupDeclare(*This\Comments, 0)
    EndIf
    
    If *This\CustomPrefsFile\GetSaveOnLoadFromFile() = #True
      Buffer + *This\CustomPrefsFile\GenerateSaveOnFileDeclare(*This\Comments, 0)
      Buffer + *This\CustomPrefsFile\GenerateLoadFromFileDeclare(*This\Comments, 0)
    EndIf
    
    Buffer + *This\Comments\Tabulation(2) + "Free()"+ *This\Comments\LineFeed()
    Buffer + *This\Comments\Tabulation(2) + *This\Comments\LineFeed()
    Buffer + *This\Comments\Tabulation(1) + "EndInterface" + *This\Comments\LineFeed()
    Buffer + *This\Comments\Tabulation(1) + *This\Comments\LineFeed()
    Buffer + *This\Class\GenerateDestructorDeclaration(*This\Comments)
    Buffer + *This\Class\GenerateConstructorDeclaration(*This\Comments)
    Buffer + *This\Comments\Tabulation(1) + *This\Comments\LineFeed()
    Buffer + "EndDeclareModule" + *This\Comments\LineFeed() 
    Buffer + *This\Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s Private_ModuleDefinitionCode(*This.Private_Members)

    Buffer.s + "Module " + *This\Class\GetName() + *This\Comments\LineFeed()
    Buffer + *This\Comments\Tabulation(1) + *This\Comments\LineFeed()
   
    If *This\Rules\GetAddDisableEnableDebugger() = Rules::#DISABLE_ENABLE_DEBUGGER_COMMENTED
      Buffer + *This\Comments\Tabulation(1) + "; DisableDebugger" + *This\Comments\LineFeed()
      Buffer + *This\Comments\Tabulation(1) + *This\Comments\LineFeed()
    ElseIf *This\Rules\GetAddDisableEnableDebugger() = Rules::#DISABLE_ENABLE_DEBUGGER_UNCOMMENTED
      Buffer + *This\Comments\Tabulation(1) + "DisableDebugger" + *This\Comments\LineFeed()
      Buffer + *This\Comments\Tabulation(1) + *This\Comments\LineFeed()
    EndIf
   
    If *This\Class\GetSizeConstantsPresent() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("Size Array Constants"), 1)
      Buffer + *This\Class\GenerateStaticArraySizeConstants(*This\Comments)
    EndIf
   
    Buffer + *This\Comments\Section(*This\Language\Message("Structure declaration"), 1)
    Buffer + *This\Class\GeneratePrivateMemberStructure(*This\Comments)
    
    If *This\BasicMethods\GetGetters() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The observators"), 1)
      Buffer + *This\BasicMethods\GenerateGettersDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
    
    If *This\BasicMethods\GetSetters() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The mutators"), 1)
      Buffer + *This\BasicMethods\GenerateSettersDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
    
    If *This\BasicMethods\GetUpdate() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The Update operator"), 1)
      Buffer + *This\BasicMethods\GenerateUpdateDefine(*This\Class, *This\Comments)
    EndIf
    
    If *This\BasicMethods\GetReset() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The Reset operator"), 1)
      Buffer + *This\BasicMethods\GenerateResetDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
    
    If *This\BasicMethods\GetClear() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The Clear operator"), 1)
      Buffer + *This\BasicMethods\GenerateClearDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
    
    If *This\BasicMethods\GetAccess() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The Access operator"), 1)
      Buffer + *This\BasicMethods\GenerateAccessDefine(*This\Class, *This\Comments)
    EndIf
 
    If *This\MathsMethods\GetEqual() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The Equal operator : A = B"), 1)
      Buffer + *This\MathsMethods\GenerateEqualDefine(*This\Class, *This\Comments)
    EndIf
    
    If *This\MathsMethods\GetPlus() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The Plus operator : R = A + B"), 1)
      Buffer + *This\MathsMethods\GeneratePlusDefine(*This\Class, *This\Comments)
    EndIf
    
    If *This\MathsMethods\GetMinus() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The Minus operator : R = A - B"), 1)
      Buffer + *This\MathsMethods\GenerateMinusDefine(*This\Class, *This\Comments)
    EndIf
    
    If *This\MathsMethods\GetAdd() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The Add operator : A = A + B"), 1)
      Buffer + *This\MathsMethods\GenerateAddDefine(*This\Class, *This\Comments)
    EndIf
    
    If *This\MathsMethods\GetAddScaled() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The AddScaled operator : A = A + B * S"), 1)
      Buffer + *This\MathsMethods\GenerateAddScaledDefine(*This\Class, *This\Comments)
    EndIf
    
    If *This\MathsMethods\GetSubtract() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The Subtract operator : A = A - B"), 1)
      Buffer + *This\MathsMethods\GenerateSubtractDefine(*This\Class, *This\Comments)
    EndIf    
    
    If *This\MathsMethods\GetProduct() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The Product operator : R = A * B"), 1)
      Buffer + *This\MathsMethods\GenerateProductDefine(*This\Class, *This\Comments)
    EndIf    
    
    If *This\MathsMethods\GetDivide() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The Divide operator : R = A / B"), 1)
      Buffer + *This\MathsMethods\GenerateDivideDefine(*This\Class, *This\Comments)
    EndIf    
    
    If *This\MathsMethods\GetAddScalar() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The AddScalar operator : A = A + Scalar"), 1)
      Buffer + *This\MathsMethods\GenerateAddScalarDefine(*This\Class, *This\Comments)
    EndIf 
    
    If *This\MathsMethods\GetSubtractScalar() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The SubtractScalar operator : A = A - Scalar"), 1)
      Buffer + *This\MathsMethods\GenerateSubtractScalarDefine(*This\Class, *This\Comments)
    EndIf     
    
    If *This\MathsMethods\GetProductByScalar() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The ProductByScalar operator : A = A * Scalar"), 1)
      Buffer + *This\MathsMethods\GenerateProductByScalarDefine(*This\Class, *This\Comments)
    EndIf    
    
    If *This\MathsMethods\GetDivideByScalar() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The DivideByScalar operator : A = A / Scalar"), 1)
      Buffer + *This\MathsMethods\GenerateDivideByScalarDefine(*This\Class, *This\Comments)
    EndIf   
    
    If *This\MathsMethods\GetLerp() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The Linear Interpolation operator"), 1)
      Buffer + *This\MathsMethods\GenerateLerpDefine(*This\Class, *This\Comments)
    EndIf   
    
    If *This\Class\GetDataMethodsNeeded() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The Data memory allocator(s)"), 1)
      Buffer + *This\Class\GenerateDataMethodsDefinition(*This\Comments)
    EndIf
    
    If *This\MemoryMethods\GetCopy() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The Copy operator"), 1)
      Buffer + *This\MemoryMethods\GenerateCopyDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf   
    
    If *This\MemoryMethods\GetCompare() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The Compare operator"), 1)
      Buffer + *This\MemoryMethods\GenerateCompareDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf   
    
    If *This\MemoryMethods\GetSwapping() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The Swapping operator"), 1)
      Buffer + *This\MemoryMethods\GenerateSwappingDefine(*This\Class, *This\Comments)
    EndIf   
    
    If *This\Class\GetDynamicArrayPresent() = #True
      
      If *This\DynamicArrayMethods\GetSort() = #True
        
        Buffer2.s = *This\DynamicArrayMethods\GenerateSortDefine(*This\Class, *This\Comments)
        
        If Buffer2 <> ""
          Buffer + *This\Comments\Section(*This\Language\Message("The Sort operator"), 1)
          Buffer + Buffer2
        EndIf
        
      EndIf
      
      If *This\DynamicArrayMethods\GetLinearSearch() = #True
        
        Buffer2 = *This\DynamicArrayMethods\GenerateLinearSearchDefine(*This\Class, *This\Comments, *This\Rules)
        
        If Buffer2 <> ""
          Buffer + *This\Comments\Section(*This\Language\Message("The Linear Search operator"), 1)
          Buffer + Buffer2
        EndIf
        
      EndIf
      
      If *This\DynamicArrayMethods\GetBinarySearch() = #True
        
        Buffer2 = *This\DynamicArrayMethods\GenerateBinarySearchDefine(*This\Class, *This\Comments, *This\Rules)
        
        If Buffer2 <> ""
          Buffer + *This\Comments\Section(*This\Language\Message("The Binary Search operator"), 1)
          Buffer + Buffer2
        EndIf
        
      EndIf
      
      If *This\DynamicArrayMethods\GetRandomize() = #True
        Buffer + *This\Comments\Section(*This\Language\Message("The Randomize operator"), 1)
        Buffer + *This\DynamicArrayMethods\GenerateRandomizeDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\DynamicArrayMethods\GetReDimension() = #True
        Buffer + *This\Comments\Section(*This\Language\Message("The ReDim operator"), 1)
        Buffer + *This\DynamicArrayMethods\GenerateReDimDefine(*This\Class, *This\Comments, *This\Rules)
      EndIf
      
      If *This\DynamicArrayMethods\GetSize() = #True
        Buffer + *This\Comments\Section(*This\Language\Message("The Size operator"), 1)
        Buffer + *This\DynamicArrayMethods\GenerateSizeDefine(*This\Class, *This\Comments, *This\Rules)
      EndIf
      
    EndIf
    
    If *This\Class\GetListPresent() = #True
      
      If *This\LinkedListMethods\GetSort() = #True
        
        Buffer2 = *This\LinkedListMethods\GenerateSortDefine(*This\Class, *This\Comments)
        
        If Buffer2 <> ""
          Buffer + *This\Comments\Section(*This\Language\Message("The sort linked list operator(s)"), 1)
          Buffer + Buffer2
        EndIf
        
      EndIf
      
      If *This\LinkedListMethods\GetLinearSearch() = #True
        
        Buffer2 = *This\LinkedListMethods\GenerateLinearSearchDefine(*This\Class, *This\Comments, *This\Rules)
        
        If Buffer2 <> ""
          Buffer + *This\Comments\Section(*This\Language\Message("The linear search linked list operator(s)"), 1)
          Buffer + Buffer2
        EndIf
        
      EndIf
      
      If *This\LinkedListMethods\GetBinarySearch() = #True
        
        Buffer2 = *This\LinkedListMethods\GenerateBinarySearchDefine(*This\Class, *This\Comments, *This\Rules)
        
        If Buffer2 <> ""
          Buffer + *This\Comments\Section(*This\Language\Message("The binary search linked list operator(s)"), 1)
          Buffer + Buffer2
        EndIf
        
      EndIf
      
      If *This\LinkedListMethods\GetRandomize() = #True
        Buffer + *This\Comments\Section(*This\Language\Message("The Randomize linked list operator(s)"), 1)
        Buffer + *This\LinkedListMethods\GenerateRandomizeDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\LinkedListMethods\GetAdd()
        Buffer + *This\Comments\Section(*This\Language\Message("The Add to linked list operator(s)"), 1)
        Buffer + *This\LinkedListMethods\GenerateAddDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\LinkedListMethods\GetAddEx()
        Buffer + *This\Comments\Section(*This\Language\Message("The AddEx to linked list operator(s)"), 1)
        Buffer + *This\LinkedListMethods\GenerateAddExDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\LinkedListMethods\GetInsert()
        Buffer + *This\Comments\Section(*This\Language\Message("The Insert in linked list operator(s)"), 1)
        Buffer + *This\LinkedListMethods\GenerateInsertDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\LinkedListMethods\GetInsertEx()
        Buffer + *This\Comments\Section(*This\Language\Message("The InsertEx in linked list operator(s)"), 1)
        Buffer + *This\LinkedListMethods\GenerateInsertExDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\LinkedListMethods\GetSelect()
        Buffer + *This\Comments\Section(*This\Language\Message("The Select in linked list operator(s)"), 1)
        Buffer + *This\LinkedListMethods\GenerateSelectDefine(*This\Class, *This\Comments, *This\Rules)
      EndIf
      
      If *This\LinkedListMethods\GetFirst()
        Buffer + *This\Comments\Section(*This\Language\Message("The First element in linked list operator(s)"), 1)
        Buffer + *This\LinkedListMethods\GenerateFirstDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\LinkedListMethods\GetLast()
        Buffer + *This\Comments\Section(*This\Language\Message("The Last element in linked list operator(s)"), 1)
        Buffer + *This\LinkedListMethods\GenerateLastDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\LinkedListMethods\GetPrevious()
        Buffer + *This\Comments\Section(*This\Language\Message("The Previous element in linked list operator(s)"), 1)
        Buffer + *This\LinkedListMethods\GeneratePreviousDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\LinkedListMethods\GetNext()
        Buffer + *This\Comments\Section(*This\Language\Message("The Next element in linked list operator(s)"), 1)
        Buffer + *This\LinkedListMethods\GenerateNextDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\LinkedListMethods\GetDelete()
        Buffer + *This\Comments\Section(*This\Language\Message("The Delete element from linked list operator(s)"), 1)
        Buffer + *This\LinkedListMethods\GenerateDeleteDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\LinkedListMethods\GetReset()
        Buffer + *This\Comments\Section(*This\Language\Message("The Reset linked list operator(s)"), 1)
        Buffer + *This\LinkedListMethods\GenerateResetDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\LinkedListMethods\GetClear()
        Buffer + *This\Comments\Section(*This\Language\Message("The Clear linked list operator(s)"), 1)
        Buffer + *This\LinkedListMethods\GenerateClearDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\LinkedListMethods\GetIndex()
        Buffer + *This\Comments\Section(*This\Language\Message("The Index in the linked list operator(s)"), 1)
        Buffer + *This\LinkedListMethods\GenerateIndexDefine(*This\Class, *This\Comments, *This\Rules)
      EndIf
      
      If *This\LinkedListMethods\GetSize()
        Buffer + *This\Comments\Section(*This\Language\Message("The Size of the linked list operator(s)"), 1)
        Buffer + *This\LinkedListMethods\GenerateSizeDefine(*This\Class, *This\Comments, *This\Rules)
      EndIf
      
      If *This\LinkedListMethods\GetMerge()
        Buffer + *This\Comments\Section(*This\Language\Message("The merge linked list operator(s)"), 1)
        Buffer + *This\LinkedListMethods\GenerateMergeDefine(*This\Class, *This\Comments)
      EndIf
      
    EndIf
    
    If *This\Class\GetMapPresent() = #True
      
      If *This\MapMethods\GetAdd()
        Buffer + *This\Comments\Section(*This\Language\Message("The Add to map operator(s)"), 1)
        Buffer + *This\MapMethods\GenerateAddDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\MapMethods\GetAddEx()
        Buffer + *This\Comments\Section(*This\Language\Message("The AddEx to map operator(s)"), 1)
        Buffer + *This\MapMethods\GenerateAddExDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\MapMethods\GetClear()
        Buffer + *This\Comments\Section(*This\Language\Message("The Clear map operator(s)"), 1)
        Buffer + *This\MapMethods\GenerateClearDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\MapMethods\GetSize()
        Buffer + *This\Comments\Section(*This\Language\Message("The map Size operator(s)"), 1)
        Buffer + *This\MapMethods\GenerateSizeDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\MapMethods\GetReset()
        Buffer + *This\Comments\Section(*This\Language\Message("The Reset map operator(s)"), 1)
        Buffer + *This\MapMethods\GenerateResetDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\MapMethods\GetDelete()
        Buffer + *This\Comments\Section(*This\Language\Message("The Delete map element operator(s)"), 1)
        Buffer + *This\MapMethods\GenerateDeleteDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\MapMethods\GetFind()
        Buffer + *This\Comments\Section(*This\Language\Message("The Find map element operator(s)"), 1)
        Buffer + *This\MapMethods\GenerateFindDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\MapMethods\GetNext()
        Buffer + *This\Comments\Section(*This\Language\Message("The Next map element operator(s)"), 1)
        Buffer + *This\MapMethods\GenerateNextDefine(*This\Class, *This\Comments)
      EndIf
      
      If *This\MapMethods\GetKey()
        Buffer + *This\Comments\Section(*This\Language\Message("The map Key operator(s)"), 1)
        Buffer + *This\MapMethods\GenerateKeyDefine(*This\Class, *This\Comments)
      EndIf
      
    EndIf
    
    If *This\Class\GetSpecialMethodsPresent() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("The Special operator(s)"), 1)
      Buffer + *This\Class\GenerateSpecialMethodsDefinition(*This\Comments)       
    EndIf

    If *This\Class\GetStaticArrayPresent() = #True
      
      If *This\StaticArrayMethods\GetQuickSortAscendant() = #True
        
        Buffer2 = *This\StaticArrayMethods\GenerateQuickSortAscendantDefine(*This\Class, *This\Comments)
        
        If Buffer2 <> ""
          Buffer + *This\Comments\Section(*This\Language\Message("The Quick Sort Ascendant operator(s)"), 1)
          Buffer + Buffer2
        EndIf
        
      EndIf
      
      If *This\StaticArrayMethods\GetQuickSortDescendant() = #True
        
        Buffer2 = *This\StaticArrayMethods\GenerateQuickSortDescendantDefine(*This\Class, *This\Comments)
        
        If Buffer2 <> ""
          Buffer + *This\Comments\Section(*This\Language\Message("The Quick Sort Descendant operator(s)"), 1)
          Buffer + Buffer2
        EndIf
        
      EndIf  
      
      If *This\StaticArrayMethods\GetLinearSearch() = #True
        
        Buffer2 = *This\StaticArrayMethods\GenerateLinearSearchDefine(*This\Class, *This\Comments)
        
        If Buffer2 <> ""
          Buffer + *This\Comments\Section(*This\Language\Message("The Linear Search operator"), 1)
          Buffer + Buffer2
        EndIf
        
      EndIf
      
      If *This\StaticArrayMethods\GetBinarySearch() = #True
        
        Buffer2 = *This\StaticArrayMethods\GenerateBinarySearchDefine(*This\Class, *This\Comments)
        
        If Buffer2 <> ""
          Buffer + *This\Comments\Section(*This\Language\Message("The Binary Search operator"), 1)
          Buffer + Buffer2
        EndIf
        
      EndIf
      
      If *This\StaticArrayMethods\GetFixedLenghtQueue() = #True
        Buffer + *This\Comments\Section(*This\Language\Message("The Insert Top Bottom Out operator(s)"), 1)
        Buffer + *This\StaticArrayMethods\GenerateFixedLenghtQueueDefine(*This\Class, *This\Comments)
      EndIf
      
    EndIf

    If *This\BinaryFile\GetReadWrite() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("Read in Binary file"), 1)
      Buffer + *This\BinaryFile\GenerateReadDefine(*This\Class, *This\Comments, *This\Rules)
      Buffer + *This\Comments\Section(*This\Language\Message("Write in Binary file"), 1)
      Buffer + *This\BinaryFile\GenerateWriteDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
    
    If *This\BinaryFile\GetCreateFile() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("Create Binary File"), 1)
      Buffer + *This\BinaryFile\GenerateCreateFileDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
    
    If *This\BinaryFile\GetOpenFile() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("Open Binary File"), 1)
      Buffer + *This\BinaryFile\GenerateOpenFileDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
    
    If *This\BinaryFile\GetReadFile() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("Read Binary File"), 1)
      Buffer + *This\BinaryFile\GenerateReadFileDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf

    If *This\EncodedCryptedFile\GetReadWrite() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("Read in Encoded/Crypted file"), 1)
      Buffer + *This\EncodedCryptedFile\GenerateReadDefine(*This\Class, *This\Comments, *This\Rules)
      Buffer + *This\Comments\Section(*This\Language\Message("Write in Encoded/Crypted file"), 1)
      Buffer + *This\EncodedCryptedFile\GenerateWriteDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
    
    If *This\EncodedCryptedFile\GetCreateFile() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("Create Encoded/Crypted File"), 1)
      Buffer + *This\EncodedCryptedFile\GenerateCreateFileDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
    
    If *This\EncodedCryptedFile\GetOpenFile() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("Open Encoded/Crypted File"), 1)
      Buffer + *This\EncodedCryptedFile\GenerateOpenFileDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
    
    If *This\EncodedCryptedFile\GetReadFile() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("Read Encoded/Crypted File"), 1)
      Buffer + *This\EncodedCryptedFile\GenerateReadFileDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
    
    If *This\PrefsFile\GetReadWriteGroup() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("Read preferences group"), 1)
      Buffer + *This\PrefsFile\GenerateReadGroupDefine(*This\Class, *This\Comments, *This\Rules)
      Buffer + *This\Comments\Section(*This\Language\Message("Write preferences group"), 1)
      Buffer + *This\PrefsFile\GenerateWriteGroupDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
    
    If *This\PrefsFile\GetCreateOpenFile() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("Create preferences file"), 1)
      Buffer + *This\PrefsFile\GenerateCreatePrefsFileDefine(*This\Class, *This\Comments, *This\Rules)
      Buffer + *This\Comments\Section(*This\Language\Message("Open preferences file"), 1)
      Buffer + *This\PrefsFile\GenerateOpenPrefsFileDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
    
    If *This\XMLFile\GetNodeWithChild() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("XML Set Node with child nodes"), 1)
      Buffer + *This\XMLFile\GenerateSetNodeWithChildDefine(*This\Class, *This\Comments, *This\Rules)
      Buffer + *This\Comments\Section(*This\Language\Message("XML Get Node with child nodes"), 1)
      Buffer + *This\XMLFile\GenerateGetNodeWithChildDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
    
    If *This\XMLFile\GetNodeWithAttribute() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("XML Set Node with Attributes"), 1)
      Buffer + *This\XMLFile\GenerateSetNodeWithAttributeDefine(*This\Class, *This\Comments)
      Buffer + *This\Comments\Section(*This\Language\Message("XML Get Node with Attributes"), 1)
      Buffer + *This\XMLFile\GenerateGetNodeWithAttributeDefine(*This\Class, *This\Comments)
    EndIf
    
    If *This\XMLFile\GetAddCollectAttribute() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("XML Add Attributes"), 1)
      Buffer + *This\XMLFile\GenerateAddAttributeDefine(*This\Class, *This\Comments)
      Buffer + *This\Comments\Section(*This\Language\Message("XML Collect Attributes"), 1)
      Buffer + *This\XMLFile\GenerateCollectAttributeDefine(*This\Class, *This\Comments)
    EndIf
    
    If *This\XMLFile\GetCreateLoadFile() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("XML Create file"), 1)
      Buffer + *This\XMLFile\GenerateCreateFileDefine(*This\Comments)
      Buffer + *This\Comments\Section(*This\Language\Message("XML Load file"), 1)
      Buffer + *This\XMLFile\GenerateLoadFileDefine(*This\Comments)
    EndIf
    
    If *This\XMLFile\GetCatchFile() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("XML Catch file"), 1)
      Buffer + *This\XMLFile\GenerateCatchFileDefine(*This\Comments)
    EndIf
    
    If *This\JSONFile\GetInsertExtract() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("JSON Insert"), 1)
      Buffer + *This\JSONFile\GenerateInsertDefine(*This\Class, *This\Comments, *This\Rules)
      Buffer + *This\Comments\Section(*This\Language\Message("JSON Extract"), 1)
      Buffer + *This\JSONFile\GenerateExtractDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
    
    If *This\JSONFile\GetSaveLoad() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("JSON Save On file"), 1)
      Buffer + *This\JSONFile\GenerateSaveDefine(*This\Class, *This\Comments, *This\Rules)
      Buffer + *This\Comments\Section(*This\Language\Message("JSON Load From file"), 1)
      Buffer + *This\JSONFile\GenerateLoadDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
      
    If *This\JSONFile\GetCatch() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("JSON Catch file"), 1)
      Buffer + *This\JSONFile\GenerateCatchDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
    
    If *This\CustomPrefsFile\GetAddExtractGroup() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("Add Prefs Group"), 1)
      Buffer + *This\CustomPrefsFile\GenerateAddGroupDefine(*This\Class, *This\Comments, *This\Rules)
      Buffer + *This\Comments\Section(*This\Language\Message("Extract Prefs Group"), 1)
      Buffer + *This\CustomPrefsFile\GenerateExtractGroupDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
    
    If *This\CustomPrefsFile\GetRefreshGroup() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("Refresh Prefs Group"), 1)
      Buffer + *This\CustomPrefsFile\GenerateRefreshGroupDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
    
    If *This\CustomPrefsFile\GetSaveOnLoadFromFile() = #True
      Buffer + *This\Comments\Section(*This\Language\Message("Save On Prefs file"), 1)
      Buffer + *This\CustomPrefsFile\GenerateSaveOnFileDefine(*This\Class, *This\Comments, *This\Rules)
      Buffer + *This\Comments\Section(*This\Language\Message("Load From Prefs file"), 1)
      Buffer + *This\CustomPrefsFile\GenerateLoadFromFileDefine(*This\Class, *This\Comments, *This\Rules)
    EndIf
    
    Buffer + *This\Comments\Section(*This\Language\Message("The Destructor"), 1)
    Buffer + *This\Class\GenerateDestructorDefine(*This\Comments, *This\Rules)
    
    Buffer + *This\Comments\Section(*This\Language\Message("The Constructor"), 1)
    Buffer + *This\Class\GenerateConstructorDefine(*This\Comments, *This\Rules)
    
    Buffer + *This\Comments\Section(*This\Language\Message("The Virtual Table Entries"), 1)
    Buffer + *This\Comments\Tabulation(1) + "DataSection" + *This\Comments\LineFeed()
    Buffer + *This\Comments\Tabulation(2) + "START_METHODS:" + *This\Comments\LineFeed()
    
    If *This\BasicMethods\GetGetters() = #True
      Buffer + *This\BasicMethods\GenerateGettersDeclare(*This\Class, *This\Comments, 1, *This\Rules)
    EndIf
    
    If *This\BasicMethods\GetSetters() = #True
      Buffer + *This\BasicMethods\GenerateSettersDeclare(*This\Class, *This\Comments, 1, *This\Rules)
    EndIf
    
    If *This\BasicMethods\GetUpdate() = #True
      Buffer + *This\BasicMethods\GenerateUpdateDeclare(*This\Class, *This\Comments, 1)
    EndIf
    
    If *This\BasicMethods\GetReset() = #True
      Buffer + *This\BasicMethods\GenerateResetDeclare(*This\Comments, 1)
    EndIf
    
    If *This\BasicMethods\GetClear() = #True
      Buffer + *This\BasicMethods\GenerateClearDeclare(*This\Comments, 1)
    EndIf
    
    If *This\BasicMethods\GetAccess() = #True
      Buffer + *This\BasicMethods\GenerateAccessDeclare(*This\Comments, 1)
    EndIf
    
    If *This\MathsMethods\GetEqual() = #True
      Buffer + *This\MathsMethods\GenerateEqualDeclare(*This\Comments, 1)
    EndIf
    
    If *This\MathsMethods\GetPlus() = #True
      Buffer + *This\MathsMethods\GeneratePlusDeclare(*This\Comments, 1)
    EndIf
    
    If *This\MathsMethods\GetMinus() = #True
      Buffer + *This\MathsMethods\GenerateMinusDeclare(*This\Comments, 1)
    EndIf
    
    If *This\MathsMethods\GetAdd() = #True
      Buffer + *This\MathsMethods\GenerateAddDeclare(*This\Comments, 1)
    EndIf
    
    If *This\MathsMethods\GetAddScaled() = #True
      Buffer + *This\MathsMethods\GenerateAddScaledDeclare(*This\Class, *This\Comments, 1)
    EndIf
    
    If *This\MathsMethods\GetSubtract() = #True
      Buffer + *This\MathsMethods\GenerateSubtractDeclare(*This\Comments, 1)
    EndIf
    
    If *This\MathsMethods\GetProduct() = #True
      Buffer + *This\MathsMethods\GenerateProductDeclare(*This\Comments, 1)
    EndIf
    
    If *This\MathsMethods\GetDivide() = #True
      Buffer + *This\MathsMethods\GenerateDivideDeclare(*This\Comments, 1)
    EndIf
    
    If *This\MathsMethods\GetAddScalar() = #True
      Buffer + *This\MathsMethods\GenerateAddScalarDeclare(*This\Class, *This\Comments, 1)
    EndIf
    
    If *This\MathsMethods\GetSubtractScalar() = #True
      Buffer + *This\MathsMethods\GenerateSubtractScalarDeclare(*This\Class, *This\Comments, 1)
    EndIf
    
    If *This\MathsMethods\GetProductByScalar() = #True
      Buffer + *This\MathsMethods\GenerateProductByScalarDeclare(*This\Class, *This\Comments, 1)
    EndIf
    
    If *This\MathsMethods\GetDivideByScalar() = #True
      Buffer + *This\MathsMethods\GenerateDivideByScalarDeclare(*This\Class, *This\Comments, 1)
    EndIf
    
    If *This\MathsMethods\GetLerp() = #True
      Buffer + *This\MathsMethods\GenerateLerpDeclare(*This\Class, *This\Comments, 1)
    EndIf
    
    If *This\Class\GetDataMethodsNeeded() = #True
      Buffer + *This\Class\GenerateDataMethodsDeclaration(*This\Comments, 1)
    EndIf
    
    If *This\MemoryMethods\GetCopy() = #True
      Buffer + *This\MemoryMethods\GenerateCopyDeclare(*This\Comments, 1)
    EndIf
    
    If *This\MemoryMethods\GetCompare() = #True
      Buffer + *This\MemoryMethods\GenerateCompareDeclare(*This\Comments, 1)
    EndIf
    
    If *This\MemoryMethods\GetSwapping() = #True
      Buffer + *This\MemoryMethods\GenerateSwappingDeclare(*This\Comments, 1)
    EndIf
    
    If *This\Class\GetDynamicArrayPresent() = #True
      
      If *This\DynamicArrayMethods\GetSort() = #True
        Buffer + *This\DynamicArrayMethods\GenerateSortDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\DynamicArrayMethods\GetLinearSearch() = #True
        Buffer + *This\DynamicArrayMethods\GenerateLinearSearchDeclare(*This\Class, *This\Comments, 1, *This\Rules)
      EndIf
      
      If *This\DynamicArrayMethods\GetBinarySearch() = #True
        Buffer + *This\DynamicArrayMethods\GenerateBinarySearchDeclare(*This\Class, *This\Comments, 1, *This\Rules)
      EndIf
      
      If *This\DynamicArrayMethods\GetRandomize() = #True
        Buffer + *This\DynamicArrayMethods\GenerateRandomizeDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\DynamicArrayMethods\GetReDimension() = #True
        Buffer + *This\DynamicArrayMethods\GenerateReDimDeclare(*This\Class, *This\Comments, 1, *This\Rules)
      EndIf
      
      If *This\DynamicArrayMethods\GetSize() = #True
        Buffer + *This\DynamicArrayMethods\GenerateSizeDeclare(*This\Class, *This\Comments, 1, *This\Rules)
      EndIf
      
    EndIf
    
    If *This\Class\GetListPresent() = #True
      
      If *This\LinkedListMethods\GetSort() = #True
        Buffer + *This\LinkedListMethods\GenerateSortDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\LinkedListMethods\GetLinearSearch() = #True
        Buffer + *This\LinkedListMethods\GenerateLinearSearchDeclare(*This\Class, *This\Comments, 1, *This\Rules)
      EndIf
      
      If *This\LinkedListMethods\GetBinarySearch() = #True
        Buffer + *This\LinkedListMethods\GenerateBinarySearchDeclare(*This\Class, *This\Comments, 1, *This\Rules)
      EndIf
      
      If *This\LinkedListMethods\GetRandomize() = #True
        Buffer + *This\LinkedListMethods\GenerateRandomizeDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\LinkedListMethods\GetAdd()
        Buffer + *This\LinkedListMethods\GenerateAddDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\LinkedListMethods\GetAddEx()
        Buffer + *This\LinkedListMethods\GenerateAddExDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\LinkedListMethods\GetInsert()
        Buffer + *This\LinkedListMethods\GenerateInsertDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\LinkedListMethods\GetInsertEx()
        Buffer + *This\LinkedListMethods\GenerateInsertExDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\LinkedListMethods\GetSelect()
        Buffer + *This\LinkedListMethods\GenerateSelectDeclare(*This\Class, *This\Comments, 1, *This\Rules)
      EndIf
      
      If *This\LinkedListMethods\GetFirst()
        Buffer + *This\LinkedListMethods\GenerateFirstDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\LinkedListMethods\GetLast()
        Buffer + *This\LinkedListMethods\GenerateLastDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\LinkedListMethods\GetPrevious()
        Buffer + *This\LinkedListMethods\GeneratePreviousDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\LinkedListMethods\GetNext()
        Buffer + *This\LinkedListMethods\GenerateNextDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\LinkedListMethods\GetDelete()
        Buffer + *This\LinkedListMethods\GenerateDeleteDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\LinkedListMethods\GetReset()
        Buffer + *This\LinkedListMethods\GenerateResetDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\LinkedListMethods\GetClear()
        Buffer + *This\LinkedListMethods\GenerateClearDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\LinkedListMethods\GetIndex()
        Buffer + *This\LinkedListMethods\GenerateIndexDeclare(*This\Class, *This\Comments, 1, *This\Rules)
      EndIf
      
      If *This\LinkedListMethods\GetSize()
        Buffer + *This\LinkedListMethods\GenerateSizeDeclare(*This\Class, *This\Comments, 1, *This\Rules)
      EndIf
      
      If *This\LinkedListMethods\GetMerge()
        Buffer + *This\LinkedListMethods\GenerateMergeDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
    EndIf
    
    If *This\Class\GetMapPresent() = #True
      
      If *This\MapMethods\GetAdd()
        Buffer + *This\MapMethods\GenerateAddDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\MapMethods\GetAddEx()
        Buffer + *This\MapMethods\GenerateAddExDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\MapMethods\GetClear()
        Buffer + *This\MapMethods\GenerateClearDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\MapMethods\GetSize()
        Buffer + *This\MapMethods\GenerateSizeDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\MapMethods\GetReset()
        Buffer + *This\MapMethods\GenerateResetDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\MapMethods\GetDelete()
        Buffer + *This\MapMethods\GenerateDeleteDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\MapMethods\GetFind()
        Buffer + *This\MapMethods\GenerateFindDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\MapMethods\GetNext()
        Buffer + *This\MapMethods\GenerateNextDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\MapMethods\GetKey()
        Buffer + *This\MapMethods\GenerateKeyDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
    EndIf
    
    If *This\Class\GetSpecialMethodsPresent() = #True
      Buffer + *This\Class\GenerateSpecialMethodsDeclaration(*This\Comments, 1)
    EndIf
    
    If *This\Class\GetStaticArrayPresent() = #True
      
      If *This\StaticArrayMethods\GetQuickSortAscendant() = #True
        Buffer + *This\StaticArrayMethods\GenerateQuickSortAscendantDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\StaticArrayMethods\GetQuickSortDescendant() = #True
        Buffer + *This\StaticArrayMethods\GenerateQuickSortDescendantDeclare(*This\Class, *This\Comments, 1)
      EndIf  
      
      If *This\StaticArrayMethods\GetLinearSearch() = #True
        Buffer + *This\StaticArrayMethods\GenerateLinearSearchDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\StaticArrayMethods\GetBinarySearch() = #True
        Buffer + *This\StaticArrayMethods\GenerateBinarySearchDeclare(*This\Class, *This\Comments, 1)
      EndIf
      
      If *This\StaticArrayMethods\GetFixedLenghtQueue() = #True
        Buffer + *This\StaticArrayMethods\GenerateFixedLenghtQueueDeclare(*This\Class, *This\Comments, 1)
      EndIf

    EndIf

    If *This\BinaryFile\GetReadWrite() = #True
      Buffer + *This\BinaryFile\GenerateReadDeclare(*This\Class, *This\Comments, 1)
      Buffer + *This\BinaryFile\GenerateWriteDeclare(*This\Class, *This\Comments, 1)
    EndIf
    
    If *This\BinaryFile\GetCreateFile() = #True
      Buffer + *This\BinaryFile\GenerateCreateFileDeclare(*This\Class, *This\Comments, 1)
    EndIf
    
    If *This\BinaryFile\GetOpenFile() = #True
      Buffer + *This\BinaryFile\GenerateOpenFileDeclare(*This\Class, *This\Comments, 1)
    EndIf
    
    If *This\BinaryFile\GetReadFile() = #True
      Buffer + *This\BinaryFile\GenerateReadFileDeclare(*This\Class, *This\Comments, 1)
    EndIf

    If *This\EncodedCryptedFile\GetReadWrite() = #True
      Buffer + *This\EncodedCryptedFile\GenerateReadDeclare(*This\Class, *This\Comments, 1)
      Buffer + *This\EncodedCryptedFile\GenerateWriteDeclare(*This\Class, *This\Comments, 1)
    EndIf
    
    If *This\EncodedCryptedFile\GetCreateFile() = #True
      Buffer + *This\EncodedCryptedFile\GenerateCreateFileDeclare(*This\Class, *This\Comments, 1)
    EndIf
    
    If *This\EncodedCryptedFile\GetOpenFile() = #True
      Buffer + *This\EncodedCryptedFile\GenerateOpenFileDeclare(*This\Class, *This\Comments, 1)
    EndIf
    
    If *This\EncodedCryptedFile\GetReadFile() = #True
      Buffer + *This\EncodedCryptedFile\GenerateReadFileDeclare(*This\Class, *This\Comments, 1)
    EndIf
    
    If *This\PrefsFile\GetReadWriteGroup() = #True
      Buffer + *This\PrefsFile\GenerateReadGroupDeclare(*This\Comments, 1)
      Buffer + *This\PrefsFile\GenerateWriteGroupDeclare(*This\Comments, 1)
    EndIf
    
    If *This\PrefsFile\GetCreateOpenFile() = #True
      Buffer + *This\PrefsFile\GenerateCreateFileDeclare(*This\Comments, 1)
      Buffer + *This\PrefsFile\GenerateOpenFileDeclare(*This\Comments, 1)  
    EndIf
    
    If *This\XMLFile\GetNodeWithChild() = #True
      Buffer + *This\XMLFile\GenerateSetNodeWithChildDeclare(*This\Comments, 1)
      Buffer + *This\XMLFile\GenerateGetNodeWithChildDeclare(*This\Comments, 1)
    EndIf
    
    If *This\XMLFile\GetNodeWithAttribute() = #True
      Buffer + *This\XMLFile\GenerateSetNodeWithAttributeDeclare(*This\Comments, 1)
      Buffer + *This\XMLFile\GenerateGetNodeWithAttributeDeclare(*This\Comments, 1)
    EndIf
    
    If *This\XMLFile\GetAddCollectAttribute() = #True
      Buffer + *This\XMLFile\GenerateAddAttributeDeclare(*This\Comments, 1)
      Buffer + *This\XMLFile\GenerateCollectAttributeDeclare(*This\Comments, 1)
    EndIf
    
    If *This\XMLFile\GetCreateLoadFile() = #True
      Buffer + *This\XMLFile\GenerateCreateFileDeclare(*This\Comments, 1)
      Buffer + *This\XMLFile\GenerateLoadFileDeclare(*This\Comments, 1)
    EndIf
    
    If *This\XMLFile\GetCatchFile() = #True
      Buffer + *This\XMLFile\GenerateCatchFileDeclare(*This\Comments, 1)
    EndIf
    
    If *This\JSONFile\GetInsertExtract() = #True
      Buffer + *This\JSONFile\GenerateInsertDeclare(*This\Comments, 1)
      Buffer + *This\JSONFile\GenerateExtractDeclare(*This\Comments, 1)
    EndIf
    
    If *This\JSONFile\GetSaveLoad() = #True
      Buffer + *This\JSONFile\GenerateSaveDeclare(*This\Comments, 1)
      Buffer + *This\JSONFile\GenerateLoadDeclare(*This\Comments, 1)
    EndIf
    
    If *This\JSONFile\GetCatch() = #True
      Buffer + *This\JSONFile\GenerateCatchDeclare(*This\Comments, 1)
    EndIf
    
    If *This\CustomPrefsFile\GetAddExtractGroup() = #True
      Buffer + *This\CustomPrefsFile\GenerateAddGroupDeclare(*This\Comments, 1)
      Buffer + *This\CustomPrefsFile\GenerateExtractGroupDeclare(*This\Comments, 1)
    EndIf
    
    If *This\CustomPrefsFile\GetRefreshGroup() = #True
      Buffer + *This\CustomPrefsFile\GenerateRefreshGroupDeclare(*This\Comments, 1)
    EndIf
    
    If *This\CustomPrefsFile\GetSaveOnLoadFromFile() = #True
      Buffer + *This\CustomPrefsFile\GenerateSaveOnFileDeclare(*This\Comments, 1)
      Buffer + *This\CustomPrefsFile\GenerateLoadFromFileDeclare(*This\Comments, 1)
    EndIf
    
    Buffer + *This\Comments\Tabulation(2) + "Data.i @Free()" + *This\Comments\LineFeed()
    Buffer + *This\Comments\Tabulation(2) + "END_METHODS:" + *This\Comments\LineFeed()
    Buffer + *This\Comments\Tabulation(1) + "EndDataSection" + *This\Comments\LineFeed()
    Buffer + *This\Comments\Tabulation(1) + *This\Comments\LineFeed()
    
    If *This\Rules\GetAddDisableEnableDebugger() = Rules::#DISABLE_ENABLE_DEBUGGER_COMMENTED
      Buffer + *This\Comments\Tabulation(1) + "; EnableDebugger" + *This\Comments\LineFeed()
      Buffer + *This\Comments\Tabulation(1) + *This\Comments\LineFeed()
    ElseIf *This\Rules\GetAddDisableEnableDebugger() = Rules::#DISABLE_ENABLE_DEBUGGER_UNCOMMENTED
      Buffer + *This\Comments\Tabulation(1) + "EnableDebugger" + *This\Comments\LineFeed()
      Buffer + *This\Comments\Tabulation(1) + *This\Comments\LineFeed()
    EndIf
    
    Buffer + "EndModule" +  *This\Comments\LineFeed()
    Buffer + *This\Comments\LineFeed()
    
    ProcedureReturn Buffer
  EndProcedure
  
  Procedure.s Generate(*This.Private_Members)
    
    *This\Chronometer\Start()
    
    Buffer.s = *This\Comments\SourceHeader(*This\DateFormatting)
    
    If *This\LicenseManager\GetLicenseToUse() >= 0
      *This\LicenseManager\SelectAvailableLicenses(*This\LicenseManager\GetLicenseToUse())
      Buffer + *This\Comments\SourceLicense(*This\LicenseManager\GetAvailableLicenses())
    EndIf
    
    Buffer + Private_DeclareModule(*This) 
    Buffer + Private_ModuleDefinitionCode(*This)
    
    *This\Chronometer\Stop()
    
    If *This\Chronometer\Consult() = 0
      *This\Chronometer\Start()
      Delay(1)
      *This\Chronometer\Stop()
    EndIf
    
    Buffer + *This\Comments\WorkingTime(Buffer, *This\Chronometer, *This\Language, *This\Stats, *This\CustomPrefs) 
    Buffer + *This\Comments\EndOfFile(*This\Language)
    
    ProcedureReturn Buffer
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Destructeur <<<<<
  
  Procedure Free(*This.Private_Members)
    
    If *This\Rules <> #Null
      *This\Rules\Free()
    EndIf
    
    If *This\BasicMethods <> #Null
      *This\BasicMethods\Free()
    EndIf
    
    If *This\MathsMethods <> #Null
      *This\MathsMethods\Free()
    EndIf
    
    If *This\MemoryMethods <> #Null
      *This\MemoryMethods\Free()
    EndIf
    
    If *This\BinaryFile <> #Null
      *This\BinaryFile\Free()
    EndIf
    
    If *This\CustomFileLibs <> #Null
      *This\CustomFileLibs\Free()
    EndIf
    
    If *This\EncodedCryptedFile <> #Null
      *This\EncodedCryptedFile\Free()
    EndIf
    
    If *This\PrefsFile <> #Null
      *This\PrefsFile\Free()
    EndIf
    
    If *This\XMLFile <> #Null
      *This\XMLFile\Free()
    EndIf
    
    If *This\JSONFile <> #Null
      *This\JSONFile\Free()
    EndIf
    
    If *This\CustomPrefsFile <> #Null
      *This\CustomPrefsFile\Free()
    EndIf
    
    If *This\DynamicArrayMethods <> #Null
      *This\DynamicArrayMethods\Free()
    EndIf
    
    If *This\LinkedListMethods <> #Null
      *This\LinkedListMethods\Free()
    EndIf
    
    If *This\MapMethods <> #Null
      *This\MapMethods\Free()
    EndIf
    
    If *This\StaticArrayMethods <> #Null
      *This\StaticArrayMethods\Free()
    EndIf
    
    If *This\DateFormatting <> #Null
      *This\DateFormatting\Free()
    EndIf
    
    If *This\Comments <> #Null
      *This\Comments\Free()
    EndIf
    
    If *This\Class <> #Null
      *This\Class\Free()
    EndIf
    
    If *This\Chronometer <> #Null
      *This\Chronometer\Free()
    EndIf
    
    If *This\Stats <> #Null
      *This\Stats\Free()
    EndIf
    
    FreeStructure(*This)
    
  EndProcedure

  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Le Constructeur <<<<<

  Procedure.i New(ProgramVersion.s, PureBasicVersion.s, *Language.Language::Language, *LicenseManager.LicenseManager::LicenseManager, *CustomPrefs.CustomPrefs::CustomPrefs, *StringUtilities.StringUtilities::StringUtilities)

    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\Rules = Rules::New(Rules::#DYNAMIC_DATA_SIZE_TYPE_LONG)
    *This\BasicMethods = BasicMethods::New()
    *This\MathsMethods = MathsMethods::New()
    *This\MemoryMethods = MemoryMethods::New()
    *This\BinaryFile = BinaryFile::New()
    *This\CustomFileLibs = CustomFileLibs::New()
    *This\EncodedCryptedFile = EncodedCryptedFile::New(*This\CustomFileLibs, *StringUtilities\GetBetweenParenthesis())
    *This\PrefsFile = PreferencesFile::New()
    *This\XMLFile = XMLFile::New()
    *This\JSONFile = JSONFile::New()
    *This\CustomPrefsFile = CustomPrefsFile::New()
    *This\DynamicArrayMethods = DynamicArrayMethods::New()
    *This\LinkedListMethods = LinkedListMethods::New()
    *This\MapMethods = MapMethods::New()
    *This\StaticArrayMethods = StaticArrayMethods::New()
    
    *This\LicenseManager = *LicenseManager
    *This\DateFormatting = DateFormatting::New()
    *This\Comments = Comments::New(ProgramVersion, PureBasicVersion)
    *This\Class = Class::New(*StringUtilities)
    *This\Chronometer = Chrono::New()
    *This\Stats = Stats::New()
    *This\Language = *Language
    *This\CustomPrefs = *CustomPrefs
    
    ProcedureReturn *This
  EndProcedure

  DataSection
    START_METHODS:
    Data.i @GetRules()
    Data.i @GetBasicMethods()
    Data.i @GetMathsMethods()
    Data.i @GetMemoryMethods()
    Data.i @GetBinaryFile()
    Data.i @GetCustomFileLibs()
    Data.i @GetEncodedCryptedFile()
    Data.i @GetPrefsFile()
    Data.i @GetXMLFile()
    Data.i @GetJSONFile()
    Data.i @GetCustomPrefsFile()
    Data.i @GetDynamicArrayMethods()
    Data.i @GetLinkedListMethods()
    Data.i @GetMapMethods()
    Data.i @GetStaticArrayMethods()
    Data.i @GetDateFormatting()
    Data.i @GetComments()
    Data.i @GetClass()
    Data.i @GetChronometer()
    Data.i @GetStats()
    Data.i @Reset()
    Data.i @SaveProjectFile()
    Data.i @LoadProjectFile()
    Data.i @Generate()
    Data.i @Free()
    END_METHODS:
  EndDataSection

EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code généré en : 00.001 secondes (137000.00 lignes/seconde) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.01 LTS (Linux - x64)
; Folding = ----3-
; EnableXP
; CompileSourceDirectory