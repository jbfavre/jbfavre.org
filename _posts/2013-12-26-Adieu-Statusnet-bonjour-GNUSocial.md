---
layout: post
title: "Adieu StatusNet, bonjour Gnu Social"
category: dev
tags: [php,gnusocial]
---

J'ai réalisé hier soir la migration de mon instance StatusNet vers GNU-Social. GNU-Social est le remplaçant officiel de StatusNet et, à ce titre, est 100% compatible.  

### Pas de grosse surprise à attendre donc...

La mise à jour s'est effectuée de manière très simple: cloner le [dépôt GIT de Gnu-Social](https://gitorious.org/statusnet/gnu-social/), vérifier que tous les correctifs que j'ai fait et utilise ont été intégrés, les ajouter le cas échéant, et pousser le code sur le serveur.

Il ne manquaient que 2 correctifs, cosmétiques en plus, rien de grave.  
Une fois en place, lancer quelques scripts de mise à jour

    php scripts/updateurls.php
    php scripts/upgrade.php
    php scripts/checkschema.php

Patienter (c'est un peu long de vérifier une base de 2Go sur un serveur n'ayant que 1Go de RAM)...  
Ré-ouvrir les accès web préalablement coupés, redémarrer les processus d'import Twitter...

### et pourtant...

Et là, c'est le drame. Une trentaine de tweets ont été récupérés suite à l'interruption pour migration. Sauf qu'ils sont restés bloqués en file d'attente :-/

15 minutes plus tard, 11 tweets seulement étaient importés, là où StatusNet faisait le boulot en quelques secondes. Un truc génial dans StatusNet, pour qui dispose d'un accès shell au serveur, c'est de pouvoir utiliser les processus de gestion de la file d'attente, afin de pouvoir effectuer les opérations d'envoi et d'import de messages en tâche de fond, plutôt que lors d'un appel HTTP.

Sauf que, dans GNU-Social, le service de gestion de la file d'attente a (par défaut) purement et simplement disparu, au profit d'un gestionnaire "opportuniste".  
Celui-ci profite justement de chaque connexion HTTP pour traiter toute ou partie de la file d'attente...

Sauf que sur un petit serveur un poil optimisé, par exemple en réduisant le temps d'exécution maximum de PHP, ben ça ne fonctionne plus. Le gestionnaire "opportuniste" n'a plus beaucoup d'opportunité, et il le dit en plus...

Bon, je vous rassure, j'ai vite trouvé la solution...  
En l'occurrence, il faut d'abord réactiver l'ancien gestionnaire de file d'attente:

    --- a/scripts/getvaliddaemons.php
    +++ b/scripts/getvaliddaemons.php
    @@ -37,7 +37,7 @@ require_once INSTALLDIR.'/scripts/commandline.inc';
     
     $daemons = array();
     
    -#$daemons[] = INSTALLDIR.'/scripts/queuedaemon.php';
    +$daemons[] = INSTALLDIR.'/scripts/queuedaemon.php';
     
     if (Event::handle('GetValidDaemons', array(&$daemons))) {
         foreach ($daemons as $daemon) {

Forcer son utilisation dans le fichier config.php

    $config['queue']['subsystem']     = 'db';

Et enfin, éventuellement, supprimer le plugin en question qui risque de rentrer en conflit avec l'ancien gestionnaire.  
Là encore, dans le fichier config.php

    unset($config['plugins']['core']['OpportunisticQM']);
    unset($config['plugins']['core']['Cronish']);

J'en ai profité pour désactiver également un autre plugin qui prétend faire "des choses" en profitant d'un appel HTTP.

### J'ai pas l'air comme ça, mais j'aime bien

Bref, indéniablement du mieux.  
Beaucoup de correction de bug (parfois très vieux), incorporation de plusieurs correctifs qui attendaient chez StatusNet depuis plusieurs mois (années ?), mise à niveau de la compatibilité PHP & support de l'API witter 1.1 par exemple.

Mais bon sang, pourquoi diable vouloir changer un truc qui marche comme le gestionnaire de file d'attente ? Parfois je ne comprends pas les développeurs...  
Merci à [Postblue](http://sn.postblue.info/) qui m'a fait gagner du temps pour la migration :)
