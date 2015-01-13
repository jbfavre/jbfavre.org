---
layout: post
title: "Gestion des exceptions en Python"
category: sysadmin
tags: [debian,chromium]
---

Tout à la découverte de Python, j'ai besoin d'exécuter ceci:

    Essaie:
        mon bout de code
    Si ça merde:
        essaie ça plutôt
    Si ça merde toujours:
        laisse tomber

Intuitivement, on voit ce dessiner un joli `if else else`.
Sauf que, en l'occurence, ça ne convient pas car "Si ça merde" & "Si ça merde toujours" correspondent en fait à des exceptions Python que je veux bien entendu gérer.

En gros n00b à peine bourrin, je fais donc:

    try:
        mon code qui peut merder
    except:
        mon autre code qui peut merder aussi
    except:
        bon là ça va aller, je laisse tomber

Évidemment, ça ne le fait pas:

    SyntaxError: default 'except:' must be last

En fait, le mécanisme de gestion d'exception convient, mais il faut l'utiliser "convenablement", c'est-à-dire en imbriquant les try/except:

    try:
        try:
            mon code qui peut merder
        except:
            mon autre code qui peut merder aussi
    except:
        bon là ça va aller, je laisse tomber

Merci à [@pbeyssac](https://twitter.com/pbeyssac), [@guiguiabloc](https://twitter.com/guiguiabloc) et [@gordontesos](https://twitter.com/gordontesos) pour le coup de main sur Twitter :)

Le détail de la conversation se trouve [ici](https://status.jbfavre.org/conversation/1357832)

__Update__

L'ami [@gordontesos](https://twitter.com/gordontesos) s'est même fendu d'un billet pour (m')expliquer [la gestion des exceptions en Python](http://gordon.re/developpement/exceptions-python.html).
