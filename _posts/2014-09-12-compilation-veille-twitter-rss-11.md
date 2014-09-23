---
layout: post
title: "Compilation veille Twitter & RSS #11"
category: veille
---

La moisson de liens pour les semaine du 8 au 12 et du 15 au 19 septembre 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### PHP

[There is a microservice for that](http://labs.qandidate.com/blog/2014/09/17/there-is-a-microservice-for-that/)
: At Qandidate.com we recently shifted our development process towards building microservices. We’re constantly looking to improve our way of writing software. For example, moving from CRUD applications to event-sourced applications and using Kanban to manage our process. Microservices seem to be the next step.

[Testing Micro Services - PHP](http://qafoo.com/blog/071_testing_micro_services.html)
: I recently had a short exchange with Ole Michaelis on Twitter about how to end-to-end test micro services. Since I didn't have time to make my whole case, Ole suggested that I blog about this, which I'm happily doing now.The idea behind micro service architecture was discussed by Martin Fowler in a nice to read blog post, so I won't jump on that topic in detail here.

### Cloud

[Centurion makes deploying Docker images easy](http://thechangelog.com/centurion-makes-deploying-docker-images-easy/)
: New Relic has Open Sourced their tool for managing Docker deployments across multiple environments.  
Centurion is a DSL for defining environment variables, Docker hosts to deploy to, volumes, and ports. Centurion can be used to define these on a per environment basis, ensuring the same image is shipped with the correct configuration for the environment it is being deployed to.  
Centurion can even handle rolling deploys by deploying to a host and checking a specific URL to become available before moving to the next host.

### Big Data

[How Impala Supports Mixed Workloads in Multi-User Environments](http://blog.cloudera.com/blog/2014/09/how-impala-supports-mixed-workloads-in-multi-user-environments/)
: Our thanks to Melanie Imhof, Jonas Looser, Thierry Musy, and Kurt Stockinger of the Zurich University of Applied Science in Switzerland for the post below about their research into the query performance of Impala for mixed workloads.  
Recently, we were approached by an industry partner to research and create a blueprint for a new Big Data, near real-time, query processing architecture that would replace its current architecture based on a popular open source database system.

[Getting Started with Big Data Architecture](http://blog.cloudera.com/blog/2014/09/getting-started-with-big-data-architecture/)
: What does a “Big Data engineer” do, and what does “Big Data architecture” look like? In this post, you’ll get answers to both questions.  
Apache Hadoop has come a long way in its relatively short lifespan. From its beginnings as a reliable storage pool with integrated batch processing using the scalable, parallelizable (though inherently sequential) MapReduce framework, we have witnessed the recent additions of real-time (interactive) components like Impala for interactive SQL queries and integration with Apache Solr as a search engine for free-form text exploration.  
Getting started is now also a lot easier: Just install CDH, and all the Hadoop ecosystem components are at your disposal. But after installation, where do you go from there? What is a good first use case? How do you ask those “bigger questions”?  
Having worked with more customers running Hadoop in production than any other vendor, Cloudera’s field technical services team has seen more than its fair share of these use cases. Although they obviously vary by industry and application, there is a common theme: the presence of Big Data architecture.

[Apache Kafka for Beginners](http://blog.cloudera.com/blog/2014/09/apache-kafka-for-beginners/)
: When used in the right way and for the right use case, Kafka has unique attributes that make it a highly attractive option for data integration.  
Apache Kafka is creating a lot of buzz these days. While LinkedIn, where Kafka was founded, is the most well known user, there are many companies successfully using this technology.  
So now that the word is out, it seems the world wants to know: What does it do? Why does everyone want to use it? How is it better than existing solutions? Do the benefits justify replacing existing systems and infrastructure?

### Cassandra

[What’s new in Cassandra 2.1](http://planetcassandra.org/blog/whats-new-in-cassandra-2-1/)
: Cassandra 2.1 is out, full of new things to make you smile!  
Headlining the show is the performance improvements, both for highly cacheable workloads like the one above as well as more disk-bound scenarios.

[Cassandra Summit Recap: Diagnosing Problems in Production](http://planetcassandra.org/blog/cassandra-summit-recap-diagnosing-problems-in-production/)
: Last week at the Cassandra Summit I gave a talk with Blake Eggleston on diagnosing performance problems in production. We spoke to about 300 people for about 25 minutes followed by a healthy Q&A session. I’ve expanded on our presentation to include a few extra tools, screenshots, and more clarity on our talking points.  
There’s finally a lot of material available for someone looking to get started with Cassandra. There’s several introductory videos on YouTube by both me and Patrick McFadin as well as videos on time series data modeling. I’ve posted videos for my own project, cqlengine, (intro & advanced), and plenty more on the PlanetCassandra channel. There’s also a boatload of getting started material on PlanetCassandra written by Rebecca Mills.


### Architrecture

[Push our limits - reliability testing at Twitter](https://blog.twitter.com/fr/node/4717)
: At Twitter, we strive to prepare for sustained traffic as well as spikes - some of which we can plan for, some of which comes at unexpected times or in unexpected ways. To help us prepare for these varied types of traffic, we continuously run tests against our infrastructure to ensure it remains a scalable and highly available system.

[Introducing Chaos Engineering](http://techblog.netflix.com/2014/09/introducing-chaos-engineering.html)
: Chaos Monkey was launched in 2010 with our move to Amazon Web Services, and thus the Netflix Simian Army was born.  Our ecosystem has evolved as we’ve introduced thousands of devices, many new countries, a Netflix optimized CDN  often referred to as OpenConnect, a growing catalog of Netflix Originals, and new and exciting UI advancements.   Not only has complexity grown, but our infrastructure itself has grown to support our rapidly growing customer base.  As growth and evolution continues, we will experience and find new failure modes.

### Redis

[5 Key Takeaways for Developing with Redis](5 Key Takeaways for Developing with Redis)
: Developing an application with Redis is a lot of fun, but as with any technology, there are a few points you you should keep in mind while designing a Redis-based application. You’re probably already familiar with relational database development, but while many of the same practices apply, keep in mind that Redis is an in-memory database and it is (mostly) single-threaded.  
Therefore, there are several peculiarities you should pay attention to when using Redis.

[How Twitter Uses Redis to Scale - 105TB RAM, 39MM QPS, 10,000+ Instances](http://feedproxy.google.com/~r/HighScalability/~3/ZRwLlvT8aYM/how-twitter-uses-redis-to-scale-105tb-ram-39mm-qps-10000-ins.html)
: Yao Yu has worked on Twitter’s Cache team since 2010. She recently gave a really great talk: Scaling Redis at Twitter. It’s about Redis of course, but it's not just about Redis.  
Yao has worked at Twitter for a few years. She's seen some things. She’s watched the growth of the cache service at Twitter explode from it being used by just one project to nearly a hundred projects using it. That's many thousands of machines, many clusters, and many terabytes of RAM.

### TokuDB

[Announcing TokuDB v7.5: Read Free Replication](http://www.tokutek.com/2014/09/announcing-tokudb-v7-5-read-free-replication/)
: Today we released TokuDB® v7.5, the latest version of Tokutek’s storage engine for MySQL and MariaDB.  
I’ll be publishing two blogs next week to go into more details about our new “Read Free Replication”, but here are high level descriptions of the most important new features.

### MySQL

[Syncing MySQL slave table with pt-online-schema-change](http://www.percona.com/blog/2014/09/17/syncing-mysql-slave-table-with-pt-online-schema-change/)
: I recently encountered a situation in which after running Percona Toolkit’s pt-table-checksum on a customer system, 95% of the table on the MySQL master was different on the MySQL slave. Although this table was not a critical part of the infrastructure, from time to time, writes to the table from the master would break replication. Additionally, this table has about 6 million rows, and running pt-table-sync would take sometime. Rebuilding the slave from backup of the master would not be an easy option as well since the slave acts as an archive where it has a lot more data than the master.

[Proposed changes to user management in MySQL 5.7](http://www.tocker.ca/2014/09/05/proposed-changes-to-user-management-in-mysql-5-7.html)
: In May we proposed deprecating and removing the old password format in MySQL 5.7. I am happy to report, that this proposal has gone ahead, and can already be seen in the 5.7 DMR5 release notes!

[Time to forget show processlist for monitoring?](http://www.mysqlplus.net/2014/09/07/time-forget-show-process-list-monitoring/)
: Auditing a system necessarily has an impact on your system.  
The tools and options presented here can provide various information.  
Also, you have to consider how you’ll handle these data after having collected them.  
The show processlist command don’t seem so dramatic for performance but not guarantee that all the queries will be retrieve.
You probably have to chose another solution if you really need to collect reliable data.  
Hope these quick tests could help you to chose the right tool for your needs.

[[Tuto] A real life Multi-Master use case with MariaDB](http://www.mysqlplus.net/2014/07/04/real-life-multi-master-case/)
: The goal of this tutorial is to show you how to use Multi-Master and aggregate databases with the same name but with different data from different masters.

[How to shrink the ibdata file by transporting tables with Trite](http://www.mysqlplus.net/2014/09/11/shrink-ibdata-file-trite/)
: You’ve probably had some troubles with the shared InnoDB tablespace stored in the ibdata file. Especially when it has grown for some reasons and reached a critical size.  
This behavior occurs in some cases, due to excessive rollback segments growth or during a migration from a unique shared tablespace to a file-per-table configuration for example.  
In this post, I would like to explain how to shrink the ibdata file after an unwanted file growth in a file-per-table configuration.  
Note that the process could be done without Trite but the tool avoids to write the script used to transport tables yourself.

### DNSSEC

[Documentation interne à Octopuce sur DNSSEC](https://www.octopuce.fr/documentation-interne-a-octopuce-sur-dnssec/)
: À Octopuce, afin que chacun puisse profiter des connaissance des autres, et qu’aucun morceau de notre infrastructure ne puisse être connu que d’une personne de l’équipe, nous documentons de manière rapide mais précise chaque élément de configuration.  
Ainsi, comme nous déployons peu à peu DNSSEC sur nos zones principales (d’abord des reverses non importants, puis IPv6, puis les vraies IP, et enfin à terme octopuce.fr), il faut donc documenter comment nous avons procédé.  
Ne trouvant pas de documentation très simple et rapide, j’ai donc choisi de la publier telle quelle ;) profitez-en bien.

### Zabbix

[Zabbix 2.4 features, part 6 – Runtime loglevel changing](http://blog.zabbix.com/zabbix-2-4-features-part-6-runtime-loglevel-changing/3653/)
: Historically, issues that might arise when using Zabbix have not been easy to troubleshoot. Not everything that would be useful is always logged. Log level can be increased, but those who still remember the first time they saw what DebugLevel=4 can do will understand why that option usually helped more advanced users. Besides, changing the log level required restart of the daemon, which in many cases would obscure the problem or introduce various other problems like delaying data on proxies in larger installations.

### Git

[30 options de commande Git qui gagnent à être connues](http://www.git-attitude.fr/2014/09/15/30-options-git-qui-gagnent-a-etre-connues/)
: Vous croyez connaître Git ? Peut-être bien… Et pourtant, je parierais ma chemise1 que pas mal de petites options sympathiques vous sont inconnues.  
En effet, au fil des versions de Git, beaucoup de petites options font surface, soit pour des raisons de confort, soit pour de la puissance brute. Mais comme ce n’est pas une nouvelle commande, ou pas trop mis en avant dans les annonces de sortie, ça passe sous le radar.  
Je vous ai sélectionné une trentaine d’options, répartie sur une quinzaine de commandes, qui rendent la vie plus belle quand on fait du Git. Voici une excellente manière de rentabiliser les prochaines minutes !

### Network

[A Brief History of Network Security Monitoring](http://taosecurity.blogspot.com/2014/09/a-brief-history-of-network-security.html)
: Last week I was pleased to deliver the keynote at the first Security Onion Conference in Augusta, GA, organized and hosted by Doug Burks. This was probably my favorite security event of the year, attended by many fans of Security Onion and the network security monitoring (NSM) community.
