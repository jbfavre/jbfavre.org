---
layout: post
title: "Compilation veille Twitter & RSS"
category: veille
---

La moisson de liens pour la semaine du 2 au 8 août 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Architecture

[Tumblr: Hashing Your Way to Handling 23,000 Blog Requests per Second](http://highscalability.com/blog/2014/8/4/tumblr-hashing-your-way-to-handling-23000-blog-requests-per.html)
:  At Tumblr, blogs (or Tumblelog) are one of our most highly trafficked faces on the internet.  One of the most convenient aspects of tumblelogs is their highly cacheable nature, which is fantastic because of the high views/post ratio the Tumblr network offers our users.  That said, it’s not entirely trivial to scale out the perimeter proxy tier, let alone the caching tier, necessary for serving all of those requests.  
This article describes the architecture of the portion of our perimeter responsible for blogs serving, one of our more highly trafficked perimeter end-points.

[CloudFlare Now Supports WebSockets](http://blog.cloudflare.com/cloudflare-now-supports-websockets)
:  I’m pleased to announce that CloudFlare now supports WebSockets. The ability to protect and accelerate WebSockets has been one of our most requested features. As of today, CloudFlare is rolling out WebSocket support for any Enterprise customer, and a limited set of CloudFlare Business customers. Over the coming months, we expect to extend support to all Business and Pro customers.  
We’re rolling out WebSockets slowly because it presents a new set of challenges. The story below chronicles the challenges of supporting WebSockets, and what we’ve done to overcome them.

[Building Carousel, Part II: Speeding Up the Data Model](https://tech.dropbox.com/2014/08/building-carousel-part-ii-speeding-up-the-data-model/)
:  In the last post, Stephen explored the asynchronous client-server communication model we use in Carousel to provide a fast user experience, where interactions aren’t blocked on network calls. But network latency was not our only hurdle. In order to make the app feel fast and responsive, we also needed to minimize user-visible disk latency. One of Carousel’s primary goals was to make all of the user’s photos and videos accessible in one continuous view. We have users with over 100,000 photos in Dropbox, and we needed to build a metadata-loading pipeline that could accommodate them. This meant building a metadata-loading system that can show photos on-screen within a second of opening the app and provides smooth scrolling even as the user navigates back in time through their entire history of photos. Simply reading the metadata off of disk is too slow to do on demand while scrolling, so we keep a model of the user’s photo metadata in memory that reflects the metadata we have in our cache on disk.

[Tumblr iOS architecture](http://engineering.tumblr.com/post/93985550454)
:  Some consider the Tumblr iOS app to be a marvel of modern medicine and science. Others find our custom native HTML rendering to be a telltale sign of our insanity. Other others view our staunch avoidance of Core Data migrations as both prudent and educational. Whichever camp you fall into, you may find something to enjoy in this high-level overview of our iOS application architecture.

[Tumblr Android Architecture](http://engineering.tumblr.com/post/94092376819/tumblr-on-android)
:  Tumblr on Android is always a hot topic among savvy Tumblr users. It’s easy to get caught up in the hustle and bustle of every day life and forget that this isn’t just a silly app for looking at cool and weird stuff - It’s a complex and robust spectacle of engineering that is under a constant barrage of updates, bug fixes, and new features - all in the sake of helping you look at the cool and weird stuff you love.  
If you’ve ever daydreamed about the nuts and bolts of Tumblr’s Android app, then this presentation is right up your alley.

[Getting Started with Orchestration using Fig](http://blog.docker.com/2014/08/getting-started-with-orchestration-using-fig/)
:  Last month we announced Docker, Inc.’s acquisition of Orchard, builders of a Docker hosting service as well as an orchestration tool, Fig.  If you’ve started using Docker and have been wondering how to define and control a multi-container service – for example, a web app in one container and a database in another – then we think you’ll find Fig really helpful.  
For this first example, we’ll show how to get a Python web app working with Redis, each in a separate container.  We’ll show how Fig lets you define the link between the two containers and indicate that the web app container is dependent on the Redis container.

### ElasticSearch

[All About Scripting](http://www.elasticsearch.org/blog/scripting/)
:  With the release of 1.3 and moving forward, we are making some big changes to the scripting infrastructure in Elasticsearch. In this blog post we’ll cover the major changes that we’re making, some of the upcoming changes to scripting, and some of the new ways to work with scripting in ES!  
One of the first (and most noticable) changes that has impacted scripting is in the Elasticsearch 1.2 release. We recently released a blog post titled “Scripting and Security” about the security implications of this. Please take a look for more information about how dynamic scripting was changed after the 1.2 release.

### PHP

[PHP and MySQL communication, mysqlnd](http://jpauli.github.io//2014/07/21/php-and-mysql-communication-mysqlnd.html)
:  Appeared with PHP5.3, mysqlnd is an unknown part of PHP. Yet, this extension is a must-have if your system relies heavily on the MySQL database server. We’ll see what mysqlnd is, what it brings to PHP and how to use it.

[realpath_cache](http://jpauli.github.io//2014/06/30/realpath-cache.html)
:  Do you know those PHP functions, realpath_cache_get(), realpath_cache_size() ? php.ini setting realpath_cache ?  
Realpath cache is a really important concept to know about, especially when it comes to play with symbolic links, a situation some meet when they deploy code. This setting is about performance and IO reduction of your server. It has been introducted in PHP 5.1 , when frameworks started to show in the PHP scene.

[PECL/mysqlnd_ms: summer time, (connection) pool time – Fabric support internals](http://blog.ulf-wendel.de/2014/peclmysqlnd_ms-summer-time-connection-pool-time-fabric-internals/)
:  The MySQL replication and load balancing plugin for PHP, PECL/mysqlnd_ms, aims to make using a cluster of MySQL servers instead of a single server as transparent as possible. Should you ever want to migrate your PHP app from a single MySQL server to any kind of MySQL cluster, install PECL/mysqlnd_ms and see how much breaks. A simple app, might need no code changes at all. Your APIs connect call remains unchanged, your query execution calls remain the same: one connection handle transparently switched to an appropriate cluster node (read-write splitting, weighted load balancing, …). 

[PHP, PDO & HP Vertica - blog.phpdeveloper.org](http://blog.phpdeveloper.org/?p=846)
:  As part of my new role, we’ll be working with HP’s Vertica for some of the data storage. I’ve been struggling the last few days to get it working on a Vagrant-provisioned linux box (VirtualBox) and finally have the process down. I thought I’d share it for those out there needing some help.

### Redis

[5 Tips for Running Redis over AWS](http://redislabs.com/blog/5-tips-for-running-redis-over-aws)
:  Cloud computing can help host an application in a way that is both scalable and cost effective. The leading vendor in the infrastructure as a service (IaaS) arena is Amazon Web Services (AWS), which offers scalable, highly available and secure cloud hosting. If your application uses Redis for caching or data storage, below are a few tips which will help you save time, money, and achieve better Redis performance within AWS, in general.

[Redis Sentinel at Flickr](http://code.flickr.net/2014/07/31/redis-sentinel-at-flickr/)
:  We recently implemented Redis Sentinel at Flickr to provide automated Redis master failover for an important subsystem and we wanted to share our experience with it. Hopefully, we can provide insight into our experience adopting this relatively new technology and some of the nuances we encountered getting it up and running. Although we try to provide a basic explanation of what Sentinel is and how it works, anyone who is new to Redis or Sentinel should start with the excellent Redis and Sentinel documentation.

[Managing 50K+ Redis Databases Over 4 Public Clouds with a Tiny Devops Team](http://redislabs.com/blog/managing-50k-redis-databases-over-4-public-clouds-with-a-tiny-devops-team)
:  Modern applications have a general list of needs in order to not only survive, but thrive in today’s fast paced cloud environment. These include low response times (less than 100 milliseconds), limitless scalability, high availability, and optimal performance, to name a few. With a selection of modern database options available, Redis has proven to be one of the most popular. Redis Labs has aided in the creation of over 50,000 databases by over 2,500 paying customers, with more than 100 new databases created daily. Being a major contributor to Redis’ open source project, many of the use cases that we see using Redis include social applications, online advertising companies, and gaming companies. Our experience running Redis services across the four major clouds (AWS, Azure, GCP and SoftLayer) has made us aware of a number of challenges that users encounter, which consequently led to our thoroughly tested solutions, a few of which we have shared below. 

[Top Redis Headaches for Devops – Client Buffers](http://redislabs.com/blog/top-redis-headaches-for-devops-client-buffers)
:  Redis provides a wide variety of tools directed at improving and maintaining efficient in-memory database usage. While its unique data types and commands fine-tune databases to serve application requests without any additional processing at the application level, misconfiguration, or rather, using out-of-the-box configuration, can (and does) lead to operational challenges and performance issues.

[Top Redis Headaches for Devops – Replication Timeouts](http://redislabs.com/blog/top-redis-headaches-for-devops-replication-timeouts)
:  Redis provides a wide variety of tools directed at improving and maintaining efficient in-memory database usage. While its unique data types and commands fine-tune databases to serve application requests without any additional processing at the application level, misconfiguration, or rather, using out-of-the-box configuration, can (and does) lead to operational challenges and performance issues. Despite the setbacks that have been the cause of quite a few headaches, solutions do exist, and may be even simpler than anticipated. This series of installments will highlight some of the most irritating issues that come up when using Redis, along with tips on how to solve them. They are based on our real-life experience of running thousands of Redis database instances.

[Top Redis Headaches for Devops – Replication Buffer](http://redislabs.com/blog/top-redis-headaches-for-devops-replication-buffer)
:  Redis provides a wide variety of tools directed at improving and maintaining efficient in-memory database usage. While its unique data types and commands fine-tune databases to serve application requests without any additional processing at the application level, misconfiguration, or rather, using out-of-the-box configuration, can (and does) lead to operational challenges and performance issues. Despite the setbacks that have been the cause of quite a few headaches, solutions do exist, and may be even simpler than anticipated.

[Redis Labs Performance Testing With Live Traffic](http://redislabs.com/blog/redis-labs-performance-testing-with-live-traffic)
:  Our API service uses Redis as it’s caching layer. The Redis set operations are extremely useful for the logic required in our API service. Unfortunately, we have had some issues scaling Redis. Redis is a single-threaded server that reads incoming connections using an event-based paradigm, thus uses only 1 CPU core. So you can scale Redis vertically but it is very challenging to scale Redis horizontally. We see this when our app calls heavier zset and zunionstore operations. Redis hits the CPU limit and it gets pegged at 100%.

### Databases

[Galera Cluster VS PXC VS MariaDB Galera Cluster - Benchmarking](http://www.fromdual.com/galera-cluster-vs-pxc-vs-mariadb-galera-cluster-benchmarking)
:  It is not clear for many MySQL users that Percona XtraDB Cluster (PXC) and MariaDB Galera Cluster depend on the same Galera library i.e used in Galera Cluster for MySQL which is provided by Codership team: Galera Cluster: MySQL Server (by Oracle) + Galera library; Percona XtraDB Cluster: Percona Server + Galera library; MariaDB Galera Cluster: MariaDB Server + Galera library.  
But the question is, are there any performance differences between the three of them ?  
Let’s discover that by doing some simple benchmark to test MySQL write performance in Galera Cluster, PXC and MariaDB Galera Cluster installations.

[Explaining Ark Part 4: Fixing Majority Write Concern](http://www.tokutek.com/2014/08/explaining-ark-part-4-fixing-majority-write-concern/)
:  This is the fourth post in a series of posts that explains Ark, a consensus algorithm we’ve developed for TokuMX and MongoDB to fix known issues in elections and failover. The tech report we released describes the algorithm in full detail. These posts are a layman’s explanation. This post assumes the reader is familiar with the first three parts. In this post, I describe how Ark fixes the existing problems.

[An Updated Description of Clustering Keys for TokuDB](http://www.tokutek.com/2014/08/an-updated-description-of-clustering-keys-for-tokudb/)
:  Covering indexes can result in orders of magnitude performance improvements for queries. Bradley’s presentation on covering indexes describes what a covering index is, how it can effect performance, and why it works. However, the definition of a covering index can get cumbersome since MySQL limits the number of columns in a key to 16 (32 on MariaDB).  
Tokutek introduced multiple clustering indexes into MySQL to address these problems. Zardosht describes the multiple clustering indexes feature and how clustering indexes differ from covering indexes. Zardosht also describes the query versus update tradeoffs that exist with clustering indexes.

[Q&A: Putting MySQL Fabric to use](http://www.mysqlperformanceblog.com/2014/08/04/qa-putting-mysql-fabric-to-use/)
:  Martin Arrieta and I gave an online presentation last week on “Putting MySQL Fabric To Use.” If you missed it, you can find a recording and the slides here, and the vagrant environment we used plus a transcript of the commands we ran here (be sure to check out the ‘sharding’ branch, as that’s what we used during the webinar).

[New in Percona Replication Manager: Slave resync, Async stop](http://www.mysqlperformanceblog.com/2014/08/05/slave-resync-and-async-stop/)
:  Percona Replication Manager (PRM) continues to evolve and improve, I want to introduce two new features: Slave resync and Async stop.

[Tokutek white paper: a comparison of Log-Structured Merge (LSM) and Fractal Tree Indexing](http://highscalability.com/blog/2014/8/6/tokutek-white-paper-a-comparison-of-log-structured-merge-lsm.html)
:  What data structure does your database use? It’s not something the typical database user spends much time pondering. Since data structure is destiny, what data structure your database uses is a key point to consider in your selection process.  
We know CouchDB uses a modified B+ tree. We’ve learned a lot fascinating details over the years about the use of Log-structured merge-trees in Cassandra, HBase and LevelDB. So B+ trees and LSMs seem familiar by now.  
What may not be so familiar is Tokutek’s Fractal Tree Indexing technology that is supposed to be even better than B+ trees and LSMs.

[5 Signs You’re Ready for a Data Warehousing Solution](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:191833)
:  There really is no set amount of data that prompts the need for data warehousing. Some may become overwhelmed by the volume of data their company is producing, while other may become overwhelmed by the amount of data sources they need to integrate. To decide if you’re close to needing a warehouse, you can start by first gathering together your different data sources.  
What really indicates you need some form of streamlined solution is when you must pull from these multiple data sources every time you need to answer basic business questions. To determine the ROI of your advertising, for instance, you may need to turn to several different spreadsheets and databases. You would then refer to yet another set of spreadsheets and databases to determine if your customers’ lifetime value has been affected in any way by your service initiatives.

[Stupid and dangerous: SET GLOBAL sql_log_bin](http://blog.jcole.us/2014/08/08/stupid-and-dangerous-set-global-sql_log_bin/)
:  It’s been almost 4.5 years since, during some code refactoring, it was decided (or accidentally changed?) that sql_log_bin should become a GLOBAL variable as well as a SESSION one. Almost 2 years ago, during MySQL 5.5 upgrades at Twitter, I filed MySQL Bug 67433 describing in detail how stupid and dangerous this change was, and asking for a reversal.  
Nothing has been changed or reversed, so SET GLOBAL sql_log_bin continues to be allowed. I continue to directly see, and hear about damage caused by incorrect use of SET GLOBAL sql_log_bin. So, let me describe just how stupid and dangerous it really is.

### Monitoring

[Remplacer Graphite par InfluxDB pour les métriques.](http://wooster.checkmy.ws/2014/08/influxdb-collectd-grafana/)
:  Je vous parlais il y a déjà plus de 6 mois des bases de données chronologiques, ces bases spécialisées dans la gestion des données de type chronologiques, parfaites donc pour accueillir les données de métrologie.  
Et bien c’est InfluxDB que j’ai choisi pour succéder petit à petit à Graphite sur mon environnement de supervision. InfluxDB en est déjà à sa version 0.8 au moment d’écrire ces lignes. Le projet avance vite, possède de nombreux contributeurs et toutes les armes aujourd’hui pour envisager de l’utiliser en lieu et place de Graphite.  
Décidément, le monde de l’Open Source est impitoyable. À peine avez-vous élu une brique qu’une nouvelle prétend pouvoir prendre la place. Vérifions tout cela dans un setup classique sur Wooster; à savoir Collectd envoie ses données dans InfluxDB donc et Grafana nous visualise toutes ces jolies métriques.

[New release: Packetbeat 0.3.2, now supports CentOS 7 / RedHat 7](http://packetbeat.com/blog/application-monitoring-for-centos7-and-redhat7.html)
:  We just pushed a new release to GitHub. Apart for the usual few bug fixes -- out of which a pretty important one that was breaking our MySQL parser -- this release also changes the way the agent becomes a daemon. Here is a bit of background information on this:  
Due to the way the Go runtime works, daemonizing from the Go program itself is not easy and generally not recommended. See this issue for details, the short version is that goroutines that are started before the call to a hypothetical Deamonize() routine would stay in the parent.

### Cassandra

[Installing the Cassandra / Spark OSS Stack](http://planetcassandra.org/blog/post/installing-the-cassandra-spark-oss-stack/)
:  When assembling an analytics stack, there are usually myriad choices to make. For this build, I decided to build the smallest stack possible that lets me run Spark queries on Cassandra data. As configured it is not highly available since the Spark master is standalone. (note: Datastax Enterprise Spark’s master has HA based on Cassandra). It’s a decent tradeoff for portacluster, since I can run the master on the admin node which doesn’t get rebooted/reimaged constantly. I’m also going to skip HDFS or some kind of HDFS replacement for now. Options I plan to look at later are GlusterFS’s HDFS adapter and Pithos as an S3 adapter. In the end, the stack is simply Cassandra and Spark with the spark-cassandra-connector.

[Message Architectures in Distributed Systems at SimpleReach (Slide/Video) | Cassandra Day NY 2014](http://planetcassandra.org/blog/post/message-architectures-in-distributed-systems-at-simplereach-slidevideo-cassandra-day-ny-2014/)
:  Eric Lubow, CTO of SimpleReach, will be presenting on SimpleReach’s use of message architectures and why they an important part of a distributed system stack. They are often overlooked because the prevailing sentiment is that the storage and processing engines are the most important aspects of the system. Without the highways, the data won’t be able to get to its destination.

[Feedzai Pairs Machine Learning with Cassandra to Increase Industry Leading Payment Fraud Detection by Over 40%](http://planetcassandra.org/blog/post/feedzai-pairs-machine-learning-with-cassandra-to-increase-industry-leading-payment-fraud-detection-by-over-40/)
:  Feedzai combines big data science and behavioral analytics to make commerce safe for financial networks, bank and retailers. I am the Chief Technology Officer of Feedzai and responsible for overall product development and technology strategy.  
Feedzai Fraud Prevention™ is a risk-decisioning system for payment transactions. In a nutshell, what we do is to analyze credit and debit card transactions in real-time in extremely short latencies. Typically we are deployed on the core banking systems and are analyzing thousands of transactions per second with latencies in the order of just a few milliseconds.  
Our clients are financial service organizations and retailers, and fraud rates are increasing which impacts all businesses. At the same time, big data and behavioral analytics are opportunities for our clients to reduce fraud loss. However, this requires analyzing massive data volume within a very short amount of time (typically in the millisecond range).

[Python Driver 2.1 Released](http://planetcassandra.org/blog/post/python-driver-2-1-released/)
:  We are happy to release version 2.1 of the DataStax Python driver for Apache Cassandra. This release brings support for Cassandra 2.1, while remaining compatible with 1.2 and 2.0. In addition to several new features, there are many bug fixes that improve the stability and performance of the driver. For a full list of changes, please see thechangelog.

### DataScience

[Bounded Rationality and the Ellsberg Paradox](http://www.chrisstucchio.com/blog/2014/bounded_rationality.html)
:  The Ellsberg paradox is a puzzle concerning human rationality. It postulates a scenario involving an urn with 90 balls inside - 30 red ones, while the remaining 60 can be yellow or black. A player gets to draw a ball from the urn, and receives a payoff dependent on the color. The player is then given options for various bets. In practice, humans are shown to display inconsistent preferences as to which bets are worth taking - this is completely irrational behavior under any reasonable theory of probability. In this post I’ll ponder this question, and postulate a model of bounded rationality characterized by "problem boundaries" which may shed some light on this puzzle.

### SEO

[HTTPS as a ranking signal](http://googlewebmastercentral.blogspot.fr/2014/08/https-as-ranking-signal.html)
:  Security is a top priority for Google. We invest a lot in making sure that our services use industry-leading security, like strong HTTPS encryption by default. That means that people using Search, Gmail and Google Drive, for example, automatically have a secure connection to Google.  
Beyond our own stuff, we’re also working to make the Internet safer more broadly. A big part of that is making sure that websites people access from Google are secure. For instance, we have created resources to help webmasters prevent and fix security breaches on their sites.  

