; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Nom du projet : Dev-Object
; Nom du fichier : DevObject - Language.pb
; Version du fichier : 1.0.0
; Programmation : En cours
; Programmé par : Guillaume Saumure
; Alias : StarBootics
; Courriel : gsaumure@cgocable.ca
; Date : 29-10-2019
; Mise à jour : 26-10-2021
; Code PureBasic : V5.73 LTS
; Plateforme : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

IncludeFile "TOOLBOX" + #PS$ + "BuiltPathDirectory - Module.pb"
IncludeFile "TOOLBOX" + #PS$ + "CustomPrefs - OOP.pb"
IncludeFile "TOOLBOX" + #PS$ + "Language System - OOP.pb"

Procedure BuiltLanguageDefaultFiles(P_LanguagePath.s)
  
  BuiltPathDirectory::DoIt(P_LanguagePath)
  
  English.Language::Language = Language::New(P_LanguagePath, "English.xml")
  French.Language::Language = Language::New(P_LanguagePath, "Français.xml")
  
  English\AddTableElement("Dev-Object", "Dev-Object")
  French\AddTableElement("Dev-Object", "Dev-Object")
  
  English\AddTableElement("Object", "Object")
  French\AddTableElement("Object", "Objet")
  
  English\AddTableElement("Methods", "Methods")
  French\AddTableElement("Methods", "Méthodes")
  
  English\AddTableElement("Source", "Source")
  French\AddTableElement("Source", "Source")
  
  English\AddTableElement("Options", "Options")
  French\AddTableElement("Options", "Options")
  
  English\AddTableElement("Help", "Help")
  French\AddTableElement("Help", "Aide")
  
  English\AddTableElement("Tools", "Tools")
  French\AddTableElement("Tools", "Outils")
  
  English\AddTableElement("Sanity Checker", "Sanity Checker")
  French\AddTableElement("Sanity Checker", "Vérificateur d'intégrité")
  
  English\AddTableElement("File Name", "File Name")
  French\AddTableElement("File Name", "Nom du Fichier")    
  
  English\AddTableElement("Paste", "Paste")
  French\AddTableElement("Paste", "Coller")
  
  English\AddTableElement("State", "State")
  French\AddTableElement("State", "État")   
  
  English\AddTableElement("The number of methods differ", "The number of methods differ")
  French\AddTableElement("The number of methods differ", "Le nombre de méthodes diffère")
  
  English\AddTableElement("Spelling error", "Spelling error")
  French\AddTableElement("Spelling error", "Faute d'ortographe")
  
  English\AddTableElement("Other errors", "Other errors")
  French\AddTableElement("Other errors", "Autre type d'erreurs")
  
  English\AddTableElement("The number of parameters differ", "The number of parameters differ")
  French\AddTableElement("The number of parameters differ", "Le nombre de paramètres diffère")
  
  English\AddTableElement("The parameters type differ", "The parameters type differ")
  French\AddTableElement("The parameters type differ", "Le type de paramètres diffère")
  
  English\AddTableElement("The return type differ", "The return type differ")
  French\AddTableElement("The return type differ", "Le type de retour diffère")
  
  English\AddTableElement("Garbage Collector", "Garbage Collector")
  French\AddTableElement("Garbage Collector", "Éboueur")    
  
  English\AddTableElement("Object name", "Object name")
  French\AddTableElement("Object name", "Nom de l'objet")
  
  English\AddTableElement("No licence", "No licence")
  French\AddTableElement("No licence", "Aucune licence")
  
  English\AddTableElement("Basic Methods", "Basic Methods")
  French\AddTableElement("Basic Methods", "Méthodes de base")
  
  English\AddTableElement("Getters", "Getters")
  French\AddTableElement("Getters", "Observateurs")
  
  English\AddTableElement("Setters", "Setters")
  French\AddTableElement("Setters", "Mutateurs")
  
  English\AddTableElement("Update", "Update")
  French\AddTableElement("Update", "Update")
  
  English\AddTableElement("Reset", "Reset")
  French\AddTableElement("Reset", "Reset")
  
  English\AddTableElement("Clear", "Clear")
  French\AddTableElement("Clear", "Clear")
  
  English\AddTableElement("Access", "Access")
  French\AddTableElement("Access", "Access")
  
  English\AddTableElement("Mathematic Operators", "Mathematic Operators")
  French\AddTableElement("Mathematic Operators", "Opérateurs Mathématique")
  
  English\AddTableElement("Equal", "Equal")
  French\AddTableElement("Equal", "Égal")
  
  English\AddTableElement("Plus", "Plus")
  French\AddTableElement("Plus", "Plus")
  
  English\AddTableElement("Minus", "Minus")
  French\AddTableElement("Minus", "Moins")
  
  English\AddTableElement("Add", "Add")
  French\AddTableElement("Add", "Additionner")
  
  English\AddTableElement("Add Scaled", "Add Scaled")
  French\AddTableElement("Add Scaled", "Additionner à l'échelle")
  
  English\AddTableElement("Subtract", "Subtract")
  French\AddTableElement("Subtract", "Soustraire")
  
  English\AddTableElement("Product", "Product")
  French\AddTableElement("Product", "Produit")
  
  English\AddTableElement("Divide", "Divide")
  French\AddTableElement("Divide", "Division")
  
  English\AddTableElement("Add Scalar", "Add Scalar")
  French\AddTableElement("Add Scalar", "Ajouter un Scalaire")
  
  English\AddTableElement("Add Scalar", "Add Scalar")
  French\AddTableElement("Add Scalar", "Ajouter un Scalaire")
  
  English\AddTableElement("Subtract Scalar", "Subtract Scalar")
  French\AddTableElement("Subtract Scalar", "Soustraire un Scalaire")
  
  English\AddTableElement("Product by Scalar", "Product by Scalar")
  French\AddTableElement("Product by Scalar", "Produit par Scalaire")
  
  English\AddTableElement("Divide by Scalar", "Divide by Scalar")
  French\AddTableElement("Divide by Scalar", "Division par Scalaire")
  
  English\AddTableElement("Linear Interpolation", "Linear Interpolation")
  French\AddTableElement("Linear Interpolation", "Interpolation Linéaire")    
  
  English\AddTableElement("Memory Operators", "Memory Operators")
  French\AddTableElement("Memory Operators", "Opérateurs Mémoire")
  
  English\AddTableElement("Copy", "Copy")
  French\AddTableElement("Copy", "Copie")
  
  English\AddTableElement("Compare", "Compare")
  French\AddTableElement("Compare", "Comparer")
  
  English\AddTableElement("Swapping", "Swapping")
  French\AddTableElement("Swapping", "Swapping")
  
  English\AddTableElement("Dynamic Array Operators", "Dynamic Array Operators")
  French\AddTableElement("Dynamic Array Operators", "Opérateurs de tableau dynamique")
  
  English\AddTableElement("Sort", "Sort")
  French\AddTableElement("Sort", "Trier")
  
  English\AddTableElement("Linear Search", "Linear Search")
  French\AddTableElement("Linear Search", "Fouille linéaire")
  
  English\AddTableElement("Binary Search", "Binary Search")
  French\AddTableElement("Binary Search", "Fouille dichotomique")
  
  English\AddTableElement("Randomize", "Randomize")
  French\AddTableElement("Randomize", "Rendre aléatoire")
  
  English\AddTableElement("Re-Dimension", "Re-Dimension")
  French\AddTableElement("Re-Dimension", "Re-Dimensionner")
  
  English\AddTableElement("Linked List Operators", "Linked List Operators")
  French\AddTableElement("Linked List Operators", "Opérateurs de liste chainée")
  
  English\AddTableElement("Add Element", "Add Element")
  French\AddTableElement("Add Element", "Ajouter un élément")
  
  English\AddTableElement("Add Element Ex", "Add Element Ex")
  French\AddTableElement("Add Element Ex", "Ajouter un élément Ex")
  
  English\AddTableElement("Insert Element", "Insert Element")
  French\AddTableElement("Insert Element", "Insérer un élément")
  
  English\AddTableElement("Insert Element Ex", "Insert Element Ex")
  French\AddTableElement("Insert Element Ex", "Insérer un élément Ex")    
  
  English\AddTableElement("Select Element", "Select Element")
  French\AddTableElement("Select Element", "Sélectionner un élément")
  
  English\AddTableElement("First Element", "First Element")
  French\AddTableElement("First Element", "Premier élément")
  
  English\AddTableElement("Last Element", "Last Element")
  French\AddTableElement("Last Element", "Dernier élément")
  
  English\AddTableElement("Previous Element", "Previous Element")
  French\AddTableElement("Previous Element", "Élément précédent")
  
  English\AddTableElement("Next Element", "Next Element")
  French\AddTableElement("Next Element", "Élément suivant")
  
  English\AddTableElement("Delete Element", "Delete Element")
  French\AddTableElement("Delete Element", "Supprimer un élément")
  
  English\AddTableElement("Clear", "Clear")
  French\AddTableElement("Clear", "Clear")
  
  English\AddTableElement("Index", "Index")
  French\AddTableElement("Index", "Index")
  
  English\AddTableElement("Merge", "Merge")
  French\AddTableElement("Merge", "Fusionner")
  
  English\AddTableElement("Map Operators", "Map Operators")
  French\AddTableElement("Map Operators", "Opérateurs de map")
  
  English\AddTableElement("Find Element", "Find Element")
  French\AddTableElement("Find Element", "Trouver un élément")
  
  English\AddTableElement("Key", "Key")
  French\AddTableElement("Key", "Clé")
  
  English\AddTableElement("Static Array Operators", "Static Array Operators")
  French\AddTableElement("Static Array Operators", "Opérateurs de Tableau Statique")
  
  English\AddTableElement("QuickSort Ascending", "QuickSort Ascending")
  French\AddTableElement("QuickSort Ascending", "QuickSort Ascendant")
  
  English\AddTableElement("QuickSort Descending", "QuickSort Descending")
  French\AddTableElement("QuickSort Descending", "QuickSort Descendant")
  
  English\AddTableElement("Fixed Queue", "Fixed Queue")
  French\AddTableElement("Fixed Queue", "File d'attente fixe")
  
  English\AddTableElement("Binary File", "Binary File")
  French\AddTableElement("Binary File", "Fichier Binaire")
  
  English\AddTableElement("Read and Write on file", "Read and Write on file")
  French\AddTableElement("Read and Write on file", "Lecture/Écriture sur fichier")
  
  English\AddTableElement("Create File", "Create File")
  French\AddTableElement("Create File", "Créer un fichier")
  
  English\AddTableElement("Open File", "Open File")
  French\AddTableElement("Open File", "Ouvrir un fichier")
  
  English\AddTableElement("Read File", "Read File")
  French\AddTableElement("Read File", "Lire un fichier")
  
  English\AddTableElement("Add FileFormatID", "Add FileFormatID")
  French\AddTableElement("Add FileFormatID", "Ajouter FileFormatID")
  
  English\AddTableElement("Encoded/Encrypted File", "Encoded/Encrypted File")
  French\AddTableElement("Encoded/Encrypted File", "Fichier Encodé/Encrypté")
  
  English\AddTableElement("Preferences File", "Preferences File")
  French\AddTableElement("Preferences File", "Fichier de Préférences")
  
  English\AddTableElement("Read/Write group", "Read/Write group")
  French\AddTableElement("Read/Write group", "Lire/Écrire un groupe")
  
  English\AddTableElement("Create/Open file", "Create/Open file")
  French\AddTableElement("Create/Open file", "Créer/Ouvrir un fichier")
  
  English\AddTableElement("XML File", "XML File")
  French\AddTableElement("XML File", "Fichier XML")
  
  English\AddTableElement("Node with child nodes", "Node with child nodes")
  French\AddTableElement("Node with child nodes", "Noeud avec noeuds enfants")
  
  English\AddTableElement("Node with attributes", "Node with attributes")
  French\AddTableElement("Node with attributes", "Noeud avec attributs")
  
  English\AddTableElement("Add/Collect attributes", "Add/Collect attributes")
  French\AddTableElement("Add/Collect attributes", "Ajouter/Collecter attributs")
  
  English\AddTableElement("Create/Load File", "Create/Load File")
  French\AddTableElement("Create/Load File", "Créer/Charger un fichier")
  
  English\AddTableElement("Catch File", "Catch File")
  French\AddTableElement("Catch File", "Capturer un fichier")
  
  English\AddTableElement("JSON File", "JSON File")
  French\AddTableElement("JSON File", "Fichier JSON")
  
  English\AddTableElement("Insert/Extract object", "Insert/Extract object")
  French\AddTableElement("Insert/Extract object", "Insérer/Extraire un objet")
  
  English\AddTableElement("Custom Prefs File", "Custom Prefs File")
  French\AddTableElement("Custom Prefs File", "Fichier Préférences Personnalisé")
  
  English\AddTableElement("Add/Extract Group", "Add/Extract Group")
  French\AddTableElement("Add/Extract Group", "Ajouter/Extraire un Groupe")
  
  English\AddTableElement("Refresh Group", "Refresh Group")
  French\AddTableElement("Refresh Group", "Rafraîchir un Groupe")
  
  English\AddTableElement("SaveOn/LoadFrom File", "SaveOn/LoadFrom File")
  French\AddTableElement("SaveOn/LoadFrom File", "Sauver/Charger un fichier")
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; Fenètre des options / Coloration syntaxique
  
  English\AddTableElement("Projects files folder", "Projects files folder")
  French\AddTableElement("Projects files folder", "Répertoire de fichiers Projet")
  
  English\AddTableElement("Sources files folder", "Sources files folder")
  French\AddTableElement("Sources files folder", "Répertoire de fichiers Sources")  
  
  English\AddTableElement("Browse", "Browse")
  French\AddTableElement("Browse", "Parcourir")
  
  English\AddTableElement("Select folder", "Select folder")
  French\AddTableElement("Select folder", "Sélectionnez un répertoire")
  
  English\AddTableElement("User Informations", "User Informations")
  French\AddTableElement("User Informations", "Informations utilisateur")
  
  English\AddTableElement("Name", "Name")
  French\AddTableElement("Name", "Nom")
  
  English\AddTableElement("AKA", "AKA")
  French\AddTableElement("AKA", "Alias")
  
  English\AddTableElement("E-mail", "E-mail")
  French\AddTableElement("E-mail", "Courriel")
  
  English\AddTableElement("Your name", "Your name")
  French\AddTableElement("Your name", "Votre nom")
  
  English\AddTableElement("Your nickname", "Your nickname")
  French\AddTableElement("Your nickname", "Votre surnom")
  
  English\AddTableElement("Source code formatting", "Source code formatting")
  French\AddTableElement("Source code formatting", "Mise en forme du code")
  
  English\AddTableElement("Tabulation (Number of space)", "Tabulation (Number of space)")
  French\AddTableElement("Tabulation (Number of space)", "Tabulation (Nombre d'espace)")
  
  English\AddTableElement("Use the real tabulation character", "Use the real tabulation character")
  French\AddTableElement("Use the real tabulation character", "Utiliser le vrai caractère de tabulation")
  
  English\AddTableElement("Dates formatting","Dates formatting")
  French\AddTableElement("Dates formatting", "Formatage des dates")
  
  English\AddTableElement("Editors Font", "Editors Font")
  French\AddTableElement("Editors Font", "Police des éditeurs")
  
  English\AddTableElement("Font", "Font")
  French\AddTableElement("Font", "Police")
  
  English\AddTableElement("Size", "Size")
  French\AddTableElement("Size", "Grandeur")
  
  English\AddTableElement("Syntax coloring", "Syntax coloring")
  French\AddTableElement("Syntax coloring", "Coloration syntaxique")
  
  English\AddTableElement("Normal Text", "Normal Text")
  French\AddTableElement("Normal Text", "Texte normal")
  
  English\AddTableElement("Background", "Background")
  French\AddTableElement("Background", "Arrière-plan")
  
  English\AddTableElement("Caret", "Caret")
  French\AddTableElement("Caret", "Caret")
  
  English\AddTableElement("Current line Background", "Current line Background")
  French\AddTableElement("Current line Background", "Arrière-plan ligne courante")
  
  English\AddTableElement("Selection", "Selection")
  French\AddTableElement("Selection", "Sélection")
  
  English\AddTableElement("Selection Background", "Selection Background")
  French\AddTableElement("Selection Background", "Arrière-plan Sélection")
  
  English\AddTableElement("Line Numbers", "Line Numbers")
  French\AddTableElement("Line Numbers", "Numéros de ligne")
  
  English\AddTableElement("Line Numbers Background", "Line Numbers Background")
  French\AddTableElement("Line Numbers Background", "Arrière-plan numéros de ligne")
  
  English\AddTableElement("Fold Margin Background", "Fold Margin Background")
  French\AddTableElement("Fold Margin Background", "Arrière-plan marge pliage")
  
  English\AddTableElement("Fold Markers", "Fold Markers")
  French\AddTableElement("Fold Markers", "Marqueur de pliage")
  
  English\AddTableElement("Fold Markers Background", "Fold Markers Background")
  French\AddTableElement("Fold Markers Background", "Arriere-plan Marqueur de pliage")
  
  English\AddTableElement("Line Highlight", "Line Highlight")
  French\AddTableElement("Line Highlight", "Ligne en surbrillance")
  
  English\AddTableElement("Keywords", "Keywords")
  French\AddTableElement("Keywords", "Mot-clés")
  
  English\AddTableElement("Comments", "Comments")
  French\AddTableElement("Comments", "Commentaires")
  
  English\AddTableElement("Literal Strings", "Literal Strings")
  French\AddTableElement("Literal Strings", "Chaine de caractères")
  
  English\AddTableElement("Numbers", "Numbers")
  French\AddTableElement("Numbers", "Nombres")
  
  English\AddTableElement("Constants", "Constants")
  French\AddTableElement("Constants", "Constantes")
  
  English\AddTableElement("Procedures", "Procedures")
  French\AddTableElement("Procedures", "Procédures")
  
  English\AddTableElement("Separators", "Separators")
  French\AddTableElement("Separators", "Séparateurs")
  
  English\AddTableElement("Operators", "Operators")
  French\AddTableElement("Operators", "Opérateurs")
  
  English\AddTableElement("Types", "Types")
  French\AddTableElement("Types", "Types")
  
  English\AddTableElement("Modules", "Modules")
  French\AddTableElement("Modules", "Modules")
  
  English\AddTableElement("Pointers", "Pointers")
  French\AddTableElement("Pointers", "Pointeurs")
  
  English\AddTableElement("Keywords in bold", "Keywords in bold")
  French\AddTableElement("Keywords in bold", "Mot-clés en gras")
  
  English\AddTableElement("Click me", "Click me")
  French\AddTableElement("Click me", "Clique moi")
  
  English\AddTableElement("Code Generator Rules", "Code Generator Rules")
  French\AddTableElement("Code Generator Rules", "Règles pour le générateur de code")
  
  English\AddTableElement("Dynamic Data Size and Indexes Type", "Dynamic Data Size and Indexes Type")
  French\AddTableElement("Dynamic Data Size and Indexes Type", "Données Dynamique Type Grandeur et Index")
  
  English\AddTableElement("Disable/Enable Debugger", "Disable/Enable Debugger")
  French\AddTableElement("Disable/Enable Debugger", "Désactiver/Activer le débogueur")
  
  English\AddTableElement("Don't add keywords", "Don't add keywords")
  French\AddTableElement("Don't add keywords", "Ne pas ajouter les mots clés")
  
  English\AddTableElement("Add keywords as comments", "Add keywords as comments")
  French\AddTableElement("Add keywords as comments", "Ajouter les mots clés en commentaire")
  
  English\AddTableElement("Add keywords", "Add keywords")
  French\AddTableElement("Add keywords", "Ajouter les mots clés")
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  
  English\AddTableElement("January", "January")
  English\AddTableElement("February", "February")
  English\AddTableElement("March", "March")
  English\AddTableElement("April", "April")
  English\AddTableElement("May", "May")
  English\AddTableElement("June", "June")
  English\AddTableElement("July", "July")
  English\AddTableElement("August", "August")
  English\AddTableElement("September", "September")
  English\AddTableElement("October", "October")
  English\AddTableElement("November", "November")
  English\AddTableElement("December", "December")
  
  English\AddTableElement("Jan", "Jan")
  English\AddTableElement("Feb", "Feb")
  English\AddTableElement("Mar", "Mar")
  English\AddTableElement("Apr", "Apr")
  English\AddTableElement("May", "May")
  English\AddTableElement("Jun", "Jun")
  English\AddTableElement("Jul", "Jul")
  English\AddTableElement("Aug", "Aug")
  English\AddTableElement("Sep", "Sep")
  English\AddTableElement("Oct", "Oct")
  English\AddTableElement("Nov", "Nov")
  English\AddTableElement("Dec", "Dec")
  
  English\AddTableElement("Sunday", "Sunday")
  English\AddTableElement("Monday", "Monday")
  English\AddTableElement("Tuesday", "Tuesday")
  English\AddTableElement("Wednesday", "Wednesday")
  English\AddTableElement("Thursday", "Thursday")
  English\AddTableElement("Friday", "Friday")
  English\AddTableElement("Saturday", "Saturday")
  
  English\AddTableElement("st:1,21,31|nd:2,22|rd:3,23|th:x", "st:1,21,31|nd:2,22|rd:3,23|th:x")
  
  English\AddTableElement("Date Mask Editor", "Date Mask Editor")
  English\AddTableElement("Mask parts", "Mask parts")
  English\AddTableElement("2 digits day", "2 digits day")
  English\AddTableElement("3 characters day name", "3 characters day name")
  English\AddTableElement("Long day name", "Long day name")
  English\AddTableElement("Ordinal", "Ordinal")
  English\AddTableElement("2 digits month", "2 digits month")
  English\AddTableElement("3 characters month name", "3 characters month name")
  English\AddTableElement("Long month name", "Long month name")
  English\AddTableElement("4 digits year", "4 digits year")
  English\AddTableElement("2 digits hours", "2 digits hours")
  English\AddTableElement("2 digits minutes", "2 digits minutes")
  English\AddTableElement("2 digits seconds", "2 digits seconds")
  English\AddTableElement("Definition", "Definition")
  
  French\AddTableElement("January", "Janvier")
  French\AddTableElement("February", "Février")
  French\AddTableElement("March", "Mars")
  French\AddTableElement("April", "Avril")
  French\AddTableElement("May", "Mai")
  French\AddTableElement("June", "Juin")
  French\AddTableElement("July", "Juillet")
  French\AddTableElement("August", "Août")
  French\AddTableElement("September", "Septembre")
  French\AddTableElement("October", "Octobre")
  French\AddTableElement("November", "Novembre")
  French\AddTableElement("December", "Décembre")
  
  French\AddTableElement("Jan", "Jan")
  French\AddTableElement("Feb", "Fév")
  French\AddTableElement("Mar", "Mar")
  French\AddTableElement("Apr", "Avr")
  French\AddTableElement("May", "Mai")
  French\AddTableElement("Jun", "Jun")
  French\AddTableElement("Jul", "Jui")
  French\AddTableElement("Aug", "Aoû")
  French\AddTableElement("Sep", "Sep")
  French\AddTableElement("Oct", "Oct")
  French\AddTableElement("Nov", "Nov")
  French\AddTableElement("Dec", "Déc")
  
  French\AddTableElement("Sunday", "Dimanche")
  French\AddTableElement("Monday", "Lundi")
  French\AddTableElement("Tuesday", "Mardi")
  French\AddTableElement("Wednesday", "Mercredi")
  French\AddTableElement("Thursday", "Jeudi")
  French\AddTableElement("Friday", "Vendredi")
  French\AddTableElement("Saturday", "Samedi")
  French\AddTableElement("st:1,21,31|nd:2,22|rd:3,23|th:x", "er: 1|: x")
  
  French\AddTableElement("Date Mask Editor", "Éditeur de masque de date")
  French\AddTableElement("Mask parts", "Parties du masque")
  French\AddTableElement("2 digits day", "Le jour sur 2 chiffres")
  French\AddTableElement("3 characters day name", "Le nom du jour (3 lettres)")
  French\AddTableElement("Long day name", "Le nom du jour")
  French\AddTableElement("Ordinal", "Ordinal")
  French\AddTableElement("2 digits month", "Le mois sur 2 chiffres")
  French\AddTableElement("3 characters month name", "Le nom du mois (3 lettres)")
  French\AddTableElement("Long month name", "Le nom du mois")
  French\AddTableElement("4 digits year", "L'année sur 4 chiffres")
  French\AddTableElement("2 digits hours", "Les heures sur 2 chiffres")
  French\AddTableElement("2 digits minutes", "Les minutes sur 2 chiffres")
  French\AddTableElement("2 digits seconds", "Les secondes sur 2 chiffres")
  French\AddTableElement("Definition", "Définition")
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  
  English\AddTableElement("Language Requester", "Choose Language")
  French\AddTableElement("Language Requester", "Choix de la langue")
  
  English\AddTableElement("Quit", "Quit")
  French\AddTableElement("Quit", "Quitter")
  
  English\AddTableElement("OK", "OK")
  French\AddTableElement("OK", "OK")
  
  English\AddTableElement("Cancel", "Cancel")
  French\AddTableElement("Cancel", "Annuler")
  
  English\AddTableElement("Close", "Close")
  French\AddTableElement("Close", "Fermer")
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; ToolTips pour les boutons
  
  English\AddTableElement("Always on top", "Always on top")
  French\AddTableElement("Always on top", "Premier Plan")
  
  English\AddTableElement("New", "New")
  French\AddTableElement("New", "Nouveau")
  
  English\AddTableElement("Open", "Open")
  French\AddTableElement("Open", "Ouvrir")
  
  English\AddTableElement("Save", "Save")
  French\AddTableElement("Save", "Enregister")
  
  English\AddTableElement("Generate code", "Generate code")
  French\AddTableElement("Generate code", "Générer le code")
  
  English\AddTableElement("Code cleanup", "Code cleanup")
  French\AddTableElement("Code cleanup", "Nettoyer le code")
  
  English\AddTableElement("Send to Clipboard", "Send to Clipboard")
  French\AddTableElement("Send to Clipboard", "Presse-papier")
  
  English\AddTableElement("Quit", "Quit")
  French\AddTableElement("Quit", "Quitter")
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; Divers Requesters
  
  English\AddTableElement("Select project to open", "Select project to open")
  French\AddTableElement("Select project to open", "Sélectionnez le projet à ouvrir")
  
  English\AddTableElement("Select project to save", "Select project to save")
  French\AddTableElement("Select project to save", "Sélectionnez le projet à enregistrer")
  
  English\AddTableElement("Dev-Object Project (*.devo)|*.devo", "Dev-Object Project (*.devo)|*.devo")
  French\AddTableElement("Dev-Object Project (*.devo)|*.devo", "Projet Dev-Object (*.devo)|*.devo")
  
  English\AddTableElement("Select the Source code to save", "Select the Source code to save")
  French\AddTableElement("Select the Source code to save", "Sélectionnez le Code source à enregistrer")
  
  English\AddTableElement("Select the Source(s) code to analyse", "Select the Source(s) code to analyse")
  French\AddTableElement("Select the Source(s) code to analyse", "Sélectionnez le(s) Code source(s) à analyser")
  
  English\AddTableElement("PureBasic SourceCode (*.pb)|*.pb|PureBasic IncludeCode (*.pbi)|*.pbi", "PureBasic SourceCode (*.pb)|*.pb|PureBasic IncludeCode (*.pbi)|*.pbi")
  French\AddTableElement("PureBasic SourceCode (*.pb)|*.pb|PureBasic IncludeCode (*.pbi)|*.pbi", "Code Source PureBasic (*.pb)|*.pb|Include Code Purebasic (*.pbi)|*.pbi")
  
  English\AddTableElement("PureBasic SourceCode (*.pb, *.pbi)|*.pb;*.pbi", "PureBasic SourceCode (*.pb, *.pbi)|*.pb;*.pbi")
  French\AddTableElement("PureBasic SourceCode (*.pb, *.pbi)|*.pb;*.pbi", "Code Source PureBasic (*.pb, *.pbi)|*.pb;*.pbi")
  
  English\AddTableElement("Warning - File already exist", "Warning - File already exist")
  French\AddTableElement("Warning - File already exist", "Attention - Fichier existant")
  
  English\AddTableElement("The file %FILE% already exist. Would you like to overwrite ?", "The file %FILE% already exist. Would you like to overwrite ?")
  French\AddTableElement("The file %FILE% already exist. Would you like to overwrite ?", "Le fichier %FILE% existe déja. Voulez-vous le remplacer ?")
  
  English\AddTableElement("You are about to delete the date mask : %DATE_MASK%. Would you like to continue ?", "You are about to delete the date mask : %DATE_MASK%. Would you like to continue ?")
  French\AddTableElement("You are about to delete the date mask : %DATE_MASK%. Would you like to continue ?", "Vous êtes sur le point de supprimer le masque : %DATE_MASK%. Voulez-vous continuer ?")
  
  English\AddTableElement("Dev-Object - Warning", "Dev-Object - Warning")
  French\AddTableElement("Dev-Object - Warning", "Dev-Object - Attention")
  
  English\AddTableElement("Dev-Object - Error", "Dev-Object - Error")
  French\AddTableElement("Dev-Object - Error", "Dev-Object - Erreur")
  
  English\AddTableElement("The Object name is missing !", "The Object name is missing !")
  French\AddTableElement("The Object name is missing !", "Le nom de l'Objet est manquant !")
  
  English\AddTableElement("No Date Mask !", "No Date Mask !")
  French\AddTableElement("No Date Mask !", "Aucun masque pour la date !")
  
  English\AddTableElement("The member %DESC% is invalid ! By the way Structured members are not supported yet !", "The member %DESC% is invalid ! By the way Structured members are not supported yet !")
  French\AddTableElement("The member %DESC% is invalid ! By the way Structured members are not supported yet !", "Le membre %DESC% n'est pas valide ! En passant, les membres structurés ne sont pas supportés pour le moment !")
  
  English\AddTableElement("Code Generator Statistics", "Code Generator Statistics")
  French\AddTableElement("Code Generator Statistics", "Statistiques du générateur de code")
  
  English\AddTableElement("Statistics based on last %X% code generations", "Statistics based on last %X% code generations")
  French\AddTableElement("Statistics based on last %X% code generations", "Statistiques basées sur les %X% dernières générations de code")
  
  English\AddTableElement("Generation Rate (Line/Second)", "Generation Rate (Line/Second)")
  French\AddTableElement("Generation Rate (Line/Second)", "Taux de Génération (Ligne/Seconde)")
  
  English\AddTableElement("Top 5 (Line/Second)", "Top 5 (Line/Second)")
  French\AddTableElement("Top 5 (Line/Second)", "Top 5 (Ligne/Seconde)")
  
  English\AddTableElement("Generation Time (Second)", "Generation Time (Second)")
  French\AddTableElement("Generation Time (Second)", "Temps de Génération (Seconde)")
  
  English\AddTableElement("Top 5 (Second)", "Top 5 (Second)")
  French\AddTableElement("Top 5 (Second)", "Top 5 (Seconde)")
  
  English\AddTableElement("Best", "Best")
  French\AddTableElement("Best", "Meilleur")
  
  English\AddTableElement("Average", "Average")
  French\AddTableElement("Average", "Moyen")
  
  English\AddTableElement("Worst", "Worst")
  French\AddTableElement("Worst", "Pire")
  
  English\AddTableElement("Standard Deviation", "Standard Deviation")
  French\AddTableElement("Standard Deviation", "Écart-Type")
  
  English\AddTableElement("Error", "Error")
  French\AddTableElement("Error", "Erreur")
  
  English\AddTableElement("Errors", "Errors")
  French\AddTableElement("Errors", "Erreurs")
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; Commentaires
  
  English\AddTableElement("AUTOMATICALLY GENERATED CODE, DO NOT MODIFY", "AUTOMATICALLY GENERATED CODE, DO NOT MODIFY")
  French\AddTableElement("AUTOMATICALLY GENERATED CODE, DO NOT MODIFY", "CODE GÉNÉRÉ AUTOMATIQUEMENT, NE PAS MODIFIER À")
  
  English\AddTableElement("UNLESS YOU REALLY, REALLY, REALLY MEAN IT !!", "UNLESS YOU REALLY, REALLY, REALLY MEAN IT !!")
  French\AddTableElement("UNLESS YOU REALLY, REALLY, REALLY MEAN IT !!", "MOINS D'AVOIR UNE RAISON TRÈS TRÈS VALABLE !!!")
  
  English\AddTableElement("Code generated by :", "Code generated by :")
  French\AddTableElement("Code generated by :", "Code généré par :")
  
  English\AddTableElement("Project name : the project name here", "Project name : the project name here")
  French\AddTableElement("Project name : the project name here", "Nom du projet : Le nom du projet ici")
  
  English\AddTableElement("File name : File name here", "File name : File name here")
  French\AddTableElement("File name : File name here", "Nom du fichier : Nom du fichier")
  
  English\AddTableElement("File Version : 0.0.0", "File Version : 0.0.0")
  French\AddTableElement("File Version : 0.0.0", "Version du fichier : 0.0.0")
  
  English\AddTableElement("Programmation : In progress", "Programmation : In progress")
  French\AddTableElement("Programmation : In progress", "Programmation : À vérifier")
  
  English\AddTableElement("Programmed by :", "Programmed by :")
  French\AddTableElement("Programmed by :", "Programmé par :")
  
  English\AddTableElement("AKA :", "AKA :")
  French\AddTableElement("AKA :", "Alias :")
  
  English\AddTableElement("E-mail :", "E-mail :")
  French\AddTableElement("E-mail :", "Courriel :")
  
  English\AddTableElement("Creation Date :", "Creation Date :")
  French\AddTableElement("Creation Date :", "Date :")
  
  English\AddTableElement("Last update :", "Last update :")
  French\AddTableElement("Last update :", "Mise à jour :")
  
  English\AddTableElement("Coded for PureBasic :", "Coded for PureBasic :")
  French\AddTableElement("Coded for PureBasic :", "Codé pour PureBasic :")
  
  English\AddTableElement("Platform : Windows, Linux, MacOS X", "Platform : Windows, Linux, MacOS X")
  French\AddTableElement("Platform : Windows, Linux, MacOS X", "Plateforme : Windows, Linux, MacOS X")
  
  English\AddTableElement("Size Array Constants", "Size Array Constants")
  French\AddTableElement("Size Array Constants", "Constantes de dimensionnement")
  
  English\AddTableElement("Constants Enumeration", "Constants Enumeration")
  French\AddTableElement("Constants Enumeration", "Énumération de Constantes")
  
  English\AddTableElement("Structure declaration", "Structure declaration")
  French\AddTableElement("Structure declaration", "Déclaration de la Structure")
  
  English\AddTableElement("Structures declaration", "Structures declaration")
  French\AddTableElement("Structures declaration", "Déclaration des Structures")
  
  English\AddTableElement("The mutators", "The mutators")
  French\AddTableElement("The mutators", "Les mutateurs")
  
  English\AddTableElement("The observators", "The observators")
  French\AddTableElement("The observators", "Les observateurs")
  
  English\AddTableElement("The Update operator", "The Update operator")
  French\AddTableElement("The Update operator", "L'opérateur Update")
  
  English\AddTableElement("The Reset operator", "The Reset operator")
  French\AddTableElement("The Reset operator", "L'opérateur Reset")
  
  English\AddTableElement("The Clear operator", "The Clear operator")
  French\AddTableElement("The Clear operator", "L'opérateur Clear")
  
  English\AddTableElement("The Access operator", "The Access operator")
  French\AddTableElement("The Access operator", "L'opérateur Access")
  
  English\AddTableElement("The Equal operator : A = B", "The Equal operator : A = B")
  French\AddTableElement("The Equal operator : A = B", "L'opérateur Equal : A = B")
  
  English\AddTableElement("The Plus operator : R = A + B", "The Plus operator : R = A + B")
  French\AddTableElement("The Plus operator : R = A + B", "L'opérateur Plus : R = A + B")
  
  English\AddTableElement("The Minus operator : R = A - B", "The Minus operator : R = A - B")
  French\AddTableElement("The Minus operator : R = A - B", "L'opérateur Minus : R = A - B")
  
  English\AddTableElement("The Add operator : A = A + B", "The Add operator : A = A + B")
  French\AddTableElement("The Add operator : A = A + B", "L'opérateur Add : A = A + B")
  
  English\AddTableElement("The AddScaled operator : A = A + B * S", "The AddScaled operator : A = A + B * S")
  French\AddTableElement("The AddScaled operator : A = A + B * S", "L'opérateur AddScaled : A = A + B * S")
  
  English\AddTableElement("The Subtract operator : A = A - B", "The Subtract operator : A = A - B")
  French\AddTableElement("The Subtract operator : A = A - B", "L'opérateur Subtract : A = A - B")
  
  English\AddTableElement("The Product operator : R = A * B", "The Product operator : R = A * B")
  French\AddTableElement("The Product operator : R = A * B", "L'opérateur Product : R = A * B")
  
  English\AddTableElement("The Divide operator : R = A / B", "The Divide operator : R = A / B")
  French\AddTableElement("The Divide operator : R = A / B", "L'opérateur Divide : R = A / B")
  
  English\AddTableElement("The AddScalar operator : A = A + Scalar", "The AddScalar operator : A = A + Scalar")
  French\AddTableElement("The AddScalar operator : A = A + Scalar", "L'opérateur AddScalar : A = A + Scalar")
  
  English\AddTableElement("The SubtractScalar operator : A = A - Scalar", "The SubtractScalar operator : A = A - Scalar")
  French\AddTableElement("The SubtractScalar operator : A = A - Scalar", "L'opérateur SubtractScalar : A = A - Scalar")
  
  English\AddTableElement("The ProductByScalar operator : A = A * Scalar", "The ProductByScalar operator : A = A * Scalar")
  French\AddTableElement("The ProductByScalar operator : A = A * Scalar", "L'opérateur ProductByScalar : A = A * Scalar")
  
  English\AddTableElement("The DivideByScalar operator : A = A / Scalar", "The DivideByScalar operator : A = A / Scalar")
  French\AddTableElement("The DivideByScalar operator : A = A / Scalar", "L'opérateur DivideByScalar : A = A / Scalar")
  
  English\AddTableElement("The Linear Interpolation operator", "The Linear Interpolation operator")
  French\AddTableElement("The Linear Interpolation operator", "L'opérateur Interpolation Linéaire")  
  
  English\AddTableElement("The Data memory allocator(s)", "The Data memory allocator(s)")
  French\AddTableElement("The Data memory allocator(s)", "L'allocateur(s) de mémoire")
  
  English\AddTableElement("The Copy operator", "The Copy operator")
  French\AddTableElement("The Copy operator", "L'opérateur Copy")
  
  English\AddTableElement("The Compare operator", "The Compare operator")
  French\AddTableElement("The Compare operator", "L'opérateur Compare")
  
  English\AddTableElement("The Swapping operator", "The Swapping operator")
  French\AddTableElement("The Swapping operator", "L'opérateur Swapping")
  
  English\AddTableElement("The sort linked list operator(s)", "The sort linked list operator(s)")
  French\AddTableElement("The sort linked list operator(s)", "L'opérateur(s) de triage de liste chaînée")
  
  English\AddTableElement("The linear search linked list operator(s)", "The linear search linked list operator(s)")
  French\AddTableElement("The linear search linked list operator(s)", "L'opérateur(s) de fouille linéaire de liste chaînée")
  
  English\AddTableElement("The binary search linked list operator(s)", "The binary search linked list operator(s)")
  French\AddTableElement("The binary search linked list operator(s)", "L'opérateur(s) de fouille dichotomique de liste chaînée")
  
  English\AddTableElement("The Randomize linked list operator(s)", "The Randomize linked list operator(s)")
  French\AddTableElement("The Randomize linked list operator(s)", "L'opérateur(s) rendre la liste aléatoire")
  
  English\AddTableElement("The Add to linked list operator(s)", "The Add to linked list operator(s)")
  French\AddTableElement("The Add to linked list operator(s)", "L'operateur(s) d'ajout à la liste chaînée")
  
  English\AddTableElement("The AddEx to linked list operator(s)", "The AddEx to linked list operator(s)")
  French\AddTableElement("The AddEx to linked list operator(s)", "L'operateur(s) d'ajout Ex à la liste chaînée")
  
  English\AddTableElement("The Insert in linked list operator(s)", "The Insert in linked list operator(s)")
  French\AddTableElement("The Insert in linked list operator(s)", "L'operateur(s) d'insertion dans la liste chaînée")
  
  English\AddTableElement("The InsertEx in linked list operator(s)", "The InsertEx in linked list operator(s)")
  French\AddTableElement("The InsertEx in linked list operator(s)", "L'operateur(s) d'insertion Ex dans la liste chaînée")
  
  English\AddTableElement("The Select in linked list operator(s)", "The Select in linked list operator(s)")
  French\AddTableElement("The Select in linked list operator(s)", "L'operateur(s) de Sélection dans la liste chaînée")
  
  English\AddTableElement("The First element in linked list operator(s)", "The First element in linked list operator(s)")
  French\AddTableElement("The First element in linked list operator(s)", "L'operateur(s) Premier élément de la liste chaînée")
  
  English\AddTableElement("The Last element in linked list operator(s)", "The Last element in linked list operator(s)")
  French\AddTableElement("The Last element in linked list operator(s)", "L'operateur(s) Dernier élément de la liste chaînée")
  
  English\AddTableElement("The Previous element in linked list operator(s)", "The Previous element in linked list operator(s)")
  French\AddTableElement("The Previous element in linked list operator(s)", "L'operateur(s) élément Précédent de la liste chaînée")
  
  English\AddTableElement("The Next element in linked list operator(s)", "The Next element in linked list operator(s)")
  French\AddTableElement("The Next element in linked list operator(s)", "L'operateur(s) élément Suivant de la liste chaînée")
  
  English\AddTableElement("The Delete element from linked list operator(s)", "The Delete element from linked list operator(s)")
  French\AddTableElement("The Delete element from linked list operator(s)", "L'operateur(s) Supprimer l'élément courant de la liste chaînée")
  
  English\AddTableElement("The Reset linked list operator(s)", "The Reset linked list operator(s)")
  French\AddTableElement("The Reset linked list operator(s)", "L'operateur(s) Reset de la liste chaînée")
  
  English\AddTableElement("The Clear linked list operator(s)", "The Clear linked list operator(s)") 
  French\AddTableElement("The Clear linked list operator(s)", "L'operateur(s) Clear de la liste chaînée") 
  
  English\AddTableElement("The Index in the linked list operator(s)", "The Index in the linked list operator(s)")
  French\AddTableElement("The Index in the linked list operator(s)", "L'operateur(s) de numéro d'index de la liste chaînée")
  
  English\AddTableElement("The Size of the linked list operator(s)", "The Size of the linked list operator(s)")
  French\AddTableElement("The Size of the linked list operator(s)", "L'operateur(s) de grandeur de la liste chaînée")
  
  English\AddTableElement("The merge linked list operator(s)", "The merge linked list operator(s)")
  French\AddTableElement("The merge linked list operator(s)", "L'opérateur de fusion de liste chainée.")
  
  English\AddTableElement("The Add to map operator(s)", "The Add to map operator(s)")
  French\AddTableElement("The Add to map operator(s)", "L'opérateur(s) d'ajout à la Map")
  
  English\AddTableElement("The AddEx to map operator(s)", "The AddEx to map operator(s)")
  French\AddTableElement("The AddEx to map operator(s)", "L'opérateur(s) d'ajout Ex à la Map")
  
  English\AddTableElement("The Clear map operator(s)", "The Clear map operator(s)")
  French\AddTableElement("The Clear map operator(s)", "L'operateur(s) Clear de la Map")
  
  English\AddTableElement("The map Size operator(s)", "The map Size operator(s)")
  French\AddTableElement("The map Size operator(s)", "L'operateur(s) de grandeur de la Map")
  
  English\AddTableElement("The Reset map operator(s)", "The Reset map operator(s)")
  French\AddTableElement("The Reset map operator(s)", "L'operateur(s) Reset de la Map")
  
  English\AddTableElement("The Delete map element operator(s)", "The Delete map element operator(s)")
  French\AddTableElement("The Delete map element operator(s)", "L'operateur(s) Supprimer l'élément courant de la Map")
  
  English\AddTableElement("The Find map element operator(s)", "The Find map element operator(s)")
  French\AddTableElement("The Find map element operator(s)", "L'opérateur(s) Trouver un élément de la Map")
  
  English\AddTableElement("The Next map element operator(s)", "The Next map element operator(s)")
  French\AddTableElement("The Next map element operator(s)", "L'operateur(s) élément Suivant de la Map")
  
  English\AddTableElement("The map Key operator(s)", "The map Key operator(s)")
  French\AddTableElement("The map Key operator(s)", "L'opérateur(s) d'obtention de la clé de l'élément actuel de la Map")
  
  English\AddTableElement("The Sort operator", "The Sort operator")
  French\AddTableElement("The Sort operator", "L'opérateur de trie")
  
  English\AddTableElement("The Linear Search operator", "The Linear Search operator")
  French\AddTableElement("The Linear Search operator", "L'opérateur de fouille linéaire")
  
  English\AddTableElement("The Binary Search operator", "The Binary Search operator")
  French\AddTableElement("The Binary Search operator", "L'opérateur de fouille dichotomique")
  
  English\AddTableElement("The Randomize operator", "The Randomize operator")
  French\AddTableElement("The Randomize operator", "L'opérateur rendre aléatoire")
  
  English\AddTableElement("The ReDim operator", "The ReDim operator")
  French\AddTableElement("The ReDim operator", "L'opérateur ReDim")
  
  English\AddTableElement("The Size operator", "The Size operator")
  French\AddTableElement("The Size operator", "L'opérateur Size")
  
  English\AddTableElement("The Special operator(s)", "The Special operator(s)")
  French\AddTableElement("The Special operator(s)", "Les opérateurs Spéciaux")
  
  English\AddTableElement("Read in Binary file", "Read in Binary file")
  French\AddTableElement("Read in Binary file", "Lecture sur fichier Binaire")
  
  English\AddTableElement("Write in Binary file", "Write in Binary file")
  French\AddTableElement("Write in Binary file", "Écriture sur fichier Binaire")
  
  English\AddTableElement("Create Binary File", "Create Binary File")
  French\AddTableElement("Create Binary File", "Création d'un fichier Binaire")
  
  English\AddTableElement("Open Binary File", "Open Binary File")
  French\AddTableElement("Open Binary File", "Ouverture d'un fichier Binaire")
  
  English\AddTableElement("Read Binary File", "Read Binary File")
  French\AddTableElement("Read Binary File", "Lecture d'un fichier Binaire")
  
  English\AddTableElement("The Quick Sort Ascendant operator(s)", "The Quick Sort Ascendant operator(s)")
  French\AddTableElement("The Quick Sort Ascendant operator(s)", "L'opérateur(s) de trie rapide Ascendant")
  
  English\AddTableElement("The Quick Sort Descendant operator(s)", "The Quick Sort Descendant operator(s)")
  French\AddTableElement("The Quick Sort Descendant operator(s)", "L'opérateur(s) de trie rapide Descendant")
  
  English\AddTableElement("The Insert Top Bottom Out operator(s)", "The Insert Top Bottom Out operator(s)")
  French\AddTableElement("The Insert Top Bottom Out operator(s)", "L'opérateur(s) File d'attente fixe")
  
  English\AddTableElement("Read in Encoded/Crypted file", "Read in Encoded/Crypted file")
  French\AddTableElement("Read in Encoded/Crypted file", "Lecture sur fichier Encodé/Crypté")
  
  English\AddTableElement("Write in Encoded/Crypted file", "Write in Encoded/Crypted file")
  French\AddTableElement("Write in Encoded/Crypted file", "Écriture sur fichier Encodé/Crypté")
  
  English\AddTableElement("Create Encoded/Crypted File", "Create Encoded/Crypted File")
  French\AddTableElement("Create Encoded/Crypted File", "Création d'un fichier Encodé/Crypté")
  
  English\AddTableElement("Open Encoded/Crypted File", "Open Encoded/Crypted File")
  French\AddTableElement("Open Encoded/Crypted File", "Ouverture d'un fichier Encodé/Crypté")
  
  English\AddTableElement("Read Encoded/Crypted File", "Read Encoded/Crypted File")
  French\AddTableElement("Read Encoded/Crypted File", "Lecture d'un fichier Encodé/Crypté")
  
  English\AddTableElement("Read preferences group", "Read preferences group")
  French\AddTableElement("Read preferences group", "Lecture d'un groupe Préférences")
  
  English\AddTableElement("Write preferences group", "Write preferences group")
  French\AddTableElement("Write preferences group", "Écriture d'un groupe de Préférences")
  
  English\AddTableElement("Create preferences file", "Create preferences file")
  French\AddTableElement("Create preferences file", "Création d'un fichier de Préférences")
  
  English\AddTableElement("Open preferences file", "Open preferences file")
  French\AddTableElement("Open preferences file", "Ouverture d'un fichier de Préférences")
  
  English\AddTableElement("XML Set Node with child nodes", "XML Set Node with child nodes")
  French\AddTableElement("XML Set Node with child nodes", "XML Set Noeud avec noeuds enfants")
  
  English\AddTableElement("XML Get Node with child nodes", "XML Get Node with child nodes")
  French\AddTableElement("XML Get Node with child nodes", "XML Get Noeud avec noeuds enfants")   
  
  English\AddTableElement("XML Set Node with Attributes", "XML Set Node with Attributes")
  French\AddTableElement("XML Set Node with Attributes", "XML Set Noeud avec Attributs")
  
  English\AddTableElement("XML Get Node with Attributes", "XML Get Node with Attributes")
  French\AddTableElement("XML Get Node with Attributes", "XML Get Noeud avec Attributs")    
  
  English\AddTableElement("XML Add Attributes", "XML Add Attributes")
  French\AddTableElement("XML Add Attributes", "XML Ajouter des Attributs")
  
  English\AddTableElement("XML Collect Attributes", "XML Collect Attributes")
  French\AddTableElement("XML Collect Attributes", "XML Collecter des Attributs")    
  
  English\AddTableElement("XML Create file", "XML Create file")
  French\AddTableElement("XML Create file", "XML Créer un fichier")
  
  English\AddTableElement("XML Load file", "XML Load file")
  French\AddTableElement("XML Load file", "XML Charger un fichier")
  
  English\AddTableElement("XML Catch file", "XML Catch file")
  French\AddTableElement("XML Catch file", "XML Capturer un fichier")
  
  English\AddTableElement("JSON Save On file", "JSON Save On file")
  French\AddTableElement("JSON Save On file", "JSON Enregistrement sur un fichier")
  
  English\AddTableElement("JSON Load From file", "JSON Load From file")
  French\AddTableElement("JSON Load From file", "JSON Charger depuis un fichier")
  
  English\AddTableElement("JSON Catch file", "JSON Catch file")
  French\AddTableElement("JSON Catch file", "JSON Capturer un fichier")
  
  English\AddTableElement("Extract Prefs Group", "Extract Prefs Group")
  French\AddTableElement("Extract Prefs Group", "Extraction d'un Groupe de Prefs")
  
  English\AddTableElement("Add Prefs Group", "Add Prefs Group")
  French\AddTableElement("Add Prefs Group", "Ajout d'un Groupe de Prefs")
  
  English\AddTableElement("Refresh Prefs Group", "Refresh Prefs Group")
  French\AddTableElement("Refresh Prefs Group", "Rafraîchir un Groupe de Prefs")
  
  English\AddTableElement("Save On Prefs file", "Save On Prefs file")
  French\AddTableElement("Save On Prefs file", "Enregistrement sur fichier Prefs")
  
  English\AddTableElement("Load From Prefs file", "Load From Prefs file")
  French\AddTableElement("Load From Prefs file", "Chargement depuis un fichier Prefs")
  
  English\AddTableElement("The Constructor", "The Constructor")
  French\AddTableElement("The Constructor", "Le Constructeur")
  
  English\AddTableElement("The Destructor", "The Destructor")
  French\AddTableElement("The Destructor", "Le Destructeur")
  
  English\AddTableElement("The Virtual Table Entries", "The Virtual Table Entries")
  French\AddTableElement("The Virtual Table Entries", "Les entrées de la table virtuelle")
  
  English\AddTableElement("Code generated in : %TIME% seconds (%RATE% lines/second)", "Code generated in : %TIME% seconds (%RATE% lines/second)")
  French\AddTableElement("Code generated in : %TIME% seconds (%RATE% lines/second)", "Code généré en : %TIME% secondes (%RATE% lignes/seconde)")
  
  English\AddTableElement("END OF FILE", "END OF FILE")
  French\AddTableElement("END OF FILE", "FIN DU FICHIER")
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  
  English\CreateTableFile()
  French\CreateTableFile()
  
  English\Free()
  French\Free()
  
EndProcedure

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< LinuxDesktopFile_N_Icon <<<<<

CompilerIf #PB_Compiler_OS = #PB_OS_Linux
  
  Procedure LinuxDesktopFile_N_Icon()
    
    FileName.s = GetHomeDirectory() + ".local/share/applications/devobject.desktop"
    
    If FileSize(FileName) = -1
      
      If CreateFile(0, FileName)
        
        WriteStringN(0, "#!/usr/bin/env xdg-open")
        WriteStringN(0, "")
        WriteStringN(0, "[Desktop Entry]")
        WriteStringN(0, "Version=1.0")
        WriteStringN(0, "Type=Application")
        WriteStringN(0, "Terminal=false")
        WriteStringN(0, "Exec=" + GetHomeDirectory() + "Files/Programmes/DevObject/DevObject")
        WriteStringN(0, "Name=Dev-Object")
        WriteStringN(0, "Name[fr]=Dev-Object")
        WriteStringN(0, "Icon=DevObject.png")
        WriteStringN(0, "Categories=Tools")
        
        CloseFile(0)
        
      EndIf
      
    EndIf
    
    IconFileSource.s = GetPathPart(ProgramFilename()) + "icons/"
    IconFileName.s = "DevObject.png"
    IconFilePath.s = GetHomeDirectory() + ".icons/"
    
    If BuiltPathDirectory::DoIt(IconFilePath)
      
      If FileSize(IconFilePath + IconFileName) = -1
        CopyFile(IconFileSource + IconFileName, IconFilePath + IconFileName)
      EndIf
      
    EndIf 
    
  EndProcedure
  
CompilerEndIf 

Path.s = GetPathPart(ProgramFilename())
LanguagePath.s = Path + "language" + #PS$

BuiltLanguageDefaultFiles(LanguagePath)

CompilerIf #PB_Compiler_OS = #PB_OS_Linux
  LinuxDesktopFile_N_Icon()
CompilerEndIf 

; <<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< FIN DU FICHIER <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.01 LTS (Linux - x64)
; Folding = -
; EnableXP
; CompileSourceDirectory