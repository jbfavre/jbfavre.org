---
layout: post
title: "RTFM, encore et toujours tu appliqueras..."
category: sysadmin
tags: [debian]
---

Wireshark est très pratique.

Mais sous Linux, par défaut, vous devez être root pour pouvoir intercepter le trafic sur une interface réseau.


Wireshark dispose de beaucoup de filtres & de décodeurs. Ils sont extrêmement puissants et pratiques. Mais ils sont parfois boggués.

Du coup, faire tourner Wireshark en tant que root devient potentiellement dangereux... mais tellement pratique.

Sous GNU/Linux Debian, je ne sais pas comment cela se passe avec d'autres distributions, il existe pourtant une solution. Elle est décrite dans le fichier `/usr/share/doc/wireshark/README.Debian`


> Members of the wireshark group will be able to capture packets on network interfaces.


Arf... on devrait toujours __RTFM__... toujours... surtout quand on pense ne pas en avoir besoin :)
