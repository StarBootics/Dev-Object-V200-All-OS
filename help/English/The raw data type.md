## The raw data type ##

Sometimes it is necessary to handle a memory block rather than any other type of data organization. Dev-Object version 1.4.0 allows the management of memory blocks for the following methods:

- Set...()
- Update()
- Reset()
- Clear()
- Copy()
- Compare()
- Swapping()
- All binary file ralated methods
- All encoded/encrypted file related methods (If the Read/Write Data methods are present.)
- The destructor

In order for the code generator to be able to recognize a Data type member and to manage it correctly, it is necessary to add this information as follows:

```
VertexSize.l
*Vertex ; Data, VertexSize

```
Note that there is a member named **VertexSize.l** and there is a member named ***Vertex** followed by a semicolon **(;)**, then by the keyword **Data**, then a comma **(,)** and finally the name of the member **VertexSize** which you will probably have guessed, is used to memorize the size of the memory block. It is important to place the member which is used to memorize the size of the memory block before the one which memorizes the pointer to the memory block. The example below is perfectly valid.

```
VertexSize.l
IndiceSize.l
*Vertex ; Data, VertexSize
*Indices ; Data, IndiceSize

```

*Please note since version version 1.9.0, the use of a pointer is the only way supported by the code generator manage the raw data type.*

---

This document was last modified on November 2^nd^, 2022 at 03h10 by Guillaume Saumure. 














