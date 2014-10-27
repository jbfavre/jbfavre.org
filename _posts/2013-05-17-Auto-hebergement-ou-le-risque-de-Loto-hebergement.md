---
layout: post
title: "L'auto-hébergement, ou le risque de Loto-hébergement ?"
category: sysadmin
---

__Disclaimer__: je pratique l'auto-hébergement «tout seul dans mon coin»™ depuis plus de 5 ans. Vous avez donc le droit de ne pas me trouver crédible :)

L'auto-hébergement a, à nouveau, le vent en poupe. Même [Stéphane Bortzmeyer](http://http//www.bortzmeyer.org/) le dit: [l'auto-hébergement, c'est bien, c'est même LA solution](http://www.bortzmeyer.org/presence-en-ligne.html) pour ne même pas avoir mal quand Google ferme GReader !

La définition de l'auto-hébergement choisie par Stéphane, que je rejoins sur ce point, est simple:

> on prend une machine chez soi, ou bien hébergée chez un professionnel,
  on y met les logiciels nécessaires (il en existe plein, souvent sous une
  licence libre) et on a son petit nuage à soi.

### Pourquoi ça ne marche pas ?

Là encore, je rejoins Stéphane pour expliquer le constat d'échec: les gens ne s'auto-hébergent pas car cela demande des compétences techniques que tous n'ont pas. À ceux qui seraient tenter d'objecter que "ça s'apprend", je leur répondrai que j'ai l'exemple vivant, et du reste adorable, du contraire à la maison :)

De plus, et c'est là que mon opinion diverge de celle de Stéphane, la solution selon moi ne réside pas dans le développement d'une n-ième interface qui masquera les difficultés, d'autant que ces interfaces existent déjà, et l'interface universelle n'est pas pour demain, [quoique](http://yunohost.org/).  
L'idée sous-jacente à cela me semble être que chacun peut, au sens de "capacité à" et pas de "droit à", être présent en ligne. Et cette présence est vue comme individuelle, tout seul dans son coin.

L'une des principales raisons du succès des services centralisateurs est simple: l'individu est, par défaut et sans considérations particulières, paresseux. Il va donc aller au plus simple. Selon les points de vue, "là où les autres sont" ou encore "là où l'utilisation est la plus intuitive". Parfois, cela rejoint également "là où c'est le moins cher".

C'est également cet individualisme qui constitue l'un des gros dangers de l'auto-hébergement. Techniquement, c'est la meilleure solution, car cette diversité renforcera la résilience de l'ensemble, en revanche, je suis moins certain de ses bénéfices sur le plan de la sécurité:

- Comment expliquer à monsieur "tout le monde" pourquoi il aura besoin de sauvegardes (et comment les restaurer d'ailleurs...) ?
- Comment expliquer à madame "n'importe qui" qu'elle n'est plus présente en ligne car son disque dur a lâché sans préavis ?

Vouloir un outil unique qui couvre l'intégralité des problématiques liées à l'hébergement est illusoire. Non, les interfaces de gestion ne résoudront pas tous les problèmes, ni même les systèmes déjà configurés et prêts à l'emploi. Les briques existent, on peut éventuellement améliorer leur intégration, mais on va se heurter à la règle des 80/20: 80% du besoin d'intégration sera réalisé avec 20% des efforts, les 20% restants nécessiteront 80% des efforts. Le jeu en vaut-il la chandelle ? Ces produits résisteront-ils à la pression des mise à jour de plus en plus rapide des applications web ?

Selon moi, la réelle solution réside dans la mutualisation (qui risque bien de ne pas régler le problème des trolls, bien au contraire ;) ).  
Comprenons-nous bien, je ne parle pas de mutualisation façon Google ou Facebook ou encore Twitter. Je ne parle pas non plus d'hébergement mutualisé au sens classique du terme. Je ne parle pas, enfin, d'hébergement mutualisé au sens moderne du terme (oui, je parle bien du cloud).

Je parle de mutualisation "à la FDN", en mode associatif.

Les FAI "DIY" représentent la voie à suivre & à investiguer pour la fourniture du service de présence en ligne. Je ne connais personne qui soit son propre FAI individuel, pour des raisons techniques et financières. Il s'agit à chaque fois ou presque d'une association proposant un service d'accès mutualisé au réseau. Pourquoi n'en serait-il pas de même pour l'hébergement ?

Évidemment, dans n'importe quelle association, il arrive fréquemment qu'un petit nombre s'investisse au profit d'une majorité. Il n'en serait pas autrement dans le cas de l'auto-hébergement.
Évidemment, comme dans n'importe quelle association, chacun voudra apporter ~son troll~^W^W sa pierre à l'édifice, sur un mode:

> <Serveur web A> sucks, il faut intégrer <Serveur web B>...  
  Nan c'est un truc de <OS_en_bois>ien, y faut un truc velu avec des poils autour,
  qui tourne que sous <seul_vrai_OS_serveur_sans_corne_ni_fourche>

ce qui risque de compliquer un peu la mise en place.

Mais, magie des associations à taille humaine, le consensus devrait se dégager relativement facilement car les adhérents auraient un objectif commun: gérer eux-même leur présence en ligne et ce, normalement, le plus rapidement possible. Dans le même esprit, chacun apportant ses compétences, on pourrait voir surgir une sorte de troc: "échange administration du blog contre graphisme", ou encore "Offre images de chatons (originales) contre backup & optimisation SQL", etc...

La solution à la présence en ligne n'est pas individuelle. L'auto-hébergement subsistera bien sûr, mais restera un truc de techniciens pour les techniciens. Pour les autres, le modèle associatif devrait être recherché.
Il s'agit du seul modèle qui permette une adéquation entre le besoin de contrôle des données et la mutualisation de l'expertise technique nécessaire.

Accessoirement, cela aurait aussi l'avantage de mettre en contact 2-3 geeks pas trop associaux et des gens normaux. Ça pourrait donner des trucs rigolo pour la défense de la neutralité des réseaux, non ?
