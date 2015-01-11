---
layout: post
title: "Compilation veille Twitter & RSS"
category: veille
---

La moisson de liens pour les semaine du 27 au 31 octobre 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Maths

[The Gaussian Function](http://madhukaudantha.blogspot.com/2014/10/gaussian-function.html)
: A Gaussian function is a function with the following form:

### Architecture

[Le Web Scale IT (aka les pratiques des Géants du Web) dans le Top 10 Gartner 2015](http://blog.octo.com/le-web-scale-it-aka-les-pratiques-des-geants-du-web-dans-le-top-10-gartner-2015/) (French only)
: Le très attendu palmarès des 10 tendances technologiques stratégiques pour 20151 proposé par Gartner vient d’être publié ce mois-ci. Pour la deuxième année consécutive2, s’y trouve un thème qui nous tient très à cœur puisque, comme nous allons le voir, il s’agit des pratiques des Géants du Web 3, 4 – appelées, dans la terminologie Gartner,  le Web-Scale IT  issu des « large cloud services »5, 6. Nous vous proposons donc de faire ici un point rapide un sur cette tendance Gartner pour 2015.

[Software Architecture vs. Code](http://java.dzone.com/articles/software-architecture-vs-code)
: I had the pleasure of delivering the closing keynote at the DevDay 2014 conference in Krakow, Poland last month. It's a one day event, with a bias towards the .NET platform, and one of my favourite conferences from this year. Beautiful city, fantastic crowd and top-notch hospitality. If you get the chance to attend next year, do it! 

[Identity Anti-patterns: Federation Silos and Spaghetti Identity](http://blog.facilelogin.com/2014/10/identity-federation-patterns-with-wso2.html)
:  A recent research done by the analyst firm Quocirca confirms that many businesses now have more external users than internal ones: in Europe 58 percent transact directly with users from other businesses and/or consumers; for the UK alone the figure is 65 percent. If you look at the history, most enterprises grow today via acquisitions, mergers and partnerships. In U.S only, mergers and acquisitions volume totaled to $865.1 billion in the first nine months of 2013, according to Dealogic. That’s a 39% increase over the same period a year ago — and the highest nine-month total since 2008.

[Adding a unique request id using middleware](http://labs.qandidate.com/blog/2014/10/28/adding-a-unique-request-id-using-middleware/) (via @odolbeau)
: In our event-sourced applications built using Broadway we have a full log of all events that happened in our application. We also log all commands using monolog. We did however miss some traceability between the commands and the actual events: we logged both the commands and the events but could not determine which commands led to which events.

[Microservices in Production - the Good, the Bad, the it Works](http://highscalability.com/blog/2014/10/27/microservices-in-production-the-good-the-bad-the-it-works.html)
: It’s reached the point where it’s even a cliche to state “there’s a lot written about Microservices these days.” But despite this, here’s another post on the topic. Why does the internet need another? Please bear with me…

[Authorization for APIs with XACML and OAuth 2.0](http://xacmlinfo.org/2014/10/24/authorization-for-apis-with-xacml-and-oauth-2-0/)
: In this blog post, let see how we can implement XACML to authorize the APIs. I wish you are familiar with OAuth 2.0 and lets directly go through the diagram

[The New Reality: Microservices Apply the Internet Model to App Development](http://gomorpheus.com/blog/2014-10-24-the-new-reality-microservices-apply-the-internet-model-to-app-development)
: TL;DR: As software becomes the force driving industries of all types and sizes, the nature of app development and management is changing fundamentally. Gone are the days of centralized control via complex, interdependent, hierarchical architectures. Welcome to the Internet model of software: small pieces, loosely joined via the microservice architecture. At the forefront of the new software model are business managers, who base software-design decisions on existing and future business processes.

[How to Build REST Infrastructure for Database Access](http://www.espressologic.com/build-rest-infrastructure-database-access/)
: In the first two blogs in this series, we tackled the issue of how REST is a solution to a connected enterprise followed by discussions on What is REST. Then we discussed why use REST for database access.

### Databases

#### ElasticSearch

[Migrate your ES cluster from one continent to another without downtime](https://t37.net/migrate-your-es-cluster-from-one-continent-to-another-without-downtime.html)
: I just migrated a whole Elasticsearch cluster from Canada to France without downtime.  
With only 1.8TB of data, the cluster is quite small. However, crossing the ocean on an unreliable network made the process long and hazardous.

#### Redis

[Redis latency spikes and the 99th percentile](http://antirez.com/news/83)
: One interesting thing about the Stripe blog post about Redis is that they included latency graphs obtained during their tests. In order to persist on disk Redis requires to call the fork() system call. Usually forking using physical servers, and most hypervisors, is fast even with big processes. However Xen is slow to fork, so with certain EC2 instance types (and other virtual servers providers as well), it is possible to have serious latency spikes every time the parent process forks in order to persist on disk. The Stripe graph is pretty clear in this regard.

[This is why I can’t have conversations using Twitter](http://antirez.com/news/82)
:  Yesterday Stipe engineers wrote a detailed report of why they had an issue with Redis. This is very appreciated. In the Hacker News thread I explained that because now we have diskless replication (http://antirez.com/news/81) now persistence is no longer mandatory for people having a master-slaves replicas set. This changes the design constraints: now that we can have diskless replicas synchronization, it is worth it to better support the Stipe (ex?) use case of replicas set with persistency turned down, in a more safe way. This is a work in progress effort. 

[Diskless replication: a few design notes.](http://antirez.com/news/81)
:  Almost a month ago a number of people interested in Redis development met in London for the first Redis developers meeting. We identified together a number of features that are urgent (and are now listed in a Github issue here: https://github.com/antirez/redis/issues/2045), and among the identified issues, there was one that was mentioned multiple times in the course of the day: diskless replication. 

[Redis Cloud Clusters with Regular Expression Sharding](https://redislabs.com/blog/new-redis-cloud-clusters-with-regular-expression-sharding)
: I'm delighted to announce that today we've made our clustering technology even more useful with the public availability of RegEx Sharding. This feature allows you to define exactly how Redis Cloud distributes data between a database's shards, thereby enabling your application to continue performing multi-key operations at top performance on huge datasets. Our standard and new RegEx sharding policies are immediately available to all our Redis Cloud Pay-as-You-Go subscribers.

#### MariaDB

[InfiniDB support continues as part of MariaDB's Service offering](https://mariadb.com/blog/infinidb-support-continues-part-mariadbs-service-offering)
: Calpont, the company behind the InfiniDB Storage Engine closed down in September 2014. MariaDB Corporation will continue to offer support for the InfiniDB customer base together with talent newly recruited from InfiniDB.

[A transaction duration tracking audit plugin for MariaDB and MySQL](https://mariadb.com/blog/transaction-duration-tracking-audit-plugin-mariadb-and-mysql)
: This plugin logs long running transactions to the server error log when transaction took more than a configurable number of seconds.

#### MySQL

[GeoJSON Functions](http://mysqlserverteam.com/geojson-functions/)
: In recent years, GeoJSON has become a popular data format for exchanging GIS data due to several factors. The primary factors being that it’s easy to read, and it’s simple and lightweight. In 5.7.5, we added support for parsing and generating GeoJSON documents via two new functions: ST_GeomFromGeoJson() and ST_AsGeoJson(). These functions makes it easy to connect MySQL with other GeoJSON enabled software and services, such as the Google Maps Javascript API.

[How to deal with MySQL deadlocks](http://www.percona.com/blog/2014/10/28/how-to-deal-with-mysql-deadlocks/)
: A deadlock in MySQL happens when two or more transactions mutually hold and request for locks, creating a cycle of dependencies. In a transaction system, deadlocks are a fact of life and not completely avoidable. InnoDB automatically detects transaction deadlocks, rollbacks a transaction immediately and returns an error. It uses a metric to pick the easiest transaction to rollback. Though an occasional deadlock is not something to worry about, frequent occurrences call for attention.

[Geohash Functions](http://mysqlserverteam.com/geohash-functions/)
: In MySQL 5.7.5, we introduced new functions for encoding and decoding Geohash data. Geohash is a system for encoding and decoding longitude and latitude coordinates in the WGS 84 coordinate system, into a text string. In this blog post we will take a brief look at a simple example to explain just how geohash works.

### BigData

#### Cloudera

[Inside Cloudera Director](http://blog.cloudera.com/blog/2014/10/inside-cloudera-director/)
: As part of the recent Cloudera Enterprise 5.2 release, we unveiled Cloudera Director, a new product that delivers enterprise-class, self-service interaction with Hadoop clusters in cloud environments. (Cloudera Director is free to download and use, but commercial support requires a Cloudera Enterprise subscription.) It provides a centralized administrative view for cloud deployments and lets end users provision and scale clusters themselves using automated, repeatable, managed processes. To summarize, the same enterprise-grade capabilities that are available with on-premise deployments are now also available for cloud deployments. (For an overview of and motivation for Cloudera Director, please check out this blog post.)

[New in CDH 5.2: New Security App and More in Hue](http://blog.cloudera.com/blog/2014/10/new-in-cdh-5-2-new-security-app-and-more-in-hue/)
: CDH 5.2 includes important new usability functionality via Hue, the open source GUI that makes Apache Hadoop easy to use. In addition to shipping a brand-new app for managing security permissions, this release is particularly feature-packed, and is becoming a great complement to BI tools from Cloudera partners like Tableau, MicroStrategy, and Zoomdata because a more usable Hadoop translates into better BI overall across your organization! 

[New in CDH 5.2: Impala Authentication with LDAP and Kerberos](http://blog.cloudera.com/blog/2014/10/new-in-cdh-5-2-impala-authentication-with-ldap-and-kerberos/)
: Impala, the open source analytic database for Apache Hadoop, supports authentication—the act of proving you are who you say you are—using both Kerberos and LDAP. Kerberos has been supported since release 1.0, LDAP support was added more recently, and with CDH 5.2, you can use both at the same time.  
Using LDAP and Kerberos together provides significant value; Kerberos remains the core authentication protocol and is always used when Impala daemons connect to each other and to the Hadoop cluster. However, Kerberos can require more maintenance to support. LDAP is ubiquitous across the enterprise and is commonly utilized by client applications connecting to Impala via ODBC and JDBC drivers. A mix of the two therefore frequently makes sense.

### Analytics

[HTS with Regressors](http://robjhyndman.com/hyndsight/hts-with-regressors/)
: The hts pack­age for R allows for fore­cast­ing hier­ar­chi­cal and grouped time series data. The idea is to gen­er­ate fore­casts for all series at all lev­els of aggre­ga­tion with­out impos­ing the aggre­ga­tion con­straints, and then to rec­on­cile the fore­casts so they sat­isfy the aggre­ga­tion con­straints. (An intro­duc­tion to rec­on­cil­ing hier­ar­chi­cal and grouped time series is avail­able in this Fore­sight paper.)

[Data science versus statistics, to solve problems: case study](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:217809)
: In this article, I compare two approaches (with their advantages and drawbacks) to compute a simple metric: the number of unique visitors ("uniques") per year for a website. I use the word user or visitor interchangeably.

[How Machine-Learning-as-a-Service Can Help the Internet of Things Reach its Potential](http://architects.dzone.com/articles/how-machine-learning-service-0°
: By the sound of it, the Internet of Things (IoT) might be one of the biggest technological breakthroughs since the invention of the internet itself. The basic concept revolves around sensors embedded in nearly anything (mobile devices, clothing, manufacturing equipment, appliances, etc.) being able to communicate with each other, providing for a more convenient interconnected life with the cloud. While the IoT is still in its infancy, it has become clear that it will soon come to be part of everyone’s life, if it isn’t already. According to a study from Gartner, the number of units connected to the Internet of Things is expected to reach 26 billion by the year 2020. But as companies begin to see the revolutionary potential of the IoT, they’re also beginning to find a number of obstacles they need to address. With this in mind, many businesses and industries are starting to utilize machine learning, and more specifically machine-learning-as-a-service (MLaaS), to grasp the IoT’s potential.

### Development

[Frontend Dependency Management with Browserify](http://word.bitly.com/post/101360133837)
: With frontend development moving as fast as it does at Bitly, things can get pretty messy. We found ourselves with piles of unmanaged script tags and little indication of what was still being used in the app’s current iteration. There had to be a better way!

[Feature Toggles in Symfony](http://labs.qandidate.com/blog/2014/09/04/feature-toggles-in-symfony2/)
: When we launched our feature toggle library to the public a few weeks ago, we had multiple people asking for a Symfony Bundle. So guess what? We created one just for you! This bundle doesn't just help you with feature toggling in your controllers, it is shipped with a Twig Extension for your toggling pleasure. Read on to see how to get started!

[Open sourcing our feature toggle API and UI](http://labs.qandidate.com/blog/2014/08/19/open-sourcing-our-feature-toggle-api-and-ui/)
: In our previous post we released our toggle library and showed how to use it in your PHP project, but our goal was to toggle features without the need for a deploy. To accomplish this we created an API with an AngularJS frontend. In this blogpost we’ll show you how the API works and how we use it in combination with the AngularJS frontend.

[A new feature toggling library for PHP](http://labs.qandidate.com/blog/2014/08/18/a-new-feature-toggling-library-for-php/)
: Adding features to an existing application can seem straightforward, but what if the system you need the feature in is already running in production and the feature needs small bug fixes from time to time? Or what if developing a feature takes longer than a standard release cycle, so it can’t be rolled out yet?

[Using the Accept Header to version your API](http://labs.qandidate.com/blog/2014/10/16/using-the-accept-header-to-version-your-api/)
: I investigated different ways to version a REST API. Most of the sources I found, pretty much all said the same thing. To version any resource on the internet, you should not change the URL. The web isn't versioned, and changing the URL would tell a client there is more than 1 resource. But actually there aren't multiple resources, it's just a different representation of the same resource. Of course there are cases where you should change the URL; for example if you are changing the API in such a way that its functionality alters. In this particular case you could consider changing the URL as you could reason that it is not the same resource anymore.

[Partial Commits with Git](http://coding.abel.nu/2014/10/partial-commits-with-git/)
: Every once in a while I’m working on a feature, only to discover that I need to extend another part of the code first. If I was disciplined, I would create another branch at that point. But I’m not. I end up with both the extended utility class and the actual feature as pending changes. With git it is simple to make two separate commits while ensuring that every commit compiles.

### Network

[RFC 7381: Enterprise IPv6 Deployment Guidelines](http://www.bortzmeyer.org/7381.html) (French only)
: Le déploiement d'IPv6 continue, trop lentement, mais il continue et de plus en plus d'organisations font désormais fonctionner ce protocole. Ce document est une série de conseils sur le passage à IPv6 au sein d'une organisation (le RFC dit « enterprise » mais je ne vois pas de raison de traduire par « entreprise », ce qui limiterait arbitrairement aux organisations privées prévues pour faire gagner de l'argent à leurs actionnaires). Les précédents RFC de conseils sur le déploiement d'IPv6 ciblaient des organisations spécifiques (comme les opérateurs réseaux dans le RFC 6036), celui-ci s'adresse à toute organisation qui dispose d'un réseau et d'administrateurs pour s'en occuper (les particuliers, ou toutes petites organisations sans administrateurs réseaux, ne sont pas traités).

[RFC 7384: Security Requirements of Time Protocols in Packet Switched Networks](http://www.bortzmeyer.org/7384.html) (French only)
: De plus en plus de protocoles sur l'Internet dépendent d'une horloge correcte. L'époque où les machines étaient vaguement mises à une heure approximative, de façon purement manuelle, est révolue. Aujourd'hui, il est essentiel de connaître l'heure exacte, et cela implique des dispositifs automatiques comme NTP. C'est encore plus essentiel quand il s'agit de protocoles de sécurité, comme DNSSEC (pour déterminer si une signature a expiré) ou X.509 (pour savoir si un certificat est encore valable). Mais cette utilisation du temps comme donnée dans un protocole de sécurité pose elle-même des problèmes de sécurité : si un attaquant perturbe NTP, ne risque-t-il pas d'imposer une fausse heure, et donc de subvertir des protocoles de sécurité ? D'où le groupe de travail TICTOC de l'IETF, dont voici le premier RFC : le cahier des charges des solutions de sécurité pour les protocoles de synchronisation d'horloges, comme NTP.

### Monitoring

[Zabbix 2.4 features, part 9 – Ad-hoc graphs](http://blog.zabbix.com/zabbix-2-4-features-part-9-ad-hoc-graphs/3766/)
: Zabbix 2.4 adds a capability to graph any items on the same graph, at any time, by any user – essentially, creating ad-hoc graphs.

[The 99th percentile matters](http://kellabyte.com/2014/10/29/the-99th-percentile-matters/)
: There was a lot of discussion on Twitter yesterday about what metrics to pay attention to when benchmarking or monitoring infrastructure. There was talk about percentiles and discussion about averages. I’m not going to rehash the entire conversation especially since there may have been some misunderstandings but I think there is a fundamental point missing from the post I linked above and it’s not about internet flame wars. Salvatore wrote the following (emphasis mine).

### Cloud

#### CoreOS

[Announcing CoreOS Enterprise Registry, a secure Docker registry behind your firewall](http://coreos.com/blog/standalone-enterprise-registry/)
: Today we are launching CoreOS Enterprise Registry, a secure Docker registry behind the firewall. The first enterprise-ready solution, CoreOS Enterprise Registry provides a web-based management interface.

#### Docker

[How Docker is Changing Configuration Management](http://getcloudify.org/2014/10/30/Docker-cloud-orchestration-configuration-management.html)
: With configuration management, there have always been two camps: Bake or Fry?  
When it comes to what are traditionally considered configuration management tools, Chef, Puppet and others, these usually fall into the fry camp.  This approach involves dynamic configuration at deployment time.  Meaning, you have a server and need to configure it for the first time,  including permissions, installing packages, etc.  This is where the common CM tools excel.

[Contain(er) Yourself: Separating Docker Hype from the Tech's Reality](http://gomorpheus.com/blog/2014-10-13-contain-er-yourself-separating-docker-hype-from-the-tech-s-reality)
: TL;DR: Even jaded IT veterans are sitting up and taking notice of the potential benefits of Docker's microservice model of app development, deployment, and maintenance. By containerizing the entire runtime environment, Docker ensures apps will function smoothly on any platform. By separating app components at such a granular level, Docker lets you apply patches and updates seamlessly without having to shut down the entire app.

#### Mesos

[Mesos, Yet Another Cloud OS?](https://blog.logentries.com/2014/10/mesos-yet-another-cloud-os/)
: YARN stands for Yet Another Resource Negotiator. According to Hortonworks, it is “the architectural center of Hadoop.” YARN is the stack layer that allows multiple processing engines, with varying workloads (streaming, SQL, batch, machine learning etc.) to run on top of the Hadoop file system, HDFS.

### Security

[Threat Introduced via Browser Extensions](http://blog.sucuri.net/2014/10/threat-introduced-via-browser-extensions.html)
: We love investigating unusual hacks. There are so many ways to compromise a website, but often it’s the same thing.
