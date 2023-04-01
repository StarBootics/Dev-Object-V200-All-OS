## Les données de type Data ##

Parfois il est nécessaire de manipuler un bloc mémoire plutôt que tout autre type d'organisation de donnée. Dev-Object version 1.4.0 permet la gestion des blocs mémoire pour les méthodes suivantes :

- Set...()
- Update()
- Reset()
- Clear()
- Copy()
- Compare()
- Swapping()
- Toutes les méthodes à propos des fichiers binaires
- Toutes les méthodes à propos des fichiers encodés/cryptés (Si les méthodes Read/Write Data sont présentes)
- Le destructeur

Afin que le générateur de code soit en mesure de reconnaitre un membre de type Data et de faire correctement la gestion, il est nécessaire d'ajouter cette information de la manière suivante :

```
VertexSize.l
*Vertex ; Data, VertexSize

```
Notez qu'il y a un membre nommé **VertexSize.l** et il y a un membre nommé ***Vertex** suivit d'un point-virgule **(;)**, du mot clé **Data**, d'une virgule **(,)** et finalement le nom du membre **VertexSize** qui vous l'aurez sans doute deviné, sert à mémoriser la taille du bloc mémoire. Il est important de placer le membre qui sert à mémoriser la taille du bloc mémoire avant celui qui mémorise le pointeur vers le bloc mémoire. L'exemple ci-dessous est parfaitement valide.

```
VertexSize.l
IndiceSize.l
*Vertex ; Data, VertexSize
*Indices ; Data, IndiceSize

```

*À noter que depuis la version 1.9.0, l'utilisation d'un pointeur est la seule méthode supporté par le générateur de code pour la gestion des données de type Data.*

--------------------------------------------------------------------------------------------

Ce document a été modifié pour la dernière fois le 102-11-2022 à 03h03 par Guillaume Saumure. 














