---
layout: post
title: "Gestion d'agendas et auto-hébergement"
category: dev
tags: [php]
---

En bon adepte de l'auto-hébergement, je gère mon propre serveur web. Parmi les services que l'on souhaite pouvoir auto-héberger, les agendas arrivent en bonne place.

Ne dérogeant pas à la règle, j'utilisais depuis longtemps "PHP iCalendar". Mes agendas sont disponibles sous Thunderbird, que j'utilise à la fois à la maison et au boulot.
Tout va bien, tout le monde est content.

Quelques temps plus tard, je décide de tester un module Roundcube pour bénéficier de l'intégration au webmail (pratique en déplacement). Je migre donc un agenda sous ce module.  
Ça fonctionne "à peu près", puis plus possible de modifier l'agenda autrement que via le webmail (j'ai dû toucher un truc, mais quoi... mystère).

Malheureusement, n'ayant pas le temps de me pencher sur le sujet, je me contente donc de ce fonctionnement boiteux.

Pas dramatique, mais néanmoins embêtant, je ne suis pas parvenu à importer les agendas sur mon téléphone Android.  
De plus, "PHP iCalendar" ne semble plus mis à jour et le module Roundcube n'est pas compatible avec les nouvelles versions du webmail.  
Enfin, l'installation du module Roundcube ayant été pour le moins chaotique, je ne me sens pas de recommencer à tâtonner pendant des heures.

Pour faire court, il était temps de refaire un point sur le sujet.  
Le besoin, histoire de savoir où on met les pieds:

Impératif
: - Synchro Thunderbird, Gnome (Evolution) & Android  
  - Léger (petit serveur)

Souhaitable
: - Préférence pour PHP, déjà utilisé sur le serveur, évitant ainsi un empilement de technos différentes.  
  - Backend MySQL ou SQLite (même raison que le point précédent)

Un rapide inventaire des solutions existantes (et maintenues) plus tard me donne notamment:

- __OwnCloud__: boite à outils, sorte de couteau suisse de l'auto-hébergement.
- __Baïkal__: interface HTML basée sur Twitter bootstrap (donc dans l'air du temps)
- __SabreDAV__: librairie PHP qui implémente le protocole WebDAV et ses extensions CalDAV et CardDAV

Détail amusant, les 2 premiers utilisent le 3ème :)  
J'écarte rapidement OwnCloud, trop riche pour mon besoin et les retours d'utilisateurs ne sont pas folichons: mise à jour qui marche (ou pas), régressions, …  
Bref, pas très envie de me lancer.

Restent SabreDAV et Baïkal, le second étant une surcouche du premier.

Baïkal sera finalement écarté également, essentiellement pour des raisons pratiques, liées à mon environnement et au manque de temps pour adapter le tout:

- Il compte plusieurs points d'entrée (un par défaut, un pour calDAV et un pour CardDAV), chacun embarquant les même options de configuration. Autant de modifications à gérer et à ne pas oublier sous peine de comportement "étranges"
- La structure du code rend délicate la séparation code/ressources. De fait, il est compliqué d'avoir les images et CSS dans l'arborescence web tout en maintenant le code PHP "à l'abri" en dehors de celle-ci.

Bref, les captures d'écran ont l'air bien sympa, la gestion des utilisateurs et agendas s'effectue via une interface HTML… mais je n'arrive pas à l'intégrer simplement à ma configuration.

Reste SabreDAV. Le code est livré avec des exemples documentés (si si, ça existe ;) ), le tout était prêt en 10 minutes.  
Quelques tests plus tard (merci flink), le bon fonctionnement de tout ça est validé sous Android avec l'application CalDAV Sync.  
Il me paraissait indispensable de tester le tout, dans la mesure où l'application CalDAV Sync est payante.

Il existe bien une application libre et gratuite (aCal) mais celle-ci rencontre quelques soucis avec l'authentification HTTP Digest.  
La seule recommandation disponible est de ne pas utiliser l'authentification Digest et de se contenter de l'authentification Basic. Il s'agit certes d'une solution, mais baisser le niveau de sécurité pour pouvoir utiliser une application ne me plaît pas du tout.

Bref, j'ai donc installé SabreDAV derrière Nginx, PHP-FPM (en chroot) et tout fonctionne bien.  
J'ai également acheté l'application CalDAV Sync et j'ai maintenant accès à mes agendas personnels depuis mon téléphone Android (en lecture/écriture bien entendu).  
Cerise sur le gâteau, ils sont disponibles dans l'application Agendas Google et non pas via une n-ième interface. Extrêmement pratique ;)

### Update

Les détails techniques de l'installation sont disponibles [en français](http://publications.jbfavre.org/web/online-calendars-sabredav-php-fpm-nginx.fr) et [en anglais](http://publications.jbfavre.org/web/online-calendars-sabredav-php-fpm-nginx.en)
