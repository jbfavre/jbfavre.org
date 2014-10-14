---
layout: post
title: "Compilation veille Twitter & RSS #15"
category: veille
---

La moisson de liens pour les semaine du 13 au 17 octobre 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Architecture

[Micro-caching & Nginx](http://blog-notes.jbfavre.org/?microcaching-amp-nginx,3050) (on my own blog)
: When you want to speed up you web server, you usually try to setup caching.  
That's great when your backend application is "cache aware". So are various apps like Wordpress or other blog engines.  
But, not every application are "cache aware", and you could still want to be able to cache pages and/or assets. Here comes micro-caching.  
The idea behind micro-caching is to be able to cache ressources for a short time. Time will depend on application behaviour, but think of it as it's still better to show a stale ressource than an error page.

[How League of Legends Scaled Chat to 70 million Players - It takes Lots of minions](http://highscalability.com/blog/2014/10/13/how-league-of-legends-scaled-chat-to-70-million-players-it-t.html) (via Olivier Dolbeau)
: How would you build a chat service that needed to handle 7.5 million concurrent players, 27 million daily players, 11K messages per second, and 1 billion events per server, per day?  
What could generate so much traffic? A game of course. League of Legends. League of Legends is a team based game, a multiplayer online battle arena (MOBA), where two teams of five battle against each other to control a map and achieve objectives.

[RFC 7365: Framework for Data Center (DC) Network Virtualization](http://www.bortzmeyer.org/7365.html)
: Ce nouveau RFC décrit le cadre général de la virtualisation de réseaux en utilisant IP comme substrat. Il est issu du projet NVO3 de l'IETF, qui a produit une description du problème (dans le RFC 7364) et ce document. À ce stade, ce n'est pas encore un protocole concret, même s'il existe déjà des solutions techniques partielles pour ce problème.

[RFC 7364: Problem Statement: Overlays for Network Virtualization](http://www.bortzmeyer.org/7364.html)
: En informatique, depuis les débuts des temps, on a de plus en plus virtualisé. Le processeur, puis la mémoire, puis des machines entières. Désormais, il est donc logique qu'on cherche à virtualiser le réseau. Par exemple, est-il possible de fournir, dans un centre d'hébergement de données, plusieurs centres de données virtuels, chacun complètement isolé des autres, et permettant de déployer, non pas une seule machine mais tout un réseau ? Il n'y a pas encore de solution technique complète pour ce problème mais ce RFC fournit au moins une description détaillée du problème.

[5 Things You Shouldn't Store in the Cloud](http://cloud.dzone.com/articles/5-things-you-shouldnt-store)
: Mobile users and enterprises are turning to the cloud to meet their storage needs, backing up a variety of data from emails to pictures. While the cloud can act as storage expansion and major cost saver for those with limited storage space, there are a few things that are best stored elsewhere.

### Big Data

[Hadoop 2.0 as Part of a Data Platform: It’s Not Just About Mapreduce!](http://java.dzone.com/articles/hadoop-part-data-platform-it%E2%80%99s)
: I’m fascinated by big data and all of it’s applications. The idea of building things that can process petabytes of data and information and find meaningful insight on relatively cheap commodity hardware really excites me.  
I was talking to someone at a networking event recently, and we were talking about the “big data” phenomenon. The guy said to me, “That’s all that mapreduce stuff, I know mapreduce. Maybe I should become a big data architect!” He then went on to discuss how it’s “all a fad.” 

### Redis

[So, You’re Looking for the Redis GUI?](http://java.dzone.com/articles/so-youre-looking-redis-gui)
: It all comes down to preferences. While there are Redis users who are familiar with the Redis command line interface (CLI) and rely on it to inspect, visualize and perform manual updates, there are those who prefer to using a Graphical User Interface (GUI) to achieve that. There are several Redis GUIs available, for different platforms, and in this article I'll try to review a few of them.

### Dev

[How to draw a Control flow graph & Cyclometric complexity for a given procedure](http://java.dzone.com/articles/how-draw-control-flow-graph)
: Cyclomatic complexity is a software metric used to measure the complexity of a program.  
This metric measures independent paths through the program's source code. An independent path is defined as a path that has at least one edge which has not been traversed before in any other paths.

### MySQL

[InnoDB General Tablespaces – Preview](http://mysqlserverteam.com/innodb-general-tablespaces-preview/)
: The new InnoDB Labs release contains the ability to create and use independent multi-table general tablespaces.  
This feature will provide a way to group tables together into tablespaces at a location and filename of your choosing.  Tables using row formats of Redundant, Compact, and Dynamic can be combined together into the same general tablespace. Compressed tables with the same key_block_size can also be combined together.

[How to avoid hash collisions when using MySQL’s CRC32 function](http://www.percona.com/blog/2014/10/13/how-to-avoid-hash-collisions-when-using-mysqls-crc32-function/)
: Percona Toolkit’s  pt-table-checksum performs an online replication consistency check by executing checksum queries on the master, which produces different results on replicas that are inconsistent with the master – and the tool pt-table-sync synchronizes data efficiently between MySQL tables.  
The tools by default use the CRC32. Other good choices include MD5 and SHA1. If you have installed the FNV_64 user-defined function, pt-table-sync will detect it and prefer to use it, because it is much faster than the built-ins. You can also use MURMUR_HASH if you’ve installed that user-defined function. Both of these are distributed with Maatkit. For details please see the tool’s documentation.

### Monitoring

[Smokeping custom Curl probe](http://blog-notes.jbfavre.org/?smokeping-custom-curl-probe,3049) (on my own blog)
: I just released a custom Curl probe for smokeping.  
Curl probe only fetch load time (that is, total time minus DNS resolution time). But I needed to be able to measure various response times
