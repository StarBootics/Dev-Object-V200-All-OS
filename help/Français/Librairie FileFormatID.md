## Librairie FileFormatID ##

Cette mini librairie de style POO sert, comme son nom l'indique, à donner à un fichier binaire un identifiant de format de fichier. Tout d'abord, ceci permet de s'assurer que le format de fichier est vraiment celui auquel nous nous attendons lors de la lecture du fichier. Ceci permet également jusqu'à une certaine limite de faire la gestion des versions du fichier binaire pouvant être lu.

Liste des méthodes :

- Resultat.l = FileFormatID\GetMagicNumber()
- FileFormatID\SetMagicNumber(Char00.a, Char01.a, Char02.a, Char03.a)
- FileFormatID\Compare(*Other)
- FileFormatID\ReadFileFormatID(FileID.i)
- FileFormatID\WriteFileFormatID(FileID.i)
- FileFormatID\Free()

Le constructeur :

- FileFormatID::New(Char00.a = 0, Char01.a = 0, Char02.a = 0, Char03.a = 0)

Exemple pour un fichier de type **BitmapFontFormat** avec une extension de fichier (*.bff) :

- BFFFileFormatID.FileFormatID::FileFormatID = FileFormatID::New('B', 'F', 'F', '1')

Avec cette manière, il est possible de gérer 10 versions du format de fichier. Si ce n'est pas suffisant, il est possible de créer l'identifiant de la manière suivante :

- BFFFileFormatID.FileFormatID::FileFormatID = FileFormatID::New('B', 'F', 'F', 1)

Avec cette manière, 256 versions différente deviennent disponible.

--------------------------------------------------------------------------------------------

Ce document a été modifié pour la dernière fois le 13-04-2022 à 11h36 par Guillaume Saumure. 














