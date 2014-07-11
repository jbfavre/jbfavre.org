---
title: Debian meetup du 4 juin 2014 chez Mozilla
layout: post
---

J'ai eu l'occasion d'y présenter l'utilisation de Debian par mon employeur: BlaBlaCar.

Debian est déployé sur 100% de notre parc, soit une centaine de serveurs, dont 50% de machines virtuelles.  
L'installation des serveurs physiques est naturellement automatique et silencieuse grâce à PXE et aux fichiers preseed.  
Nous utilisons, au maximum, les paquets fournis par Debian. Il arrive cependant que certains paquets soient absent du projet, ou que la version disponible ne réponde pas entièrement à notre besoin. Dans ce cas, nous backportons nos propres versions de paquets.

<!-- -->

### Installation

L'installation des serveurs physiques est naturellement automatique et silencieuse grâce à PXE et aux fichiers preseed.

Lors de l'installation, seules les opération minimales sont effectuées:

- partitionnement
- installation de l'OS de base (plus un serveur OpenSSH)
- paramétrage du mot de passe root
- boostrap de Chef

Une fois l'installation réalisée, c'est Chef qui prend la main pour configurer la machine.

20 minutes après la mise sous tension de la machine, elle est prête à l'emploi.
Ce temps est ramené à 10 minutes pour les machines virtuelles, la partie installation PXE n'ayant pas lieu d'être dans ce type d'environnement.

### Backport

Nous utilisons, au maximum, les paquets fournis par Debian. Il arrive cependant que certains paquets soient absent du projet, ou que la version disponible ne réponde pas entièrement à notre
besoin.

Dans ce cas, et ils sont rares, nous pratiquons le rétro-portage.
Cependant, même si les cas de rétro-portage sont rares, il n'est pas question de réaliser cette opération à la main: un seul paquet "raté" peut planter la prod.

En conséquence, nous industrialisons ce processus à l'aide de Jenkins, git et reprepro.
Ceci permet de gérer l'arborescence des sources upstream & Debian au sein d'un dépôt git et de gérer la construction des paquets sources & binaires de manière automatique.
Le tout est propulsé par jenkins-debian-glue.

La construction des paquets s'effectuant sur un système vierge, cela permet par exemple de vérifier que les dépendances sont satisfaites.

Une fois construit, les paquets sont disponibles dans un dépôt Debian de test interne à l'entreprise.
Lorsque la nouvelle version du paquet est jugée satisfaisante, le paquet est déplacé manuellement vers les dépôt de production et déployé.

### Améliorations

Il reste possible d'améliorer ce système. Par exemple, activer les vérifications Lintian permettra d'obtenir des paquets de meilleure facture.
De la même façon, l'utilisation de signature GPG pour les commit et les tag git ainsi que pour la construction des paquets permettra également de renforcer la sécurité de la chaîne.

### Les slides

Les diapos sont disponibles en ligne:

* sur Speakerdeck

{% oembed http://speakerdeck.com/jbfavre/debian-usage-at-blablacar-debian-paris-meetup %}

* sur Slideshare

{% oembed http://www.slideshare.net/jbfavre/debian-meetup20140604 %}

mais également :

* [depuis mon propre serveur](http://downloads.jbfavre.org/debian-meetup-20140604.pdf)

Merci à Sylvestre Ledru qui m'a donné l'opportunité de prendre la parole !
