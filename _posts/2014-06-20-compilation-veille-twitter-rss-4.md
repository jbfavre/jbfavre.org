---
layout: post
title: "Compilation veille Twitter & RSS #4"
category: veille
---

La moisson de liens pour la semaine du 16 au 20 juin 2014.

Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

<!-- -->

### Linux Kernel

[SMP affinity and proper interrupt handling in Linux](http://www.alexonlinux.com/smp-affinity-and-proper-interrupt-handling-in-linux)
:  Hardware interrupts has always been expensive. Somehow these small pieces of software consume so much CPU power and hardware and software engineers has always been trying to change this state of affairs. Some significant progress has been made. Still hardware interrupts consume lots of CPU power.

### Cloud

[Building a smarter application Stack by Tomas Doran from Yelp](http://www.slideshare.net/dotCloud/building-a-smarter)
:  {% oembed http://www.slideshare.net/dotCloud/building-a-smarter %}

[Centurion](https://github.com/newrelic/centurion)
:  A deployment tool for Docker. Takes containers from a Docker registry and runs them on a fleet of hosts with the correct environment variables, host volume mappings, and port mappings. Supports rolling deployments out of the box, and makes it easy to ship applications to Docker servers.

[CoreOS Officially on Rackspace OnMetal Cloud Servers](http://coreos.com/blog/coreos-on-rackspace-onmetal-cloud-servers/)
:  Earlier this morning at Structure, Rackspace announced OnMetal, their API-driven, single-tenant infrastructure-as-a-service offering. We are excited to announce that CoreOS will be available at launch!  
Rackspace OnMetal Cloud Servers is the first of its kind. Using OnMetal you create machine instances using OpenStack APIs but, instead of being provisioned a virtual machine, you are provisioned physical hardware. All of this happens with the speed and ease you’ve come to expect for cloud deployments - on demand.

### Log Management

[Apache / Nginx: Visualize Web Server Access Log In Real Time](http://www.cyberciti.biz/open-source/use-logstalgia-apachepong-as-website-access-log-realtime-visualization-tool/)
:  Logstalgia (also known as ApachePong) is a very powerful and handy app. It is a website access log visualization tool. It is an extremely useful tool to give you look at your web server traffic. I often use this kind of software to justify and convince my clients and/or boss that we need more servers to handle traffic. It streams Apache / Lighttpd / Nginx web-server access logs as a pong-like battle between the web server and a never ending torrent of requests.

### GIT

[git-flow cheatsheet](http://danielkummer.github.io/git-flow-cheatsheet/)
:  git-flow are a set of git extensions to provide high-level repository operations for Vincent Driessen's branching model.

### Nginx

[How To Use Nginx as a Global Traffic Director on Debian or Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-use-nginx-as-a-global-traffic-director-on-debian-or-ubuntu)
:  As your customer base grows, so does the distance between your server(s) and your customers. We all know that if your server load increases – you scale. But what to do when distance is the problem?  
The solution is simple: install server(s) in geographical locations closer to your customer base and direct them based on their location. But how do we do this easily while being cost effective? 

[Accélérer SSL : réutilisation des sessions](http://vincent.bernat.im/fr/blog/2011-sessions-ssl-rfc5077.html)
:  La réutilisation des session est l’un des mécanismes les plus importants pour améliorer les performances de SSL : le client peut effectuer une poignée de mains raccourcie en soumettant dès sa seconde requête une donnée présentée précédemment par le serveur, permettant ainsi de réduire la latence et les temps de calcul. Il existe deux mécanismes distincts à cet effet: les identifiants de session qui sont décrits dans la RFC 5246 et les tickets de session qui sont présentés dans la RFC 5077.

### Network

[Understanding Application Performance on the Network – Part II: Bandwidth and Congestion](http://apmblog.compuware.com/2014/06/19/understanding-application-performance-on-the-network-bandwidth-and-congestion/)
:  When we think of application performance problems that are network-related, we often immediately think of bandwidth and congestion as likely culprits; faster speeds and less traffic will solve everything, right? This is reminiscent of recent ISP wars; which is better, DSL or cable modems? Cable modem proponents touted the higher bandwidth while DSL proponents warned of the dangers of sharing the network with your potentially bandwidth-hogging neighbors. In this blog entry, we’ll examine these two closely-related constraints, beginning the series of performance analyses using the framework we introduced in Part I. I’ll use graphics from Compuware’s application-centric protocol analyzer – Transaction Trace – as illustrations.

### Elasticsearch

[Elasticseach Hadoop certified for Cloudera CDH5](http://www.elasticsearch.org/blog/elasticseach-hadoop-certified-cloudera-cdh5/)
:  Since the beginning, Elasticsearch for Apache Hadoop 2.0 (es-hadoop) has been tested against the popular CDH distribution and, during the few last months, we have been working closely with Cloudera to complete the process. With this certification in place, we can offer users complete peace of mind that Elasticsearch is thoroughly tested and validated against the CDH environment.

[Call me maybe: Elasticsearch](http://aphyr.com/posts/317-call-me-maybe-elasticsearch)
:  Elasticsearch is a distributed search engine, built around Apache Lucene–a well-respected Java indexing library. Lucene handles the on-disk storage, indexing, and searching of documents, while ElasticSearch handles document updates, the API, and distribution. Documents are written to collections as free-form JSON; schemas can be overlaid onto collections to specify particular indexing strategies.

### Databases

[What is the best Linux filesystem for MariaDB?](https://mariadb.com/blog/what-best-linux-filesystem-mariadb)
:  How do you choose the best Linux filesystem for your MariaDB server? The primary factors to look at are data integrity, performance, and ease of administration. Data integrity tops the list because fixing a corrupted database is even less fun than it sounds, and filesystems play a key role in data integrity. Performance is important because faster is better and time is money, and ease of administration matters for the same reasons as performance.

[Using UDFs for geo-distance search in MySQL](http://www.mysqlperformanceblog.com/2014/06/19/using-udfs-for-geo-distance-search-in-mysql/)
:  In my previous post about geo-spatial search in MySQL I described (along with other things) how to use geo-distance functions. In this post I will describe the geo-spatial distance functions in more details.  
If you need to calculate an exact distance between 2 points on Earth in MySQL (very common for geo-enabled applications) you have at least 3 choices.

### HTTP

[Redirection 307 et 308](http://sametmax.com/redirection-307-et-308/)
:  Le standard HTTP 1.1 vient de subir une mise à jour.  
Oui, LE standard HTTP 1.1. La fameuse RFC2616, qui n’a pas été touchée depuis l’année de sortie de The Matrix (coïncidence ? Je ne pense pas…).  
Bref, qu’est-ce qui change ?  
Essentiellement la forme, qui permettra à la RFC de HTTP 2.0 de faire référence à des parties de celle de la HTTP 1.1, maintenant divisée en 8, et évitera de se répéter.  
Le web ne va donc pas casser.

### Android

[Votre intimité face à Android et ses autorisations, première partie.](http://pixellibre.net/2014/06/votre-intimite-face-a-android-et-ses-autorisations/)
:  C’était le 06 juin, dans ce tweet envoyé un peu à l’arrache, je m’étonnais de la mise à jour des conditions d’affichage des autorisations dans les applications pour Android, je me suis, depuis, étonné du traitement de cette information, pour ainsi dire pas reprise.

[Votre intimité face à Android et ses autorisations, seconde partie.](http://pixellibre.net/2014/06/votre-intimite-face-a-android-et-ses-autorisations-seconde-partie/)
:  nous allons décrire un peu plus en détail les autorisations sous les systèmes android : il faut bien savoir quoi protéger pour faire attention, non ?  
Nous allons commencer assez simplement : il y a plus de 150 autorisations différentes sous android et, de prime abord, ça peut sembler assez énorme. C’est d’ailleurs pour ça que nous allons faire le point.

### BitCoin

[Tout savoir sur les adresses Bitcoin](http://www.miximum.fr/tout-savoir-sur-les-adresses-bitcoin.html)
:  Dans un précédent billet, nous avons étudié un peu le fonctionnement du protocole Bitcoin. Aujourd'hui, nous allons nous intéresser à une partie très spécifique de ce protocole : les adresses.  
Rapide rappel. Pour recevoir des Bitcoins, il faut disposer d'une adresse Bitcoin, comme 1J3BnzUeHubrjdMuBjSPtpUy2wv7RchNyy. Pour dépenser les Bitcoins disponibles à cette adresse, il faut connaître la clé secrète associée (en l'occurrence, 5Jd4kDBTJnDmQwLv94gjWheWwsrvmRMGfLj438BBLdRtw4axSAy).
