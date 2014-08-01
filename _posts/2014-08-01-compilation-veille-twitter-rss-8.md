---
layout: post
title: "Compilation veille Twitter & RSS #8"
category: veille
---

La moisson de liens pour la semaine du 28 juillet au 1er août 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Big Data

[Moving faster with data streams: The rise of Samza at LinkedIn](http://engineering.linkedin.com/stream-processing/moving-faster-data-streams-rise-samza-linkedin)
:  Less than a year ago, we announced the first open source release of Apache Incubator Samza, a framework for processing big data streams. Today we are releasing Samza 0.7.0, a big milestone that reflects Samza's growing maturity.  
This is a good opportunity to look back at how far we've come in the last year. Samza is no longer a research project, but is now deployed in production at LinkedIn with a growing set of applications. In this post we'll explore how we're using Samza at LinkedIn, and maybe you'll walk away with some ideas on how it can solve your problems, too.

[Lambda Architecture with Apache Spark](https://speakerdeck.com/mhausenblas/lambda-architecture-with-apache-spark)
:  {% oembed https://speakerdeck.com/mhausenblas/lambda-architecture-with-apache-spark %}

[New in CDH 5.1: Apache Spark 1.0](http://blog.cloudera.com/blog/2014/07/new-in-cdh-5-1-apache-spark-1-0/)
:  Spark 1.0 reflects a lot of hard work from a very diverse community.  
Cloudera’s latest platform release, CDH 5.1, includes Apache Spark 1.0, a milestone release for the Spark project that locks down APIs for Spark’s core functionality.

[New in CDH 5.1: Document-level Security for Cloudera Search](http://blog.cloudera.com/blog/2014/07/new-in-cdh-5-1-document-level-security-for-cloudera-search/)
:  Cloudera Search now supports fine-grain access control via document-level security provided by Apache Sentry.  
In my previous blog post, you learned about index-level security in Apache Sentry (incubating) and Cloudera Search. Although index-level security is effective when the access control requirements for documents in a collection are homogenous, often administrators want to restrict access to certain subsets of documents in a collection. 

[New in CDH 5.1: Hue’s Improved Search App](http://blog.cloudera.com/blog/2014/07/new-in-cdh-5-1-hues-improved-search-app/)
:  Hue 3.6 (now packaged in CDH 5.1) has brought the second version of the Search App up to even higher standards. The user experience has been greatly improved, as the app now provides a very easy way to build custom dashboards and visualizations.

[How to interpret hidden state in Latent Markov Model](http://www.analyticsvidhya.com/blog/2014/07/interpret-hidden-state-latent-markov-model/)
:  In some of my previous articles, I have illustrated how Markov model can be used in real life forecasting problems. As described in these articles, Simple Markov model cannot be used for customer level predictions, because it does not take into account any covariates for predictions. Latent Markov model is a modified version of the same Markov chain formulation, which can be leveraged for customer level predictions. “Latent” in this name is a representation of “Hidden states”. In this article, our focus will not be on how to formulate a Latent Markov model but simply on what do these hidden state actually mean. This is a concept which I have found quite ambiguous in the web world and too much statistics to understand this simple concept. In this article, I will try to illustrate physical interpretation of this concept “Hidden state” using a simple example.

[Difference between Machine Learning and Statistics](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:189431)
:  I run into this question a lot and I have heard statisticians say things like we all do machine learning because none of us actually runs a regression or classification by hand on paper. We all use machine's.  
On the other hand - some computer scientist's I talk to say that when you use programmatic techniques to orchestrate an analytical flow compared to using a GUI in SAS / SPSS you are using machine learning.

### Hardware

[Here are the cache servers Netflix deploys in ISP network](https://www.netflix.com/openconnect/hardware?locale=en-EN)
:  Open Connect Appliances are servers based on commodity PC components (similar to the model used by all large scale content delivery networks). We were influenced by the excellent write-ups from the Backblaze team, and use a custom chassis due to a lack of ready made options for a compact unit.

### Sysadmin - ops

[A tool for showing the progress of cp, rm, dd, and friends](http://thechangelog.com/tool-showing-progress-cp-rm-dd-friends/)
:  `cv` — short for Coreutils Viewer — is a Linux (Mac port) tool which looks for coreutils basic commands (cp, mv, dd, tar, gzip/gunzip, cat, etc.) that are currently running on your system and displays the percentage of copied data.

[Petit Log Analysis](http://crunchtools.com/software/petit/)
:  Log analysis is something that all systems administrators know they need to do. Many of us come to this point, either because there is a problem, there is a security requirement from the organization, or it keeps you up all night wanting to know what is going on in all of that data. Looking for best practices for log analysis on The Internet is difficult at best. Many years ago, I discovered a script that hashed log files by removing all of their numbers and replacing them with "#" characters. The results of this simple algorithm were phenomenal, logs could be reduced by a factor of ten. This was much more readable, yet left much of the quality data that I needed to determine if there was a problem. In the years since I discovered that simple algorithm, I have come to discover many techniques on text analysis which are commonly used in linguistics and anthropology to analyze natural languages. This has led me to develop very simple best practices for analyzing logs.

[Kpatch, une alternative libre pour patcher son noyau à chaud !](http://blog.incloudus.com/2014/kpatch-alternative-libre-patcher-noyau-chaud/)
:  Enfin une solution prometteuse permettant d’appliquer les mises à jour de sécurité (et autres) du noyau à chaud, ce qui veut dire sans redémarrage du serveur.  
Avant, il existait Ksplice, une solution propriètaire détenue par la société Oracle mais ça c’était avant !  
Depuis quelques mois, RedHat et Suse se sont lancés dans la bataille pour chacun fournir leur solution alternative.

### Architecture

[Test de montée en charge : Tsung](http://blog.grossemy.fr/tuto-test-de-monter-en-charge-tsung/)
:  Lorsqu’une nouvelle infrastructure serveur et/ou applicative est mise en place, le besoin de la tester est vital pour la pérennité de celle-ci dans le futur. Des outils ont donc été créés pour simuler des « utilisateurs lambda » et ainsi donc générer de la charge.  
Tsung est un outil de stress-test écrit en Erlang et distribué sous licence GPL, capable de tester des serveurs HTTP, LDAP, MySQL et PostgreSQL entre autres.

[The Twitter stack - Braindump](http://blog.oskarsson.nu/post/40196324612/the-twitter-stack)
:  For various reasons, including performance and cost, Twitter has poured significant engineering effort into breaking down the site backend into smaller JVM based services. As a nice side effect we’ve been able to open source several of the libraries and other useful tools that came out of this effort.  
While there is a fair amount of information about these projects available as docs or slides I found no simple, high level introduction to what we can unofficially call the Twitter stack. So here it is. It’s worth noting that all this information is about open source projects, that it is public already and that I am not writing this as part of my job at Twitter or on their behalf.

[Revisiting 1 Million Writes per second](http://techblog.netflix.com/2014/07/revisiting-1-million-writes-per-second.html)
:  we showed how Cassandra (C*) scales linearly as you add more nodes to a cluster. With the advent of new EC2 instance types, we decided to revisit this test. Unlike the initial post, we were not interested in proving C*’s scalability. Instead, we were looking to quantify the performance these newer instance types provide.  
What follows is a detailed description of our new test, as well as the throughput and latency results of those tests.

[The Great Microservices vs Monolithic Apps Twitter Melee](http://highscalability.com/blog/2014/7/28/the-great-microservices-vs-monolithic-apps-twitter-melee.html)
:  Once upon a time a great Twitter melee was fought for the coveted title of Consensus Best Way to Structure Systems. The competition was between Microservices and Monolithic Apps.  
Flying the the logo of Microservices, from a distant cloud covered land, is the Kingdom of Netflix, whose champion was Sir Adrian Cockcroft (who has pledged fealty to another). And for the Kingdom of ThoughtWorks we have Sir Sam Newman as champion.

[Paper: ZooKeeper: Wait-free coordination for Internet-scale systems](http://highscalability.com/blog/2014/7/31/paper-zookeeper-wait-free-coordination-for-internet-scale-sy.html)
:  In this paper, we describe ZooKeeper, a service for coordinating processes of distributed applications. Since ZooKeeper is part of critical infrastructure, ZooKeeper aims to provide a simple and high performance kernel for building more complex coordination primitives at the client. It incorporates elements from group messaging, shared registers, and distributed lock services in a replicated, centralized service. The interface exposed by Zoo-Keeper has the wait-free aspects of shared registers with an event-driven mechanism similar to cache invalidations of distributed file systems to provide a simple, yet powerful coordination service.

[Preventing the Dogpile Effect - Problem and Solution](http://highscalability.com/blog/2014/7/30/preventing-the-dogpile-effect-problem-and-solution.html)
:  The Dogpile effect occurs when cache expires and websites are hit by numerous requests the same time. From my own experiences working on big-traffic websites this is what I consider best the best solution. It was used sucessfully in the wild and it worked. Many people mention storing two redundant values FRESH + STALE, but for big traffic websites it was killing our network. We thought it worth sharing our solution and starting a discussion for sharing experiences.

### Programing

[Explaining Ark Part 2: How Elections and Failover Currently Work](http://www.tokutek.com/2014/07/explaining-ark-part-2-how-elections-and-failover-currently-work/)
:  This is the second post in a series of posts that explains Ark, a consensus algorithm we’ve developed for TokuMX and MongoDB to fix known issues in elections and failover. The tech report we released last week describes the algorithm in full detail. These posts are a layman’s explanation.

[Explaining Ark Part 3: Why Data May Be Lost on a Failover](http://www.tokutek.com/2014/07/explaining-ark-part-3-why-data-may-be-lost-on-a-failover/)
:  This is the third post in a series of posts that explains Ark, a consensus algorithm we’ve developed for TokuMX and MongoDB to fix known issues in elections and failover. The tech report we released last week describes the algorithm in full detail. These posts are a layman’s explanation.  
In the first post, I discussed what the basics of replication are, how it works, and what the important components are: syncing data (or basic replication), elections, replication rollback, and write acknowledgement. In the second post, I explained the current election algorithm and discussed some high level problems. In this post, I assume the reader is familiar with the first two posts and discuss why data that has been successfully acknowledged with majority write concern may be lost in a failover.

### Cloud

[Elastic Load Balancing Connection Timeout Management](https://aws.amazon.com/blogs/aws/elb-idle-timeout-control/)
:  When your web browser or your mobile device makes a TCP connection to an Elastic Load Balancer, the connection is used for the request and the response, and then remains open for a short amount of time for possible reuse. This time period is known as the idle timeout for the Load Balancer and is set to 60 seconds. Behind the scenes, Elastic Load Balancing also manages TCP connections to Amazon EC2 instances; these connections also have a 60 second idle timeout. 

[I Have A Cloud...Now What? - Part 1: Building a 3-tier Webapp](https://developer.rackspace.com/blog/i-have-a-cloud-dot-dot-dot-now-what-part-1-building-a-3-tier-webapp/)
:  When we meet with customers, a constant set of questions we get asked goes something like this: "OK, now that I have access to a cloud, what do I do with it? How can I make sure I take full advantage of my cloud? How do I properly architect my webapps to leverage the resources cloud makes available to me?"  
All of these questions are great and merit a worthy answer. However, the truth is that talking about it can only get you so far - insert Project Touchstone: a collection of mini projects meant to extensively showcase how one should architect, consume, organize and orchestrate real-world web stacks on the infrastructures provided by the Rackspace Public & Private cloud.

[I Have A Cloud...Now What? - Part 2: Building a Redundant Webapp with Log Analysis](http://developer.rackspace.com/blog/i-have-a-cloud-dot-dot-dot-now-what-part-2-building-a-redundant-webapp-with-log-analysis)
:  Project Touchstone is intended to serve as a reference of actual usecases & examples for cloud applications in the Rackspace ecosystem.  
In this blog post, we will be continuing with our "I Have a Cloud...Now What?" series, and build out a redundant & scalable webapp that also showcases how one can easily organize & analyze the logs their apps produce in a novel & informational manner.

### Privacy

[Meet the online tracking device that is virtually impossible to block](http://www.propublica.org/article/meet-the-online-tracking-device-that-is-virtually-impossible-to-block)
:  A new, extremely persistent type of online tracking is shadowing visitors to thousands of top websites, from WhiteHouse.gov to YouPorn.com.  
First documented in a forthcoming paper by researchers at Princeton University and KU Leuven University in Belgium, this type of tracking, called canvas fingerprinting, works by instructing the visitor’s Web browser to draw a hidden image. Because each computer draws the image slightly differently, the images can be used to assign each user’s device a number that uniquely identifies it.

### Database

[What I learned while migrating a customer MySQL installation to Amazon RDS](http://www.mysqlperformanceblog.com/2014/07/28/what-i-learned-while-migrating-a-customer-mysql-installation-to-amazon-rds/)
:  Hi, I recently had the experience of assisting with a migration of a customer MySQL installation to Amazon RDS (Relational Database Service). Amazon RDS is a great platform for hosting your MySQL installation

[MariaDB: Selective binary logs events](http://www.mysqlperformanceblog.com/2014/07/31/mariadb-selective-binary-logs-events/)
:  In the first post in a series on MariaDB features we find interesting, we begin with selectively skipping replication of binlog events. This feature is available on MariaDB 5.5 and 10.  
By default when using MySQL’s standard replication, all events are logged in the binary log and those binary log events are replicated to all slaves (it’s possible to filter out some schema). But with this feature, it’s also possible to bypass some events to be replicated on the slave(s) even if they are written in the binary log. Having those event in the binary logs is always useful for point-in-time recovery.

[Apache Cassandra & Python for the The New York Times ⨍aбrik Platform](http://planetcassandra.org/blog/post/apache-cassandra-and-python-for-the-new-york-time-fabrik-platform/)
:   you’ll learn about how Apache Cassandra is used with Python in the NY Times ⨍aбrik messaging platform. Michael will start his talk off by diving into an overview of the NYT⨍aбrik global message bus platform and its “memory” features and then discuss their use of the open source Apache Cassandra Python driver by DataStax. Progressive benchmark to test features/performance will be presented: from naive and synchronous to asynchronous with multiple IO loops; these benchmarks tailored to usage at the NY Times. Code snippets, followed by beer, for those who survive. All code available on Github!  
{% oembed http://www.youtube.com/watch?v=ruKXgm2gEnU %}

[Cassandra Modeling for Real-Time Analytics](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:188840)
:  There is much discussion these days about Lambda Architecture and its benefits for developing high performance analytic architectures.  It offers a combination of a high performance, low latency ETL with a real-time layer, and a slower, more accurate, and flexible solution that runs in batch.  
As I work with it, I have learned to appreciate Cassandra’s relative “immortality” and fit for such analytic systems.  In a complex distributed system it’s nice to know you have one component that you can rely on without much tending.    Need to ingress 500k messages per second? No problem. Need to be highly available and regionally distributed? Again, no problem.

[Examining the TokuDB MySQL storage engine file structure](http://www.mysqlperformanceblog.com/2014/07/30/examining-the-tokudb-mysql-storage-engine-file-structure/)
:  As we know different storage engines in MySQL have different file structures. Every table in MySQL 5.6 must have a .frm file in the database directory matching the table name. But where the rest of the data resides depends on the storage engine.  
For MyISAM we have .MYI and .MYD files in the database directory (unless special settings are in place); for InnoDB we might have data stored in the single table space (typically ibdata1 in the database directory) or as file per table (or better said file per partition) producing a single file with .ibd extension for each table/partition. TokuDB as of this version (7.1.7) has its own innovative approach to storing the table contents.

### DNS

[delv, le futur outil principal de déboguage de DNSSEC ?](http://www.bortzmeyer.org/delv.html)
:  La version 9.10 de BIND vient avec un nouvel outil de déboguage en ligne de commande, delv. Qu'apporte-t-il par rapport à dig ? C'est surtout pour ce qui concerne DNSSEC qu'il est utile.  
L'outil de base de celui qui débogue un problème DNS, l'équivalent de ce que sont ping et traceroute pour l'ingénieur réseaux, c'est dig. Cet outil permet de récupérer des données DNS et de les afficher. Avec le DNS traditionnel, on n'avait pas besoin de plus. Mais avec DNSSEC, un problème supplémentaire survient : les données obtenues sont-elles vérifiées cryptographiquement ? dig avait bien une option +sigchase pour tester cela mais, très boguée, elle est restée peu connue. On n'avait donc pas d'outil simple, en ligne de commande, pour valider du DNSSEC. On a bien sûr drill (livré avec ldns) mais son option -S est très bavarde.

### Network

[Monitoring Edge Node Network Configuration](http://virtualandy.wordpress.com/2014/07/28/monitoring-edge-node-network-configuration/)
:  Over the last few months I’ve done a bit of work around monitoring, Open vSwitch, and XenServer. This post lists some of the networking/Open vSwitch specific items to monitor on hypervisors.

### PHP

[Understanding OpCache](http://www.sitepoint.com/understanding-opcache/)
:  PHP in version 5.5 comes with a caching engine built-in – OpCache – which stores precompiled script bytecode in the memory. If you’re familiar with APC or Xcache, you will already know how such engines work. As each PHP script is being compiled at runtime, a part of the execution time gets used for transforming the human readable code into code that can be understood by the machine. A bytecode cache engine like OpCache, APC or Xcache does it only once – during the first execution of a specific PHP file. Then the precompiled script is being stored in memory, which should lead to performance boosts in your PHP applications. 

[PHP and MySQL communication, mysqlnd](http://jpauli.github.io/2014/07/21/php-and-mysql-communication-mysqlnd.html)
:  Appeared with PHP5.3, mysqlnd is an unknown part of PHP. Yet, this extension is a must-have if your system relies heavily on the MySQL database server. We'll see what mysqlnd is, what it brings to PHP and how to use it.
