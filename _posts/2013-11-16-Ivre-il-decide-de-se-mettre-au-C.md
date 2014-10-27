---
layout: post
title: "Ivre, il décide de se mettre au C..."
category: sysadmin
tags: [debian,chromium]
---

en développant un module Nginx. Vous me direz qu'il y a plus simple, et vous n'aurez pas tort :)  
Ça faisait un bail que je voulais m'y mettre, sans trouver le courage de le faire, faute entre autre d'un objectif tangible et motivant.

J'écris pas mal de doc. En markdown, parce que c'est plus rapide, et lisible, en l'état. Au boulot notamment, je prends des note sur l'architecture que nous utilisons, sur les recherches et travaux que je peux mener, des aides-mémoire des différents logiciels en production. Tout y passe... Tout en markdown.

Utilisant Geany sous Debian Wheezy, j'ai naturellement installé le plugin markdown en backportant le paquet sid. Il me permet d'avoir le rendu HTML en direct, ce qui est bien pratique. Mais, histoire de partager mes notes avec mes collègues, l'idée a germé de pouvoir pousser les fichiers en markdown dans une arborescence web afin de pouvoir les consulter via un navigateur.

Problème: il faut pouvoir convertir le markdown en HTML.

Vous me direz que plein de scripts en python (voire même en Ruby pour les fous comme [@Keltounet](https://twitter.com/Keltounet)) font le job et le font bien, voire mieux. Là encore, vous n'aurez pas tord, mais il faut bien trouver un prétexte pour faire "des trucs" rigolos.

Donc voilà. J'ai écris un module Nginx, en fait 2, qui transforment à la volée un document Markdown en HTML pour l'afficher dans le navigateur.

Ils sont perfectibles bien sûr. Je n'ai pas la prétention de "savoir" programmer en C. Mais le défi m'a beaucoup plu, même s'il a fallu que [@shtouff](https://www.twitter.com/shtouff) vienne à ma rescousse pour m'expliquer 2-3 bases quand même :) Merci à lui !

En tout cas, ça m'a permit de démystifier, en partie, la programmation en C ainsi que le développement de module Nginx.  
Non, l'un comme l'autre ne sont pas si compliqués que cela... enfin... bon bref quoi...

Le code est dispo, sous licence GPLv3, sur Github: [https://github.com/jbfavre/ngx-markdown-module](https://github.com/jbfavre/ngx-markdown-module)

Happy Hacking !
