## Les outils intégrés ##

Voici les deux outils intégrés disponibles.

- Un Vérificateur d'intégrité
- Un Éboueur

### Vérificateur d'intégrité ###

Cet outil effectue une vérification entre les méthodes définies dans l'interface et les entrées correspondante de la table virtuelle. Suite à l'analyse des codes sources chargés, les fichiers analysés qui sont intègres seront affichés en vert avec l'état **OK**. 

Les fichiers qui sont en jaune c'est qu'il y a une ou plusieurs erreur(s) d'ortographe dans le nom des méthodes. Ceci peut être volontaire de la part du programmeur et donc normal. 

Les fichiers qui sont en rouge peut être soit une erreur du type **Le nombre de méthodes diffère** soit une erreur du type **Le nombre de paramètres diffère** et/ou une erreur du type **Le type de retour diffère** et/ou une erreur du type **Le type de paramètre diffère**. 

Pour faire afficher le rapport d'erreur il suffit simplement de faire un double clique gauche sur le fichier fautif.

### Éboueur ###

Cet outil analyse un bout de code afin de trouver les objets créés et d'ajouter les appels aux destructeurs pour ces objets. Exemple :

```
	VecteurA.Vector3f::Vector3f = Vector3f::New()
	VecteurB.Vector3f::Vector3f = Vector3f::New()
	VecteurC.Vector3f::Vector3f = VecteurA\Copy()
```

Après analyse, le code aura les appels aux destructeurs ajoutés à la fin :

```
	VecteurA.Vector3f::Vector3f = Vector3f::New()
	VecteurB.Vector3f::Vector3f = Vector3f::New()
	VecteurC.Vector3f::Vector3f = VecteurA\Copy()
	
	VecteurA\Free()
	VecteurB\Free()
	VecteurC\Free()
```

**À noter que les pointeurs ne sont pas considéré dans l'analyse.**

---

Ce document a été modifié pour la dernière fois le 15-04-2022 à 15h02 par Guillaume Saumure. 
