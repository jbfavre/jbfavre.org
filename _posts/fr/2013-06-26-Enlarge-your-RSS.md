---
layout: post
title: "Enlarge your RSS"
category: analytics
tags: [php,selfoss,Data science]
---

Le spam est un fléau tel que de nombreuses recherches ont été effectuées pour le combattre.  
Parmi les découvertes réalisées, les filtres bayésiens figurent en bonne place des plus efficaces.

Les RSS sont une bénédiction (si, si). Google s'en fout, mais pas moi.  
Je suis actuellement plus de 330 flux RSS, ce qui fait au-moins-tout-ça de nouveaux articles à consulter quotidiennement.  
Je pourrais en suivre davantage, mais je manque de temps pour tout lire.

Il faut donc que je trouve une solution pour effectuer un premier tri.

Il faut bien entendu que mon agrégateur de flux RSS réalise ce tri et me propose les articles susceptibles de m'intéresser en tête.  
Les autres sont toujours affichés bien sûr, mais en seconde partie de liste.

Je passe sur les modifications nécessaires au moteur d'affichage, c'est trivial et sans grand intérêt ici.

Le tri, en revanche, est beaucoup plus intéressant: on peut en effet faire un parallèle avec les filtres anti-spam.  
Schématiquement cela donnerait:

* SPAM: l'article n'est pas intéressant
* NON SPAM: l'article est intéressant

Reste à l'implémenter...

### L'outil
Mon agrégateur de flux RSS, [SelfOSS](http://selfoss.aditu.de/), est écrit en PHP. La mise à jour des flux est également réalisée via PHP.
Il paraît donc raisonnable de trouver un filtre lui aussi écrit en PHP. C'est le cas de [php-classifier](http://php-classifier.com/).

### L'apprentissage

Une fois l'outil trouvé, il faut lui apprendre à distinguer le bon grain de l'ivraie.  
Pour cela, je dispose de la base existante de mon agrégateur, soit:

* 20037 articles lus au total
* 2296 articles lus et marqués ("starred" dans le jargon Selfoss)

J'ai donc marqué un peu plus de 11% des articles lus.  
J'ai de plus, réalisé manuellement le travail de tri pour pouvoir tester le filtre.

Parmi les articles dénombrés au dessus, on trouve donc:

* 330 articles non lus
* 133 articles non lus et marqués

J'ai donc marqué un peu plus de 40% des articles non lus (Ceci pourrait me jouer des tours quant à la qualité de détection lors des tests).

### Le test

L'idée est ici de construire un index à partir des articles lus en indiquant la catégorie (marqués ou non marqués).  
Ensuite, l'outil classifiera chacun des articles non lus comme "starred" ou "normal", sans savoir s'il a, ou non, été marqué au préalable.

Il sera alors possible de vérifier l'acuité du filtre.

### Utiliser le titre
En se basant sur le titre de l'article, on trouve:

    # time php examples/basic_title.php 
    Should be starred - Total: 133
                    not found: 92
                        found: 41
                        error: 69.17%
    Should be normal  - Total: 197
                    not found: 31
                        found: 166
                        error: 15.74%
    
    real	0m6.735s
    user	0m6.604s
    sys		0m0.084s

Comme on le voit, on obtient un taux d'erreur de détection des articles intéressants de près de 70%.  
Le taux d'article "normaux", mais détectés comme intéressant est lui de 15%.  

Néanmoins, les filtres bayésiens peuvent être entraînés.  
Il est donc envisageable de réduire le taux d'erreur au fil du temps.

70% de non détection des articles intéressants peut paraître beaucoup.  
C'est sans compter sur le fait que le corpus est sans doute incomplet.  
Je ne sauvegardais pas tous les articles que je jugeais intéressant par exemple.

A priori, on peut se dire que la classification basée sur le titre est un peu limitée.  
Il paraît évident qu'utiliser le contenu de l'article est plus pertinent.

### Utiliser le contenu

Testons.En se basant sur le contenu de l'article, on trouve:

    # time php examples/basic_content.php 
    Should be starred - Total: 133
                    not found: 133
                        found: 0
                        error: 100%
    Should be normal  - Total: 197
                    not found: 0
                        found: 197
                        error: 0%
    
    real	1m21.964s
    user	1m19.432s
    sys		0m0.708s

Le script est évidemment plus long, mais ce qui surprend surtout, c'est le taux de détection des articles intéressant: 0%.

#### Conclusion

Quelques pistes de réflexion, qui pourraient expliquer l'échec de l'utilisation du contenu:

* Flux RSS incomplets (merci la presse hein... entre autres)
* Flux RSS d'images/BD. Pas ou très peu de texte, sans doute trop peu.
* Problème de langue (flux RSS en anglais ou en français pour moi)
* Pourcentage d'articles intéressants très différent entre le corpus de test et le corpus d'apprentissage

Il convient également de regarder le détails des scores obtenus.  
Il est en effet possible que certains articles soient à la limite du seuil de détection.  
Mais, pour cela, il va me falloir quelque chose de plus souple, 'R' par exemple.

À suivre donc...
