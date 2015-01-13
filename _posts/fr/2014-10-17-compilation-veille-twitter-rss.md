---
layout: post
title: "Compilation veille Twitter & RSS"
date: "2014-10-17 18:00:00 +0200"
category: veille
---

La moisson de liens pour les semaine du 13 au 17 octobre 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### SSL

[Some POODLE notes](http://blog.erratasec.com/2014/10/some-poodle-notes.html)
: Heartbleed and Shellshock allowed hacks against servers (meaning websites and such). POODLE allows hacking clients (your webbrowser and such). If Hearbleed/Shellshock merited a 10, then this attack is only around a 5.

[The Poodle SSLv3](http://blog.loadbalancer.org/the-poodle-sslv3/)
: So here we go again!  
SSL is broken once more and this one now leaves us with no SSL Ciphers that we can reliably use in a live production site so I guess this now forces us to use the TLS suite of ciphers which in the past have also had problems.

[A Poodle proof, bulletproof Nginx SSL configuration](https://t37.net/a-poodle-proof-bulletproof-nginx-ssl-configuration.html)
: 2014 has been an annus horribilis (yes, with 2 « n ») for SSL. Both protocols and implementations have known several critical vulnerabilities from Heartbleed to Poodle. The good news is: SSLv3 is finally dead, it’s time to move to something else.

[HAProxy and sslv3 poodle vulnerability](http://blog.haproxy.com/2014/10/15/haproxy-and-sslv3-poodle-vulnerability/)
: Yesterday, Google security researchers have disclosed a new vulnerability on SSL protocol.  
Fortunately, this vulnerability is only on an old version of the SSL protocol: SSLv3 (15 years old protocol).  
An attacker can force a browser to downgrade the protocol version used to cipher traffic to SSLv3 in order to exploit the POODLE vulnerability and access to data in clear.

[The POODLE Attack and the End of SSL 3.0](https://blog.mozilla.org/security/2014/10/14/the-poodle-attack-and-the-end-of-ssl-3-0/)
: SSL version 3.0 is no longer secure. Browsers and websites need to turn off SSLv3 and use more modern security protocols as soon as possible, in order to avoid compromising users’ private information.  
We have a plan to turn off SSLv3 in Firefox. This plan was developed with other browser vendors after a team at Google discovered a critical flaw in SSLv3, which can allow an attacker to extract secret information from inside of an encrypted transaction. SSLv3 is an old version of the security system that underlies secure Web transactions and is known as the “Secure Sockets Layer” (SSL) or “Transport Layer Security” (TLS).

### Architecture

[Micro-caching & Nginx](http://blog-notes.jbfavre.org/?microcaching-amp-nginx,3050) (on my own blog)
: When you want to speed up you web server, you usually try to setup caching.  
That's great when your backend application is "cache aware". So are various apps like Wordpress or other blog engines.  
But, not every application are "cache aware", and you could still want to be able to cache pages and/or assets. Here comes micro-caching.  
The idea behind micro-caching is to be able to cache ressources for a short time. Time will depend on application behaviour, but think of it as it's still better to show a stale ressource than an error page.

[Increase Your Hit Ratio With This Simple Tip](http://www.fastly.com/blog/varnish-tip-case-insensitivity)
: If you're caching URLs that include user input, such as a search box, and the search is case insensitive, there's a really easy way to increase your hit ratio: convert the URL to lowercase.

[How League of Legends Scaled Chat to 70 million Players - It takes Lots of minions](http://highscalability.com/blog/2014/10/13/how-league-of-legends-scaled-chat-to-70-million-players-it-t.html) (via Olivier Dolbeau)
: How would you build a chat service that needed to handle 7.5 million concurrent players, 27 million daily players, 11K messages per second, and 1 billion events per server, per day?  
What could generate so much traffic? A game of course. League of Legends. League of Legends is a team based game, a multiplayer online battle arena (MOBA), where two teams of five battle against each other to control a map and achieve objectives.

[RFC 7365: Framework for Data Center (DC) Network Virtualization](http://www.bortzmeyer.org/7365.html)
: Ce nouveau RFC décrit le cadre général de la virtualisation de réseaux en utilisant IP comme substrat. Il est issu du projet NVO3 de l'IETF, qui a produit une description du problème (dans le RFC 7364) et ce document. À ce stade, ce n'est pas encore un protocole concret, même s'il existe déjà des solutions techniques partielles pour ce problème.

[RFC 7364: Problem Statement: Overlays for Network Virtualization](http://www.bortzmeyer.org/7364.html)
: En informatique, depuis les débuts des temps, on a de plus en plus virtualisé. Le processeur, puis la mémoire, puis des machines entières. Désormais, il est donc logique qu'on cherche à virtualiser le réseau. Par exemple, est-il possible de fournir, dans un centre d'hébergement de données, plusieurs centres de données virtuels, chacun complètement isolé des autres, et permettant de déployer, non pas une seule machine mais tout un réseau ? Il n'y a pas encore de solution technique complète pour ce problème mais ce RFC fournit au moins une description détaillée du problème.

[5 Things You Shouldn't Store in the Cloud](http://cloud.dzone.com/articles/5-things-you-shouldnt-store)
: Mobile users and enterprises are turning to the cloud to meet their storage needs, backing up a variety of data from emails to pictures. While the cloud can act as storage expansion and major cost saver for those with limited storage space, there are a few things that are best stored elsewhere.

[How to use RabbitMQ with PHP](http://www.sitepoint.com/use-rabbitmq-php/)
: AMQP (Advanced Message Queueing Protocol) is a network protocol that can deliver messages from one application endpoint to another application endpoint. It does not matter the platform or language of said applications, as long as they support AMQP.

### Analytics

[Machine Learning in Security Part 1: Language Model Detection in Domains](http://labs.opendns.com/2014/10/16/detecting-pinyin-domains/)
: At OpenDNS our resolvers are flooded with massive amounts of Chinese domains on a daily basis, many of which security researchers are unfamiliar with. One of the projects our team was initially tasked with was to come up with a method to filter these Chinese domains out from the rest of the traffic in order to reduce the false positive rate for our classifier algorithms and to potentially detect IPs exhibiting spamming or search engine optimization (SEO) behavior. Pinyin is the official phonetic system for transcribing Mandarin pronunciations into the Latin alphabet; it is one of the ways to represent Mandarin or Cantonese on the Internet, specifically in DNS.

[Introduction to Artificial Neural Network : Simplified](http://www.analyticsvidhya.com/blog/2014/10/introduction-neural-network-simplified/)
: Here is yet another algorithm used by the industry to scare ignorant freshers. The tag line for this algorithm is “It works in a way, similar to human brain.” Even though researchers across the world have a lot to discover on this subject. Anyways, the first time I started reading about the algorithm, I realized that even though brain functionality might be very complex, artificial neural network algorithm is not as complex as its impression in the industry.

[Identifying the Behavioral Patterns of a Spam Network](http://labs.opendns.com/2014/10/14/identifying-behavioral-patterns-spam-network/)
: In 2013, email spam accounted for approximately 69% of all internet email traffic [Kaspersky]. Economists predict email spam costs American businesses and consumers approximately $20 billion annually, with spammers making a return of approximately $200 million per year [Rao, Reiley]. Rao and Reiley also note that spam provides nefarious individuals with one of the cheapest returns on investment as the production of spam is incredibly cheap.

### Big Data

[Working with external data and API's in the Data Science Studio](http://www.dataiku.com//blog/2014/10/15/external-data-and-API.html)
: The Data Science Studio makes it possible to create an end-to-end analytical workflow using API's and services from different providers.

[New in CDH 5.2: More SQL Functionality and Compatibility for Impala 2.0](http://blog.cloudera.com/blog/2014/10/new-in-cdh-5-2-more-sql-functionality-and-compatibility-for-impala-2-0/)
: As we reported in the most recent roadmap update (“What’s Next for Impala: Focus on Advanced SQL Functionality”), more complete SQL functionality (and better SQL compatibility with other vendor extensions) is a major theme in Impala 2.0.  
In this post, we’ll describe the highlights (not a complete list), and provide links to the docs that drill-down on these functions.

[Cloudera Enterprise 5.2 is Released](http://blog.cloudera.com/blog/2014/10/cloudera-enterprise-5-2-is-released/)
: This release reflects our continuing investments in Cloudera Enterprise’s main focus areas, including security, integration with the partner ecosystem, and support for the latest innovations in the open source platform (including Impala 2.0, its most significant release yet, and Apache Hive 0.13.1). It also includes a new product, Cloudera Director, that streamlines deployment and management of enterprise-grade Hadoop clusters in cloud environments; new component releases for building real-time applications; and new support for significant partner technologies like EMC Isilon. Furthermore, this release ships the first results of joint engineering with Intel, including WITH GRANT OPTION for Hive and Impala and performance optimizations for MapReduce.

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

[Developer Preview of Version 3 of AWS SDK for PHP](http://feedproxy.google.com/~r/AmazonWebServicesBlog/~3/2Ywv3mKNP8k/)
: Version 3 of the AWS SDK for PHP is now in Developer Preview and available on GitHub and Composer. Along with significant performance improvements, v3 brings a number of brand new features. Using the new version, you can now make asynchronous requests with Futures and Promises, query API responses with JMESPath, and bind default request parameters to service clients.

[Best practices for XML sitemaps & RSS/Atom feeds](http://feedproxy.google.com/~r/blogspot/amDG/~3/cT8ifMRDWBo/best-practices-for-xml-sitemaps-rssatom.html)
: Submitting sitemaps can be an important part of optimizing websites. Sitemaps enable search engines to discover all pages on a site and to download them quickly when they change. This blog post explains which fields in sitemaps are important, when to use XML sitemaps and RSS/Atom feeds, and how to optimize them for Google.

[Apache Helix: A framework for Distributed System Development](http://engineering.linkedin.com/apache-helix/apache-helix-framework-distributed-system-development)
: Distributed data systems are used in a variety of settings like online serving, offline analytics, data transport, and search, among other use cases. These start off with a single node solution that provides the core functionality e.g. it can be a database, messaging, search index etc. Building from a single node, requires not just a distributed system but also the different requirements that go with it. With these issues related to scaling in mind, we built Helix, a generic framework for developing distributed systems.

### MySQL

[InnoDB General Tablespaces – Preview](http://mysqlserverteam.com/innodb-general-tablespaces-preview/)
: The new InnoDB Labs release contains the ability to create and use independent multi-table general tablespaces.  
This feature will provide a way to group tables together into tablespaces at a location and filename of your choosing.  Tables using row formats of Redundant, Compact, and Dynamic can be combined together into the same general tablespace. Compressed tables with the same key_block_size can also be combined together.

[How to avoid hash collisions when using MySQL’s CRC32 function](http://www.percona.com/blog/2014/10/13/how-to-avoid-hash-collisions-when-using-mysqls-crc32-function/)
: Percona Toolkit’s  pt-table-checksum performs an online replication consistency check by executing checksum queries on the master, which produces different results on replicas that are inconsistent with the master – and the tool pt-table-sync synchronizes data efficiently between MySQL tables.  
The tools by default use the CRC32. Other good choices include MD5 and SHA1. If you have installed the FNV_64 user-defined function, pt-table-sync will detect it and prefer to use it, because it is much faster than the built-ins. You can also use MURMUR_HASH if you’ve installed that user-defined function. Both of these are distributed with Maatkit. For details please see the tool’s documentation.

[MySQL 5.7.5- More variables in replication performance_schema tables](http://mysqlhighavailability.com/global-variables-in-rpl-ps/)
: At MySQL, replication usability is of utmost importance to us. Replication information has long been part of SHOW commands, SHOW SLAVE STATUS occupying a major chunk of it.

[MySQL 5.7.5-labs: Multi-source Replication](http://mysqlhighavailability.com/5-7-5-labs-multi-source-replication/)
: Multi-source replication for MySQL has been released as a part of 5.7.5-labs-preview downloadable from labs.mysql.com. It is one among the several features that are cooking in the replication technologies at MySQL.  (For a birds eye view of all replication features introduced in 5.7 and labs, look  at the blog posts here and here.

[Percona Toolkit for MySQL with MySQL-SSL Connections](http://www.percona.com/blog/2014/10/16/percona-toolkit-for-mysql-with-mysql-ssl-connections/)
: I recently had a client ask me how to use Percona Toolkit tools with an SSL connection to MySQL (MySQL-SSL). SSL connections aren’t widely used in MySQL due to most installations being within an internal network. Still, there are cases where you could be accessing MySQL over public internet or even over a public “private” network (ex: WAN between two colo datacenters). In order to keep packet sniffers at bay, the connection to MySQL should be encrypted.

[Recover orphaned InnoDB partition tablespaces in MySQL](http://www.percona.com/blog/2014/10/14/recover-orphaned-innodb-partition-tablespaces-in-mysql/)
: A few months back, Michael wrote about reconnecting orphaned *.ibd files using MySQL 5.6. I will show you the same procedure, this time for partitioned tables. An InnoDB partition is also a self-contained tablespace in itself so you can use the same method described in the previous post.

[InnoDB: Supporting Page Sizes of 32k and 64k](http://mysqlserverteam.com/innodb-supporting-page-sizes-of-32k-and-64k/)
: In the new InnoDB lab release we support page sizes of 32k and 64k. This gives users even more choices on the page size, allowing you to further customize InnoDB for your particular workload.

### Monitoring

[Smokeping custom Curl probe](http://blog-notes.jbfavre.org/?smokeping-custom-curl-probe,3049) (on my own blog)
: I just released a custom Curl probe for smokeping.  
Curl probe only fetch load time (that is, total time minus DNS resolution time). But I needed to be able to measure various response times

[Zabbix 2.4 features, part 8 – Debugging web and VMware monitoring](http://blog.zabbix.com/zabbix-2-4-features-part-8-debugging-web-and-vmware-monitoring/3675/)
: In the previous two blog articles we looked at really great improvements in Zabbix 2.4 to help with debugging/troubleshooting – ability to change loglevel for a running daemon (any sub-process, even) and various smaller validation and error reporting improvements. There is yet another improvement in this area, though – improved debugging capabilities for the built-in web and VMware monitoring for the cases when you really have to dig deep.

[AppDynamics VS New Relic – Which Tool is Right For You? The Complete Guide](http://feeds.dzone.com/~r/zones/architects/~3/3vArykISyuk/appdynamics-vs-new-relic-%E2%80%93)
: New Relic VS AppDynamics: All the performance features, integrations, installation procedures and pricing plans side by side to help you decide which tool to use.  
When thinking about performance, AppDynamics and New Relic are the main modern tools that come to mind. Both spawned from the same company, Wily Technology, who also dealt with performance monitoring and was acquired by CA back in 2006 - making way to new technology. New Relic is an anagram of Lew Cirne, its founder and CEO. AppDynamics was founded by Jyoti Bansal, who was a Lead Software Architect at the same Wily Technology, which was also founded by Lew. The main goal of this guide is to help you understand the similarities and differences between the two, so you can decide which one fits your company’s needs.

### Log Management

[Little Logstash Lessons – Part I: Using grok and mutate to type your data](http://www.elasticsearch.org/blog/little-logstash-lessons-part-using-grok-mutate-type-data/)
: Logstash is an event processing pipeline, which features a rich ecosystem of plugins, allowing users to push data in, manipulate it, and then send it to various backends.  
One of those plugins is grok. Grok is currently the best for Logstash to parse unstructured log data and structure it so it can be best queried by Elasticsearch. Mutate, another popular plugin, allows the user to manipulate Logstash event data in many useful ways.

### Virtualization

[Docker 1.3 Releases with Security, Signed Images, and Process Injection](http://feeds.dzone.com/~r/zones/architects/~3/7s6qyghzcpo/docker-13-releases-security)
: Docker, the ever-popular containerization tool, released Docker 1.3 today. This latest version includes over 750 new commits, and has many new capabilities and enhancements.

[Docker 1.3: signed images, process injection, security options, Mac shared directories](https://blog.docker.com/2014/10/docker-1-3-signed-images-process-injection-security-options-mac-shared-directories/)
: Today we’re pleased to announce the availability of Docker Engine 1.3.  With over 750 commits from 45 contributors, this release includes new capabilities as well as lots of quality enhancements.  You can get more details in the release notes, but we’ll highlight four of the new features here.

[docker exec preview](http://blog.loof.fr/2014/10/docker-exec-preview.html)
: A new feature to come in docker 1.3 I'm waiting for is docker exec command. This one will make docker-enter hack an official command. This command will let you attach a new process to an existing container, for diagnostic or monitoring purpose (for sample) or some more advanced hacks I have in mind :-D

### Cassandra

[DevCenter 1.2 delivers support for Cassandra 2.1 and query tracing](http://planetcassandra.org/blog/devcenter-1-2-delivers-support-for-cassandra-2-1-and-query-tracing/)
: We’re very pleased to announce the availability of DataStax DevCenter 1.2, which you can download now. We’re excited to see how DevCenter has already become the defacto query and development tool for those of you working with Cassandra and DataStax Enterprise, and now with version 1.2, we’ve added additional support and options to make your development work even easier.

[Cassandra at Nexgate for Social Media Security](http://planetcassandra.org/blog/cassandra-at-nexgate-for-social-media-security/)
: Social media has become the new frontier for spammers and cyber-attackers. Unlike email, which is a well-established medium with a mature security infrastructure, social media is ripe for attack by bad actors.  
Not only are fewer guardrails in place on the typical social media platform, but the payoff for a spammer is also much greater. Whereas a bad actor can only send one email to each recipient, just a single social media post is needed to reach thousands. A single comment posted on a high-profile Facebook page can receive thousands of views.
