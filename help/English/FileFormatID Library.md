## FileFormatID Library ##

This OOP style mini library is used, as its name suggests, to give a binary file a file format identifier. First of all, this is to make sure that the file format is really what we would expect when reading. This also allows up to a certain limit to manage which versions of the binary file can be read.

Methods list :

- Result.l = FileFormatID\GetMagicNumber()
- FileFormatID\SetMagicNumber(Char00.a, Char01.a, Char02.a, Char03.a)
- FileFormatID\Compare(*Other)
- FileFormatID\ReadFileFormatID(FileID.i)
- FileFormatID\WriteFileFormatID(FileID.i)
- FileFormatID\Free()

The constructor :

- FileFormatID::New(Char00.a = 0, Char01.a = 0, Char02.a = 0, Char03.a = 0)

Example for a **BitmapFontFormat** file with (*.bff) as extension :

- BFFFileFormatID.FileFormatID::FileFormatID = FileFormatID::New('B', 'F', 'F', '1')

With this methodology, it is possible to manage 10 versions of the file format. If this is not sufficient, it is possible to create the identifier as follows:

- BFFFileFormatID.FileFormatID::FileFormatID = FileFormatID::New('B', 'F', 'F', 1)

With this methodology, 256 versions become available.

---

This document was last modified on April 13^th^, 2022 at 11h58 by Guillaume Saumure. 














