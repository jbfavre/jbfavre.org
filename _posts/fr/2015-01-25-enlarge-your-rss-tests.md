---
layout: post
title: "Enlarge your RSS... Enfin un test"
category: analytics
tag: [php,selfoss,Data Science]
---


Le [premier épisode](//blog-notes.jbfavre.org/?enlarge-your-rss,3036) avait vu 
l'échec d'une analyse du texte à l'aide des méthodes anti-spam. 
Le [second épisode](//blog-notes.jbfavre.org/?enlarge-your-rss-la-suite-mais-pas-la-fin,3037)
avait vu émerger un début de solution à base de votes. 
Voici l'analyse et la simulation.

## Le contexte

L'idée de départ est donc d'enregistrer les actions réalisées sur les articles:
ouverture, sauvegarde et partage. À partir de là, je pensais être capable d'en
déduire quels flux m'intéressent le plus et, partant, d'afficher les nouveaux
articles en fonction de cet intérêt pour faciliter ma veille.

Il faut dire que je suis pas mal de sources (476 très exactement), dont pas mal
de site de presse qui génèrent un trafic non négligeables. Les articles qui,
potentiellement, m'intéressent particulièrement sont donc noyés dans la masse
des articles de presse qui m'intéressent, généralement, moins. Néanmoins, je
veux pouvoir conserver ces derniers et l'affichage par ordre de catégorie, un
instant envisagé pour sa simplicité, me paraît trop rigide.

Depuis près d'un an maintenant, j'enregistre les actions que j'ai sur les
articles tout au long de ma lecture. J'ai un peu plus de 56000 articles à
analyser.

## L'analyse

Je considère ces actions comme des votes. Un article ouvert reçoit donc 1 vote,
un article ouvert et partagé 2, un article ouvert, partagé et sauvegardé 3, etc…

Ensuite, il s'agit de calculer le score de la source. Pour cela, il faut d'abord
combiner le résultat des "votes" pour chaque article, avant d'agréger tout cela
pour en déduire le score du flux.

### Choix des algorithmes

J'avais d'abord envisagé d'utiliser une bête
[moyenne](https://fr.wikipedia.org/wiki/Moyenne_arithm%C3%A9tique),
éventuellement
[pondérée](https://fr.wikipedia.org/wiki/Moyenne_pond%C3%A9r%C3%A9e)
voire, soyons fous,
[glissante](https://fr.wikipedia.org/wiki/Moyenne_glissante).

Je me suis donc orienté vers un
[intervalle de Wilson](https://en.wikipedia.org/wiki/Binomial_proportion_confidence_interval#Wilson_score_interval)
pour les articles, doublé d'une moyenne exponentielle glissante pour la partie
flux, notamment à la suite de 2 lectures:

* [How not to sort by average rating](http://www.evanmiller.org/how-not-to-sort-by-average-rating.html)
* [How to build a popularity algorithm you can be proud of](https://cache1.pinboard.in/arnaud/ea338407af67df830dde/index.html)

Mais, pour comprendre un peu où je mettais les pieds, j'ai surtout fait de
nombreux essais, notamment en utilisant uniquement la moyenne, ou uniquement
l'intervalle de Wilson, ou encore un mélange des 2.

Pour le calcul du score WCI (Wilson Confidence Interval), j'ai utilisé une
[implémentation disponible sur GitHub](https://gist.github.com/mbadolato/8253004).
Pour le calcul de la moyenne exponentielle glissante (Exponential Moving Average
ou EMA), j'ai simplement défini une fonction implémentant la formule.

### Pseudo-code

    pour chaque source
        pour tous les articles notés depuis la dernière mises à jour
            score_moyen_articles = somme ( ouvert + partagé + sauvegardé ) / 3
            score_wci_articles   = score_WCI( somme ( ouvert + partagé + sauvegardé ), 3)
            score_final_articles = ( score_moyen_articles + score_wci_articles ) / 2
        score_source = EMA (old_score, nb_articles, new_score)

### Représentation graphique

Les graphes sont donnés ci-dessous (réalisés avec GnuPlot). Pour les 3 premiers,
l'abscisse représente les `run`. La mise à jour du score est faite chaque heure.  
Pour l'exemple, j'ai limité l'analyse à un peu plus d'un mois.

![Score des flux par moyenne](//medias.jbfavre.org/blog-notes/2015-01-15-score-AVG.png)

![Score des flux par l'intervalle de Wilson](//medias.jbfavre.org/blog-notes/2015-01-15-score-WCI.png)

![Score des flux par la combinaison de la moyenne et de l'intervalle de Wilson](//medias.jbfavre.org/blog-notes/2015-01-15-score-MIX.png)

Comme on le vois, l'intervalle de Wilson a tendance à écraser les scores, donc
à diminuer la discrimination. En revanche, la moyenne est assez rapidement en
butée haute.  
Le mélange des 2 (2 fois le score moyen plus le score WCI divisé par 3) me
donne lui un résultat potentiellement exploitable. Le poids des 2 scores a
été décrété de manière unilatérale par moi-même :p

## Conclusion

Il est temps de vérifier le résultat final. Le graphe représente le score final,
en ordonnée, des sources analysées, en abscisse.  
Pouf, voilà:

![Score final des flux RSS utilisant la combinaison de la moyenne et de l'intervalle de Wilson](//medias.jbfavre.org/blog-notes/2015-01-15-score-SRC.png)

On distingue assez bien 3 grands intervalles:

* Un premier tourne aux alentours de 0.12
* Le second est accroché à 0.4
* le dernier enfin occupe le haut du tableau avec environ 0.85

Tout cela me paraît pas mal. Il ne reste plus qu'à vérifier que les flux RSS
sont dans la bonne catégorie :)

Ensuite, je pourrai m'attaquer à l'implémentation du scoring dans SelfOSS,
ainsi que l'implémentation de l'affichage adapté dans l'interface Web.
