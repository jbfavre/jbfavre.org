---
layout: post
title: "Compilation veille Twitter & RSS #2"
category: veille
---

La moisson de liens pour la semaine du 02 au 06 juin 2014.

Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

<!-- -->

#### MySQL

[Do not trust vmstat IOwait numbers](http://www.mysqlperformanceblog.com/2014/06/03/trust-vmstat-iowait-numbers/)
:  I’ve been running a benchmark today on my old test box with conventional hard drives (no raid with BBU) and noticed something unusual in the CPU utilization statistics being reported.

[High Availability with MySQL Fabric: Part II](http://www.mysqlperformanceblog.com/2014/05/30/high-availability-mysql-fabric-part-ii/)
:  This is the third post in our MySQL Fabric series. If you missed the previous two, we started with an overall introduction, and then a discussion of MySQL Fabric’s high-availability (HA) features. MySQL Fabric was RC when we started this series, but it went GA recently. You can read the press release here, and see this blog post from Oracle’s Mats Kindahl for more details. In our previous post, we showed a simple HA setup managed with MySQL Fabric, including some basic failure scenarios. Today, we’ll present a similar scenario from an application developer’s point of view, using the Python Connector for the examples. If you’re following the examples on these posts, you’ll notice that the UUID for servers will be changing. That’s because we rebuild the environment between runs. Symbolic names stay the same though.

[How MySQL ‘queries’ and ‘questions’ are measured](http://www.mysqlperformanceblog.com/2014/05/29/how-mysql-queries-and-questions-are-measured/)
:  MySQL has status variables “questions” and “queries” which are rather close but also a bit different, making it confusing for many people. The manual describing it might not be very easy to understand.

[How important is it to use 2-byte and 3-byte integers?](http://www.tocker.ca/2014/05/30/how-important-is-it-to-use-2-byte-and-3-byte-integers.html)
:  One interesting feature of MySQL, is that it supports a very large number of integer data types.

#### Virtualization

[Containerize with Docker](http://blog.zedroot.org/containerize-with-docker/)
:  Docker is an application developed in Go language originally by the founder of dotCloud: Solomon Hykes.  
Today the Git repository contains 8 450 commits, thanks to the 441 contributors, with the very first commit created on the 19th of January, 2013.

#### PHP

[HHVM 3.1.0](http://hhvm.com/blog/5195/hhvm-3-1-0)
:  This release bisected our semi-annual lockdown. If you remember last time we focused on framework unit tests, performance, and growing beards. This time, our frameworks were in good shape thanks to Fred and our Open Academy students, but our github story was not as pretty. At the start of lockdown we had 60 pull requests and nearly 450 issues. So our focus this time was github health and of course as always, perf.

#### Big Data / DataViz

[New SQL Choices in the Apache Hadoop Ecosystem: Why Impala Continues to Lead](http://blog.cloudera.com/blog/2014/05/new-sql-choices-in-the-apache-hadoop-ecosystem-why-impala-continues-to-lead/)
:  Impala continues to demonstrate performance leadership compared to alternatives (by 950% or more), while providing greater query throughput and with a far smaller CPU footprint.

[Using InfiniDB MySQL server with Hadoop cluster for data analytics](http://www.mysqlperformanceblog.com/2014/06/02/using-infinidb-engine-mysql-hadoop-cluster-data-analytics/)
:   I’ve tried InfiniDB for Hadoop (open-source version) on the modern hardware with an 8-node Hadoop cluster. One of the main advantages (at least for me) of InifiniDB for Hadoop is that it stores the data inside the Hadoop cluster but uses the MySQL server to execute queries. This allows for an easy “migration” of existing analytical tools. The results are quite interesting and promising.

[alternatives to pies ](http://www.storytellingwithdata.com/2014/06/alternatives-to-pies.html)
:  My disdain for pie charts is well documented. While opinions on their usefulness run the gamut, I am certainly not alone in my contempt. In my workshops, I sometimes get the question, "In what situation would you recommend a pie chart?" For me, the answer is never.* There are a number of alternatives, each with their own benefits. It's these alternatives that I'll focus on in this post.

#### DataScience

[Dimensional Modelling](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:173276)
:  There isn’t any specific standard to model data warehouse. It can be built either using the “dimensional” model or the “normalised” model methodologies. Normalised model normalises the data into third normal form (3NF) whereas dimensional model collects the transactional data in the form of facts and dimensions. Normalised model is easy to use as we can add related topics without affecting the existing data. But one must have good knowledge of how data is associated before performing specific query, so it might be difficult to handle. Reporting queries may not execute as well because massive numbers of tables may be involved in each query. Dimensional model is very efficient to use for non experts and performs pretty well as data is classified in a logical way and similar types of data are stored together. But while adding new topics whole warehouse must be reprocessed (Jones and Johnson, 2010).

[4 Things to Do with Customer Data](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:173802)
:  You’ve gathered up customer data which is more valuable than gold, but now what? Whether you paid for big data, got it for free or conducted your own surveys to drum it up, that’s only the first half of the battle. Data usually has a shelf life, often very short, and if you don’t organize it and analyze it right away, all your efforts become moot. There are nearly limitless things you can do with data depending on your goals and business.

#### Web

[La revanche des interfaces textuelles](http://www.simpleweb.fr/2014/05/30/la-revanche-des-interfaces-textuelles/)
:  Dans la chronologie des interfaces homme-machine, il y a eu les interfaces à lignes de commande (Command-line interface), puis les interfaces textuelles (Text-based user interface) et enfin les interfaces graphiques (Graphical user interface) qui sont devenues la référence aussi bien pour les applications que pour les sites web. Pourtant, à une époque pas si lointaine, les sites web n’étaient composés que de textes et de tableaux. Entre-temps, il y a eu différentes modes graphiques, dont des choses très expérimentales en Flash, mais ces dernières années nous assistons un retour à la simplicité avec le flat design. Il n’y a plus qu’au cinéma que l’on fantasme sur des choses très spectaculaires (Des interfaces textuelles aux interfaces fictionnelles).

#### Big Data

[Big data : quelques mythes](http://blog.octo.com/big-data-quelques-mythes/)
:  Le sujet continue de prendre de l’ampleur, et en particulier auprès du grand public, ce qui a pour effet d’agacer beaucoup de monde. Chaque succès trouve sa critique…  
On peut légitimement se demander comment le public parvient à comprendre le Big Data. Entre les journalistes simplificateurs, les aigris agacés par l’utilisation du terme et les vendeurs qui promettent des miracles, pas facile de s’y retrouver. Je vais essayer dans cet article de démonter quelques mythes et de redéfinir le terme.

#### PHP

[HHVM et Hack : slides de ma présentation à l'AperoPHP lyonnais du 27 mai](http://blog.pascal-martin.fr/post/hhvm-hack-slides-aperophp-lyon-mai-2014)
:  Lors de l’ApéroPHP lyonnais du 27 mai 2014, j’ai eu l’occasion de donner une présentation de HHVM et Hack. Après quelques mots sur le moteur d’exécution HHVM, j’ai passé en revue une partie des points que le langage Hack apporte par rapport à PHP.

#### Virtualization

[Virtualisation légère avec Docker](http://blog.nicolargo.com/2014/06/virtualisation-legere-docker.html)
:  Dans le petit monde des DevOps, la solution de virtualisation Docker a le vent en poupe. Nous allons dans ce billet essayer de décrypter ce qui ce cache derrière ce nouvel outil et proposer un tutoriel sur l'installation et les premiers pas pour une utilisation souple et efficace.

#### Infra / DNS

[Introduction à DNSSEC](http://blog.blaisot.org/dnssec-intro.html)
:  Le système DNS permet de faire l'association entre un nom humainement comprésensible et une adresse IP (et vice-versa). Le fonctionnement du DNS a été défini et implémenté dans les années 80, à une époque où la sécurité sur internet n'était pas encore une préoccupation.
