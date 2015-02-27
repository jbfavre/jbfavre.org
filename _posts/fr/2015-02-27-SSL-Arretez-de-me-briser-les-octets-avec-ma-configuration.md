---
layout: post
title: "SSL - Arrêtez de me briser les octets avec ma configuration"
category: sysadmin
tags: [tls,security,troll]
date: 2015-02-27 21:00 +0100
---

Les tests SSL fleurissent sur le Net. Il s'agit de vérifier que la configuration 
de votre serveur respecte "l'état de l'art". Mais sont-ils aussi pertinents que 
l'on veut bien le croire ?

La note obtenue en fin de test s'échelonne de A, parfois agrémenté d'un +,
jusqu'à... loin dans l'alphabet.

Outre que, bien souvent, la définition même de "l'état de l'art" est loin d'être
acquise et partagée, la note finale peut en réalité être très très loin du niveau
de sécurité obtenu "dans la vraie vie"™.  
Le paramétrage SSL faisant l'objet d'une négociation, le niveau réel de sécurité
dépend de 2 facteurs principaux:

- ce que le serveur supporte et offre
- ce que le client supporte et accepte

Mais il dépend aussi de la "fermeté" des négociateurs, c'est-à-dire au respect
de la priorité des choix proposés.

Actuellement, on ne se concentre que sur le premier point, et encore de manière
un peu brutale:

> Tu supportes RC4 ? pas de bol, nous on aime pas...

Alors, bien sûr, les esprits chaffouins m'opposeront que `RC4` c'est mal, c'est
tout cassé... Certes.  
Reste que mieux vaut un chiffrement faible que pas de chiffrement du tout, non ?

Assez curieusement, ce raisonnement est à peu près accepté pour la sécurisation
d'un serveur de mail ou jabber, pas du tout pour un serveur web.  
Pourtant, c'est exactement le même principe.

Le but premier d'Internet est de communiquer. Une application trop restrictive
d'une sécurité rêvée, au sens de souhaitée pas imaginée, va à l'encontre de ce
principe.  
Quid de l'internaute qui, quelqu'en soit la raison, utilise une vieille version
d'un navigateur ? C'est dommage, nous somme bien d'accord, mais avons-nous
réellement la capacité d'en deviner la raison, et surtout, de faire quelque
chose pour corriger cela ?

Négligence, manque de temps, ignorance des enjeux, absence de moyens financiers
pour renouveler un système d'exploitation obsolète, les raisons sont diverses
et nous ne les connaissons pas. En quoi donc devrions-nous leur interdire
l'accès à notre serveur ?

Un certain nombre de principes devraient être remis au goût du jour:

- Le serveur doit privilégier la compatibilité. De ce fait, il devrait supporter
  le panel de protocoles/algorythmes le plus large possible tout en privilégiant
  un chiffrement fort lorsque supporté par le client.
- Le client lui, supporte les protocoles/algo qu'il souhaite (ce peut être un
  choix de l'admin). Si la négociation échoue, c'est le problème du client, pas
  celui du serveur (ou presque).

Est-ce à dire qu'il faut autoriser n'importe quoi ?  
Si un client et un serveur supportent tous deux les dernières version des
protocoles, ainsi que les algorithmes les plus robustes, faut-il pour autant
tolérer la négotiation d'un chiffrement faible ?  
Faut-il, sous prétexte de compatibilité, continuer à autoriser un chiffrement
tellement faible qu'il peut-être cassé très rapidement pas le premier venu ?

Non bien sûr.  
Néanmoins, une énumération des capacités de chiffrement d'un serveur sous la
forme du liste à la Prévert accompagnée de la distribution des bons et mauvais
point n'ont, en fait, aucun intérêt. Il peuvent même avoir des effets pervers
en incitant l'administrateur pressé à appliquer une configuration en réalité
trop restrictive.

En revanche, le résultat __pratique__ de la négociation me paraît, lui,
bougrement plus pertinent !

Le seul test qui me fera vraiment réfléchir à la configuration SSL de mon
serveur est donc celui qui fonctionnera de la manière suivante:

> Implémentation d'un client qui tentera de se connecter avec une configuration
  très restrictive. Le cas échéant, le niveau de la configuration sera
  progressivement ouvert jusqu'à un niveau plancher en dessous duquel le client
  cessera d'essayer de se connecter.

La note finale du serveur reflètera donc le niveau pratique du chiffrement, pas
un niveau fantasmé.

Reste que parfois, il convient tout de même de vérifier l'abandon d'un protocole
devenu trop dangereux, par exemple SSL, version 3 incluse. Ceci nous laisse tout
de même une marge de manœuvre certaine.

Alors, soyez gentil, cessez de me briser les octets avec vos histoire de notes
SSL. Arrêtez d'être binaires et réfléchissez.  
Faites un test _pertinent_ et on en reparle.
