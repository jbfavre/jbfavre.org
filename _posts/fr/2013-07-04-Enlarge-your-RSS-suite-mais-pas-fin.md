---
layout: post
title: "Enlarge your RSS... la suite, mais pas la fin"
category: analytics
tags: [php,selfoss,Data Science]
---

Le filtre bayésien ne fonctionne pas comme espéré. C'est sûrement de ma faute, j'ai dû rater un truc, mais en attendant je suis toujours bien embêté pour effectuer ma veille de manière plus efficace.

Du coup, j'envisage à présent une solution intermédiaire: utiliser mon propre comportement pour calculer la pertinence des articles.  
Ceci ne m'empêchera pas de continuer mes recherches et tests concernant le filtre bayésien, dont je reste persuadé qu'il peut fonctionner, mais il faut bien avancer, d'une manière ou d'une autre.

Petite consolation quand même, ces informations pourront être utilisées pour affiner l'analyse du filtre bayésien, lorsqu'il j'aurai réussi à le comprendre suffisamment pour le faire fonctionner proprement \o/

### Quand ça veut pas...

L'idée est donc la suivante: [SelfOSS](http://selfoss.aditu.de/) affiche les articles de manière "condensée", c'est à dire que seul le titre est visible. Si l'on veut voir le corps de l'article, on utilise la souris ou le raccourci clavier adéquat pour le faire. Il s'agit donc d'un événement au sens javascript du terme, événement que l'on peut également communiquer au serveur, même s'il ne l'est pas normalement.

Outre l'ouverture de l'article, il est possible de sauvegarder l'article à l'aide, là encore, d'un clic ou d'un raccourci clavier. Dans ce cas-ci, le serveur est obligatoirement notifié (il faut bien enregistré l'état sauvegardé). On peut donc enrichir cette notification.

Enfin, il est possible de partager l'article. Dans mon cas, ce partage s'effectue via mon instance Statusnet. L’événement n'est pas notifié au serveur, tout s'effectue en javascript, mais il reste possible de le faire.

Nous avons donc 3 événements qui caractérisent ce que l'on pourrait appeler un intérêt croissant pour l'information. On peut trivialement attribuer une valeur à ces événements:

* ouverture: 1
* sauvegarde: 2
* partage: 4

Si cela vous rappelle les permissions d'un système de fichier Ext, c'est tout à fait normal :)

Un article peut donc avoir une note maximale de 7, lorsqu'il a été ouvert, sauvegardé et partagé, ou toute combinaison d'action auxquelles correspondrait la somme des valeurs. Cette note peut et doit bien sûr être stockée dans la base de donnée. À partir du moment où les articles sont notés, on peut du coup envisager de calculer la note de la source (le flux donc).

Ce calcul peut se faire avec une [moyenne arithmétique](https://fr.wikipedia.org/wiki/Moyenne_arithm%C3%A9tique), mais aussi avec une [moyenne pondérée](https://fr.wikipedia.org/wiki/Moyenne_glissante) (plus un article est vieux moins sa note compte) ou encore d'une moyenne glissante, pour tenir compte d'une éventuelle évolution de nos centres d'intérêts.

La note du flux peut alors être utilisée comme note des futurs articles, selon le principe que plus une source est jugée intéressante, plus il y a de chances que son prochain article le soit.

Bien entendu, le calcul n'est nécessaire qu'au moment de la mise à jour du flux. Dans le cas de SelfOSS, cette mise à jour est précédée de la suppression des articles les plus anciens (par défaut 3 mois), à l'exception bien sûr des articles sauvegardés. Cela étant, on peut également considérer qu'un article de plus de 3 mois, fût-il sauvegardé, ne représente plus un intérêt tel qu'il faille le prendre en compte.  
Une fois le ménage fait, il est donc simple de calculer la note du flux et d'utiliser cette valeur comme note de départ des articles.

Ceux-ci sont alors stockés en base avec la note. Cette dernière sera mise à jour en fonction des actions effectuées et la nouvelle note sera alors prise en compte à la mise à jour suivante.

La boucle est bouclée, on repart pour un tour.  
Pour la mise en place de la chose, on ne dispose que des articles sauvegardés, les autres événements n'étant pas communiqués au serveur. Ceci permet toutefois un premier classement des sources, et donc un premier filtre des articles.

### Et... ça marche ?

Ça c'est le principe. Sauf qu'en fait, on risque d'avoir au choix, une dispersion importante (c'est-à-dire que une ou plusieurs sources vont voir leur score s'envoler) ou au contraire une concentration importante qui perturberont le classement.

Il ne s'agit que d'une intuition de ma part, mes compétences en maths étant... ahem... ce qu'elles sont, mais je vais essayer de faire quelques simulations pour voir.

En attendant, je suis preneur de tous conseils, solutions miracles et autres artefacts pour gagner du temps (et des connaissances) :)
